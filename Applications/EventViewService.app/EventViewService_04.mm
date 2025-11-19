uint64_t sub_10007EAEC()
{
  swift_getKeyPath();
  sub_10007F4D0();

  return *(v0 + *(*v0 + 152));
}

uint64_t sub_10007EB74()
{
  v1[3] = v0;
  v2 = *v0;
  v1[4] = *(*v0 + 104);
  v1[5] = v2[11];
  v1[6] = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = v2[12];
  v1[11] = v2[10];
  v1[12] = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[16] = static MainActor.shared.getter();
  v1[17] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v5;

  return _swift_task_switch(sub_10007ED68);
}

uint64_t sub_10007ED68()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[3];
  sub_10007F740(1);
  v0[19] = *(*v5 + 112);
  v0[2] = (*(v4 + 112))(v3, v4);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v6 = *(v2 - 8);
  if ((*(v6 + 48))(v1, 1, v2) == 1)
  {
    v7 = v0[15];
    v8 = v0[13];
    v9 = v0[14];

    (*(v9 + 8))(v7, v8);
    sub_10007F740(0);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[15];
    v13 = v0[12];
    v23 = v0[4];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = (*(AssociatedConformanceWitness + 24))(v13, AssociatedConformanceWitness);
    v17 = v16;
    v0[20] = v16;
    (*(v6 + 8))(v12, v13);
    v22 = (*(v23 + 48) + **(v23 + 48));
    v18 = swift_task_alloc();
    v0[21] = v18;
    *v18 = v0;
    v18[1] = sub_10007F08C;
    v19 = v0[9];
    v21 = v0[4];
    v20 = v0[5];

    return v22(v19, v15, v17, v20, v21);
  }
}

uint64_t sub_10007F08C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10007F2DC;
  }

  else
  {
    v2 = sub_10007F1E4;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10007F1E4()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  sub_10007FF24(v1);
  (*(v2 + 8))(v1, v3);
  sub_10007F740(0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10007F2DC()
{
  v14 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = (*(*(v5 + 8) + 120))(v4);
    v10 = sub_100139F7C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch playlist for eventID: %s", v6, 0xCu);
    sub_100012A7C(v7);
  }

  sub_10007F740(0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10007F570(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 144);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_10007F740(char a1)
{
  v2 = *(*v1 + 152);
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
    sub_10007F668();
  }

  return result;
}

uint64_t *sub_10007F8A0()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 128), *(v1 + 88));
  v2 = *(*v0 + 144);
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 160);
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_10007FA64()
{
  sub_10007F8A0();

  return swift_deallocClassInstance();
}

__n128 sub_10007FAE8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t *sub_10007FAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = a3;
  v23 = a4;
  v21 = a2;
  v7 = *v5;
  v8 = *(*v5 + 96);
  v9 = *(*v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = *(v7 + 144);
  v16 = *(v7 + 88);
  v17 = swift_getAssociatedTypeWitness();
  (*(*(v17 - 8) + 56))(v5 + v15, 1, 1, v17);
  *(v5 + *(*v5 + 152)) = 0;
  ObservationRegistrar.init()();
  (*(*(v9 - 8) + 16))(v5 + *(*v5 + 112), a1, v9);
  v18 = (v5 + *(*v5 + 120));
  v19 = v22;
  *v18 = v21;
  v18[1] = v19;
  (*(*(v16 - 8) + 16))(v5 + *(*v5 + 128), v23, v16);
  v24 = (*(v8 + 112))(v9, v8);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  LOBYTE(a1) = (*(*(AssociatedTypeWitness - 8) + 48))(v14, 1, AssociatedTypeWitness) != 1;
  (*(v12 + 8))(v14, v11);
  *(v5 + *(*v5 + 136)) = a1;
  sub_10007F740(a1);
  return v5;
}

uint64_t sub_10007FF24(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 88);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = v4[18];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v20 = v4[10];
  v12 = v4[12];
  v13 = a1;
  v21 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (a1)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, v13, v7);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *&v16 = v20;
    *(&v16 + 1) = v6;
    *&v17 = v12;
    *(&v17 + 1) = v5;
    *(&v19 - 2) = v16;
    *(&v19 - 1) = v17;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v19 - 2) = v2;
    *(&v19 - 1) = v13;
    sub_10007F668();
  }
}

uint64_t sub_10008023C()
{
  result = static Solarium.isEnabled.getter();
  v1 = 12.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_1002390D8 = *&v1;
  return result;
}

uint64_t sub_10008026C()
{
  result = static Solarium.isEnabled.getter();
  v1 = 8.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_1002390E0 = *&v1;
  return result;
}

uint64_t sub_1000802B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000024C4(&qword_100221B80);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000803C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000024C4(&qword_100221B80);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CalendarIcon()
{
  result = qword_1002243B8;
  if (!qword_1002243B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100080514()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_10001B7F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000805B4()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_100224358 = result;
  return result;
}

uint64_t sub_100080698@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v134 = a1;
  v3 = sub_1000024C4(&qword_1002243F0);
  __chkstk_darwin(v3 - 8);
  v133 = &v110 - v4;
  v139 = type metadata accessor for ColorScheme();
  v140 = *(v139 - 8);
  v5 = __chkstk_darwin(v139);
  v138 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v137 = &v110 - v7;
  v136 = type metadata accessor for RoundedRectangle();
  v8 = __chkstk_darwin(v136);
  v130 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v135 = (&v110 - v10);
  v128 = sub_1000024C4(&qword_1002243F8);
  __chkstk_darwin(v128);
  v132 = &v110 - v11;
  v129 = sub_1000024C4(&qword_100224400);
  __chkstk_darwin(v129);
  v131 = &v110 - v12;
  v126 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v124 = *(v126 - 1);
  __chkstk_darwin(v126);
  v123 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v121 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v114 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Date.FormatStyle();
  v115 = *(v117 - 8);
  v15 = __chkstk_darwin(v117);
  v17 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v113 = &v110 - v19;
  __chkstk_darwin(v18);
  v116 = &v110 - v20;
  v21 = type metadata accessor for AccessibilityChildBehavior();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1000024C4(&qword_100224408);
  __chkstk_darwin(v111);
  v26 = &v110 - v25;
  *&v118 = sub_1000024C4(&qword_100224410);
  *&v119 = *(v118 - 8);
  __chkstk_darwin(v118);
  v112 = &v110 - v27;
  v122 = sub_1000024C4(&qword_100224418) - 8;
  __chkstk_darwin(v122);
  v29 = &v110 - v28;
  v127 = sub_1000024C4(&qword_100224420);
  __chkstk_darwin(v127);
  v125 = &v110 - v30;
  *v26 = static HorizontalAlignment.center.getter();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v31 = sub_1000024C4(&qword_100224428);
  sub_100081618(v2, &v26[*(v31 + 44)]);
  static AccessibilityChildBehavior.ignore.getter();
  v32 = sub_10000BFFC(&qword_100224430, &qword_100224408);
  v33 = v111;
  View.accessibilityElement(children:)();
  (*(v22 + 8))(v24, v21);
  sub_1000050C4(v26, &qword_100224408);
  static FormatStyle<>.dateTime.getter();
  v34 = v114;
  static Date.FormatStyle.Symbol.Month.wide.getter();
  v35 = v113;
  Date.FormatStyle.month(_:)();
  (*(v120 + 8))(v34, v121);
  v36 = *(v115 + 8);
  v37 = v117;
  v36(v17, v117);
  v38 = v123;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  v39 = v116;
  Date.FormatStyle.day(_:)();
  (*(v124 + 8))(v38, v126);
  v36(v35, v37);
  sub_100082414(&qword_100221EF8, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v36(v39, v37);
  v147 = v141;
  v144 = v33;
  *&v145 = v32;
  swift_getOpaqueTypeConformance2();
  sub_10001877C();
  v40 = v118;
  v41 = v112;
  View.accessibilityLabel<A>(_:)();

  (*(v119 + 8))(v41, v40);
  v42 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = &v29[*(sub_1000024C4(&qword_100224438) + 36)];
  *v51 = v42;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v52 = *(v122 + 44);
  v126 = v29;
  v53 = &v29[v52];
  v54 = v142;
  *v53 = v141;
  *(v53 + 1) = v54;
  *(v53 + 2) = v143;
  v55 = *(v136 + 20);
  v56 = enum case for RoundedCornerStyle.continuous(_:);
  v57 = type metadata accessor for RoundedCornerStyle();
  v58 = *(v57 - 8);
  v59 = *(v58 + 104);
  v60 = v135;
  LODWORD(v124) = v56;
  v123 = v59;
  v122 = v58 + 104;
  (v59)(v135 + v55, v56, v57);
  __asm { FMOV            V0.2D, #12.0 }

  v121 = _Q0;
  *v60 = _Q0;
  v120 = *(type metadata accessor for CalendarIcon() + 20);
  v66 = v137;
  sub_100039EE0(v137);
  v67 = enum case for ColorScheme.light(_:);
  v68 = v140;
  v69 = *(v140 + 104);
  v70 = v138;
  v71 = v139;
  v69(v138, enum case for ColorScheme.light(_:), v139);
  LOBYTE(v39) = static ColorScheme.== infix(_:_:)();
  v72 = *(v68 + 8);
  v72(v70, v71);
  v140 = v68 + 8;
  v72(v66, v71);
  sub_1000024C4(&qword_100221D18);
  if (v39)
  {
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1001B49B0;
    *(v73 + 32) = static Color.white.getter();
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
  }

  else
  {
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1001B3B50;
    if (qword_100220BD0 != -1)
    {
      swift_once();
    }

    *(v74 + 32) = qword_100224358;
    v75 = objc_opt_self();

    v76 = [v75 systemGray6Color];
    *(v74 + 40) = Color.init(uiColor:)();
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
  }

  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v77 = v144;
  v119 = v145;
  v118 = v146;
  v78 = v132;
  sub_1000572CC(v135, v132);
  v79 = v78 + *(v128 + 36);
  *v79 = v77;
  *(v79 + 24) = v118;
  *(v79 + 8) = v119;
  v80 = v130;
  (v123)(&v130[*(v136 + 20)], v124, v57);
  *v80 = v121;
  v81 = v137;
  sub_100039EE0(v137);
  v82 = v138;
  v83 = v139;
  v69(v138, v67, v139);
  v84 = static ColorScheme.== infix(_:_:)();
  v72(v82, v83);
  v72(v81, v83);
  v85 = objc_opt_self();
  v86 = &selRef_systemGray4Color;
  if ((v84 & 1) == 0)
  {
    v86 = &selRef_systemGray5Color;
  }

  v87 = [v85 *v86];
  v88 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v89 = v133;
  sub_100039704(v80, v133);
  v90 = v89 + *(sub_1000024C4(&qword_100222870) + 36);
  v91 = v148;
  *v90 = v147;
  *(v90 + 16) = v91;
  *(v90 + 32) = v149;
  v92 = sub_1000024C4(&qword_100222878);
  *(v89 + *(v92 + 52)) = v88;
  *(v89 + *(v92 + 56)) = 256;
  v93 = static Alignment.center.getter();
  v95 = v94;
  sub_100039768(v80);
  v96 = (v89 + *(sub_1000024C4(&qword_100222880) + 36));
  *v96 = v93;
  v96[1] = v95;
  v97 = static Alignment.center.getter();
  v99 = v98;
  v100 = v131;
  v101 = &v131[*(v129 + 36)];
  sub_10001AE00(v89, v101, &qword_1002243F0);
  v102 = (v101 + *(sub_1000024C4(&qword_100224440) + 36));
  *v102 = v97;
  v102[1] = v99;
  sub_10001AE00(v78, v100, &qword_1002243F8);
  v103 = static Alignment.center.getter();
  v105 = v104;
  v106 = v125;
  v107 = &v125[*(v127 + 36)];
  sub_10001AE00(v100, v107, &qword_100224400);
  v108 = (v107 + *(sub_1000024C4(&qword_100224448) + 36));
  *v108 = v103;
  v108[1] = v105;
  sub_100082108(v126, v106);
  sub_100082178();
  View.accessibilityIdentifier(_:)();
  return sub_1000050C4(v106, &qword_100224420);
}

uint64_t sub_100081618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v93 = a1;
  v89 = sub_1000024C4(&qword_100224480);
  __chkstk_darwin(v89);
  v88 = &v80 - v2;
  v3 = sub_1000024C4(&qword_100224488);
  v4 = __chkstk_darwin(v3 - 8);
  v91 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v90 = &v80 - v6;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  v94 = v7;
  v95 = v8;
  __chkstk_darwin(v7);
  v84 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v10 = *(v83 - 1);
  __chkstk_darwin(v83);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Date.FormatStyle();
  v13 = *(v81 - 8);
  v14 = __chkstk_darwin(v81);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1000024C4(&qword_100223B60);
  __chkstk_darwin(v82);
  v22 = &v80 - v21;
  v85 = sub_1000024C4(&qword_100224490);
  __chkstk_darwin(v85);
  v24 = &v80 - v23;
  v25 = sub_1000024C4(&qword_100224498);
  v26 = __chkstk_darwin(v25 - 8);
  v87 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v86 = &v80 - v28;
  (*(v18 + 16))(v20, v93, v17);
  static FormatStyle<>.dateTime.getter();
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  Date.FormatStyle.month(_:)();
  (*(v10 + 8))(v12, v83);
  (*(v13 + 8))(v16, v81);
  sub_100082414(&qword_100221EF8, &type metadata accessor for Date.FormatStyle);
  sub_100082414(&qword_1002227D8, &type metadata accessor for Date);
  v29 = Text.init<A>(_:format:)();
  v31 = v30;
  LOBYTE(v12) = v32;
  v83 = v33;
  v34 = &v22[*(sub_1000024C4(&qword_100221B68) + 36)];
  v35 = *(sub_1000024C4(&qword_100221B70) + 28);
  v36 = enum case for Text.Case.uppercase(_:);
  v37 = type metadata accessor for Text.Case();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v34 + v35, v36, v37);
  (*(v38 + 56))(v34 + v35, 0, 1, v37);
  *v34 = swift_getKeyPath();
  *v22 = v29;
  *(v22 + 1) = v31;
  v22[16] = v12 & 1;
  *(v22 + 3) = v83;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  v39 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v41 = &v22[*(v82 + 36)];
  *v41 = KeyPath;
  v41[1] = v39;
  v42 = enum case for DynamicTypeSize.medium(_:);
  v43 = v94;
  v44 = v95;
  v45 = v84;
  v83 = *(v95 + 104);
  (v83)(v84, enum case for DynamicTypeSize.medium(_:), v94);
  sub_10008246C();
  View.dynamicTypeSize(_:)();
  v46 = *(v44 + 8);
  v47 = v45;
  v95 = v44 + 8;
  v82 = v46;
  v46(v45, v43);
  sub_1000825DC(v22);
  if (qword_100220B80 != -1)
  {
    swift_once();
  }

  v48 = qword_1002390A0;
  *&v24[*(sub_1000024C4(&qword_1002244B0) + 36)] = v48;
  v49 = swift_getKeyPath();
  v50 = &v24[*(sub_1000024C4(&qword_1002244B8) + 36)];
  *v50 = v49;
  *(v50 + 1) = 1;
  v50[16] = 0;
  v51 = swift_getKeyPath();
  v52 = &v24[*(v85 + 36)];
  *v52 = v51;
  v52[1] = 0x3FE3333333333333;
  sub_1000826A0();

  v53 = v86;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v24, &qword_100224490);
  v54 = [objc_allocWithZone(NSDateFormatter) init];
  v55 = String._bridgeToObjectiveC()();
  [v54 setDateFormat:v55];

  isa = Date._bridgeToObjectiveC()().super.isa;
  v57 = [v54 stringFromDate:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Font.largeTitle.getter();
  static Font.Weight.light.getter();
  Font.weight(_:)();

  v58 = Text.font(_:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v96 = v58;
  v97 = v60;
  v65 = v62 & 1;
  v98 = v62 & 1;
  v99 = v64;
  v66 = v42;
  v67 = v94;
  (v83)(v47, v66, v94);
  v68 = v88;
  View.dynamicTypeSize(_:)();
  (v82)(v47, v67);
  sub_100017398(v58, v60, v65);

  LODWORD(v58) = static HierarchicalShapeStyle.primary.getter();
  *(v68 + *(sub_1000024C4(&qword_1002244E8) + 36)) = v58;
  LOBYTE(v58) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v69 = v68 + *(v89 + 36);
  *v69 = v58;
  *(v69 + 8) = v70;
  *(v69 + 16) = v71;
  *(v69 + 24) = v72;
  *(v69 + 32) = v73;
  *(v69 + 40) = 0;
  sub_100082904(&qword_1002244F0, &qword_100224480, &unk_1001B8DE0, sub_100082988);
  v74 = v90;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v68, &qword_100224480);
  v75 = v87;
  sub_10000BEB8(v53, v87, &qword_100224498);
  v76 = v91;
  sub_10000BEB8(v74, v91, &qword_100224488);
  v77 = v92;
  sub_10000BEB8(v75, v92, &qword_100224498);
  v78 = sub_1000024C4(&qword_100224510);
  sub_10000BEB8(v76, v77 + *(v78 + 48), &qword_100224488);
  sub_1000050C4(v74, &qword_100224488);
  sub_1000050C4(v53, &qword_100224498);
  sub_1000050C4(v76, &qword_100224488);
  return sub_1000050C4(v75, &qword_100224498);
}

uint64_t sub_100082108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100224418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100082178()
{
  result = qword_100224450;
  if (!qword_100224450)
  {
    sub_10000460C(&qword_100224420);
    sub_100082230();
    sub_10000BFFC(&qword_100224478, &qword_100224448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224450);
  }

  return result;
}

unint64_t sub_100082230()
{
  result = qword_100224458;
  if (!qword_100224458)
  {
    sub_10000460C(&qword_100224418);
    sub_100082904(&qword_100224460, &qword_100224438, &unk_1001B8DA0, sub_1000822E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224458);
  }

  return result;
}

unint64_t sub_1000822E8()
{
  result = qword_100224468;
  if (!qword_100224468)
  {
    sub_10000460C(&qword_100224470);
    sub_10000460C(&qword_100224408);
    sub_10000BFFC(&qword_100224430, &qword_100224408);
    swift_getOpaqueTypeConformance2();
    sub_100082414(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224468);
  }

  return result;
}

uint64_t sub_100082414(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10008246C()
{
  result = qword_1002244A0;
  if (!qword_1002244A0)
  {
    sub_10000460C(&qword_100223B60);
    sub_100082524();
    sub_10000BFFC(&qword_100222260, &qword_100222268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002244A0);
  }

  return result;
}

unint64_t sub_100082524()
{
  result = qword_1002244A8;
  if (!qword_1002244A8)
  {
    sub_10000460C(&qword_100221B68);
    sub_10000BFFC(&qword_100222258, &qword_100221B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002244A8);
  }

  return result;
}

uint64_t sub_1000825DC(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100223B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008264C@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_1000826A0()
{
  result = qword_1002244C0;
  if (!qword_1002244C0)
  {
    sub_10000460C(&qword_100224490);
    sub_100082758();
    sub_10000BFFC(&qword_1002244D8, &qword_1002244E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002244C0);
  }

  return result;
}

unint64_t sub_100082758()
{
  result = qword_1002244C8;
  if (!qword_1002244C8)
  {
    sub_10000460C(&qword_1002244B8);
    sub_100082810();
    sub_10000BFFC(&qword_100221B48, &qword_100221B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002244C8);
  }

  return result;
}

unint64_t sub_100082810()
{
  result = qword_1002244D0;
  if (!qword_1002244D0)
  {
    sub_10000460C(&qword_1002244B0);
    sub_10000460C(&qword_100223B60);
    sub_10008246C();
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002244D0);
  }

  return result;
}

uint64_t sub_100082904(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100082988()
{
  result = qword_1002244F8;
  if (!qword_1002244F8)
  {
    sub_10000460C(&qword_1002244E8);
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_100224500, &qword_100224508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002244F8);
  }

  return result;
}

unint64_t sub_100082A74()
{
  result = qword_100224518;
  if (!qword_100224518)
  {
    sub_10000460C(&qword_100224520);
    sub_100082178();
    sub_100082414(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224518);
  }

  return result;
}

void sub_100082B30()
{
  type metadata accessor for SportEventViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      sub_100082DA0();
      if (v2 <= 0x3F)
      {
        sub_100029AB4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100082C08(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(qword_100224528);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_100082CD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(qword_100224528);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100082DA0()
{
  if (!qword_1002219B8)
  {
    type metadata accessor for DismissAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1002219B8);
    }
  }
}

uint64_t sub_100082E3C@<X0>(uint64_t a1@<X1>, char a2@<W2>, void *a3@<X8>)
{
  State.init(wrappedValue:)();
  *a3 = v11;
  a3[1] = v12;
  type metadata accessor for RemoteViewConfiguration();
  sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  a3[2] = EnvironmentObject.init()();
  a3[3] = v6;
  v7 = type metadata accessor for SportEventView();
  v8 = *(v7 + 40);
  *(a3 + v8) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C0);
  result = swift_storeEnumTagMultiPayload();
  v10 = a3 + *(v7 + 44);
  *v10 = a1;
  v10[8] = a2 & 1;
  return result;
}

double sub_100082FDC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 96.0;
  if (v1 != 1)
  {
    return 12.0;
  }

  return result;
}

double sub_100083044()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 100.0;
  if (v1 != 1)
  {
    return 16.0;
  }

  return result;
}

double sub_1000830AC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 84.0;
  }

  v3 = static Solarium.isEnabled.getter();
  result = -4.0;
  if (v3)
  {
    return 16.0;
  }

  return result;
}

uint64_t sub_100083128()
{
  type metadata accessor for SportEventViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_10008317C()
{
  type metadata accessor for SportEventViewModel();
  type metadata accessor for State();
  State.projectedValue.getter();
  return v1;
}

uint64_t sub_1000831D4(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 44);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_10001BC5C(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100083454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v124 = type metadata accessor for TaskPriority();
  v123 = *(v124 - 8);
  v3 = __chkstk_darwin(v124);
  v122 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = *(a1 - 8);
  v131 = *(v121 + 64);
  __chkstk_darwin(v3);
  v120 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v116 = a1;
  type metadata accessor for Optional();
  v119 = type metadata accessor for Binding();
  v118 = *(v119 - 1);
  __chkstk_darwin(v119);
  v117 = &v94 - v7;
  v127 = type metadata accessor for NavigationPath();
  v8 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v129 = v8;
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for HeroImageView();
  v10 = *(v8 + 8);
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v6;
  v146 = v9;
  v147 = v10;
  v148 = WitnessTable;
  type metadata accessor for HeaderModule();
  v12 = type metadata accessor for ModifiedContent();
  v143 = swift_getWitnessTable();
  v144 = &protocol witness table for _PaddingLayout;
  v113 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v13 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v12;
  v146 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v146 = sub_10000460C(&qword_1002245B0);
  type metadata accessor for DetailsModule();
  v147 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  v128 = v6;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v148 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  v149 = type metadata accessor for Optional();
  v150 = sub_10000460C(&qword_1002245B8);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v14 = type metadata accessor for ScrollView();
  v15 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v14;
  v146 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v14;
  v146 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v16;
  v146 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v16;
  v146 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v18;
  v146 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100221D58);
  v20 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v18;
  v146 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_10000BFFC(&qword_100221D50, &qword_100221D58);
  v141 = v21;
  v142 = v22;
  v23 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v20;
  v146 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v20;
  v146 = v23;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_10001877C();
  OpaqueTypeMetadata2 = v24;
  v146 = &type metadata for String;
  v147 = v25;
  v148 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v24;
  v146 = &type metadata for String;
  v147 = v25;
  v148 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v27;
  v146 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v27;
  v146 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v29;
  v146 = &type metadata for Bool;
  v147 = v30;
  v148 = &protocol witness table for Bool;
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = sub_10000460C(&qword_1002245C0);
  OpaqueTypeMetadata2 = v29;
  v146 = &type metadata for Bool;
  v147 = v30;
  v148 = &protocol witness table for Bool;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_10000BFFC(&qword_1002245C8, &qword_1002245C0);
  OpaqueTypeMetadata2 = v31;
  v146 = v32;
  v147 = v33;
  v148 = v34;
  v104 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v31;
  v146 = v32;
  v147 = v33;
  v148 = v34;
  v102 = swift_getOpaqueTypeConformance2();
  v35 = type metadata accessor for NavigationStack();
  v103 = *(v35 - 8);
  __chkstk_darwin(v35);
  v100 = &v94 - v36;
  type metadata accessor for AccessibilityAttachmentModifier();
  v37 = type metadata accessor for ModifiedContent();
  v114 = *(v37 - 8);
  __chkstk_darwin(v37);
  v99 = &v94 - v38;
  v39 = swift_getWitnessTable();
  v96 = v39;
  v40 = sub_10008B87C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v139 = v39;
  v140 = v40;
  v41 = swift_getWitnessTable();
  v42 = *(v10 + 16);
  v43 = v116;
  v44 = swift_getWitnessTable();
  v45 = v37;
  v95 = v37;
  v46 = v128;
  OpaqueTypeMetadata2 = v37;
  v146 = v128;
  v147 = v43;
  v148 = v41;
  v98 = v41;
  v149 = v42;
  v150 = v44;
  v97 = v42;
  v47 = v44;
  v94 = v44;
  v106 = swift_getOpaqueTypeMetadata2();
  v110 = *(v106 - 8);
  __chkstk_darwin(v106);
  v126 = &v94 - v48;
  v49 = type metadata accessor for ModifiedContent();
  v115 = *(v49 - 8);
  __chkstk_darwin(v49);
  v127 = &v94 - v50;
  OpaqueTypeMetadata2 = v45;
  v146 = v46;
  v51 = v43;
  v147 = v43;
  v148 = v41;
  v149 = v42;
  v150 = v47;
  v101 = swift_getOpaqueTypeConformance2();
  v137 = v101;
  v138 = &protocol witness table for _AppearanceActionModifier;
  v108 = v49;
  v107 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v49;
  v146 = v107;
  v111 = &unk_1001C94C8;
  v112 = swift_getOpaqueTypeMetadata2();
  v113 = *(v112 - 8);
  v52 = __chkstk_darwin(v112);
  v105 = &v94 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v109 = &v94 - v54;
  v134 = v46;
  v55 = v46;
  v56 = v129;
  v135 = v129;
  v136 = v130;
  v57 = v100;
  NavigationStack.init<>(root:)();
  v58 = v99;
  View.accessibilityIdentifier(_:)();
  (*(v103 + 8))(v57, v35);
  v59 = v51;
  v60 = sub_10008317C();
  v62 = v61;
  v64 = v63;
  v132 = v55;
  v133 = v56;
  v65 = v56;
  swift_getKeyPath();
  OpaqueTypeMetadata2 = v60;
  v146 = v62;
  v147 = v64;
  type metadata accessor for SportEventViewModel();
  type metadata accessor for Binding();
  v66 = v117;
  Binding.subscript.getter();

  v67 = swift_allocObject();
  v68 = v55;
  *(v67 + 16) = v55;
  *(v67 + 24) = v65;
  v69 = v95;
  v70 = v59;
  View.sheet<A, B>(item:onDismiss:content:)();

  (*(v118 + 8))(v66, v119);
  (*(v114 + 8))(v58, v69);
  v71 = v121;
  v119 = *(v121 + 16);
  v72 = v120;
  v73 = v130;
  v119(v120, v130, v70);
  v74 = *(v71 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = v68;
  *(v75 + 24) = v65;
  v76 = *(v71 + 32);
  v76(v75 + ((v74 + 32) & ~v74), v72, v70);
  v77 = v106;
  v78 = v126;
  View.onAppear(perform:)();

  (*(v110 + 8))(v78, v77);
  v119(v72, v73, v70);
  type metadata accessor for MainActor();
  v79 = static MainActor.shared.getter();
  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = &protocol witness table for MainActor;
  v81 = v129;
  v80[4] = v128;
  v80[5] = v81;
  v76(v80 + ((v74 + 48) & ~v74), v72, v70);
  v82 = v122;
  v83 = v108;
  v84 = v107;
  j___sScP13userInitiatedScPvgZ();
  v85 = v105;
  v86 = v82;
  v87 = v82;
  v88 = v127;
  sub_10000250C(0, v86, 0xD000000000000025, 0x80000001001C6170, 145, &unk_1001B8FE8, v80, v105, v83, v84);
  (*(v123 + 8))(v87, v124);
  (*(v115 + 8))(v88, v83);
  OpaqueTypeMetadata2 = v83;
  v146 = v84;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = v109;
  v91 = v112;
  sub_1000EE87C(v85, v112, v89);
  v92 = v113[1];
  v92(v85, v91);
  sub_1000EE87C(v90, v91, v89);
  return (v92)(v90, v91);
}

uint64_t sub_1000845C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v166 = a1;
  v163 = a4;
  v164 = type metadata accessor for SportEventView();
  v162 = *(v164 - 8);
  v160 = *(v162 + 64);
  __chkstk_darwin(v164);
  v161 = &v105 - v6;
  v159 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for ContentMarginPlacement();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v153 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for ScrollIndicatorVisibility();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v105 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v165 = a3;
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for HeroImageView();
  v11 = *(a3 + 8);
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = a2;
  v175 = v10;
  v176 = v11;
  v177 = WitnessTable;
  type metadata accessor for HeaderModule();
  v13 = type metadata accessor for ModifiedContent();
  v172 = swift_getWitnessTable();
  v173 = &protocol witness table for _PaddingLayout;
  v14 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v13;
  v175 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v175 = sub_10000460C(&qword_1002245B0);
  type metadata accessor for DetailsModule();
  v176 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v177 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  v178 = type metadata accessor for Optional();
  v179 = sub_10000460C(&qword_1002245B8);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v108 = type metadata accessor for VStack();
  v107 = swift_getWitnessTable();
  v15 = type metadata accessor for ScrollView();
  v114 = *(v15 - 8);
  __chkstk_darwin(v15);
  v106 = &v105 - v16;
  v17 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v15;
  v175 = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  v112 = *(v18 - 8);
  __chkstk_darwin(v18);
  v111 = &v105 - v19;
  v116 = v15;
  OpaqueTypeMetadata2 = v15;
  v175 = v17;
  v110 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v18;
  v175 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeMetadata2();
  v128 = *(v21 - 8);
  __chkstk_darwin(v21);
  v123 = &v105 - v22;
  v113 = v18;
  OpaqueTypeMetadata2 = v18;
  v175 = OpaqueTypeConformance2;
  v109 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v21;
  v175 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v138 = *(v24 - 8);
  __chkstk_darwin(v24);
  v131 = &v105 - v25;
  sub_10000460C(&qword_100221D58);
  v143 = v24;
  v26 = type metadata accessor for ModifiedContent();
  v137 = *(v26 - 8);
  __chkstk_darwin(v26);
  v130 = &v105 - v27;
  v132 = v21;
  OpaqueTypeMetadata2 = v21;
  v175 = v23;
  v120 = v23;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_10000BFFC(&qword_100221D50, &qword_100221D58);
  v115 = v28;
  v170 = v28;
  v171 = v29;
  v30 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v26;
  v175 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v125 = *(v31 - 8);
  __chkstk_darwin(v31);
  v122 = &v105 - v32;
  v141 = v26;
  OpaqueTypeMetadata2 = v26;
  v175 = v30;
  v117 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_10001877C();
  OpaqueTypeMetadata2 = v31;
  v175 = &type metadata for String;
  v176 = v33;
  v177 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v139 = *(v35 - 8);
  __chkstk_darwin(v35);
  v133 = &v105 - v36;
  v127 = v31;
  OpaqueTypeMetadata2 = v31;
  v175 = &type metadata for String;
  v119 = v33;
  v176 = v33;
  v177 = v34;
  v118 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v35;
  v175 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v149 = *(v38 - 8);
  __chkstk_darwin(v38);
  v147 = &v105 - v39;
  v144 = v35;
  OpaqueTypeMetadata2 = v35;
  v175 = v37;
  v121 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v38;
  v175 = &type metadata for Bool;
  v176 = v40;
  v177 = &protocol witness table for Bool;
  v41 = swift_getOpaqueTypeMetadata2();
  v146 = *(v41 - 8);
  __chkstk_darwin(v41);
  v145 = &v105 - v42;
  v43 = sub_10000460C(&qword_1002245C0);
  v150 = v38;
  OpaqueTypeMetadata2 = v38;
  v175 = &type metadata for Bool;
  v136 = v40;
  v176 = v40;
  v177 = &protocol witness table for Bool;
  v44 = v106;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = sub_10000BFFC(&qword_1002245C8, &qword_1002245C0);
  v148 = v41;
  OpaqueTypeMetadata2 = v41;
  v175 = v43;
  v142 = v43;
  v134 = v45;
  v176 = v45;
  v177 = v46;
  v129 = v46;
  v140 = swift_getOpaqueTypeMetadata2();
  v135 = *(v140 - 8);
  v47 = __chkstk_darwin(v140);
  v124 = &v105 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v126 = &v105 - v49;
  v154 = a2;
  v167 = a2;
  v168 = v165;
  v169 = v166;
  static Axis.Set.vertical.getter();
  sub_1000E7A24();
  v50 = v105;
  static ScrollIndicatorVisibility.never.getter();
  sub_1000024C4(&qword_1002245D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  v52 = static Axis.Set.vertical.getter();
  *(inited + 32) = v52;
  v53 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v53;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v52)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v53)
  {
    Axis.Set.init(rawValue:)();
  }

  v54 = v155;
  v55 = v153;
  v56 = v123;
  v57 = v111;
  v58 = v50;
  v59 = v116;
  View.scrollIndicators(_:axes:)();
  (*(v151 + 8))(v58, v152);
  (*(v114 + 8))(v44, v59);
  static Edge.Set.top.getter();
  static ContentMarginPlacement.scrollContent.getter();
  v60 = v113;
  View.contentMargins(_:_:for:)();
  v61 = *(v54 + 8);
  v62 = v156;
  v61(v55, v156);
  (*(v112 + 8))(v57, v60);
  static Edge.Set.bottom.getter();
  v63 = v166;
  sub_100083128();
  if (v63[2])
  {

    sub_1000727B4(v64);

    static ContentMarginPlacement.scrollContent.getter();
    v65 = v131;
    v66 = v132;
    View.contentMargins(_:_:for:)();
    v61(v55, v62);
    (*(v128 + 8))(v56, v66);
    v67 = [objc_opt_self() systemGroupedBackgroundColor];
    OpaqueTypeMetadata2 = Color.init(uiColor:)();
    static Edge.Set.all.getter();
    v68 = v130;
    v69 = v143;
    View.background<A>(_:ignoresSafeAreaEdges:)();

    (*(v138 + 8))(v65, v69);
    v70 = v158;
    v71 = v157;
    v72 = v159;
    (*(v158 + 104))(v157, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v159);
    v73 = v122;
    v74 = v141;
    View.navigationBarTitleDisplayMode(_:)();
    (*(v70 + 8))(v71, v72);
    (*(v137 + 8))(v68, v74);
    v75 = v164;
    v76 = v166;
    sub_100083128();
    v77 = sub_100074440();
    v79 = v78;

    OpaqueTypeMetadata2 = v77;
    v175 = v79;
    v80 = v133;
    v81 = v127;
    View.navigationTitle<A>(_:)();

    (*(v125 + 8))(v73, v81);
    sub_100083128();
    sub_10006F46C();

    sub_1000024C4(&qword_1002245D8);
    type metadata accessor for ToolbarPlacement();
    *(swift_allocObject() + 16) = xmmword_1001B49B0;
    static ToolbarPlacement.navigationBar.getter();
    v82 = v147;
    v83 = v144;
    View.toolbarBackgroundVisibility(_:for:)();

    (*(v139 + 8))(v80, v83);
    v84 = swift_allocObject();
    v85 = v154;
    v86 = v165;
    *(v84 + 16) = v154;
    *(v84 + 24) = v86;
    v87 = v162;
    v88 = v161;
    (*(v162 + 16))(v161, v76, v75);
    v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = v85;
    *(v90 + 24) = v86;
    (*(v87 + 32))(v90 + v89, v88, v75);
    v104 = &protocol witness table for Bool;
    v91 = v145;
    v92 = v150;
    View.onScrollGeometryChange<A>(for:of:action:)();

    v93 = (*(v149 + 8))(v82, v92);
    __chkstk_darwin(v93);
    *(&v105 - 4) = v85;
    *(&v105 - 3) = v86;
    v104 = v76;
    v94 = v124;
    v95 = v148;
    v96 = v142;
    v97 = v134;
    v98 = v129;
    View.toolbar<A>(content:)();
    (*(v146 + 8))(v91, v95);
    OpaqueTypeMetadata2 = v95;
    v175 = v96;
    v176 = v97;
    v177 = v98;
    v99 = swift_getOpaqueTypeConformance2();
    v100 = v126;
    v101 = v140;
    sub_1000EE87C(v94, v140, v99);
    v102 = *(v135 + 8);
    v102(v94, v101);
    sub_1000EE87C(v100, v101, v99);
    return (v102)(v100, v101);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100085C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for HeroImageView();
  swift_getWitnessTable();
  type metadata accessor for HeaderModule();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v21 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = sub_10000460C(&qword_1002245B0);
  type metadata accessor for DetailsModule();
  v24 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v25 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  v26 = type metadata accessor for Optional();
  v27 = sub_10000460C(&qword_1002245B8);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for VStack();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v16[-v11];
  static HorizontalAlignment.leading.getter();
  v17 = a2;
  v18 = a3;
  v19 = a1;
  VStack.init(alignment:spacing:content:)();
  v13 = swift_getWitnessTable();
  sub_1000EE87C(v10, v6, v13);
  v14 = *(v7 + 8);
  v14(v10, v6);
  sub_1000EE87C(v12, v6, v13);
  return (v14)(v12, v6);
}

uint64_t sub_100086014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v277 = a4;
  v280 = type metadata accessor for AppModule();
  v275 = *(v280 - 8);
  __chkstk_darwin(v280);
  v246 = (&v238 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v276 = sub_1000024C4(&qword_1002245B8);
  v8 = __chkstk_darwin(v276);
  v297 = &v238 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v281 = &v238 - v10;
  type metadata accessor for Optional();
  v11 = type metadata accessor for Binding();
  __chkstk_darwin(v11 - 8);
  v244 = &v238 - v12;
  v13 = *(a3 + 8);
  v14 = type metadata accessor for UpcomingViewModel();
  __chkstk_darwin(v14 - 8);
  v242 = &v238 - v15;
  v16 = type metadata accessor for UpcomingModule();
  v273 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v245 = &v238 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v243 = &v238 - v19;
  v295 = v20;
  v296 = type metadata accessor for Optional();
  v292 = *(v296 - 8);
  v21 = __chkstk_darwin(v296);
  v299 = &v238 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v294 = &v238 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v267 = &v238 - v25;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v266 = AssociatedTypeWitness;
  v265 = AssociatedConformanceWitness;
  v27 = type metadata accessor for LocationModule();
  v270 = *(v27 - 8);
  __chkstk_darwin(v27);
  v269 = &v238 - v28;
  v271 = v29;
  v305 = type metadata accessor for ModifiedContent();
  v289 = *(v305 - 8);
  v30 = __chkstk_darwin(v305);
  v293 = &v238 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v268 = &v238 - v33;
  __chkstk_darwin(v32);
  v291 = &v238 - v34;
  v35 = type metadata accessor for DetailsModule();
  v263 = *(v35 - 8);
  __chkstk_darwin(v35);
  v262 = &v238 - v36;
  v264 = v37;
  v304 = type metadata accessor for ModifiedContent();
  v287 = *(v304 - 8);
  v38 = __chkstk_darwin(v304);
  v290 = &v238 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v261 = &v238 - v41;
  __chkstk_darwin(v40);
  v303 = &v238 - v42;
  v43 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v43 - 8);
  v272 = &v238 - v44;
  v238 = type metadata accessor for ServicesUpsellModule();
  __chkstk_darwin(v238);
  v241 = (&v238 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v278 = sub_1000024C4(&qword_100224648);
  v259 = *(v278 - 8);
  v46 = __chkstk_darwin(v278);
  v240 = &v238 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v239 = &v238 - v48;
  v274 = sub_1000024C4(&qword_1002245B0);
  v49 = __chkstk_darwin(v274);
  v288 = &v238 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v306 = &v238 - v51;
  v298 = a3;
  v52 = type metadata accessor for SportEventView();
  v300 = *(v52 - 8);
  v282 = *(v300 + 64);
  v53 = __chkstk_darwin(v52);
  v283 = &v238 - v54;
  __chkstk_darwin(v53);
  v56 = &v238 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = v56;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v57 = type metadata accessor for HeroImageView();
  v253 = v57;
  WitnessTable = swift_getWitnessTable();
  *&v322 = a2;
  *(&v322 + 1) = v57;
  v307 = a2;
  *&v323 = v13;
  *(&v323 + 1) = WitnessTable;
  v58 = type metadata accessor for HeaderModule();
  v255 = *(v58 - 8);
  __chkstk_darwin(v58);
  v249 = &v238 - v59;
  v60 = type metadata accessor for ModifiedContent();
  v258 = *(v60 - 8);
  __chkstk_darwin(v60);
  v257 = &v238 - v61;
  v256 = v58;
  v250 = swift_getWitnessTable();
  v330 = v250;
  v331 = &protocol witness table for _PaddingLayout;
  v62 = swift_getWitnessTable();
  v260 = v60;
  *&v322 = v60;
  *(&v322 + 1) = v62;
  v254 = v62;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v285 = *(OpaqueTypeMetadata2 - 8);
  v63 = __chkstk_darwin(OpaqueTypeMetadata2);
  v286 = &v238 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __chkstk_darwin(v63);
  v251 = &v238 - v66;
  __chkstk_darwin(v65);
  v301 = &v238 - v67;
  v279 = v13;
  v248 = type metadata accessor for HeaderViewModel();
  sub_100083128();
  sub_10006FDA0(v56);

  v68 = sub_100083128();
  v69 = sub_10007029C(v68);
  v71 = v70;

  sub_100083128();
  v72 = sub_1000703B0();
  v74 = v73;

  sub_100083128();
  v75 = sub_100070688();
  v77 = v76;

  v78 = sub_100083128();
  LOBYTE(a2) = sub_10007147C(v78);

  v324 = 0;
  v322 = 0u;
  v323 = 0u;
  sub_10002E5E4(v284, v69, v71, v72, v74, v75, v77, 0, 0, a2 & 1, &v322);
  v79 = v300;
  v80 = v283;
  v248 = *(v300 + 16);
  v248(v283, a1, v52);
  v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v82 = swift_allocObject();
  v83 = v298;
  *(v82 + 16) = v307;
  *(v82 + 24) = v83;
  v84 = *(v79 + 32);
  v85 = v80;
  v86 = v249;
  v300 = v79 + 32;
  v247 = v84;
  v84(v82 + v81, v85, v52);
  sub_10016A66C(sub_10008B420, v82, v86);
  static Edge.Set.horizontal.getter();
  v87 = v52;
  v308 = a1;
  if (sub_1000831D4(v52))
  {
    sub_100082FDC();
  }

  v88 = v83;
  v89 = v257;
  v90 = v256;
  View.padding(_:_:)();
  (*(v255 + 8))(v86, v90);
  v91 = v283;
  v92 = v308;
  v248(v283, v308, v87);
  v93 = swift_allocObject();
  v94 = v87;
  *(v93 + 16) = v307;
  *(v93 + 24) = v88;
  v247(v93 + v81, v91, v87);
  v95 = v251;
  v96 = v260;
  v97 = v254;
  View.onScrollVisibilityChange(threshold:_:)();

  (*(v258 + 8))(v89, v96);
  *&v322 = v96;
  *(&v322 + 1) = v97;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v99 = OpaqueTypeMetadata2;
  v282 = OpaqueTypeConformance2;
  sub_1000EE87C(v95, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v100 = *(v285 + 8);
  v300 = v285 + 8;
  v283 = v100;
  (v100)(v95, v99);
  v101 = v94;
  sub_100083128();
  v102 = *(v92 + 16);
  if (v102)
  {
    v103 = objc_allocWithZone(LSApplicationWorkspace);

    v104 = [v103 init];
    v105 = objc_opt_self();
    v106 = String._bridgeToObjectiveC()();
    v107 = [v105 applicationWithBundleIdentifier:v106];

    LOBYTE(v106) = sub_100074F98(v102, 0xD000000000000010, 0x80000001001C61D0, v107);

    v260 = v102;

    v108 = 1;
    v109 = v101;
    if (v106)
    {
      v110 = sub_100083128();
      v111 = sub_1000706A8(v110);
      v113 = v112;

      sub_100083128();
      v114 = v272;
      sub_10006F818(v272);

      sub_100083128();
      v115 = sub_100074B94();
      v117 = v116;

      v118 = sub_100083128();
      v119 = sub_100073580(v118);

      type metadata accessor for ServicesUpsellViewModel();
      v120 = swift_allocObject();
      ObservationRegistrar.init()();
      *(v120 + 16) = 1;
      *(v120 + 24) = v111;
      *(v120 + 32) = v113;
      sub_10001AE00(v114, v120 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_openURL, &qword_1002214F8);
      v121 = (v120 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_subtitle);
      *v121 = 0;
      v121[1] = 0;
      v122 = (v120 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_metricsQuery);
      *v122 = v115;
      v122[1] = v117;
      *(v120 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_analyticsPageNameType) = v119;
      v123 = v241;
      *v241 = v120;
      type metadata accessor for RemoteViewConfiguration();
      sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
      v123[1] = EnvironmentObject.init()();
      v123[2] = v124;
      v125 = *(v238 + 24);
      *(v123 + v125) = swift_getKeyPath();
      sub_1000024C4(qword_100221928);
      swift_storeEnumTagMultiPayload();
      v126 = static Edge.Set.horizontal.getter();
      if (sub_1000831D4(v109))
      {
        sub_100083044();
      }

      EdgeInsets.init(_all:)();
      v128 = v127;
      v130 = v129;
      v132 = v131;
      v134 = v133;
      v135 = v123;
      v136 = v240;
      sub_10008B8CC(v135, v240, type metadata accessor for ServicesUpsellModule);
      v137 = v136 + *(v278 + 36);
      *v137 = v126;
      *(v137 + 8) = v128;
      *(v137 + 16) = v130;
      *(v137 + 24) = v132;
      *(v137 + 32) = v134;
      *(v137 + 40) = 0;
      v138 = v136;
      v139 = v239;
      sub_10001AE00(v138, v239, &qword_100224648);
      sub_10001AE00(v139, v306, &qword_100224648);
      v108 = 0;
    }

    (*(v259 + 56))(v306, v108, 1, v278);
    type metadata accessor for DetailsViewModel();
    sub_100083128();
    v140 = v284;
    sub_10006FDA0(v284);

    sub_100083128();
    v141 = sub_100074554();
    v142 = v141;

    sub_1000F6130(v140, v141);
    v143 = v262;
    sub_1000924E4(v262);
    static Edge.Set.horizontal.getter();
    if (sub_1000831D4(v109))
    {
      sub_1000830AC();
    }

    else
    {
      static Solarium.isEnabled.getter();
    }

    v144 = v264;
    v145 = swift_getWitnessTable();
    v146 = v261;
    View.padding(_:_:)();
    (*(v263 + 8))(v143, v144);
    v328 = v145;
    v329 = &protocol witness table for _PaddingLayout;
    v147 = v304;
    v264 = swift_getWitnessTable();
    sub_1000EE87C(v146, v147, v264);
    v148 = *(v287 + 8);
    v284 = (v287 + 8);
    v278 = v148;
    v148(v146, v147);
    type metadata accessor for LocationViewModel();
    v149 = sub_100083128();
    v150 = sub_1000706A8(v149);
    v152 = v151;

    v153 = sub_100083128();
    v154 = v267;
    sub_1000707BC(v153);

    sub_100083128();
    v155 = sub_100074554();
    v156 = v155;

    v157 = sub_100083128();
    LOBYTE(v146) = sub_100073580(v157);

    sub_1001AC5D4(v150, v152, v154, v155, v146);
    v158 = v269;
    sub_100090A38(v269);
    static Edge.Set.horizontal.getter();
    if (sub_1000831D4(v109))
    {
      sub_100083044();
    }

    v159 = v271;
    v160 = swift_getWitnessTable();
    v161 = v268;
    View.padding(_:_:)();
    (*(v270 + 1))(v158, v159);
    v326 = v160;
    v327 = &protocol witness table for _PaddingLayout;
    v162 = v305;
    v269 = swift_getWitnessTable();
    sub_1000EE87C(v161, v162, v269);
    v163 = *(v289 + 8);
    v271 = v289 + 8;
    v270 = v163;
    v163(v161, v162);
    sub_100083128();
    LOBYTE(v162) = sub_100071694();

    if (v162)
    {
      v164 = sub_100083128();
      v165 = (v164 + *(*v164 + 168));
      v166 = v165[1];
      v268 = *v165;

      v167 = sub_100083128();
      v267 = sub_1000708C8(v167);
      v266 = v168;

      sub_100083128();
      v169 = sub_1000744CC();

      v170 = sub_10008317C();
      v172 = v171;
      v174 = v173;
      __chkstk_darwin(v170);
      swift_getKeyPath();
      *&v322 = v170;
      *(&v322 + 1) = v172;
      *&v323 = v174;
      type metadata accessor for SportEventViewModel();
      type metadata accessor for Binding();
      v175 = v244;
      Binding.subscript.getter();

      v176 = v242;
      sub_1000EF8A0(v268, v166, v267, v266, 1, v169, v175, v242);
      KeyPath = swift_getKeyPath();
      v178 = v245;
      sub_1000C72AC(v176, KeyPath, 0, v245);
      v179 = v295;
      v180 = swift_getWitnessTable();
      v181 = v243;
      sub_1000EE87C(v178, v179, v180);
      v182 = v273;
      v183 = *(v273 + 8);
      v183(v178, v179);
      sub_1000EE87C(v181, v179, v180);
      v183(v181, v179);
      v184 = v299;
      (*(v182 + 32))(v299, v178, v179);
      (*(v182 + 56))(v184, 0, 1, v179);
    }

    else
    {
      v184 = v299;
      (*(v273 + 56))(v299, 1, 1, v295);
      swift_getWitnessTable();
    }

    sub_1000E7690(v184, v294);
    v185 = *(v292 + 8);
    v307 = v292 + 8;
    v298 = v185;
    v185(v184, v296);
    sub_100083128();

    v187 = sub_1000727B4(v186);

    v188 = 1;
    if (v187)
    {
      v189 = sub_100083128();
      v190 = sub_1000706A8(v189);
      v192 = v191;

      sub_100083128();
      v193 = v272;
      sub_10006F818(v272);

      sub_100083128();

      v195 = sub_100011730(v194);
      v197 = v196;

      v198 = sub_100083128();
      v199 = sub_100073580(v198);

      type metadata accessor for AppViewModel();
      v200 = swift_allocObject();
      v201 = v200 + OBJC_IVAR____TtC16EventViewService12AppViewModel_subheaderTitle;
      *v201 = LocalizedStringKey.init(stringLiteral:)();
      *(v201 + 8) = v202;
      *(v201 + 16) = v203 & 1;
      *(v201 + 24) = v204;
      v205 = v200 + OBJC_IVAR____TtC16EventViewService12AppViewModel_descriptionTitle;
      *v205 = LocalizedStringKey.init(stringLiteral:)();
      *(v205 + 8) = v206;
      *(v205 + 16) = v207 & 1;
      *(v205 + 24) = v208;
      ObservationRegistrar.init()();
      *(v200 + 16) = 1;
      *(v200 + 24) = v190;
      *(v200 + 32) = v192;
      sub_10001AE00(v193, v200 + OBJC_IVAR____TtC16EventViewService12AppViewModel_eventURL, &qword_1002214F8);
      v209 = (v200 + OBJC_IVAR____TtC16EventViewService12AppViewModel_queryAppID);
      *v209 = v195;
      v209[1] = v197;
      v184 = v299;
      *(v200 + OBJC_IVAR____TtC16EventViewService12AppViewModel_shouldShowDiscoveryDetail) = 0;
      *(v200 + OBJC_IVAR____TtC16EventViewService12AppViewModel_analyticsPageNameType) = v199;
      v210 = swift_getKeyPath();
      v211 = v246;
      *v246 = v200;
      v317 = 0;
      v316 = 0;
      sub_1000024C4(&qword_10022AF10);
      State.init(wrappedValue:)();
      v212 = v323;
      *(v211 + 8) = v322;
      *(v211 + 24) = v212;
      type metadata accessor for RemoteViewConfiguration();
      sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
      *(v211 + 32) = EnvironmentObject.init()();
      *(v211 + 40) = v213;
      v214 = v280;
      v215 = *(v280 + 28);
      *(v211 + v215) = swift_getKeyPath();
      sub_1000024C4(qword_100221928);
      swift_storeEnumTagMultiPayload();
      v216 = v211 + *(v214 + 32);
      *v216 = v210;
      *(v216 + 8) = 0;
      sub_10008B8CC(v211, v281, type metadata accessor for AppModule);
      v188 = 0;
    }

    v217 = v281;
    (*(v275 + 56))(v281, v188, 1, v280);
    v218 = v286;
    v219 = OpaqueTypeMetadata2;
    (*(v285 + 16))(v286, v301);
    *&v322 = v218;
    v220 = v288;
    sub_10000BEB8(v306, v288, &qword_1002245B0);
    *(&v322 + 1) = v220;
    v221 = v290;
    v222 = v304;
    (*(v287 + 16))(v290, v303);
    *&v323 = v221;
    v223 = v293;
    v224 = v291;
    v225 = v305;
    (*(v289 + 16))(v293, v291);
    *(&v323 + 1) = v223;
    v226 = v184;
    v227 = v294;
    v228 = v184;
    v229 = v296;
    (*(v292 + 16))(v226, v294, v296);
    v324 = v228;
    v230 = v297;
    sub_10000BEB8(v217, v297, &qword_1002245B8);
    v325 = v230;
    v316 = v219;
    v317 = v274;
    v318 = v222;
    v319 = v225;
    v320 = v229;
    v321 = v276;
    v310 = v282;
    v311 = sub_10008B688();
    v312 = v264;
    v313 = v269;
    v309 = swift_getWitnessTable();
    v314 = swift_getWitnessTable();
    v315 = sub_10008B7C8();
    sub_1000E76FC(&v322, 6uLL, &v316);
    sub_1000050C4(v217, &qword_1002245B8);
    v231 = v298;
    v298(v227, v229);
    v232 = v270;
    v270(v224, v225);
    v233 = v222;
    v234 = v278;
    (v278)(v303, v233);
    sub_1000050C4(v306, &qword_1002245B0);
    v235 = OpaqueTypeMetadata2;
    v236 = v283;
    (v283)(v301, OpaqueTypeMetadata2);
    sub_1000050C4(v297, &qword_1002245B8);
    v231(v299, v229);
    v232(v293, v305);
    v234(v290, v304);
    sub_1000050C4(v288, &qword_1002245B0);
    return v236(v286, v235);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100088378@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();
  __chkstk_darwin(v1 - 8);
  v3 = v15 - v2;
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for HeroImageView();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v15 - v9;
  type metadata accessor for SportEventView();
  v11 = sub_100083128();
  sub_100071340(v11);

  sub_10010EFE0(v3, v8);
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C(v8, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_1000EE87C(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t sub_1000885A8(char a1)
{
  type metadata accessor for SportEventView();
  sub_100083128();
  sub_100071F10((a1 & 1) == 0);
}

uint64_t sub_100088604(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  type metadata accessor for SportEventView();
  sub_100083128();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  sub_10006F4F4(v3);
}

uint64_t sub_100088664@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a4;
  v94 = sub_1000024C4(&qword_1002245E0);
  __chkstk_darwin(v94);
  v93 = &v73 - v7;
  v92 = sub_1000024C4(&qword_1002245E8);
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v83 = &v73 - v8;
  v91 = sub_1000024C4(&qword_1002245F0);
  v82 = *(v91 - 8);
  __chkstk_darwin(v91);
  v81 = &v73 - v9;
  v75 = type metadata accessor for EnvironmentValues();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024C4(&qword_1002245F8);
  v12 = __chkstk_darwin(v11 - 8);
  v88 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v89 = &v73 - v14;
  v84 = sub_1000024C4(&qword_100224600);
  v15 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = &v73 - v16;
  v17 = type metadata accessor for ToolbarItemPlacement();
  v18 = __chkstk_darwin(v17 - 8);
  v80 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v76 = &v73 - v20;
  v85 = sub_1000024C4(&qword_100224608);
  v78 = *(v85 - 8);
  __chkstk_darwin(v85);
  v77 = &v73 - v21;
  v22 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v22 - 8);
  v24 = &v73 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000024C4(&qword_100224610);
  v30 = __chkstk_darwin(v29 - 8);
  v32 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v87 = &v73 - v33;
  v96 = a2;
  v34 = a3;
  v35 = type metadata accessor for SportEventView();
  v36 = sub_100083128();
  sub_100070DA0(v36, v24);

  v37 = (*(v26 + 48))(v24, 1, v25);
  v97 = a1;
  v86 = v35;
  if (v37 == 1)
  {
    sub_1000050C4(v24, &qword_1002214F8);
LABEL_7:
    (*(v15 + 56))(v32, 1, 1, v84);
    v40 = sub_10000BFFC(&qword_100224618, &qword_100224608);
    v98 = v85;
    v99 = v40;
    swift_getOpaqueTypeConformance2();
    v41 = v87;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000050C4(v32, &qword_100224610);
    goto LABEL_10;
  }

  (*(v26 + 32))(v28, v24, v25);
  sub_100083128();
  v38 = sub_1000715A0();

  if ((v38 & 1) == 0)
  {
    (*(v26 + 8))(v28, v25);
    goto LABEL_7;
  }

  if (static Solarium.isEnabled.getter())
  {
    v39 = static ToolbarItemPlacement.topBarLeading.getter();
  }

  else
  {
    v39 = static ToolbarItemPlacement.topBarTrailing.getter();
  }

  __chkstk_darwin(v39);
  v42 = v97;
  *(&v73 - 4) = v96;
  *(&v73 - 3) = a3;
  *(&v73 - 2) = v28;
  *(&v73 - 1) = v42;
  sub_1000024C4(&qword_100224630);
  sub_10008B204();
  v76 = a3;
  v43 = v77;
  ToolbarItem<>.init(placement:content:)();
  v44 = sub_10000BFFC(&qword_100224618, &qword_100224608);
  v45 = v79;
  v46 = v85;
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  v47 = v84;
  (*(v15 + 16))(v32, v45, v84);
  (*(v15 + 56))(v32, 0, 1, v47);
  v98 = v46;
  v99 = v44;
  swift_getOpaqueTypeConformance2();
  v48 = v87;
  static ToolbarContentBuilder.buildIf<A>(_:)();
  sub_1000050C4(v32, &qword_100224610);
  (*(v15 + 8))(v45, v47);
  v41 = v48;
  v49 = v43;
  v34 = v76;
  (*(v78 + 8))(v49, v46);
  (*(v26 + 8))(v28, v25);
LABEL_10:
  v50 = v89;
  v51 = v86;
  v52 = v97;
  v53 = *(v97 + 16);
  if (v53)
  {
    if (*(v53 + 88) && (*(v53 + 80) & 1) != 0)
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v54 & 1) == 0)
      {
        if (*(v53 + 32) > 1u || *(v53 + 32))
        {
          v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v66 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        v67 = &v52[*(v51 + 44)];
        v68 = *v67;
        if (v67[8] == 1)
        {
          if ((v68 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {

          static os_log_type_t.fault.getter();
          v69 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v70 = v73;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_10001BC5C(v68, 0);
          (*(v74 + 8))(v70, v75);
          if (v98 != 1)
          {
LABEL_26:
            v71 = v88;
            (*(v90 + 56))(v88, 1, 1, v92);
            v72 = sub_10000BFFC(&qword_100224628, &qword_1002245F0);
            v98 = v91;
            v99 = v72;
            swift_getOpaqueTypeConformance2();
            static ToolbarContentBuilder.buildIf<A>(_:)();
            sub_1000050C4(v71, &qword_1002245F8);
            goto LABEL_18;
          }
        }
      }
    }

    else
    {
    }

LABEL_17:
    v55 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v55);
    *(&v73 - 4) = v96;
    *(&v73 - 3) = v34;
    *(&v73 - 2) = v52;
    sub_10008B1A4();
    v56 = v81;
    ToolbarItem<>.init(placement:content:)();
    v57 = sub_10000BFFC(&qword_100224628, &qword_1002245F0);
    v58 = v83;
    v59 = v91;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v60 = v90;
    v61 = v88;
    v62 = v92;
    (*(v90 + 16))(v88, v58, v92);
    (*(v60 + 56))(v61, 0, 1, v62);
    v98 = v59;
    v99 = v57;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000050C4(v61, &qword_1002245F8);
    (*(v60 + 8))(v58, v62);
    (*(v82 + 8))(v56, v59);
LABEL_18:
    v63 = v93;
    v64 = *(v94 + 48);
    sub_10000BEB8(v41, v93, &qword_100224610);
    sub_10000BEB8(v50, v63 + v64, &qword_1002245F8);
    TupleToolbarContent.init(_:)();
    sub_1000050C4(v50, &qword_1002245F8);
    return sub_1000050C4(v41, &qword_100224610);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100089464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  v9 = type metadata accessor for SportEventView();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  v13 = type metadata accessor for ShareButton();
  __chkstk_darwin(v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  (*(v10 + 16))(v12, a2, v9);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v10 + 32))(v18 + v17, v12, v9);
  v19 = &v15[*(v13 + 20)];
  *v19 = sub_10008B2F0;
  v19[1] = v18;
  sub_10008B87C(&qword_100224640, type metadata accessor for ShareButton);
  View.accessibilityIdentifier(_:)();
  return sub_10008B308(v15);
}

uint64_t sub_1000896AC(uint64_t a1)
{
  type metadata accessor for SportEventView();
  sub_100083128();
  v2 = *(a1 + 16);
  if (v2)
  {

    sub_10007367C(0, 1, 0, 3u, v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100089788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SportEventView();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  result = (*(v9 + 32))(v13 + v12, v11, v8);
  *a4 = 0;
  *(a4 + 8) = sub_10008B364;
  *(a4 + 16) = v13;
  return result;
}

uint64_t sub_1000898CC(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SportEventView();
  sub_100083128();
  v6 = *(a1 + 16);
  if (v6)
  {

    sub_10007367C(0, 2, 0, 3u, v6);

    sub_100039CB8(v5);
    DismissAction.callAsFunction()();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100089A6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportEventView();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  type metadata accessor for SportEventViewModel();
  (*(v4 + 16))(v6, a1, a2);
  sub_10006EE8C(v6);
  KeyPath = swift_getKeyPath();
  sub_100082E3C(KeyPath, 0, v11);
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C(v11, v7, WitnessTable);
  v16 = *(v8 + 8);
  v16(v11, v7);
  sub_1000EE87C(v13, v7, WitnessTable);
  return v16(v13, v7);
}

uint64_t sub_100089C94(uint64_t a1)
{
  type metadata accessor for SportEventView();
  sub_100083128();
  if (*(a1 + 16))
  {

    sub_100073914(v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100089D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[259] = a5;
  v5[253] = a4;
  v5[247] = a3;
  v6 = type metadata accessor for SportEventView();
  v5[265] = v6;
  v7 = *(v6 - 8);
  v5[271] = v7;
  v5[277] = *(v7 + 64);
  v5[278] = swift_task_alloc();
  v5[279] = swift_task_alloc();
  v5[280] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[281] = static MainActor.shared.getter();
  v5[282] = dispatch thunk of Actor.unownedExecutor.getter();
  v5[283] = v8;

  return _swift_task_switch(sub_100089E84);
}

uint64_t sub_100089E84()
{
  v1 = v0[280];
  v17 = v0[279];
  v18 = v0[278];
  v2 = v0[271];
  v3 = v0[265];
  v4 = v0[259];
  v5 = v0[253];
  v19 = v0[247];
  v15 = v5;
  v16 = *(v2 + 16);
  v16(v1);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[284] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v20 = *(v2 + 32);
  v20(v7 + v6, v1, v3);
  v8 = swift_task_alloc();
  v0[285] = v8;
  *(v8 + 16) = &unk_1001B8FF8;
  *(v8 + 24) = v7;
  swift_asyncLet_begin();
  (v16)(v17, v19, v3);
  v9 = swift_allocObject();
  v0[286] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v20(v9 + v6, v17, v3);
  v10 = swift_task_alloc();
  v0[287] = v10;
  *(v10 + 16) = &unk_1001B9010;
  *(v10 + 24) = v9;
  swift_asyncLet_begin();
  (v16)(v18, v19, v3);
  v11 = swift_allocObject();
  v0[288] = v11;
  *(v11 + 16) = v15;
  *(v11 + 24) = v4;
  v20(v11 + v6, v18, v3);
  v12 = swift_task_alloc();
  v0[289] = v12;
  *(v12 + 16) = &unk_1001B9028;
  *(v12 + 24) = v11;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v13, sub_10008A150, v0 + 242);
}

uint64_t sub_10008A1A4()
{
  sub_100083128();
  sub_100073010();

  return _swift_asyncLet_finish(v0 + 1296, v1, sub_10008A220, v0 + 2080);
}

uint64_t sub_10008A23C()
{

  return _swift_asyncLet_finish(v0 + 656, v1, sub_10008A2B0, v0 + 2128);
}

uint64_t sub_10008A2CC()
{

  return _swift_asyncLet_finish(v0 + 16, v1, sub_10008A340, v0 + 2176);
}

uint64_t sub_10008A35C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008A408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10008A42C);
}

uint64_t sub_10008A42C()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008A4C0);
}

uint64_t sub_10008A4C0()
{

  type metadata accessor for SportEventView();
  *(v0 + 48) = sub_100083128();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10008C0E0;

  return sub_10007308C();
}

uint64_t sub_10008A57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10008A5A0);
}

uint64_t sub_10008A5A0()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008A634);
}

uint64_t sub_10008A634()
{

  type metadata accessor for SportEventView();
  *(v0 + 48) = sub_100083128();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10008A6F0;

  return sub_1000729C4();
}

uint64_t sub_10008A6F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10008A800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10008A824);
}

uint64_t sub_10008A824()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008A8B8);
}

uint64_t sub_10008A8B8()
{

  type metadata accessor for SportEventView();
  *(v0 + 48) = sub_100083128();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10008C0E0;

  return sub_100071F48();
}

__n128 sub_10008A9D8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10008AA18()
{
  v1 = type metadata accessor for SportEventView();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 40);
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_10001BC5C(*(v3 + *(v1 + 44)), *(v3 + *(v1 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_10008AB70()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for SportEventView() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000BD00;

  return sub_100089D5C(v6, v7, v0 + v5, v2, v3);
}

uint64_t sub_10008AC68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for SportEventView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100012AC8;

  return sub_10008A408(v0 + v5, v2, v3);
}

uint64_t sub_10008AD50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012AC8;

  return sub_1000E7A3C(a1, v4);
}

uint64_t sub_10008AE08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for SportEventView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100012AC8;

  return sub_10008A57C(v0 + v5, v2, v3);
}

uint64_t sub_10008AEF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BD00;

  return sub_1000E7A3C(a1, v4);
}

uint64_t sub_10008AFA8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for SportEventView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100012AC8;

  return sub_10008A800(v0 + v5, v2, v3);
}

uint64_t sub_10008B0A4@<X0>(BOOL *a1@<X8>)
{
  ScrollGeometry.contentInsets.getter();
  v3 = v2;
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3 + v5 > 4.0;
  return result;
}

uint64_t sub_10008B0F0(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for SportEventView();

  return sub_100088604(a1, a2);
}

unint64_t sub_10008B1A4()
{
  result = qword_100224620;
  if (!qword_100224620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224620);
  }

  return result;
}

unint64_t sub_10008B204()
{
  result = qword_100224638;
  if (!qword_100224638)
  {
    sub_10000460C(&qword_100224630);
    sub_10008B87C(&qword_100224640, type metadata accessor for ShareButton);
    sub_10008B87C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224638);
  }

  return result;
}

uint64_t sub_10008B308(uint64_t a1)
{
  v2 = type metadata accessor for ShareButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008B37C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for SportEventView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_10008B420@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SportEventView();

  return sub_100088378(a1);
}

uint64_t sub_10008B4AC()
{
  v1 = type metadata accessor for SportEventView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 40);
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_10001BC5C(*(v2 + *(v1 + 44)), *(v2 + *(v1 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_10008B5FC(char a1)
{
  type metadata accessor for SportEventView();

  return sub_1000885A8(a1);
}

unint64_t sub_10008B688()
{
  result = qword_100224650;
  if (!qword_100224650)
  {
    sub_10000460C(&qword_1002245B0);
    sub_10008B70C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224650);
  }

  return result;
}

unint64_t sub_10008B70C()
{
  result = qword_100224658;
  if (!qword_100224658)
  {
    sub_10000460C(&qword_100224648);
    sub_10008B87C(&qword_100224660, type metadata accessor for ServicesUpsellModule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224658);
  }

  return result;
}

unint64_t sub_10008B7C8()
{
  result = qword_100224668;
  if (!qword_100224668)
  {
    sub_10000460C(&qword_1002245B8);
    sub_10008B87C(&qword_100224670, type metadata accessor for AppModule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224668);
  }

  return result;
}

uint64_t sub_10008B87C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008B8CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008B934()
{
  type metadata accessor for NavigationPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for HeroImageView();
  swift_getWitnessTable();
  type metadata accessor for HeaderModule();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002245B0);
  type metadata accessor for DetailsModule();
  type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  type metadata accessor for Optional();
  sub_10000460C(&qword_1002245B8);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100221D58);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_100221D50, &qword_100221D58);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_10001877C();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002245C0);
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_1002245C8, &qword_1002245C0);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SportEventView();
  swift_getWitnessTable();
  sub_10008B87C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

void sub_10008C108()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 category];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      v9 = [v0 sharedInstance];
      v22 = 0;
      v10 = [v9 setCategory:AVAudioSessionCategoryPlayback withOptions:1 error:&v22];

      v11 = v22;
      if (v10)
      {

        v12 = v11;
      }

      else
      {
        v13 = v22;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100220C90 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_10000BE10(v14, qword_100239158);
        swift_errorRetain();
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v22 = v18;
          *v17 = 136315138;
          swift_getErrorValue();
          v19 = Error.localizedDescription.getter();
          v21 = sub_100139F7C(v19, v20, &v22);

          *(v17 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v15, v16, "Failed to configure audio session for playback, %s", v17, 0xCu);
          sub_100012A7C(v18);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_10008C468(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Calendar();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TimeZone();
  v38 = *(v41 - 8);
  v7 = __chkstk_darwin(v41);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v34 - v13;
  v34 = type metadata accessor for Date();
  v15 = *(v34 - 8);
  v16 = __chkstk_darwin(v34);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  static Date.now.getter();
  v21 = *(a2 + 168);
  v37 = v2;
  v21(a1, a2);
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  v23 = v38;
  v35 = v10;
  v24 = TimeZone.secondsFromGMT(for:)();
  v25 = v40;
  static Calendar.current.getter();
  v26 = v39;
  Calendar.timeZone.getter();
  v27 = v41;
  (*(v42 + 8))(v25, v43);
  v28 = TimeZone.secondsFromGMT(for:)();
  v29 = *(v23 + 8);
  result = v29(v26, v27);
  if (__OFSUB__(v24, v28))
  {
    __break(1u);
  }

  else
  {
    Date.addingTimeInterval(_:)();
    v29(v35, v27);
    v31 = *(v15 + 8);
    v32 = v34;
    v31(v18, v34);
    v33 = sub_10008C86C(v20, a1, v36);
    v31(v20, v32);
    return (v33 & 1) == 0;
  }

  return result;
}

uint64_t sub_10008C86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = type metadata accessor for Date();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DateInterval();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v18 - v13;
  (*(a3 + 168))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1000224A8(AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  DateInterval.end.getter();
  (*(v8 + 8))(v10, v19);
  v16 = static Date.> infix(_:_:)();
  (*(v5 + 8))(v7, v21);
  return v16 & 1;
}

unint64_t sub_10008CAF4(char a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v33 - v7;
  v9 = [objc_opt_self() mainBundle];
  v10 = "AppIDAttributionException";
  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();
  v13 = [v9 URLForResource:v11 withExtension:v12];

  if (v13)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v6, v2);
    v20 = Data.init(contentsOf:options:)();
    v22 = v21;
    v23 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v34[0] = 0;
    v25 = [v23 propertyListWithData:isa options:0 format:0 error:v34];

    if (v25)
    {
      v26 = v34[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000024C4(qword_100224678);
      if (swift_dynamicCast())
      {
        v27 = v33[1];
      }

      else
      {
        v27 = sub_1001A9E2C(_swiftEmptyArrayStorage);
      }

      sub_1000606F8(v20, v22);
    }

    else
    {
      v28 = v34[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000606F8(v20, v22);
      if (qword_100220C90 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000BE10(v14, qword_100239158);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v33[0] = v2;
        v17 = swift_slowAlloc();
        v34[0] = swift_slowAlloc();
        *v17 = 136315394;
        if (a1)
        {
          if (a1 == 1)
          {
            v18 = 0xD000000000000019;
          }

          else
          {
            v18 = 0xD000000000000014;
          }

          if (a1 == 1)
          {
            v10 = "ViewModulesException";
          }

          else
          {
            v10 = "ption.view-modules";
          }
        }

        else
        {
          v18 = 0xD000000000000016;
        }

        v29 = sub_100139F7C(v18, v10 | 0x8000000000000000, v34);

        *(v17 + 4) = v29;
        *(v17 + 12) = 2080;
        swift_getErrorValue();
        v30 = Error.localizedDescription.getter();
        v32 = sub_100139F7C(v30, v31, v34);

        *(v17 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v15, v16, "Error fetching allow list for %s %s", v17, 0x16u);
        swift_arrayDestroy();

        v2 = v33[0];
      }

      else
      {
      }

      v27 = sub_1001A9E2C(_swiftEmptyArrayStorage);
    }

    (*(v3 + 8))(v8, v2);
    return v27;
  }

  else
  {

    return sub_1001A9E2C(_swiftEmptyArrayStorage);
  }
}

unint64_t sub_10008D070(uint64_t a1, uint64_t a2)
{
  v4 = sub_10008CAF4(2);
  if (!*(v4 + 16))
  {
    goto LABEL_9;
  }

  v5 = sub_10005846C(0xD000000000000032, 0x80000001001C6260);
  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_100026D04(*(v4 + 56) + 32 * v5, v11);

  sub_1000024C4(qword_100224678);
  if ((swift_dynamicCast() & 1) == 0 || !v10)
  {
    return sub_1001A9E2C(_swiftEmptyArrayStorage);
  }

  if (*(v10 + 16) && (v7 = sub_10005846C(a1, a2), (v8 & 1) != 0))
  {
    sub_100026D04(*(v10 + 56) + 32 * v7, v11);

    sub_1000024C4(qword_100224678);
    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
LABEL_9:
  }

  return sub_1001A9E2C(_swiftEmptyArrayStorage);
}

uint64_t sub_10008D1FC(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10008D7E0(a1);
  (*(*(*(v2 + qword_1002390E8) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_10008D2EC(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for RemoteHostingController();
  objc_msgSendSuper2(&v4, "viewDidDisappear:", a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10005FE74();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10008D3D4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10008D2EC(a3);
}

void *sub_10008D46C(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_1002390E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v13 - v6;
  *(v2 + *(v8 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a2, v4);
  v9 = UIHostingController.init(coder:rootView:)();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

id sub_10008D5C0(void *a1)
{
  *(v1 + *((swift_isaMask & *v1) + qword_1002390E8 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RemoteHostingController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10008D700()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteHostingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10008D7E0(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + qword_1002390E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  *(v1 + *(v7 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(v6, a1, v3);
  return UIHostingController.init(rootView:)();
}

uint64_t sub_10008D930(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x4449656C646E7562;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x656D614E65676170;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x614E656C75646F6DLL;
    }

    else
    {
      v3 = 0x6341656C75646F6DLL;
    }

    if (v2 == 3)
    {
      v4 = 0xEA0000000000656DLL;
    }

    else
    {
      v4 = 0xEC0000006E6F6974;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x4449656C646E7562;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x656D614E65676170)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEA0000000000656DLL;
    if (v3 != 0x614E656C75646F6DLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC0000006E6F6974;
    if (v3 != 0x6341656C75646F6DLL)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_10008DADC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x7473696C746573;
  if (a1 != 5)
  {
    v5 = 0x676E696D6F637075;
    v4 = 0xE800000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x636973756DLL;
  if (a1 != 3)
  {
    v7 = 0x7473696C79616C70;
    v6 = 0xE900000000000073;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x7261646E656C6163;
  if (a1 != 1)
  {
    v8 = 0x6E6F697461636F6CLL;
  }

  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v8 = 7368801;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE800000000000000;
      if (a2 == 1)
      {
        if (v9 != 0x7261646E656C6163)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 0x6E6F697461636F6CLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE300000000000000;
      if (v9 != 7368801)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x7473696C746573)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x676E696D6F637075)
      {
LABEL_39:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x636973756DLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0xE900000000000073;
    if (v9 != 0x7473696C79616C70)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_10008DD00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6465646E61707865;
    }

    else
    {
      v4 = 0x6E6564646968;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746361706D6F63;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x6465646E61707865;
  if (a2 != 2)
  {
    v7 = 0x6E6564646968;
    v6 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x746361706D6F63;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10008DE3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E657665;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x747369747261;
    }

    else
    {
      v4 = 0x746E657665;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xE500000000000000;
    v4 = 0x65756E6576;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3 == 3)
    {
      v5 = 0x80000001001C42E0;
    }

    else
    {
      v5 = 0x80000001001C4300;
    }
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0xE600000000000000;
    v8 = 0x747369747261;
    v9 = a2 == 0;
LABEL_20:
    if (v9)
    {
      v10 = v2;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    if (v4 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a2 != 2)
  {
    v2 = 0xD000000000000011;
    v6 = 0x80000001001C42E0;
    v7 = 0x80000001001C4300;
    v8 = 0xD000000000000016;
    v9 = a2 == 3;
    goto LABEL_20;
  }

  v11 = 0xE500000000000000;
  if (v4 != 0x65756E6576)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v5 != v11)
  {
LABEL_30:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

Swift::Int sub_10008DFB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008E0CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x73656C75646F6DLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x80000001001C4250;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x73656C75646F6DLL;
  }

  if (*a2)
  {
    v6 = 0x80000001001C4250;
  }

  else
  {
    v6 = 0xE700000000000000;
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

Swift::Int sub_10008E178()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008E200()
{
  String.hash(into:)();
}

Swift::Int sub_10008E274()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10008E304(unint64_t *a1@<X8>)
{
  v2 = 0x80000001001C4250;
  v3 = 0x73656C75646F6DLL;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_10008E348()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x73656C75646F6DLL;
  }
}

uint64_t sub_10008E388@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100211480, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10008E404(uint64_t a1)
{
  v2 = sub_10008F9EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008E440(uint64_t a1)
{
  v2 = sub_10008F9EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10008E494()
{
  String.hash(into:)();
}

unint64_t sub_10008E5A4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008F69C(*a1);
  *a2 = result;
  return result;
}

void sub_10008E5D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368801;
  v5 = 0xE700000000000000;
  v6 = 0x7473696C746573;
  if (v2 != 5)
  {
    v6 = 0x676E696D6F637075;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x636973756DLL;
  if (v2 != 3)
  {
    v8 = 0x7473696C79616C70;
    v7 = 0xE900000000000073;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7261646E656C6163;
  if (v2 != 1)
  {
    v9 = 0x6E6F697461636F6CLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

Swift::Int sub_10008E6B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008E778()
{
  String.hash(into:)();
}

Swift::Int sub_10008E824()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10008E8E0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008F6E8(*a1);
  *a2 = result;
  return result;
}

void sub_10008E910(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0xE800000000000000;
  v5 = 0x6465646E61707865;
  if (*v1 != 2)
  {
    v5 = 0x6E6564646968;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x746361706D6F63;
    v2 = 0xE700000000000000;
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

uint64_t sub_10008E9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E61726165707061 && a2 == 0xEA00000000006563)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10008EA44(uint64_t a1)
{
  v2 = sub_100090170();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008EA80(uint64_t a1)
{
  v2 = sub_100090170();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10008EABC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7368801;
  }

  else
  {
    v3 = 0x6C61646F6DLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7368801;
  }

  else
  {
    v5 = 0x6C61646F6DLL;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

Swift::Int sub_10008EB58()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008EBD0()
{
  String.hash(into:)();
}

Swift::Int sub_10008EC34()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008ECB4@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
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

void sub_10008ED10(uint64_t *a1@<X8>)
{
  v2 = 7368801;
  if (!*v1)
  {
    v2 = 0x6C61646F6DLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10008ED54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for DecodingError.Context();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];

  v19._countAndFlagsBits = v8;
  v19._object = v9;
  result = sub_10008F69C(v19);
  if (result == 7)
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v17 = 0xD000000000000018;
    v18 = 0x80000001001C6310;
    v11._countAndFlagsBits = v8;
    v11._object = v9;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0x6F6E2073656F6420;
    v12._object = 0xEF74736978652074;
    String.append(_:)(v12);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v13 = type metadata accessor for DecodingError();
    swift_allocError();
    v15 = v14;
    v16 = *(sub_1000024C4(&qword_100224738) + 48);
    *v15 = &type metadata for ViewModulesConfiguration.Name;
    (*(v5 + 16))(&v15[v16], v7, v4);
    (*(*(v13 - 8) + 104))(v15, enum case for DecodingError.valueNotFound(_:), v13);
    swift_willThrow();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10008EF8C(void *a1, char a2)
{
  v5 = sub_1000024C4(&qword_100224740);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10001BED0(a1, a1[3]);
  sub_10008F9EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10008FA94();
  v11 = Dictionary.mapKeys<A>(_:)();
  v10[15] = 0;
  sub_1000024C4(&qword_100224710);
  sub_10008FB3C(&qword_100224748, sub_10008FBC0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v10[14] = a2 & 1;
    v10[13] = 1;
    sub_10008FC14();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

_BYTE *sub_10008F1D0@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  v3 = 0xE300000000000000;
  v4 = 7368801;
  v5 = 0xE700000000000000;
  v6 = 0x7473696C746573;
  if (v2 != 5)
  {
    v6 = 0x676E696D6F637075;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x636973756DLL;
  if (v2 != 3)
  {
    v8 = 0x7473696C79616C70;
    v7 = 0xE900000000000073;
  }

  if (*result <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7261646E656C6163;
  if (v2 != 1)
  {
    v9 = 0x6E6F697461636F6CLL;
  }

  if (*result)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
  }

  if (*result <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*result > 2u)
  {
    v3 = v5;
  }

  *a2 = v10;
  a2[1] = v3;
  return result;
}

void *sub_10008F2A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10008F734(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_10008F3AC(void *a1, char a2)
{
  v4 = sub_1000024C4(&qword_100224780);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_10001BED0(a1, a1[3]);
  sub_100090170();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2;
  sub_100090218();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void *sub_10008F4F4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100090000(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10008F69C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002114D0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10008F6E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100211598, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void *sub_10008F734(void *a1)
{
  v3 = sub_1000024C4(&qword_100224700);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_10001BED0(a1, a1[3]);
  sub_10008F9EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000024C4(&qword_100224710);
    v9[7] = 0;
    sub_10008FB3C(&qword_100224718, sub_10008FA40);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10008FA94();
    Dictionary.mapKeys<A>(_:)();

    v9[5] = 1;
    sub_10008FAE8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[6];
  }

  sub_100012A7C(a1);
  return v7;
}

unint64_t sub_10008F9EC()
{
  result = qword_100224708;
  if (!qword_100224708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224708);
  }

  return result;
}

unint64_t sub_10008FA40()
{
  result = qword_100224720;
  if (!qword_100224720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224720);
  }

  return result;
}

unint64_t sub_10008FA94()
{
  result = qword_100224728;
  if (!qword_100224728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224728);
  }

  return result;
}

unint64_t sub_10008FAE8()
{
  result = qword_100224730;
  if (!qword_100224730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224730);
  }

  return result;
}

uint64_t sub_10008FB3C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(&qword_100224710);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008FBC0()
{
  result = qword_100224750;
  if (!qword_100224750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224750);
  }

  return result;
}

unint64_t sub_10008FC14()
{
  result = qword_100224758;
  if (!qword_100224758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224758);
  }

  return result;
}

unint64_t sub_10008FC68()
{
  result = qword_100224760;
  if (!qword_100224760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224760);
  }

  return result;
}

uint64_t sub_10008FCBC(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_10008D070(a1, a2);
  v4 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = 0;
  v6 = [v4 dataWithPropertyList:isa format:100 options:0 error:&v20];

  v7 = v20;
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100090314();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_1000606F8(v8, v10);
    return v20;
  }

  else
  {
    v11 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000BE10(v12, qword_100239158);

    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_100139F7C(a1, a2, &v20);
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = sub_100139F7C(v16, v17, &v20);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "Empty or invalid view module configuration for ID: %s. Error: %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }
}

void *sub_100090000(void *a1)
{
  v3 = sub_1000024C4(&qword_100224768);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_10001BED0(a1, a1[3]);
  sub_100090170();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100012A7C(a1);
  }

  else
  {
    sub_1000901C4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100012A7C(a1);
  }

  return v7;
}

unint64_t sub_100090170()
{
  result = qword_100224770;
  if (!qword_100224770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224770);
  }

  return result;
}

unint64_t sub_1000901C4()
{
  result = qword_100224778;
  if (!qword_100224778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224778);
  }

  return result;
}

unint64_t sub_100090218()
{
  result = qword_100224788;
  if (!qword_100224788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224788);
  }

  return result;
}

unint64_t sub_10009026C()
{
  result = qword_100224790;
  if (!qword_100224790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224790);
  }

  return result;
}

unint64_t sub_1000902C0()
{
  result = qword_100224798;
  if (!qword_100224798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224798);
  }

  return result;
}

unint64_t sub_100090314()
{
  result = qword_1002247A0;
  if (!qword_1002247A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicPlaybackState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MusicPlaybackState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ViewModulesConfiguration.Name(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewModulesConfiguration.Name(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100090664()
{
  result = qword_1002247A8;
  if (!qword_1002247A8)
  {
    sub_10000460C(&qword_1002247B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247A8);
  }

  return result;
}

unint64_t sub_1000906CC()
{
  result = qword_1002247B8;
  if (!qword_1002247B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247B8);
  }

  return result;
}

unint64_t sub_100090724()
{
  result = qword_1002247C0;
  if (!qword_1002247C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247C0);
  }

  return result;
}

unint64_t sub_10009077C()
{
  result = qword_1002247C8;
  if (!qword_1002247C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247C8);
  }

  return result;
}

unint64_t sub_1000907D4()
{
  result = qword_1002247D0;
  if (!qword_1002247D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247D0);
  }

  return result;
}

unint64_t sub_10009082C()
{
  result = qword_1002247D8;
  if (!qword_1002247D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247D8);
  }

  return result;
}

unint64_t sub_100090884()
{
  result = qword_1002247E0;
  if (!qword_1002247E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247E0);
  }

  return result;
}

unint64_t sub_1000908DC()
{
  result = qword_1002247E8;
  if (!qword_1002247E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247E8);
  }

  return result;
}

unint64_t sub_100090934()
{
  result = qword_1002247F0;
  if (!qword_1002247F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247F0);
  }

  return result;
}

unint64_t sub_10009098C()
{
  result = qword_1002247F8[0];
  if (!qword_1002247F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002247F8);
  }

  return result;
}

uint64_t sub_1000909FC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100090A38@<X0>(uint64_t a1@<X8>)
{
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v2 = (a1 + *(type metadata accessor for LocationModule() + 36));
  type metadata accessor for RemoteViewConfiguration();
  sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v2 = result;
  v2[1] = v4;
  return result;
}

void sub_100090B60()
{
  type metadata accessor for LocationViewModel();
  type metadata accessor for Bindable();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100090C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LocationViewModel();
  v6 = type metadata accessor for Bindable();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
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

uint64_t sub_100090CF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for LocationViewModel();
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_100090E00()
{
  type metadata accessor for LocationViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_100090E40()
{
  type metadata accessor for LocationViewModel();
  type metadata accessor for Bindable();

  return Bindable.projectedValue.getter();
}

uint64_t sub_100090E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for LocationViewModel();
  v8 = type metadata accessor for Bindable();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v35 = sub_1000024C4(&qword_100224880);
  __chkstk_darwin(v35);
  v13 = &v33 - v12;
  v36 = sub_1000024C4(&qword_100224888);
  __chkstk_darwin(v36);
  v15 = &v33 - v14;
  v16 = sub_1000024C4(&qword_100224890);
  v17 = *(v16 - 8);
  v37 = v16;
  v38 = v17;
  __chkstk_darwin(v16);
  v34 = &v33 - v18;
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0x4024000000000000;
  v13[16] = 0;
  v19 = sub_1000024C4(&qword_100224898);
  sub_10009131C(v2, v7, v6, &v13[*(v19 + 44)]);
  sub_100090E40();
  v43 = v7;
  v44 = v6;
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v9 + 8))(v11, v8);
  v20 = sub_100090E00();
  v21 = *(v20 + *(*v20 + 120));

  sub_100092078();
  View.mapItemDetailSheet(isPresented:item:displaysMap:)();

  sub_1000050C4(v13, &qword_100224880);
  LOBYTE(v13) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v22 = v36;
  v23 = &v15[*(v36 + 36)];
  *v23 = v13;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = v39;
  static AccessibilityChildBehavior.contain.getter();
  v29 = sub_1000920DC();
  v30 = v34;
  View.accessibilityElement(children:)();
  (*(v40 + 8))(v28, v41);
  sub_1000921A4(v15);
  v45 = v22;
  v46 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v37;
  View.accessibilityIdentifier(_:)();
  return (*(v38 + 8))(v30, v31);
}

uint64_t sub_10009131C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a1;
  v104 = a4;
  v97 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v97);
  v101 = (&v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = a2;
  v90 = a3;
  v91 = type metadata accessor for LocationModule();
  v88 = *(v91 - 8);
  v86 = *(v88 + 64);
  __chkstk_darwin(v91);
  v87 = &v86 - v7;
  v95 = sub_1000024C4(&qword_1002248B0);
  __chkstk_darwin(v95);
  v100 = &v86 - v8;
  v96 = sub_1000024C4(&qword_1002248B8);
  v9 = __chkstk_darwin(v96);
  v103 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v98 = &v86 - v12;
  __chkstk_darwin(v11);
  v102 = &v86 - v13;
  v105 = type metadata accessor for AccessibilityTraits();
  v99 = *(v105 - 8);
  __chkstk_darwin(v105);
  v94 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1000024C4(&qword_100223418);
  v15 = __chkstk_darwin(v93);
  v17 = (&v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v106 = &v86 - v18;
  sub_100090E00();

  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  v23 = v22;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_100017398(v19, v21, v23 & 1);

  LOBYTE(v19) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v107) = v28 & 1;
  v112 = 0;
  *&v108 = v24;
  *(&v108 + 1) = v26;
  LOBYTE(v109) = v28 & 1;
  *(&v109 + 1) = v30;
  LOBYTE(v110) = v19;
  *(&v110 + 1) = v31;
  *v111 = v32;
  *&v111[8] = v33;
  *&v111[16] = v34;
  v111[24] = 0;
  sub_1000024C4(&qword_100223488);
  sub_10005D968();
  v35 = v91;
  View.accessibilityIdentifier(_:)();
  v113[2] = v110;
  *v114 = *v111;
  *&v114[9] = *&v111[9];
  v113[0] = v108;
  v113[1] = v109;
  v36 = v92;
  sub_1000050C4(v113, &qword_100223488);
  v37 = v94;
  static AccessibilityTraits.isHeader.getter();
  ModifiedContent<>.accessibility(addTraits:)();
  v99[1](v37, v105);
  v99 = v17;
  sub_1000050C4(v17, &qword_100223418);
  sub_100090E00();
  v38 = sub_1001AC644();
  v40 = v39;

  v41 = sub_100090E00();
  v42 = *(v41 + *(*v41 + 120));
  v43 = v42;

  sub_100090E00();
  if (*&v36[*(v35 + 36)])
  {

    v45 = sub_1001AC6B8(v44);

    v94 = v38;
    v93 = v40;
    if (v45)
    {
      v46 = v88;
      v47 = v87;
      (*(v88 + 16))(v87, v36, v35);
      v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v49 = swift_allocObject();
      v50 = v90;
      *(v49 + 16) = v89;
      *(v49 + 24) = v50;
      (*(v46 + 32))(v49 + v48, v47, v35);
      v105 = sub_10009231C;
    }

    else
    {
      v105 = 0;
      v49 = 0;
    }

    v92 = v42;
    v107 = 0;
    sub_1000024C4(&qword_1002248C0);
    State.init(wrappedValue:)();
    v90 = *(&v108 + 1);
    v91 = v108;
    v107 = 0;
    State.init(wrappedValue:)();
    v51 = v108;
    if (qword_100220BC8 != -1)
    {
      swift_once();
    }

    v52 = qword_1002390E0;
    v53 = v100;
    v54 = &v100[*(v95 + 36)];
    v55 = v97;
    v56 = *(v97 + 20);
    v57 = enum case for RoundedCornerStyle.continuous(_:);
    v58 = type metadata accessor for RoundedCornerStyle();
    v59 = *(*(v58 - 8) + 104);
    v59(v54 + v56, v57, v58);
    *v54 = v52;
    v54[1] = v52;
    *(v54 + *(sub_1000024C4(&qword_100221C80) + 36)) = 256;
    v60 = v93;
    *v53 = v94;
    *(v53 + 8) = v60;
    v61 = v105;
    *(v53 + 16) = v92;
    *(v53 + 24) = v61;
    v62 = v91;
    *(v53 + 32) = v49;
    *(v53 + 40) = v62;
    *(v53 + 48) = v90;
    *(v53 + 56) = v51;
    v63 = v101;
    v59(v101 + *(v55 + 20), v57, v58);
    *v63 = v52;
    v63[1] = v52;
    v64 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v65 = Color.init(uiColor:)();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v66 = v98;
    v67 = &v98[*(v96 + 36)];
    sub_100039704(v63, v67);
    v68 = v67 + *(sub_1000024C4(&qword_100222870) + 36);
    v69 = v109;
    *v68 = v108;
    *(v68 + 16) = v69;
    *(v68 + 32) = v110;
    v70 = sub_1000024C4(&qword_100222878);
    *(v67 + *(v70 + 52)) = v65;
    *(v67 + *(v70 + 56)) = 256;
    v71 = static Alignment.center.getter();
    v73 = v72;
    sub_100039768(v63);
    v74 = (v67 + *(sub_1000024C4(&qword_100222880) + 36));
    *v74 = v71;
    v74[1] = v73;
    v75 = static Alignment.center.getter();
    v77 = v76;
    v78 = (v67 + *(sub_1000024C4(&qword_100224440) + 36));
    *v78 = v75;
    v78[1] = v77;
    sub_10001AE00(v53, v66, &qword_1002248B0);
    v79 = v102;
    sub_10001AE00(v66, v102, &qword_1002248B8);
    v80 = v106;
    v81 = v99;
    sub_10000BEB8(v106, v99, &qword_100223418);
    v82 = v103;
    sub_10000BEB8(v79, v103, &qword_1002248B8);
    v83 = v104;
    sub_10000BEB8(v81, v104, &qword_100223418);
    v84 = sub_1000024C4(&qword_1002248C8);
    sub_10000BEB8(v82, v83 + *(v84 + 48), &qword_1002248B8);
    sub_1000050C4(v79, &qword_1002248B8);
    sub_1000050C4(v80, &qword_100223418);
    sub_1000050C4(v82, &qword_1002248B8);
    return sub_1000050C4(v81, &qword_100223418);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100091EB8(uint64_t a1)
{
  v2 = type metadata accessor for LocationModule();
  sub_100090E00();
  sub_1001AC7E4(1);

  sub_100090E00();
  if (*(a1 + *(v2 + 36)))
  {

    sub_1001AC928(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100091FAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001ACBA4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100092008@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001ACBA4();
  *a1 = result & 1;
  return result;
}

__n128 sub_10009206C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_100092078()
{
  result = qword_1002248A0;
  if (!qword_1002248A0)
  {
    sub_10000460C(&qword_100224880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002248A0);
  }

  return result;
}

unint64_t sub_1000920DC()
{
  result = qword_1002248A8;
  if (!qword_1002248A8)
  {
    sub_10000460C(&qword_100224888);
    sub_10000460C(&qword_100224880);
    sub_100092078();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002248A8);
  }

  return result;
}

uint64_t sub_1000921A4(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100224888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009220C()
{
  v1 = *(type metadata accessor for LocationModule() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  type metadata accessor for LocationViewModel();
  v3 = type metadata accessor for Bindable();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_10009231C()
{
  v1 = *(type metadata accessor for LocationModule() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100091EB8(v2);
}

unint64_t sub_1000923A4()
{
  result = qword_1002248D0;
  if (!qword_1002248D0)
  {
    sub_10000460C(&qword_1002248D8);
    sub_10000460C(&qword_100224888);
    sub_1000920DC();
    swift_getOpaqueTypeConformance2();
    sub_10009249C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002248D0);
  }

  return result;
}

uint64_t sub_10009249C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000924E4@<X0>(uint64_t a1@<X8>)
{
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v2 = (a1 + *(type metadata accessor for DetailsModule() + 36));
  type metadata accessor for RemoteViewConfiguration();
  sub_100098608(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v2 = result;
  v2[1] = v4;
  return result;
}

void sub_10009260C()
{
  type metadata accessor for DetailsViewModel();
  type metadata accessor for Bindable();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000926B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DetailsViewModel();
  v6 = type metadata accessor for Bindable();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
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

uint64_t sub_1000927A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for DetailsViewModel();
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_1000928AC()
{
  type metadata accessor for DetailsViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_1000928EC()
{
  type metadata accessor for DetailsViewModel();
  type metadata accessor for Bindable();

  return Bindable.projectedValue.getter();
}

uint64_t sub_100092938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v76 = a1;
  v75 = *(a1 - 8);
  __chkstk_darwin(a1);
  v72 = v3;
  v74 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  type metadata accessor for DetailsViewModel();
  v69 = type metadata accessor for Bindable();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v56 - v7;
  v8 = sub_1000024C4(&qword_100224970);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - v10;
  v12 = sub_1000024C4(&qword_100224978);
  v56 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  v61 = sub_1000024C4(&qword_100224980);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = &v56 - v15;
  v78 = sub_1000024C4(&qword_100224988);
  v60 = *(v78 - 8);
  __chkstk_darwin(v78);
  v58 = &v56 - v16;
  v65 = sub_1000024C4(&qword_100224990);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v79 = &v56 - v17;
  v66 = sub_1000024C4(&qword_100224998);
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v56 - v18;
  v71 = v5;
  v80 = v5;
  v81 = v6;
  v70 = v6;
  v73 = v2;
  v82 = v2;
  sub_1000024C4(&qword_1002249A0);
  v19 = sub_10000460C(&qword_1002249A8);
  v20 = sub_100095970();
  v85 = v19;
  v86 = v20;
  swift_getOpaqueTypeConformance2();
  List<>.init(content:)();
  sub_1000024C4(&qword_100222388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  LOBYTE(v5) = static Edge.Set.top.getter();
  *(inited + 32) = v5;
  v22 = static Edge.Set.bottom.getter();
  *(inited + 33) = v22;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v5)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    Edge.Set.init(rawValue:)();
  }

  v23 = sub_10000BFFC(&qword_100224A38, &qword_100224970);
  View.listPadding(_:_:)();
  (*(v9 + 8))(v11, v8);
  Solarium.init()();
  v24 = sub_1000024C4(&qword_100224A40);
  v25 = sub_1000024C4(&qword_100224A48);
  v85 = v8;
  v86 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = type metadata accessor for InsetListStyle();
  v28 = v12;
  v85 = v12;
  v86 = v27;
  v87 = OpaqueTypeConformance2;
  v88 = &protocol witness table for InsetListStyle;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = type metadata accessor for InsetGroupedListStyle();
  v85 = v12;
  v86 = v30;
  v87 = OpaqueTypeConformance2;
  v88 = &protocol witness table for InsetGroupedListStyle;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v57;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v56 + 8))(v14, v28);
  v83 = static Color.clear.getter();
  v85 = v28;
  v86 = &type metadata for Solarium;
  v87 = v24;
  v88 = v25;
  v89 = OpaqueTypeConformance2;
  v90 = &protocol witness table for Solarium;
  v91 = v29;
  v92 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v58;
  v35 = v61;
  View.scrollContentBackground<A>(_:)();

  (*(v59 + 8))(v32, v35);
  v85 = v35;
  v86 = &type metadata for Color;
  v87 = v33;
  v88 = &protocol witness table for Color;
  v61 = swift_getOpaqueTypeConformance2();
  v36 = v78;
  View.listHasStackBehavior()();
  (*(v60 + 8))(v34, v36);
  v37 = v67;
  v38 = v76;
  v39 = v73;
  v40 = sub_1000928EC();
  __chkstk_darwin(v40);
  v41 = v71;
  v42 = v70;
  swift_getKeyPath();
  v43 = v69;
  Bindable<A>.subscript.getter();

  (*(v68 + 8))(v37, v43);
  v44 = v75;
  v45 = v74;
  (*(v75 + 16))(v74, v39, v38);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v41;
  *(v47 + 24) = v42;
  (*(v44 + 32))(v47 + v46, v45, v38);
  v48 = sub_1000024C4(&qword_100224A50);
  v83 = v78;
  v84 = v61;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_1000960E0();
  v49 = v62;
  v50 = v65;
  v51 = v79;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v63 + 8))(v51, v50);
  v85 = v50;
  v86 = v48;
  v87 = v54;
  v88 = v55;
  swift_getOpaqueTypeConformance2();
  v52 = v66;
  View.accessibilityIdentifier(_:)();
  return (*(v64 + 8))(v49, v52);
}

uint64_t sub_1000934C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = type metadata accessor for Prominence();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000024C4(&qword_1002249F0);
  __chkstk_darwin(v23);
  v10 = &v22 - v9;
  v11 = sub_1000024C4(&qword_1002249C0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = sub_1000024C4(&qword_1002249A8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - v16;
  v28 = a2;
  v29 = a3;
  v30 = a1;
  sub_10009476C(v13);
  sub_100094ABC(a2, a3, v10);
  sub_1000024C4(&qword_1002249E0);
  sub_100095A3C();
  sub_10000BFFC(&qword_1002249D8, &qword_1002249E0);
  sub_100095BB0();
  Section<>.init(header:footer:content:)();
  v19 = v24;
  v18 = v25;
  v20 = v26;
  (*(v25 + 104))(v24, enum case for Prominence.increased(_:), v26);
  sub_100095970();
  View.headerProminence(_:)();
  (*(v18 + 8))(v19, v20);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_100093800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v72 = sub_1000024C4(&qword_100224A68);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v61 - v7;
  v8 = sub_1000024C4(&qword_100224A70);
  v9 = __chkstk_darwin(v8 - 8);
  v73 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = &v61 - v11;
  v61 = a2;
  v62 = a3;
  v12 = type metadata accessor for DetailsModule();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v61 - v14;
  v16 = sub_1000024C4(&qword_100224A78);
  v66 = *(v16 - 8);
  v67 = v16;
  __chkstk_darwin(v16);
  v65 = &v61 - v17;
  v18 = sub_1000024C4(&qword_100224A80);
  v19 = __chkstk_darwin(v18 - 8);
  v68 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v76 = &v61 - v21;
  sub_1000928AC();
  *&v64 = sub_1000F6180();
  *&v63 = v22;

  sub_1000928AC();
  v23 = sub_1000F6198();
  v25 = v24;

  v75 = a1;
  sub_1000928AC();
  v26 = sub_1000F6340();

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (v26)
  {
    v28 = 0x80000001001C64D0;
    (*(v13 + 16))(v15, v75, v12);
    v31 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v30 = swift_allocObject();
    v32 = v62;
    *(v30 + 16) = v61;
    *(v30 + 24) = v32;
    (*(v13 + 32))(v30 + v31, v15, v12);
    v27 = 0xD000000000000013;
    v29 = sub_100096640;
  }

  v96 = 0;
  *&v88 = v64;
  *(&v88 + 1) = v63;
  *&v89 = v23;
  *(&v89 + 1) = v25;
  *&v90 = 0xD000000000000014;
  *(&v90 + 1) = 0x80000001001C6510;
  *&v91 = v27;
  *(&v91 + 1) = v28;
  *&v92 = v29;
  *(&v92 + 1) = v30;
  __asm { FMOV            V0.2D, #16.0 }

  v64 = _Q0;
  v63 = xmmword_1001B9A60;
  v93 = _Q0;
  v94 = xmmword_1001B9A60;
  v95 = 0;
  Solarium.init()();
  v38 = sub_1000024C4(&qword_100224A88);
  v39 = sub_1000024C4(&qword_100224A90);
  v40 = sub_1000962B4();
  v41 = sub_1000963C0();
  v42 = v65;
  View.staticIf<A, B>(_:then:)();
  v86[4] = v92;
  v86[5] = v93;
  v86[6] = v94;
  v87 = v95;
  v86[0] = v88;
  v86[1] = v89;
  v86[2] = v90;
  v86[3] = v91;
  sub_1000050C4(v86, &qword_100224A88);
  *&v88 = v38;
  *(&v88 + 1) = &type metadata for Solarium;
  *&v89 = v39;
  *(&v89 + 1) = v40;
  *&v90 = &protocol witness table for Solarium;
  *(&v90 + 1) = v41;
  v62 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  swift_getOpaqueTypeConformance2();
  v43 = v67;
  View.accessibilityIdentifier(_:)();
  (*(v66 + 8))(v42, v43);
  sub_1000928AC();
  v44 = sub_1000F6844();
  v46 = v45;

  sub_1000928AC();
  v47 = sub_1000F69D4();
  v49 = v48;

  v85 = 0;
  *&v77 = v44;
  *(&v77 + 1) = v46;
  *&v78 = v47;
  *(&v78 + 1) = v49;
  *&v79 = 0xD000000000000012;
  *(&v79 + 1) = 0x80000001001C64F0;
  v80 = 0u;
  v81 = 0u;
  v82 = v63;
  v83 = v64;
  v84 = 0;
  Solarium.init()();
  v50 = sub_1000024C4(&qword_100224AD0);
  *&v88 = v39;
  *(&v88 + 1) = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v69;
  View.staticIf<A, B>(_:then:)();
  v92 = v81;
  v93 = v82;
  v94 = v83;
  v95 = v84;
  v88 = v77;
  v89 = v78;
  v90 = v79;
  v91 = v80;
  sub_1000050C4(&v88, &qword_100224A88);
  *&v77 = v38;
  *(&v77 + 1) = &type metadata for Solarium;
  *&v78 = v50;
  *(&v78 + 1) = v40;
  *&v79 = &protocol witness table for Solarium;
  *(&v79 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v53 = v71;
  v52 = v72;
  View.accessibilityIdentifier(_:)();
  (*(v70 + 8))(v51, v52);
  v54 = v76;
  v55 = v68;
  sub_10000BEB8(v76, v68, &qword_100224A80);
  v56 = v73;
  sub_10000BEB8(v53, v73, &qword_100224A70);
  v57 = v74;
  sub_10000BEB8(v55, v74, &qword_100224A80);
  v58 = sub_1000024C4(&qword_100224AD8);
  sub_10000BEB8(v56, v57 + *(v58 + 48), &qword_100224A70);
  sub_1000050C4(v53, &qword_100224A70);
  sub_1000050C4(v54, &qword_100224A80);
  sub_1000050C4(v56, &qword_100224A70);
  return sub_1000050C4(v55, &qword_100224A80);
}

uint64_t sub_100094034(uint64_t a1)
{
  v2 = type metadata accessor for DetailsModule();
  sub_1000928AC();
  sub_1000F64DC();

  sub_1000928AC();
  if (*(a1 + *(v2 + 36)))
  {

    sub_1000F64E4(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100098608(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_100094124@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000024C4(&qword_100224AE0);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = a1[5];
  v30 = a1[4];
  v31 = v7;
  v32 = a1[6];
  v33 = *(a1 + 112);
  v8 = a1[1];
  v26 = *a1;
  v27 = v8;
  v9 = a1[3];
  v28 = a1[2];
  v29 = v9;
  if (qword_100220BC8 != -1)
  {
    swift_once();
  }

  v10 = *(type metadata accessor for UnevenRoundedRectangle() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(&v6[v10], v11, v12);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v6 = v13;
  *(v6 + 1) = v14;
  *(v6 + 2) = v15;
  *(v6 + 3) = v16;
  v17 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  *&v6[*(v4 + 52)] = Color.init(_:)();
  *&v6[*(v4 + 56)] = 256;
  sub_10000BFFC(&qword_100224AE8, &qword_100224AE0);
  v18 = AnyView.init<A>(_:)();
  LOBYTE(v25) = v33;
  v24[13] = v31;
  v24[14] = v32;
  v24[11] = v29;
  v24[12] = v30;
  v24[8] = v26;
  v24[9] = v27;
  v24[10] = v28;
  v34[4] = v30;
  v34[5] = v31;
  v34[6] = v32;
  v34[0] = v26;
  v34[1] = v27;
  v34[2] = v28;
  v34[3] = v29;
  *&v35 = v25;
  *(&v35 + 1) = v18;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v46 = v35;
  v36[2] = v28;
  v36[3] = v29;
  v36[0] = v26;
  v36[1] = v27;
  v36[5] = v31;
  v36[6] = v32;
  v36[4] = v30;
  v37 = v25;
  v38 = v18;
  sub_10000BEB8(&v26, v24, &qword_100224A88);
  sub_10000BEB8(v34, v24, &qword_100224AB8);
  sub_1000050C4(v36, &qword_100224AB8);
  v19 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v19;
  v20 = v46;
  *(a2 + 96) = v45;
  *(a2 + 112) = v20;
  v21 = v40;
  *a2 = v39;
  *(a2 + 16) = v21;
  result = *&v41;
  v23 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v23;
  *(a2 + 128) = 0;
  return result;
}

uint64_t sub_100094408(__int128 *a1)
{
  v2 = sub_1000024C4(&qword_100224AE0);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = a1[5];
  v31 = a1[4];
  v32 = v5;
  v33 = a1[6];
  v34 = *(a1 + 112);
  v6 = a1[1];
  v27 = *a1;
  v28 = v6;
  v7 = a1[3];
  v29 = a1[2];
  v30 = v7;
  if (qword_100220BC8 != -1)
  {
    swift_once();
  }

  v8 = *(type metadata accessor for UnevenRoundedRectangle() + 20);
  v9 = enum case for RoundedCornerStyle.continuous(_:);
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 104))(&v4[v8], v9, v10);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v4 = v11;
  *(v4 + 1) = v12;
  *(v4 + 2) = v13;
  *(v4 + 3) = v14;
  v15 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  *&v4[*(v2 + 52)] = Color.init(_:)();
  *&v4[*(v2 + 56)] = 256;
  sub_10000BFFC(&qword_100224AE8, &qword_100224AE0);
  v16 = AnyView.init<A>(_:)();
  LOBYTE(v25) = v34;
  v23 = v32;
  v24 = v33;
  v21 = v30;
  v22 = v31;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v35[4] = v31;
  v35[5] = v32;
  v35[6] = v33;
  v35[0] = v27;
  v35[1] = v28;
  v35[2] = v29;
  v35[3] = v30;
  *&v36 = v25;
  *(&v36 + 1) = v16;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v46 = v33;
  v47 = v36;
  v37[2] = v29;
  v37[3] = v30;
  v37[0] = v27;
  v37[1] = v28;
  v37[5] = v32;
  v37[6] = v33;
  v37[4] = v31;
  v38 = v25;
  v39 = v16;
  sub_10000BEB8(&v27, v48, &qword_100224A88);
  sub_10000BEB8(v35, v48, &qword_100224AB8);
  sub_1000050C4(v37, &qword_100224AB8);
  v22 = v44;
  v23 = v45;
  v24 = v46;
  v25 = v47;
  v18 = v40;
  v19 = v41;
  v20 = v42;
  v21 = v43;
  v26 = 0;
  static VerticalEdge.Set.bottom.getter();
  sub_1000024C4(&qword_100224A90);
  sub_1000963C0();
  View.listRowSeparator(_:edges:)();
  v48[6] = v24;
  v48[7] = v25;
  v49 = v26;
  v48[2] = v20;
  v48[3] = v21;
  v48[4] = v22;
  v48[5] = v23;
  v48[0] = v18;
  v48[1] = v19;
  return sub_1000050C4(v48, &qword_100224A90);
}

uint64_t sub_10009476C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v21 = type metadata accessor for AccessibilityTraits();
  v20 = *(v21 - 8);
  __chkstk_darwin(v21);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000024C4(&qword_1002249C0);
  __chkstk_darwin(v22);
  v19 = &v18 - v3;
  type metadata accessor for DetailsModule();
  sub_1000928AC();

  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_100017398(v4, v6, v8 & 1);

  v30 = v13 & 1;
  v29 = 0;
  *&v24 = v9;
  *(&v24 + 1) = v11;
  LOBYTE(v25) = v13 & 1;
  *(&v25 + 1) = v15;
  v26 = xmmword_1001B9A70;
  v27 = xmmword_1001B9A80;
  v28 = 0;
  static AccessibilityTraits.isHeader.getter();
  sub_1000024C4(&qword_1002249D0);
  sub_100095AF8();
  v16 = v19;
  View.accessibility(addTraits:)();
  (*(v20 + 8))(v2, v21);
  v31[2] = v26;
  v31[3] = v27;
  v32 = v28;
  v31[0] = v24;
  v31[1] = v25;
  sub_1000050C4(v31, &qword_1002249D0);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_1000050C4(v16, &qword_1002249C0);
}

uint64_t sub_100094ABC@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v82 = a3;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin(v5);
  v77 = &v61[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = type metadata accessor for AttributionModule();
  __chkstk_darwin(v70);
  v69 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = sub_1000024C4(&qword_100224A08);
  __chkstk_darwin(v74);
  v72 = &v61[-v8];
  v9 = sub_1000024C4(&qword_100224A60);
  v75 = *(v9 - 8);
  v76 = v9;
  __chkstk_darwin(v9);
  v73 = &v61[-v10];
  v11 = sub_1000024C4(&qword_100224A00);
  v80 = *(v11 - 8);
  v81 = v11;
  __chkstk_darwin(v11);
  v71 = &v61[-v12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v61[-v17];
  v19 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v16);
  v21 = &v61[-v20];
  v67 = a2;
  v68 = a1;
  type metadata accessor for DetailsModule();
  v22 = sub_1000928AC();
  v23 = sub_1000F6A7C(v22);

  if (v23)
  {
    sub_1000928AC();
    sub_1000F6B98();

    if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) != 1)
    {
      v65 = v21;
      v66 = v19;
      v26 = *(v19 + 32);
      v27 = AssociatedTypeWitness;
      v26(v21, v18, AssociatedTypeWitness);
      sub_1000928AC();
      v64 = sub_10002DB04();
      v63 = v28;

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v30 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v67 = v31;
      v68 = v30;
      v32 = type metadata accessor for AttributionViewModel();
      v33 = *(v32 + 32);
      v34 = v69;
      (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v35 = type metadata accessor for URL();
      (*(*(v35 - 8) + 56))(v34 + v33, 0, 1, v35);
      sub_1000928AC();
      v62 = sub_10002EC40();

      v36 = objc_opt_self();
      v37 = [v36 mainBundle];
      v85._object = 0xE000000000000000;
      v38._countAndFlagsBits = 0xD000000000000031;
      v38._object = 0x80000001001C63A0;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v85._countAndFlagsBits = 0;
      v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v85);

      *v34 = v40;
      v41 = [v36 mainBundle];
      v86._object = 0xE000000000000000;
      v42._countAndFlagsBits = 0xD00000000000002CLL;
      v42._object = 0x80000001001C63E0;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      v86._countAndFlagsBits = 0;
      v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v86);

      v34[1] = v44;
      v45 = v63;
      v34[2]._countAndFlagsBits = v64;
      v34[2]._object = v45;
      v46 = v67;
      v34[3]._countAndFlagsBits = v68;
      v34[3]._object = v46;
      *(&v34->_countAndFlagsBits + *(v32 + 36)) = v62;
      v47 = (&v34->_countAndFlagsBits + *(v70 + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_100098608(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
      *v47 = EnvironmentObject.init()();
      v47[1] = v48;
      Solarium.init()();
      sub_1000024C4(&qword_100224A18);
      sub_100098608(&qword_100224A20, type metadata accessor for AttributionModule);
      v49 = sub_10000460C(&qword_100224A28);
      v50 = sub_100095EC8();
      v83 = v49;
      v84 = v50;
      swift_getOpaqueTypeConformance2();
      v51 = v72;
      View.staticIf<A, B>(_:then:)();
      sub_100096258(v34);
      v52 = v74;
      v53 = v51 + *(v74 + 36);
      *v53 = xmmword_1001B9A90;
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0;
      v54 = v77;
      static AccessibilityChildBehavior.contain.getter();
      v55 = sub_100095D2C();
      v56 = v73;
      View.accessibilityElement(children:)();
      (*(v78 + 8))(v54, v79);
      sub_1000050C4(v51, &qword_100224A08);
      v83 = v52;
      v84 = v55;
      swift_getOpaqueTypeConformance2();
      v57 = v71;
      v58 = v76;
      View.accessibilityIdentifier(_:)();
      (*(v75 + 8))(v56, v58);
      (*(v66 + 8))(v65, v27);
      v59 = v82;
      sub_10001AE00(v57, v82, &qword_100224A00);
      v25 = v59;
      v24 = 0;
      return (*(v80 + 56))(v25, v24, 1, v81);
    }

    (*(v15 + 8))(v18, v14);
  }

  v24 = 1;
  v25 = v82;
  return (*(v80 + 56))(v25, v24, 1, v81);
}

uint64_t sub_1000953AC()
{
  v0 = sub_1000024C4(&qword_100224A28);
  __chkstk_darwin(v0);
  v2 = v4 - v1;
  static VerticalEdge.Set.all.getter();
  type metadata accessor for AttributionModule();
  sub_100098608(&qword_100224A20, type metadata accessor for AttributionModule);
  View.listRowSeparator(_:edges:)();
  v4[1] = static Color.clear.getter();
  *&v2[*(v0 + 36)] = AnyView.init<A>(_:)();
  static Edge.Set.bottom.getter();
  sub_100095EC8();
  View.listPadding(_:_:)();
  return sub_1000050C4(v2, &qword_100224A28);
}

uint64_t sub_100095574(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v12 - v7;
  a3(v6);
  sub_1000024C4(&qword_100224978);
  v9 = sub_10000460C(&qword_100224970);
  v10 = sub_10000BFFC(&qword_100224A38, &qword_100224970);
  v12[0] = v9;
  v12[1] = v10;
  swift_getOpaqueTypeConformance2();
  View.listStyle<A>(_:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100095704@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000F6C0C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10009575C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DetailsModule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  sub_1000928AC();
  v19 = sub_1000F6DC4();

  v12 = sub_1000928AC();
  v13 = *(v12 + *(*v12 + 128));

  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v9 + 32))(v15 + v14, v11, v8);
  v16 = static SafeAreaRegions.all.getter();
  result = static Edge.Set.all.getter();
  *a4 = v19;
  *(a4 + 8) = v13;
  *(a4 + 16) = sub_1000961C0;
  *(a4 + 24) = v15;
  *(a4 + 32) = v16;
  *(a4 + 40) = result;
  return result;
}

uint64_t sub_100095910()
{
  type metadata accessor for DetailsModule();
  sub_1000928AC();
  sub_1000F6E3C();
}

unint64_t sub_100095970()
{
  result = qword_1002249B0;
  if (!qword_1002249B0)
  {
    sub_10000460C(&qword_1002249A8);
    sub_100095A3C();
    sub_10000BFFC(&qword_1002249D8, &qword_1002249E0);
    sub_100095BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002249B0);
  }

  return result;
}

unint64_t sub_100095A3C()
{
  result = qword_1002249B8;
  if (!qword_1002249B8)
  {
    sub_10000460C(&qword_1002249C0);
    sub_100095AF8();
    sub_100098608(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002249B8);
  }

  return result;
}

unint64_t sub_100095AF8()
{
  result = qword_1002249C8;
  if (!qword_1002249C8)
  {
    sub_10000460C(&qword_1002249D0);
    sub_10000BFFC(&qword_100223468, &qword_100223470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002249C8);
  }

  return result;
}

unint64_t sub_100095BB0()
{
  result = qword_1002249E8;
  if (!qword_1002249E8)
  {
    sub_10000460C(&qword_1002249F0);
    sub_100095C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002249E8);
  }

  return result;
}

unint64_t sub_100095C34()
{
  result = qword_1002249F8;
  if (!qword_1002249F8)
  {
    sub_10000460C(&qword_100224A00);
    sub_10000460C(&qword_100224A08);
    sub_100095D2C();
    swift_getOpaqueTypeConformance2();
    sub_100098608(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002249F8);
  }

  return result;
}

unint64_t sub_100095D2C()
{
  result = qword_100224A10;
  if (!qword_100224A10)
  {
    sub_10000460C(&qword_100224A08);
    type metadata accessor for AttributionModule();
    sub_10000460C(&qword_100224A18);
    sub_100098608(&qword_100224A20, type metadata accessor for AttributionModule);
    sub_10000460C(&qword_100224A28);
    sub_100095EC8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_100223468, &qword_100223470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224A10);
  }

  return result;
}

unint64_t sub_100095EC8()
{
  result = qword_100224A30;
  if (!qword_100224A30)
  {
    sub_10000460C(&qword_100224A28);
    type metadata accessor for AttributionModule();
    sub_100098608(&qword_100224A20, type metadata accessor for AttributionModule);
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_100223458, &qword_100223460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224A30);
  }

  return result;
}

uint64_t sub_100095FE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000F6C0C();
  *a1 = result & 1;
  return result;
}

__n128 sub_100096044(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100096054@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for DetailsModule() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10009575C(v6, v3, v4, a1);
}

unint64_t sub_1000960E0()
{
  result = qword_100224A58;
  if (!qword_100224A58)
  {
    sub_10000460C(&qword_100224A50);
    sub_10009616C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224A58);
  }

  return result;
}

unint64_t sub_10009616C()
{
  result = qword_100228010;
  if (!qword_100228010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228010);
  }

  return result;
}

uint64_t sub_1000961C0()
{
  type metadata accessor for DetailsModule();

  return sub_100095910();
}

uint64_t sub_100096258(uint64_t a1)
{
  v2 = type metadata accessor for AttributionModule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000962B4()
{
  result = qword_100224A98;
  if (!qword_100224A98)
  {
    sub_10000460C(&qword_100224A88);
    sub_10009636C();
    sub_10000BFFC(&qword_100223468, &qword_100223470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224A98);
  }

  return result;
}

unint64_t sub_10009636C()
{
  result = qword_100224AA0;
  if (!qword_100224AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224AA0);
  }

  return result;
}

unint64_t sub_1000963C0()
{
  result = qword_100224AA8;
  if (!qword_100224AA8)
  {
    sub_10000460C(&qword_100224A90);
    sub_100096478();
    sub_10000BFFC(&qword_100224AC0, &qword_100224AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224AA8);
  }

  return result;
}

unint64_t sub_100096478()
{
  result = qword_100224AB0;
  if (!qword_100224AB0)
  {
    sub_10000460C(&qword_100224AB8);
    sub_1000962B4();
    sub_10000BFFC(&qword_100223458, &qword_100223460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224AB0);
  }

  return result;
}

uint64_t sub_100096530()
{
  v1 = *(type metadata accessor for DetailsModule() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  type metadata accessor for DetailsViewModel();
  v3 = type metadata accessor for Bindable();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_100096640()
{
  v1 = *(type metadata accessor for DetailsModule() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100094034(v2);
}

uint64_t sub_1000966C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1000966F0()
{
  result = qword_100224AF0;
  if (!qword_100224AF0)
  {
    sub_10000460C(&qword_100224AF8);
    sub_10000460C(&qword_100224990);
    sub_10000460C(&qword_100224A50);
    sub_10000460C(&qword_100224988);
    sub_10000460C(&qword_100224980);
    sub_10000460C(&qword_100224978);
    sub_10000460C(&qword_100224A40);
    sub_10000460C(&qword_100224A48);
    sub_10000460C(&qword_100224970);
    sub_10000BFFC(&qword_100224A38, &qword_100224970);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for InsetListStyle();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for InsetGroupedListStyle();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000960E0();
    swift_getOpaqueTypeConformance2();
    sub_100098608(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224AF0);
  }

  return result;
}

uint64_t sub_100096A30()
{
  result = Color.init(_:bundle:)();
  qword_1002248E0 = result;
  return result;
}

uint64_t sub_100096A6C()
{
  result = Color.init(_:bundle:)();
  qword_1002248E8 = result;
  return result;
}

uint64_t sub_100096AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v76 = type metadata accessor for PlainButtonStyle();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v70 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1000024C4(&qword_100224B18);
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v67 = &v66 - v4;
  v75 = sub_1000024C4(&qword_100224B20);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &v66 - v5;
  v84 = sub_1000024C4(&qword_100224B28);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v68 = &v66 - v6;
  v7 = sub_1000024C4(&qword_100224B30);
  v8 = __chkstk_darwin(v7 - 8);
  v86 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v66 - v10;
  v80 = type metadata accessor for AccessibilityChildBehavior();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000024C4(&qword_100224B38);
  __chkstk_darwin(v13);
  v15 = &v66 - v14;
  v78 = sub_1000024C4(&qword_100224B40);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v17 = &v66 - v16;
  v18 = sub_1000024C4(&qword_100224B48);
  v19 = __chkstk_darwin(v18 - 8);
  v82 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v89 = &v66 - v21;
  v22 = sub_1000024C4(&qword_100221A50);
  __chkstk_darwin(v22 - 8);
  v24 = &v66 - v23;
  v25 = sub_1000024C4(&qword_100224B50);
  v26 = __chkstk_darwin(v25 - 8);
  v81 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v88 = &v66 - v28;

  Image.init(systemName:)();
  static SymbolRenderingMode.palette.getter();
  v29 = type metadata accessor for SymbolRenderingMode();
  (*(*(v29 - 8) + 56))(v24, 0, 1, v29);
  v30 = Image.symbolRenderingMode(_:)();

  sub_1000050C4(v24, &qword_100221A50);
  v31 = static Color.white.getter();
  sub_1000024C4(&qword_100221D18);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1001B3B50;
  if (qword_100220BD8 != -1)
  {
    swift_once();
  }

  *(v32 + 32) = qword_1002248E0;
  v33 = qword_100220BE0;

  if (v33 != -1)
  {
    swift_once();
  }

  *(v32 + 40) = qword_1002248E8;

  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v34 = v93;
  v35 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  *&v91 = v30;
  *(&v91 + 1) = v31;
  *v92 = v34;
  *&v92[24] = v95;
  *&v92[8] = v94;
  *&v92[40] = KeyPath;
  *&v92[48] = v35;
  v92[56] = 1;
  sub_1000024C4(&qword_100224B58);
  sub_1000982E0();
  View.accessibilityHidden(_:)();
  v96[2] = *&v92[16];
  *v97 = *&v92[32];
  *&v97[9] = *&v92[41];
  v96[0] = v91;
  v96[1] = *v92;
  sub_1000050C4(v96, &qword_100224B58);
  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v37 = sub_1000024C4(&qword_100224B98);
  sub_1000978CC(a1, &v15[*(v37 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v38 = sub_10000BFFC(&qword_100224BA0, &qword_100224B38);
  View.accessibilityElement(children:)();
  (*(v79 + 8))(v12, v80);
  sub_1000050C4(v15, &qword_100224B38);
  *&v91 = v13;
  *(&v91 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v78;
  View.accessibilityIdentifier(_:)();
  (*(v77 + 8))(v17, v39);
  v40 = *(a1 + 64);
  v91 = *(a1 + 48);
  *v92 = v40;
  v41 = *(&v91 + 1);
  if (*(&v91 + 1))
  {
    v42 = *&v92[8];
    v43 = *v92;
    v44 = v91;
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = v41;
    v45[4] = v43;
    v45[5] = v42;
    __chkstk_darwin(v45);
    *(&v66 - 4) = v44;
    *(&v66 - 3) = v41;
    *(&v66 - 2) = v43;
    *(&v66 - 1) = v42;
    sub_10000BEB8(&v91, v90, &qword_100224BB0);

    sub_1000024C4(&qword_100224BB8);
    sub_100098550();
    v46 = v67;
    Button.init(action:label:)();
    v47 = v70;
    PlainButtonStyle.init()();
    v48 = sub_10000BFFC(&qword_100224BC8, &qword_100224B18);
    v49 = sub_100098608(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
    v50 = v71;
    v51 = v72;
    v52 = v76;
    View.buttonStyle<A>(_:)();
    (*(v74 + 8))(v47, v52);
    (*(v69 + 8))(v46, v51);
    v90[0] = v51;
    v90[1] = v52;
    v90[2] = v48;
    v90[3] = v49;
    swift_getOpaqueTypeConformance2();
    v53 = v68;
    v54 = v75;
    View.accessibilityIdentifier(_:)();

    (*(v73 + 8))(v50, v54);
    v55 = v85;
    sub_10001AE00(v53, v85, &qword_100224B28);
    v56 = 0;
  }

  else
  {
    v56 = 1;
    v55 = v85;
  }

  (*(v83 + 56))(v55, v56, 1, v84);
  v57 = v88;
  v58 = v81;
  sub_10000BEB8(v88, v81, &qword_100224B50);
  v59 = v89;
  v60 = v82;
  sub_10000BEB8(v89, v82, &qword_100224B48);
  v61 = v86;
  sub_10000BEB8(v55, v86, &qword_100224B30);
  v62 = v87;
  sub_10000BEB8(v58, v87, &qword_100224B50);
  v63 = sub_1000024C4(&qword_100224BA8);
  sub_10000BEB8(v60, v62 + v63[12], &qword_100224B48);
  v64 = v62 + v63[16];
  *v64 = 0;
  *(v64 + 8) = 1;
  sub_10000BEB8(v61, v62 + v63[20], &qword_100224B30);
  sub_1000050C4(v55, &qword_100224B30);
  sub_1000050C4(v59, &qword_100224B48);
  sub_1000050C4(v57, &qword_100224B50);
  sub_1000050C4(v61, &qword_100224B30);
  sub_1000050C4(v60, &qword_100224B48);
  return sub_1000050C4(v58, &qword_100224B50);
}

uint64_t sub_1000978CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v83 = sub_1000024C4(&qword_100224BD0);
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v72 = &v71 - v3;
  v4 = sub_1000024C4(&qword_100224BD8);
  v5 = __chkstk_darwin(v4 - 8);
  v84 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v71 - v7;
  v78 = sub_1000024C4(&qword_100224BE0);
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v71 - v8;
  v9 = sub_1000024C4(&qword_100224BE8);
  __chkstk_darwin(v9 - 8);
  v75 = &v71 - v10;
  v77 = sub_1000024C4(&qword_100224BF0) - 8;
  v11 = __chkstk_darwin(v77);
  v80 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v76 = &v71 - v14;
  __chkstk_darwin(v13);
  v16 = &v71 - v15;
  v73 = a1;
  v17 = a1[1];
  *&v86 = *a1;
  *(&v86 + 1) = v17;
  v18 = sub_10001877C();

  v71 = v18;
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Font.body.getter();
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_100017398(v19, v21, v23 & 1);

  *&v86 = v24;
  *(&v86 + 1) = v26;
  v28 &= 1u;
  v87 = v28;
  v88 = v30;
  v31 = v74;
  View.avoidsOrphans(_:)();
  v32 = v24;
  v33 = v16;
  sub_100017398(v32, v26, v28);

  *&v86 = &type metadata for Text;
  *(&v86 + 1) = &protocol witness table for Text;
  v34 = 1;
  swift_getOpaqueTypeConformance2();
  v35 = v75;
  v36 = v78;
  View.accessibilityIdentifier(_:)();
  (*(v79 + 8))(v31, v36);
  LOBYTE(v36) = static Edge.Set.vertical.getter();
  v89 = *(v73 + 1);
  sub_10000BEB8(&v89, &v86, &qword_10022AF10);
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v76;
  sub_10001AE00(v35, v76, &qword_100224BE8);
  v46 = v45 + *(v77 + 44);
  *v46 = v36;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  sub_10001AE00(v45, v16, &qword_100224BF0);
  if (*(&v89 + 1))
  {
    v86 = v89;
    v47 = Text.init<A>(_:)();
    v49 = v48;
    v51 = v50;
    static Font.subheadline.getter();
    v52 = Text.font(_:)();
    v54 = v53;
    v56 = v55;

    sub_100017398(v47, v49, v51 & 1);

    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    *&v86 = qword_1002390B8;

    v57 = Text.foregroundStyle<A>(_:)();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_100017398(v52, v54, v56 & 1);

    *&v86 = v57;
    *(&v86 + 1) = v59;
    v87 = v61 & 1;
    v88 = v63;
    v64 = v72;
    View.accessibilityIdentifier(_:)();
    sub_100017398(v57, v59, v61 & 1);

    v65 = v82;
    sub_100098650(v64, v82);
    v34 = 0;
  }

  else
  {
    v65 = v82;
  }

  (*(v81 + 56))(v65, v34, 1, v83);
  v66 = v80;
  sub_10000BEB8(v33, v80, &qword_100224BF0);
  v67 = v84;
  sub_10000BEB8(v65, v84, &qword_100224BD8);
  v68 = v85;
  sub_10000BEB8(v66, v85, &qword_100224BF0);
  v69 = sub_1000024C4(qword_100224BF8);
  sub_10000BEB8(v67, v68 + *(v69 + 48), &qword_100224BD8);
  sub_1000050C4(v65, &qword_100224BD8);
  sub_1000050C4(v33, &qword_100224BF0);
  sub_1000050C4(v67, &qword_100224BD8);
  return sub_1000050C4(v66, &qword_100224BF0);
}

uint64_t sub_10009807C@<X0>(uint64_t *a1@<X8>)
{

  v2 = Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v3 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  result = static Color.blue.getter();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  return result;
}

uint64_t sub_100098100()
{
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_100224B00);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  v8 = v0[3];
  v12[2] = v0[2];
  v12[3] = v8;
  v12[4] = v0[4];
  v9 = v0[1];
  v12[0] = *v0;
  v12[1] = v9;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v10 = sub_1000024C4(&qword_100224B08);
  sub_100096AA8(v12, &v7[*(v10 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  sub_10000BFFC(&qword_100224B10, &qword_100224B00);
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v1);
  return sub_1000050C4(v7, &qword_100224B00);
}

unint64_t sub_1000982E0()
{
  result = qword_100224B60;
  if (!qword_100224B60)
  {
    sub_10000460C(&qword_100224B58);
    sub_10009836C();
    sub_10005DDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224B60);
  }

  return result;
}

unint64_t sub_10009836C()
{
  result = qword_100224B68;
  if (!qword_100224B68)
  {
    sub_10000460C(&qword_100224B70);
    sub_100098424();
    sub_10000BFFC(&qword_100222260, &qword_100222268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224B68);
  }

  return result;
}

unint64_t sub_100098424()
{
  result = qword_100224B78;
  if (!qword_100224B78)
  {
    sub_10000460C(&qword_100224B80);
    sub_10000BFFC(&qword_100224B88, &qword_100224B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224B78);
  }

  return result;
}

uint64_t sub_1000984DC()
{

  return swift_deallocObject();
}

unint64_t sub_100098550()
{
  result = qword_100224BC0;
  if (!qword_100224BC0)
  {
    sub_10000460C(&qword_100224BB8);
    sub_100064388();
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224BC0);
  }

  return result;
}

uint64_t sub_100098608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100098650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100224BD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000986D0()
{
  sub_10000460C(&qword_100224B00);
  sub_10000BFFC(&qword_100224B10, &qword_100224B00);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100098770()
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.prefix(_:)();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

void sub_100098850(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + *(a2 + 52));
  v7 = v6[5];
  v8 = v6[6];
  sub_10001BED0(v6 + 2, v7);
  v9 = (*(v8 + 32))(v7, v8);
  sub_1000024C4(&qword_100221508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  v12 = a1[2];
  v11 = a1[3];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v12;
  *(inited + 48) = v11;
  v13 = *(v3 + *(a2 + 56));
  if (v13 == 15)
  {
    LOBYTE(v13) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 11;
  v14 = 19;
  if (v9 == 2)
  {
    v14 = 20;
  }

  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = v14;
  *(inited + 160) = 0;
  *(inited + 168) = 3;
  if (a1[9])
  {
    v15 = a1[8];
    v16 = a1[9];
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v23 = v15;
  v24 = v16;

  v17 = sub_1001894F4(1, 5, 1, inited);
  v21 = v17;
  sub_100006C98(&aBlock, v28);
  sub_100118768(4, v28, &v21, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000001ELL;
  v19[3] = 0x80000001001C4640;
  v19[4] = v17;
  v26 = sub_100026FEC;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10015B4A4;
  v25 = &unk_100215010;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

uint64_t sub_100098B0C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  v3 = v2[5];
  v4 = v2[6];
  sub_10001BED0(v2 + 2, v3);
  return (*(v4 + 16))(v3, v4);
}

uint64_t sub_100098B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = *(a1 + 44);
  if (*(*(v2 + *(a1 + 48)) + 16))
  {
    sub_100073F10(v2 + v8, v7);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_100006BC4(v7);
      return (*(v10 + 56))(a2, 1, 1, v9);
    }

    else
    {
      URL.appending(queryItems:)();
      (*(v10 + 8))(v7, v9);
      return (*(v10 + 56))(a2, 0, 1, v9);
    }
  }

  else
  {

    return sub_100073F10(v2 + v8, a2);
  }
}

void sub_100098D00(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5)
{
  sub_1000024C4(&qword_100221508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  v13 = a4[2];
  v12 = a4[3];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v13;
  *(inited + 48) = v12;
  v14 = *(v5 + *(a5 + 56));
  if (v14 == 15)
  {
    LOBYTE(v14) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v14;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 11;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (a4[9])
  {
    v15 = a4[8];
    v16 = a4[9];
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v23 = v15;
  v24 = v16;

  sub_100006C80(a1, a2, a3);

  v17 = sub_1001894F4(1, 5, 1, inited);
  v21 = v17;
  sub_100006C98(&aBlock, v28);
  sub_100118768(4, v28, &v21, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000001ELL;
  v19[3] = 0x80000001001C4640;
  v19[4] = v17;
  v26 = sub_100006D88;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10015B4A4;
  v25 = &unk_100214FC0;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

uint64_t sub_100098F88(uint64_t a1)
{
  sub_10008C108();
  v3 = *(v1 + *(a1 + 52));
  v4 = v3[5];
  v5 = v3[6];
  sub_10001BED0(v3 + 2, v4);
  return (*(v5 + 72))(v4, v5);
}

uint64_t sub_100098FEC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  v3 = v2[5];
  v4 = v2[6];
  sub_10001BED0(v2 + 2, v3);
  return (*(v4 + 80))(v3, v4);
}

uint64_t sub_100099048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = LocalizedStringKey.init(stringLiteral:)();
  *(a5 + 8) = v10;
  *(a5 + 16) = v11 & 1;
  *(a5 + 24) = v12;
  *(a5 + 32) = LocalizedStringKey.init(stringLiteral:)();
  *(a5 + 40) = v13;
  *(a5 + 48) = v14 & 1;
  *(a5 + 56) = v15;
  v16 = type metadata accessor for MusicViewModel();
  v17 = v16[13];
  if (qword_100220C18 != -1)
  {
    swift_once();
  }

  *(a5 + v17) = qword_100239130;
  *(a5 + 64) = a1;
  sub_100073EA0(a2, a5 + v16[11]);
  *(a5 + v16[12]) = a3;
  *(a5 + v16[14]) = a4;
}

void sub_100099198()
{
  type metadata accessor for Array();
  if (v0 <= 0x3F)
  {
    sub_10009946C(319, &qword_100221420, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10009946C(319, &qword_100224C80, &type metadata accessor for URLQueryItem, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PlaybackController();
        if (v3 <= 0x3F)
        {
          sub_1000994D0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000992EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(&qword_1002214F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000993BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_1002214F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10009946C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1000994D0()
{
  if (!qword_100224C88)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100224C88);
    }
  }
}

uint64_t sub_100099524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009953C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 && *(v1 + 16))
  {

    v2 = sub_1000FBDA8(3u);
    if ((v3 & 1) != 0 && (v4 = *(*(v1 + 56) + v2), , v4))
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_10009962C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  sub_1000024C4(a1);
  sub_10009BD38(a2, a1);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v15[4] == v15[0])
  {
    v8 = a3(0);
    return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  }

  else
  {
    v10 = dispatch thunk of Collection.subscript.read();
    v12 = v11;
    v13 = a3(0);
    v14 = *(v13 - 8);
    (*(v14 + 16))(a4, v12, v13);
    v10(v15, 0);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }
}

uint64_t sub_1000997BC(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_10009BF34(v2, *(a1 + 36), 0, a1);

  return v4;
}

Swift::Int sub_10009984C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000998C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100099904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  sub_1000024C4(&qword_100224DC8);
  v4[12] = swift_task_alloc();
  v5 = sub_1000024C4(&qword_100224DD0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_1000024C4(&qword_100224DD8);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = sub_1000024C4(&qword_100224DE0);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v9 = type metadata accessor for MusicAuthorization.Status();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_100099BA0);
}

uint64_t sub_100099BA0()
{
  (*(v0[23] + 104))(v0[24], enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v0[22]);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_100099C68;
  v2 = v0[28];

  return static MusicAuthorization.request()(v2);
}

uint64_t sub_100099C68()
{

  return _swift_task_switch(sub_100099D78);
}

uint64_t sub_100099D78()
{
  v24 = v0;
  (*(v0[26] + 104))(v0[27], enum case for MusicAuthorization.Status.authorized(_:), v0[25]);
  sub_10009BCF0(&qword_100224DA0, &type metadata accessor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v5 = *(v4 + 8);
    v5(v0[27], v0[25]);
    v5(v1, v3);

LABEL_5:
    swift_getKeyPath();

    v0[6] = MusicItemID.init(_:)();
    v0[7] = v8;
    v0[30] = type metadata accessor for Artist();
    sub_10009BCF0(&qword_100224DE8, &type metadata accessor for Artist);
    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    sub_1000024C4(&qword_100225DB0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001B9E70;
    sub_1000024C4(&qword_100224DF0);
    *(v9 + 32) = static PartialMusicProperty<A>.topSongs.getter();
    *(v9 + 40) = static PartialMusicProperty<A>.featuredPlaylists.getter();
    *(v9 + 48) = static PartialMusicProperty<A>.featuredAlbums.getter();
    MusicCatalogResourceRequest.properties.setter();
    v10 = swift_task_alloc();
    v0[31] = v10;
    *v10 = v0;
    v10[1] = sub_10009A24C;
    v11 = v0[18];
    v12 = v0[19];

    return MusicCatalogResourceRequest.response()(v11, v12);
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);

  if (v6)
  {
    goto LABEL_5;
  }

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000BE10(v13, qword_100239158);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[9];
    v16 = v0[10];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100139F7C(v17, v16, &v23);
    _os_log_impl(&_mh_execute_header, v14, v15, "Authorization error fetching artist. ID: %s", v18, 0xCu);
    sub_100012A7C(v19);
  }

  sub_10009BC14();
  swift_allocError();
  *v20 = 0;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_10009A24C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_10009A74C;
  }

  else
  {
    v2 = sub_10009A378;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10009A378()
{
  v30 = v0;
  v1 = v0[30];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  MusicCatalogResourceResponse.items.getter();
  sub_10009962C(&qword_100224DD0, &qword_100224DF8, &type metadata accessor for Artist, v5);
  (*(v4 + 8))(v2, v3);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v5, 1, v1) == 1)
  {
    sub_1000050C4(v0[12], &qword_100224DC8);
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000BE10(v7, qword_100239158);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[9];
      v10 = v0[10];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100139F7C(v11, v10, &v29);
      _os_log_impl(&_mh_execute_header, v8, v9, "Artist not found. ID: %s", v12, 0xCu);
      sub_100012A7C(v13);
    }

    v15 = v0[20];
    v14 = v0[21];
    v17 = v0[18];
    v16 = v0[19];
    v18 = v0[16];
    v19 = v0[17];
    sub_10009BC14();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);

    v21 = v0[1];
  }

  else
  {
    v22 = v0[30];
    v23 = v0[20];
    v24 = v0[21];
    v25 = v0[19];
    v26 = v0[12];
    v27 = v0[8];
    (*(v0[17] + 8))(v0[18], v0[16]);
    (*(v23 + 8))(v24, v25);
    (*(v6 + 32))(v27, v26, v22);

    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_10009A74C()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10009A824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  sub_1000024C4(&qword_100224D80);
  v4[12] = swift_task_alloc();
  v5 = sub_1000024C4(&qword_100224D88);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_1000024C4(&qword_100224D90);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = sub_1000024C4(&qword_100224D98);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v9 = type metadata accessor for MusicAuthorization.Status();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_10009AAC0);
}

uint64_t sub_10009AAC0()
{
  (*(v0[23] + 104))(v0[24], enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v0[22]);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_10009AB88;
  v2 = v0[28];

  return static MusicAuthorization.request()(v2);
}

uint64_t sub_10009AB88()
{

  return _swift_task_switch(sub_10009AC98);
}

uint64_t sub_10009AC98()
{
  v24 = v0;
  (*(v0[26] + 104))(v0[27], enum case for MusicAuthorization.Status.authorized(_:), v0[25]);
  sub_10009BCF0(&qword_100224DA0, &type metadata accessor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v5 = *(v4 + 8);
    v5(v0[27], v0[25]);
    v5(v1, v3);

LABEL_5:
    swift_getKeyPath();

    v0[6] = MusicItemID.init(_:)();
    v0[7] = v8;
    v0[30] = type metadata accessor for Playlist();
    sub_10009BCF0(&qword_100224DB0, &type metadata accessor for Playlist);
    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    sub_1000024C4(&qword_100225DB0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001B9E80;
    sub_1000024C4(&qword_100224DB8);
    *(v9 + 32) = static PartialMusicProperty<A>.tracks.getter();
    MusicCatalogResourceRequest.properties.setter();
    v10 = swift_task_alloc();
    v0[31] = v10;
    *v10 = v0;
    v10[1] = sub_10009B15C;
    v11 = v0[18];
    v12 = v0[19];

    return MusicCatalogResourceRequest.response()(v11, v12);
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);

  if (v6)
  {
    goto LABEL_5;
  }

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000BE10(v13, qword_100239158);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[9];
    v16 = v0[10];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100139F7C(v17, v16, &v23);
    _os_log_impl(&_mh_execute_header, v14, v15, "Authorization error fetching playlist. ID: %s", v18, 0xCu);
    sub_100012A7C(v19);
  }

  sub_10009BC14();
  swift_allocError();
  *v20 = 0;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_10009B15C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_10009B810;
  }

  else
  {
    v2 = sub_10009B288;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10009B288()
{
  v39 = v0;
  v1 = v0[30];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  MusicCatalogResourceResponse.items.getter();
  sub_10009962C(&qword_100224D88, &qword_100224DC0, &type metadata accessor for Playlist, v5);
  (*(v4 + 8))(v2, v3);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v5, 1, v1) == 1)
  {
    sub_1000050C4(v0[12], &qword_100224D80);
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000BE10(v7, qword_100239158);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[9];
      v10 = v0[10];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100139F7C(v11, v10, v38);
      _os_log_impl(&_mh_execute_header, v8, v9, "Playlist not found. ID: %s", v12, 0xCu);
      sub_100012A7C(v13);
    }

    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[16];
    sub_10009BC14();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
    (*(v15 + 8))(v14, v16);
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    sub_10000BE10(v7, qword_100239158);

    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = v0[9];
      v20 = v0[10];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38[0] = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_100139F7C(v21, v20, v38);
      *(v22 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error fetching playlist. ID: %s. Error: %@", v22, 0x16u);
      sub_1000050C4(v23, &qword_100221718);

      sub_100012A7C(v24);
    }

    v27 = v0[20];
    v26 = v0[21];
    v28 = v0[19];
    swift_allocError();
    *v29 = 2;
    swift_willThrow();

    (*(v27 + 8))(v26, v28);

    v30 = v0[1];
  }

  else
  {
    v31 = v0[30];
    v32 = v0[20];
    v33 = v0[21];
    v34 = v0[19];
    v35 = v0[12];
    v36 = v0[8];
    (*(v0[17] + 8))(v0[18], v0[16]);
    (*(v32 + 8))(v33, v34);
    (*(v6 + 32))(v36, v35, v31);

    v30 = v0[1];
  }

  return v30();
}

uint64_t sub_10009B810()
{
  v17 = v0;
  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_100139F7C(v5, v4, &v16);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching playlist. ID: %s. Error: %@", v6, 0x16u);
    sub_1000050C4(v7, &qword_100221718);

    sub_100012A7C(v8);
  }

  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[19];
  sub_10009BC14();
  swift_allocError();
  *v13 = 2;
  swift_willThrow();

  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10009BB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000BD00;

  return sub_10009A824(a1, a2, a3);
}

unint64_t sub_10009BC14()
{
  result = qword_100224DA8;
  if (!qword_100224DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224DA8);
  }

  return result;
}

uint64_t sub_10009BC98@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10001BED0(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_10009BCF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009BD38(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteViewConfiguration.QueryItem.Parameter(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteViewConfiguration.QueryItem.Parameter(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10009BEE0()
{
  result = qword_100224E00;
  if (!qword_100224E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E00);
  }

  return result;
}

uint64_t sub_10009BF34(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

__n128 sub_10009BF88(uint64_t a1, uint64_t a2)
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

uint64_t sub_10009BF9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_10009BFF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10009C088@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = sub_1000024C4(&qword_100224E08);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v66 - v5;
  v7 = *v2;
  v85 = v2[1];
  v86 = v7;

  v8 = LocalizedStringKey.init(stringLiteral:)();
  v83 = v9;
  v84 = v8;
  v11 = v10;
  v82 = v12;
  v13 = LocalizedStringKey.init(stringLiteral:)();
  v80 = v14;
  v81 = v13;
  v16 = v15;
  v79 = v17;
  type metadata accessor for CGSize(0);
  v102 = 0uLL;
  State.init(wrappedValue:)();
  v73 = *(&v91 + 1);
  v74 = v91;
  v78 = v92;
  static Alignment.center.getter();
  v76 = v11 & 1;
  v77 = v16 & 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v75 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v71 = v19;
  v72 = v18;
  v69 = v21;
  v70 = v20;
  v104 = 0;
  v68 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v105 = 0;
  v67 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v106 = 0;
  v38 = static Alignment.center.getter();
  v66 = v39;
  v40 = &v6[*(v4 + 44)];
  v41 = static Alignment.bottom.getter();
  v43 = v42;
  sub_10009C4E8(v2, &v102);
  v98 = v102;
  v99[0] = *v103;
  *(v99 + 10) = *&v103[10];
  v100 = v102;
  v101[0] = *v103;
  *(v101 + 10) = *&v103[10];
  sub_10009C6A8(&v98, &v88);
  sub_1000050C4(&v100, &qword_100224E10);
  v89 = v98;
  v90[0] = v99[0];
  *(v90 + 10) = *(v99 + 10);
  *&v88 = v41;
  *(&v88 + 1) = v43;
  sub_1000024C4(&qword_100224E18);
  sub_10000BFFC(&qword_100224E20, &qword_100224E18);
  View.accessibilityHidden(_:)();
  v102 = v88;
  *v103 = v89;
  *&v103[16] = v90[0];
  *&v103[26] = *(v90 + 10);
  sub_1000050C4(&v102, &qword_100224E18);
  v44 = &v40[*(sub_1000024C4(&qword_100224E28) + 36)];
  v45 = v66;
  *v44 = v38;
  v44[1] = v45;
  v46 = v73;
  *(v6 + 10) = v74;
  *(v6 + 11) = v46;
  v47 = v94;
  *(v6 + 136) = v93;
  v48 = v91;
  *(v6 + 120) = v92;
  *(v6 + 104) = v48;
  v49 = v96;
  *(v6 + 200) = v97;
  v50 = v95;
  *(v6 + 184) = v49;
  v51 = v83;
  *v6 = v84;
  *(v6 + 1) = v51;
  v6[16] = v76;
  v52 = v81;
  *(v6 + 3) = v82;
  *(v6 + 4) = v52;
  *(v6 + 5) = v80;
  v6[48] = v77;
  v53 = v85;
  v54 = v86;
  *(v6 + 7) = v79;
  *(v6 + 8) = v54;
  *(v6 + 9) = v53;
  *(v6 + 12) = v78;
  *(v6 + 168) = v50;
  *(v6 + 152) = v47;
  v6[216] = v75;
  *&v49 = v71;
  *(v6 + 28) = v72;
  *(v6 + 29) = v49;
  *&v49 = v69;
  *(v6 + 30) = v70;
  *(v6 + 31) = v49;
  v6[256] = 0;
  LOBYTE(v53) = v67;
  v6[264] = v68;
  *(v6 + 34) = v23;
  *(v6 + 35) = v25;
  *(v6 + 36) = v27;
  *(v6 + 37) = v29;
  v6[304] = 0;
  v6[312] = v53;
  *(v6 + 40) = v31;
  *(v6 + 41) = v33;
  *(v6 + 42) = v35;
  *(v6 + 43) = v37;
  v6[352] = 0;
  LOBYTE(v41) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v87;
  sub_10009C718(v6, v87);
  result = sub_1000024C4(&qword_100224E30);
  v65 = v63 + *(result + 36);
  *v65 = v41;
  *(v65 + 8) = v56;
  *(v65 + 16) = v58;
  *(v65 + 24) = v60;
  *(v65 + 32) = v62;
  *(v65 + 40) = 0;
  return result;
}

uint64_t sub_10009C4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = v8;
    v10 = Color.init(cgColor:)();
  }

  else
  {
    v10 = static Color.blue.getter();
  }

  v11 = v10;
  Image.init(_:bundle:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v12 = Image.resizable(capInsets:resizingMode:)();

  result = (*(v5 + 8))(v7, v4);
  *a2 = v11;
  *(a2 + 8) = 256;
  *(a2 + 16) = 16;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = 257;
  return result;
}

uint64_t sub_10009C6A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100224E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009C718(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100224E08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009C78C()
{
  result = qword_100224E38;
  if (!qword_100224E38)
  {
    sub_10000460C(&qword_100224E30);
    sub_10009C818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E38);
  }

  return result;
}

unint64_t sub_10009C818()
{
  result = qword_100224E40;
  if (!qword_100224E40)
  {
    sub_10000460C(&qword_100224E08);
    sub_10009C8D0();
    sub_10000BFFC(qword_100224E90, &qword_100224E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E40);
  }

  return result;
}

unint64_t sub_10009C8D0()
{
  result = qword_100224E48;
  if (!qword_100224E48)
  {
    sub_10000460C(&qword_100224E50);
    sub_10009C95C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E48);
  }

  return result;
}

unint64_t sub_10009C95C()
{
  result = qword_100224E58;
  if (!qword_100224E58)
  {
    sub_10000460C(&qword_100224E60);
    sub_10009C9E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E58);
  }

  return result;
}

unint64_t sub_10009C9E8()
{
  result = qword_100224E68;
  if (!qword_100224E68)
  {
    sub_10000460C(&qword_100224E70);
    sub_10009CA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E68);
  }

  return result;
}

unint64_t sub_10009CA74()
{
  result = qword_100224E78;
  if (!qword_100224E78)
  {
    sub_10000460C(&qword_100224E80);
    sub_10009CB00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E78);
  }

  return result;
}

unint64_t sub_10009CB00()
{
  result = qword_100224E88;
  if (!qword_100224E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E88);
  }

  return result;
}

void sub_10009CB64()
{
  type metadata accessor for VenueEventViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_100082DA0();
    if (v1 <= 0x3F)
    {
      sub_100017044();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10009CC2C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(qword_100224528);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_10009CCFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(qword_100224528);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009CE08(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for VenueEventViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v2;
}

uint64_t sub_10009CE64(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for VenueEventViewModel();
  type metadata accessor for State();
  State.projectedValue.getter();
  return v2;
}

uint64_t sub_10009CEC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
  sub_10000460C(&qword_100223470);
  v189 = type metadata accessor for ModifiedContent();
  v188 = sub_10000460C(&qword_100224F18);
  v187 = sub_10000460C(&qword_100224F20);
  v13 = type metadata accessor for Array();
  *&v198 = a1[5];
  v195 = *(*(v198 + 8) + 16);
  v192 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_10000460C(&qword_100224F28);
  v16 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v216 = v13;
  *(&v216 + 1) = AssociatedTypeWitness;
  *&v217 = v15;
  *(&v217 + 1) = v16;
  v218 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v18 = type metadata accessor for Section();
  v223 = sub_1000A6054();
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
  v38 = sub_10001877C();
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
  v42 = sub_10000460C(&qword_100224F48);
  *&v216 = v39;
  *(&v216 + 1) = &type metadata for Bool;
  *&v217 = v40;
  *(&v217 + 1) = &protocol witness table for Bool;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_10000460C(&qword_100224F50);
  v45 = sub_1000A6218();
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
  v53 = sub_1000A62F8();
  v54 = sub_1000A634C();
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
  v86 = sub_10009CE64(v191);
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
  v96 = sub_10009CE64(v85);
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
  sub_10009CE08(v114);
  v118 = sub_1000AB29C();
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
  v147 = sub_1000A61D0(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v207 = v145;
  v208 = v147;
  v148 = v179;
  v149 = swift_getWitnessTable();
  v150 = v176;
  sub_1000EE87C(v146, v148, v149);
  v151 = *(v180 + 8);
  v151(v146, v148);
  sub_1000EE87C(v150, v148, v149);
  return (v151)(v150, v148);
}