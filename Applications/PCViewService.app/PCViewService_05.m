void *sub_100078630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1000794D8(v2, *(a1 + 16), *(a1 + 24), __src);
  memcpy(__dst, __src, 0x119uLL);
  memcpy(v9, __src, 0x119uLL);
  sub_10001A510(__dst, &v6, &qword_1000E1710, &qword_10009AB00);
  sub_10000A628(v9, &qword_1000E1710, &qword_10009AB00);
  return memcpy((a2 + 24), __dst, 0x119uLL);
}

uint64_t sub_1000786E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(v5 + 56);
  swift_unknownObjectRetain();
  v7(v6, v5);
  swift_unknownObjectRelease();
  result = Image.init(systemName:)();
  *a2 = result;
  return result;
}

uint64_t sub_10007878C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1, v2);
  (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = *(a1 + 16);
  (*(v4 + 32))(v7 + v6, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1000056EC(&qword_1000E1700, &qword_10009AAB8);
  sub_10007C76C();
  return Button.init(action:label:)();
}

uint64_t sub_1000788F4(uint64_t a1)
{
  v2 = type metadata accessor for ActivityIcon(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100078A78(a1, v11);
  v7 = v12;
  if (v12)
  {
    v8 = v13;
    sub_100006768(v11, v12);
    v7 = sub_10006AC84(v7, v8);
    sub_10000529C(v11);
  }

  else
  {
    sub_10000A628(v11, &qword_1000DA920, &qword_100091C70);
  }

  UUID.init()();
  *&v6[*(v2 + 20)] = v7;
  return sub_100076BA0(v6, a1);
}

uint64_t sub_1000789FC(uint64_t a1)
{
  v2 = type metadata accessor for ProximityCardHeaderView();
  sub_1000788F4(v2);
  v3 = (a1 + *(v2 + 44));
  v5 = *v3;
  v6 = *(v3 + 1);
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  return State.wrappedValue.setter();
}

void sub_100078A78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Image.ResizingMode();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 16);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = *(v12 + 32);
  swift_unknownObjectRetain();
  v22 = v14(v13, v12);
  swift_unknownObjectRelease();
  if (v22)
  {
    v15 = *v3;
    v24.width = *v3;
    v24.height = *v3;
    UIGraphicsBeginImageContextWithOptions(v24, 0, 0.0);
    [v22 drawInRect:{0.0, 0.0, v15, v15}];
    v16 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (v16)
    {
      v17 = v16;
      Image.init(uiImage:)();
      v18 = v21;
      (*(v21 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v6);
      v19 = Image.resizable(capInsets:resizingMode:)();

      (*(v18 + 8))(v10, v6);
      *(a2 + 24) = sub_1000056EC(&qword_1000E1698, &qword_10009AA60);
      *(a2 + 32) = sub_10007C42C();

      *a2 = v19;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
    }

    else
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      v20 = v22;
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t sub_100078CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a1;
  v89 = a4;
  v6 = sub_1000056EC(&qword_1000E17F8, &qword_10009ABE8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v76 - v9;
  v82 = sub_1000056EC(&qword_1000E1800, &unk_10009ABF0);
  v11 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82, v12);
  v85 = &v76 - v13;
  v84 = sub_1000056EC(&qword_1000DBA58, &unk_100092F90);
  v14 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84, v15);
  v78 = &v76 - v16;
  v17 = type metadata accessor for MovieView(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v79 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1000056EC(&qword_1000DBA50, &qword_10009AC00);
  v21 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87, v22);
  v81 = &v76 - v23;
  v24 = sub_1000056EC(&qword_1000E1808, &qword_10009AC08);
  v25 = *(*(v24 - 8) + 64);
  v27 = __chkstk_darwin(v24, v26);
  v80 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v83 = &v76 - v30;
  v31 = sub_1000056EC(&qword_1000E12F8, &qword_10009A670);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8, v33);
  v35 = &v76 - v34;
  v36 = type metadata accessor for AdjustedMovie(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36, v39);
  v86 = &v76 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a2;
  v42 = a3;
  v43 = v88;
  v44 = (v43 + *(type metadata accessor for ProximityCardHeaderView() + 44));
  v45 = *v44;
  v46 = *(v44 + 1);
  v91 = v45;
  v92 = v46;
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  if (v90 != 1)
  {
    goto LABEL_4;
  }

  v76 = v24;
  v77 = v10;
  v47 = *(v43 + 16);
  v48 = v42;
  v49 = *(v42 + 40);
  swift_unknownObjectRetain();
  v49(v41, v48);
  swift_unknownObjectRelease();
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_10000A628(v35, &qword_1000E12F8, &qword_10009A670);
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_10007CE38();
    return _ConditionalContent<>.init(storage:)();
  }

  v51 = v86;
  sub_10007D080(v35, v86, type metadata accessor for AdjustedMovie);
  v52 = v51;
  v53 = v79;
  sub_10007C364(v52, v79, type metadata accessor for AdjustedMovie);
  sub_1000056EC(&qword_1000DB8E8, &unk_10009AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100092B80;
  v55 = static Edge.Set.leading.getter();
  *(inited + 32) = v55;
  v56 = static Edge.Set.trailing.getter();
  *(inited + 33) = v56;
  v57 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v55)
  {
    v57 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  v58 = Edge.Set.init(rawValue:)();
  v60 = v80;
  v59 = v81;
  if (v58 != v56)
  {
    v57 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  sub_10007D080(v53, v59, type metadata accessor for MovieView);
  v69 = v59 + *(v87 + 36);
  *v69 = v57;
  *(v69 + 8) = v62;
  *(v69 + 16) = v64;
  *(v69 + 24) = v66;
  *(v69 + 32) = v68;
  *(v69 + 40) = 0;
  v70 = static Color.blue.getter();
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v71 = *(qword_1000F3C58 + 136);
  v72 = sub_100025508();

  if (v72)
  {
    v73 = v78;
    sub_10002A0A8(v70, v78);
    sub_10001A510(v73, v85, &qword_1000DBA58, &unk_100092F90);
    swift_storeEnumTagMultiPayload();
    sub_10007CEC4();
    sub_10007CF7C();
    _ConditionalContent<>.init(storage:)();

    sub_10000A628(v73, &qword_1000DBA58, &unk_100092F90);
  }

  else
  {
    sub_10001A510(v59, v85, &qword_1000DBA50, &qword_10009AC00);
    swift_storeEnumTagMultiPayload();
    sub_10007CEC4();
    sub_10007CF7C();
    _ConditionalContent<>.init(storage:)();
  }

  v74 = v77;
  sub_10000A628(v59, &qword_1000DBA50, &qword_10009AC00);
  v75 = v83;
  sub_10001F170(v60, v83, &qword_1000E1808, &qword_10009AC08);
  sub_10001A510(v75, v74, &qword_1000E1808, &qword_10009AC08);
  swift_storeEnumTagMultiPayload();
  sub_10007CE38();
  _ConditionalContent<>.init(storage:)();
  sub_10000A628(v75, &qword_1000E1808, &qword_10009AC08);
  return sub_10007C3CC(v86, type metadata accessor for AdjustedMovie);
}

uint64_t sub_1000794D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a3 + 16);
  swift_unknownObjectRetain();
  v60 = a2;
  v61 = a3;
  v8 = v7(a2, a3);
  v10 = v9;
  swift_unknownObjectRelease();
  *&v138 = v8;
  *(&v138 + 1) = v10;
  sub_10001F080();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  LOBYTE(v10) = v14;
  static Font.headline.getter();
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  sub_100022470(v11, v13, v10 & 1);

  static Color.primary.getter();
  v20 = Text.foregroundColor(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_100022470(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v153 = v20;
  v154 = v22;
  v155 = v24 & 1;
  v57 = v26;
  v156 = v26;
  v157 = KeyPath;
  v158 = 1;
  v159 = 0;
  v28 = static Color.blue.getter();
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v58 = qword_1000F3C58;
  v29 = *(qword_1000F3C58 + 136);
  v30 = sub_100025508();

  if (v30)
  {
    sub_10002A0CC(v28, &v138);
    v112 = v144;
    *v113 = *v145;
    v108 = v140;
    v109 = v141;
    v111 = v143;
    v110 = v142;
    v107 = v139;
    v106 = v138;
    v120 = v144;
    *v121 = *v145;
    v116 = v140;
    v117 = v141;
    v119 = v143;
    v118 = v142;
    *&v113[16] = *&v145[16];
    *&v121[16] = *&v145[16];
    v115 = v139;
    v114 = v138;
    sub_10001A510(&v106, &v130, &qword_1000E1718, &qword_10009AB38);
    sub_10000A628(&v114, &qword_1000E1718, &qword_10009AB38);
    v136 = v112;
    *v137 = *v113;
    *&v137[16] = *&v113[16];
    v132 = v108;
    v133 = v109;
    v135 = v111;
    v134 = v110;
    v131 = v107;
    v130 = v106;
    sub_10007C8F8(&v130);
    v128 = v136;
    v129[0] = *v137;
    *(v129 + 9) = *&v137[9];
    v124 = v132;
    v125 = v133;
    v127 = v135;
    v126 = v134;
    v123 = v131;
    v122 = v130;
    sub_10001A510(&v106, &v138, &qword_1000E1718, &qword_10009AB38);
    sub_10001A510(&v106, &v138, &qword_1000E1718, &qword_10009AB38);
    sub_1000056EC(&qword_1000E1718, &qword_10009AB38);
    sub_1000056EC(&qword_1000E1720, &unk_10009AB40);
    sub_10007C900(&qword_1000E1728, &qword_1000E1718, &qword_10009AB38, sub_10007C840);
    sub_10007C840();
    _ConditionalContent<>.init(storage:)();
    sub_100022470(v20, v22, v24 & 1);

    sub_10000A628(&v106, &qword_1000E1718, &qword_10009AB38);
    sub_10000A628(&v106, &qword_1000E1718, &qword_10009AB38);
  }

  else
  {
    *&v130 = v20;
    *(&v130 + 1) = v22;
    LOBYTE(v131) = v24 & 1;
    *(&v131 + 1) = v57;
    *&v132 = KeyPath;
    *(&v132 + 1) = 1;
    LOBYTE(v133) = 0;
    sub_10007C834(&v130);
    v128 = v136;
    v129[0] = *v137;
    *(v129 + 9) = *&v137[9];
    v124 = v132;
    v125 = v133;
    v127 = v135;
    v126 = v134;
    v123 = v131;
    v122 = v130;
    sub_1000056EC(&qword_1000E1718, &qword_10009AB38);
    sub_1000056EC(&qword_1000E1720, &unk_10009AB40);
    sub_10007C900(&qword_1000E1728, &qword_1000E1718, &qword_10009AB38, sub_10007C840);
    sub_10007C840();
    _ConditionalContent<>.init(storage:)();
  }

  v128 = v144;
  v129[0] = *v145;
  *(v129 + 9) = *&v145[9];
  v124 = v140;
  v125 = v141;
  v127 = v143;
  v126 = v142;
  v123 = v139;
  v122 = v138;
  v136 = v144;
  *v137 = *v145;
  *&v137[9] = *&v145[9];
  v132 = v140;
  v133 = v141;
  v135 = v143;
  v134 = v142;
  v131 = v139;
  v130 = v138;
  sub_10001A510(&v122, &v114, &qword_1000E1740, &qword_10009AB50);
  sub_10000A628(&v130, &qword_1000E1740, &qword_10009AB50);
  v31 = *(a1 + 16);
  v32 = *(v61 + 24);
  swift_unknownObjectRetain();
  v33 = v32(v60, v61);
  v35 = v34;
  swift_unknownObjectRelease();
  *&v114 = v33;
  *(&v114 + 1) = v35;
  v36 = Text.init<A>(_:)();
  v38 = v37;
  LOBYTE(v35) = v39;
  static Font.headline.getter();
  v40 = Text.font(_:)();
  v42 = v41;
  v44 = v43;

  sub_100022470(v36, v38, v35 & 1);

  static Color.secondary.getter();
  v45 = Text.foregroundColor(_:)();
  v47 = v46;
  LOBYTE(v35) = v48;
  v50 = v49;

  sub_100022470(v40, v42, v44 & 1);

  v51 = swift_getKeyPath();
  v146 = v45;
  v147 = v47;
  v52 = v35 & 1;
  v148 = v52;
  v149 = v50;
  v150 = v51;
  v151 = 1;
  v152 = 0;
  v53 = static Color.blue.getter();
  v54 = *(v58 + 136);
  v55 = sub_100025508();

  if (v55)
  {
    sub_10002A0CC(v53, &v114);
    v88 = v120;
    *v89 = *v121;
    v84 = v116;
    v85 = v117;
    v86 = v118;
    v87 = v119;
    v82 = v114;
    v83 = v115;
    v95 = v119;
    v96 = v120;
    *v97 = *v121;
    v92 = v116;
    v93 = v117;
    v94 = v118;
    *&v89[16] = *&v121[16];
    *&v97[16] = *&v121[16];
    v90 = v114;
    v91 = v115;
    sub_10001A510(&v82, &v106, &qword_1000E1718, &qword_10009AB38);
    sub_10000A628(&v90, &qword_1000E1718, &qword_10009AB38);
    v112 = v88;
    *v113 = *v89;
    *&v113[16] = *&v89[16];
    v108 = v84;
    v109 = v85;
    v111 = v87;
    v110 = v86;
    v107 = v83;
    v106 = v82;
    sub_10007C8F8(&v106);
    v104 = v112;
    v105[0] = *v113;
    *(v105 + 9) = *&v113[9];
    v100 = v108;
    v101 = v109;
    v103 = v111;
    v102 = v110;
    v99 = v107;
    v98 = v106;
    sub_10001A510(&v82, &v114, &qword_1000E1718, &qword_10009AB38);
    sub_10001A510(&v82, &v114, &qword_1000E1718, &qword_10009AB38);
    sub_1000056EC(&qword_1000E1718, &qword_10009AB38);
    sub_1000056EC(&qword_1000E1720, &unk_10009AB40);
    sub_10007C900(&qword_1000E1728, &qword_1000E1718, &qword_10009AB38, sub_10007C840);
    sub_10007C840();
    _ConditionalContent<>.init(storage:)();
    sub_100022470(v45, v47, v52);

    sub_10000A628(&v82, &qword_1000E1718, &qword_10009AB38);
    sub_10000A628(&v82, &qword_1000E1718, &qword_10009AB38);
  }

  else
  {
    *&v106 = v45;
    *(&v106 + 1) = v47;
    LOBYTE(v107) = v52;
    *(&v107 + 1) = v50;
    *&v108 = v51;
    *(&v108 + 1) = 1;
    LOBYTE(v109) = 0;
    sub_10007C834(&v106);
    v104 = v112;
    v105[0] = *v113;
    *(v105 + 9) = *&v113[9];
    v100 = v108;
    v101 = v109;
    v103 = v111;
    v102 = v110;
    v99 = v107;
    v98 = v106;
    sub_1000056EC(&qword_1000E1718, &qword_10009AB38);
    sub_1000056EC(&qword_1000E1720, &unk_10009AB40);
    sub_10007C900(&qword_1000E1728, &qword_1000E1718, &qword_10009AB38, sub_10007C840);
    sub_10007C840();
    _ConditionalContent<>.init(storage:)();
  }

  v78 = v120;
  v79[0] = *v121;
  *(v79 + 9) = *&v121[9];
  v74 = v116;
  v75 = v117;
  v76 = v118;
  v77 = v119;
  v72 = v114;
  v73 = v115;
  v80[6] = v120;
  v81[0] = *v121;
  *(v81 + 9) = *&v121[9];
  v80[2] = v116;
  v80[3] = v117;
  v80[4] = v118;
  v80[5] = v119;
  v80[0] = v114;
  v80[1] = v115;
  sub_10001A510(&v72, &v106, &qword_1000E1740, &qword_10009AB50);
  sub_10000A628(v80, &qword_1000E1740, &qword_10009AB50);
  v70 = v128;
  v71[0] = v129[0];
  *(v71 + 9) = *(v129 + 9);
  v66 = v124;
  v67 = v125;
  v68 = v126;
  v69 = v127;
  v64 = v122;
  v65 = v123;
  v104 = v78;
  v105[0] = v79[0];
  *(v105 + 9) = *(v79 + 9);
  v100 = v74;
  v101 = v75;
  v103 = v77;
  v102 = v76;
  v99 = v73;
  v98 = v72;
  v88 = v128;
  *v89 = v129[0];
  *&v89[9] = *(v129 + 9);
  v84 = v124;
  v85 = v125;
  v86 = v126;
  v87 = v127;
  v82 = v122;
  v83 = v123;
  __src[6] = v128;
  __src[7] = v129[0];
  *(&__src[7] + 9) = *(v129 + 9);
  __src[2] = v124;
  __src[3] = v125;
  __src[4] = v126;
  __src[5] = v127;
  __src[0] = v122;
  __src[1] = v123;
  *v97 = v79[0];
  *&v97[9] = *(v79 + 9);
  v92 = v74;
  v93 = v75;
  v95 = v77;
  v96 = v78;
  v94 = v76;
  v90 = v72;
  v91 = v73;
  *(&__src[16] + 9) = *(v79 + 9);
  __src[15] = v78;
  __src[16] = v79[0];
  __src[11] = v74;
  __src[12] = v75;
  __src[13] = v76;
  __src[14] = v77;
  __src[9] = v72;
  __src[10] = v73;
  memcpy(a4, __src, 0x119uLL);
  sub_10001A510(&v82, &v106, &qword_1000E1740, &qword_10009AB50);
  sub_10001A510(&v90, &v106, &qword_1000E1740, &qword_10009AB50);
  sub_10000A628(&v98, &qword_1000E1740, &qword_10009AB50);
  v112 = v70;
  *v113 = v71[0];
  *&v113[9] = *(v71 + 9);
  v108 = v66;
  v109 = v67;
  v111 = v69;
  v110 = v68;
  v107 = v65;
  v106 = v64;
  return sub_10000A628(&v106, &qword_1000E1740, &qword_10009AB50);
}

uint64_t sub_10007A250@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000056EC(&qword_1000DBD08, &qword_1000937D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v11 - v5;
  v7 = Image.init(systemName:)();
  v8 = type metadata accessor for Font.Design();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = static Font.system(size:weight:design:)();
  sub_10000A628(v6, &qword_1000DBD08, &qword_1000937D0);
  result = swift_getKeyPath();
  *a1 = v7;
  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t sub_10007A38C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ActivityDisplayContext(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v15 - v11;
  sub_10007C364(a1, &v15 - v11, type metadata accessor for ActivityDisplayContext);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007C364(v12, v9, type metadata accessor for ActivityDisplayContext);

  static Published.subscript.setter();
  return sub_10007C3CC(v12, type metadata accessor for ActivityDisplayContext);
}

uint64_t sub_10007A4A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_10007A528(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10007A5AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10007A62C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return static Published.subscript.setter();
}

uint64_t sub_10007A6A4(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10007A71C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000056EC(&qword_1000E12F8, &qword_10009A670);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v15 - v11;
  sub_10001A510(a1, &v15 - v11, &qword_1000E12F8, &qword_10009A670);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001A510(v12, v9, &qword_1000E12F8, &qword_10009A670);

  static Published.subscript.setter();
  return sub_10000A628(v12, &qword_1000E12F8, &qword_10009A670);
}

uint64_t sub_10007A9A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10007ABD4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10007AD64(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100008A9C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10007A9A4(v13, a3, a4, &v12);
  v10 = v4;
  sub_100008A9C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10007AD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10007A9A4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10007AE1C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10000A1AC(a3, a4);
          return sub_10007ABD4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10007AF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v98 = a3;
  v97 = a2;
  v115 = a1;
  v3 = sub_1000056EC(&qword_1000E1558, &qword_10009A988);
  v110 = *(v3 - 8);
  v111 = v3;
  v4 = *(v110 + 64);
  __chkstk_darwin(v3, v5);
  v109 = v89 - v6;
  v7 = sub_1000056EC(&qword_1000E1560, &qword_10009A990);
  v113 = *(v7 - 8);
  v114 = v7;
  v8 = *(v113 + 64);
  __chkstk_darwin(v7, v9);
  v112 = v89 - v10;
  v11 = sub_1000056EC(&qword_1000E1568, &qword_10009A998);
  v107 = *(v11 - 8);
  v108 = v11;
  v12 = *(v107 + 64);
  __chkstk_darwin(v11, v13);
  v106 = v89 - v14;
  v15 = sub_1000056EC(&qword_1000E1570, &qword_10009A9A0);
  v101 = *(v15 - 8);
  v102 = v15;
  v16 = *(v101 + 64);
  __chkstk_darwin(v15, v17);
  v100 = v89 - v18;
  v19 = sub_1000056EC(&qword_1000E1578, &qword_10009A9A8);
  v104 = *(v19 - 8);
  v105 = v19;
  v20 = *(v104 + 64);
  __chkstk_darwin(v19, v21);
  v103 = v89 - v22;
  v94 = type metadata accessor for ActivityDisplayContext(0);
  v23 = *(*(v94 - 1) + 64);
  v25 = __chkstk_darwin(v94, v24);
  v93 = v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v27);
  v92 = v89 - v28;
  v99 = sub_1000056EC(&qword_1000DAF88, &qword_10009A980);
  v95 = *(v99 - 8);
  v29 = *(v95 + 8);
  __chkstk_darwin(v99, v30);
  v32 = v89 - v31;
  v91 = sub_1000056EC(&qword_1000E1550, &qword_10009A978);
  v90 = *(v91 - 8);
  v33 = *(v90 + 64);
  __chkstk_darwin(v91, v34);
  v89[0] = v89 - v35;
  v36 = sub_1000056EC(&qword_1000E1540, &qword_10009A968);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36, v39);
  v41 = v89 - v40;
  v42 = sub_1000056EC(&qword_1000E12F8, &qword_10009A670);
  v43 = *(*(v42 - 8) + 64);
  v45 = __chkstk_darwin(v42, v44);
  v47 = v89 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45, v48);
  v50 = v89 - v49;
  v51 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__movie;
  v52 = type metadata accessor for AdjustedMovie(0);
  (*(*(v52 - 8) + 56))(v50, 1, 1, v52);
  sub_10001A510(v50, v47, &qword_1000E12F8, &qword_10009A670);
  Published.init(initialValue:)();
  v53 = v89[1];
  sub_10000A628(v50, &qword_1000E12F8, &qword_10009A670);
  (*(v37 + 32))(v53 + v51, v41, v36);
  v54 = (v53 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_eventHandler);
  *v54 = 0;
  v54[1] = 0;
  v55 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__activityImage;
  v118 = 0;
  v56 = sub_1000056EC(&unk_1000E1310, &unk_10009A690);
  v57 = v89[0];
  v96 = v56;
  Published.init(initialValue:)();
  (*(v90 + 32))(v53 + v55, v57, v91);
  v58 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__canShowActivityIcon;
  LOBYTE(v118) = 0;
  Published.init(initialValue:)();
  v59 = *(v95 + 4);
  v60 = v99;
  v59(v53 + v58, v32, v99);
  v61 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__isOptimisticStateActive;
  LOBYTE(v118) = 0;
  Published.init(initialValue:)();
  v59(v53 + v61, v32, v60);
  v99 = v53 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_tasks;
  *(v53 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_tasks) = &_swiftEmptySetSingleton;
  if (qword_1000D97F8 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_1000047A0(v62, qword_1000E1260);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "Init", v65, 2u);
  }

  v66 = v92;
  v95 = type metadata accessor for ActivityDisplayContext;
  sub_10007C364(v115, v92, type metadata accessor for ActivityDisplayContext);
  swift_beginAccess();
  sub_10007C364(v66, v93, type metadata accessor for ActivityDisplayContext);
  Published.init(initialValue:)();
  sub_10007C3CC(v66, type metadata accessor for ActivityDisplayContext);
  swift_endAccess();
  v68 = *v54;
  v67 = v54[1];
  v69 = v97;
  v70 = v98;
  *v54 = v97;
  v54[1] = v70;
  sub_10000B16C(v69);
  sub_10000B17C(v68);
  v71 = sub_100060900();
  v73 = v72;
  swift_beginAccess();
  v116 = v71;
  v117 = v73;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v98 = sub_1000056EC(&qword_1000E1538, &qword_10009A960);
  v74 = v106;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_1000056EC(&qword_1000E1580, &qword_10009A9B0);
  v97 = sub_10000EE58(&qword_1000E1588, &qword_1000E1568, &qword_10009A998);
  v75 = v100;
  v76 = v108;
  Publisher.map<A>(_:)();
  v107 = *(v107 + 8);
  (v107)(v74, v76);
  v94 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000EE58(&qword_1000E1590, &qword_1000E1570, &qword_10009A9A0);
  sub_10000EE58(&qword_1000E1598, &qword_1000E1580, &qword_10009A9B0);
  v77 = v102;
  v78 = v103;
  Publisher<>.switchToLatest()();
  (*(v101 + 8))(v75, v77);
  swift_allocObject();
  swift_weakInit();
  sub_10000EE58(&qword_1000E15A0, &qword_1000E1578, &qword_10009A9A8);

  v79 = v105;
  Publisher<>.sink(receiveValue:)();

  (*(v104 + 8))(v78, v79);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v80 = v115;
  v81 = *(v115 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  v118 = v81;

  v82 = v81;
  static Published.subscript.setter();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  v83 = v109;
  Publisher.map<A>(_:)();
  (v107)(v74, v76);
  sub_10000EE58(&qword_1000E15A8, &qword_1000E1558, &qword_10009A988);
  v84 = v111;
  v85 = v112;
  Publisher.removeDuplicates(by:)();
  (*(v110 + 8))(v83, v84);
  swift_allocObject();
  swift_weakInit();

  sub_10000EE58(&qword_1000E15B0, &qword_1000E1560, &qword_10009A990);
  v86 = v114;
  Publisher<>.sink(receiveValue:)();

  (*(v113 + 8))(v85, v86);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_100075D64();
  v87 = [objc_opt_self() defaultCenter];
  [v87 addObserver:v53 selector:"createMovieIfNeeded" name:kPCAssetManagerNotificationNameQueryDidComplete object:0];

  sub_10007C3CC(v80, v95);
  return v53;
}

uint64_t sub_10007BD74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007BDBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000A1AC(a1, a2);
  }

  return a1;
}

void sub_10007BDD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  type metadata accessor for ObservedObject();
  if (v3 <= 0x3F)
  {
    sub_10007C084(319, &qword_1000E1660, type metadata accessor for ActivityIcon, &type metadata accessor for State);
    if (v4 <= 0x3F)
    {
      sub_10007C0E8(319, &qword_1000DB1A0, &type metadata for Bool, &type metadata accessor for State);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10007BEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000056EC(qword_1000E15D8, &qword_10009A9C8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007BFBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000056EC(qword_1000E15D8, &qword_10009A9C8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007C084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10007C0E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10007C180()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ProximityCardHeaderView();
  v4 = v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  return sub_1000788F4(v3);
}

unint64_t sub_10007C1E0()
{
  result = qword_1000E1680;
  if (!qword_1000E1680)
  {
    sub_100005818(&unk_1000E1310, &unk_10009A690);
    sub_10007D038(&qword_1000E1688, sub_10007C294);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1680);
  }

  return result;
}

unint64_t sub_10007C294()
{
  result = qword_1000E0480;
  if (!qword_1000E0480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E0480);
  }

  return result;
}

uint64_t sub_10007C2E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for ProximityCardHeaderView() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000789FC(v4);
}

uint64_t sub_10007C364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007C3CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10007C42C()
{
  result = qword_1000E16A0;
  if (!qword_1000E16A0)
  {
    sub_100005818(&qword_1000E1698, &qword_10009AA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E16A0);
  }

  return result;
}

unint64_t sub_10007C4BC()
{
  result = qword_1000E16D8;
  if (!qword_1000E16D8)
  {
    sub_100005818(&qword_1000DBA20, &qword_10009AA90);
    sub_10000EE58(&qword_1000E16E0, &qword_1000E16E8, &qword_10009AA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E16D8);
  }

  return result;
}

uint64_t sub_10007C57C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for ProximityCardHeaderView() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5 + 16);
  swift_unknownObjectRelease();
  v8 = v0 + v5 + v3[12];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *(v8 + *(type metadata accessor for ActivityIcon(0) + 20));

  v11 = *(v8 + *(sub_1000056EC(qword_1000E15D8, &qword_10009A9C8) + 28));

  v12 = *(v0 + v5 + v3[13] + 8);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_10007C6B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for ProximityCardHeaderView() - 8);
  v4 = *(v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 16);
  v5 = *(v2 + 64);
  swift_unknownObjectRetain();
  v5(1, v1, v2);

  return swift_unknownObjectRelease();
}

unint64_t sub_10007C76C()
{
  result = qword_1000E1708;
  if (!qword_1000E1708)
  {
    sub_100005818(&qword_1000E1700, &qword_10009AAB8);
    sub_10000EE58(&qword_1000DC200, &qword_1000DC208, &unk_10009AAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1708);
  }

  return result;
}

unint64_t sub_10007C840()
{
  result = qword_1000E1730;
  if (!qword_1000E1730)
  {
    sub_100005818(&qword_1000E1720, &unk_10009AB40);
    sub_10000EE58(&qword_1000E1738, &qword_1000DBA28, &qword_100092F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1730);
  }

  return result;
}

uint64_t sub_10007C900(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005818(a2, a3);
    a4();
    sub_10000EE58(&qword_1000DB898, &qword_1000DB8A0, &qword_10009AAA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10007C9B0()
{
  result = qword_1000E1778;
  if (!qword_1000E1778)
  {
    sub_100005818(&qword_1000DBA30, &qword_100092F88);
    sub_10007CA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1778);
  }

  return result;
}

unint64_t sub_10007CA3C()
{
  result = qword_1000E1780;
  if (!qword_1000E1780)
  {
    sub_100005818(&qword_1000E1788, &qword_10009ABA8);
    sub_10007CAF4();
    sub_10000EE58(&qword_1000DF010, &qword_1000DF018, &qword_10009C760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1780);
  }

  return result;
}

unint64_t sub_10007CAF4()
{
  result = qword_1000E1790;
  if (!qword_1000E1790)
  {
    sub_100005818(&qword_1000E1798, &qword_10009ABB0);
    sub_10007CB80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1790);
  }

  return result;
}

unint64_t sub_10007CB80()
{
  result = qword_1000E17A0;
  if (!qword_1000E17A0)
  {
    sub_100005818(&qword_1000E17A8, &qword_10009ABB8);
    sub_10000EE58(&qword_1000E17B0, &qword_1000E17B8, &unk_10009ABC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E17A0);
  }

  return result;
}

unint64_t sub_10007CC38()
{
  result = qword_1000E17D0;
  if (!qword_1000E17D0)
  {
    sub_100005818(&qword_1000DBA48, &unk_10009AB60);
    sub_10007CCF0();
    sub_10000EE58(&qword_1000DB898, &qword_1000DB8A0, &qword_10009AAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E17D0);
  }

  return result;
}

unint64_t sub_10007CCF0()
{
  result = qword_1000E17D8;
  if (!qword_1000E17D8)
  {
    sub_100005818(&qword_1000DBA40, &qword_10009AB70);
    sub_10007CD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E17D8);
  }

  return result;
}

unint64_t sub_10007CD7C()
{
  result = qword_1000E17E0;
  if (!qword_1000E17E0)
  {
    sub_100005818(&qword_1000E17C8, &qword_10009ABD8);
    sub_10007D038(&qword_1000E17E8, type metadata accessor for ActivityIconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E17E0);
  }

  return result;
}

unint64_t sub_10007CE38()
{
  result = qword_1000E1810;
  if (!qword_1000E1810)
  {
    sub_100005818(&qword_1000E1808, &qword_10009AC08);
    sub_10007CEC4();
    sub_10007CF7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1810);
  }

  return result;
}

unint64_t sub_10007CEC4()
{
  result = qword_1000E1818;
  if (!qword_1000E1818)
  {
    sub_100005818(&qword_1000DBA58, &unk_100092F90);
    sub_10007CF7C();
    sub_10000EE58(&qword_1000DB898, &qword_1000DB8A0, &qword_10009AAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1818);
  }

  return result;
}

unint64_t sub_10007CF7C()
{
  result = qword_1000E1820;
  if (!qword_1000E1820)
  {
    sub_100005818(&qword_1000DBA50, &qword_10009AC00);
    sub_10007D038(&qword_1000D9C48, type metadata accessor for MovieView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1820);
  }

  return result;
}

uint64_t sub_10007D038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007D080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10007D0EC()
{
  result = qword_1000E1828;
  if (!qword_1000E1828)
  {
    sub_100005818(&qword_1000E1690, &qword_10009AA58);
    sub_100005818(&qword_1000E1668, &qword_10009AA48);
    sub_100005818(&unk_1000E1310, &unk_10009A690);
    sub_10000EE58(&qword_1000E1678, &qword_1000E1668, &qword_10009AA48);
    sub_10007C1E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1828);
  }

  return result;
}

uint64_t sub_10007D21C(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_10007D23C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 57))
  {
    return (*a1 + 60);
  }

  v3 = ((*(a1 + 56) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 56) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10007D290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 60;
    if (a3 >= 0x3C)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_10007D310(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 56) = *(result + 56) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0x80;
  }

  return result;
}

uint64_t sub_10007D660(void *a1)
{
  v2 = v1;
  v4 = sub_1000056EC(&qword_1000E18B0, &qword_10009AE20);
  v70 = *(v4 - 8);
  *&v71 = v4;
  v5 = *(v70 + 64);
  __chkstk_darwin(v4, v6);
  v69 = &v59 - v7;
  v68 = sub_1000056EC(&qword_1000E18B8, &qword_10009AE28);
  v67 = *(v68 - 8);
  v8 = *(v67 + 64);
  __chkstk_darwin(v68, v9);
  v66 = &v59 - v10;
  v72 = sub_1000056EC(&qword_1000E18C0, &qword_10009AE30);
  v65 = *(v72 - 8);
  v11 = *(v65 + 64);
  __chkstk_darwin(v72, v12);
  v14 = &v59 - v13;
  v15 = sub_1000056EC(&qword_1000E18C8, &qword_10009AE38);
  v64 = *(v15 - 8);
  v16 = *(v64 + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v59 - v18;
  v63 = sub_1000056EC(&qword_1000E18D0, &qword_10009AE40);
  v62 = *(v63 - 8);
  v20 = *(v62 + 64);
  __chkstk_darwin(v63, v21);
  v61 = &v59 - v22;
  v60 = sub_1000056EC(&qword_1000E18D8, &qword_10009AE48);
  v59 = *(v60 - 8);
  v23 = *(v59 + 64);
  __chkstk_darwin(v60, v24);
  v26 = &v59 - v25;
  v27 = sub_1000056EC(&qword_1000E18E0, &qword_10009AE50);
  v75 = *(v27 - 8);
  v76 = v27;
  v28 = *(v75 + 64);
  __chkstk_darwin(v27, v29);
  v31 = &v59 - v30;
  v32 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_10007F460();
  v74 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v33 = *v2;
  v34 = v2[1];
  v35 = *(v2 + 4);
  v36 = *(v2 + 5);
  v37 = *(v2 + 6);
  v38 = *(v2 + 56);
  v39 = v38 >> 5;
  if (v38 >> 5 <= 1)
  {
    v45 = v72;
    v73 = v33;
    if (v39)
    {
      LOBYTE(v77) = 3;
      v71 = v34;
      sub_10007F604();
      v55 = v14;
      v56 = v76;
      v57 = v74;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v77 = v73;
      v78 = v71;
      v79 = v35;
      v80 = v36;
      v81 = v37;
      sub_100073FB8();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v65 + 8))(v55, v45);
      return (*(v75 + 8))(v57, v56);
    }

    else
    {
      LOBYTE(v77) = 2;
      sub_10007F658();
      v46 = v76;
      v47 = v74;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v64 + 8))(v19, v15);
      return (*(v75 + 8))(v47, v46);
    }
  }

  else if (v39 == 2)
  {
    v48 = v38 & 0x1F;
    LOBYTE(v77) = 4;
    v73 = v33;
    v71 = v34;
    sub_10007F55C();
    v49 = v66;
    v50 = v76;
    v51 = v74;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v77 = v73;
    v78 = v71;
    v79 = v35;
    v80 = v36;
    v81 = v37;
    v82 = v48;
    sub_10007F7A8();
    v52 = v68;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v67 + 8))(v49, v52);
    return (*(v75 + 8))(v51, v50);
  }

  else if (v39 == 3)
  {
    LOBYTE(v77) = 5;
    v73 = v33;
    sub_10007F4B4();
    v40 = v69;
    v41 = v76;
    v42 = v74;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v77) = v73;
    sub_10007F754();
    v43 = v71;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v70 + 8))(v40, v43);
    return (*(v75 + 8))(v42, v41);
  }

  else
  {
    if (v34 | v33 | *(&v33 + 1) | *(&v34 + 1) | v35 | v36 | v37 || v38 != 128)
    {
      LOBYTE(v77) = 1;
      sub_10007F6AC();
      v58 = v61;
      v53 = v76;
      v54 = v74;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v62 + 8))(v58, v63);
    }

    else
    {
      LOBYTE(v77) = 0;
      sub_10007F700();
      v53 = v76;
      v54 = v74;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v59 + 8))(v26, v60);
    }

    return (*(v75 + 8))(v54, v53);
  }
}

uint64_t sub_10007DEA0(uint64_t a1)
{
  v2 = sub_10007F55C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007DEDC(uint64_t a1)
{
  v2 = sub_10007F55C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007DF18()
{
  v1 = *v0;
  v2 = 0x69746E6573657270;
  v3 = 0x64656C696166;
  v4 = 0x726F737365636361;
  if (v1 != 4)
  {
    v4 = 0x6F69746163756465;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746E6573657270;
  if (v1 != 1)
  {
    v5 = 0x657373696D736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10007DFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007E6C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007E020(uint64_t a1)
{
  v2 = sub_10007F460();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E05C(uint64_t a1)
{
  v2 = sub_10007F460();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007E098(uint64_t a1)
{
  v2 = sub_10007F658();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E0D4(uint64_t a1)
{
  v2 = sub_10007F658();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007E110(uint64_t a1)
{
  v2 = sub_10007F4B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E14C(uint64_t a1)
{
  v2 = sub_10007F4B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007E188(uint64_t a1)
{
  v2 = sub_10007F604();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E1C4(uint64_t a1)
{
  v2 = sub_10007F604();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007E200(uint64_t a1)
{
  v2 = sub_10007F6AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E23C(uint64_t a1)
{
  v2 = sub_10007F6AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007E278(uint64_t a1)
{
  v2 = sub_10007F700();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E2B4(uint64_t a1)
{
  v2 = sub_10007F700();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007E2F0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_10007E8E0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

BOOL sub_10007E358(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_10007E3B4(v5, v7);
}

BOOL sub_10007E3B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 56);
  v3 = v2 >> 5;
  if (v2 >> 5 <= 1)
  {
    if (v3)
    {
      if ((a2[7] & 0xE0) == 0x20)
      {
        return 1;
      }
    }

    else if (*(a2 + 56) < 0x20u)
    {
      return 1;
    }
  }

  else
  {
    v5 = *a1;
    v4 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    if (v3 == 2)
    {
      v13 = *(a2 + 56);
      if ((v13 & 0xE0) == 0x40)
      {
        v14 = v13 & 0x1F;
        v15 = v2 & 0x1F;
        if (v15)
        {
          if (v15 == 1)
          {
            if (v14 == 1)
            {
              return 1;
            }
          }

          else
          {
            v21 = *a2;
            v20 = a2[1];
            v23 = a2[2];
            v22 = a2[3];
            v25 = a2[4];
            v24 = a2[5];
            v26 = a2[6];
            v27 = v8 | v9 | v10;
            if (v6 | v4 | v5 | v7 | v27)
            {
              v28 = v6 | v4 | v7 | v27;
              if (v5 != 1 || v28)
              {
                if (v5 != 2 || v28)
                {
                  if (v5 != 3 || v28)
                  {
                    if (v5 != 4 || v28)
                    {
                      if (v14 == 2 && v21 == 5 && !(v23 | v20 | v22 | v25 | v24 | v26))
                      {
                        return 1;
                      }
                    }

                    else if (v14 == 2 && v21 == 4 && !(v23 | v20 | v22 | v25 | v24 | v26))
                    {
                      return 1;
                    }
                  }

                  else if (v14 == 2 && v21 == 3 && !(v23 | v20 | v22 | v25 | v24 | v26))
                  {
                    return 1;
                  }
                }

                else if (v14 == 2 && v21 == 2 && !(v23 | v20 | v22 | v25 | v24 | v26))
                {
                  return 1;
                }
              }

              else if (v14 == 2 && v21 == 1 && !(v23 | v20 | v22 | v25 | v24 | v26))
              {
                return 1;
              }
            }

            else if (v14 == 2 && !(v23 | v20 | v21 | v22 | v25 | v24 | v26))
            {
              return 1;
            }
          }
        }

        else if ((v13 & 0x1F) == 0)
        {
          return 1;
        }
      }
    }

    else if (v3 == 3)
    {
      if ((a2[7] & 0xE0) == 0x60)
      {
        v11 = *a2 ^ v5;
        return *a2 == v5;
      }
    }

    else if (v6 | v4 | v5 | v7 | v8 | v9 | v10 || v2 != 128)
    {
      v18 = *(a2 + 56);
      if ((v18 & 0xE0) == 0x80 && v18 == 128 && *a2 == 1)
      {
        v19 = vorrq_s8(*(a2 + 3), *(a2 + 5));
        if (!(*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | a2[2] | a2[1]))
        {
          return 1;
        }
      }
    }

    else
    {
      v16 = *(a2 + 56);
      if ((v16 & 0xE0) == 0x80 && v16 == 128)
      {
        v17 = vorrq_s8(*(a2 + 3), *(a2 + 5));
        if (!(*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | a2[2] | a2[1] | *a2))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10007E6C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6573657270 && a2 == 0xEA0000000000676ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00007765695679 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69746163756465 && a2 == 0xED0000776569566ELL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

double sub_10007E8E0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v77 = sub_1000056EC(&qword_1000E1830, &qword_10009ADE0);
  v79 = *(v77 - 8);
  v3 = *(v79 + 64);
  __chkstk_darwin(v77, v4);
  v84 = &v65 - v5;
  v75 = sub_1000056EC(&qword_1000E1838, &qword_10009ADE8);
  v78 = *(v75 - 8);
  v6 = *(v78 + 64);
  __chkstk_darwin(v75, v7);
  v83 = &v65 - v8;
  v73 = sub_1000056EC(&qword_1000E1840, &qword_10009ADF0);
  v76 = *(v73 - 8);
  v9 = *(v76 + 64);
  __chkstk_darwin(v73, v10);
  v82 = &v65 - v11;
  v71 = sub_1000056EC(&qword_1000E1848, &qword_10009ADF8);
  v74 = *(v71 - 8);
  v12 = *(v74 + 64);
  __chkstk_darwin(v71, v13);
  v81 = &v65 - v14;
  v72 = sub_1000056EC(&qword_1000E1850, &qword_10009AE00);
  v70 = *(v72 - 8);
  v15 = *(v70 + 64);
  __chkstk_darwin(v72, v16);
  v18 = &v65 - v17;
  v19 = sub_1000056EC(&qword_1000E1858, &qword_10009AE08);
  v69 = *(v19 - 8);
  v20 = *(v69 + 64);
  __chkstk_darwin(v19, v21);
  v23 = &v65 - v22;
  v24 = sub_1000056EC(&qword_1000E1860, &unk_10009AE10);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24, v27);
  v29 = &v65 - v28;
  v30 = a1[3];
  v31 = a1[4];
  v97 = a1;
  sub_100006768(a1, v30);
  sub_10007F460();
  v32 = v85;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    goto LABEL_12;
  }

  v33 = v23;
  v66 = v19;
  v67 = v18;
  v35 = v81;
  v34 = v82;
  v36 = v83;
  v37 = v84;
  v68 = 0;
  *&v85 = v25;
  v38 = v29;
  v39 = KeyedDecodingContainer.allKeys.getter();
  v40 = (2 * *(v39 + 16)) | 1;
  v93 = v39;
  v94 = v39 + 32;
  v95 = 0;
  v96 = v40;
  v41 = sub_100074830();
  if (v41 == 6 || v95 != v96 >> 1)
  {
    v48 = type metadata accessor for DecodingError();
    swift_allocError();
    v50 = v49;
    v51 = *(sub_1000056EC(&qword_1000DBA80, &qword_100094060) + 48);
    *v50 = &type metadata for CardEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v50, enum case for DecodingError.typeMismatch(_:), v48);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v41 > 2u)
  {
    if (v41 == 3)
    {
      LOBYTE(v86) = 3;
      sub_10007F604();
      v56 = v68;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v47 = v80;
      if (!v56)
      {
        sub_100073EBC();
        v57 = v73;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v68 = 0;
        (*(v76 + 8))(v34, v57);
        (*(v85 + 8))(v38, v24);
        swift_unknownObjectRelease();
        v46 = v86;
        v44 = v87;
        v24 = v88;
        v36 = v89;
        v37 = v90;
        v45 = 32;
        v85 = v91;
        goto LABEL_26;
      }
    }

    else
    {
      v47 = v80;
      if (v41 == 4)
      {
        LOBYTE(v86) = 4;
        sub_10007F55C();
        v53 = v68;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v53)
        {
          sub_10007F5B0();
          v54 = v75;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v68 = 0;
          (*(v78 + 8))(v36, v54);
          (*(v85 + 8))(v38, v24);
          swift_unknownObjectRelease();
          v46 = v86;
          v44 = v87;
          v24 = v88;
          v36 = v89;
          v37 = v90;
          v85 = v91;
          v45 = v92 & 3 | 0x40;
          goto LABEL_26;
        }
      }

      else
      {
        LOBYTE(v86) = 5;
        sub_10007F4B4();
        v62 = v68;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v62)
        {
          sub_10007F508();
          v63 = v77;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v44 = 0;
          v68 = 0;
          (*(v79 + 8))(v37, v63);
          (*(v85 + 8))(v38, v24);
          swift_unknownObjectRelease();
          v46 = v86;
          v45 = 96;
          goto LABEL_26;
        }
      }
    }

    (*(v85 + 8))(v38, v24);
    goto LABEL_11;
  }

  if (!v41)
  {
    LOBYTE(v86) = 0;
    sub_10007F700();
    v55 = v68;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v44 = v55;
    if (!v55)
    {
      v68 = 0;
      (*(v69 + 8))(v33, v66);
      (*(v85 + 8))(v29, v24);
      swift_unknownObjectRelease();
      v46 = 0;
      v24 = 0;
      v36 = 0;
      v37 = 0;
      v85 = 0u;
      v45 = 0x80;
      v47 = v80;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  if (v41 != 1)
  {
    LOBYTE(v86) = 2;
    sub_10007F658();
    v37 = v35;
    v58 = v68;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v58)
    {
      v59 = v71;
      v60 = KeyedDecodingContainer.decode(_:forKey:)();
      v61 = v85;
      v68 = 0;
      v46 = v60;
      v44 = v64;
      (*(v74 + 8))(v37, v59);
      (*(v61 + 8))(v29, v24);
      swift_unknownObjectRelease();
      v45 = 0;
      v47 = v80;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  LOBYTE(v86) = 1;
  sub_10007F6AC();
  v42 = v67;
  v43 = v68;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v44 = v43;
  if (v43)
  {
LABEL_10:
    (*(v85 + 8))(v29, v24);
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    sub_10000529C(v97);
    return result;
  }

  v68 = 0;
  (*(v70 + 8))(v42, v72);
  (*(v85 + 8))(v29, v24);
  swift_unknownObjectRelease();
  v24 = 0;
  v36 = 0;
  v37 = 0;
  v85 = 0u;
  v45 = 0x80;
  v46 = 1;
  v47 = v80;
LABEL_26:
  sub_10000529C(v97);
  *v47 = v46;
  *(v47 + 8) = v44;
  *(v47 + 16) = v24;
  *(v47 + 24) = v36;
  *(v47 + 32) = v37;
  result = *&v85;
  *(v47 + 40) = v85;
  *(v47 + 56) = v45;
  return result;
}

unint64_t sub_10007F460()
{
  result = qword_1000E1868;
  if (!qword_1000E1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1868);
  }

  return result;
}

unint64_t sub_10007F4B4()
{
  result = qword_1000E1870;
  if (!qword_1000E1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1870);
  }

  return result;
}

unint64_t sub_10007F508()
{
  result = qword_1000E1878;
  if (!qword_1000E1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1878);
  }

  return result;
}

unint64_t sub_10007F55C()
{
  result = qword_1000E1880;
  if (!qword_1000E1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1880);
  }

  return result;
}

unint64_t sub_10007F5B0()
{
  result = qword_1000E1888;
  if (!qword_1000E1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1888);
  }

  return result;
}

unint64_t sub_10007F604()
{
  result = qword_1000E1890;
  if (!qword_1000E1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1890);
  }

  return result;
}

unint64_t sub_10007F658()
{
  result = qword_1000E1898;
  if (!qword_1000E1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1898);
  }

  return result;
}

unint64_t sub_10007F6AC()
{
  result = qword_1000E18A0;
  if (!qword_1000E18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E18A0);
  }

  return result;
}

unint64_t sub_10007F700()
{
  result = qword_1000E18A8;
  if (!qword_1000E18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E18A8);
  }

  return result;
}

unint64_t sub_10007F754()
{
  result = qword_1000E18E8;
  if (!qword_1000E18E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E18E8);
  }

  return result;
}

unint64_t sub_10007F7A8()
{
  result = qword_1000E18F0;
  if (!qword_1000E18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E18F0);
  }

  return result;
}

unint64_t sub_10007F870()
{
  result = qword_1000E18F8;
  if (!qword_1000E18F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E18F8);
  }

  return result;
}

unint64_t sub_10007F8C8()
{
  result = qword_1000E1900;
  if (!qword_1000E1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1900);
  }

  return result;
}

unint64_t sub_10007F920()
{
  result = qword_1000E1908;
  if (!qword_1000E1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1908);
  }

  return result;
}

unint64_t sub_10007F978()
{
  result = qword_1000E1910;
  if (!qword_1000E1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1910);
  }

  return result;
}

unint64_t sub_10007F9D0()
{
  result = qword_1000E1918;
  if (!qword_1000E1918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1918);
  }

  return result;
}

unint64_t sub_10007FA28()
{
  result = qword_1000E1920;
  if (!qword_1000E1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1920);
  }

  return result;
}

unint64_t sub_10007FA80()
{
  result = qword_1000E1928;
  if (!qword_1000E1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1928);
  }

  return result;
}

unint64_t sub_10007FAD8()
{
  result = qword_1000E1930;
  if (!qword_1000E1930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1930);
  }

  return result;
}

unint64_t sub_10007FB30()
{
  result = qword_1000E1938;
  if (!qword_1000E1938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1938);
  }

  return result;
}

unint64_t sub_10007FB88()
{
  result = qword_1000E1940;
  if (!qword_1000E1940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1940);
  }

  return result;
}

unint64_t sub_10007FBE0()
{
  result = qword_1000E1948;
  if (!qword_1000E1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1948);
  }

  return result;
}

unint64_t sub_10007FC38()
{
  result = qword_1000E1950;
  if (!qword_1000E1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1950);
  }

  return result;
}

unint64_t sub_10007FC90()
{
  result = qword_1000E1958;
  if (!qword_1000E1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1958);
  }

  return result;
}

unint64_t sub_10007FCE8()
{
  result = qword_1000E1960;
  if (!qword_1000E1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1960);
  }

  return result;
}

unint64_t sub_10007FD40()
{
  result = qword_1000E1968;
  if (!qword_1000E1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1968);
  }

  return result;
}

unint64_t sub_10007FD98()
{
  result = qword_1000E1970;
  if (!qword_1000E1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1970);
  }

  return result;
}

unint64_t sub_10007FDF0()
{
  result = qword_1000E1978;
  if (!qword_1000E1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1978);
  }

  return result;
}

unint64_t sub_10007FE48()
{
  result = qword_1000E1980;
  if (!qword_1000E1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1980);
  }

  return result;
}

unint64_t sub_10007FEA0()
{
  result = qword_1000E1988;
  if (!qword_1000E1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1988);
  }

  return result;
}

uint64_t sub_10007FEF4()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  sub_100080CBC();
  static DispatchQoS.default.getter();
  v13[1] = _swiftEmptyArrayStorage;
  sub_100080D08(&qword_1000E1A48, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_1000056EC(&qword_1000E1A50, qword_10009B670);
  sub_100080D50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1000F3D18 = result;
  return result;
}

uint64_t sub_100080130()
{
  type metadata accessor for WorkActor();
  v0 = swift_allocObject();
  if (qword_1000D9800 != -1)
  {
    swift_once();
  }

  result = OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  qword_1000F3D20 = v0;
  return result;
}

uint64_t sub_1000801B8()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1000801C0()
{
  if (qword_1000D9808 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10008021C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_100080254()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v7, v1, v2);
  LODWORD(result) = (*(v3 + 88))(v7, v2);
  if (result == enum case for DispatchTimeInterval.seconds(_:))
  {
    v9 = *(v3 + 96);
    v3 += 96;
    v9(v7, v2);
    result = 1000000000 * *v7;
    if ((*v7 * 1000000000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    v10 = *(v3 + 96);
    v3 += 96;
    v10(v7, v2);
    result = 1000000 * *v7;
    if ((*v7 * 1000000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for DispatchTimeInterval.microseconds(_:))
  {
    v11 = *(v3 + 96);
    v3 += 96;
    v11(v7, v2);
    result = 1000 * *v7;
    if ((*v7 * 1000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v3 + 96))(v7, v2);
    return *v7;
  }

  else if (result == enum case for DispatchTimeInterval.never(_:))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

BOOL static DispatchTimeInterval.< infix(_:_:)()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = enum case for DispatchTimeInterval.never(_:);
  v7 = v1[13];
  v7(v5, enum case for DispatchTimeInterval.never(_:), v0);
  v8 = static DispatchTimeInterval.== infix(_:_:)();
  v9 = v1[1];
  v9(v5, v0);
  if (v8)
  {
    return 0;
  }

  v7(v5, v6, v0);
  v11 = static DispatchTimeInterval.== infix(_:_:)();
  v9(v5, v0);
  if (v11)
  {
    return 1;
  }

  v12 = sub_100080254();
  return v12 < sub_100080254();
}

BOOL sub_100080680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = v4[8];
  __chkstk_darwin(a1, a2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = v4[13];
  (v9)(v7, enum case for DispatchTimeInterval.never(_:));
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = v4[1];
  v11(v7, a3);
  if (v10)
  {
    return 0;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 1;
  }

  v14 = sub_100080254();
  return v14 < sub_100080254();
}

BOOL sub_1000807F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = v4[8];
  __chkstk_darwin(a1, a2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = v4[13];
  (v9)(v7, enum case for DispatchTimeInterval.never(_:));
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = v4[1];
  v11(v7, a3);
  if (v10)
  {
    return 1;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 0;
  }

  v14 = sub_100080254();
  return v14 >= sub_100080254();
}

BOOL sub_100080968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = v4[8];
  __chkstk_darwin(a1, a2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = v4[13];
  (v9)(v7, enum case for DispatchTimeInterval.never(_:));
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = v4[1];
  v11(v7, a3);
  if (v10)
  {
    return 1;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 0;
  }

  v14 = sub_100080254();
  return v14 >= sub_100080254();
}

BOOL sub_100080ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = v4[8];
  __chkstk_darwin(a1, a2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = v4[13];
  (v9)(v7, enum case for DispatchTimeInterval.never(_:));
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = v4[1];
  v11(v7, a3);
  if (v10)
  {
    return 0;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 1;
  }

  v14 = sub_100080254();
  return v14 < sub_100080254();
}

unint64_t sub_100080CBC()
{
  result = qword_1000E1A40;
  if (!qword_1000E1A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E1A40);
  }

  return result;
}

uint64_t sub_100080D08(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100080D50()
{
  result = qword_1000E1A58[0];
  if (!qword_1000E1A58[0])
  {
    sub_100005818(&qword_1000E1A50, qword_10009B670);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000E1A58);
  }

  return result;
}

BOOL sub_100080DD0()
{
  v0 = type metadata accessor for Weak();
  v1 = sub_100080E2C(v0);
  return v1 == sub_100080E2C(v0);
}

Swift::Int sub_100080E2C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100080E80(v3, a1);
  return Hasher._finalize()();
}

BOOL sub_100080E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_100080DD0();
}

void sub_100080E80(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(AssociatedTypeWitness, v7);
  v9 = &v12 - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    dispatch thunk of Identifiable.id.getter();
    swift_unknownObjectRelease();
    swift_getAssociatedConformanceWitness();
    v11 = dispatch thunk of Hashable.hashValue.getter();
    (*(v5 + 8))(v9, AssociatedTypeWitness);
  }

  else
  {
    v13 = 0;
    swift_stdlib_random();
    v11 = v13;
  }

  Hasher._combine(_:)(v11);
}

Swift::Int sub_100080FF8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_100080E80(v4, a2);
  return Hasher._finalize()();
}

uint64_t sub_100081054()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100081090(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000810B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1000810D8(double a1)
{
  v2 = [objc_allocWithZone(NSNumberFormatter) init];
  [v2 setMaximumFractionDigits:3];
  if (a1 >= 0.001)
  {
    v4 = [objc_allocWithZone(NSNumber) initWithDouble:a1];
    v5 = [v2 stringFromNumber:v4];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = v6;
      v7._countAndFlagsBits = 115;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
    }

    else
    {
      v8 = 0;
      Double.write<A>(to:)();
    }

    return v8;
  }

  else
  {

    return 0x736D31203CLL;
  }
}

uint64_t sub_100081204(void *a1)
{
  v3 = v1;
  v5 = sub_1000056EC(&qword_1000E1B08, &qword_10009B910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v20[-v9];
  v11 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_100081F00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v20[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v13 = v3[1];
  v14 = v3[2];
  v20[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[3];
  v16 = v3[4];
  v20[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = v3[5];
  v19 = v3[6];
  v20[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_1000813C4()
{
  v1 = 0x646F43726F727265;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x6D6F44726F727265;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100081450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100081AE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100081478(uint64_t a1)
{
  v2 = sub_100081F00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000814B4(uint64_t a1)
{
  v2 = sub_100081F00();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000814F0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100081C5C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100081560(uint64_t a1)
{
  v2 = sub_100081F54();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10008159C(uint64_t a1)
{
  v2 = sub_100081F54();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000815D8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = a2[3];
  v7 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  if (a1[1] == a2[1] && a1[2] == a2[2] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 == v6 && v4 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1000816E8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *&v27[0] = a1;
  swift_errorRetain();
  sub_1000056EC(&qword_1000E0F08, &qword_1000999E8);
  if (swift_dynamicCast())
  {

    v4 = v30[0];
    v5 = v30[1];
    v6 = v30[2];
    v7 = v31;
    v8 = v32;
    v9 = v33;
    v10 = v34;
  }

  else
  {
    v29 = a1;
    swift_errorRetain();
    sub_1000056EC(&qword_1000E1AE0, &qword_10009B768);
    if (swift_dynamicCast())
    {
      sub_10002AF0C(v27, v30);
      v11 = _convertErrorToNSError(_:)();
      v26 = [v11 code];
      v12 = [v11 domain];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v13;

      v14 = v32;
      sub_100006768(v30, v31);
      v15 = *(v14 + 8);
      v7 = Error.localizedDescription.getter();
      v8 = v16;
      sub_100006768(v30, v31);
      v9 = dispatch thunk of LocalizedError.failureReason.getter();
      v10 = v17;

      sub_10000529C(v30);
    }

    else
    {
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      sub_10008197C(v27);
      v18 = _convertErrorToNSError(_:)();
      v26 = [v18 code];
      v19 = [v18 domain];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v20;

      v21 = [v18 localizedDescription];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v22;

      v23 = [v18 localizedFailureReason];
      if (v23)
      {
        v24 = v23;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v25;
      }

      else
      {

        v10 = 0;
        v9 = 0;
      }
    }

    v4 = v26;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
}

uint64_t sub_10008197C(uint64_t a1)
{
  v2 = sub_1000056EC(&qword_1000E1AE8, &qword_10009B770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000819E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100081A2C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_100081A88()
{
  result = qword_1000E1AF0;
  if (!qword_1000E1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1AF0);
  }

  return result;
}

uint64_t sub_100081AE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000A6250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001000A6270 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100081C5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000056EC(&qword_1000E1AF8, &qword_10009B908);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_100081F00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000529C(a1);
  }

  v33 = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  v29 = v13;
  v31 = 2;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v16;
  v30 = 3;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v18;
  v20 = *(v6 + 8);
  v26 = v17;
  v20(v10, v5);

  v21 = v28;

  sub_10000529C(a1);

  v23 = v29;
  *a2 = v12;
  a2[1] = v23;
  v24 = v26;
  v25 = v27;
  a2[2] = v15;
  a2[3] = v25;
  a2[4] = v21;
  a2[5] = v24;
  a2[6] = v19;
  return result;
}

unint64_t sub_100081F00()
{
  result = qword_1000E1B00;
  if (!qword_1000E1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1B00);
  }

  return result;
}

unint64_t sub_100081F54()
{
  result = qword_1000E1B10;
  if (!qword_1000E1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1B10);
  }

  return result;
}

unint64_t sub_100081FBC()
{
  result = qword_1000E1B18;
  if (!qword_1000E1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1B18);
  }

  return result;
}

unint64_t sub_100082014()
{
  result = qword_1000E1B20;
  if (!qword_1000E1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1B20);
  }

  return result;
}

unint64_t sub_10008206C()
{
  result = qword_1000E1B28;
  if (!qword_1000E1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1B28);
  }

  return result;
}

uint64_t sub_1000820D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_100052798(a3, v28 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_10000A628(v13, &qword_1000DBF90, &qword_100097670);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_10000A628(a3, &qword_1000DBF90, &qword_100097670);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A628(a3, &qword_1000DBF90, &qword_100097670);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1000823C0(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_1000450CC(v13), (v5 & 1) == 0))
  {

    sub_10000EEEC(v13);
LABEL_8:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_9;
  }

  sub_10000A150(*(v3 + 56) + 32 * v4, &v14);
  sub_10000EEEC(v13);

  if (!*(&v15 + 1))
  {
LABEL_9:
    sub_10000A628(&v14, &qword_1000D9E38, &qword_100091570);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v6 = v13[0];
    v7 = v13[1];
    v8 = type metadata accessor for JSONDecoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for PCUserAlertPresentationContext();
    sub_10008547C(&qword_1000DB470, type metadata accessor for PCUserAlertPresentationContext);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return sub_100008A9C(v6, v7);
  }

LABEL_10:
  sub_1000056EC(&qword_1000E1B80, &qword_10009BA98);
  sub_10000EE58(&qword_1000E1B88, &qword_1000E1B80, &qword_10009BA98);
  swift_allocError();
  *v12 = 0xD000000000000013;
  v12[1] = 0x80000001000A62E0;
  return swift_willThrow();
}

uint64_t sub_100082628()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E1B30);
  sub_1000047A0(v0, qword_1000E1B30);
  return Logger.init(subsystem:category:)();
}

void sub_1000826A8(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PCUserAlertPresentationContext();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D9810 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_1000047A0(v13, qword_1000E1B30);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v27[1] = v14;
    v27[3] = a3;
    v28 = a2;
    v18 = 7104878;
    v19 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_1000343F8(0xD00000000000001BLL, 0x80000001000A1160, v30);
    *(v19 + 12) = 2080;
    v27[2] = v4;
    if (a1 && (v20 = [v15 userInfo]) != 0)
    {
      v21 = v20;
      v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = v22;
      sub_1000056EC(qword_1000DA200, &unk_100091790);
      v18 = String.init<A>(describing:)();
      v24 = v23;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    v25 = sub_1000343F8(v18, v24, v30);

    *(v19 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: context=%s", v19, 0x16u);
    swift_arrayDestroy();

    a2 = v28;
  }

  else
  {
  }

  if (a1)
  {
    sub_1000823C0(v15);
    sub_100082F44(v12);
    v26 = sub_100024270(v12);
    if (!a2)
    {
      while (1)
      {
        __break(1u);
      }
    }

    a2(v26);
  }

  else
  {
    __break(1u);
  }
}

void sub_100082B68(uint64_t a1)
{
  v2 = v1;
  if (qword_1000D9810 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000E1B30);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000343F8(0x5F28656C646E6168, 0xEA0000000000293ALL, aBlock);
    *(v7 + 12) = 2080;
    sub_10000ED88(0, &qword_1000DA1E0, SBUIRemoteAlertButtonAction_ptr);
    sub_10000EDD0();
    v8 = Set.description.getter();
    v10 = sub_1000343F8(v8, v9, aBlock);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: buttonActions=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000C3B4(a1);
  v12 = *(v11 + 16);
  v13 = 32;
  while (v12)
  {
    v14 = *(v11 + v13);
    v13 += 8;
    --v12;
    if (v14 == 16)
    {

      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1000854D8;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100035630;
      aBlock[3] = &unk_1000CC460;
      v16 = _Block_copy(aBlock);

      [v2 dismissViewControllerAnimated:1 completion:v16];
      _Block_release(v16);
      return;
    }
  }
}

void sub_100082ED0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_10000B2D4();

    if (v2)
    {
      [v2 invalidate];
      swift_unknownObjectRelease();
    }
  }
}

void sub_100082F44(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  __chkstk_darwin(v2, v4);
  v67 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  v6 = *(v66 + 64);
  __chkstk_darwin(v68, v7);
  v65 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchTime();
  v64 = *(v71 - 8);
  v9 = *(v64 + 64);
  v11 = __chkstk_darwin(v71, v10);
  v62 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v63 = &v62 - v14;
  v15 = type metadata accessor for PCUserAlertPresentationContext();
  v76 = *(v15 - 8);
  v16 = *(v76 + 64);
  v18 = __chkstk_darwin(v15, v17);
  v75 = v19;
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 24);
  v22 = (a1 + *(v18 + 20));
  v23 = v22[1];
  v80 = a1;
  v24 = (a1 + v21);
  v25 = *v24;
  v26 = v24[1];
  if (v23)
  {
    v27 = *v22;
    v28 = String._bridgeToObjectiveC()();
    if (v26)
    {
LABEL_3:
      v29 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else
  {
    v28 = 0;
    if (v26)
    {
      goto LABEL_3;
    }
  }

  v29 = 0;
LABEL_6:
  v30 = [objc_opt_self() alertControllerWithTitle:v28 message:v29 preferredStyle:1];

  v31 = (v80 + *(v15 + 28));
  v32 = v31[1];
  if (v32)
  {
    v33 = *v31;
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    v85 = sub_100084764;
    v86 = v34;
    aBlock = _NSConcreteStackBlock;
    v82 = 1107296256;
    v83 = sub_1000854F0;
    v84 = &unk_1000CC398;
    v35 = _Block_copy(&aBlock);

    [v30 addTextFieldWithConfigurationHandler:v35];
    _Block_release(v35);
  }

  v72 = v15;
  v77 = *(v80 + *(v15 + 40));
  v78 = v30;
  v74 = *(v77 + 16);
  if (v74)
  {
    v36 = 0;
    v73 = &v83;
    v37 = v78;
    v38 = (v77 + 40);
    while (v36 < *(v77 + 16))
    {
      v39 = v36 + 1;
      v40 = *(v38 - 1);
      v41 = *v38;
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10002420C(v80, v20);
      v43 = (*(v76 + 80) + 40) & ~*(v76 + 80);
      v44 = swift_allocObject();
      v44[2] = v37;
      v44[3] = v42;
      v44[4] = v36;
      sub_100084630(v20, v44 + v43);

      v45 = v37;

      v46 = String._bridgeToObjectiveC()();

      v85 = sub_100084694;
      v86 = v44;
      aBlock = _NSConcreteStackBlock;
      v82 = 1107296256;
      v83 = sub_1000854F0;
      v84 = &unk_1000CC320;
      v47 = _Block_copy(&aBlock);

      v48 = [objc_opt_self() actionWithTitle:v46 style:0 handler:v47];
      _Block_release(v47);

      [v45 addAction:v48];
      v38 += 2;
      v36 = v39;
      if (v74 == v39)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v49 = v78;
    [v79 presentViewController:v78 animated:1 completion:0];
    v50 = v72;
    v51 = (v80 + *(v72 + 32));
    if ((v51[1] & 1) == 0)
    {
      v52 = *v51;
      sub_10000ED88(0, &qword_1000DA460, OS_dispatch_queue_ptr);
      v53 = static OS_dispatch_queue.main.getter();
      v54 = v62;
      static DispatchTime.now()();
      v55 = v63;
      + infix(_:_:)();
      v77 = *(v64 + 8);
      (v77)(v54, v71);
      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v85 = sub_100084724;
      v86 = v56;
      aBlock = _NSConcreteStackBlock;
      v82 = 1107296256;
      v83 = sub_100035630;
      v84 = &unk_1000CC348;
      v57 = _Block_copy(&aBlock);

      v58 = v65;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10008547C(&qword_1000D9FA0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000056EC(&qword_1000D9FA8, &unk_100091780);
      sub_10000EE58(&qword_1000D9FB0, &qword_1000D9FA8, &unk_100091780);
      v59 = v67;
      v60 = v70;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v57);

      (*(v69 + 8))(v59, v60);
      v50 = v72;
      (*(v66 + 8))(v58, v68);
      (v77)(v55, v71);
      v49 = v78;
    }

    if (*(v80 + *(v50 + 36)) == 1 && (v61 = sub_10000B2D4()) != 0)
    {
      [v61 setDesiredHardwareButtonEvents:16];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1000837A0(void *a1)
{
  [a1 setAutocapitalizationType:2];
  v2 = String._bridgeToObjectiveC()();
  [a1 setPlaceholder:v2];
}

uint64_t sub_100083824(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for PCUserAlertPresentationContext();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8, v11);
  v12 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v33 - v16;
  v18 = [a2 textFields];
  if (!v18)
  {
    v24 = 0;
    goto LABEL_13;
  }

  sub_10000ED88(0, &qword_1000E1B70, UITextField_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_4:
      if ((v19 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v21 = *(v19 + 32);
      }

      v22 = v21;

      v23 = [v22 text];

      if (v23)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v25;

        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }
  }

LABEL_12:
  v24 = 0;
  v18 = 0;
LABEL_13:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  sub_10002420C(a5, &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v28 = static MainActor.shared.getter();
  v29 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v30 = (v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  *(v31 + 24) = &protocol witness table for MainActor;
  sub_100084630(v12, v31 + v29);
  *(v31 + v30) = a4;
  v32 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v32 = v24;
  v32[1] = v18;
  sub_1000820D0(0, 0, v17, &unk_10009BA60, v31);
}

void sub_100083B50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10008476C;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100035630;
    aBlock[3] = &unk_1000CC3C0;
    v3 = _Block_copy(aBlock);

    [v1 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }
}

uint64_t sub_100083C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters();
  v7[9] = v11;
  v12 = *(v11 - 8);
  v7[10] = v12;
  v13 = *(v12 + 64) + 15;
  v7[11] = swift_task_alloc();
  v14 = type metadata accessor for PCProximityHandoffClient.Identifier();
  v7[12] = v14;
  v15 = *(v14 - 8);
  v7[13] = v15;
  v16 = *(v15 + 64) + 15;
  v7[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[15] = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[16] = v18;
  v7[17] = v17;

  return _swift_task_switch(sub_100083E00, v18, v17);
}

uint64_t sub_100083E00()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v14 = v0[4];
  v15 = v0[11];
  v13 = v0[3];
  v8 = v0[2];
  type metadata accessor for PCProximityHandoffClient();
  (*(v2 + 104))(v1, enum case for PCProximityHandoffClient.Identifier.pcViewService(_:), v3);
  v0[18] = PCProximityHandoffClient.__allocating_init(identifier:)();
  (*(v5 + 16))(v4, v8, v6);

  PCProximityHandoffServiceInvocations.UserAlertAction.Parameters.init(id:actionIndex:textResponse:)();
  v9 = *(&async function pointer to dispatch thunk of PCProximityHandoffClient.userAlertAction(params:) + 1);
  v16 = (&async function pointer to dispatch thunk of PCProximityHandoffClient.userAlertAction(params:) + async function pointer to dispatch thunk of PCProximityHandoffClient.userAlertAction(params:));
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_100083F64;
  v11 = v0[11];

  return v16(v11);
}

uint64_t sub_100083F64()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 160) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 136);
  v9 = *(v2 + 128);
  if (v0)
  {
    v10 = sub_100084188;
  }

  else
  {
    v10 = sub_1000840FC;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1000840FC()
{
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100084188()
{
  v1 = v0[18];
  v2 = v0[15];

  if (qword_1000D9810 != -1)
  {
    swift_once();
  }

  v3 = v0[20];
  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000E1B30);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[20];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "### Failed to handle action: %@", v9, 0xCu);
    sub_10000A628(v10, &qword_1000DA8D0, &qword_100091B60);
  }

  else
  {
  }

  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

id sub_100084478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PCUserAlertViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000844D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100084508()
{
  v1 = (type metadata accessor for PCUserAlertPresentationContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + 24);

  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[7] + 8);

  v8 = *(v0 + v3 + v1[8] + 8);

  v9 = *(v0 + v3 + v1[9] + 8);

  v10 = *(v0 + v3 + v1[12]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100084630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PCUserAlertPresentationContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100084694(uint64_t a1)
{
  v3 = *(type metadata accessor for PCUserAlertPresentationContext() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_100083824(a1, v4, v5, v6, v7);
}

uint64_t sub_10008470C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008472C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100084764(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1000837A0(a1);
}

uint64_t sub_100084774()
{
  v1 = (type metadata accessor for PCUserAlertPresentationContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[7] + 8);

  v9 = *(v6 + v1[8] + 8);

  v10 = *(v6 + v1[9] + 8);

  v11 = *(v6 + v1[12]);

  v12 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1000848B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PCUserAlertPresentationContext() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100031D80;

  return sub_100083C50(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_1000849F8(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_100084A30(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100084B28;

  return v7(a1);
}

uint64_t sub_100084B28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100084C20()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100084C58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000854DC;

  return sub_100084A30(a1, v5);
}

uint64_t sub_100084D10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100031D80;

  return sub_100084A30(a1, v5);
}

void sub_100084DC8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

char *sub_100084E3C(char *a1, int64_t a2, char a3)
{
  result = sub_100084E7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100084E5C(void *a1, int64_t a2, char a3)
{
  result = sub_100084F80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100084E7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000056EC(&qword_1000E1B78, &unk_10009BA88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100084F80(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000056EC(&qword_1000E1B90, &qword_10009BAA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000056EC(&qword_1000E1B98, &qword_10009BAA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000850C8(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000ED88(0, &qword_1000DA1E0, SBUIRemoteAlertButtonAction_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000ED88(0, &qword_1000DA1E0, SBUIRemoteAlertButtonAction_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100085434()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008547C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000854F4(uint64_t a1, uint64_t a2)
{
  result = sub_10008564C(a1);
  if (result)
  {
    v12 = result;
    sub_100085850();

    if (v12 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v7 = *(v12 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (*(a2 + 16))
        {
          v10 = sub_100045110(v7);
          if (v11)
          {
            [v8 setClipsToBounds:*(*(a2 + 56) + v10)];
          }
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }

  return result;
}

uint64_t sub_10008564C(uint64_t a1)
{
  v2 = v1;
  sub_10000ED88(0, &qword_1000E0F00, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    sub_1000056EC(&qword_1000DA8E0, &qword_100091BB8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100091A40;
    *(v4 + 32) = v2;
    v5 = v2;
    return v4;
  }

  else
  {
    v7 = [v1 subviews];
    sub_10000ED88(0, &qword_1000DAD20, UIView_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v14 = sub_10008564C(a1);
        if (v14)
        {
          v15 = v14;

          sub_1000056EC(&qword_1000DA8E0, &qword_100091BB8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100091A40;
          *(inited + 32) = v2;
          v17 = v2;
          sub_1000859C8(inited);

          return v15;
        }

        ++v10;
        if (v13 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    return 0;
  }
}

void sub_100085850()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v4 = *v0;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(v1 + 32);
    if (!v2)
    {
LABEL_6:
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_16:
    if (v3)
    {
      sub_100085DE0(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_100085928(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1000859C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100085928(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100085AB8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100085AB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100085EB8();
          for (i = 0; i != v6; ++i)
          {
            sub_1000056EC(&qword_1000E1BA0, &unk_10009BAB0);
            v9 = sub_100085C48(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000ED88(0, &qword_1000DAD20, UIView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_100085C48(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100085CC8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100085CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_10000ED88(0, &qword_1000DAD20, UIView_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100085DE0(uint64_t a1, uint64_t a2)
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

  sub_100085928(result);

  return sub_100085CD0(v4, v2, 0);
}

unint64_t sub_100085EB8()
{
  result = qword_1000E1BA8;
  if (!qword_1000E1BA8)
  {
    sub_100005818(&qword_1000E1BA0, &unk_10009BAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1BA8);
  }

  return result;
}

uint64_t sub_100085F1C(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_100085F48()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 56))
  {
    v4 = v0[2];
    v3 = v0[3];
    if (*(v0 + 56) == 1)
    {
      v5._countAndFlagsBits = 0x202864656C696166;
      v5._object = 0xE800000000000000;
      String.append(_:)(v5);
      _print_unlocked<A, B>(_:_:)();
      v6._countAndFlagsBits = 10528;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
      return 0;
    }

    else
    {
      v9 = v0[4] | v0[5] | v0[6];
      if (v4 | v2 | v1 | v3 | v9)
      {
        v10 = v4 | v2 | v3 | v9;
        if (v1 != 1 || v10)
        {
          if (v10)
          {
            v11 = 0x61546C65636E6163;
          }

          else
          {
            v11 = 0xD000000000000010;
          }

          if (v1 == 2)
          {
            return v11;
          }

          else
          {
            return 0x61546C65636E6163;
          }
        }

        else
        {
          return 0x65746E6573657270;
        }
      }

      else
      {
        return 0x69746E6573657270;
      }
    }
  }

  else
  {
    String.append(_:)(*v0);
    v8._countAndFlagsBits = 10528;
    v8._object = 0xE200000000000000;
    String.append(_:)(v8);
    return 0x657373696D736964;
  }
}

uint64_t sub_100086110(void *a1)
{
  v2 = v1;
  v4 = sub_1000056EC(&qword_1000E1C20, &qword_10009BC58);
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  __chkstk_darwin(v4, v6);
  v62 = &v58 - v7;
  v61 = sub_1000056EC(&qword_1000E1C28, &qword_10009BC60);
  v60 = *(v61 - 8);
  v8 = *(v60 + 64);
  __chkstk_darwin(v61, v9);
  v59 = &v58 - v10;
  v11 = sub_1000056EC(&qword_1000E1C30, &qword_10009BC68);
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  __chkstk_darwin(v11, v13);
  v71 = &v58 - v14;
  v15 = sub_1000056EC(&qword_1000E1C38, &qword_10009BC70);
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v58 - v18;
  v20 = sub_1000056EC(&qword_1000E1C40, &qword_10009BC78);
  v66 = *(v20 - 8);
  v67 = v20;
  v21 = *(v66 + 64);
  __chkstk_darwin(v20, v22);
  v65 = &v58 - v23;
  v24 = sub_1000056EC(&qword_1000E1C48, &qword_10009BC80);
  v68 = *(v24 - 8);
  v69 = v24;
  v25 = *(v68 + 64);
  __chkstk_darwin(v24, v26);
  v28 = &v58 - v27;
  v29 = sub_1000056EC(&qword_1000E1C50, &qword_10009BC88);
  v75 = *(v29 - 8);
  v30 = *(v75 + 64);
  __chkstk_darwin(v29, v31);
  v33 = &v58 - v32;
  v34 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_100087A70();
  v74 = v33;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v36 = *v2;
  v35 = v2[1];
  if (!*(v2 + 56))
  {
    LOBYTE(v76) = 2;
    sub_100087BC0();
    v47 = v74;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v70 + 8))(v19, v15);
    return (*(v75 + 8))(v47, v29);
  }

  v37 = v29;
  v38 = v2[2];
  v39 = v2[3];
  v41 = v2[4];
  v40 = v2[5];
  v42 = v2[6];
  if (*(v2 + 56) == 1)
  {
    LOBYTE(v76) = 3;
    v70 = v42;
    sub_100087B6C();
    v43 = v71;
    v58 = v37;
    v44 = v74;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v76 = v36;
    v77 = v35;
    v78 = v38;
    v79 = v39;
    v80 = v41;
    v81 = v40;
    v82 = v70;
    sub_100073FB8();
    v45 = v73;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v72 + 8))(v43, v45);
    return (*(v75 + 8))(v44, v58);
  }

  v48 = v41 | v40 | v42;
  if (!(v38 | v35 | v36 | v39 | v48))
  {
    LOBYTE(v76) = 0;
    sub_100087C68();
    v55 = v37;
    v56 = v74;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v68 + 8))(v28, v69);
    return (*(v75 + 8))(v56, v55);
  }

  v49 = v38 | v35 | v39 | v48;
  v50 = v37;
  if (v36 == 1 && !v49)
  {
    LOBYTE(v76) = 1;
    sub_100087C14();
    v51 = v65;
    v52 = v74;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v54 = v66;
    v53 = v67;
LABEL_14:
    (*(v54 + 8))(v51, v53);
    return (*(v75 + 8))(v52, v50);
  }

  if (v36 != 2 || v49)
  {
    LOBYTE(v76) = 5;
    sub_100087AC4();
    v51 = v62;
    v52 = v74;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v54 = v63;
    v53 = v64;
    goto LABEL_14;
  }

  LOBYTE(v76) = 4;
  sub_100087B18();
  v57 = v59;
  v52 = v74;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v60 + 8))(v57, v61);
  return (*(v75 + 8))(v52, v50);
}

uint64_t sub_100086830(uint64_t a1)
{
  v2 = sub_100087AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008686C(uint64_t a1)
{
  v2 = sub_100087AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000868A8()
{
  v1 = *v0;
  v2 = 0x69746E6573657270;
  v3 = 0x64656C696166;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x61546C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746E6573657270;
  if (v1 != 1)
  {
    v5 = 0x657373696D736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100086978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100086DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000869A0(uint64_t a1)
{
  v2 = sub_100087A70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000869DC(uint64_t a1)
{
  v2 = sub_100087A70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100086A18(uint64_t a1)
{
  v2 = sub_100087BC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086A54(uint64_t a1)
{
  v2 = sub_100087BC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100086A90(uint64_t a1)
{
  v2 = sub_100087B6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086ACC(uint64_t a1)
{
  v2 = sub_100087B6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100086B08(uint64_t a1)
{
  v2 = sub_100087C14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086B44(uint64_t a1)
{
  v2 = sub_100087C14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100086B80(uint64_t a1)
{
  v2 = sub_100087C68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086BBC(uint64_t a1)
{
  v2 = sub_100087C68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100086BF8(uint64_t a1)
{
  v2 = sub_100087B18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086C34(uint64_t a1)
{
  v2 = sub_100087B18();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100086C70@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100087000(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

BOOL sub_100086CD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (*(a1 + 56) == 1)
    {
      return v2 == 1;
    }

    v4 = *a1;
    v3 = a1[1];
    v6 = *a2;
    v5 = a2[1];
    v8 = a2[2];
    v7 = a2[3];
    v10 = a2[4];
    v9 = a2[5];
    v11 = a2[6];
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1[2];
    v15 = a1[5] | a1[6];
    v16 = v12 | v14 | v3;
    if (!(v15 | v4 | v13 | v16))
    {
      return v2 == 2 && !(v8 | v5 | v6 | v7 | v10 | v9 | v11);
    }

    v17 = v15 | v13 | v16;
    if (v4 != 1 || v17)
    {
      if (v4 != 2 || v17)
      {
        if (v2 != 2 || v6 != 3)
        {
          return 0;
        }
      }

      else if (v2 != 2 || v6 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 2 || v6 != 1)
    {
      return 0;
    }

    if (!(v8 | v5 | v7 | v10 | v9 | v11))
    {
      return 1;
    }
  }

  else if (!*(a2 + 56))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100086DE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6573657270 && a2 == 0xEA0000000000676ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000A6320 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61546C65636E6163 && a2 == 0xEC00000064657070)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100087000@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_1000056EC(&qword_1000E1BB0, &qword_10009BC18);
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = *(v77 + 64);
  __chkstk_darwin(v3, v5);
  v83 = &v65 - v6;
  v7 = sub_1000056EC(&qword_1000E1BB8, &qword_10009BC20);
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  __chkstk_darwin(v7, v9);
  v79 = &v65 - v10;
  v71 = sub_1000056EC(&qword_1000E1BC0, &qword_10009BC28);
  v74 = *(v71 - 8);
  v11 = *(v74 + 64);
  __chkstk_darwin(v71, v12);
  v82 = &v65 - v13;
  v73 = sub_1000056EC(&qword_1000E1BC8, &qword_10009BC30);
  v72 = *(v73 - 8);
  v14 = *(v72 + 64);
  __chkstk_darwin(v73, v15);
  v81 = &v65 - v16;
  v70 = sub_1000056EC(&qword_1000E1BD0, &qword_10009BC38);
  v69 = *(v70 - 8);
  v17 = *(v69 + 64);
  __chkstk_darwin(v70, v18);
  v20 = &v65 - v19;
  v21 = sub_1000056EC(&qword_1000E1BD8, &qword_10009BC40);
  v68 = *(v21 - 8);
  v22 = *(v68 + 64);
  __chkstk_darwin(v21, v23);
  v25 = &v65 - v24;
  v26 = sub_1000056EC(&qword_1000E1BE0, &unk_10009BC48);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26, v29);
  v31 = &v65 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v96 = a1;
  sub_100006768(a1, v32);
  sub_100087A70();
  v34 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v35 = v34;
  if (v34)
  {
    return sub_10000529C(v96);
  }

  v36 = v25;
  v66 = v21;
  v67 = v20;
  v37 = v81;
  v38 = v82;
  v39 = v83;
  v84 = v27;
  v40 = v31;
  v41 = KeyedDecodingContainer.allKeys.getter();
  v42 = (2 * *(v41 + 16)) | 1;
  v92 = v41;
  v93 = v41 + 32;
  v94 = 0;
  v95 = v42;
  v43 = sub_100074830();
  if (v43 == 6 || v94 != v95 >> 1)
  {
    v53 = type metadata accessor for DecodingError();
    swift_allocError();
    v55 = v54;
    v56 = *(sub_1000056EC(&qword_1000DBA80, &qword_100094060) + 48);
    *v55 = &type metadata for NearbySharingInteractionViewEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v53 - 8) + 104))(v55, enum case for DecodingError.typeMismatch(_:), v53);
    swift_willThrow();
    (*(v84 + 8))(v31, v26);
    swift_unknownObjectRelease();
    return sub_10000529C(v96);
  }

  if (v43 > 2u)
  {
    if (v43 == 3)
    {
      LOBYTE(v85) = 3;
      sub_100087B6C();
      v60 = v31;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v52 = v80;
      v61 = v84;
      sub_100073EBC();
      v62 = v71;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v65 = 0;
      (*(v74 + 8))(v38, v62);
      (*(v61 + 8))(v60, v26);
      swift_unknownObjectRelease();
      v51 = v85;
      v46 = v86;
      v47 = v87;
      v48 = v88;
      v49 = v89;
      v35 = v90;
      v50 = 1;
      v26 = v91;
    }

    else
    {
      v52 = v80;
      v58 = v84;
      if (v43 == 4)
      {
        LOBYTE(v85) = 4;
        sub_100087B18();
        v59 = v79;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v65 = 0;
        (*(v75 + 8))(v59, v76);
        (*(v58 + 8))(v40, v26);
        swift_unknownObjectRelease();
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v26 = 0;
        v51 = 2;
        v50 = 2;
      }

      else
      {
        LOBYTE(v85) = 5;
        sub_100087AC4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v65 = 0;
        (*(v77 + 8))(v39, v78);
        (*(v58 + 8))(v40, v26);
        swift_unknownObjectRelease();
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v26 = 0;
        v50 = 2;
        v51 = 3;
      }
    }
  }

  else if (v43)
  {
    if (v43 == 1)
    {
      LOBYTE(v85) = 1;
      sub_100087C14();
      v44 = v67;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v84;
      v65 = 0;
      (*(v69 + 8))(v44, v70);
      (*(v45 + 8))(v31, v26);
      swift_unknownObjectRelease();
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v26 = 0;
      v50 = 2;
      v51 = 1;
      v52 = v80;
    }

    else
    {
      LOBYTE(v85) = 2;
      sub_100087BC0();
      v48 = v37;
      v49 = v31;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v52 = v80;
      v63 = v84;
      v47 = v73;
      v35 = 0;
      v51 = KeyedDecodingContainer.decode(_:forKey:)();
      v46 = v64;
      v65 = 0;
      (*(v72 + 8))(v48, v47);
      (*(v63 + 8))(v49, v26);
      swift_unknownObjectRelease();
      v50 = 0;
    }
  }

  else
  {
    LOBYTE(v85) = 0;
    sub_100087C68();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v65 = 0;
    (*(v68 + 8))(v36, v66);
    (*(v84 + 8))(v31, v26);
    swift_unknownObjectRelease();
    v51 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v26 = 0;
    v50 = 2;
    v52 = v80;
  }

  result = sub_10000529C(v96);
  *v52 = v51;
  *(v52 + 8) = v46;
  *(v52 + 16) = v47;
  *(v52 + 24) = v48;
  *(v52 + 32) = v49;
  *(v52 + 40) = v35;
  *(v52 + 48) = v26;
  *(v52 + 56) = v50;
  return result;
}

unint64_t sub_100087A70()
{
  result = qword_1000E1BE8;
  if (!qword_1000E1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1BE8);
  }

  return result;
}

unint64_t sub_100087AC4()
{
  result = qword_1000E1BF0;
  if (!qword_1000E1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1BF0);
  }

  return result;
}

unint64_t sub_100087B18()
{
  result = qword_1000E1BF8;
  if (!qword_1000E1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1BF8);
  }

  return result;
}

unint64_t sub_100087B6C()
{
  result = qword_1000E1C00;
  if (!qword_1000E1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C00);
  }

  return result;
}

unint64_t sub_100087BC0()
{
  result = qword_1000E1C08;
  if (!qword_1000E1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C08);
  }

  return result;
}

unint64_t sub_100087C14()
{
  result = qword_1000E1C10;
  if (!qword_1000E1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C10);
  }

  return result;
}

unint64_t sub_100087C68()
{
  result = qword_1000E1C18;
  if (!qword_1000E1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C18);
  }

  return result;
}

unint64_t sub_100087D30()
{
  result = qword_1000E1C58;
  if (!qword_1000E1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C58);
  }

  return result;
}

unint64_t sub_100087D88()
{
  result = qword_1000E1C60;
  if (!qword_1000E1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C60);
  }

  return result;
}

unint64_t sub_100087DE0()
{
  result = qword_1000E1C68;
  if (!qword_1000E1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C68);
  }

  return result;
}

unint64_t sub_100087E38()
{
  result = qword_1000E1C70;
  if (!qword_1000E1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C70);
  }

  return result;
}

unint64_t sub_100087E90()
{
  result = qword_1000E1C78;
  if (!qword_1000E1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C78);
  }

  return result;
}

unint64_t sub_100087EE8()
{
  result = qword_1000E1C80;
  if (!qword_1000E1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C80);
  }

  return result;
}

unint64_t sub_100087F40()
{
  result = qword_1000E1C88;
  if (!qword_1000E1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C88);
  }

  return result;
}

unint64_t sub_100087F98()
{
  result = qword_1000E1C90;
  if (!qword_1000E1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C90);
  }

  return result;
}

unint64_t sub_100087FF0()
{
  result = qword_1000E1C98;
  if (!qword_1000E1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1C98);
  }

  return result;
}

unint64_t sub_100088048()
{
  result = qword_1000E1CA0;
  if (!qword_1000E1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CA0);
  }

  return result;
}

unint64_t sub_1000880A0()
{
  result = qword_1000E1CA8;
  if (!qword_1000E1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CA8);
  }

  return result;
}

unint64_t sub_1000880F8()
{
  result = qword_1000E1CB0;
  if (!qword_1000E1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CB0);
  }

  return result;
}

unint64_t sub_100088150()
{
  result = qword_1000E1CB8;
  if (!qword_1000E1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CB8);
  }

  return result;
}

unint64_t sub_1000881A8()
{
  result = qword_1000E1CC0;
  if (!qword_1000E1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CC0);
  }

  return result;
}

unint64_t sub_100088200()
{
  result = qword_1000E1CC8;
  if (!qword_1000E1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CC8);
  }

  return result;
}

unint64_t sub_100088258()
{
  result = qword_1000E1CD0;
  if (!qword_1000E1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CD0);
  }

  return result;
}

unint64_t sub_1000882B0()
{
  result = qword_1000E1CD8;
  if (!qword_1000E1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CD8);
  }

  return result;
}

uint64_t PCInteractionDirection.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 1:
      return 1752397168;
    case 2:
      return 1819047280;
  }

  _StringGuts.grow(_:)(19);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0xD000000000000011;
}

unint64_t sub_100088498()
{
  result = qword_1000E1CE0;
  if (!qword_1000E1CE0)
  {
    type metadata accessor for PCInteractionDirection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1CE0);
  }

  return result;
}

uint64_t static StaticString.== infix(_:_:)(unint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, char a6)
{
  v9 = sub_10008C388(a1, a2, a3);
  v11 = v10;
  if (v9 == sub_10008C388(a4, a5, a6) && v11 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100088590()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000F3D28);
  sub_1000047A0(v0, qword_1000F3D28);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100088610()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E1CF0);
  v1 = sub_1000047A0(v0, qword_1000E1CF0);
  if (qword_1000D9818 != -1)
  {
    swift_once();
  }

  v2 = sub_1000047A0(v0, qword_1000F3D28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

os_activity_t _makeActivity(named:dso:)(char *description, int a2, char a3, void *dso)
{
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1000D9828 == -1)
        {
LABEL_5:
          v5 = qword_1000E1D08;

          return _os_activity_create(dso, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1000D9828 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_1000E1D08, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t sub_1000888E4()
{
  sub_100088928();
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 72, 7);
}

void sub_100088928()
{
  if (*(v0 + 64))
  {
    v1 = v0;
    if (qword_1000D9820 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000047A0(v2, qword_1000E1CF0);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136315138;
      v7 = *(v1 + 16);
      v8 = *(v1 + 24);
      v9 = *(v1 + 32);
      v10 = StaticString.description.getter();
      v12 = sub_1000343F8(v10, v11, &v14);

      *(v5 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stopping %s", v5, 0xCu);
      sub_10000529C(v6);
    }

    swift_beginAccess();
    os_activity_scope_leave((v1 + 48));
    swift_endAccess();
    v13 = *(v1 + 64);
    *(v1 + 64) = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100088AC0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  v3 = *(*a2 + 24);
  v4 = *(*a2 + 32);
  v5 = sub_10008C388(*(*a1 + 16), *(*a1 + 24), *(*a1 + 32));
  v7 = v6;
  if (v5 == sub_10008C388(v2, v3, v4) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int sub_100088B68()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10008C388(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100088BD0()
{
  sub_10008C388(*(*v0 + 16), *(*v0 + 24), *(*v0 + 32));
  String.hash(into:)();
}

Swift::Int sub_100088C2C()
{
  Hasher.init(_seed:)();
  sub_10008C388(*(*v0 + 16), *(*v0 + 24), *(*v0 + 32));
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100088C90(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = sub_10008C388(*a1, *(a1 + 8), *(a1 + 16));
  v7 = v6;
  if (v5 == sub_10008C388(v2, v3, v4) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t StaticString.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  sub_10008C388(a2, a3, a4);
  String.hash(into:)();
}

Swift::Int StaticString.hashValue.getter(unint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  sub_10008C388(a1, a2, a3);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100088E10()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_10008C388(v1, v2, v3);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100088E88()
{
  sub_10008C388(*v0, *(v0 + 8), *(v0 + 16));
  String.hash(into:)();
}

Swift::Int sub_100088EE0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_10008C388(v1, v2, v3);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100088F54()
{
  qword_1000E1D08 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

unint64_t sub_100088F94()
{
  result = qword_1000E1D10;
  if (!qword_1000E1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1D10);
  }

  return result;
}

unint64_t sub_100089010()
{
  result = qword_1000E1F00;
  if (!qword_1000E1F00)
  {
    type metadata accessor for Transaction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1F00);
  }

  return result;
}

id sub_100089064@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceKillPCViewService];
  *a2 = result;
  return result;
}

uint64_t sub_1000890AC()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E1F10);
  sub_1000047A0(v0, qword_1000E1F10);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10008912C()
{
  v1 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridge;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridge))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridge);
  }

  else
  {
    v3 = v0;
    v4 = sub_1000891DC();
    v5 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_daemonBridgeState);
    type metadata accessor for NearbySharingInteractionAlertDaemonBridgeClient();
    swift_allocObject();

    v2 = sub_10004C988(v4, v5);
    v6 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000891DC()
{
  v1 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridgeModel;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridgeModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridgeModel);
  }

  else
  {
    v7 = *(*(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_nearbySharingInteractionViewPresenterState) + 16);
    sub_1000056EC(&qword_1000E2120, &qword_10009C5F0);
    sub_10000EE58(&qword_1000E2128, &qword_1000E2120, &qword_10009C5F0);
    v3 = v0;
    v4 = Publisher.eraseToAnyPublisher()();
    type metadata accessor for NearbySharingInteractionAlertDaemonBridgeClientModel();
    v2 = swift_allocObject();
    *(v2 + 16) = v4;
    v5 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000892D8()
{
  v1 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenter;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenter);
  }

  else
  {
    v3 = v0;
    v4 = sub_100089388();
    v5 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_nearbySharingInteractionViewPresenterState);
    type metadata accessor for NearbySharingInteractionViewPresenter();
    swift_allocObject();

    v2 = sub_10004E3F8(v4, v5);
    v6 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void *sub_100089388()
{
  v1 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenterModel;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenterModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenterModel);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_rootViewController);
    v4 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_host);
    v5 = *(v0 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_daemonBridgeState);
    swift_beginAccess();
    v6 = *(v5 + 16);
    type metadata accessor for NearbySharingInteractionViewPresenterModel();
    v2 = swift_allocObject();
    v2[2] = v3;
    v2[3] = v4;
    v2[4] = v6;
    *(v0 + v1) = v2;
    v7 = v3;
    swift_unknownObjectRetain();
  }

  return v2;
}

uint64_t sub_10008945C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v110 = a4;
  v111 = a5;
  v101 = a3;
  v113 = a2;
  v7 = sub_1000056EC(&qword_1000E0000, &qword_100097908);
  v97 = *(v7 - 8);
  v98 = v7;
  v8 = *(v97 + 64);
  __chkstk_darwin(v7, v9);
  v95 = &v92 - v10;
  v11 = sub_1000056EC(&qword_1000E0008, &unk_100097910);
  v99 = *(v11 - 8);
  v100 = v11;
  v12 = *(v99 + 64);
  __chkstk_darwin(v11, v13);
  v96 = &v92 - v14;
  v15 = sub_1000056EC(&qword_1000E2130, &qword_10009C5F8);
  v106 = *(v15 - 8);
  v107 = v15;
  v16 = *(v106 + 64);
  __chkstk_darwin(v15, v17);
  v105 = &v92 - v18;
  v19 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v20 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19 - 8, v21);
  v102 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22, v24);
  v104 = &v92 - v26;
  __chkstk_darwin(v25, v27);
  v29 = &v92 - v28;
  v94 = type metadata accessor for NearbySharingInteractionViewServiceContext();
  v30 = *(*(v94 - 8) + 64);
  v32 = __chkstk_darwin(v94, v31);
  v34 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v35);
  v37 = &v92 - v36;
  *(v5 + 16) = &_swiftEmptySetSingleton;
  UUID.init()();
  v38 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment__isActive;
  v39 = sub_1000056EC(&qword_1000E0010, qword_10009C600);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  *(v5 + v38) = sub_1000543E8(1, 0, 0, 0);
  v42 = (v5 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_finishedHandler);
  *v42 = 0;
  v42[1] = 0;
  *(v5 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridge) = 0;
  *(v5 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridgeModel) = 0;
  *(v5 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenter) = 0;
  *(v5 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenterModel) = 0;
  v43 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_nearbySharingInteractionViewPresenterState;
  type metadata accessor for NearbySharingInteractionViewPresenterState();
  v44 = swift_allocObject();
  v45 = sub_1000056EC(&qword_1000E2120, &qword_10009C5F0);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v103 = v45;
  swift_allocObject();
  *(v44 + 16) = PassthroughSubject.init()();
  v112 = v5;
  *(v5 + v43) = v44;
  if (qword_1000D9830 != -1)
  {
    swift_once();
  }

  v108 = v5 + 16;
  v48 = type metadata accessor for Logger();
  sub_1000047A0(v48, qword_1000E1F10);
  sub_10008AED0(a1, v37, type metadata accessor for NearbySharingInteractionViewServiceContext);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  v51 = os_log_type_enabled(v49, v50);
  v109 = a1;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v114 = v93;
    *v52 = 136315138;
    sub_10008AED0(v37, v34, type metadata accessor for NearbySharingInteractionViewServiceContext);
    v53 = String.init<A>(describing:)();
    v55 = v54;
    sub_10008AF38(v37, type metadata accessor for NearbySharingInteractionViewServiceContext);
    v56 = sub_1000343F8(v53, v55, &v114);
    a1 = v109;

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v49, v50, "Init: context=%s", v52, 0xCu);
    sub_10000529C(v93);
  }

  else
  {

    sub_10008AF38(v37, type metadata accessor for NearbySharingInteractionViewServiceContext);
  }

  v57 = v112;
  sub_10008AED0(a1, v112 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_context, type metadata accessor for NearbySharingInteractionViewServiceContext);
  *(v57 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_host) = v113;
  v58 = v101;
  *(v57 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_rootViewController) = v101;
  v59 = *v42;
  v60 = v42[1];
  v62 = v110;
  v61 = v111;
  *v42 = v110;
  v42[1] = v61;
  swift_unknownObjectRetain();
  v63 = v58;
  sub_10000B16C(v62);
  sub_10000B17C(v59);
  sub_10008AED0(a1, v29, type metadata accessor for NearbySharingInteractionDisplayContext);
  type metadata accessor for NearbySharingInteractionAlertDaemonBridgeClientState();
  v64 = swift_allocObject();
  v65 = sub_1000056EC(&qword_1000E0018, &unk_100097920);
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  *(v64 + 24) = PassthroughSubject.init()();
  v68 = v104;
  sub_10008AED0(v29, v104, type metadata accessor for NearbySharingInteractionDisplayContext);
  swift_beginAccess();
  v69 = v102;
  sub_10008AED0(v68, v102, type metadata accessor for NearbySharingInteractionDisplayContext);
  v70 = sub_1000056EC(&qword_1000DF920, &qword_100097490);
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  v73 = sub_1000597B8(v69, 0, 0, 0);
  sub_10008AF38(v68, type metadata accessor for NearbySharingInteractionDisplayContext);
  *(v64 + 16) = v73;
  swift_endAccess();
  sub_10008AF38(v29, type metadata accessor for NearbySharingInteractionDisplayContext);
  *(v57 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_daemonBridgeState) = v64;
  v114 = *(v64 + 24);
  swift_allocObject();
  swift_weakInit();
  sub_10000EE58(&qword_1000E0020, &qword_1000E0018, &unk_100097920);

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v104 = v63;
  v114 = *&v63[OBJC_IVAR___MainViewController_homeGestureEventSubject];
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  *(v75 + 16) = sub_10008AFD8;
  *(v75 + 24) = v74;

  sub_1000056EC(&qword_1000DA1D0, &qword_100091778);
  sub_10000EE58(&qword_1000DFF98, &qword_1000DA1D0, &qword_100091778);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v114 = *(*(v57 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_nearbySharingInteractionViewPresenterState) + 16);
  sub_10000EE58(&qword_1000E2128, &qword_1000E2120, &qword_10009C5F0);

  v76 = v105;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();

  sub_10000EE58(&qword_1000E2138, &qword_1000E2130, &qword_10009C5F8);
  v77 = v107;
  Publisher<>.sink(receiveValue:)();

  (*(v106 + 8))(v76, v77);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10008912C();
  sub_10004CC24();

  sub_1000892D8();
  sub_10004E650();

  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v78 = *(qword_1000F3C58 + 880);
  v79 = *(v78 + *((swift_isaMask & *v78) + 0x70));
  if (v79)
  {
    v80 = (v78 + *((swift_isaMask & *v78) + 0x68));
    v81 = *v80;
    v82 = v80[1];
    v83 = v78;
    v84 = v79;
    v85 = String._bridgeToObjectiveC()();
    [v84 setBool:0 forKey:v85];
  }

  v86 = v109;
  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  if (qword_1000F3D78)
  {
    swift_getKeyPath();
    v87 = v95;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    sub_10000EE58(&qword_1000E0028, &qword_1000E0000, &qword_100097908);
    v88 = v96;
    v89 = v98;
    Publisher.filter(_:)();
    (*(v97 + 8))(v87, v89);
    sub_10000EE58(&qword_1000E0030, &qword_1000E0008, &unk_100097910);
    v90 = v100;
    Publisher<>.sink(receiveValue:)();
    (*(v99 + 8))(v88, v90);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_10000B17C(v110);
    swift_unknownObjectRelease();

    sub_10008AF38(v86, type metadata accessor for NearbySharingInteractionViewServiceContext);
  }

  else
  {
    sub_10008AF38(v86, type metadata accessor for NearbySharingInteractionViewServiceContext);
    sub_10000B17C(v110);

    swift_unknownObjectRelease();
  }

  return v112;
}

uint64_t sub_10008A1D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10008AA88(v1, v2);
  }

  return result;
}

uint64_t sub_10008A248()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10008AA88(0x74756220656D6F48, 0xEB000000006E6F74);
  }

  return result;
}

BOOL sub_10008A2BC(uint64_t *a1)
{
  if (*(a1 + 56) < 2u)
  {
    return 0;
  }

  v1 = a1[4];
  v2 = *a1;
  v3 = a1[5] | a1[6];
  v4 = a1[3] | a1[2] | a1[1];
  if (!(v3 | *a1 | v1 | v4))
  {
    return 0;
  }

  v5 = v3 | v1 | v4;
  if (v2 == 1 && v5 == 0)
  {
    return 0;
  }

  return v2 != 2 || v5 != 0;
}

uint64_t sub_10008A320()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10008AA88(0x74206C65636E6143, 0xED00006465707061);
  }

  return result;
}

void sub_10008A398()
{
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1000F3C58 + 880);
  v1 = *(v0 + *((swift_isaMask & *v0) + 0x70));
  if (v1)
  {
    v2 = (v0 + *((swift_isaMask & *v0) + 0x68));
    v3 = *v2;
    v4 = v2[1];
    v5 = v0;
    v6 = v1;
    v7 = String._bridgeToObjectiveC()();
    [v6 setBool:0 forKey:v7];
  }

  if (qword_1000D9830 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000047A0(v8, qword_1000E1F10);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "### forceKillPCViewService set to true, exiting...", v11, 2u);
  }

  exit(0);
}

uint64_t sub_10008A548()
{
  v1 = v0;
  if (qword_1000D9830 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E1F10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10008A904();
  v6 = *(v1 + 16);

  v7 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_id;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  v9 = *(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment__isActive);

  sub_10008AF38(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_context, type metadata accessor for NearbySharingInteractionViewServiceContext);
  v10 = *(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_host);
  swift_unknownObjectRelease();

  v11 = *(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_finishedHandler + 8);
  sub_10000B17C(*(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_finishedHandler));
  v12 = *(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridge);

  v13 = *(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___daemonBridgeModel);

  v14 = *(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_daemonBridgeState);

  v15 = *(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenter);

  v16 = *(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment____lazy_storage___nearbySharingInteractionViewPresenterModel);

  v17 = *(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_nearbySharingInteractionViewPresenterState);

  return v1;
}

uint64_t sub_10008A740()
{
  sub_10008A548();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for NearbySharingInteractionAlertEnvironment()
{
  result = qword_1000E1F78;
  if (!qword_1000E1F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008A7EC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for NearbySharingInteractionDisplayContext();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10008A904()
{
  if (qword_1000D9830 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000E1F10);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0x6164696C61766E69, 0xEC00000029286574, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  sub_10008912C();
  sub_10004D454();

  sub_1000892D8();
  sub_10004ED8C();
}

id sub_10008AA88(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1000D9830 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000E1F10);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000343F8(0xD000000000000011, 0x80000001000A5970, &v18);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1000343F8(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: reason=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v2 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_finishedHandler);
  if (v10)
  {
    v11 = *(v2 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_finishedHandler + 8);

    v10(v12);

    return sub_10000B17C(v10);
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "### No finished handler?", v16, 2u);
    }

    v17 = *(v3 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_host);

    return [v17 invalidate];
  }
}

uint64_t sub_10008AD04()
{
  v1 = *v0;
  _StringGuts.grow(_:)(52);
  v2._object = 0x80000001000A6520;
  v2._countAndFlagsBits = 0xD000000000000032;
  String.append(_:)(v2);
  type metadata accessor for UUID();
  sub_10006A8F8(&qword_1000DFF80);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  return 0;
}

uint64_t sub_10008ADCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10008AE48(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13PCViewService40NearbySharingInteractionAlertEnvironment__isActive);

  sub_100052940(a1);
}

uint64_t sub_10008AED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008AF38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008AF98()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008AFE0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10008B020@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceKillPCViewService];
  *a2 = result;
  return result;
}

uint64_t sub_10008B094@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v78 = a1;
  v77 = a3;
  v3 = sub_1000056EC(&qword_1000DBD08, &qword_1000937D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v73 - v6;
  v8 = sub_1000056EC(&qword_1000E2140, &qword_10009C6D8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v73 - v11;
  v13 = sub_1000056EC(&qword_1000E2148, &qword_10009C6E0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v73 - v17;
  v19 = sub_1000056EC(&qword_1000E2150, &qword_10009C6E8);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19, v22);
  v24 = &v73 - v23;
  v25 = sub_1000056EC(&qword_1000E2158, &qword_10009C6F0);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25, v28);
  v75 = &v73 - v29;
  v30 = sub_1000056EC(&qword_1000E2160, &qword_10009C6F8);
  v31 = v30 - 8;
  v32 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30, v33);
  v74 = &v73 - v34;
  ButtonStyleConfiguration.label.getter();
  v35 = type metadata accessor for Font.Design();
  (*(*(v35 - 8) + 56))(v7, 1, 1, v35);
  v36 = static Font.system(size:weight:design:)();
  sub_10000A628(v7, &qword_1000DBD08, &qword_1000937D0);
  KeyPath = swift_getKeyPath();
  v38 = &v12[*(v8 + 36)];
  *v38 = KeyPath;
  v38[1] = v36;
  static Font.Weight.medium.getter();
  sub_10008B888();
  View.fontWeight(_:)();
  sub_10000A628(v12, &qword_1000E2140, &qword_10009C6D8);
  LOBYTE(v36) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = &v18[*(sub_1000056EC(&qword_1000E2178, &qword_10009C738) + 36)];
  *v47 = v36;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v48 = &v18[*(v14 + 44)];
  v49 = v81;
  *v48 = v80;
  *(v48 + 1) = v49;
  *(v48 + 2) = v82;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001F170(v18, v24, &qword_1000E2148, &qword_10009C6E0);
  v50 = &v24[*(v20 + 44)];
  v51 = v88;
  v52 = v89;
  *(v50 + 4) = v87;
  *(v50 + 5) = v51;
  *(v50 + 6) = v52;
  v53 = v84;
  *v50 = v83;
  *(v50 + 1) = v53;
  v54 = v86;
  *(v50 + 2) = v85;
  *(v50 + 3) = v54;
  sub_10008B66C(v76, &v79);
  v55 = v79;
  LOBYTE(v14) = static Edge.Set.all.getter();
  v56 = v24;
  v57 = v75;
  sub_10001F170(v56, v75, &qword_1000E2150, &qword_10009C6E8);
  v58 = v57 + *(v26 + 44);
  *v58 = v55;
  *(v58 + 8) = v14;
  v59 = v74;
  v60 = &v74[*(v31 + 44)];
  v61 = *(type metadata accessor for RoundedRectangle() + 20);
  v62 = enum case for RoundedCornerStyle.continuous(_:);
  v63 = type metadata accessor for RoundedCornerStyle();
  (*(*(v63 - 8) + 104))(&v60[v61], v62, v63);
  __asm { FMOV            V0.2D, #12.0 }

  *v60 = _Q0;
  *&v60[*(sub_1000056EC(&qword_1000DEFD8, &qword_10009C740) + 36)] = 256;
  sub_10001F170(v57, v59, &qword_1000E2158, &qword_10009C6F0);
  v69 = static Animation.easeOut(duration:)();
  LOBYTE(v60) = ButtonStyleConfiguration.isPressed.getter();
  v70 = v77;
  sub_10001F170(v59, v77, &qword_1000E2160, &qword_10009C6F8);
  result = sub_1000056EC(&qword_1000E2180, &qword_10009C748);
  v72 = v70 + *(result + 36);
  *v72 = v69;
  *(v72 + 8) = v60 & 1;
  return result;
}

uint64_t sub_10008B66C@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Material();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000056EC(&qword_1000E2188, &qword_10009C750);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v21 - v13;
  if (a1)
  {
    static Material.thin.getter();
    if (ButtonStyleConfiguration.isPressed.getter())
    {
      v15 = 0.7;
    }

    else
    {
      v15 = 1.0;
    }

    (*(v5 + 32))(v14, v9, v4);
    *&v14[*(v10 + 36)] = v15;
    sub_10000EE58(&qword_1000E2190, &qword_1000E2188, &qword_10009C750);
  }

  else
  {
    v16 = ButtonStyleConfiguration.isPressed.getter();
    v17 = objc_opt_self();
    v18 = &selRef_systemGray5Color;
    if ((v16 & 1) == 0)
    {
      v18 = &selRef_systemGray6Color;
    }

    v19 = [v17 *v18];
    v21[1] = Color.init(_:)();
  }

  result = AnyShapeStyle.init<A>(_:)();
  *a2 = result;
  return result;
}

unint64_t sub_10008B888()
{
  result = qword_1000E2168;
  if (!qword_1000E2168)
  {
    sub_100005818(&qword_1000E2140, &qword_10009C6D8);
    sub_10008B940();
    sub_10000EE58(&qword_1000DC200, &qword_1000DC208, &unk_10009AAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E2168);
  }

  return result;
}

unint64_t sub_10008B940()
{
  result = qword_1000E2170;
  if (!qword_1000E2170)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E2170);
  }

  return result;
}

unint64_t sub_10008B99C()
{
  result = qword_1000E2198;
  if (!qword_1000E2198)
  {
    sub_100005818(&qword_1000E2180, &qword_10009C748);
    sub_10008BA54();
    sub_10000EE58(&qword_1000DF010, &qword_1000DF018, &qword_10009C760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E2198);
  }

  return result;
}

unint64_t sub_10008BA54()
{
  result = qword_1000E21A0;
  if (!qword_1000E21A0)
  {
    sub_100005818(&qword_1000E2160, &qword_10009C6F8);
    sub_10008BB0C();
    sub_10000EE58(&qword_1000E21D8, &qword_1000DEFD8, &qword_10009C740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E21A0);
  }

  return result;
}

unint64_t sub_10008BB0C()
{
  result = qword_1000E21A8;
  if (!qword_1000E21A8)
  {
    sub_100005818(&qword_1000E2158, &qword_10009C6F0);
    sub_10008BBC4();
    sub_10000EE58(&qword_1000E21C8, &qword_1000E21D0, &qword_10009C758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E21A8);
  }

  return result;
}

unint64_t sub_10008BBC4()
{
  result = qword_1000E21B0;
  if (!qword_1000E21B0)
  {
    sub_100005818(&qword_1000E2150, &qword_10009C6E8);
    sub_10008BC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E21B0);
  }

  return result;
}

unint64_t sub_10008BC50()
{
  result = qword_1000E21B8;
  if (!qword_1000E21B8)
  {
    sub_100005818(&qword_1000E2148, &qword_10009C6E0);
    sub_10008BCDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E21B8);
  }

  return result;
}

unint64_t sub_10008BCDC()
{
  result = qword_1000E21C0;
  if (!qword_1000E21C0)
  {
    sub_100005818(&qword_1000E2178, &qword_10009C738);
    sub_100005818(&qword_1000E2140, &qword_10009C6D8);
    sub_10008B888();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E21C0);
  }

  return result;
}

uint64_t sub_10008BDA4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  sub_10000B17C(v1);

  return _swift_deallocClassInstance(v0, 760, 7);
}

uint64_t sub_10008BE20(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = __chkstk_darwin(AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  __chkstk_darwin(v24, v26);
  v28 = &v37 - v27;
  v29 = dispatch thunk of Collection.count.getter();
  if (!v29)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v51 = v29;
  v55 = ContiguousArray.init()();
  v42 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v51);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = dispatch thunk of Collection.subscript.read();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008C240(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1, a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(describing:)();
}

uint64_t sub_10008C2F8()
{
  v0 = type metadata accessor for JSONEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v3;
}

unint64_t sub_10008C388(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return static String._fromUTF8Repairing(_:)();
    }

LABEL_9:
    __break(1u);
    return static String._fromUTF8Repairing(_:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_10008C49C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static Optional<A>.allCases.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(AssociatedTypeWitness, v7);
  v9 = &v18[-v8];
  v10 = type metadata accessor for Optional();
  type metadata accessor for _ContiguousArrayStorage();
  v11 = *(*(v10 - 8) + 72);
  v12 = *(*(v10 - 8) + 80);
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  (*(*(a1 - 8) + 56))(v13, 1, 1, a1);
  type metadata accessor for Array();
  dispatch thunk of static CaseIterable.allCases.getter();
  v19 = a1;
  v20 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10008BE20(sub_10008C788, v18, AssociatedTypeWitness, v10, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v15);
  (*(v5 + 8))(v9, AssociatedTypeWitness);
  v16 = static Array.+ infix(_:_:)();

  return v16;
}

void sub_10008C718()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_1000F3D78 = v2;
}

uint64_t sub_10008C788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

unint64_t sub_10008C840()
{
  result = qword_1000E25A0;
  if (!qword_1000E25A0)
  {
    sub_100005818(qword_1000E25A8, qword_10009C820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E25A0);
  }

  return result;
}

uint64_t sub_10008C8A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10008C8E0(uint64_t a1, unsigned int a2)
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

uint64_t sub_10008C93C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t PCActivityAssetType.description.getter(uint64_t a1)
{
  v1 = sub_100064F5C(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10008CA1C()
{
  result = qword_1000E2630;
  if (!qword_1000E2630)
  {
    sub_100005818(&qword_1000E2638, qword_10009C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E2630);
  }

  return result;
}

uint64_t sub_10008CB40()
{
  v1 = sub_100064F5C(*v0);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10008CB90()
{
  result = qword_1000E2640;
  if (!qword_1000E2640)
  {
    type metadata accessor for PCActivityAssetType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E2640);
  }

  return result;
}

uint64_t sub_10008CBFC()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E2648);
  sub_1000047A0(v0, qword_1000E2648);
  return Logger.init(subsystem:category:)();
}

void sub_10008CC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000D9840 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000047A0(v5, qword_1000E2648);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000343F8(0xD000000000000014, 0x80000001000A0CE0, v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000529C(v9);
  }

  v12[0] = a2;
  v12[1] = a3;
  sub_1000056EC(&qword_1000E2668, &qword_10009CBA8);
  State.wrappedValue.getter();
  v10 = [v11 view];

  if (!v10)
  {
    __break(1u);
  }
}

uint64_t sub_10008CE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008CF18();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10008CE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008CF18();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10008CEF0()
{
  sub_10008CF18();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10008CF18()
{
  result = qword_1000E2660;
  if (!qword_1000E2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E2660);
  }

  return result;
}

void sub_10008CF6C()
{
  if (qword_1000D9840 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000E2648);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000343F8(0xD000000000000018, 0x80000001000A0CC0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000529C(v3);
  }
}

uint64_t Publisher<>.switchToLatest()()
{
  return Publisher<>.switchToLatest()();
}

{
  return Publisher<>.switchToLatest()();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}