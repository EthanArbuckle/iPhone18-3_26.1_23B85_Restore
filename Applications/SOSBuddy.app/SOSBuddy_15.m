uint64_t sub_10014C984@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_1003609A8);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-1] - v5;
  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = v7[9];
    v9 = v7[10];
    sub_1000088DC(v7 + 6, v8);
    (*(v9 + 24))(v21, v8, v9);
    v10 = sub_10014CB74();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    *v6 = static HorizontalAlignment.center.getter();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v17 = sub_1000040A8(&qword_1003609B0);
    sub_10014D0D4(v10, v12, v14, v16, v2, &v6[*(v17 + 44)]);

    sub_10014DC80(v6, v2, v21, a1);
    sub_100008FA0(v6, &qword_1003609A8);
    LOBYTE(v10) = static Edge.Set.bottom.getter();
    v18 = a1 + *(sub_1000040A8(&qword_1003609B8) + 36);
    *v18 = v10;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 1;
    return sub_100008964(v21);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014E03C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10014CB74()
{
  v1 = v0[4];
  if (v1)
  {
    if (*(*(v1 + 344) + 32))
    {
      if (*v0)
      {

        countAndFlagsBits = sub_100067850();
        object = v3;

        if (!object)
        {
          v5 = [objc_opt_self() mainBundle];
          v47._object = 0x8000000100299C00;
          v6._countAndFlagsBits = 0xD000000000000013;
          v6._object = 0x80000001002973D0;
          v7.value._object = 0x80000001002962C0;
          v47._countAndFlagsBits = 0xD000000000000038;
          v7.value._countAndFlagsBits = 0xD000000000000012;
          v8._countAndFlagsBits = 0;
          v8._object = 0xE000000000000000;
          v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v47);
          countAndFlagsBits = v9._countAndFlagsBits;
          object = v9._object;
        }

        v10 = objc_opt_self();
        v11 = [v10 mainBundle];
        v48._object = 0x800000010029F740;
        v12._countAndFlagsBits = 0x206F7420646E6553;
        v12._object = 0xED00003F40243125;
        v48._countAndFlagsBits = 0xD000000000000128;
        v13._countAndFlagsBits = 0;
        v13._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v48);

        sub_1000040A8(&qword_100355E48);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_100279160;
        *(v14 + 56) = &type metadata for String;
        *(v14 + 64) = sub_1000218DC();
        *(v14 + 32) = countAndFlagsBits;
        *(v14 + 40) = object;
        v15 = String.init(format:_:)();

        v16 = [v10 mainBundle];
        v49._object = 0x800000010029F8B0;
        v17._countAndFlagsBits = 0xD000000000000033;
        v17._object = 0x800000010029F870;
        v49._countAndFlagsBits = 0xD0000000000000CFLL;
        v18._countAndFlagsBits = 0;
        v18._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v49);

        return v15;
      }

      type metadata accessor for RoadsideAssistanceModel();
      v37 = &qword_100356B48;
      v38 = type metadata accessor for RoadsideAssistanceModel;
    }

    else
    {
      v19 = objc_opt_self();

      v20 = [v19 mainBundle];
      v50._object = 0x800000010029F9A0;
      v21._countAndFlagsBits = 0xD00000000000001BLL;
      v21._object = 0x800000010029F980;
      v50._countAndFlagsBits = 0xD0000000000000BCLL;
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v50);
      v15 = v23._countAndFlagsBits;

      v24 = v0[2];
      if (v24)
      {
        sub_1000089B0(v24 + 48, v44);
        v25 = v45;
        v26 = v46;
        sub_1000088DC(v44, v45);
        swift_beginAccess();
        sub_10003F3D8(v1 + 48, v40);
        v27 = v42;
        if (v42)
        {
          v28 = v43;
          v29 = sub_1000088DC(v41, v42);
          v39[1] = v39;
          v39[2] = v23._object;
          v30 = *(v27 - 8);
          v31 = __chkstk_darwin(v29);
          v33 = v39 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v30 + 16))(v33, v31);
          sub_10003F434(v40);
          v34 = (*(v28 + 24))(v27, v28);

          (*(v30 + 8))(v33, v27);
          v35 = v34 & ~(v34 >> 63);
        }

        else
        {

          sub_10003F434(v40);
          v35 = 30;
        }

        (*(v26 + 208))(v35, v25, v26);
        sub_100008964(v44);
        return v15;
      }

      type metadata accessor for UIMetrics();
      v37 = &qword_100354D40;
      v38 = type metadata accessor for UIMetrics;
    }
  }

  else
  {
    type metadata accessor for QuestionnaireState();
    v37 = &qword_100354D50;
    v38 = type metadata accessor for QuestionnaireState;
  }

  sub_10014E03C(v37, v38);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10014D0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v87 = a5;
  *&v100 = a3;
  *(&v100 + 1) = a4;
  v104 = a6;
  v8 = sub_1000040A8(&qword_1003609D0);
  __chkstk_darwin(v8 - 8);
  v103 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v102 = &v86 - v11;
  v106 = type metadata accessor for AccessibilityTraits();
  v108 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Font.Leading();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000040A8(&qword_100356C40);
  __chkstk_darwin(v17 - 8);
  v101 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v107 = &v86 - v20;
  *&v114 = a1;
  *(&v114 + 1) = a2;
  v21 = sub_100031770();

  v96 = v21;
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  static Font.largeTitle.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v27 = *(v14 + 104);
  v94 = enum case for Font.Leading.tight(_:);
  v95 = v14 + 104;
  v93 = v27;
  v27(v16);
  Font.leading(_:)();

  v29 = *(v14 + 8);
  v28 = v14 + 8;
  v97 = v16;
  v99 = v13;
  v91 = v29;
  v29(v16, v13);
  v92 = Text.font(_:)();
  v89 = v31;
  v90 = v30;
  v88 = v32;

  sub_1000317C4(v22, v24, v26 & 1);

  v33 = *(v87 + 16);
  if (v33)
  {
    v34 = *(v33 + 72);
    v35 = *(v33 + 80);
    sub_1000088DC((v33 + 48), v34);
    v36 = *(v35 + 24);
    swift_retain_n();
    v36(&v114, v34, v35);
    sub_100008964(&v114);
    v37 = *(v33 + 112);
    static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    v39 = *(v33 + 72);
    v40 = *(v33 + 80);
    sub_1000088DC((v33 + 48), v39);
    (*(v40 + 24))(&v114, v39, v40);
    static Alignment.leading.getter();
    sub_100008964(&v114);
    v41 = *(v33 + 112);
    v42 = static UIContentSizeCategory.>= infix(_:_:)();
    v98 = v28;
    if (v42)
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v124[55] = v129;
    *&v124[71] = v130;
    *&v124[87] = v131;
    *&v124[103] = v132;
    *&v124[7] = v126;
    *&v124[23] = v127;
    v43 = v88 & 1;
    v125 = v88 & 1;
    *&v124[39] = v128;
    v44 = *(v33 + 112);

    v45 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v45)
    {
      v46 = 1.0;
    }

    else
    {
      v46 = 0.5;
    }

    v47 = swift_getKeyPath();
    *(&v116[4] + 9) = *&v124[64];
    *(&v116[5] + 9) = *&v124[80];
    *(&v116[6] + 9) = *&v124[96];
    *(v116 + 9) = *v124;
    *(&v116[1] + 9) = *&v124[16];
    *(&v116[2] + 9) = *&v124[32];
    *&v114 = v92;
    *(&v114 + 1) = v90;
    LOBYTE(v115) = v43;
    *(&v115 + 1) = v89;
    *&v116[0] = KeyPath;
    BYTE8(v116[0]) = 0;
    *(&v116[3] + 9) = *&v124[48];
    *(&v116[7] + 1) = *&v124[111];
    *&v117 = v47;
    *(&v117 + 1) = v46;
    v48 = v105;
    static AccessibilityTraits.isHeader.getter();
    sub_1000040A8(&qword_100356C48);
    sub_10003BE30();
    View.accessibility(addTraits:)();
    v49 = *(v108 + 8);
    v108 += 8;
    v92 = v49;
    v49(v48, v106);
    v123[8] = v116[6];
    v123[9] = v116[7];
    v123[10] = v117;
    v123[4] = v116[2];
    v123[5] = v116[3];
    v123[6] = v116[4];
    v123[7] = v116[5];
    v123[0] = v114;
    v123[1] = v115;
    v123[2] = v116[0];
    v123[3] = v116[1];
    sub_100008FA0(v123, &qword_100356C48);
    v114 = v100;

    v50 = Text.init<A>(_:)();
    v52 = v51;
    v54 = v53;
    v96 = v55;
    static Font.body.getter();
    v56 = v97;
    v57 = v99;
    v93(v97, v94, v99);
    Font.leading(_:)();

    v58 = v56;
    v59 = v33;
    v91(v58, v57);
    v60 = Text.font(_:)();
    *&v100 = v61;
    *(&v100 + 1) = v60;
    v63 = v62;
    v99 = v64;

    sub_1000317C4(v50, v52, v54 & 1);

    v65 = *(v33 + 72);
    v66 = *(v59 + 80);
    sub_1000088DC((v59 + 48), *(v59 + 72));
    (*(v66 + 24))(&v114, v65, v66);
    sub_100008964(&v114);
    v67 = *(v59 + 112);
    static UIContentSizeCategory.>= infix(_:_:)();

    v68 = swift_getKeyPath();
    static Alignment.center.getter();
    v69 = *(v59 + 72);
    v70 = *(v59 + 80);
    sub_1000088DC((v59 + 48), v69);
    (*(v70 + 24))(&v114, v69, v70);
    static Alignment.leading.getter();
    sub_100008964(&v114);
    v71 = *(v59 + 112);
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v120[55] = v136;
    *&v120[71] = v137;
    *&v120[87] = v138;
    *&v120[103] = v139;
    *&v120[7] = v133;
    *&v120[23] = v134;
    v121 = v63 & 1;
    *&v120[39] = v135;
    v72 = *(v59 + 112);

    v73 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v73)
    {
      v74 = 1.0;
    }

    else
    {
      v74 = 0.5;
    }

    v75 = swift_getKeyPath();
    v76 = static Edge.Set.top.getter();
    *(&v111[4] + 9) = *&v120[64];
    *(&v111[5] + 9) = *&v120[80];
    *(&v111[6] + 9) = *&v120[96];
    *(v111 + 9) = *v120;
    *(&v111[1] + 9) = *&v120[16];
    *(&v111[2] + 9) = *&v120[32];
    v122 = 1;
    *&v109 = *(&v100 + 1);
    *(&v109 + 1) = v100;
    LOBYTE(v110) = v63 & 1;
    *(&v110 + 1) = v99;
    *&v111[0] = v68;
    BYTE8(v111[0]) = 0;
    *(&v111[3] + 9) = *&v120[48];
    *(&v111[7] + 1) = *&v120[111];
    *&v112 = v75;
    *(&v112 + 1) = v74;
    LOBYTE(v113[0]) = v76;
    *(v113 + 8) = 0u;
    *(&v113[1] + 8) = 0u;
    BYTE8(v113[2]) = 1;
    v77 = v105;
    static AccessibilityTraits.updatesFrequently.getter();
    sub_1000040A8(&qword_100356C70);
    sub_10014E0D4(&qword_1003609D8, &qword_100356C70, &unk_10027A408, sub_10003BE30);
    v78 = v102;
    View.accessibility(addTraits:)();
    v92(v77, v106);
    v117 = v112;
    v118 = v113[0];
    v119[0] = v113[1];
    *(v119 + 9) = *(&v113[1] + 9);
    v116[4] = v111[4];
    v116[5] = v111[5];
    v116[6] = v111[6];
    v116[7] = v111[7];
    v116[0] = v111[0];
    v116[1] = v111[1];
    v116[2] = v111[2];
    v116[3] = v111[3];
    v114 = v109;
    v115 = v110;
    sub_100008FA0(&v114, &qword_100356C70);
    v79 = v107;
    v80 = v101;
    sub_100006C20(v107, v101, &qword_100356C40);
    v81 = v103;
    sub_100006C20(v78, v103, &qword_1003609D0);
    v82 = v104;
    sub_100006C20(v80, v104, &qword_100356C40);
    v83 = sub_1000040A8(&qword_1003609E0);
    sub_100006C20(v81, v82 + *(v83 + 48), &qword_1003609D0);
    v84 = v82 + *(v83 + 64);
    *v84 = 0;
    *(v84 + 8) = 1;
    sub_100008FA0(v78, &qword_1003609D0);
    sub_100008FA0(v79, &qword_100356C40);
    sub_100008FA0(v81, &qword_1003609D0);
    return sub_100008FA0(v80, &qword_100356C40);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014E03C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10014DC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000040A8(&qword_1003609C0);
  __chkstk_darwin(v8);
  v10 = v35 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = *(v11 + 112);

    v13 = v12;
    v14 = static UIContentSizeCategory.>= infix(_:_:)();

    v15 = 0.0;
    if ((v14 & 1) == 0)
    {
      v15 = *(*sub_1000088DC(a3, a3[3]) + 24) * 0.245;
    }

    v16 = *(v11 + 112);

    v17 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v17)
    {
      v18 = INFINITY;
    }

    else
    {
      v18 = *(*sub_1000088DC(a3, a3[3]) + 24) * 0.245;
    }

    static Alignment.center.getter();
    if (v15 > v18)
    {
      static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_100006C20(a1, v10, &qword_1003609A8);
    v20 = &v10[*(v8 + 36)];
    v21 = v35[5];
    *(v20 + 4) = v35[4];
    *(v20 + 5) = v21;
    *(v20 + 6) = v35[6];
    v22 = v35[1];
    *v20 = v35[0];
    *(v20 + 1) = v22;
    v23 = v35[3];
    *(v20 + 2) = v35[2];
    *(v20 + 3) = v23;
    v24 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_10014DFBC(v10, a4);
    result = sub_1000040A8(&qword_1003609C8);
    v34 = a4 + *(result + 36);
    *v34 = v24;
    *(v34 + 8) = v26;
    *(v34 + 16) = v28;
    *(v34 + 24) = v30;
    *(v34 + 32) = v32;
    *(v34 + 40) = 0;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014E03C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10014DFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003609C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014E03C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014E0D4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_10014E188()
{
  result = qword_1003609F8;
  if (!qword_1003609F8)
  {
    sub_100008CF0(&qword_1003609C0);
    sub_100009274(&qword_100360A00, &qword_1003609A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003609F8);
  }

  return result;
}

uint64_t sub_10014E364()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    [v2 frame];
    type metadata accessor for CGRect(0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "SizeReaderView frame: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  v10 = *&v2[OBJC_IVAR____TtC8SOSBuddy16SizeReaderUIView__onSizeChanged];

  v11 = [v2 frame];
  v10(v11, v12, v13);
}

id sub_10014E54C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SizeReaderUIView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10014E5B8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = *(v0 + 2);
  v3 = *(v0 + 3);
  v5 = type metadata accessor for SizeReaderUIView();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC8SOSBuddy16SizeReaderUIView__onSizeChanged];
  *v7 = v4;
  *(v7 + 1) = v3;
  v10.receiver = v6;
  v10.super_class = v5;

  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, v1, v2);
  [v8 setAutoresizingMask:{16, v10.receiver, v10.super_class}];
  return v8;
}

uint64_t sub_10014E6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10014E804();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10014E710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10014E804();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10014E774()
{
  sub_10014E804();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10014E7B0()
{
  result = qword_100360A38;
  if (!qword_100360A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360A38);
  }

  return result;
}

unint64_t sub_10014E804()
{
  result = qword_100360A40;
  if (!qword_100360A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360A40);
  }

  return result;
}

uint64_t sub_10014E860()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Font.body.getter();
  Font.bold()();

  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v4 = Font.leading(_:)();

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_10014EA50()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x800000010029F8B0;
  v1._object = 0x800000010029F870;
  v5._countAndFlagsBits = 0xD0000000000000CFLL;
  v1._countAndFlagsBits = 0xD000000000000033;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10014EB04(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  a3();
  a4();
  v5 = Font.weight(_:)();

  return v5;
}

uint64_t sub_10014EB50(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 9u)
  {
    goto LABEL_9;
  }

  if (((1 << a2) & 0x1D8) != 0)
  {
    return 0;
  }

  if (((1 << a2) & 0x24) != 0)
  {
    v4 = sub_1000ECF0C();
    v5 = [objc_opt_self() mainBundle];
    if (v4 == 2)
    {
      v6 = 0xD000000000000017;
      v16 = 0x800000010029FE40;
      v7 = 0x800000010029FE20;
      v8 = 0xD00000000000005FLL;
    }

    else
    {
      v6 = 0xD00000000000001ALL;
      v16 = 0x800000010029FEC0;
      v7 = 0x800000010029FEA0;
      v8 = 0xD000000000000059;
    }

    goto LABEL_18;
  }

  if (a2 == 9)
  {
    v9 = *(a1 + *(type metadata accessor for TransmissionProgress(0) + 28));
    v10 = [objc_opt_self() mainBundle];
  }

  else
  {
LABEL_9:
    v11 = sub_1000ECF0C();
    v9 = *(a1 + *(type metadata accessor for TransmissionProgress(0) + 28));
    if (v11 == 2)
    {
      v5 = [objc_opt_self() mainBundle];
      if (v9 == 100)
      {
        v16 = 0x800000010029FFA0;
        v6 = 0x6E6F697461636F4CLL;
        v7 = 0xED0000746E657320;
        v8 = 0xD00000000000005CLL;
      }

      else
      {
        v16 = 0x800000010029FF40;
        v7 = 0x800000010029FF20;
        v8 = 0xD00000000000005ALL;
        v6 = 0x1000000000000013;
      }

      goto LABEL_18;
    }

    v10 = [objc_opt_self() mainBundle];
  }

  v5 = v10;
  if (v9 == 100)
  {
    v16 = 0x80000001002A0040;
    v8 = 0xD00000000000003DLL;
    v6 = 1953391955;
    v7 = 0xE400000000000000;
LABEL_18:
    v12.super.isa = v5;
    v13 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_19;
  }

  v16 = 0x80000001002A0000;
  v6 = 0xE2676E69646E6553;
  v7 = 0xAA0000000000A680;
  v12.super.isa = v5;
  v13 = 0;
  v14 = 0xE000000000000000;
  v8 = 0xD00000000000003BLL;
LABEL_19:
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, 0, v12, *&v13, *&v8)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10014EE44(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 2)
  {
    if (*a1)
    {
      v4 = v1 == 1;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      v7 = [objc_opt_self() mainBundle];
      v8 = 0xD00000000000001BLL;
      v21 = 0x800000010029FD60;
      v9 = 0x800000010029FD40;
      v15 = 0xD00000000000003ELL;
      goto LABEL_34;
    }

    goto LABEL_11;
  }

  if (v1 > 0xC)
  {
    goto LABEL_25;
  }

  if (((1 << v1) & 0xF30) != 0)
  {
LABEL_11:
    v5 = *&a1[*(type metadata accessor for ConnectionClosed(0) + 24)];
    if (sub_100071A54(0, v5))
    {
      v6 = "nce via Satellite Ended";
      v7 = [objc_opt_self() mainBundle];
      v8 = 0xD000000000000021;
    }

    else
    {
      if (sub_100071A54(1, v5))
      {
        v7 = [objc_opt_self() mainBundle];
        v10 = 0xD000000000000012;
        v8 = 0xD000000000000027;
        v21 = 0x800000010029FC60;
        v9 = 0x800000010029FDC0;
        v11 = 0x80000001002962C0;
        goto LABEL_17;
      }

      if ((sub_100071A54(3, v5) & 1) == 0)
      {
        v16 = sub_100071A54(4, v5);
        v7 = [objc_opt_self() mainBundle];
        if (v16)
        {
          v8 = 0xD00000000000001BLL;
          v21 = 0x800000010029FD60;
          v9 = 0x800000010029FD40;
          v15 = 0xD00000000000003ELL;
          goto LABEL_34;
        }

        v8 = 0xD00000000000001ALL;
        v21 = 0x800000010029FC60;
        v9 = 0x800000010029FC40;
        goto LABEL_14;
      }

      v6 = "r closed the FindMy connection";
      v7 = [objc_opt_self() mainBundle];
      v8 = 0xD000000000000019;
    }

    v21 = 0x800000010029FC60;
    v9 = v6 | 0x8000000000000000;
LABEL_14:
    v10 = 0;
    v11 = 0;
LABEL_17:
    v12.super.isa = v7;
    v13 = 0;
    v14 = 0xE000000000000000;
    v15 = 0xD000000000000037;
LABEL_36:
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, *&v10, v12, *&v13, *(&v21 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (((1 << v1) & 0x1080) == 0)
  {
    if (v1 == 6)
    {
      v3 = sub_100020AC8();
      goto LABEL_26;
    }

LABEL_25:
    v3 = sub_100020C00();
    goto LABEL_26;
  }

  v2 = *&a1[*(type metadata accessor for ConnectionClosed(0) + 24)];
  if ((sub_100071A54(0, v2) & 1) == 0)
  {
    if (sub_100071A54(1, v2))
    {
      v7 = [objc_opt_self() mainBundle];
      v10 = 0xD000000000000012;
      v15 = 0xD000000000000022;
      v8 = 0xD000000000000032;
      v21 = 0x8000000100295150;
      v9 = 0x800000010029FD00;
      v11 = 0x80000001002962C0;
LABEL_35:
      v12.super.isa = v7;
      v13 = 0;
      v14 = 0xE000000000000000;
      goto LABEL_36;
    }

    v18 = sub_100071A54(3, v2);
    v7 = [objc_opt_self() mainBundle];
    if (v18)
    {
      v19 = "tion is Not Available";
      v15 = 0xD000000000000022;
      v8 = 0xD000000000000024;
    }

    else
    {
      v19 = "r closed the connection";
      v15 = 0xD000000000000022;
      v8 = 0xD000000000000025;
    }

    v21 = 0x8000000100295150;
    v9 = v19 | 0x8000000000000000;
LABEL_34:
    v10 = 0;
    v11 = 0;
    goto LABEL_35;
  }

  v3 = sub_100020D38();
LABEL_26:
  countAndFlagsBits = v3;

  return countAndFlagsBits;
}

uint64_t sub_10014F28C(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v1 = sub_100020AC8();
      goto LABEL_6;
    }

LABEL_7:
    v3 = [objc_opt_self() mainBundle];
    v7._object = 0x800000010029FC60;
    v4._object = 0x800000010029FC40;
    v7._countAndFlagsBits = 0xD000000000000037;
    v4._countAndFlagsBits = 0xD00000000000001ALL;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v7)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (a1 - 1 >= 2)
  {
    goto LABEL_7;
  }

  v1 = sub_100020D38();
LABEL_6:
  countAndFlagsBits = v1;

  return countAndFlagsBits;
}

uint64_t sub_10014F380(unsigned __int8 a1)
{
  result = 0;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return result;
    }

    v3 = [objc_opt_self() mainBundle];
    v9 = 0x800000010029FBE0;
    v5 = 0x800000010029FBC0;
    v6 = 0xD00000000000005FLL;
    v4 = 0xD00000000000001FLL;
  }

  else
  {
    if (a1 - 2 < 2)
    {
      return result;
    }

    v3 = [objc_opt_self() mainBundle];
    v9 = 0x8000000100299CB0;
    v4 = 0xD000000000000026;
    v5 = 0x8000000100299D00;
    v6 = 0xD000000000000048;
  }

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, 0, v3, v7, *&v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10014F4B8(uint64_t a1)
{
  if (!a1)
  {
    v2 = [objc_opt_self() mainBundle];
    v12 = 0x8000000100296930;
    v3 = 0xD000000000000014;
    v4 = 0x8000000100296910;
LABEL_5:
    v5 = 0xD00000000000008ALL;
    goto LABEL_6;
  }

  if ((sub_100071A54(0, a1) & 1) == 0)
  {
    if (sub_100071A54(1, a1))
    {
      v2 = [objc_opt_self() mainBundle];
      v12 = 0x8000000100299C00;
      v3 = 0xD000000000000013;
      v4 = 0x80000001002973D0;
      v7 = 0x80000001002962C0;
      v5 = 0xD000000000000038;
      v6 = 0xD000000000000012;
      goto LABEL_7;
    }

    v11 = sub_100071A54(3, a1);
    v2 = [objc_opt_self() mainBundle];
    if (v11)
    {
      v12 = 0x800000010029FB70;
      v4 = 0x800000010029C8E0;
      v5 = 0xD00000000000004ELL;
      v3 = 0xD000000000000012;
      goto LABEL_6;
    }

    v12 = 0x8000000100296930;
    v3 = 0xD000000000000014;
    v4 = 0x8000000100296910;
    goto LABEL_5;
  }

  v2 = [objc_opt_self() mainBundle];
  v12 = 0x8000000100299C40;
  v3 = 0x636E656772656D45;
  v4 = 0xED0000534F532079;
  v5 = 0xD000000000000032;
LABEL_6:
  v6 = 0;
  v7 = 0;
LABEL_7:
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v6, v2, v8, *&v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10014F6FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    return 0;
  }

  else
  {
    return (*(a4 + 200))(*(*(a1 + 344) + 32), a3, a4);
  }
}

uint64_t sub_10014F7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CABannerView(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000040A8(&qword_100354F50);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for ConnectionAssistantBanner.Mode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = OBJC_IVAR____TtC8SOSBuddy21BannerAppearanceModel_bannerMode;
    swift_beginAccess();
    sub_100006C20(a1 + v15, v10, &qword_100354F50);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_100008FA0(v10, &qword_100354F50);
      v16 = 1;
    }

    else
    {
      sub_10014FBCC(v10, v14, type metadata accessor for ConnectionAssistantBanner.Mode);
      sub_100151360(v14, v7 + *(v4 + 24), type metadata accessor for ConnectionAssistantBanner.Mode);
      type metadata accessor for AppEvents();
      sub_10014FB84(&qword_100354D48, type metadata accessor for AppEvents);
      *v7 = EnvironmentObject.init()();
      v7[1] = v17;
      type metadata accessor for UIMetrics();
      sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
      v18 = EnvironmentObject.init()();
      v20 = v19;
      sub_100158C50(v14, type metadata accessor for ConnectionAssistantBanner.Mode);
      v7[2] = v18;
      v7[3] = v20;
      sub_10014FBCC(v7, a2, type metadata accessor for CABannerView);
      v16 = 0;
    }

    return (*(v5 + 56))(a2, v16, 1, v4);
  }

  else
  {
    type metadata accessor for BannerAppearanceModel();
    sub_10014FB84(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10014FB84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014FBCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10014FC48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = type metadata accessor for ConnectionAssistantBanner.Mode();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_10014FD14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for ConnectionAssistantBanner.Mode();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10014FDB8()
{
  sub_10007B2FC();
  if (v0 <= 0x3F)
  {
    sub_10014FE54();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ConnectionAssistantBanner.Mode();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10014FE54()
{
  if (!qword_100359948)
  {
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100359948);
    }
  }
}

unint64_t sub_10014FEEC()
{
  result = qword_100360AE0;
  if (!qword_100360AE0)
  {
    sub_100008CF0(&qword_100360AE8);
    sub_10014FB84(&qword_100360AF0, type metadata accessor for CABannerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360AE0);
  }

  return result;
}

uint64_t sub_10014FFBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CABannerView(0);
  type metadata accessor for ConnectionAssistantBanner.Mode();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppEvents();
  sub_10014FB84(&qword_100354D48, type metadata accessor for AppEvents);
  *a1 = EnvironmentObject.init()();
  a1[1] = v2;
  type metadata accessor for UIMetrics();
  sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
  result = EnvironmentObject.init()();
  a1[2] = result;
  a1[3] = v4;
  return result;
}

uint64_t sub_1001500A0()
{
  v1 = sub_1000040A8(&qword_100360AF8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - v3;
  v5 = *(v0 + 16);
  if (v5)
  {
    sub_1000089B0(v5 + 48, v10);
    v6 = v11;
    v7 = v12;
    sub_1000088DC(v10, v11);
    (*(v7 + 8))(v13, v6, v7);
    sub_100008964(v10);
    v8 = static Axis.Set.vertical.getter();
    __chkstk_darwin(v8);
    v10[-2] = v0;
    v10[-1] = v13;
    sub_1000040A8(&qword_100360B00);
    sub_1001511F0();
    ScrollView.init(_:showsIndicators:content:)();
    sub_100009274(&qword_100360B40, &qword_100360AF8);
    View.scrollDisabled(_:)();
    (*(v2 + 8))(v4, v1);
    return sub_100008964(v13);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100150304@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CABannerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v9 = sub_1000040A8(&qword_100360B48);
  sub_1001504C8(a1, a3 + *(v9 + 44));
  *(a3 + *(sub_1000040A8(&qword_100360B18) + 36)) = 256;
  v10 = sub_1000088DC(a2, a2[3]);
  v11 = *(*v10 + 16);
  v12 = *(*v10 + 24);
  sub_100151360(a1, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CABannerView);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_10014FBCC(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CABannerView);
  v15 = static Alignment.center.getter();
  v17 = v16;
  result = sub_1000040A8(&qword_100360B00);
  v19 = (a3 + *(result + 36));
  *v19 = v11;
  v19[1] = v12;
  v19[2] = sub_10015153C;
  v19[3] = v14;
  v19[4] = v15;
  v19[5] = v17;
  return result;
}

uint64_t sub_1001504C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000040A8(&qword_100360B50);
  __chkstk_darwin(v4);
  v6 = v46 - v5;
  v7 = sub_1000040A8(&qword_100360B58);
  __chkstk_darwin(v7);
  v9 = v46 - v8;
  v10 = type metadata accessor for ConnectionAssistantBanner.Mode();
  __chkstk_darwin(v10);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for CABannerView(0) + 24);
  swift_storeEnumTagMultiPayload();
  v14 = sub_1001B49E4(a1 + v13, v12);
  sub_100158C50(v12, type metadata accessor for ConnectionAssistantBanner.Mode);
  if (v14)
  {
    type metadata accessor for ConnectivityModel();
    sub_10014FB84(&qword_100354F78, type metadata accessor for ConnectivityModel);
    v15 = EnvironmentObject.init()();
    v57 = v16;
    v58 = v15;
    type metadata accessor for ConnectionModel(0);
    sub_10014FB84(&qword_100354F88, type metadata accessor for ConnectionModel);
    v17 = EnvironmentObject.init()();
    v55 = v18;
    v56 = v17;
    type metadata accessor for GeoLocationModel();
    sub_10014FB84(&qword_10035F1D0, type metadata accessor for GeoLocationModel);
    v19 = EnvironmentObject.init()();
    v53 = v20;
    v54 = v19;
    type metadata accessor for GuidanceMessagesModel();
    sub_10014FB84(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
    v21 = EnvironmentObject.init()();
    v51 = v22;
    v52 = v21;
    type metadata accessor for GuidanceModel(0);
    sub_10014FB84(&qword_100354F80, type metadata accessor for GuidanceModel);
    v23 = EnvironmentObject.init()();
    v49 = v24;
    v50 = v23;
    type metadata accessor for PartnerModel();
    sub_10014FB84(&qword_1003561A8, type metadata accessor for PartnerModel);
    v25 = EnvironmentObject.init()();
    v47 = v26;
    v48 = v25;
    type metadata accessor for StewieModel(0);
    sub_10014FB84(&qword_1003561B8, type metadata accessor for StewieModel);
    v27 = EnvironmentObject.init()();
    v29 = v28;
    type metadata accessor for TimeZoneModel();
    sub_10014FB84(&qword_10035F220, type metadata accessor for TimeZoneModel);
    v30 = EnvironmentObject.init()();
    v46[1] = a2;
    v32 = v31;
    type metadata accessor for TryOutModel();
    v46[0] = v4;
    sub_10014FB84(&qword_100357990, type metadata accessor for TryOutModel);
    v33 = EnvironmentObject.init()();
    v35 = v34;
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
    v36 = EnvironmentObject.init()();
    v37 = v57;
    *v9 = v58;
    *(v9 + 1) = v37;
    v38 = v55;
    *(v9 + 2) = v56;
    *(v9 + 3) = v38;
    v39 = v53;
    *(v9 + 4) = v54;
    *(v9 + 5) = v39;
    v40 = v51;
    *(v9 + 6) = v52;
    *(v9 + 7) = v40;
    v41 = v49;
    *(v9 + 8) = v50;
    *(v9 + 9) = v41;
    v42 = v47;
    *(v9 + 10) = v48;
    *(v9 + 11) = v42;
    *(v9 + 12) = v27;
    *(v9 + 13) = v29;
    *(v9 + 14) = v30;
    *(v9 + 15) = v32;
    *(v9 + 16) = v33;
    *(v9 + 17) = v35;
    *(v9 + 18) = v36;
    *(v9 + 19) = v43;
    *(v9 + 10) = 0u;
    *(v9 + 11) = 0u;
    swift_storeEnumTagMultiPayload();
    sub_100158BDC();
    sub_100009274(&qword_100360B70, &qword_100360B50);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *v6 = static VerticalAlignment.top.getter();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v45 = sub_1000040A8(&qword_100360B60);
    sub_100150A74(a1, &v6[*(v45 + 44)]);
    sub_100006C20(v6, v9, &qword_100360B50);
    swift_storeEnumTagMultiPayload();
    sub_100158BDC();
    sub_100009274(&qword_100360B70, &qword_100360B50);
    _ConditionalContent<>.init(storage:)();
    return sub_100008FA0(v6, &qword_100360B50);
  }
}

uint64_t sub_100150A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000040A8(&qword_100360B78);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for CABannerStaticContentLeadingView(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v25 - v16);
  v18 = type metadata accessor for CABannerView(0);
  sub_100151360(a1 + *(v18 + 24), v17 + *(v12 + 28), type metadata accessor for ConnectionAssistantBanner.Mode);
  type metadata accessor for UIMetrics();
  sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
  *v17 = EnvironmentObject.init()();
  v17[1] = v19;
  *v10 = static VerticalAlignment.top.getter();
  *(v10 + 1) = 0x4020000000000000;
  v10[16] = 0;
  v20 = sub_1000040A8(&qword_100360B80);
  sub_100150D40(a1, &v10[*(v20 + 44)]);
  v21 = static Edge.Set.all.getter();
  v22 = &v10[*(v5 + 44)];
  *v22 = v21;
  *(v22 + 8) = xmmword_100287330;
  *(v22 + 24) = xmmword_100288820;
  v22[40] = 0;
  sub_100151360(v17, v14, type metadata accessor for CABannerStaticContentLeadingView);
  sub_100006C20(v10, v7, &qword_100360B78);
  sub_100151360(v14, a2, type metadata accessor for CABannerStaticContentLeadingView);
  v23 = sub_1000040A8(&qword_100360B88);
  sub_100006C20(v7, a2 + *(v23 + 48), &qword_100360B78);
  sub_100008FA0(v10, &qword_100360B78);
  sub_100158C50(v17, type metadata accessor for CABannerStaticContentLeadingView);
  sub_100008FA0(v7, &qword_100360B78);
  return sub_100158C50(v14, type metadata accessor for CABannerStaticContentLeadingView);
}

uint64_t sub_100150D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for CABannerStaticContentTrailingView(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100360B90);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  *v14 = static HorizontalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = *(sub_1000040A8(&qword_100360B98) + 44);
  v16 = *(type metadata accessor for CABannerView(0) + 24);
  sub_100151360(a1 + v16, &v14[v15], type metadata accessor for ConnectionAssistantBanner.Mode);
  sub_100151360(a1 + v16, v8, type metadata accessor for ConnectionAssistantBanner.Mode);
  sub_100006C20(v14, v11, &qword_100360B90);
  sub_100151360(v8, v5, type metadata accessor for CABannerStaticContentTrailingView);
  v17 = v21;
  sub_100006C20(v11, v21, &qword_100360B90);
  v18 = sub_1000040A8(&qword_100360BA0);
  sub_100151360(v5, v17 + *(v18 + 48), type metadata accessor for CABannerStaticContentTrailingView);
  sub_100158C50(v8, type metadata accessor for CABannerStaticContentTrailingView);
  sub_100008FA0(v14, &qword_100360B90);
  sub_100158C50(v5, type metadata accessor for CABannerStaticContentTrailingView);
  return sub_100008FA0(v11, &qword_100360B90);
}

uint64_t sub_100150F90(uint64_t result, double a2, double a3)
{
  v3 = result;
  if (a2 != 0.0 || a3 != 0.0)
  {
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v6 = ceil(a3);
    v7 = type metadata accessor for Logger();
    sub_10000F53C(v7, qword_100381CC8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v10 = 136446466;
      v18 = a2;
      v19 = a3;
      type metadata accessor for CGSize(0);
      v11 = String.init<A>(describing:)();
      v13 = sub_10017C9E8(v11, v12, &v17);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;
      v18 = a2;
      v19 = v6;
      v14 = String.init<A>(describing:)();
      v16 = sub_10017C9E8(v14, v15, &v17);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Banner content changed, size: %{public}s, reporting: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
    }

    if (*v3)
    {
      v18 = a2;
      v19 = v6;

      PassthroughSubject.send(_:)();
    }

    else
    {
      type metadata accessor for AppEvents();
      sub_10014FB84(&qword_100354D48, type metadata accessor for AppEvents);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1001511F0()
{
  result = qword_100360B08;
  if (!qword_100360B08)
  {
    sub_100008CF0(&qword_100360B00);
    sub_1001512A8();
    sub_100009274(&qword_100360B30, &qword_100360B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360B08);
  }

  return result;
}

unint64_t sub_1001512A8()
{
  result = qword_100360B10;
  if (!qword_100360B10)
  {
    sub_100008CF0(&qword_100360B18);
    sub_100009274(&qword_100360B20, &qword_100360B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360B10);
  }

  return result;
}

uint64_t sub_100151360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001513C8()
{
  v1 = (type metadata accessor for CABannerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];
  type metadata accessor for ConnectionAssistantBanner.Mode();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for ConnectionClosed(0) + 20);
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10015153C(double a1, double a2)
{
  v5 = *(type metadata accessor for CABannerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100150F90(v6, a1, a2);
}

uint64_t sub_1001515B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v112 = a1;
  v111 = sub_1000040A8(&qword_100360DF8);
  __chkstk_darwin(v111);
  v4 = &v95 - v3;
  v98 = type metadata accessor for SymbolVariants();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1000040A8(&qword_10035B5E0);
  __chkstk_darwin(v99);
  v97 = &v95 - v6;
  v104 = sub_1000040A8(&qword_100360E00);
  __chkstk_darwin(v104);
  v103 = (&v95 - v7);
  v106 = sub_1000040A8(&qword_100360E08);
  __chkstk_darwin(v106);
  v108 = (&v95 - v8);
  v101 = sub_1000040A8(&qword_100360E10);
  __chkstk_darwin(v101);
  v102 = &v95 - v9;
  v107 = sub_1000040A8(&qword_100360E18);
  __chkstk_darwin(v107);
  v105 = &v95 - v10;
  v100 = sub_1000040A8(&qword_100360E20);
  __chkstk_darwin(v100);
  v12 = &v95 - v11;
  v13 = type metadata accessor for ConnectionAssistantBanner.Mode();
  __chkstk_darwin(v13);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1000040A8(&qword_100360E28);
  __chkstk_darwin(v110);
  v109 = &v95 - v16;
  v17 = *v1;
  if (*v1)
  {
    sub_1000089B0(v17 + 48, &v140);
    v18 = *(&v141 + 1);
    v19 = v142;
    sub_1000088DC(&v140, *(&v141 + 1));
    (*(v19 + 8))(v149, v18, v19);
    sub_100008964(&v140);
    v20 = *(v17 + 112);
    v21 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v21)
    {
      v22 = static HorizontalAlignment.center.getter();
      v23 = static Edge.Set.leading.getter();
      EdgeInsets.init(_all:)();
      LOBYTE(v140) = 1;
      LOBYTE(v131) = 0;
      *v4 = v22;
      *(v4 + 1) = 0;
      v4[16] = 1;
      v4[24] = v23;
      *(v4 + 4) = v24;
      *(v4 + 5) = v25;
      *(v4 + 6) = v26;
      *(v4 + 7) = v27;
      v4[64] = 0;
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_10035C7C0);
      sub_10015984C();
      sub_1000D0804();
      _ConditionalContent<>.init(storage:)();
      return sub_100008964(v149);
    }

    v28 = type metadata accessor for CABannerStaticContentLeadingView(0);
    sub_100151360(v2 + *(v28 + 20), v15, type metadata accessor for ConnectionAssistantBanner.Mode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          sub_100159414(&v140);
          v128 = v146;
          v129 = v147;
          v130[0] = v148[0];
          *(v130 + 10) = *(v148 + 10);
          v124 = v142;
          v125 = v143;
          v126 = v144;
          v127 = v145;
          v122 = v140;
          v123 = v141;
          sub_1000040A8(&qword_100360E30);
          sub_100159420();
          _ConditionalContent<>.init(storage:)();
          v89 = v138;
          v90 = v108;
          v108[6] = v137;
          v90[7] = v89;
          v90[8] = v139[0];
          *(v90 + 138) = *(v139 + 10);
          v91 = v134;
          v90[2] = v133;
          v90[3] = v91;
          v92 = v136;
          v90[4] = v135;
          v90[5] = v92;
          v93 = v132;
          *v90 = v131;
          v90[1] = v93;
          swift_storeEnumTagMultiPayload();
          sub_1000040A8(&qword_100360E40);
          sub_1001594AC();
          sub_1001597C0();
          v55 = v109;
          _ConditionalContent<>.init(storage:)();
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      v69 = static HorizontalAlignment.leading.getter();
      v70 = v103;
      *v103 = v69;
      v70[1] = 0;
      *(v70 + 16) = 0;
      sub_1000089B0(v17 + 48, &v140);
      v71 = *(&v141 + 1);
      v72 = v142;
      sub_1000088DC(&v140, *(&v141 + 1));
      (*(v72 + 40))(v71, v72);
      v73 = static Font.largeTitle.getter();
      sub_1000040A8(&qword_100360EB0);
      v74 = Image.init(systemName:)();
      KeyPath = swift_getKeyPath();
      *&v131 = v74;
      *(&v131 + 1) = KeyPath;
      *&v132 = v73;

      v76 = v95;
      static SymbolVariants.fill.getter();
      sub_1000040A8(&qword_100355050);
      sub_10000C700();
      v77 = v97;
      View.symbolVariant(_:)();
      (*(v96 + 8))(v76, v98);

      *(v77 + *(v99 + 36)) = static Color.green.getter();
      sub_1000A4A68();
      v78 = v103;
      View.accessibility(hidden:)();
      sub_100008FA0(v77, &qword_10035B5E0);

      sub_100008964(&v140);
      v79 = static Edge.Set.all.getter();
      v80 = v78 + *(sub_1000040A8(&qword_100360E88) + 36);
      *v80 = v79;
      __asm { FMOV            V0.2D, #16.0 }

      *(v80 + 8) = _Q0;
      *(v80 + 24) = _Q0;
      *(v80 + 40) = 0;
      v82 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v83 = v78 + *(v104 + 36);
      *v83 = v82;
      *(v83 + 8) = v84;
      *(v83 + 16) = v85;
      *(v83 + 24) = v86;
      *(v83 + 32) = v87;
      *(v83 + 40) = 0;
      sub_100006C20(v78, v102, &qword_100360E00);
      swift_storeEnumTagMultiPayload();
      sub_100159538();
      sub_10015967C();
      v88 = v105;
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v88, v108, &qword_100360E18);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360E40);
      sub_1001594AC();
      sub_1001597C0();
      v55 = v109;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v88, &qword_100360E18);
      v67 = v78;
      v68 = &qword_100360E00;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_100158C50(v15, type metadata accessor for ConnectionClosed);
        }

LABEL_10:
        type metadata accessor for ConnectionClosedModel(0);
        sub_10014FB84(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel);
        v112 = EnvironmentObject.init()();
        v105 = v30;
        type metadata accessor for ConnectivityModel();
        sub_10014FB84(&qword_100354F78, type metadata accessor for ConnectivityModel);
        v31 = EnvironmentObject.init()();
        v103 = v32;
        v104 = v31;
        type metadata accessor for GuidanceModel(0);
        sub_10014FB84(&qword_100354F80, type metadata accessor for GuidanceModel);
        v102 = EnvironmentObject.init()();
        v34 = v33;
        type metadata accessor for OrientationModel();
        sub_10014FB84(&qword_10035B1B0, type metadata accessor for OrientationModel);
        v35 = EnvironmentObject.init()();
        v37 = v36;
        type metadata accessor for StewieModel(0);
        sub_10014FB84(&qword_1003561B8, type metadata accessor for StewieModel);
        v38 = EnvironmentObject.init()();
        v40 = v39;
        type metadata accessor for UIMetrics();
        sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
        v41 = EnvironmentObject.init()();
        v43 = v42;
        v44 = static Edge.Set.all.getter();
        LOBYTE(v131) = 0;
        *&v113 = v112;
        *(&v113 + 1) = v105;
        *&v114 = v104;
        *(&v114 + 1) = v103;
        *&v115 = v102;
        *(&v115 + 1) = v34;
        *&v116 = v35;
        *(&v116 + 1) = v37;
        *&v117 = v38;
        *(&v117 + 1) = v40;
        *&v118 = v41;
        *(&v118 + 1) = v43;
        LOBYTE(v119) = 2;
        v120 = 0;
        LOBYTE(v121[0]) = v44;
        DWORD1(v121[0]) = *(&v140 + 3);
        *(v121 + 1) = v140;
        __asm { FMOV            V0.2D, #16.0 }

        *(v121 + 8) = _Q0;
        *(&v121[1] + 8) = _Q0;
        BYTE8(v121[2]) = 0;
        *(v148 + 9) = *(&v121[1] + 9);
        v147 = v121[0];
        v148[0] = v121[1];
        v140 = v113;
        v141 = v114;
        v145 = v118;
        v146 = v119;
        v143 = v116;
        v144 = v117;
        v142 = v115;
        sub_1001598D8(&v140);
        v128 = v146;
        v129 = v147;
        v130[0] = v148[0];
        *(v130 + 10) = *(v148 + 10);
        v124 = v142;
        v125 = v143;
        v126 = v144;
        v127 = v145;
        v122 = v140;
        v123 = v141;
        sub_100006C20(&v113, &v131, &qword_100360E30);
        sub_1000040A8(&qword_100360E30);
        sub_100159420();
        _ConditionalContent<>.init(storage:)();
        v50 = v138;
        v51 = v108;
        v108[6] = v137;
        v51[7] = v50;
        v51[8] = v139[0];
        *(v51 + 138) = *(v139 + 10);
        v52 = v134;
        v51[2] = v133;
        v51[3] = v52;
        v53 = v136;
        v51[4] = v135;
        v51[5] = v53;
        v54 = v132;
        *v51 = v131;
        v51[1] = v54;
        swift_storeEnumTagMultiPayload();
        sub_1000040A8(&qword_100360E40);
        sub_1001594AC();
        sub_1001597C0();
        v55 = v109;
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(&v113, &qword_100360E30);
LABEL_15:
        sub_100006C20(v55, v4, &qword_100360E28);
        swift_storeEnumTagMultiPayload();
        sub_1000040A8(&qword_10035C7C0);
        sub_10015984C();
        sub_1000D0804();
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(v55, &qword_100360E28);
        return sub_100008964(v149);
      }

      *v12 = static HorizontalAlignment.center.getter();
      *(v12 + 1) = 0;
      v12[16] = 0;
      v56 = sub_1000040A8(&qword_100360EB8);
      sub_100152538(&v12[*(v56 + 44)]);
      v57 = static Edge.Set.all.getter();
      v58 = &v12[*(sub_1000040A8(&qword_100360E60) + 36)];
      *v58 = v57;
      __asm { FMOV            V0.2D, #16.0 }

      *(v58 + 8) = _Q0;
      *(v58 + 24) = _Q0;
      v58[40] = 0;
      v60 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v61 = &v12[*(v100 + 36)];
      *v61 = v60;
      *(v61 + 1) = v62;
      *(v61 + 2) = v63;
      *(v61 + 3) = v64;
      *(v61 + 4) = v65;
      v61[40] = 0;
      sub_100006C20(v12, v102, &qword_100360E20);
      swift_storeEnumTagMultiPayload();
      sub_100159538();
      sub_10015967C();
      v66 = v105;
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v66, v108, &qword_100360E18);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360E40);
      sub_1001594AC();
      sub_1001597C0();
      v55 = v109;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v66, &qword_100360E18);
      v67 = v12;
      v68 = &qword_100360E20;
    }

    sub_100008FA0(v67, v68);
    goto LABEL_15;
  }

  type metadata accessor for UIMetrics();
  sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100152538@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = type metadata accessor for SymbolVariants();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000040A8(&qword_10035D250);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v28 = &v28 - v5;
  v36 = sub_1000040A8(&qword_100360EC0);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v30 = &v28 - v6;
  v33 = sub_1000040A8(&qword_10035D258) - 8;
  __chkstk_darwin(v33);
  v32 = &v28 - v7;
  v31 = sub_1000040A8(&qword_100360EC8);
  __chkstk_darwin(v31);
  v29 = &v28 - v8;
  v9 = Image.init(_internalSystemName:)();
  v10 = static Font.largeTitle.getter();
  KeyPath = swift_getKeyPath();
  v39 = v9;
  v40 = KeyPath;
  v41 = v10;
  static SymbolVariants.circle.getter();
  v12 = sub_1000040A8(&qword_100355050);
  v13 = sub_10000C700();
  View.symbolVariant(_:)();
  v14 = *(v2 + 8);
  v14(v4, v1);

  static SymbolVariants.fill.getter();
  v39 = v12;
  v40 = v13;
  swift_getOpaqueTypeConformance2();
  v15 = v30;
  v16 = v35;
  v17 = v28;
  View.symbolVariant(_:)();
  v14(v4, v1);
  (*(v37 + 8))(v17, v16);
  v18 = static Color.white.getter();
  v19 = static Color.red.getter();
  v20 = v32;
  (*(v34 + 32))(v32, v15, v36);
  v21 = (v20 + *(v33 + 44));
  *v21 = v18;
  v21[1] = v19;
  v22 = v29;
  v23 = &v29[*(v31 + 36)];
  v24 = *(sub_1000040A8(&qword_100358500) + 28);
  v25 = enum case for Image.Scale.large(_:);
  v26 = type metadata accessor for Image.Scale();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  sub_10000CF4C(v20, v22, &qword_10035D258);
  sub_100159910();
  View.accessibility(hidden:)();
  return sub_100008FA0(v22, &qword_100360EC8);
}

uint64_t sub_100152A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for CABannerConnectionClosedView(0);
  __chkstk_darwin(v3);
  v5 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ConnectionClosed(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000040A8(&qword_100360D78);
  __chkstk_darwin(v49);
  v51 = (&v45 - v9);
  v46 = sub_1000040A8(&qword_100360D80);
  __chkstk_darwin(v46);
  v11 = &v45 - v10;
  v12 = sub_1000040A8(&qword_100360D88);
  __chkstk_darwin(v12);
  v14 = (&v45 - v13);
  v47 = sub_1000040A8(&qword_100360D90);
  __chkstk_darwin(v47);
  v16 = &v45 - v15;
  v50 = sub_1000040A8(&qword_100360D98);
  __chkstk_darwin(v50);
  v48 = &v45 - v17;
  v18 = type metadata accessor for ConnectionAssistantBanner.Mode();
  __chkstk_darwin(v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100151360(a1, v20, type metadata accessor for ConnectionAssistantBanner.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      type metadata accessor for UIMetrics();
      sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
      *v14 = EnvironmentObject.init()();
      v14[1] = v33;
      swift_storeEnumTagMultiPayload();
      sub_100159200();
      sub_10014FB84(&qword_100360DC8, type metadata accessor for CABannerConnectionClosedView);

      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v16, v11, &qword_100360D90);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360DD8);
      sub_100159144();
      sub_100159254();
      v34 = v48;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v16, &qword_100360D90);
      sub_100006C20(v34, v51, &qword_100360D98);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360DA8);
      sub_1001590B8();
      sub_100159388();
      _ConditionalContent<>.init(storage:)();

      return sub_100008FA0(v34, &qword_100360D98);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_10014FBCC(v20, v8, type metadata accessor for ConnectionClosed);
      sub_100151360(v8, v5 + *(v3 + 20), type metadata accessor for ConnectionClosed);
      type metadata accessor for UIMetrics();
      sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
      *v5 = EnvironmentObject.init()();
      v5[1] = v22;
      sub_100151360(v5, v14, type metadata accessor for CABannerConnectionClosedView);
      swift_storeEnumTagMultiPayload();
      sub_100159200();
      sub_10014FB84(&qword_100360DC8, type metadata accessor for CABannerConnectionClosedView);
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v16, v11, &qword_100360D90);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360DD8);
      sub_100159144();
      sub_100159254();
      v23 = v48;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v16, &qword_100360D90);
      sub_100006C20(v23, v51, &qword_100360D98);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360DA8);
      sub_1001590B8();
      sub_100159388();
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v23, &qword_100360D98);
      sub_100158C50(v5, type metadata accessor for CABannerConnectionClosedView);
      return sub_100158C50(v8, type metadata accessor for ConnectionClosed);
    }

    v37 = *v20;
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
    *&v53 = EnvironmentObject.init()();
    *(&v53 + 1) = v38;
    LOWORD(v54) = v37;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v35 = *v20;
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
    *&v53 = EnvironmentObject.init()();
    *(&v53 + 1) = v36;
    LOBYTE(v54) = v35;
    BYTE1(v54) = 1;
LABEL_11:
    sub_1001592E0();
    sub_100159334();

    _ConditionalContent<>.init(storage:)();
    v39 = v57;
    v40 = BYTE1(v57);
    *v11 = v56;
    v11[16] = v39;
    v11[17] = v40;
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100360DD8);
    sub_100159144();
    sub_100159254();
    v41 = v48;
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(v41, v51, &qword_100360D98);
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100360DA8);
    sub_1001590B8();
    sub_100159388();
    _ConditionalContent<>.init(storage:)();

    return sub_100008FA0(v41, &qword_100360D98);
  }

  if (EnumCaseMultiPayload == 4)
  {
    type metadata accessor for ConnectivityModel();
    sub_10014FB84(&qword_100354F78, type metadata accessor for ConnectivityModel);
    v25 = EnvironmentObject.init()();
    v27 = v26;
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
    v28 = EnvironmentObject.init()();
    *&v53 = v25;
    *(&v53 + 1) = v27;
    *&v54 = v28;
    *(&v54 + 1) = v29;
    v55 = 0;
    sub_100159064();

    _ConditionalContent<>.init(storage:)();
    v30 = v58;
    v31 = v57;
    v32 = v51;
    *v51 = v56;
    v32[1] = v31;
    *(v32 + 32) = v30;
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100360DA8);
    sub_1001590B8();
    sub_100159388();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
    v55 = 1;
    sub_100159064();
    _ConditionalContent<>.init(storage:)();
    v42 = v58;
    v43 = v57;
    v44 = v51;
    *v51 = v56;
    v44[1] = v43;
    *(v44 + 32) = v42;
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100360DA8);
    sub_1001590B8();
    sub_100159388();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100153570()
{
  v1 = sub_1000040A8(&qword_100354D60);
  __chkstk_darwin(v1);
  v3 = &v11 - v2;
  v4 = sub_1000040A8(&qword_100360D60);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  *v6 = static HorizontalAlignment.leading.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_1000040A8(&qword_100360D68);
  sub_100152A04(v0, &v6[*(v7 + 44)]);
  v8 = enum case for DynamicTypeSize.xxLarge(_:);
  v9 = type metadata accessor for DynamicTypeSize();
  (*(*(v9 - 8) + 104))(v3, v8, v9);
  sub_10014FB84(&qword_100354D68, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100009274(&qword_100360D70, &qword_100360D60);
    sub_100009274(&qword_100354D78, &qword_100354D60);
    View.dynamicTypeSize<A>(_:)();
    sub_100008FA0(v3, &qword_100354D60);
    return sub_100008FA0(v6, &qword_100360D60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001537E0@<X0>(void *a1@<X8>)
{
  v77 = a1;
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v79 = v1;
  v80 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  if (*v1)
  {
    v70 = *v1;
    sub_1000089B0(v5 + 48, &v104);
    v6 = v107;
    v7 = v108;
    sub_1000088DC(&v104, v107);
    (*(v7 + 8))(v167, v6, v7);
    sub_100008964(&v104);
    v8 = [objc_opt_self() mainBundle];
    v175._object = 0x80000001002A0100;
    v9._object = 0x80000001002A00E0;
    v175._countAndFlagsBits = 0xD00000000000003DLL;
    v9._countAndFlagsBits = 0xD000000000000010;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v175);

    v104 = v11;
    v76 = sub_100031770();
    v12 = Text.init<A>(_:)();
    v14 = v13;
    LOBYTE(v7) = v15;
    static Font.footnote.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    LODWORD(v74) = enum case for Font.Leading.tight(_:);
    v16 = *(v3 + 104);
    v75 = v3 + 104;
    v78 = v16;
    v17 = v80;
    v16(v80);
    Font.leading(_:)();

    v18 = *(v3 + 8);
    v72 = v3 + 8;
    v73 = v18;
    v18(v17, v2);
    v19 = Text.font(_:)();
    v71 = v2;
    v21 = v20;
    v23 = v22;

    sub_1000317C4(v12, v14, v7 & 1);

    v24 = v70;
    sub_1000089B0(v70 + 48, &v104);
    v25 = v107;
    v26 = v108;
    sub_1000088DC(&v104, v107);
    (*(v26 + 96))(v25, v26);
    v27 = Text.foregroundColor(_:)();
    v86 = v28;
    v87 = v27;
    LOBYTE(v25) = v29;
    v81 = v30;
    sub_1000317C4(v19, v21, v23 & 1);

    sub_100008964(&v104);
    KeyPath = swift_getKeyPath();
    v85 = swift_getKeyPath();
    v82 = v25 & 1;
    LOBYTE(v104._countAndFlagsBits) = v25 & 1;
    LOBYTE(v95) = 0;
    v83 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_1000089B0(v24 + 48, &v104);
    v31 = v107;
    v32 = v108;
    sub_1000088DC(&v104, v107);
    v33 = type metadata accessor for CABannerConnectionClosedView(0);
    *&v95 = (*(v32 + 152))(v79 + *(v33 + 20), v31, v32);
    *(&v95 + 1) = v34;
    v35 = Text.init<A>(_:)();
    v37 = v36;
    LOBYTE(v31) = v38;
    sub_100008964(&v104);
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v39 = v80;
    v40 = v71;
    v78(v80, v74, v71);
    Font.leading(_:)();

    v73(v39, v40);
    v41 = Text.font(_:)();
    v43 = v42;
    LOBYTE(v39) = v44;

    sub_1000317C4(v35, v37, v31 & 1);

    static Color.white.getter();
    v45 = Text.foregroundColor(_:)();
    v78 = v46;
    v79 = v47;
    LOBYTE(v31) = v48;

    sub_1000317C4(v41, v43, v39 & 1);

    v49 = swift_getKeyPath();
    v80 = swift_getKeyPath();
    LOBYTE(v104._countAndFlagsBits) = v31 & 1;
    LODWORD(v71) = v31 & 1;
    LOBYTE(v95) = 0;
    v50 = swift_getKeyPath();
    LOBYTE(v41) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v154 = 0;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v156[55] = v171;
    *&v156[71] = v172;
    *&v156[87] = v173;
    *&v156[103] = v174;
    *&v156[7] = v168;
    *&v156[23] = v169;
    *&v156[39] = v170;
    type metadata accessor for ConnectionModel(0);
    sub_10014FB84(&qword_100354F88, type metadata accessor for ConnectionModel);
    v75 = EnvironmentObject.init()();
    v76 = v59;
    type metadata accessor for ConnectivityModel();
    sub_10014FB84(&qword_100354F78, type metadata accessor for ConnectivityModel);
    v73 = EnvironmentObject.init()();
    v74 = v60;
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
    v61 = EnvironmentObject.init()();
    v72 = v62;
    *&v89 = v87;
    *(&v89 + 1) = v86;
    LOBYTE(v90) = v82;
    *(&v90 + 1) = *v165;
    DWORD1(v90) = *&v165[3];
    *(&v90 + 1) = v81;
    *&v91 = KeyPath;
    *(&v91 + 1) = 2;
    LOBYTE(v92) = 0;
    *(&v92 + 1) = *v164;
    DWORD1(v92) = *&v164[3];
    *(&v92 + 1) = v85;
    LOBYTE(v93) = 0;
    *(&v93 + 1) = *v166;
    DWORD1(v93) = *&v166[3];
    *(&v93 + 1) = v83;
    *v94 = 0x3FE0000000000000;
    *&v94[72] = v161;
    *&v94[56] = v160;
    *&v94[88] = v162;
    *&v94[104] = v163;
    *&v94[8] = v157;
    *&v94[24] = v158;
    *&v94[40] = v159;
    v88[2] = v91;
    v88[3] = v92;
    v88[0] = v89;
    v88[1] = v90;
    v88[6] = *&v94[16];
    v88[7] = *&v94[32];
    v88[4] = v93;
    v88[5] = *v94;
    v88[10] = *&v94[80];
    v88[11] = *&v94[96];
    v88[8] = *&v94[48];
    v88[9] = *&v94[64];
    *&v95 = v45;
    *(&v95 + 1) = v78;
    LOBYTE(v96) = v31 & 1;
    *(&v96 + 1) = *v152;
    DWORD1(v96) = *&v152[3];
    *(&v96 + 1) = v79;
    *&v97 = v49;
    *(&v98 + 1) = *v151;
    *(&v97 + 1) = 3;
    LOBYTE(v98) = 0;
    DWORD1(v98) = *&v151[3];
    *(&v98 + 1) = v80;
    LOBYTE(v99) = 0;
    DWORD1(v99) = *&v153[3];
    *(&v99 + 1) = *v153;
    *(&v99 + 1) = v50;
    *&v100 = 0x3FE0000000000000;
    LOBYTE(v32) = v41;
    BYTE8(v100) = v41;
    HIDWORD(v100) = *&v155[3];
    *(&v100 + 9) = *v155;
    *&v101 = v52;
    *(&v101 + 1) = v54;
    *&v102 = v56;
    *(&v102 + 1) = v58;
    v103[0] = 0;
    *&v103[49] = *&v156[48];
    *&v103[33] = *&v156[32];
    *&v103[17] = *&v156[16];
    *&v103[1] = *v156;
    *&v103[112] = *&v156[111];
    *&v103[97] = *&v156[96];
    *&v103[81] = *&v156[80];
    *&v103[65] = *&v156[64];
    *(&v88[18] + 8) = v101;
    *(&v88[19] + 8) = v102;
    *(&v88[16] + 8) = v99;
    *(&v88[17] + 8) = v100;
    *(&v88[22] + 8) = *&v103[32];
    *(&v88[23] + 8) = *&v103[48];
    *(&v88[20] + 8) = *v103;
    *(&v88[21] + 8) = *&v103[16];
    *(&v88[25] + 8) = *&v103[80];
    *(&v88[26] + 8) = *&v103[96];
    *(&v88[24] + 8) = *&v103[64];
    *(&v88[15] + 8) = v98;
    *(&v88[14] + 8) = v97;
    *(&v88[13] + 8) = v96;
    *(&v88[12] + 8) = v95;
    *&v88[12] = *(&v163 + 1);
    *(&v88[27] + 1) = *&v103[112];
    sub_100006C20(&v89, &v104, &qword_100360FC8);
    sub_100006C20(&v95, &v104, &qword_100360FD0);

    v63 = v75;

    v64 = v73;

    sub_100008964(v167);
    v65 = v77;
    memcpy(v77, v88, 0x1C0uLL);
    v66 = v76;
    v65[56] = v63;
    v65[57] = v66;
    v67 = v74;
    v65[58] = v64;
    v65[59] = v67;
    v68 = v72;
    v65[60] = v61;
    v65[61] = v68;

    v104._countAndFlagsBits = v45;
    v104._object = v78;
    v105 = v71;
    *v106 = *v152;
    *&v106[3] = *&v152[3];
    v107 = v79;
    v108 = v49;
    v109 = 3;
    v110 = 0;
    *v111 = *v151;
    *&v111[3] = *&v151[3];
    v112 = v80;
    v113 = 0;
    *&v114[3] = *&v153[3];
    *v114 = *v153;
    v115 = v50;
    v116 = 0x3FE0000000000000;
    v117 = v32;
    *&v118[3] = *&v155[3];
    *v118 = *v155;
    v119 = v52;
    v120 = v54;
    v121 = v56;
    v122 = v58;
    v123 = 0;
    v127 = *&v156[48];
    v126 = *&v156[32];
    v125 = *&v156[16];
    v124 = *v156;
    *&v130[15] = *&v156[111];
    *v130 = *&v156[96];
    v129 = *&v156[80];
    v128 = *&v156[64];
    sub_100008FA0(&v104, &qword_100360FD0);
    v131[0] = v87;
    v131[1] = v86;
    v132 = v82;
    *v133 = *v165;
    *&v133[3] = *&v165[3];
    v134 = v81;
    v135 = KeyPath;
    v136 = 2;
    v137 = 0;
    *v138 = *v164;
    *&v138[3] = *&v164[3];
    v139 = v85;
    v140 = 0;
    *&v141[3] = *&v166[3];
    *v141 = *v166;
    v142 = v83;
    v143 = 0x3FE0000000000000;
    v147 = v160;
    v148 = v161;
    v149 = v162;
    v150 = v163;
    v144 = v157;
    v145 = v158;
    v146 = v159;
    return sub_100008FA0(v131, &qword_100360FC8);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100154440@<X0>(void *a1@<X0>, unsigned int a2@<W2>, void *a3@<X8>)
{
  v75 = a2;
  v76 = a3;
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v82 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1[9];
    v8 = a1[10];
    sub_1000088DC(a1 + 6, v7);
    v9 = *(v8 + 8);
    swift_retain_n();
    v9(v164, v7, v8);
    v10 = [objc_opt_self() mainBundle];
    v172._object = 0x80000001002A0100;
    v11._object = 0x80000001002A00E0;
    v172._countAndFlagsBits = 0xD00000000000003DLL;
    v11._countAndFlagsBits = 0xD000000000000010;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v172);

    v101 = v13;
    v74 = sub_100031770();
    v14 = Text.init<A>(_:)();
    v84 = v15;
    LOBYTE(v8) = v16;
    static Font.footnote.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v71 = enum case for Font.Leading.tight(_:);
    v17 = *(v5 + 104);
    v72 = v5 + 104;
    v73 = v17;
    v18 = v82;
    v17(v82);
    Font.leading(_:)();

    v19 = *(v5 + 8);
    v69 = v5 + 8;
    v70 = v19;
    v19(v18, v4);
    v20 = v8;
    v21 = v84;
    v22 = Text.font(_:)();
    v68 = v4;
    v23 = v22;
    v25 = v24;
    LOBYTE(v18) = v26;
    v83 = v27;

    sub_1000317C4(v14, v21, v20 & 1);

    v28 = a1[9];
    v29 = a1[10];
    sub_1000088DC(a1 + 6, v28);
    (*(v29 + 96))(v28, v29);
    v30 = Text.foregroundColor(_:)();
    v79 = v31;
    v80 = v30;
    v78 = v32;
    LOBYTE(v28) = v33;
    sub_1000317C4(v23, v25, v18 & 1);

    KeyPath = swift_getKeyPath();
    v77 = swift_getKeyPath();
    LODWORD(v83) = v28 & 1;
    LOBYTE(v101._countAndFlagsBits) = v28 & 1;
    LOBYTE(v92) = 0;
    v84 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

    v34 = a1[9];
    v35 = a1[10];
    sub_1000088DC(a1 + 6, v34);
    v101._countAndFlagsBits = (*(v35 + 168))(v75, v34, v35);
    v101._object = v36;
    v37 = Text.init<A>(_:)();
    v39 = v38;
    v41 = v40;
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v42 = v82;
    v43 = v68;
    v73(v82, v71, v68);
    Font.leading(_:)();

    v70(v42, v43);
    v44 = Text.font(_:)();
    v46 = v45;
    LOBYTE(v42) = v47;

    sub_1000317C4(v37, v39, v41 & 1);

    static Color.white.getter();
    v48 = Text.foregroundColor(_:)();
    v73 = v48;
    v82 = v49;
    LOBYTE(v34) = v50;
    v52 = v51;

    sub_1000317C4(v44, v46, v42 & 1);

    v53 = swift_getKeyPath();
    v54 = swift_getKeyPath();
    LOBYTE(v101._countAndFlagsBits) = v34 & 1;
    LOBYTE(v37) = v34 & 1;
    LODWORD(v74) = v34 & 1;
    LOBYTE(v92) = 0;
    v55 = swift_getKeyPath();
    v75 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v151 = 0;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v153[55] = v168;
    *&v153[71] = v169;
    *&v153[87] = v170;
    *&v153[103] = v171;
    *&v153[7] = v165;
    *&v153[23] = v166;
    *&v153[39] = v167;
    *&v86 = v80;
    *(&v86 + 1) = v78;
    LOBYTE(v87) = v83;
    DWORD1(v87) = *&v162[3];
    *(&v87 + 1) = *v162;
    *(&v87 + 1) = v79;
    *&v88 = KeyPath;
    *(&v88 + 1) = 2;
    LOBYTE(v89) = 0;
    *(&v89 + 1) = *v161;
    DWORD1(v89) = *&v161[3];
    *(&v89 + 1) = v77;
    LOBYTE(v90) = 0;
    *(&v90 + 1) = *v163;
    DWORD1(v90) = *&v163[3];
    *(&v90 + 1) = v84;
    *v91 = 0x3FE0000000000000;
    *&v91[104] = v160;
    *&v91[8] = v154;
    *&v91[40] = v156;
    *&v91[24] = v155;
    *&v91[88] = v159;
    *&v91[72] = v158;
    *&v91[56] = v157;
    v85[2] = v88;
    v85[3] = v89;
    v85[0] = v86;
    v85[1] = v87;
    v85[6] = *&v91[16];
    v85[7] = *&v91[32];
    v85[4] = v90;
    v85[5] = *v91;
    v85[10] = *&v91[80];
    v85[11] = *&v91[96];
    v85[8] = *&v91[48];
    v85[9] = *&v91[64];
    *&v92 = v48;
    v64 = v82;
    *(&v92 + 1) = v82;
    LOBYTE(v93) = v37;
    *(&v93 + 1) = *v149;
    DWORD1(v93) = *&v149[3];
    v65 = v52;
    *(&v93 + 1) = v52;
    *&v94 = v53;
    *(&v95 + 1) = *v148;
    *(&v94 + 1) = 3;
    LOBYTE(v95) = 0;
    DWORD1(v95) = *&v148[3];
    *(&v95 + 1) = v54;
    LOBYTE(v96) = 0;
    DWORD1(v96) = *&v150[3];
    *(&v96 + 1) = *v150;
    *(&v96 + 1) = v55;
    *&v97 = 0x3FE0000000000000;
    LOBYTE(v52) = v75;
    BYTE8(v97) = v75;
    HIDWORD(v97) = *&v152[3];
    *(&v97 + 9) = *v152;
    *&v98 = v57;
    *(&v98 + 1) = v59;
    *&v99 = v61;
    *(&v99 + 1) = v63;
    v100[0] = 0;
    *&v100[49] = *&v153[48];
    *&v100[33] = *&v153[32];
    *&v100[17] = *&v153[16];
    *&v100[1] = *v153;
    *&v100[112] = *(&v171 + 1);
    *&v100[97] = *&v153[96];
    *&v100[81] = *&v153[80];
    *&v100[65] = *&v153[64];
    *(&v85[18] + 8) = v98;
    *(&v85[19] + 8) = v99;
    *(&v85[16] + 8) = v96;
    *(&v85[17] + 8) = v97;
    *(&v85[22] + 8) = *&v100[32];
    *(&v85[23] + 8) = *&v100[48];
    *(&v85[20] + 8) = *v100;
    *(&v85[21] + 8) = *&v100[16];
    *(&v85[25] + 8) = *&v100[80];
    *(&v85[26] + 8) = *&v100[96];
    *(&v85[24] + 8) = *&v100[64];
    *(&v85[15] + 8) = v95;
    *(&v85[14] + 8) = v94;
    *(&v85[13] + 8) = v93;
    *(&v85[12] + 8) = v92;
    *&v85[12] = *(&v160 + 1);
    *(&v85[27] + 1) = *&v100[112];
    sub_100006C20(&v86, &v101, &qword_100360FC8);
    sub_100006C20(&v92, &v101, &qword_100360FD0);
    sub_100008964(v164);
    memcpy(v76, v85, 0x1C0uLL);
    v101._countAndFlagsBits = v73;
    v101._object = v64;
    v102 = v74;
    *v103 = *v149;
    *&v103[3] = *&v149[3];
    v104 = v65;
    v105 = v53;
    v106 = 3;
    v107 = 0;
    *v108 = *v148;
    *&v108[3] = *&v148[3];
    v109 = v54;
    v110 = 0;
    *&v111[3] = *&v150[3];
    *v111 = *v150;
    v112 = v55;
    v113 = 0x3FE0000000000000;
    v114 = v52;
    *&v115[3] = *&v152[3];
    *v115 = *v152;
    v116 = v57;
    v117 = v59;
    v118 = v61;
    v119 = v63;
    v120 = 0;
    v124 = *&v153[48];
    v123 = *&v153[32];
    v122 = *&v153[16];
    v121 = *v153;
    *&v127[15] = *&v153[111];
    *v127 = *&v153[96];
    v126 = *&v153[80];
    v125 = *&v153[64];
    sub_100008FA0(&v101, &qword_100360FD0);
    v128[0] = v80;
    v128[1] = v78;
    v129 = v83;
    *v130 = *v162;
    *&v130[3] = *&v162[3];
    v131 = v79;
    v132 = KeyPath;
    v133 = 2;
    v134 = 0;
    *v135 = *v161;
    *&v135[3] = *&v161[3];
    v136 = v77;
    v137 = 0;
    *&v138[3] = *&v163[3];
    *v138 = *v163;
    v139 = v84;
    v140 = 0x3FE0000000000000;
    v144 = v157;
    v145 = v158;
    v146 = v159;
    v147 = v160;
    v141 = v154;
    v142 = v155;
    v143 = v156;
    return sub_100008FA0(v128, &qword_100360FC8);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100154F48@<X0>(void *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v48) = a2;
  v49 = type metadata accessor for Font.Leading();
  v5 = *(v49 - 8);
  __chkstk_darwin(v49);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1[9];
    v9 = a1[10];
    sub_1000088DC(a1 + 6, v8);
    v10 = *(v9 + 8);

    v10(v52, v8, v9);

    v11 = a1[9];
    v12 = a1[10];
    sub_1000088DC(a1 + 6, v11);
    *&v53 = (*(v12 + 216))(v48 & 1, v11, v12);
    *(&v53 + 1) = v13;
    sub_100031770();
    v48 = Text.init<A>(_:)();
    v15 = v14;
    v17 = v16;
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v18 = v49;
    (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v49);
    Font.leading(_:)();

    (*(v5 + 8))(v7, v18);
    LOBYTE(v18) = v17;
    v19 = v48;
    v20 = Text.font(_:)();
    v22 = v21;
    v24 = v23;
    v46 = v25;

    sub_1000317C4(v19, v15, v18 & 1);

    static Color.white.getter();
    v26 = Text.foregroundColor(_:)();
    v48 = v27;
    v49 = v26;
    LOBYTE(v15) = v28;
    v47 = v29;

    sub_1000317C4(v20, v22, v24 & 1);

    KeyPath = swift_getKeyPath();
    v31 = swift_getKeyPath();
    LOBYTE(v18) = v15 & 1;
    LOBYTE(v53) = v15 & 1;
    v50 = 0;
    v32 = swift_getKeyPath();
    LOBYTE(v12) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v50 = 0;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    result = sub_100008964(v52);
    *&v51[55] = v56;
    *&v51[71] = v57;
    *&v51[87] = v58;
    *&v51[103] = v59;
    *&v51[7] = v53;
    *&v51[23] = v54;
    *&v51[39] = v55;
    v42 = v48;
    *a3 = v49;
    *(a3 + 8) = v42;
    *(a3 + 16) = v18;
    *(a3 + 24) = v47;
    *(a3 + 32) = KeyPath;
    *(a3 + 40) = 3;
    *(a3 + 48) = 0;
    *(a3 + 56) = v31;
    *(a3 + 64) = 0;
    *(a3 + 72) = v32;
    *(a3 + 80) = 0x3FE0000000000000;
    *(a3 + 88) = v12;
    *(a3 + 96) = v34;
    *(a3 + 104) = v36;
    *(a3 + 112) = v38;
    *(a3 + 120) = v40;
    *(a3 + 128) = 0;
    v43 = *&v51[80];
    *(a3 + 193) = *&v51[64];
    *(a3 + 209) = v43;
    *(a3 + 225) = *&v51[96];
    *(a3 + 240) = *&v51[111];
    v44 = *&v51[16];
    *(a3 + 129) = *v51;
    *(a3 + 145) = v44;
    v45 = *&v51[48];
    *(a3 + 161) = *&v51[32];
    *(a3 + 177) = v45;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001553B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = type metadata accessor for Font.Leading();
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1[9];
    v8 = a1[10];
    sub_1000088DC(a1 + 6, v7);
    (*(v8 + 8))(v51, v7, v8);
    v9 = [objc_opt_self() mainBundle];
    v59._object = 0x8000000100296DF0;
    v10._object = 0x8000000100296DC0;
    v59._countAndFlagsBits = 0xD000000000000067;
    v10._countAndFlagsBits = 0xD00000000000002FLL;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v59);

    v52 = v12;
    sub_100031770();
    v47 = Text.init<A>(_:)();
    v14 = v13;
    LOBYTE(v7) = v15;
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v16 = v48;
    (*(v4 + 104))(v6, enum case for Font.Leading.tight(_:), v48);
    Font.leading(_:)();

    (*(v4 + 8))(v6, v16);
    LOBYTE(v16) = v7;
    v17 = v47;
    v18 = Text.font(_:)();
    v20 = v19;
    v22 = v21;
    v45 = v23;

    sub_1000317C4(v17, v14, v16 & 1);

    static Color.white.getter();
    v24 = Text.foregroundColor(_:)();
    v47 = v25;
    v48 = v24;
    LOBYTE(v14) = v26;
    v46 = v27;

    sub_1000317C4(v18, v20, v22 & 1);

    KeyPath = swift_getKeyPath();
    v29 = swift_getKeyPath();
    LOBYTE(v16) = v14 & 1;
    LOBYTE(v52._countAndFlagsBits) = v14 & 1;
    v49 = 0;
    v30 = swift_getKeyPath();
    v31 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v49 = 0;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    result = sub_100008964(v51);
    *&v50[55] = v55;
    *&v50[71] = v56;
    *&v50[87] = v57;
    *&v50[103] = v58;
    *&v50[7] = v52;
    *&v50[23] = v53;
    *&v50[39] = v54;
    v41 = v47;
    *a2 = v48;
    *(a2 + 8) = v41;
    *(a2 + 16) = v16;
    *(a2 + 24) = v46;
    *(a2 + 32) = KeyPath;
    *(a2 + 40) = 3;
    *(a2 + 48) = 0;
    *(a2 + 56) = v29;
    *(a2 + 64) = 0;
    *(a2 + 72) = v30;
    *(a2 + 80) = 0x3FE0000000000000;
    *(a2 + 88) = v31;
    *(a2 + 96) = v33;
    *(a2 + 104) = v35;
    *(a2 + 112) = v37;
    *(a2 + 120) = v39;
    *(a2 + 128) = 0;
    v42 = *&v50[80];
    *(a2 + 193) = *&v50[64];
    *(a2 + 209) = v42;
    *(a2 + 225) = *&v50[96];
    *(a2 + 240) = *&v50[111];
    v43 = *&v50[16];
    *(a2 + 129) = *v50;
    *(a2 + 145) = v43;
    v44 = *&v50[48];
    *(a2 + 161) = *&v50[32];
    *(a2 + 177) = v44;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10015585C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a2;
  v7 = type metadata accessor for Font.Leading();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v10 = a3[9];
    v11 = a3[10];
    sub_1000088DC(a3 + 6, v10);
    v12 = *(v11 + 8);

    v12(v123, v10, v11);
    if (a1)
    {
      v68 = a1;

      v13 = sub_1001DE5B8();
      v15 = v14;

      v97 = v13;
      v98 = v15;
      sub_100031770();
      v16 = Text.init<A>(_:)();
      v66 = v17;
      v67 = v16;
      v19 = v18;
      static Font.footnote.getter();
      static Font.Weight.medium.getter();
      Font.weight(_:)();

      v21 = v69;
      v20 = v70;
      (*(v69 + 104))(v9, enum case for Font.Leading.tight(_:), v70);
      Font.leading(_:)();

      (*(v21 + 8))(v9, v20);
      LOBYTE(v20) = v19;
      v23 = v66;
      v22 = v67;
      v24 = Text.font(_:)();
      v64 = v26;
      v65 = v25;
      v28 = v27;

      sub_1000317C4(v22, v23, v20 & 1);

      v29 = a3[9];
      v30 = a3[10];
      sub_1000088DC(a3 + 6, v29);
      (*(v30 + 128))(v68, v29, v30);

      v31 = v65;
      v60 = Text.foregroundColor(_:)();
      v69 = v32;
      v70 = v33;
      v35 = v34;
      sub_1000317C4(v24, v31, v28 & 1);

      KeyPath = swift_getKeyPath();
      v66 = KeyPath;
      v68 = swift_getKeyPath();
      LOBYTE(v29) = v35 & 1;
      v121 = v35 & 1;
      LODWORD(v65) = v35 & 1;
      v119 = 0;
      v58 = swift_getKeyPath();
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      type metadata accessor for GuidanceMessagesModel();
      sub_10014FB84(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
      v62 = EnvironmentObject.init()();
      v67 = v37;
      type metadata accessor for UIMetrics();
      sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
      v38 = EnvironmentObject.init()();
      v64 = v39;
      type metadata accessor for ConnectionModel(0);
      sub_10014FB84(&qword_100354F88, type metadata accessor for ConnectionModel);
      v40 = EnvironmentObject.init()();
      v63 = v41;
      type metadata accessor for ConnectivityModel();
      sub_10014FB84(&qword_100354F78, type metadata accessor for ConnectivityModel);
      v42 = EnvironmentObject.init()();
      v61 = v43;
      v44 = EnvironmentObject.init()();
      v59 = v45;
      v46 = v60;
      *&v78 = v60;
      *(&v78 + 1) = v69;
      LOBYTE(v79) = v29;
      *(&v79 + 1) = *v120;
      DWORD1(v79) = *&v120[3];
      *(&v79 + 1) = v70;
      *&v80 = KeyPath;
      *(&v80 + 1) = 2;
      LOBYTE(v81) = 0;
      *(&v81 + 1) = *v118;
      DWORD1(v81) = *&v118[3];
      *(&v81 + 1) = v68;
      LOBYTE(v82) = 0;
      *(&v82 + 1) = *v122;
      DWORD1(v82) = *&v122[3];
      v47 = v58;
      *(&v82 + 1) = v58;
      *v83 = 0x3FE0000000000000;
      *&v83[72] = v75;
      *&v83[56] = v74;
      *&v83[88] = v76;
      *&v83[104] = v77;
      *&v83[8] = v71;
      *&v83[24] = v72;
      *&v83[40] = v73;
      v84 = v78;
      v87 = v81;
      v88 = v82;
      v85 = v79;
      v86 = v80;
      v91 = *&v83[32];
      v92 = *&v83[48];
      v89 = *v83;
      v90 = *&v83[16];
      v96 = *(&v77 + 1);
      v94 = *&v83[80];
      v95 = *&v83[96];
      v93 = *&v83[64];
      sub_100006C20(&v78, &v97, &qword_100360FC8);

      v48 = v62;

      sub_100008964(v123);
      v49 = v95;
      *(a4 + 160) = v94;
      *(a4 + 176) = v49;
      v50 = v96;
      v51 = v91;
      *(a4 + 96) = v90;
      *(a4 + 112) = v51;
      v52 = v93;
      *(a4 + 128) = v92;
      *(a4 + 144) = v52;
      v53 = v87;
      *(a4 + 32) = v86;
      *(a4 + 48) = v53;
      v54 = v89;
      *(a4 + 64) = v88;
      *(a4 + 80) = v54;
      v55 = v85;
      *a4 = v84;
      *(a4 + 16) = v55;
      *(a4 + 192) = v50;
      *(a4 + 200) = v48;
      *(a4 + 208) = v67;
      *(a4 + 216) = v38;
      v56 = v63;
      *(a4 + 224) = v64;
      *(a4 + 232) = v40;
      *(a4 + 240) = v56;
      *(a4 + 248) = v42;
      *(a4 + 256) = v61;
      *(a4 + 264) = v44;
      *(a4 + 272) = v59;

      v114 = v74;
      v115 = v75;
      v116 = v76;
      v117 = v77;
      v111 = v71;
      v112 = v72;
      v97 = v46;
      v98 = v69;
      v99 = v65;
      *v100 = *v120;
      *&v100[3] = *&v120[3];
      v101 = v70;
      v102 = v66;
      v103 = 2;
      v104 = 0;
      *v105 = *v118;
      *&v105[3] = *&v118[3];
      v106 = v68;
      v107 = 0;
      *&v108[3] = *&v122[3];
      *v108 = *v122;
      v109 = v47;
      v110 = 0x3FE0000000000000;
      v113 = v73;
      return sub_100008FA0(&v97, &qword_100360FC8);
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
    EnvironmentObject.error()();
    __break(1u);
  }

  type metadata accessor for ConnectivityModel();
  sub_10014FB84(&qword_100354F78, type metadata accessor for ConnectivityModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100156084@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_1000040A8(&qword_100361058);
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v47 = (&v47 - v4);
  v5 = sub_1000040A8(&qword_100361060);
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v49 = &v47 - v6;
  v7 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = type metadata accessor for TransmissionProgress(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000040A8(&qword_100361068);
  __chkstk_darwin(v13 - 8);
  v52 = &v47 - v14;
  v15 = v1[4];
  if (v15)
  {
    v16 = v15[9];
    v17 = v15[10];
    sub_1000088DC(v15 + 6, v16);
    v18 = *(v17 + 8);

    v18(v59, v16, v17);
    if (*v1)
    {

      sub_1001DDADC(v9);

      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        sub_100008FA0(v9, &qword_100354FD8);
        v19 = v52;
        (*(v53 + 56))(v52, 1, 1, v54);
LABEL_12:
        sub_10000CF4C(v19, v55, &qword_100361068);
        return sub_100008964(v59);
      }

      v20 = v48;
      sub_10014FBCC(v9, v48, type metadata accessor for TransmissionProgress);
      sub_1000089B0((v15 + 6), v56);

      v21 = v57;
      v22 = v58;
      sub_1000088DC(v56, v57);
      v23 = v1[2];
      if (v23)
      {
        v24 = (*(v22 + 144))(v20, *(*(v23 + 48) + 136), v21, v22);
        v26 = v25;
        sub_100008964(v56);
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v28 = static HorizontalAlignment.leading.getter();
          v29 = v47;
          *v47 = v28;
          *(v29 + 8) = 0;
          *(v29 + 16) = 0;
          v30 = sub_1000040A8(&qword_100361070);
          sub_1001566B0(v2, v20, v59, v24, v26, v29 + *(v30 + 44));

          v31 = static Edge.Set.top.getter();
          EdgeInsets.init(_all:)();
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v40 = v29 + *(sub_1000040A8(&qword_100361078) + 36);
          *v40 = v31;
          *(v40 + 8) = v33;
          *(v40 + 16) = v35;
          *(v40 + 24) = v37;
          *(v40 + 32) = v39;
          *(v40 + 40) = 0;
          v41 = v51;
          *(v29 + *(v51 + 36)) = 256;
          v42 = v49;
          sub_10000CF4C(v29, v49, &qword_100361058);
          v43 = 0;
        }

        else
        {

          v43 = 1;
          v41 = v51;
          v42 = v49;
        }

        (*(v50 + 56))(v42, v43, 1, v41);
        v19 = v52;
        sub_10000CF4C(v42, v52, &qword_100361060);
        (*(v53 + 56))(v19, 0, 1, v54);
        sub_100158C50(v20, type metadata accessor for TransmissionProgress);
        goto LABEL_12;
      }

      type metadata accessor for ConnectivityModel();
      v45 = &qword_100354F78;
      v46 = type metadata accessor for ConnectivityModel;
    }

    else
    {
      type metadata accessor for ConnectionModel(0);
      v45 = &qword_100354F88;
      v46 = type metadata accessor for ConnectionModel;
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    v45 = &qword_100354D40;
    v46 = type metadata accessor for UIMetrics;
  }

  sub_10014FB84(v45, v46);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001566B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v174 = a4;
  *(&v174 + 1) = a5;
  v162 = a2;
  v178 = a6;
  v172 = sub_1000040A8(&qword_100361080);
  __chkstk_darwin(v172);
  v168 = &v160 - v8;
  v9 = sub_1000040A8(&qword_100354FA0);
  v163 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v160 - v10;
  v12 = sub_1000040A8(&qword_10035E908);
  v166 = *(v12 - 8);
  __chkstk_darwin(v12);
  v165 = &v160 - v13;
  v164 = sub_1000040A8(&qword_10035E910);
  __chkstk_darwin(v164);
  v167 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v160 - v16;
  __chkstk_darwin(v18);
  v173 = &v160 - v19;
  v175 = sub_1000040A8(&qword_100361088);
  __chkstk_darwin(v175);
  v21 = &v160 - v20;
  v169 = sub_1000040A8(&qword_100361090);
  __chkstk_darwin(v169);
  v170 = (&v160 - v22);
  v176 = sub_1000040A8(&qword_100361098);
  __chkstk_darwin(v176);
  v171 = &v160 - v23;
  v24 = type metadata accessor for Font.Leading();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v28 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v30 = *(a1 + 16);
  if (!v30)
  {
    type metadata accessor for ConnectivityModel();
    v158 = &qword_100354F78;
    v159 = type metadata accessor for ConnectivityModel;
    goto LABEL_10;
  }

  v31 = 1 << *(*(v30 + 48) + 136);
  v177 = v21;
  if ((v31 & 0x1D8) != 0)
  {
    v203 = v174;
    v32 = v26;
    v33 = v28;
    sub_100031770();

    v34 = Text.init<A>(_:)();
    v36 = v35;
    v38 = v37;
    *(&v174 + 1) = v39;
    static Font.footnote.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    (*(v25 + 104))(v33, enum case for Font.Leading.tight(_:), v32);
    Font.leading(_:)();

    (*(v25 + 8))(v33, v32);
    v40 = Text.font(_:)();
    v42 = v41;
    v44 = v43;

    sub_1000317C4(v34, v36, v38 & 1);

    v45 = [objc_opt_self() secondaryLabelColor];
    Color.init(_:)();
    v46 = Text.foregroundColor(_:)();
    v48 = v47;
    v50 = v49;
    v52 = v51;

    sub_1000317C4(v40, v42, v44 & 1);

    KeyPath = swift_getKeyPath();
    v54 = swift_getKeyPath();
    LOBYTE(v203) = v50 & 1;
    LOBYTE(v201[0]) = 0;
    v55 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v203 = v46;
    *(&v203 + 1) = v48;
    LOBYTE(v204) = v50 & 1;
    *(&v204 + 1) = v52;
    *&v205 = KeyPath;
    *(&v205 + 1) = 1;
    LOBYTE(v206) = 0;
    *(&v206 + 1) = v54;
    LOBYTE(v207) = 0;
    *(&v207 + 1) = v55;
    *&v208 = 0x3FE0000000000000;
    WORD4(v210[1]) = 256;
    v56 = v210[0];
    v57 = v170;
    v170[6] = v209;
    v57[7] = v56;
    *(v57 + 122) = *(v210 + 10);
    v58 = v206;
    v57[2] = v205;
    v57[3] = v58;
    v59 = v208;
    v57[4] = v207;
    v57[5] = v59;
    v60 = v204;
    *v57 = v203;
    v57[1] = v60;
    swift_storeEnumTagMultiPayload();
    sub_100006C20(&v203, v201, &qword_1003610B0);
    sub_1000040A8(&qword_1003610B0);
    sub_100009274(&qword_1003610B8, &qword_100361080);
    sub_10015A674();
    v61 = v171;
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(v61, v177, &qword_100361098);
    swift_storeEnumTagMultiPayload();
    sub_10015A78C();
    _ConditionalContent<>.init(storage:)();
    sub_100008FA0(&v203, &qword_1003610B0);
    v62 = v61;
    v63 = &qword_100361098;
    return sub_100008FA0(v62, v63);
  }

  if ((v31 & 0x203) != 0)
  {
    v160 = v28;
    v161 = v26;
    *&v203 = *(v162 + *(type metadata accessor for TransmissionProgress(0) + 28));
    BYTE8(v203) = 0;
    *&v201[0] = 0x4059000000000000;
    sub_100108848();
    ProgressView.init<A>(value:total:)();
    v64 = a3[3];
    v65 = a3[4];
    v66 = sub_1000088DC(a3, v64);
    *(&v204 + 1) = v64;
    *&v205 = *(v65 + 8);
    v67 = sub_10007E56C(&v203);
    (*(*(v64 - 8) + 16))(v67, v66, v64);
    sub_100009274(&qword_100355088, &qword_100354FA0);
    sub_10010889C();
    v68 = v165;
    View.progressViewStyle<A>(_:)();
    sub_1001088F0(&v203);
    (*(v163 + 8))(v11, v9);
    v70 = a3[3];
    v69 = a3[4];
    sub_1000088DC(a3, v70);
    (*(*(v69 + 8) + 8))(v70);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v166 + 32))(v17, v68, v12);
    v71 = &v17[*(v164 + 36)];
    v72 = v211[7];
    *(v71 + 4) = v211[6];
    *(v71 + 5) = v72;
    *(v71 + 6) = v211[8];
    v73 = v211[3];
    *v71 = v211[2];
    *(v71 + 1) = v73;
    v74 = v211[5];
    *(v71 + 2) = v211[4];
    *(v71 + 3) = v74;
    sub_10000CF4C(v17, v173, &qword_10035E910);
    v203 = v174;
    sub_100031770();

    v75 = Text.init<A>(_:)();
    v77 = v76;
    LOBYTE(v65) = v78;
    static Font.footnote.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v80 = v160;
    v79 = v161;
    (*(v25 + 104))(v160, enum case for Font.Leading.tight(_:), v161);
    Font.leading(_:)();

    (*(v25 + 8))(v80, v79);
    v81 = Text.font(_:)();
    v83 = v82;
    LOBYTE(v80) = v84;

    sub_1000317C4(v75, v77, v65 & 1);

    v85 = [objc_opt_self() secondaryLabelColor];
    Color.init(_:)();
    v86 = Text.foregroundColor(_:)();
    v88 = v87;
    LOBYTE(v65) = v89;
    v91 = v90;

    sub_1000317C4(v81, v83, v80 & 1);

    v92 = swift_getKeyPath();
    v93 = swift_getKeyPath();
    LOBYTE(v203) = v65 & 1;
    LOBYTE(v201[0]) = 0;
    v94 = swift_getKeyPath();
    v95 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    LOBYTE(v203) = 0;
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v191[7] = v211[9];
    *&v191[23] = v211[10];
    *&v191[39] = v212;
    *&v192 = v86;
    *(&v192 + 1) = v88;
    LOBYTE(v193) = v65 & 1;
    *(&v193 + 1) = v91;
    *&v194 = v92;
    *(&v194 + 1) = 1;
    LOBYTE(v195) = 0;
    *(&v195 + 1) = v93;
    LOBYTE(v196) = 0;
    *(&v196 + 1) = v94;
    *&v197 = 0x3FE0000000000000;
    BYTE8(v197) = v95;
    *&v198 = v97;
    *(&v198 + 1) = v99;
    *&v199 = v101;
    *(&v199 + 1) = v103;
    LOBYTE(v200[0]) = 0;
    *(v200 + 1) = *v191;
    *(&v200[1] + 1) = *&v191[16];
    *(&v200[2] + 1) = *&v191[32];
    *&v200[3] = *(&v212 + 1);
    WORD4(v200[3]) = 256;
    v104 = v167;
    sub_100006C20(v173, v167, &qword_10035E910);
    v188 = v200[0];
    v189 = v200[1];
    v190[0] = v200[2];
    *(v190 + 10) = *(&v200[2] + 10);
    v184 = v196;
    v185 = v197;
    v186 = v198;
    v187 = v199;
    v180 = v192;
    v181 = v193;
    v182 = v194;
    v183 = v195;
    v105 = v168;
    sub_100006C20(v104, v168, &qword_10035E910);
    v106 = (v105 + *(sub_1000040A8(&qword_1003610A0) + 48));
    v107 = v188;
    v201[8] = v188;
    v201[9] = v189;
    v108 = v190[0];
    v202[0] = v190[0];
    *(v202 + 10) = *(v190 + 10);
    v109 = v184;
    v110 = v184;
    v201[4] = v184;
    v201[5] = v185;
    v111 = v186;
    v112 = v186;
    v201[6] = v186;
    v201[7] = v187;
    v113 = v180;
    v114 = v180;
    v201[0] = v180;
    v201[1] = v181;
    v201[2] = v182;
    v201[3] = v183;
    v115 = v189;
    v116 = v189;
    v106[8] = v188;
    v106[9] = v115;
    v106[10] = v108;
    *(v106 + 170) = *(v190 + 10);
    v117 = v185;
    v118 = v185;
    v106[4] = v109;
    v106[5] = v117;
    v119 = v187;
    v120 = v187;
    v106[6] = v111;
    v106[7] = v119;
    v121 = v181;
    v122 = v182;
    v123 = v181;
    v124 = v182;
    *v106 = v113;
    v106[1] = v121;
    v125 = v183;
    v126 = v183;
    v106[2] = v122;
    v106[3] = v125;
    v210[1] = v107;
    v210[2] = v116;
    v211[0] = v190[0];
    *(v211 + 10) = *(v190 + 10);
    v207 = v110;
    v208 = v118;
    v209 = v112;
    v210[0] = v120;
    v203 = v114;
    v204 = v123;
    v205 = v124;
    v206 = v126;
    sub_100006C20(&v192, v179, &qword_1003610A8);
    sub_100006C20(v201, v179, &qword_1003610A8);
    sub_100008FA0(&v203, &qword_1003610A8);
    sub_100008FA0(v104, &qword_10035E910);
    sub_100006C20(v105, v170, &qword_100361080);
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_1003610B0);
    sub_100009274(&qword_1003610B8, &qword_100361080);
    sub_10015A674();
    v127 = v171;
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(v127, v177, &qword_100361098);
    swift_storeEnumTagMultiPayload();
    sub_10015A78C();
    _ConditionalContent<>.init(storage:)();
    sub_100008FA0(&v192, &qword_1003610A8);
    sub_100008FA0(v127, &qword_100361098);
    sub_100008FA0(v105, &qword_100361080);
    v62 = v173;
    v63 = &qword_10035E910;
    return sub_100008FA0(v62, v63);
  }

  v203 = v174;
  sub_100031770();

  v129 = Text.init<A>(_:)();
  v131 = v130;
  v133 = v132;
  v135 = a3[3];
  v134 = a3[4];
  sub_1000088DC(a3, v135);
  (*(*(v134 + 8) + 32))(v135);
  *&v174 = Text.font(_:)();
  *(&v174 + 1) = v136;
  v138 = v137;
  v140 = v139;

  sub_1000317C4(v129, v131, v133 & 1);

  v141 = *(v29 + 32);
  if (!v141)
  {
    while (1)
    {
      type metadata accessor for UIMetrics();
      v158 = &qword_100354D40;
      v159 = type metadata accessor for UIMetrics;
LABEL_10:
      sub_10014FB84(v158, v159);
      EnvironmentObject.error()();
      __break(1u);
    }
  }

  v142 = v141[9];
  v143 = v141[10];
  sub_1000088DC(v141 + 6, v142);
  (*(v143 + 128))(v30, v142, v143);

  v144 = v174;
  v145 = Text.foregroundColor(_:)();
  v147 = v146;
  v149 = v148;
  v151 = v150;
  sub_1000317C4(v144, v138, v140 & 1);

  v152 = swift_getKeyPath();
  v153 = swift_getKeyPath();
  v154 = v149 & 1;
  LOBYTE(v201[0]) = v149 & 1;
  LOBYTE(v192) = 0;
  v155 = swift_getKeyPath();
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v156 = v204;
  v157 = v177;
  *(v177 + 88) = v203;
  *v157 = v145;
  *(v157 + 8) = v147;
  *(v157 + 16) = v154;
  *(v157 + 24) = v151;
  *(v157 + 32) = v152;
  *(v157 + 40) = 1;
  *(v157 + 48) = 0;
  *(v157 + 56) = v153;
  *(v157 + 64) = 0;
  *(v157 + 72) = v155;
  *(v157 + 80) = 0x3FE0000000000000;
  *(v157 + 104) = v156;
  *(v157 + 120) = v205;
  *(v157 + 136) = 256;
  swift_storeEnumTagMultiPayload();
  sub_1000040A8(&qword_1003610B0);
  sub_10015A78C();
  sub_10015A674();
  return _ConditionalContent<>.init(storage:)();
}

double sub_10015795C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionAssistantBanner.Mode();
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100151360(v2, v6, type metadata accessor for ConnectionAssistantBanner.Mode);
  v7 = 1 << swift_getEnumCaseMultiPayload();
  if ((v7 & 0x19) != 0)
  {
    type metadata accessor for AppEvents();
    sub_10014FB84(&qword_100354D48, type metadata accessor for AppEvents);
    v8 = EnvironmentObject.init()();
    v10 = v9;
    type metadata accessor for StewieModel(0);
    sub_10014FB84(&qword_1003561B8, type metadata accessor for StewieModel);
    v11 = EnvironmentObject.init()();
    v13 = v12;
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics);
    v14 = EnvironmentObject.init()();
    *&v20 = v8;
    *(&v20 + 1) = v10;
    *&v21 = v11;
    *(&v21 + 1) = v13;
    *&v22 = v14;
    *(&v22 + 1) = v15;
    v23 = 0;
  }

  else
  {
    if ((v7 & 0x24) == 0)
    {
      sub_100158C50(v6, type metadata accessor for ConnectionClosed);
    }

    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v23 = 1;
  }

  sub_100158FF0();
  _ConditionalContent<>.init(storage:)();
  result = *&v24;
  v17 = v25;
  v18 = v26;
  v19 = v27;
  *a1 = v24;
  *(a1 + 16) = v17;
  *(a1 + 32) = v18;
  *(a1 + 48) = v19;
  return result;
}

uint64_t sub_100157BAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for KeyboardShortcut();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v51 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for BorderlessButtonStyle();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000040A8(&qword_100360F88);
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v42 - v7;
  v49 = sub_1000040A8(&qword_100360F90);
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v10 = &v42 - v9;
  v11 = sub_1000040A8(&qword_100360F98);
  v52 = *(v11 - 8);
  v53 = v11;
  __chkstk_darwin(v11);
  v50 = &v42 - v12;
  v56 = sub_1000040A8(&qword_100360FA0);
  v13 = *(v56 - 8);
  __chkstk_darwin(v56);
  v48 = &v42 - v14;
  v15 = sub_1000040A8(&qword_100360FA8);
  __chkstk_darwin(v15 - 8);
  v17 = &v42 - v16;
  v18 = *(v1 + 32);
  if (!v18)
  {
    type metadata accessor for UIMetrics();
    v40 = &qword_100354D40;
    v41 = type metadata accessor for UIMetrics;
LABEL_11:
    sub_10014FB84(v40, v41);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v20 = v18[9];
  v19 = v18[10];
  sub_1000088DC(v18 + 6, v20);
  (*(v19 + 8))(v62, v20, v19);
  v21 = *(v1 + 16);
  if (!v21)
  {
    type metadata accessor for StewieModel(0);
    v40 = &qword_1003561B8;
    v41 = type metadata accessor for StewieModel;
    goto LABEL_11;
  }

  if (*(v21 + 64) && (v22 = *(v21 + 121), (sub_100071A54(0, *(v21 + 88)) & 1) != 0) && (v22 & 1) != 0)
  {
    v63 = *v2;
    v23 = swift_allocObject();
    v42 = &v42;
    v24 = v2[1];
    v23[1] = *v2;
    v23[2] = v24;
    v23[3] = v2[2];
    __chkstk_darwin(v23);
    sub_100006C20(&v63, &v58, &qword_100357580);
    sub_10015A058();

    Button.init(action:label:)();
    BorderlessButtonStyle.init()();
    v25 = sub_100009274(&qword_100360FB8, &qword_100360F88);
    v26 = sub_10014FB84(&qword_100360FC0, &type metadata accessor for BorderlessButtonStyle);
    v27 = v44;
    v28 = v47;
    View.buttonStyle<A>(_:)();
    (*(v46 + 8))(v6, v28);
    (*(v43 + 8))(v8, v27);
    v29 = v51;
    static KeyboardShortcut.defaultAction.getter();
    v58 = v27;
    v59 = v28;
    v60 = v25;
    v61 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = v50;
    v32 = v49;
    View.keyboardShortcut(_:)();
    (*(v54 + 8))(v29, v55);
    (*(v45 + 8))(v10, v32);
    LocalizedStringKey.init(stringLiteral:)();
    v33 = Text.init(_:tableName:bundle:comment:)();
    v35 = v34;
    LOBYTE(v29) = v36;
    v58 = v32;
    v59 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v37 = v48;
    v38 = v53;
    View.accessibility(label:)();
    sub_1000317C4(v33, v35, v29 & 1);

    (*(v52 + 8))(v31, v38);
    sub_10000CF4C(v37, v17, &qword_100360FA0);
    (*(v13 + 56))(v17, 0, 1, v56);
  }

  else
  {
    (*(v13 + 56))(v17, 1, 1, v56);
  }

  sub_10000CF4C(v17, v57, &qword_100360FA8);
  return sub_100008964(v62);
}

uint64_t sub_1001583F8(void *a1)
{
  if (*a1)
  {

    PassthroughSubject.send(_:)();

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_10014FB84(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10015855C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_1000040A8(&qword_100361048);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v50 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = (&v46 - v5);
  v7 = Image.init(systemName:)();
  v8 = (v6 + *(sub_1000040A8(&qword_1003584F8) + 36));
  v9 = v6;
  v10 = *(sub_1000040A8(&qword_100358500) + 28);
  v11 = enum case for Image.Scale.large(_:);
  v12 = type metadata accessor for Image.Scale();
  (*(*(v12 - 8) + 104))(v8 + v10, v11, v12);
  *v8 = swift_getKeyPath();
  v48 = v9;
  *v9 = v7;
  static Font.title.getter();
  static Font.Weight.semibold.getter();
  v13 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v15 = (v9 + *(sub_1000040A8(&qword_100358508) + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = static Color.green.getter();
  v17 = static Color.white.getter();
  v18 = (v9 + *(v2 + 44));
  *v18 = v16;
  v18[1] = v17;
  LocalizedStringKey.init(stringLiteral:)();
  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  LOBYTE(v13) = v22;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v23 = Text.font(_:)();
  v25 = v24;
  v27 = v26;

  sub_1000317C4(v19, v21, v13 & 1);

  static Color.white.getter();
  v28 = Text.foregroundColor(_:)();
  v47 = v29;
  LOBYTE(v21) = v30;
  v32 = v31;

  sub_1000317C4(v23, v25, v27 & 1);

  v33 = swift_getKeyPath();
  v46 = v33;
  v34 = swift_getKeyPath();
  v35 = v21 & 1;
  LOBYTE(v60[0]) = v21 & 1;
  LOBYTE(v54) = 0;
  v36 = swift_getKeyPath();
  v37 = v48;
  v38 = v50;
  sub_100006C20(v48, v50, &qword_100361048);
  v39 = v38;
  v40 = v49;
  sub_100006C20(v39, v49, &qword_100361048);
  v41 = v40 + *(sub_1000040A8(&qword_100361050) + 48);
  *&v54 = v28;
  v42 = v47;
  *(&v54 + 1) = v47;
  LOBYTE(v55) = v35;
  *(&v55 + 1) = *v52;
  DWORD1(v55) = *&v52[3];
  *(&v55 + 1) = v32;
  *&v56 = v33;
  *(&v56 + 1) = 1;
  LOBYTE(v57) = 0;
  *(&v57 + 1) = *v51;
  DWORD1(v57) = *&v51[3];
  *(&v57 + 1) = v34;
  LOBYTE(v58) = 1;
  *(&v58 + 1) = *v53;
  DWORD1(v58) = *&v53[3];
  *(&v58 + 1) = v36;
  v59 = 0x3FE0000000000000;
  *(v41 + 80) = 0x3FE0000000000000;
  v43 = v57;
  *(v41 + 32) = v56;
  *(v41 + 48) = v43;
  v44 = v55;
  *v41 = v54;
  *(v41 + 16) = v44;
  *(v41 + 64) = v58;
  sub_100006C20(&v54, v60, &qword_100361018);
  sub_100008FA0(v37, &qword_100361048);
  v60[0] = v28;
  v60[1] = v42;
  v61 = v35;
  *v62 = *v52;
  *&v62[3] = *&v52[3];
  v63 = v32;
  v64 = v46;
  v65 = 1;
  v66 = 0;
  *v67 = *v51;
  *&v67[3] = *&v51[3];
  v68 = v34;
  v69 = 1;
  *&v70[3] = *&v53[3];
  *v70 = *v53;
  v71 = v36;
  v72 = 0x3FE0000000000000;
  sub_100008FA0(v60, &qword_100361018);
  return sub_100008FA0(v50, &qword_100361048);
}

uint64_t sub_100158A9C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_1000040A8(&qword_100361040);
  return sub_10015855C(a1 + *(v2 + 44));
}

uint64_t sub_100158B14(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.imageScale.setter();
}

unint64_t sub_100158BDC()
{
  result = qword_100360B68;
  if (!qword_100360B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360B68);
  }

  return result;
}

uint64_t sub_100158C50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100158D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionAssistantBanner.Mode();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100158D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionAssistantBanner.Mode();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100158E28()
{
  result = type metadata accessor for ConnectionAssistantBanner.Mode();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100158F04()
{
  sub_100008CF0(&qword_100360AF8);
  sub_100009274(&qword_100360B40, &qword_100360AF8);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100158FF0()
{
  result = qword_100360D58;
  if (!qword_100360D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360D58);
  }

  return result;
}

unint64_t sub_100159064()
{
  result = qword_100360DA0;
  if (!qword_100360DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DA0);
  }

  return result;
}

unint64_t sub_1001590B8()
{
  result = qword_100360DB0;
  if (!qword_100360DB0)
  {
    sub_100008CF0(&qword_100360D98);
    sub_100159144();
    sub_100159254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DB0);
  }

  return result;
}

unint64_t sub_100159144()
{
  result = qword_100360DB8;
  if (!qword_100360DB8)
  {
    sub_100008CF0(&qword_100360D90);
    sub_100159200();
    sub_10014FB84(&qword_100360DC8, type metadata accessor for CABannerConnectionClosedView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DB8);
  }

  return result;
}

unint64_t sub_100159200()
{
  result = qword_100360DC0;
  if (!qword_100360DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DC0);
  }

  return result;
}

unint64_t sub_100159254()
{
  result = qword_100360DD0;
  if (!qword_100360DD0)
  {
    sub_100008CF0(&qword_100360DD8);
    sub_1001592E0();
    sub_100159334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DD0);
  }

  return result;
}

unint64_t sub_1001592E0()
{
  result = qword_100360DE0;
  if (!qword_100360DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DE0);
  }

  return result;
}

unint64_t sub_100159334()
{
  result = qword_100360DE8;
  if (!qword_100360DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DE8);
  }

  return result;
}

unint64_t sub_100159388()
{
  result = qword_100360DF0;
  if (!qword_100360DF0)
  {
    sub_100008CF0(&qword_100360DA8);
    sub_100159064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DF0);
  }

  return result;
}

unint64_t sub_100159420()
{
  result = qword_100360E38;
  if (!qword_100360E38)
  {
    sub_100008CF0(&qword_100360E30);
    sub_1000A11AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360E38);
  }

  return result;
}

unint64_t sub_1001594AC()
{
  result = qword_100360E48;
  if (!qword_100360E48)
  {
    sub_100008CF0(&qword_100360E18);
    sub_100159538();
    sub_10015967C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360E48);
  }

  return result;
}

unint64_t sub_100159538()
{
  result = qword_100360E50;
  if (!qword_100360E50)
  {
    sub_100008CF0(&qword_100360E20);
    sub_1001595C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360E50);
  }

  return result;
}

unint64_t sub_1001595C4()
{
  result = qword_100360E58;
  if (!qword_100360E58)
  {
    sub_100008CF0(&qword_100360E60);
    sub_100009274(&qword_100360E68, &qword_100360E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360E58);
  }

  return result;
}

unint64_t sub_10015967C()
{
  result = qword_100360E78;
  if (!qword_100360E78)
  {
    sub_100008CF0(&qword_100360E00);
    sub_100159708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360E78);
  }

  return result;
}

unint64_t sub_100159708()
{
  result = qword_100360E80;
  if (!qword_100360E80)
  {
    sub_100008CF0(&qword_100360E88);
    sub_100009274(&qword_100360E90, &qword_100360E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360E80);
  }

  return result;
}

unint64_t sub_1001597C0()
{
  result = qword_100360EA0;
  if (!qword_100360EA0)
  {
    sub_100008CF0(&qword_100360E40);
    sub_100159420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360EA0);
  }

  return result;
}

unint64_t sub_10015984C()
{
  result = qword_100360EA8;
  if (!qword_100360EA8)
  {
    sub_100008CF0(&qword_100360E28);
    sub_1001594AC();
    sub_1001597C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360EA8);
  }

  return result;
}

unint64_t sub_100159910()
{
  result = qword_100360ED0;
  if (!qword_100360ED0)
  {
    sub_100008CF0(&qword_100360EC8);
    sub_1000E0724();
    sub_100009274(&qword_100358528, &qword_100358500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360ED0);
  }

  return result;
}

uint64_t sub_100159A00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_100159A5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100159AEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 2147483646)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    v6 = v5 - 1;
    if (v6 < 0)
    {
      v6 = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = a4(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_100159BD4(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_100159C94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_10014FE54();
  if (v5 <= 0x3F)
  {
    a4(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100159D34()
{
  result = qword_100360F68;
  if (!qword_100360F68)
  {
    sub_100008CF0(&qword_100360F70);
    sub_100158FF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360F68);
  }

  return result;
}

uint64_t sub_100159DC0()
{
  sub_100008CF0(&qword_100360D60);
  sub_100008CF0(&qword_100354D60);
  sub_100009274(&qword_100360D70, &qword_100360D60);
  sub_100009274(&qword_100354D78, &qword_100354D60);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100159EB4()
{
  result = qword_100360F78;
  if (!qword_100360F78)
  {
    sub_100008CF0(&qword_100360F80);
    sub_10015984C();
    sub_1000D0804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360F78);
  }

  return result;
}

uint64_t sub_100159FE8()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10015A058()
{
  result = qword_100360FB0;
  if (!qword_100360FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360FB0);
  }

  return result;
}

uint64_t sub_10015A0C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10015A10C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_10015A1C8()
{
  result = qword_100360FE0;
  if (!qword_100360FE0)
  {
    sub_100008CF0(&qword_100360FA0);
    sub_100008CF0(&qword_100360F90);
    sub_100008CF0(&qword_100360F88);
    type metadata accessor for BorderlessButtonStyle();
    sub_100009274(&qword_100360FB8, &qword_100360F88);
    sub_10014FB84(&qword_100360FC0, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10014FB84(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360FE0);
  }

  return result;
}

unint64_t sub_10015A3C8()
{
  result = qword_100360FF8;
  if (!qword_100360FF8)
  {
    sub_100008CF0(&qword_100360FD0);
    sub_10015A454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360FF8);
  }

  return result;
}

unint64_t sub_10015A454()
{
  result = qword_100361000;
  if (!qword_100361000)
  {
    sub_100008CF0(&qword_100361008);
    sub_10015A4E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361000);
  }

  return result;
}

unint64_t sub_10015A4E0()
{
  result = qword_100361010;
  if (!qword_100361010)
  {
    sub_100008CF0(&qword_100361018);
    sub_100108AB0();
    sub_100009274(&qword_100356C58, &qword_100356C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361010);
  }

  return result;
}

unint64_t sub_10015A674()
{
  result = qword_1003610C0;
  if (!qword_1003610C0)
  {
    sub_100008CF0(&qword_1003610B0);
    sub_10015A700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003610C0);
  }

  return result;
}

unint64_t sub_10015A700()
{
  result = qword_1003610C8;
  if (!qword_1003610C8)
  {
    sub_100008CF0(&qword_1003610D0);
    sub_10015A4E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003610C8);
  }

  return result;
}

unint64_t sub_10015A78C()
{
  result = qword_1003610D8;
  if (!qword_1003610D8)
  {
    sub_100008CF0(&qword_100361098);
    sub_100009274(&qword_1003610B8, &qword_100361080);
    sub_10015A674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003610D8);
  }

  return result;
}

uint64_t sub_10015A8CC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_10015A978()
{
  result = qword_100361100;
  if (!qword_100361100)
  {
    sub_100008CF0(&qword_100361058);
    sub_10015AA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361100);
  }

  return result;
}

unint64_t sub_10015AA04()
{
  result = qword_100361108;
  if (!qword_100361108)
  {
    sub_100008CF0(&qword_100361078);
    sub_100009274(&qword_100361110, &qword_100361118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361108);
  }

  return result;
}

uint64_t sub_10015AB4C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CircularProgressViewStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100354FA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1000040A8(&qword_100361150);
  ProgressView<>.init<>()();
  CircularProgressViewStyle.init()();
  sub_100009274(&qword_100355088, &qword_100354FA0);
  sub_10015B2A8(&qword_100355090, &type metadata accessor for CircularProgressViewStyle);
  View.progressViewStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v10 = [objc_opt_self() mainBundle];
  v22._object = 0x8000000100299C40;
  v11._countAndFlagsBits = 0x636E656772656D45;
  v11._object = 0xED0000534F532079;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD000000000000032;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v22);

  v14 = (a1 + *(sub_1000040A8(&qword_100361128) + 36));
  v15 = v14 + *(sub_1000040A8(&qword_10035B5A8) + 36);
  v16 = sub_1000040A8(&qword_10035B5B8);
  v17 = *(v16 + 36);
  v18 = type metadata accessor for ToolbarItemPlacement();
  result = (*(*(v18 - 8) + 56))(&v15[v17], 1, 1, v18);
  *v15 = 1;
  v20 = &v15[*(v16 + 40)];
  *v20 = sub_10015AEB8;
  v20[1] = 0;
  *v14 = v13;
  return result;
}

uint64_t sub_10015AEB8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_10015B2A8(&qword_100354D48, type metadata accessor for AppEvents);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for StewieModel(0);
  sub_10015B2A8(&qword_1003561B8, type metadata accessor for StewieModel);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  result = State.init(wrappedValue:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  return result;
}

uint64_t sub_10015AFC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000040A8(&qword_100361120);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-1] - v5;
  v7 = *v1;
  sub_1000040A8(&qword_100361128);
  sub_10015B1BC();
  NavigationStack.init<>(root:)();
  if (v7)
  {
    v8 = v7[9];
    v9 = v7[10];
    sub_1000088DC(v7 + 6, v8);
    (*(v9 + 24))(v15, v8, v9);
    v10 = static Color.white.getter();
    sub_100008964(v15);
    KeyPath = swift_getKeyPath();
    (*(v4 + 32))(a1, v6, v3);
    result = sub_1000040A8(&qword_100361148);
    v13 = (a1 + *(result + 36));
    *v13 = KeyPath;
    v13[1] = v10;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10015B2A8(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_10015B1BC()
{
  result = qword_100361130;
  if (!qword_100361130)
  {
    sub_100008CF0(&qword_100361128);
    sub_100009274(&qword_100361138, &qword_100361140);
    sub_100009274(&qword_10035B5A0, &qword_10035B5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361130);
  }

  return result;
}

uint64_t sub_10015B2A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10015B2F4()
{
  result = qword_100361158;
  if (!qword_100361158)
  {
    sub_100008CF0(&qword_100361148);
    sub_100009274(&qword_100361160, &qword_100361120);
    sub_100009274(&qword_100355068, &qword_100355070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361158);
  }

  return result;
}

uint64_t sub_10015B3D8()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
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

  v22[1] = sub_10000F574();
  v27[0] = v8;
  v27[1] = v10;

  v11._countAndFlagsBits = 0x67416863726F542ELL;
  v11._object = 0xEB00000000746E65;
  String.append(_:)(v11);

  static DispatchQoS.unspecified.getter();
  v27[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v24 + 104))(v23, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = v12;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381D88);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v1;
    v27[0] = v17;
    *v16 = 136446210;
    type metadata accessor for TorchAgent();

    v18 = String.init<A>(describing:)();
    v20 = sub_10017C9E8(v18, v19, v27);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] init", v16, 0xCu);
    sub_100008964(v17);
  }

  return v1;
}

uint64_t sub_10015B814()
{
  v1 = v0;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381D88);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for TorchAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_10015B998()
{
  sub_10015B814();

  return swift_deallocClassInstance();
}

uint64_t sub_10015B9F0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A68 == -1)
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
  sub_10000F53C(v7, qword_100381D88);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Stopping TorchAgent", v10, 2u);
  }

  v11 = *(v1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10015D4D8;
  *(v12 + 24) = v1;
  aBlock[4] = sub_1000EC2C8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100193668;
  aBlock[3] = &unk_100333330;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v11, v13);
  _Block_release(v13);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015BCBC(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_10015D4CC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_1003332E0;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v15 + 8))(v5, v3);
  (*(v6 + 8))(v8, v14);
}

uint64_t sub_10015BFB8(double a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10015C670(a1);
  }

  return result;
}

uint64_t sub_10015C020()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10015D4C4;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100333290;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_10015C2F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 32);
    v2 = *(result + 40);

    if ((v2 & 1) == 0)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        sub_10015CE34(v1);
      }
    }
  }

  return result;
}

NSObject *sub_10015C38C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *(v0 + 24);
  if (!v7)
  {
    v9 = [objc_opt_self() defaultDeviceWithMediaType:AVMediaTypeVideo];
    if (v9)
    {
      v7 = v9;
      if ([v9 hasTorch])
      {
        v10 = *(v0 + 24);
        *(v0 + 24) = v7;
        v11 = v7;

        return v7;
      }

      if (qword_100353A68 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000F53C(v15, qword_100381D88);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "AVCaptureDevice does not support torch functionality", v18, 2u);
      }

LABEL_15:
      return 0;
    }

    if (qword_100353A68 == -1)
    {
LABEL_8:
      v12 = type metadata accessor for Logger();
      sub_10000F53C(v12, qword_100381D88);
      v7 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v7, v13, "Failed to create AVCaptureDevice", v14, 2u);
      }

      goto LABEL_15;
    }

LABEL_18:
    swift_once();
    goto LABEL_8;
  }

  v8 = v7;
  return v7;
}

void sub_10015C670(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchTime();
  v45 = *(v49 - 8);
  v10 = __chkstk_darwin(v49);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  p_isa = type metadata accessor for DispatchPredicate();
  v16 = *(p_isa - 1);
  __chkstk_darwin(p_isa);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + 16);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), p_isa);
  v44 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, p_isa);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  v20 = sub_10015C38C();
  if (!v20)
  {
    return;
  }

  p_isa = &v20->isa;
  v43 = v4;
  if (qword_100353A68 != -1)
  {
    goto LABEL_14;
  }

LABEL_4:
  v21 = type metadata accessor for Logger();
  sub_10000F53C(v21, qword_100381D88);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v22, v23, "torchOn for %f seconds", v24, 0xCu);
  }

  aBlock[0] = 0;
  if ([p_isa lockForConfiguration:aBlock])
  {
    v25 = aBlock[0];
    [p_isa setTorchMode:1];
    [p_isa unlockForConfiguration];
    v26 = *(v2 + 48);
    v27 = v26 + 1;
    if (v26 == -1)
    {
      __break(1u);
    }

    *(v2 + 48) = v27;
    *(v2 + 32) = v27;
    *(v2 + 40) = 0;
    static DispatchTime.now()();
    + infix(_:_:)();
    v42 = v14;
    v45 = *(v45 + 8);
    (v45)(v12, v49);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = v27;
    aBlock[4] = sub_10015D4A4;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_100333268;
    v30 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v50 = _swiftEmptyArrayStorage;
    sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70);
    v31 = v43;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v32 = v42;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v30);

    (*(v48 + 8))(v6, v31);
    (*(v46 + 8))(v9, v47);
    (v45)(v32, v49);
  }

  else
  {
    v33 = aBlock[0];
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      v50 = v34;
      swift_errorRetain();
      sub_1000040A8(&qword_100355DA0);
      v39 = String.init<A>(describing:)();
      v41 = sub_10017C9E8(v39, v40, aBlock);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to turn torch on: %s", v37, 0xCu);
      sub_100008964(v38);
    }

    else
    {
    }
  }
}

uint64_t sub_10015CDD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10015CE34(a2);
  }

  return result;
}

void sub_10015CE34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 16);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_4;
  }

  v10 = *(v2 + 24);
  if (!v10)
  {
    return;
  }

  v11 = qword_100353A68;
  v4 = v10;
  if (v11 != -1)
  {
    goto LABEL_18;
  }

LABEL_4:
  v12 = type metadata accessor for Logger();
  sub_10000F53C(v12, qword_100381D88);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v13, v14, "torchOff with version %llu", v15, 0xCu);
  }

  if ((*(v2 + 40) & 1) != 0 || *(v2 + 32) != a1)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v17, v18, "Torch version %llu has already expired", v19, 0xCu);
    }
  }

  else
  {
    v30 = 0;
    if ([v4 lockForConfiguration:&v30])
    {
      v16 = v30;
      [v4 setTorchMode:0];
      [v4 unlockForConfiguration];

      *(v2 + 32) = 0;
      *(v2 + 40) = 1;
    }

    else
    {
      v20 = v30;
      v21 = _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30 = v25;
        *v24 = 136315138;
        v29 = v21;
        swift_errorRetain();
        sub_1000040A8(&qword_100355DA0);
        v26 = String.init<A>(describing:)();
        v28 = sub_10017C9E8(v26, v27, &v30);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "Failed to turn torch off: %s", v24, 0xCu);
        sub_100008964(v25);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10015D274()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    if (qword_100353A68 == -1)
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
  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381D88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting TorchAgent", v8, 2u);
  }

  return 1;
}

uint64_t sub_10015D434()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10015D46C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10015D4AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10015D4D8()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    sub_10015CE34(*(v0 + 32));
  }
}

void *sub_10015D518(char a1)
{
  v8 = &_swiftEmptySetSingleton;
  if (a1)
  {
    sub_1000FC78C(&v7, 0);
    if ((a1 & 8) == 0)
    {
LABEL_3:
      if ((a1 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_3;
  }

  sub_1000FC78C(&v6, 1);
  if ((a1 & 2) == 0)
  {
LABEL_4:
    if ((a1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    sub_1000FC78C(&v4, 4);
    if ((a1 & 0x30) == 0)
    {
      return v8;
    }

    goto LABEL_6;
  }

LABEL_10:
  sub_1000FC78C(&v5, 3);
  if ((a1 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((a1 & 0x30) != 0)
  {
LABEL_6:
    sub_1000FC78C(&v3, 2);
  }

  return v8;
}

uint64_t sub_10015D5FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  if (v2)
  {
    v4 = v2[9];
    v5 = v2[10];
    sub_1000088DC(v2 + 6, v4);
    (*(v5 + 24))(v24, v4, v5);
    v19 = static HorizontalAlignment.center.getter();
    v23 = 0;
    v6 = *v1;
    v27 = v1[1];
    v28[0] = v6;
    sub_1000089B0(v24, &v21);
    v7 = swift_allocObject();
    v8 = v1[1];
    v7[1] = *v1;
    v7[2] = v8;
    v7[3] = v1[2];
    sub_100008A18(&v21, (v7 + 4));
    sub_1000089B0(v24, v20);
    v9 = swift_allocObject();
    sub_100008A18(v20, v9 + 16);
    v10 = v1[1];
    *(v9 + 56) = *v1;
    *(v9 + 72) = v10;
    *(v9 + 88) = v1[2];
    sub_100006C20(v28, v25, &qword_100357580);
    sub_100006C20(&v27, v25, &qword_1003612A0);

    sub_100006C20(v28, v25, &qword_100357580);
    sub_100006C20(&v27, v25, &qword_1003612A0);

    sub_10013A3F0(v25, ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter, 0, sub_100160758, v7, sub_1001607B4, v9, 0);
    *&v22[135] = v25[8];
    *&v22[151] = v25[9];
    *&v22[167] = v25[10];
    *&v22[71] = v25[4];
    *&v22[87] = v25[5];
    *&v22[103] = v25[6];
    *&v22[119] = v25[7];
    *&v22[7] = v25[0];
    *&v22[23] = v25[1];
    *&v22[39] = v25[2];
    *&v22[183] = v26;
    *&v22[55] = v25[3];
    LOBYTE(v7) = v23;
    v11 = swift_allocObject();
    v12 = v1[1];
    v11[1] = *v1;
    v11[2] = v12;
    v11[3] = v1[2];
    v13 = *&v22[144];
    *(a1 + 145) = *&v22[128];
    *(a1 + 161) = v13;
    *(a1 + 177) = *&v22[160];
    *(a1 + 192) = *&v22[175];
    v14 = *&v22[80];
    *(a1 + 81) = *&v22[64];
    *(a1 + 97) = v14;
    v15 = *&v22[112];
    *(a1 + 113) = *&v22[96];
    *(a1 + 129) = v15;
    v16 = *&v22[16];
    *(a1 + 17) = *v22;
    *(a1 + 33) = v16;
    v17 = *&v22[48];
    *(a1 + 49) = *&v22[32];
    *a1 = v19;
    *(a1 + 8) = 0;
    *(a1 + 16) = v7;
    *(a1 + 65) = v17;
    *(a1 + 208) = sub_1001607C4;
    *(a1 + 216) = v11;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    sub_100006C20(v28, &v21, &qword_100357580);
    sub_100006C20(&v27, &v21, &qword_1003612A0);

    return sub_100008964(v24);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100161A88(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_10015D9C4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_1000040A8(&qword_100357B78);
  sub_10015DA64(a1, a2, a3 + *(v6 + 44));
  LOBYTE(a2) = static Edge.Set.all.getter();
  v7 = a3 + *(sub_1000040A8(&qword_100357B80) + 36);
  *v7 = a2;
  result = 0.0;
  *(v7 + 8) = xmmword_100277A70;
  *(v7 + 24) = xmmword_100277A70;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_10015DA64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a2;
  v116 = a3;
  v4 = sub_1000040A8(&qword_100357B88);
  __chkstk_darwin(v4 - 8);
  v114 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = (&v99 - v7);
  v8 = sub_1000040A8(&qword_100357B90);
  __chkstk_darwin(v8 - 8);
  v115 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v121 = (&v99 - v11);
  v12 = type metadata accessor for AccessibilityTraits();
  v109 = *(v12 - 8);
  v110 = v12;
  __chkstk_darwin(v12);
  v108 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Font.Leading();
  v105 = *(v14 - 8);
  v106 = v14;
  __chkstk_darwin(v14);
  v104 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000040A8(&qword_100357B98);
  __chkstk_darwin(v16 - 8);
  v113 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v120 = &v99 - v19;
  v20 = type metadata accessor for Image.ResizingMode();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000040A8(&qword_100357BD8);
  v102 = *(v24 - 8);
  v103 = v24;
  __chkstk_darwin(v24);
  v101 = &v99 - v25;
  v26 = sub_1000040A8(&qword_100357BA0);
  __chkstk_darwin(v26 - 8);
  v111 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v119 = &v99 - v29;
  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = v30[14];
    v117 = v30;
    swift_retain_n();
    v32 = v31;
    v107 = UIContentSizeCategoryAccessibilityExtraLarge;
    v33 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v33)
    {
      (*(v102 + 56))(v119, 1, 1, v103);
    }

    else
    {
      Image.init(_:bundle:)();
      (*(v21 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v20);
      v34 = Image.resizable(capInsets:resizingMode:)();

      (*(v21 + 8))(v23, v20);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v142[27] = *&v142[83];
      *&v142[35] = *&v142[91];
      *&v142[43] = *&v142[99];
      *&v142[51] = *&v142[107];
      *&v142[3] = *&v142[59];
      *&v142[11] = *&v142[67];
      LOBYTE(v122) = 1;
      *&v142[19] = *&v142[75];
      v35 = sub_1000088DC(v118, v118[3]);
      v36 = *(*v35 + 32);
      v99 = *(*v35 + 48);
      v100 = v36;
      v37 = static Edge.Set.all.getter();
      LOBYTE(v143) = 0;
      v123 = v34;
      LOWORD(v124[0]) = 1;
      *(&v124[4] + 2) = *&v142[32];
      *(&v124[5] + 2) = *&v142[40];
      *(&v124[6] + 2) = *&v142[48];
      *&v124[7] = *&v142[55];
      *(v124 + 2) = *v142;
      *(&v124[1] + 2) = *&v142[8];
      *(&v124[2] + 2) = *&v142[16];
      *(&v124[3] + 2) = *&v142[24];
      BYTE8(v124[7]) = v37;
      v124[8] = v100;
      v125 = v99;
      LOBYTE(v126[0]) = 0;
      sub_1000040A8(&qword_100357BA8);
      sub_10005D0EC();
      v38 = v101;
      View.accessibility(hidden:)();
      v135 = v124[7];
      v136 = v124[8];
      v137 = v125;
      LOBYTE(v138[0]) = v126[0];
      v131 = v124[3];
      v132 = v124[4];
      v133 = v124[5];
      v134 = v124[6];
      v127 = v123;
      v128 = v124[0];
      v129 = v124[1];
      v130 = v124[2];
      sub_100008FA0(&v127, &qword_100357BA8);
      v39 = v119;
      sub_1001618E4(v38, v119);
      (*(v102 + 56))(v39, 0, 1, v103);
    }

    LocalizedStringKey.init(stringLiteral:)();
    v40 = Text.init(_:tableName:bundle:comment:)();
    v42 = v41;
    v44 = v43;
    static Font.largeTitle.getter();
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    v46 = v104;
    v45 = v105;
    v47 = v106;
    (*(v105 + 104))(v104, enum case for Font.Leading.tight(_:), v106);
    Font.leading(_:)();

    (*(v45 + 8))(v46, v47);
    v48 = Text.font(_:)();
    v50 = v49;
    LOBYTE(v46) = v51;

    sub_1000317C4(v40, v42, v44 & 1);

    static Color.white.getter();
    v52 = Text.foregroundColor(_:)();
    v105 = v53;
    v106 = v52;
    v55 = v54;
    v57 = v56;

    sub_1000317C4(v48, v50, v46 & 1);

    v58 = v117;
    v59 = v117[9];
    v60 = v117[10];
    sub_1000088DC(v117 + 6, v59);
    (*(v60 + 24))(&v127, v59, v60);
    sub_100008964(&v127);
    v61 = v58[14];
    static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    v63 = v58[9];
    v64 = v58[10];
    sub_1000088DC(v58 + 6, v63);
    (*(v64 + 24))(&v127, v63, v64);
    static Alignment.leading.getter();
    sub_100008964(&v127);
    v65 = v58[14];
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v139[55] = v146;
    *&v139[71] = v147;
    *&v139[87] = v148;
    *&v139[103] = v149;
    *&v139[7] = v143;
    *&v139[23] = v144;
    v140 = v55 & 1;
    *&v139[39] = v145;
    v66 = static Edge.Set.all.getter();
    *(&v124[5] + 9) = *&v139[64];
    *(&v124[6] + 9) = *&v139[80];
    *(&v124[7] + 9) = *&v139[96];
    *(&v124[1] + 9) = *v139;
    *(&v124[2] + 9) = *&v139[16];
    *(&v124[3] + 9) = *&v139[32];
    v141 = 0;
    *&v123 = v106;
    *(&v123 + 1) = v105;
    LOBYTE(v124[0]) = v55 & 1;
    *(&v124[0] + 1) = v57;
    *&v124[1] = KeyPath;
    BYTE8(v124[1]) = 0;
    *(&v124[8] + 1) = *&v139[111];
    *(&v124[4] + 9) = *&v139[48];
    LOBYTE(v125) = v66;
    *(&v125 + 1) = 0;
    *&v126[0] = 0;
    *(v126 + 8) = xmmword_10027BC80;
    BYTE8(v126[1]) = 0;
    v67 = v108;
    static AccessibilityTraits.isHeader.getter();
    sub_1000040A8(&qword_100357BE0);
    sub_10005D288();
    View.accessibility(addTraits:)();
    (*(v109 + 8))(v67, v110);
    v136 = v124[8];
    v137 = v125;
    v138[0] = v126[0];
    *(v138 + 9) = *(v126 + 9);
    v133 = v124[5];
    v134 = v124[6];
    v135 = v124[7];
    v129 = v124[1];
    v130 = v124[2];
    v131 = v124[3];
    v132 = v124[4];
    v127 = v123;
    v128 = v124[0];
    sub_100008FA0(&v127, &qword_100357BE0);
    sub_1000040A8(&qword_100359B28);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1002811A0;
    v69 = objc_opt_self();
    v70 = [v69 mainBundle];
    v71._countAndFlagsBits = 0xD00000000000001FLL;
    v150._object = 0x8000000100298DD0;
    v71._object = 0x8000000100298DB0;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    v150._countAndFlagsBits = 0xD000000000000058;
    v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v150);

    *(v68 + 32) = v73;
    v74 = [v69 mainBundle];
    v75._countAndFlagsBits = 0xD000000000000022;
    v151._object = 0x8000000100298DD0;
    v75._object = 0x8000000100298E30;
    v76._countAndFlagsBits = 0;
    v76._object = 0xE000000000000000;
    v151._countAndFlagsBits = 0xD000000000000058;
    v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v75, 0, v74, v76, v151);

    *(v68 + 48) = v77;
    v78 = [v69 mainBundle];
    v79._countAndFlagsBits = 0xD00000000000002FLL;
    v152._object = 0x8000000100298DD0;
    v79._object = 0x8000000100296DC0;
    v80._countAndFlagsBits = 0;
    v80._object = 0xE000000000000000;
    v152._countAndFlagsBits = 0xD000000000000058;
    v81 = NSLocalizedString(_:tableName:bundle:value:comment:)(v79, 0, v78, v80, v152);

    *(v68 + 64) = v81;
    v82 = static VerticalAlignment.top.getter();
    v83 = v121;
    *v121 = v82;
    v83[1] = 0;
    *(v83 + 16) = 1;
    v117 = (v83 + *(sub_1000040A8(&qword_100357C00) + 44));
    v84 = static HorizontalAlignment.leading.getter();
    v85 = v112;
    *v112 = v84;
    *(v85 + 8) = 0;
    *(v85 + 16) = 0;
    v110 = *(sub_1000040A8(&qword_100357C08) + 44);
    v122 = v68;
    v109 = swift_getKeyPath();
    sub_1000089B0(v118, &v123);
    v86 = swift_allocObject();
    sub_100008A18(&v123, v86 + 16);
    *(v86 + 56) = 10649826;
    *(v86 + 64) = 0xA300000000000000;

    sub_1000040A8(&qword_100355E30);
    sub_1000040A8(&qword_100357C10);
    sub_100009274(&qword_100357870, &qword_100355E30);
    sub_100009274(&qword_100357C18, &qword_100357C10);
    ForEach<>.init(_:id:content:)();
    v87 = v114;
    sub_100006C20(v85, v114, &qword_100357B88);
    v88 = v117;
    sub_100006C20(v87, v117, &qword_100357B88);
    v89 = v88 + *(sub_1000040A8(&qword_100357C20) + 48);
    *v89 = 0;
    v89[8] = 0;
    sub_100008FA0(v85, &qword_100357B88);
    sub_100008FA0(v87, &qword_100357B88);

    v90 = v119;
    v91 = v111;
    sub_100006C20(v119, v111, &qword_100357BA0);
    v92 = v120;
    v93 = v113;
    sub_100006C20(v120, v113, &qword_100357B98);
    v94 = v121;
    v95 = v115;
    sub_100006C20(v121, v115, &qword_100357B90);
    v96 = v116;
    sub_100006C20(v91, v116, &qword_100357BA0);
    v97 = sub_1000040A8(&qword_100357C28);
    sub_100006C20(v93, v96 + *(v97 + 48), &qword_100357B98);
    sub_100006C20(v95, v96 + *(v97 + 64), &qword_100357B90);
    sub_100008FA0(v94, &qword_100357B90);
    sub_100008FA0(v92, &qword_100357B98);
    sub_100008FA0(v90, &qword_100357BA0);
    sub_100008FA0(v95, &qword_100357B90);
    sub_100008FA0(v93, &qword_100357B98);
    return sub_100008FA0(v91, &qword_100357BA0);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100161A88(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10015EB2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1000040A8(&qword_100357C30);
  __chkstk_darwin(v8 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v11);
  v13 = &v23[-v12 - 8];
  v15 = *a1;
  v14 = a1[1];
  *v13 = static VerticalAlignment.firstTextLineCenter.getter();
  *(v13 + 1) = 0x4024000000000000;
  v13[16] = 0;
  v16 = sub_1000040A8(&qword_100357C38);
  sub_10015EDA4(a2, a3, v15, v14, &v13[*(v16 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v23[55] = v28;
  *&v23[71] = v29;
  *&v23[87] = v30;
  *&v23[103] = v31;
  *&v23[7] = v25;
  *&v23[23] = v26;
  v24 = 1;
  *&v23[39] = v27;
  sub_100006C20(v13, v10, &qword_100357C30);
  sub_100006C20(v10, a4, &qword_100357C30);
  v17 = a4 + *(sub_1000040A8(&qword_100357C40) + 48);
  v18 = *&v23[80];
  *(v17 + 73) = *&v23[64];
  *(v17 + 89) = v18;
  *(v17 + 105) = *&v23[96];
  v19 = *&v23[16];
  *(v17 + 9) = *v23;
  *(v17 + 25) = v19;
  v20 = *&v23[48];
  *(v17 + 41) = *&v23[32];
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v17 + 120) = *&v23[111];
  *(v17 + 57) = v20;
  sub_100008FA0(v13, &qword_100357C30);
  return sub_100008FA0(v10, &qword_100357C30);
}

uint64_t sub_10015EDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v7 = sub_1000040A8(&qword_100357C48);
  __chkstk_darwin(v7 - 8);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v49 - v10;
  v57 = a1;
  v58 = a2;
  sub_100031770();

  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Font.title2.getter();
  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;

  sub_1000317C4(v11, v13, v15 & 1);

  static Color.gray.getter();
  v21 = Text.foregroundColor(_:)();
  v23 = v22;
  LOBYTE(v11) = v24;
  v26 = v25;

  sub_1000317C4(v16, v18, v20 & 1);

  v57 = v21;
  v58 = v23;
  v59 = v11 & 1;
  v61 = v26;
  View.accessibility(hidden:)();
  sub_1000317C4(v21, v23, v11 & 1);

  v57 = v49;
  v58 = v50;

  v27 = Text.init<A>(_:)();
  v29 = v28;
  LOBYTE(v21) = v30;
  static Font.title2.getter();
  v31 = Text.font(_:)();
  v33 = v32;
  LOBYTE(v26) = v34;

  sub_1000317C4(v27, v29, v21 & 1);

  static Color.gray.getter();
  v35 = Text.foregroundColor(_:)();
  v37 = v36;
  LOBYTE(v18) = v38;
  v50 = v39;

  sub_1000317C4(v31, v33, v26 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v57) = v18 & 1;
  v41 = v52;
  v42 = v53;
  sub_100006C20(v52, v53, &qword_100357C48);
  v43 = v42;
  v44 = v51;
  sub_100006C20(v43, v51, &qword_100357C48);
  v45 = (v44 + *(sub_1000040A8(&qword_100357C50) + 48));
  *&v55 = v35;
  *(&v55 + 1) = v37;
  v56[0] = v18 & 1;
  *&v56[1] = v54[0];
  *&v56[4] = *(v54 + 3);
  v46 = v50;
  *&v56[8] = v50;
  *&v56[16] = KeyPath;
  *&v56[24] = 0;
  v56[26] = 1;
  *(v45 + 27) = *&v56[11];
  v47 = *v56;
  *v45 = v55;
  v45[1] = v47;
  sub_100006C20(&v55, &v57, &qword_100357C58);
  sub_100008FA0(v41, &qword_100357C48);
  v57 = v35;
  v58 = v37;
  v59 = v18 & 1;
  *v60 = v54[0];
  *&v60[3] = *(v54 + 3);
  v61 = v46;
  v62 = KeyPath;
  v63 = 0;
  v64 = 1;
  sub_100008FA0(&v57, &qword_100357C58);
  return sub_100008FA0(v53, &qword_100357C48);
}

double sub_10015F184@<D0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_1000040A8(&qword_1003612A8);
  sub_10015F224(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = static Edge.Set.all.getter();
  v5 = a2 + *(sub_1000040A8(&qword_1003612B0) + 36);
  *v5 = a1;
  result = 0.0;
  *(v5 + 8) = xmmword_100277A70;
  *(v5 + 24) = xmmword_100277A70;
  *(v5 + 40) = 0;
  return result;
}

uint64_t sub_10015F224@<X0>(__int128 *a1@<X1>, _OWORD *a2@<X8>)
{
  v121 = a1;
  v146 = a2;
  v2 = type metadata accessor for KeyboardShortcut();
  v144 = *(v2 - 8);
  v145 = v2;
  __chkstk_darwin(v2);
  v143 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1000040A8(&qword_1003612B8);
  __chkstk_darwin(v116);
  v117 = &v115 - v4;
  v140 = sub_1000040A8(&qword_1003612C0);
  __chkstk_darwin(v140);
  v118 = &v115 - v5;
  v134 = sub_1000040A8(&qword_1003612C8);
  __chkstk_darwin(v134);
  v139 = &v115 - v6;
  v7 = type metadata accessor for BorderedProminentButtonStyle();
  v123 = *(v7 - 8);
  v124 = v7;
  __chkstk_darwin(v7);
  v122 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1000040A8(&qword_1003612D0);
  __chkstk_darwin(v128);
  v115 = &v115 - v9;
  v147 = sub_1000040A8(&qword_1003612D8);
  __chkstk_darwin(v147);
  v126 = &v115 - v10;
  v132 = sub_1000040A8(&qword_1003612E0);
  __chkstk_darwin(v132);
  v125 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v130 = &v115 - v13;
  v138 = sub_1000040A8(&qword_1003612E8);
  v136 = *(v138 - 8);
  __chkstk_darwin(v138);
  v131 = &v115 - v14;
  v129 = sub_1000040A8(&qword_1003612F0);
  __chkstk_darwin(v129);
  v137 = &v115 - v15;
  v135 = sub_1000040A8(&qword_1003612F8);
  __chkstk_darwin(v135);
  v142 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v133 = &v115 - v18;
  __chkstk_darwin(v19);
  v141 = &v115 - v20;
  v21 = type metadata accessor for Font.Leading();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [objc_opt_self() mainBundle];
  v200._object = 0x8000000100298C40;
  v26._object = 0x8000000100298C20;
  v200._countAndFlagsBits = 0xD000000000000069;
  v26._countAndFlagsBits = 0xD00000000000001DLL;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v200);

  v158 = v28;
  sub_100031770();
  v29 = Text.init<A>(_:)();
  v31 = v30;
  v33 = v32;
  static Font.footnote.getter();
  (*(v22 + 104))(v24, enum case for Font.Leading.tight(_:), v21);
  Font.leading(_:)();

  (*(v22 + 8))(v24, v21);
  v34 = Text.font(_:)();
  v36 = v35;
  LOBYTE(v24) = v37;

  sub_1000317C4(v29, v31, v33 & 1);

  static Color.gray.getter();
  v127 = Text.foregroundColor(_:)();
  v150 = v38;
  v151 = v39;
  v41 = v40;

  v42 = v36;
  v43 = v121;
  sub_1000317C4(v34, v42, v24 & 1);

  v44 = *(v43 + 4);
  if (!v44)
  {
    type metadata accessor for UIMetrics();
    sub_100161A88(&qword_100354D40, type metadata accessor for UIMetrics);
    EnvironmentObject.error()();
    __break(1u);
LABEL_11:
    type metadata accessor for RoadsideAssistanceModel();
    sub_100161A88(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v45 = *(v44 + 112);

  v46 = v45;
  v119 = static UIContentSizeCategory.>= infix(_:_:)();

  KeyPath = swift_getKeyPath();
  v47 = *(v44 + 112);

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
  *&v184[55] = v195;
  *&v184[71] = v196;
  *&v184[87] = v197;
  *&v184[103] = v198;
  *&v184[7] = v192;
  *&v184[23] = v193;
  v148 = v41 & 1;
  v186 = v41 & 1;
  *&v184[39] = v194;
  v48 = static Edge.Set.top.getter();
  v187 = 1;
  v49 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v189 = 0;
  v199 = *v43;
  v58 = *(v43 + 2);
  v59 = swift_allocObject();
  v60 = v43[1];
  v59[1] = *v43;
  v59[2] = v60;
  v59[3] = v43[2];

  sub_100006C20(&v199, &v158, &qword_100357580);
  sub_1001613DC();

  v61 = v126;
  Button.init(action:label:)();
  v62 = (v61 + *(v147 + 36));
  v63 = *(sub_1000040A8(&qword_1003550A0) + 28);
  v64 = enum case for ControlSize.large(_:);
  v65 = type metadata accessor for ControlSize();
  (*(*(v65 - 8) + 104))(v62 + v63, v64, v65);
  *v62 = swift_getKeyPath();
  if (!v58)
  {
    goto LABEL_11;
  }

  v120 = v48;
  LODWORD(v121) = v49;
  if (*(v58 + 250))
  {

    v66 = v122;
    BorderedProminentButtonStyle.init()();
    sub_1001614F8();
    sub_100161A88(&qword_100357B50, &type metadata accessor for BorderedProminentButtonStyle);
    v67 = v115;
    v68 = v124;
    View.buttonStyle<A>(_:)();
    (*(v123 + 8))(v66, v68);
    v69 = (v67 + *(v128 + 36));
    sub_1000040A8(&qword_100357740);
    static ButtonBorderShape.capsule.getter();
    *v69 = swift_getKeyPath();
    sub_100006C20(v67, v139, &qword_1003612D0);
    swift_storeEnumTagMultiPayload();
    sub_1001615DC();
    sub_100161720();
    v70 = v125;
    _ConditionalContent<>.init(storage:)();
    v71 = v67;
    v72 = &qword_1003612D0;
  }

  else
  {
    v73 = v117;
    v74 = &v117[*(v116 + 36)];
    sub_1000040A8(&qword_100357740);

    static ButtonBorderShape.roundedRectangle.getter();
    *v74 = swift_getKeyPath();
    sub_100006C20(v61, v73, &qword_1003612D8);
    v75 = v122;
    BorderedProminentButtonStyle.init()();
    sub_100161440();
    sub_100161A88(&qword_100357B50, &type metadata accessor for BorderedProminentButtonStyle);
    v76 = v118;
    v77 = v124;
    View.buttonStyle<A>(_:)();
    (*(v123 + 8))(v75, v77);
    sub_100008FA0(v73, &qword_1003612B8);
    v78 = static Edge.Set.bottom.getter();
    v79 = v139;
    v80 = v76 + *(v140 + 36);
    *v80 = v78;
    *(v80 + 8) = 0u;
    *(v80 + 24) = 0u;
    *(v80 + 40) = 1;
    sub_100006C20(v76, v79, &qword_1003612C0);
    swift_storeEnumTagMultiPayload();
    sub_1001615DC();
    sub_100161720();
    v70 = v125;
    _ConditionalContent<>.init(storage:)();
    v71 = v76;
    v72 = &qword_1003612C0;
  }

  sub_100008FA0(v71, v72);
  sub_100008FA0(v61, &qword_1003612D8);
  v81 = (v119 & 1) == 0;
  LODWORD(v147) = v81;
  v82 = v130;
  sub_10000CF4C(v70, v130, &qword_1003612E0);
  v83 = v143;
  static KeyboardShortcut.defaultAction.getter();
  sub_100161838();
  v84 = v131;
  View.keyboardShortcut(_:)();
  (*(v144 + 8))(v83, v145);
  sub_100008FA0(v82, &qword_1003612E0);
  v85 = static Color.green.getter();
  v86 = swift_getKeyPath();
  v158._countAndFlagsBits = v85;
  v87 = AnyShapeStyle.init<A>(_:)();
  v88 = v137;
  (*(v136 + 32))(v137, v84, v138);
  v89 = (v88 + *(v129 + 36));
  *v89 = v86;
  v89[1] = v87;
  v90 = *(v58 + 250);

  v91 = swift_getKeyPath();
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  v93 = v133;
  sub_10000CF4C(v88, v133, &qword_1003612F0);
  v94 = (v93 + *(v135 + 36));
  *v94 = v91;
  v94[1] = sub_100073CA8;
  v94[2] = v92;
  v95 = v141;
  sub_10000CF4C(v93, v141, &qword_1003612F8);
  v96 = v142;
  sub_100006C20(v95, v142, &qword_1003612F8);
  v97 = v127;
  *&v152 = v127;
  *(&v152 + 1) = v150;
  LOBYTE(v153) = v148;
  *(&v153 + 1) = *v185;
  DWORD1(v153) = *&v185[3];
  *(&v153 + 1) = v151;
  *&v154[0] = KeyPath;
  BYTE8(v154[0]) = v81;
  *(&v154[4] + 9) = *&v184[64];
  *(&v154[5] + 9) = *&v184[80];
  *(&v154[6] + 9) = *&v184[96];
  *(&v154[7] + 1) = *&v184[111];
  *(v154 + 9) = *v184;
  *(&v154[1] + 9) = *&v184[16];
  *(&v154[2] + 9) = *&v184[32];
  *(&v154[3] + 9) = *&v184[48];
  v99 = v120;
  v98 = v121;
  LOBYTE(v155[0]) = v120;
  *(v155 + 1) = *v188;
  DWORD1(v155[0]) = *&v188[3];
  *(&v155[1] + 8) = 0u;
  *(v155 + 8) = 0u;
  BYTE8(v155[2]) = 1;
  *(&v155[2] + 9) = *v191;
  HIDWORD(v155[2]) = *&v191[3];
  LOBYTE(v156) = v121;
  *(&v156 + 1) = *v190;
  DWORD1(v156) = *&v190[3];
  *(&v156 + 1) = v51;
  *&v157[0] = v53;
  *(&v157[0] + 1) = v55;
  *&v157[1] = v57;
  BYTE8(v157[1]) = 0;
  v100 = v152;
  v101 = v153;
  v102 = v154[1];
  v103 = v146;
  v146[2] = v154[0];
  v103[3] = v102;
  *v103 = v100;
  v103[1] = v101;
  v104 = v154[2];
  v105 = v154[3];
  v106 = v154[5];
  v103[6] = v154[4];
  v103[7] = v106;
  v103[4] = v104;
  v103[5] = v105;
  v107 = v154[6];
  v108 = v154[7];
  v109 = v155[1];
  v103[10] = v155[0];
  v103[11] = v109;
  v103[8] = v107;
  v103[9] = v108;
  v110 = v155[2];
  v111 = v156;
  v112 = v157[0];
  *(v103 + 233) = *(v157 + 9);
  v103[13] = v111;
  v103[14] = v112;
  v103[12] = v110;
  v113 = sub_1000040A8(&qword_100361340);
  sub_100006C20(v96, v103 + *(v113 + 48), &qword_1003612F8);
  sub_100006C20(&v152, &v158, &qword_100357B70);
  sub_100008FA0(v95, &qword_1003612F8);
  sub_100008FA0(v96, &qword_1003612F8);
  v168 = *&v184[64];
  v169 = *&v184[80];
  *v170 = *&v184[96];
  v164 = *v184;
  v165 = *&v184[16];
  v166 = *&v184[32];
  v158._countAndFlagsBits = v97;
  v158._object = v150;
  v159 = v148;
  *v160 = *v185;
  *&v160[3] = *&v185[3];
  v161 = v151;
  v162 = KeyPath;
  v163 = v147;
  *&v170[15] = *&v184[111];
  v167 = *&v184[48];
  v171 = v99;
  *v172 = *v188;
  *&v172[3] = *&v188[3];
  v173 = 0u;
  v174 = 0u;
  v175 = 1;
  *v176 = *v191;
  *&v176[3] = *&v191[3];
  v177 = v98;
  *&v178[3] = *&v190[3];
  *v178 = *v190;
  v179 = v51;
  v180 = v53;
  v181 = v55;
  v182 = v57;
  v183 = 0;
  return sub_100008FA0(&v158, &qword_100357B70);
}

void *sub_1001603C4(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    type metadata accessor for RoadsideAssistanceModel();
    sub_100161A88(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_7;
  }

  if (!*(v1 + 104))
  {
    return result;
  }

  if (!*result)
  {
LABEL_7:
    type metadata accessor for AppEvents();
    sub_100161A88(&qword_100354D48, type metadata accessor for AppEvents);

    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  PassthroughSubject.send(_:)();

  sub_1000BAC9C();

  PassthroughSubject.send(_:)();
}

uint64_t sub_100160548@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RoadsideAssistanceModel();
  sub_100161A88(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
  result = EnvironmentObject.init()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1001605B8(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    type metadata accessor for RoadsideAssistanceModel();
    sub_100161A88(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_7;
  }

  if (!*(v1 + 104))
  {
    return result;
  }

  if (!*result)
  {
LABEL_7:
    type metadata accessor for AppEvents();
    sub_100161A88(&qword_100354D48, type metadata accessor for AppEvents);

    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  PassthroughSubject.send(_:)();
}

uint64_t sub_100160708()
{

  sub_100008964(v0 + 64);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100160764()
{
  sub_100008964(v0 + 16);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1001607CC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v69 = type metadata accessor for CircularProgressViewStyle();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000040A8(&qword_100354FA0);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v63 - v4;
  v83 = sub_1000040A8(&qword_100357C88);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v70 = &v63 - v5;
  v6 = sub_1000040A8(&qword_100357C90);
  __chkstk_darwin(v6 - 8);
  v85 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v63 - v9;
  v72 = sub_1000040A8(&qword_100354D60);
  __chkstk_darwin(v72);
  v11 = &v63 - v10;
  v73 = sub_1000040A8(&qword_100357C98);
  __chkstk_darwin(v73);
  v13 = &v63 - v12;
  v75 = sub_1000040A8(&qword_100357CA0);
  __chkstk_darwin(v75);
  v79 = &v63 - v14;
  v77 = sub_1000040A8(&qword_100357CA8);
  __chkstk_darwin(v77);
  v76 = &v63 - v15;
  v78 = sub_1000040A8(&qword_100357CB0);
  __chkstk_darwin(v78);
  v17 = &v63 - v16;
  v18 = sub_1000040A8(&qword_100357CB8);
  __chkstk_darwin(v18 - 8);
  v81 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v74 = &v63 - v21;
  LocalizedStringKey.init(stringLiteral:)();
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  *&v87 = v22;
  *(&v87 + 1) = v23;
  v26 = v25 & 1;
  LOBYTE(v88) = v25 & 1;
  *(&v88 + 1) = v27;
  v28 = enum case for DynamicTypeSize.accessibility2(_:);
  v29 = type metadata accessor for DynamicTypeSize();
  (*(*(v29 - 8) + 104))(v11, v28, v29);
  sub_100161A88(&qword_100354D68, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v71 = a2;
    sub_100009274(&qword_100354D78, &qword_100354D60);
    View.dynamicTypeSize<A>(_:)();
    sub_100008FA0(v11, &qword_100354D60);
    sub_1000317C4(v22, v24, v26);

    KeyPath = swift_getKeyPath();
    v32 = &v13[*(v73 + 36)];
    *v32 = KeyPath;
    v33 = 1;
    v32[8] = 1;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v34 = v79;
    sub_10000CF4C(v13, v79, &qword_100357C98);
    v35 = (v34 + *(v75 + 36));
    v36 = v92;
    v35[4] = v91;
    v35[5] = v36;
    v35[6] = v93;
    v37 = v88;
    *v35 = v87;
    v35[1] = v37;
    v38 = v90;
    v35[2] = v89;
    v35[3] = v38;
    v39 = v76;
    sub_10000CF4C(v34, v76, &qword_100357CA0);
    *(v39 + *(v77 + 36)) = 256;
    v40 = v80;
    if (v80)
    {
      v41 = 0.0;
    }

    else
    {
      v41 = 1.0;
    }

    sub_10000CF4C(v39, v17, &qword_100357CA8);
    *&v17[*(v78 + 36)] = v41;
    sub_10005D448();
    v42 = v74;
    View.accessibilityHidden(_:)();
    sub_100008FA0(v17, &qword_100357CB0);
    v43 = v83;
    v44 = v84;
    if (v40)
    {
      v45 = v64;
      ProgressView<>.init<>()();
      v46 = v67;
      CircularProgressViewStyle.init()();
      sub_100009274(&qword_100355088, &qword_100354FA0);
      sub_100161A88(&qword_100355090, &type metadata accessor for CircularProgressViewStyle);
      v47 = v70;
      v48 = v66;
      v49 = v69;
      View.progressViewStyle<A>(_:)();
      (*(v68 + 8))(v46, v49);
      (*(v65 + 8))(v45, v48);
      v50 = (v47 + *(sub_1000040A8(&qword_100354FA8) + 36));
      v51 = *(sub_1000040A8(&qword_1003550A0) + 28);
      v52 = enum case for ControlSize.small(_:);
      v53 = type metadata accessor for ControlSize();
      (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
      *v50 = swift_getKeyPath();
      v54 = [objc_opt_self() labelColor];
      v55 = Color.init(uiColor:)();
      v56 = swift_getKeyPath();
      v86 = v55;
      v57 = AnyShapeStyle.init<A>(_:)();
      v58 = (v47 + *(v43 + 36));
      *v58 = v56;
      v58[1] = v57;
      sub_10000CF4C(v47, v44, &qword_100357C88);
      v33 = 0;
    }

    (*(v82 + 56))(v44, v33, 1, v43);
    v59 = v81;
    sub_100006C20(v42, v81, &qword_100357CB8);
    v60 = v85;
    sub_100006C20(v44, v85, &qword_100357C90);
    v61 = v71;
    sub_100006C20(v59, v71, &qword_100357CB8);
    v62 = sub_1000040A8(&qword_100357CE0);
    sub_100006C20(v60, v61 + *(v62 + 48), &qword_100357C90);
    sub_100008FA0(v44, &qword_100357C90);
    sub_100008FA0(v42, &qword_100357CB8);
    sub_100008FA0(v60, &qword_100357C90);
    return sub_100008FA0(v59, &qword_100357CB8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001612D0@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v3 = *(*v1 + 250);
    *a1 = static Alignment.center.getter();
    a1[1] = v4;
    v5 = sub_1000040A8(&qword_100357C80);
    return sub_1001607CC(v3, a1 + *(v5 + 44));
  }

  else
  {
    type metadata accessor for RoadsideAssistanceModel();
    sub_100161A88(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10016138C()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1001613DC()
{
  result = qword_100361300;
  if (!qword_100361300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361300);
  }

  return result;
}

unint64_t sub_100161440()
{
  result = qword_100361308;
  if (!qword_100361308)
  {
    sub_100008CF0(&qword_1003612B8);
    sub_1001614F8();
    sub_100009274(&qword_100357768, &qword_100357740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361308);
  }

  return result;
}

unint64_t sub_1001614F8()
{
  result = qword_100361310;
  if (!qword_100361310)
  {
    sub_100008CF0(&qword_1003612D8);
    sub_100009274(&qword_100361318, &qword_100361320);
    sub_100009274(&qword_100355098, &qword_1003550A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361310);
  }

  return result;
}

unint64_t sub_1001615DC()
{
  result = qword_100361328;
  if (!qword_100361328)
  {
    sub_100008CF0(&qword_1003612D0);
    sub_100008CF0(&qword_1003612D8);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_1001614F8();
    sub_100161A88(&qword_100357B50, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361328);
  }

  return result;
}

unint64_t sub_100161720()
{
  result = qword_100361330;
  if (!qword_100361330)
  {
    sub_100008CF0(&qword_1003612C0);
    sub_100008CF0(&qword_1003612B8);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_100161440();
    sub_100161A88(&qword_100357B50, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361330);
  }

  return result;
}

unint64_t sub_100161838()
{
  result = qword_100361338;
  if (!qword_100361338)
  {
    sub_100008CF0(&qword_1003612E0);
    sub_1001615DC();
    sub_100161720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361338);
  }

  return result;
}

uint64_t sub_1001618E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100357BD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100161954()
{
  sub_100008964(v0 + 16);

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1001619B4()
{
  result = qword_100361348;
  if (!qword_100361348)
  {
    sub_100008CF0(&qword_100361350);
    sub_100009274(&qword_100361358, &qword_100361360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361348);
  }

  return result;
}

uint64_t sub_100161A88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100161C28()
{
  result = qword_100361368;
  if (!qword_100361368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361368);
  }

  return result;
}

unint64_t sub_100161CCC(uint64_t a1)
{
  result = sub_100161CF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100161CF4()
{
  result = qword_100361370;
  if (!qword_100361370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361370);
  }

  return result;
}

uint64_t sub_100161D48()
{
  sub_1000040A8(&qword_10035DBF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100279160;
  v1 = [objc_opt_self() mainBundle];
  v6._object = 0x800000010029CA60;
  v2._object = 0x800000010029CA40;
  v6._countAndFlagsBits = 0xD00000000000003CLL;
  v2._countAndFlagsBits = 0xD000000000000019;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v6);

  *(v0 + 32) = v4;
  *(v0 + 48) = 256;
  return v0;
}

uint64_t sub_100161E34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100161E54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
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

  *(result + 49) = v3;
  return result;
}

void sub_100161EA0(char a1, double a2)
{
  if (a1)
  {
    v3 = *(v2 + 24);
    if (*(v2 + 32))
    {
      v3 = a2;
    }

    *(v2 + 24) = v3;
    *(v2 + 32) = 0;
    v4 = *(v2 + 8);
    if (*(v2 + 48))
    {
      v5 = a2 - v3 - *(v2 + 16);
    }

    else
    {
      v5 = a2 - *(v2 + 40) - v4 * ceil((v3 - *(v2 + 40)) / v4) - *(v2 + 16);
    }

    if (v5 < 0.0)
    {
      v5 = 0.0;
    }

    fmod(v5, v4);
  }

  else
  {
    *(v2 + 24) = 0;
    *(v2 + 32) = 1;
  }
}

float sub_100161F44(char a1, double a2)
{
  if (a1)
  {
    v3 = *(v2 + 24);
    if (*(v2 + 32))
    {
      v3 = a2;
    }

    *(v2 + 24) = v3;
    *(v2 + 32) = 0;
    if (*(v2 + 48))
    {
      v4 = a2 - v3;
      v5 = *(v2 + 8);
      v6 = v4 - *(v2 + 16);
    }

    else
    {
      v8 = *(v2 + 40);
      v9 = v3 - v8;
      v5 = *(v2 + 8);
      v6 = a2 - v8 - v5 * ceil(v9 / v5) - *(v2 + 16);
    }

    if (v6 < 0.0)
    {
      v6 = 0.0;
    }

    return 0.5 - cos((v6 + v6) * 3.14159265 / v5) * 0.5;
  }

  else
  {
    *(v2 + 24) = 0;
    *(v2 + 32) = 1;
    return *v2;
  }
}

void *sub_100161FFC()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
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

  v22[1] = sub_10000F574();
  v27[0] = v8;
  v27[1] = v10;

  v11._object = 0x80000001002A04B0;
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);

  static DispatchQoS.unspecified.getter();
  v27[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v24 + 104))(v23, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = v12;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381D88);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v1;
    v27[0] = v17;
    *v16 = 136446210;
    type metadata accessor for ToneLibraryAgent();

    v18 = String.init<A>(describing:)();
    v20 = sub_10017C9E8(v18, v19, v27);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] init", v16, 0xCu);
    sub_100008964(v17);
  }

  return v1;
}

id *sub_10016242C()
{
  v1 = v0;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381D88);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for ToneLibraryAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_1001625B8()
{
  sub_10016242C();

  return swift_deallocClassInstance();
}

uint64_t sub_100162610()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A68 == -1)
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
  sub_10000F53C(v7, qword_100381D88);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Stopping ToneLibraryAgent", v10, 2u);
  }

  v11 = *(v1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1001647F8;
  *(v12 + 24) = v1;
  aBlock[4] = sub_1000EC2C8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100193668;
  aBlock[3] = &unk_1003337B0;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v11, v13);
  _Block_release(v13);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001628DC(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  aBlock[4] = sub_1001647E8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100333760;
  v16 = _Block_copy(aBlock);

  sub_10001D9B4(a2);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_100162BEC(uint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100162F94(a2 & 1, a3, a4);
  }

  return result;
}

uint64_t sub_100162C68()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100164798;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100333710;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_100162F3C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100163EDC();
  }

  return result;
}

void sub_100162F94(char a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v89 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DispatchQoS();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v85 = *(v12 - 8);
  v86 = v12;
  __chkstk_darwin(v12);
  v84 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v4[2];
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    if (qword_100353A68 == -1)
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
  v20 = type metadata accessor for Logger();
  sub_10000F53C(v20, qword_100381D88);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v91 = a2;
  v82 = v9;
  v83 = v8;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock = v25;
    *v24 = 136315138;
    LOBYTE(v92) = a1 & 1;
    v26 = String.init<A>(describing:)();
    v28 = sub_10017C9E8(v26, v27, &aBlock);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Play %s", v24, 0xCu);
    sub_100008964(v25);
  }

  sub_100163EDC();
  v29 = [objc_allocWithZone(TLAlertConfiguration) initWithType:22];
  [v29 setTopic:TLAlertTopicSOSCountdownTick];
  [v29 setShouldIgnoreRingerSwitch:1];
  [v29 setMaximumDuration:0.85];
  if (a1)
  {
    [v29 setToneIdentifier:TLToneIdentifierNone];
    [v29 setMaximumDuration:0.85];
  }

  v30 = [objc_opt_self() alertWithConfiguration:v29];
  if (v30)
  {
    v31 = v30;
    v81 = a3;
    v32 = [objc_allocWithZone(TLAlertActivationAssertion) initWithAlert:v30];
    v33 = v4[4];
    v4[4] = v32;
    v34 = v32;

    [v34 acquire];
    sub_10016436C();
    v35 = v29;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    v38 = os_log_type_enabled(v36, v37);
    v80 = v35;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v39 = 136315138;
      v41 = v35;
      v42 = [v41 description];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = sub_10017C9E8(v43, v45, &aBlock);

      *(v39 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "Playing alert with configuration: %s", v39, 0xCu);
      sub_100008964(v40);
    }

    v47 = v4[3];
    v4[3] = v31;
    v48 = v31;
    v79 = v48;

    v49 = dispatch_group_create();
    dispatch_group_enter(v49);
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v50 + 24) = 1;
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    *(v51 + 24) = v49;
    v97 = sub_1001646D8;
    v98 = v51;
    aBlock = _NSConcreteStackBlock;
    v94 = 1107296256;
    v95 = sub_100163BE0;
    v96 = &unk_100333670;
    v52 = _Block_copy(&aBlock);

    v53 = v49;

    [v48 playWithCompletionHandler:v52];
    _Block_release(v52);
    sub_10000F574();
    v55 = v84;
    v54 = v85;
    v56 = v86;
    (*(v85 + 104))(v84, enum case for DispatchQoS.QoSClass.userInitiated(_:), v86);
    v78 = static OS_dispatch_queue.global(qos:)();
    (*(v54 + 8))(v55, v56);
    v57 = swift_allocObject();
    swift_weakInit();
    v58 = swift_allocObject();
    v58[2] = v53;
    v58[3] = v57;
    v59 = v91;
    v60 = v81;
    v58[4] = v91;
    v58[5] = v60;
    v58[6] = v50;
    v97 = sub_100164788;
    v98 = v58;
    aBlock = _NSConcreteStackBlock;
    v94 = 1107296256;
    v95 = sub_1001D2438;
    v96 = &unk_1003336E8;
    v61 = _Block_copy(&aBlock);

    v62 = v53;

    sub_10001D9B4(v59);
    v63 = v87;
    static DispatchQoS.unspecified.getter();
    v92 = _swiftEmptyArrayStorage;
    sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70);
    v64 = v89;
    v65 = v83;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v66 = v78;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v61);

    (*(v82 + 8))(v64, v65);
    (*(v88 + 8))(v63, v90);
  }

  else
  {
    v67 = v29;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock = v71;
      *v70 = 136315138;
      v72 = v67;
      v73 = [v72 description];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = sub_10017C9E8(v74, v76, &aBlock);

      *(v70 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v68, v69, "Failed to create alert with configuration: %s", v70, 0xCu);
      sub_100008964(v71);
    }

    if (v91)
    {
      v91(0);
    }
  }
}

void sub_100163A14(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381D88);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315138;
    swift_beginAccess();
    v12 = *(a3 + 24);
    v16[1] = *(a3 + 16);
    v17 = v12;
    sub_1000040A8(&qword_100361490);
    v13 = String.init<A>(describing:)();
    v15 = sub_10017C9E8(v13, v14, v16);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Played alert with completion: %s", v10, 0xCu);
    sub_100008964(v11);
  }

  swift_beginAccess();
  *(a3 + 16) = a1;
  *(a3 + 24) = 0;
  dispatch_group_leave(a4);
}

void sub_100163BE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100163C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  static DispatchTime.now()();
  + infix(_:_:)();
  v14 = *(v8 + 8);
  v14(v11, v7);
  OS_dispatch_group.wait(timeout:)();
  v14(v13, v7);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    swift_beginAccess();
    if (*(a5 + 24))
    {
      result = 0;
      if (!a3)
      {
        return result;
      }
    }

    else
    {
      result = *(a5 + 16) < 2uLL;
      if (!a3)
      {
        return result;
      }
    }

    return a3(result);
  }

  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000F53C(v16, qword_100381D88);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Timed out waiting for playback to complete", v19, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100162C68();
  }

  if (a3)
  {
    result = 0;
    return a3(result);
  }

  return result;
}

void sub_100163EDC()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v2[2];
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v9 = v2[3];
  p_base_meths = &ConnectionClosedModel.base_meths;
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = qword_100353A68;
  v6 = v9;
  if (v10 != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = type metadata accessor for Logger();
  sub_10000F53C(v11, qword_100381D88);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Stopping current alert", v14, 2u);
  }

  [v6 stop];
  v15 = v2[3];
  v2[3] = 0;

LABEL_7:
  v16 = v2[4];
  if (v16)
  {
    v17 = p_base_meths[333];
    v18 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000F53C(v19, qword_100381D88);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Releasing alert activation assertion", v22, 2u);
    }

    [v18 relinquish];
    v23 = v2[4];
    v2[4] = 0;
  }
}

uint64_t sub_1001641AC()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    if (qword_100353A68 == -1)
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
  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381D88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting ToneLibraryAgent", v8, 2u);
  }

  return 1;
}

void sub_10016436C()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4 = String._bridgeToObjectiveC()();

  v17 = 0;
  v5 = [v1 setAttribute:v4 forKey:AVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute error:&v17];

  v6 = v17;
  if (v5)
  {

    v7 = v6;
  }

  else
  {
    v8 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000F53C(v9, qword_100381D88);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446210;
      swift_errorRetain();
      sub_1000040A8(&qword_100355DA0);
      v14 = String.init<A>(describing:)();
      v16 = sub_10017C9E8(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error temporarily blessing app for playback initialization: %{public}s", v12, 0xCu);
      sub_100008964(v13);
    }

    else
    {
    }
  }
}

uint64_t sub_100164698()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001646E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001646F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100164730()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001647A0()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100164820()
{
  result = qword_100361498;
  if (!qword_100361498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361498);
  }

  return result;
}

uint64_t ConnectionAssistantRenderer.__allocating_init(style:device:pixelFormat:)(char a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ConnectionAssistantRenderer.init(style:device:pixelFormat:)(a1 & 1, a2, a3);
  return v6;
}

void *ConnectionAssistantRenderer.init(style:device:pixelFormat:)(char a1, void *a2, uint64_t a3)
{
  v5 = v3;
  type metadata accessor for ConnectionAssistantRenderer.Buffers();
  swift_allocObject();
  v9 = swift_unknownObjectRetain();
  v10 = ConnectionAssistantRenderer.Buffers.init(device:)(v9);
  if (!v4)
  {
    v3[2] = v10;
    v11 = qword_100353B88;
    swift_unknownObjectRetain();
    if (v11 != -1)
    {
      swift_once();
    }

    v39[6] = xmmword_100382050;
    v39[7] = *&qword_100382060;
    v39[8] = xmmword_100382070;
    v39[2] = xmmword_100382010;
    v39[3] = *&dword_100382020;
    v39[4] = xmmword_100382030;
    v39[5] = xmmword_100382040;
    v39[0] = static ConnectionAssistantRenderer.RenderPipelines.Constants.default;
    v39[1] = xmmword_100382000;
    type metadata accessor for ConnectionAssistantRenderer.RenderPipelines();
    swift_allocObject();
    v12 = ConnectionAssistantRenderer.RenderPipelines.init(device:constants:pixelFormat:)(a2, v39, a3);
    v3[3] = v12;
    v13 = v3[2];
    v14 = v12;
    type metadata accessor for ConnectionAssistantStarsRenderer();
    swift_allocObject();
    swift_unknownObjectRetain();

    v5[4] = ConnectionAssistantStarsRenderer.init(device:buffers:renderPipelines:)(a2, v13, v14);
    v15 = v5[2];
    v16 = v5[3];
    if (a1)
    {
      v17 = type metadata accessor for ConnectionAssistantEarthTexturedRenderer();
      swift_allocObject();
      swift_unknownObjectRetain();

      v18 = ConnectionAssistantEarthTexturedRenderer.init(device:buffers:renderPipelines:)(a2, v15, v16);
      v19 = &off_1003280D8;
    }

    else
    {
      v17 = type metadata accessor for ConnectionAssistantEarthRenderer();
      swift_allocObject();
      swift_unknownObjectRetain();

      v18 = ConnectionAssistantEarthRenderer.init(device:buffers:renderPipelines:)(a2, v15, v16);
      v19 = &off_100331920;
    }

    v37 = v17;
    v38 = v19;
    *&v36 = v18;
    sub_100008A18(&v36, (v5 + 5));
    v21 = v5[2];
    v22 = v5[3];
    swift_unknownObjectRetain();

    v23 = [a2 newBufferWithLength:80 options:1];
    if (v23)
    {
      swift_unknownObjectRelease();
      v5[10] = v21;
      v5[11] = v22;
      v5[12] = v23;
      v25 = v5[2];
      v24 = v5[3];
      swift_unknownObjectRetain();

      v5[13] = sub_1001C86CC(a2, v25, v24);
      v5[14] = v27;
      v5[15] = v28;
      v5[16] = v29;
      v30 = v5[2];
      v31 = v5[3];
      swift_unknownObjectRetain();

      v32 = [a2 newBufferWithLength:96 options:1];
      if (v32)
      {
        v33 = v32;
        swift_unknownObjectRelease();
        v5[17] = v30;
        v5[18] = v31;
        v5[19] = v33;
        v34 = v5[2];
        v35 = v5[3];
        type metadata accessor for ConnectionAssistantSatelliteRenderer();
        swift_allocObject();

        v5[20] = ConnectionAssistantSatelliteRenderer.init(device:buffers:renderPipelines:)(a2, v34, v35);
        return v5;
      }

      sub_100022AD4();
      swift_allocError();
      swift_willThrow();

      swift_unknownObjectRelease_n();
      v26 = 1;
      LODWORD(v23) = 1;
    }

    else
    {
      sub_100022AD4();
      swift_allocError();
      swift_willThrow();

      swift_unknownObjectRelease_n();
      v26 = 0;
    }

    sub_100008964((v5 + 5));
    if (v26)
    {
      swift_unknownObjectRelease();

      if ((v23 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (!v23)
    {
      goto LABEL_12;
    }

    swift_unknownObjectRelease();

    goto LABEL_12;
  }

  swift_unknownObjectRelease();
LABEL_12:
  type metadata accessor for ConnectionAssistantRenderer();
  swift_deallocPartialClassInstance();
  return v5;
}

void ConnectionAssistantRenderer.render(dt:earth:camera:commandBuffer:renderPassDescriptor:)(uint64_t a1, uint64_t a2, id a3, void *a4, double a5)
{
  LOBYTE(v242) = 1;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v223 = 2000;
  v227 = 0;
  v228 = 1;
  v230 = 0;
  v229 = 0;
  v231 = 1;
  v232 = xmmword_10027DDA0;
  v161 = *(a1 + 32);
  v162 = *a1;
  v10 = [a3 computeCommandEncoder];
  if (v10)
  {
    v11 = v10;
    ConnectionAssistantStarsRenderer.compute(dt:stars:computeCommandEncoder:)(&v223, v10, a5);
    if ((*(a1 + 273) & 1) == 0)
    {
      v12 = *(a1 + 240);
      v221[4] = *(a1 + 224);
      v221[5] = v12;
      v221[6] = *(a1 + 256);
      v222 = *(a1 + 272);
      v13 = *(a1 + 176);
      v221[0] = *(a1 + 160);
      v221[1] = v13;
      v14 = *(a1 + 208);
      v221[2] = *(a1 + 192);
      v221[3] = v14;
      sub_1001C8800(v221, v183);
      ConnectionAssistantStarsRenderer.compute(dt:stars:computeCommandEncoder:)(v183, v11, a5);
    }

    v15 = *(a1 + 480);
    v239 = *(a1 + 464);
    v240 = v15;
    *v241 = *(a1 + 496);
    v16 = *(a1 + 416);
    v235 = *(a1 + 400);
    v236 = v16;
    v17 = *(a1 + 448);
    v237 = *(a1 + 432);
    v238 = v17;
    v18 = *(a1 + 384);
    v233 = *(a1 + 368);
    v234 = v18;
    *&v241[15] = *(a1 + 511);
    if (sub_1000E45DC(&v233) != 1)
    {
      v217 = v239;
      v218 = v240;
      v219 = *v241;
      v220 = *&v241[16];
      v213 = v235;
      v214 = v236;
      v215 = v237;
      v216 = v238;
      v211 = v233;
      v212 = v234;
      ConnectionAssistantSatellite.cone(camera:earth:)(a2, a1, v184);
      if ((v186 & 1) == 0)
      {
        v193[4] = v184[4];
        v193[5] = v184[5];
        v193[6] = v184[6];
        v194 = v185;
        v193[0] = v184[0];
        v193[1] = v184[1];
        v193[2] = v184[2];
        v193[3] = v184[3];
        sub_1001C8800(v193, v187);
        ConnectionAssistantStarsRenderer.compute(dt:stars:computeCommandEncoder:)(v187, v11, a5);
      }
    }

    [v11 endEncoding];
    swift_unknownObjectRelease();
  }

  v19 = [a4 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript:0];

  if (v20)
  {
    v21 = [v20 texture];

    if (v21)
    {
      v22 = [a3 renderCommandEncoderWithDescriptor:a4];
      if (v22)
      {
        v23 = v22;
        v24 = String._bridgeToObjectiveC()();
        [v23 setLabel:v24];

        v25 = *(a2 + 16);
        v242 = 0uLL;
        v158 = *a2;
        v243 = vcvtq_f64_s64(*a2);
        *v244 = xmmword_10027F380;
        [v23 setViewport:&v242];
        [v23 setCullMode:0];
        v26 = *(*(v163 + 16) + 32);
        v27 = 1.0;
        v28.i32[0] = 1.0;
        if (v158.i64[0])
        {
          v28.i32[0] = 1.0;
          if (v158.i64[1])
          {
            v29 = v158.i64[0] / v158.i64[1];
            v27 = fminf(v29, 1.0);
            v28.f32[0] = fmaxf(v29, 1.0);
          }
        }

        v28.f32[1] = 1.0 / v27;
        v157 = v28;
        v30 = ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(v158.i64[0], v158.i64[1], v25);
        v159 = matrix_identity_float4x4.columns[0];
        v149 = matrix_identity_float4x4.columns[2];
        v152 = matrix_identity_float4x4.columns[1];
        v144 = matrix_identity_float4x4.columns[3];
        v31 = [swift_unknownObjectRetain_n() contents];
        v32 = v26;
        *v31->f32 = v157;
        v31->f32[2] = v30;
        v31[1] = v159;
        v31[2] = v152;
        v31[3] = v149;
        v31[4] = v144;
        swift_unknownObjectRelease();
        v33 = *(v163 + 32);
        v34 = v33[9];
        v160 = a2;
        v156 = v21;
        if (v34)
        {
          v35 = v33[10];
          v36 = v33[11];
          v38 = v33[7];
          v37 = v33[8];
          swift_unknownObjectRetain();
          sub_1000231A8(v37, v34);
          v39 = [v38 contents];
          v40 = v38;
          *v39 = 1065353216;
          v150 = *(a2 + 336);
          v153 = *(a2 + 320);
          v141 = *(a2 + 368);
          v145 = *(a2 + 352);
          v41 = v33[6];
          v42 = [swift_unknownObjectRetain() contents];
          v43 = v41;
          *v42->f32 = v162;
          v42[2] = v157;
          v42[3].f32[0] = v30;
          *v42[4].f32 = v153;
          *v42[6].f32 = v150;
          *v42[8].f32 = v145;
          *v42[10].f32 = v141;
          v44 = sub_100254A80(0);
          if (v44)
          {
            v45 = v44;
            v46 = String._bridgeToObjectiveC()();
            [v23 setLabel:v46];

            [v23 setRenderPipelineState:v45];
            [v23 setVertexBuffer:v33[6] offset:0 atIndex:0];
            [v23 setVertexBuffer:v34 offset:0 atIndex:1];
            [v23 setVertexBuffer:v36 offset:0 atIndex:2];
            [v23 setFragmentBuffer:v33[7] offset:0 atIndex:0];
            [v23 drawPrimitives:3 vertexStart:0 vertexCount:v35];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          a2 = v160;
          v21 = v156;
        }

        v151 = v25;
        v47 = *(v163 + 64);
        v48 = *(v163 + 72);
        sub_1000088DC((v163 + 40), v47);
        (*(v48 + 8))(a1, a2, v23, v47, v48);
        if ((*(a1 + 273) & 1) == 0)
        {
          v49 = *(a1 + 240);
          v209[4] = *(a1 + 224);
          v209[5] = v49;
          v209[6] = *(a1 + 256);
          v210 = *(a1 + 272);
          v50 = *(a1 + 176);
          v209[0] = *(a1 + 160);
          v209[1] = v50;
          v51 = *(a1 + 208);
          v209[2] = *(a1 + 192);
          v209[3] = v51;
          ConnectionAssistantConeRenderer.render(cone:parameters:camera:destination:renderCommandEncoder:)(v209, a2, v21, v23, *(v163 + 104), *(v163 + 112), *(v163 + 120), *(v163 + 128), v162, v161);
        }

        if ((*(a1 + 148) & 1) == 0)
        {
          v53 = *(a1 + 112);
          v52 = *(a1 + 128);
          v54 = *(a1 + 144);
          v55 = *(a1 + 96);
          v204 = *(a1 + 80);
          v205 = v55;
          v139 = v204;
          v142 = v53;
          v206 = v53;
          v207 = v52;
          v146 = v52;
          v208 = v54;
          v56 = *(v163 + 80);
          v154 = *(v163 + 96);
          v57 = ConnectionAssistantLocationDot.project(from:camera:)(v160, v162);
          if ((v60 & 0x100000000) == 0)
          {
            v61 = v60;
            v62 = vmulq_f32(v139, v139);
            *&v63 = v62.f32[2] + vaddv_f32(*v62.f32);
            *v62.f32 = vrsqrte_f32(v63);
            *v62.f32 = vmul_f32(*v62.f32, vrsqrts_f32(v63, vmul_f32(*v62.f32, *v62.f32)));
            v64 = vsubq_f32(0, v160[5]);
            v64.f32[2] = 0.0 - COERCE_FLOAT(v160[5].i64[1]);
            v65 = vmulq_f32(vmulq_n_f32(v139, vmul_f32(*v62.f32, vrsqrts_f32(v63, vmul_f32(*v62.f32, *v62.f32))).f32[0]), v64);
            v65.f32[0] = fminf(fmaxf(((v65.f32[2] + vaddv_f32(*v65.f32)) + 0.05) / 0.1, 0.0), 1.0);
            v66 = v54 * ((v65.f32[0] * v65.f32[0]) * ((v65.f32[0] * -2.0) + 3.0));
            v67 = v59;
            v68 = v58;
            v69 = v57;
            v70 = [swift_unknownObjectRetain() contents];
            v71 = v56;
            v72 = v69;
            v73 = v68;
            v74 = v154;
            v70->f32[0] = v30;
            *v70[2].f32 = v142;
            v70[4] = v72;
            v70[5].i32[0] = v68;
            *v70[6].f32 = v146;
            v70[8] = v67;
            v70[9].i32[0] = v61;
            v70[9].f32[1] = v66;
            v75 = sub_100254A80(4);
            if (v75)
            {
              v76 = v75;
              v77 = String._bridgeToObjectiveC()();
              [v23 setLabel:v77];

              [v23 setRenderPipelineState:v76];
              v78.i32[0] = v73;
              v79.i32[0] = v61;
              v80 = ConnectionAssistantLocationDot.Projection.boundingBox.getter(v72, v78, v67, v79);
              *&v242 = sub_1000FFA74([v156 width], objc_msgSend(v156, "height"), v80, v81, v157);
              *(&v242 + 1) = v82;
              v243.f64[0] = v83;
              v243.f64[1] = v84;
              [v23 setScissorRect:&v242];
              [v23 setVertexBuffer:*(v71 + 24) offset:0 atIndex:0];
              [v23 setVertexBuffer:*(v71 + 32) offset:0 atIndex:1];
              [v23 setFragmentBuffer:v154 offset:0 atIndex:0];
              [v23 drawPrimitives:4 vertexStart:0 vertexCount:4];
              swift_unknownObjectRelease();
            }
          }
        }

        v155 = v30;
        if ((*(a1 + 356) & 1) == 0)
        {
          v85 = *(a1 + 288);
          v86 = *(a1 + 292);
          v87 = *(a1 + 304);
          v88 = *(a1 + 308);
          v89 = *(a1 + 312);
          v90 = *(a1 + 316);
          v91 = *(a1 + 320);
          v92 = *(a1 + 324);
          v93 = *(a1 + 328);
          v94 = *(a1 + 336);
          v95 = *(a1 + 352);
          v96 = *(a1 + 332);
          v97 = *(a1 + 296);
          v170 = v85;
          v171 = v86;
          v172 = v97;
          v173 = v87;
          v174 = v88;
          v175 = v89;
          v176 = v90;
          v177 = v91;
          v178 = v92;
          v147 = v93;
          v179 = v93;
          v180 = v96;
          v143 = v94;
          v181 = v94;
          v140 = v95;
          v182 = v95;
          v138 = *(v163 + 136);
          v98 = *(v163 + 152);
          v99 = ConnectionAssistantArrow.project(center:camera:)(v160, v162);
          if ((v100 & 0x100000000) == 0)
          {
            v101 = v99;
            v102 = *&v100;
            v103 = [swift_unknownObjectRetain() contents];
            v104 = v98;
            v103->f32[0] = v155;
            v103->i32[1] = v85;
            v103[1].i32[0] = v86;
            v103[2] = v101;
            v103[3].f32[0] = v102;
            v103[3].i32[1] = v87;
            v103[4].i32[0] = v88;
            v103[4].i32[1] = v89;
            v103[5].i32[0] = v90;
            v103[5].i32[1] = v91;
            v103[6].i32[0] = v92;
            v103[6].i32[1] = v147;
            *v103[8].f32 = v143;
            v103[10].i32[0] = v140;
            v105 = sub_100254A80(6);
            if (v105)
            {
              v106 = v105;
              v107 = String._bridgeToObjectiveC()();
              [v23 setLabel:v107];

              [v23 setRenderPipelineState:v106];
              v108 = ConnectionAssistantArrow.boundingBox(pointSize:projection:)(v155, v101, v102);
              *&v242 = sub_1000FFA74([v156 width], objc_msgSend(v156, "height"), v108, v109, v157);
              *(&v242 + 1) = v110;
              v243.f64[0] = v111;
              v243.f64[1] = v112;
              [v23 setScissorRect:&v242];
              [v23 setVertexBuffer:*(v138 + 24) offset:0 atIndex:0];
              [v23 setVertexBuffer:*(v138 + 32) offset:0 atIndex:1];
              [v23 setFragmentBuffer:v98 offset:0 atIndex:0];
              [v23 drawPrimitives:4 vertexStart:0 vertexCount:4];
              swift_unknownObjectRelease();
            }
          }
        }

        v113 = *(a1 + 480);
        *&v244[64] = *(a1 + 464);
        *&v244[80] = v113;
        *&v244[96] = *(a1 + 496);
        v114 = *(a1 + 416);
        *v244 = *(a1 + 400);
        *&v244[16] = v114;
        v115 = *(a1 + 448);
        *&v244[32] = *(a1 + 432);
        *&v244[48] = v115;
        v116 = *(a1 + 384);
        v242 = *(a1 + 368);
        v243 = v116;
        *&v244[111] = *(a1 + 511);
        if (sub_1000E45DC(&v242) != 1)
        {
          v118 = *(&v242 + 2);
          v119 = *v244;
          v201 = *&v244[52];
          v202 = *&v244[68];
          v203[0] = *&v244[84];
          *(v203 + 14) = *&v244[98];
          v198 = *&v244[4];
          v199 = *&v244[20];
          v200 = *&v244[36];
          v195 = v242;
          v148 = v243;
          v196 = v243;
          v197 = *v244;
          v120 = *(v163 + 160);
          ConnectionAssistantSatellite.cone(camera:earth:)(v160, a1, v188);
          if ((v190 & 1) == 0)
          {
            v191[4] = v188[4];
            v191[5] = v188[5];
            v191[6] = v188[6];
            v192 = v189;
            v191[0] = v188[0];
            v191[1] = v188[1];
            v191[2] = v188[2];
            v191[3] = v188[3];
            ConnectionAssistantConeRenderer.render(cone:parameters:camera:destination:renderCommandEncoder:)(v191, v160, v156, v23, *(v120 + 40), *(v120 + 48), *(v120 + 56), *(v120 + 64), v162, v161);
          }

          *v121.i64 = ConnectionAssistantSatellite.center(camera:earthCenter:)(v160, v162);
          v117 = ConnectionAssistantCamera.projectUV(point:)(v121).n64_f64[0];
          if ((v123 & 1) == 0)
          {
            v124 = v122.n64_f64[0];
            v125 = *(v120 + 72);
            v126 = [swift_unknownObjectRetain() contents];
            v127 = v125;
            *v126 = v148;
            LODWORD(v126[1].f64[0]) = v119;
            sub_1000E6B38(v151, v118);
            v128 = *(v120 + 112);
            if (v128)
            {
              v129 = *(v120 + 96);
              v130 = *(v120 + 104);
              swift_unknownObjectRetain();
              v131 = sub_100254A80(7);
              if (v131)
              {
                v132 = v131;
                v133 = String._bridgeToObjectiveC()();
                [v23 setLabel:v133];

                [v23 setRenderPipelineState:v132];
                v164 = 0;
                v165 = 0;
                *&v166 = [v156 width];
                *(&v166 + 1) = [v156 height];
                [v23 setScissorRect:&v164];
                [v23 setVertexBuffer:*(*(v120 + 24) + 24) offset:0 atIndex:0];
                *&v134 = ConnectionAssistantSatellite.model(projectedCenter:textureSize:camera:)(v129, v130, v160, v124);
                v164 = v157;
                *&v165 = v155;
                v166 = v134;
                v167 = v135;
                v168 = v136;
                v169 = v137;
                [v23 setVertexBytes:&v164 length:80 atIndex:1];
                [v23 setFragmentBuffer:*(v120 + 72) offset:0 atIndex:0];
                [v23 setFragmentTexture:v128 atIndex:0];
                [v23 drawPrimitives:4 vertexStart:0 vertexCount:4];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }
          }
        }

        [v23 endEncoding];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t ConnectionAssistantRenderer.deinit()
{

  sub_100008964(v0 + 40);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t ConnectionAssistantRenderer.__deallocating_deinit()
{
  ConnectionAssistantRenderer.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_100165EB0()
{
  result = qword_1003614A0;
  if (!qword_1003614A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003614A0);
  }

  return result;
}

void sub_100165F14(char a1)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *v1;
  if (a1 == 2)
  {
    v5 = String._bridgeToObjectiveC()();
    [v4 removeObjectForKey:v5];

    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F53C(v6, qword_100381C80);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10017C9E8(v3, v2, &v20);
      _os_log_impl(&_mh_execute_header, oslog, v7, "UserDefaults: %{public}s removed", v8, 0xCu);
      sub_100008964(v9);
    }

    else
    {
    }
  }

  else
  {
    LOBYTE(v20) = a1 & 1;
    v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v11 = String._bridgeToObjectiveC()();
    [v4 setObject:v10 forKey:v11];
    swift_unknownObjectRelease();

    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000F53C(v12, qword_100381C80);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_10017C9E8(v3, v2, &v20);
      *(v15 + 12) = 2082;
      v16 = String.init<A>(describing:)();
      v18 = sub_10017C9E8(v16, v17, &v20);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "UserDefaults: %{public}s = %{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_100166274()
{
  v1 = v0;
  v115 = type metadata accessor for DispatchWorkItemFlags();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for DispatchQoS();
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchPredicate();
  v124 = *(v4 - 8);
  __chkstk_darwin(v4);
  v116 = (v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DispatchTime();
  v109 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v105 - v11;
  v13 = __chkstk_darwin(v10);
  v107 = v105 - v14;
  v15 = __chkstk_darwin(v13);
  v108 = v105 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = v105 - v18;
  if (qword_100353A10 != -1)
  {
    v104 = v17;
    swift_once();
    v17 = v104;
  }

  v117 = v4;
  v105[0] = v9;
  v119 = v12;
  v121 = v17;
  v20 = type metadata accessor for Logger();
  v21 = sub_10000F53C(v20, qword_100381C80);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "SOSBuddyEnvironment start", v24, 2u);
  }

  v120 = v19;
  static DispatchTime.now()();
  v25 = v1[31];
  v26 = v1[32];
  sub_1000088DC(v1 + 28, v25);
  (*(v26 + 56))(v1, &off_100333A98, v25, v26);
  v27 = v1[40];
  *(v27 + 112) = &off_100333AE8;
  v123 = v27;
  swift_unknownObjectWeakAssign();
  *(*sub_1000088DC(v1 + 34, v1[37]) + 56) = &off_100333B20;
  v118 = v1;
  swift_unknownObjectWeakAssign();
  v28 = 0;
  *&v29 = 136315650;
  v125 = v29;
  do
  {
    v38 = *(&off_100321440 + v28 + 32);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v30 = v21;
      v31 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v31 = v125;
      v32 = StaticString.description.getter();
      v34 = sub_10017C9E8(v32, v33, aBlock);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      v35 = StaticString.description.getter();
      v37 = sub_10017C9E8(v35, v36, aBlock);

      *(v31 + 14) = v37;
      *(v31 + 22) = 1024;
      *(&v132 + 1) = &type metadata for UIFeatureFlags;
      *&v133 = sub_10017E6B8();
      LOBYTE(v131) = v38;
      LOBYTE(v34) = isFeatureEnabled(_:)();
      sub_100008964(&v131);
      *(v31 + 24) = v34 & 1;
      _os_log_impl(&_mh_execute_header, v39, v40, "Feature flag: (%s-%s) -> %{BOOL}d", v31, 0x1Cu);
      swift_arrayDestroy();

      v21 = v30;
    }

    else
    {
    }

    ++v28;
  }

  while (v28 != 4);
  v41 = v118;
  sub_100170010();
  v42 = v41[31];
  v43 = v41[32];
  sub_1000088DC(v41 + 28, v42);
  (*(v43 + 64))(v42, v43);
  sub_1000291EC();
  sub_1000088DC(v41 + 34, v41[37]);
  sub_1001A6C8C();
  v44 = v41[20];
  sub_100075454();
  sub_100109B88();
  v45 = sub_10001D630(0, &qword_10035BA10);
  v46 = static OS_dispatch_queue.main.getter();
  v47 = v116;
  *v116 = v46;
  v48 = v124;
  v49 = *(v124 + 104);
  LODWORD(v125) = enum case for DispatchPredicate.onQueue(_:);
  v50 = v117;
  v123 = v49;
  v122 = v124 + 104;
  v49(v47);
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  v53 = *(v48 + 8);
  v51 = v48 + 8;
  v52 = v53;
  result = v53(v47, v50);
  if ((v42 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v106 = v44;
  v55 = v41[43];
  v56 = v41[22];
  v57 = v52;
  v58 = v51;
  *v47 = static OS_dispatch_queue.main.getter();
  v123(v47, v125, v50);
  v59 = _dispatchPreconditionTest(_:)();
  v124 = v58;
  result = v57(v47, v50);
  if ((v59 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v105[2] = v21;
  v60 = v56;
  swift_unknownObjectWeakAssign();
  v61 = v57;
  v62 = v50;
  *(v55 + 24) = 1;
  v63 = v41[8];
  v64 = v45;
  v65 = v63[7];
  v66 = v63[8];

  sub_100045B84(v65, v66);

  sub_10012CDDC();
  sub_100089D44();
  sub_1001E5084();
  v67 = v41[9];
  v68 = v63[13];
  v69 = *(v68 + 48);
  v70 = *(v68 + 56);

  sub_10017DA80(v69, v70, v41, v67);

  v71 = v41[14];
  v72 = v63[13];
  v73 = *(v72 + 56);
  *(v71 + 256) = *(v72 + 48);
  *(v71 + 264) = v73;

  v74 = v60;

  *(v71 + 56) = &off_1003339F8;
  swift_unknownObjectWeakAssign();
  *(v71 + 72) = &off_10033A078;
  swift_unknownObjectWeakAssign();

  *(v71 + 88) = &off_100333A88;
  swift_unknownObjectWeakAssign();
  v75 = *(v71 + 312);
  v131 = *(v71 + 296);
  v132 = v75;
  v76 = *(v71 + 344);
  v133 = *(v71 + 328);
  v134 = v76;
  *(v71 + 296) = 0;
  *(v71 + 304) = xmmword_10027C550;
  *(v71 + 320) = xmmword_10027C550;
  *(v71 + 344) = 0;
  *(v71 + 352) = 0;
  *(v71 + 336) = 1;
  sub_10006BAFC(&v131);
  sub_10011358C();
  sub_10008329C();
  sub_10014ACE0();
  sub_1000F983C();
  v105[1] = v64;
  *v47 = static OS_dispatch_queue.main.getter();
  v77 = v62;
  v123(v47, v125, v62);
  LOBYTE(v62) = _dispatchPreconditionTest(_:)();
  result = v61(v47, v77);
  if (v62)
  {
    sub_100081824();
    sub_100023E94();
    sub_100085A04();
    sub_10001812C();
    sub_1000088DC(v41 + 34, v41[37]);
    sub_1001A73E8();
    sub_1000E2638();
    v78 = v41[31];
    v79 = v41[32];
    sub_1000088DC(v41 + 28, v78);
    sub_1000089B0(v106 + 48, aBlock);
    v80 = v127;
    v81 = v128;
    sub_1000088DC(aBlock, v127);
    (*(v81 + 1))(v130, v80, v81);
    v82 = sub_1000088DC(v130, v130[3]);
    (*(v79 + 80))(v41, v78, v79, *(*v82 + 16), *(*v82 + 24));
    sub_100008964(v130);
    sub_100008964(aBlock);
    sub_100217FC8(0, 0);
    sub_10024718C(1);
    type metadata accessor for PreventSuspensionAssertion();
    swift_allocObject();
    v83 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000019, 0x80000001002A0910);
    v123 = static OS_dispatch_queue.main.getter();
    v84 = v107;
    static DispatchTime.now()();
    v85 = v108;
    + infix(_:_:)();
    v86 = v109;
    v124 = *(v109 + 8);
    (v124)(v84, v121);
    v128 = sub_10017E67C;
    v129 = v83;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    v127 = &unk_1003342A0;
    v87 = _Block_copy(aBlock);
    *&v125 = v83;

    v88 = v110;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100071864();
    sub_1000040A8(&unk_100355D70);
    sub_100009274(&qword_10035BB50, &unk_100355D70);
    v89 = v112;
    v90 = v121;
    v91 = v115;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v92 = v123;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v87);

    (*(v114 + 8))(v89, v91);
    v93 = v88;
    v94 = v124;
    (*(v111 + 8))(v93, v113);
    v94(v85, v90);
    v95 = v119;
    v96 = v120;
    (*(v86 + 16))(v119, v120, v90);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v96 = swift_slowAlloc();
      *v96 = 134217984;
      v99 = v105[0];
      static DispatchTime.now()();
      v100 = DispatchTime.uptimeNanoseconds.getter();
      if (DispatchTime.uptimeNanoseconds.getter() >= v100)
      {
        v94(v99, v90);
        v102 = 0;
      }

      else
      {
        v95 = DispatchTime.uptimeNanoseconds.getter();
        v101 = DispatchTime.uptimeNanoseconds.getter();
        v94(v99, v90);
        v102 = v95 - v101;
        if (v95 < v101)
        {
          __break(1u);
          goto LABEL_17;
        }
      }

      v103 = v102 / 0xF4240;
      v94(v119, v90);
      *(v96 + 4) = v103;
      _os_log_impl(&_mh_execute_header, v97, v98, "SOSBuddyEnvironment started in %llu ms", v96, 0xCu);

      v96 = v120;
      goto LABEL_20;
    }

LABEL_17:
    v94(v95, v90);

LABEL_20:
    v94(v96, v90);
    return 1;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100167184()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin(v2);
  v51 = (v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v47[0] = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v47 - v9;
  __chkstk_darwin(v8);
  v12 = v47 - v11;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v48 = v10;
  v13 = type metadata accessor for Logger();
  v47[1] = sub_10000F53C(v13, qword_100381C80);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "SOSBuddyEnvironment stop", v16, 2u);
  }

  v49 = v5;

  static DispatchTime.now()();
  *(*sub_1000088DC((v1 + 272), *(v1 + 296)) + 64) = 0;

  *(*(v1 + 320) + 120) = 0;

  v17 = *(v1 + 248);
  v18 = *(v1 + 256);
  sub_1000088DC((v1 + 224), v17);
  (*(v18 + 72))(v17, v18);
  swift_beginAccess();
  *(v1 + 352) = &_swiftEmptySetSingleton;

  v50 = *(v1 + 64);
  v19 = *(v50 + 32);
  if (*(v19 + 64) && (sub_100071A54(3, *(v19 + 88)) & 1) != 0)
  {
    sub_100245850(3, sub_100245F40, 0);
  }

  sub_100218770();
  sub_100018420();
  v20 = *(v1 + 136);
  v21 = *(v20 + 32);
  sub_100017564();

  *(v20 + 40) = 0;

  sub_1000241C0();
  v22 = *(v1 + 144);
  *(v22 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__mainSceneIsForeground) = 2;
  *(v22 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__screenLocked) = 2;
  v23 = OBJC_IVAR____TtC8SOSBuddy11TryOutModel__connected;
  v24 = *(v22 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__connected);
  if (v24 != 2)
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v22 + v23) = 2;
  sub_10026A880(v24);
  sub_100267BD0();
  sub_100029DB4();
  sub_1000F9848();
  sub_100146A14();
  sub_1000832A8();
  sub_1000610A4();
  sub_100061FC4();
  sub_10025DDD8();
  sub_1001E53F8();
  sub_10001E730();
  sub_100223BA4();
  v25 = *(v1 + 248);
  v26 = *(v1 + 256);
  sub_1000088DC((v1 + 224), v25);
  (*(v26 + 88))(v25, v26);
  sub_1000088DC((v1 + 272), *(v1 + 296));
  sub_1001A7750();
  sub_100144374();
  sub_10024718C(4);
  sub_10001D630(0, &qword_10035BA10);
  v27 = static OS_dispatch_queue.main.getter();
  v29 = v51;
  v28 = v52;
  *v51 = v27;
  v30 = v53;
  (*(v28 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v53);
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  result = (*(v28 + 8))(v29, v30);
  if (v25)
  {
    sub_100109B88(result);
    sub_1001D0230();
    sub_1000E2840();
    *(v1 + 368) = 1538;
    swift_beginAccess();
    sub_100165F14(0);
    swift_endAccess();
    v33 = v48;
    v32 = v49;
    (*(v49 + 16))(v48, v12, v4);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v34, v35))
    {
      v43 = *(v32 + 8);
      v43(v33, v4);
LABEL_18:

      return (v43)(v12, v4);
    }

    v36 = v12;
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    v38 = v47[0];
    static DispatchTime.now()();
    v39 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() >= v39)
    {
      v45 = v38;
      v43 = *(v32 + 8);
      v43(v45, v4);
      v44 = 0;
LABEL_17:
      v46 = v44;
      v43(v33, v4);
      *(v37 + 4) = v46 / 0xF4240;
      _os_log_impl(&_mh_execute_header, v34, v35, "SOSBuddyEnvironment stopped in %llu ms", v37, 0xCu);

      v12 = v36;
      goto LABEL_18;
    }

    v40 = DispatchTime.uptimeNanoseconds.getter();
    v41 = DispatchTime.uptimeNanoseconds.getter();
    v42 = v38;
    v43 = *(v32 + 8);
    result = (v43)(v42, v4);
    v44 = v40 - v41;
    if (v40 >= v41)
    {
      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10016787C(uint64_t a1)
{
  v2 = v1;
  v57 = type metadata accessor for URL();
  v4 = *(v57 - 8);
  __chkstk_darwin(v57);
  v60 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353A10 != -1)
  {
LABEL_34:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_10000F53C(v6, qword_100381C80);

  v54 = v7;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v53 = v2;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v63[0] = v12;
    *v11 = 136446210;
    sub_10001D630(0, &qword_10035E8E0);
    v13 = v4;
    sub_10006AFB8(&qword_100356900, &qword_10035E8E0);
    v14 = Set.description.getter();
    v16 = sub_10017C9E8(v14, v15, v63);

    *(v11 + 4) = v16;
    v4 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "handleURLContexts: %{public}s]", v11, 0xCu);
    sub_100008964(v12);

    v2 = v53;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10001D630(0, &qword_10035E8E0);
    sub_10006AFB8(&qword_100356900, &qword_10035E8E0);
    Set.Iterator.init(_cocoa:)();
    a1 = v63[0];
    v18 = v63[1];
    v20 = v63[2];
    v19 = v63[3];
    v21 = v63[4];
  }

  else
  {
    v22 = -1 << *(a1 + 32);
    v18 = a1 + 56;
    v20 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v21 = v24 & *(a1 + 56);

    v19 = 0;
  }

  v51[1] = v20;
  v25 = (v20 + 64) >> 6;
  v56 = (v4 + 8);
  *&v17 = 136446210;
  v52 = v17;
  v58 = v18;
  v55 = a1;
  while ((a1 & 0x8000000000000000) == 0)
  {
    v26 = v19;
    v27 = v21;
    v28 = v19;
    if (!v21)
    {
      while (1)
      {
        v28 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v28 >= v25)
        {
          return sub_10006AFFC();
        }

        v27 = *(v18 + 8 * v28);
        ++v26;
        if (v27)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_18:
    v29 = (v27 - 1) & v27;
    v30 = *(*(a1 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v30)
    {
      return sub_10006AFFC();
    }

LABEL_22:
    v59 = v29;
    v32 = [v30 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = *(v2 + 328);
    swift_beginAccess();
    v4 = *(v33 + 40);
    v34 = *(v33 + 48);
    v35 = *(v33 + 24);

    v36 = String._bridgeToObjectiveC()();
    v37 = [v35 objectForKey:v36];

    if (v37)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000456C8(&v61, v62);
    }

    else
    {
      memset(v62, 0, sizeof(v62));
    }

    sub_1000040A8(&qword_1003577F8);
    if (swift_dynamicCast())
    {

      v34 = v61;
    }

    else
    {
      LOBYTE(v61) = 2;
    }

    v38 = v60;
    v39 = sub_10013E088(v34, v60);
    (*v56)(v38, v57);
    if (v39)
    {
    }

    else
    {
      v40 = v30;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v4 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v62[0] = v43;
        *v4 = v52;
        v44 = v40;
        v45 = [v44 description];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = sub_10017C9E8(v46, v48, v62);

        *(v4 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v41, v42, "Failed to handle URL [%{public}s]", v4, 0xCu);
        sub_100008964(v43);
        v2 = v53;
      }

      else
      {
      }
    }

    v19 = v28;
    v18 = v58;
    v21 = v59;
    a1 = v55;
  }

  v31 = __CocoaSet.Iterator.next()();
  if (v31)
  {
    *&v61 = v31;
    sub_10001D630(0, &qword_10035E8E0);
    swift_dynamicCast();
    v30 = *&v62[0];
    v28 = v19;
    v29 = v21;
    if (*&v62[0])
    {
      goto LABEL_22;
    }
  }

  return sub_10006AFFC();
}

uint64_t sub_100167F4C(int a1)
{
  v2 = v1;
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
    *v7 = 67240192;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "handleMainSceneActiveChange: %{BOOL,public}d", v7, 8u);
  }

  v8 = *(v2 + 32);
  v9 = *(v8 + 80);
  if (v9 == 2 || ((v9 ^ a1) & 1) != 0)
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v8 + 80) = a1 & 1;
  return sub_10012CEE0(v9);
}

uint64_t sub_1001680D0(uint64_t a1)
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
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requesting OffTheGrid mode", v5, 2u);
  }

  v6 = *(a1 + 152);

  return sub_1000243C4(1, 2, v6);
}

void sub_1001681CC()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381C80);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "OffTheGrid mode request done", v2, 2u);
  }
}

uint64_t sub_1001682B4(int a1)
{
  v2 = v1;
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
    _os_log_impl(&_mh_execute_header, v5, v6, "Requesting OffTheGrid mode", v7, 2u);
  }

  type metadata accessor for PreventSuspensionAssertion();
  swift_allocObject();
  v8 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000021, 0x80000001002A08E0);
  sub_1000264D0(1, a1, *(v2 + 152), v8);
}