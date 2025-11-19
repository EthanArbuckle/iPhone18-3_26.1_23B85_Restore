__n128 sub_1007B0A68@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v27 = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(a1, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(a1) = v27;
  }

  if (a1 == 2 || (a1 & 1) == 0)
  {
    LOBYTE(v28) = 0;
    v21 = 0;
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v13[16] = 1;
    v13[8] = v29;
    v13[0] = v31;
    v13[24] = 1;
    v14 = 0;
    v15 = 1;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v21 = 1;
  }

  sub_10010FC20(&qword_101199330);
  sub_1007B7AFC(&qword_101199338, &qword_101199330);
  _ConditionalContent<>.init(storage:)();
  v11 = v25;
  *(a3 + 32) = v24;
  *(a3 + 48) = v11;
  *(a3 + 64) = v26;
  result = v23;
  *a3 = v22;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1007B0CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = type metadata accessor for BaselineSpacer(255);
  v114 = a1;
  v4 = *(a1 + 32);
  sub_1001109D0(&qword_1011993F8);
  v5 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for TupleView();
  v106 = *(v6 - 8);
  __chkstk_darwin(v6);
  v105 = &v90 - v7;
  v101 = type metadata accessor for Font.TextStyle();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v3;
  __chkstk_darwin(v9);
  v102 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v103 = &v90 - v12;
  v107 = *(v5 - 8);
  __chkstk_darwin(v13);
  v108 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v109 = &v90 - v16;
  v98 = type metadata accessor for EnvironmentValues();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v6;
  v113 = v5;
  v18 = type metadata accessor for _ConditionalContent();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v111 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v110 = &v90 - v22;
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v90 - v25;
  v27 = *(v4 - 8);
  __chkstk_darwin(v28);
  v30 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Optional();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v32 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v33);
  v116 = &v90 - v35;
  v36 = v112;
  (*(v24 + 16))(v26, v34);
  if ((*(v27 + 48))(v26, 1, v4) == 1)
  {
    (*(v24 + 8))(v26, v23);
    (*(v19 + 56))(v32, 1, 1, v18);
    WitnessTable = swift_getWitnessTable();
    v38 = *(*(v114 + 72) + 8);
    v39 = sub_100020674(&qword_1011993F0, &qword_1011993F8);
    v129[11] = v38;
    v129[12] = v39;
    v40 = swift_getWitnessTable();
    v129[9] = WitnessTable;
    v129[10] = v40;
    swift_getWitnessTable();
    v41 = v32;
  }

  else
  {
    v94 = v18;
    v95 = v32;
    (*(v27 + 32))(v30, v26, v4);
    v42 = v114;
    v43 = v36 + *(v114 + 100);
    v44 = *v43;
    v45 = *(v43 + 8) == 1;
    v46 = v4;
    v93 = v27;
    v92 = v19;
    if (!v45)
    {

      static os_log_type_t.fault.getter();
      v47 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v48 = v96;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000D8F20(v44, 0);
      (*(v97 + 8))(v48, v98);
      LOBYTE(v44) = v129[0];
    }

    if (v44 == 2 || (v44 & 1) == 0)
    {
      v58 = *(v42 + 72);
      v59 = v99;
      (*(v58 + 16))(v4, v58);
      v60 = *(v100 + 32);
      v91 = v30;
      v61 = v103;
      v60(v103, v59, v101);
      v62 = sub_10010FC20(&qword_1011883A8);
      (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
      *(v61 + *(type metadata accessor for BaselineSpacer.Configuration(0) + 20)) = 0x4034000000000000;
      v63 = *(v58 + 8);
      v64 = v108;
      View.layoutPriority(_:)();
      v65 = sub_100020674(&qword_1011993F0, &qword_1011993F8);
      v114 = v63;
      v129[2] = v63;
      v129[3] = v65;
      v66 = v113;
      v67 = swift_getWitnessTable();
      v68 = v109;
      sub_100663950(v64, v66, v67);
      v69 = v107;
      v112 = v46;
      v70 = *(v107 + 8);
      v70(v64, v66);
      v71 = v102;
      sub_1007B4EC8(v61, v102, type metadata accessor for BaselineSpacer);
      v129[0] = v71;
      (*(v69 + 16))(v64, v68, v66);
      v129[1] = v64;
      v128[0] = v104;
      v128[1] = v66;
      v126 = sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer);
      v127 = v67;
      v72 = v105;
      sub_1006769F4(v129, 2uLL, v128);
      v70(v64, v66);
      sub_1007B4F64(v71, type metadata accessor for BaselineSpacer);
      v73 = v115;
      swift_getWitnessTable();
      v57 = v110;
      sub_100653878(v72, v73);
      (*(v106 + 8))(v72, v73);
      v70(v68, v66);
      sub_1007B4F64(v61, type metadata accessor for BaselineSpacer);
      (*(v93 + 8))(v91, v112);
    }

    else
    {
      v49 = *(*(v42 + 72) + 8);
      v50 = v108;
      View.layoutPriority(_:)();
      v51 = sub_100020674(&qword_1011993F0, &qword_1011993F8);
      v114 = v49;
      v120 = v49;
      v121 = v51;
      v52 = v113;
      v53 = swift_getWitnessTable();
      v54 = v109;
      sub_100663950(v50, v52, v53);
      v55 = *(v107 + 8);
      v55(v50, v52);
      sub_100663950(v54, v52, v53);
      v56 = v115;
      swift_getWitnessTable();
      v57 = v110;
      sub_100653970(v50, v56, v52);
      v55(v50, v52);
      v55(v54, v52);
      (*(v93 + 8))(v30, v46);
    }

    v74 = swift_getWitnessTable();
    v75 = sub_100020674(&qword_1011993F0, &qword_1011993F8);
    v38 = v114;
    v124 = v114;
    v125 = v75;
    v76 = swift_getWitnessTable();
    v122 = v74;
    v123 = v76;
    v77 = v94;
    v78 = swift_getWitnessTable();
    v79 = v111;
    sub_100663950(v57, v77, v78);
    v80 = v92;
    (*(v92 + 8))(v57, v77);
    v41 = v95;
    (*(v80 + 32))(v95, v79, v77);
    (*(v80 + 56))(v41, 0, 1, v77);
  }

  v81 = v116;
  sub_100653A68(v41, v116);
  v82 = *(v117 + 8);
  v83 = v41;
  v84 = v118;
  v82(v83, v118);
  v85 = swift_getWitnessTable();
  v86 = sub_100020674(&qword_1011993F0, &qword_1011993F8);
  v129[7] = v38;
  v129[8] = v86;
  v87 = swift_getWitnessTable();
  v129[5] = v85;
  v129[6] = v87;
  v129[4] = swift_getWitnessTable();
  v88 = swift_getWitnessTable();
  sub_100663950(v81, v84, v88);
  return (v82)(v81, v84);
}

uint64_t sub_1007B1BF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v2 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v11 = a1[10];
  v10 = a1[11];
  v102 = a1;
  v127 = type metadata accessor for Header.TextVStack.DescriptionContainer.Spacing.Before();
  sub_1001109D0(&qword_1011993F8);
  v131 = type metadata accessor for ModifiedContent();
  v115 = v2;
  v136 = v2;
  v137 = v3;
  v114 = v3;
  v105 = v5;
  v138 = v5;
  v139 = v4;
  v122 = v6;
  v140 = v6;
  v141 = v7;
  v121 = v7;
  v120 = v8;
  v142 = v8;
  v143 = v9;
  v119 = v9;
  v12 = v4;
  v104 = v11;
  v144 = v11;
  v145 = v10;
  v118 = v10;
  v13 = type metadata accessor for Header.TextVStack.DescriptionContainer.Spacing.After();
  v14 = v127;
  v15 = v131;
  swift_getTupleTypeMetadata3();
  v16 = type metadata accessor for TupleView();
  v124 = *(v16 - 8);
  __chkstk_darwin(v16);
  v123 = v89 - v17;
  v110 = v13;
  v107 = *(v13 - 8);
  __chkstk_darwin(v18);
  v109 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v108 = v89 - v21;
  v101 = type metadata accessor for EnvironmentValues();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *(v15 - 8);
  __chkstk_darwin(v23);
  v117 = v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v103 = v89 - v26;
  __chkstk_darwin(v27);
  v116 = v89 - v28;
  v29 = type metadata accessor for Font.TextStyle();
  __chkstk_darwin(v29 - 8);
  v112 = v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(v14 - 8);
  __chkstk_darwin(v31);
  v130 = v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v129 = v89 - v34;
  v35 = v12;
  v36 = type metadata accessor for Optional();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = v89 - v38;
  v40 = *(v12 - 8);
  __chkstk_darwin(v41);
  v111 = v89 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v16;
  v43 = type metadata accessor for Optional();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = v89 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v47);
  v50 = v89 - v49;
  (*(v37 + 16))(v39, v128, v36, v48);
  if ((*(v40 + 48))(v39, 1, v35) == 1)
  {
    (*(v37 + 8))(v39, v36);
    (*(v124 + 56))(v46, 1, 1, v125);
    swift_getWitnessTable();
    sub_100653A68(v46, v50);
    v51 = *(v44 + 8);
    v51(v46, v43);
  }

  else
  {
    v95 = v46;
    v96 = v44;
    v97 = v50;
    v98 = v43;
    (*(v40 + 32))(v111, v39, v35);
    v52 = v104;
    v53 = v112;
    v90 = *(v104 + 16);
    v89[1] = v104 + 16;
    v90(v35, v104);
    *(&v87 + 1) = v52;
    *&v87 = v119;
    v54 = v130;
    v55 = v105;
    sub_1007B2A50(v53, v115, v114, v105, v35, v122, v121, v120, v130, v87, v118, type metadata accessor for Header.TextVStack.DescriptionContainer.Spacing.Before);
    v56 = v127;
    WitnessTable = swift_getWitnessTable();
    sub_100663950(v54, v56, WitnessTable);
    v57 = *(v113 + 8);
    v93 = v113 + 8;
    v92 = v57;
    v57(v54, v56);
    v58 = &v128[*(v102 + 25)];
    v59 = *v58;
    v60 = v58[8] == 1;
    v94 = v40;
    if (!v60)
    {

      static os_log_type_t.fault.getter();
      v61 = v55;
      v62 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v55 = v61;
      v63 = v99;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000D8F20(v59, 0);
      (*(v100 + 8))(v63, v101);
    }

    v64 = *(v52 + 8);
    v65 = v103;
    View.layoutPriority(_:)();
    v66 = sub_100020674(&qword_1011993F0, &qword_1011993F8);
    v135[3] = v64;
    v135[4] = v66;
    v89[0] = v35;
    v67 = v131;
    v105 = swift_getWitnessTable();
    sub_100663950(v65, v67, v105);
    v68 = v106;
    v69 = *(v106 + 8);
    v127 = v106 + 8;
    v128 = v69;
    (v69)(v65, v67);
    v70 = v112;
    v90(v35, v52);
    *(&v88 + 1) = v52;
    *&v88 = v119;
    v71 = v109;
    sub_1007B2A50(v70, v115, v114, v55, v35, v122, v121, v120, v109, v88, v118, type metadata accessor for Header.TextVStack.DescriptionContainer.Spacing.After);
    v72 = v110;
    v121 = swift_getWitnessTable();
    v73 = v108;
    sub_100663950(v71, v72, v121);
    v74 = v107;
    v122 = *(v107 + 8);
    v122(v71, v72);
    v75 = v130;
    (*(v113 + 16))(v130, v129, v56);
    v136 = v75;
    v76 = v117;
    v77 = v116;
    (*(v68 + 16))(v117, v116, v67);
    v137 = v76;
    (*(v74 + 16))(v71, v73, v72);
    v138 = v71;
    v135[0] = v56;
    v135[1] = v67;
    v135[2] = v72;
    v132 = WitnessTable;
    v133 = v105;
    v134 = v121;
    sub_1006769F4(&v136, 3uLL, v135);
    v78 = v122;
    v122(v73, v72);
    v79 = v77;
    v80 = v128;
    (v128)(v79, v67);
    v81 = v92;
    v92(v129, v56);
    (*(v94 + 8))(v111, v89[0]);
    v78(v71, v72);
    (v80)(v117, v67);
    v81(v130, v56);
    v82 = v124;
    v83 = v95;
    v84 = v125;
    (*(v124 + 32))(v95, v123, v125);
    (*(v82 + 56))(v83, 0, 1, v84);
    swift_getWitnessTable();
    v50 = v97;
    sub_100653A68(v83, v97);
    v51 = *(v96 + 8);
    v43 = v98;
    v51(v83, v98);
  }

  v135[5] = swift_getWitnessTable();
  v85 = swift_getWitnessTable();
  sub_100663950(v50, v43, v85);
  return (v51)(v50, v43);
}

uint64_t sub_1007B2A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t (*a12)(void, void *))
{
  v20 = type metadata accessor for Font.TextStyle();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = a8;
  v25 = a10;
  v26 = a11;
  v21 = a9 + *(a12(0, v24) + 100);
  result = swift_getKeyPath();
  *v21 = result;
  *(v21 + 8) = 0;
  return result;
}

uint64_t sub_1007B2B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = type metadata accessor for BaselineSpacer(0);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011A35D0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v3 + *(a1 + 100);
  v16 = *v15;
  if (*(v15 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v23 = v10;
    v18 = v17;
    os_log(_:dso:log:_:_:)();

    v10 = v23;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v16, 0);
    (*(v12 + 8))(v14, v11);
    LOBYTE(v16) = v25;
  }

  if (v16 == 2 || (v16 & 1) == 0)
  {
    v20 = type metadata accessor for Font.TextStyle();
    (*(*(v20 - 8) + 16))(v7, v3, v20);
    v21 = sub_10010FC20(&qword_1011883A8);
    (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
    *&v7[*(type metadata accessor for BaselineSpacer.Configuration(0) + 20)] = 0x403E000000000000;
    sub_1007B4EC8(v7, v10, type metadata accessor for BaselineSpacer);
    swift_storeEnumTagMultiPayload();
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer);
    _ConditionalContent<>.init(storage:)();
    return sub_1007B4F64(v7, type metadata accessor for BaselineSpacer);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1007B2F24(uint64_t a1)
{
  v25 = type metadata accessor for BaselineSpacer(0);
  __chkstk_darwin(v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_1011A35D8);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1 + *(a1 + 100);
  v14 = *v13;
  if (*(v13 + 8) != 1)
  {
    v24 = v10;

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v14, 0);
    (*(v9 + 8))(v12, v24);
    LOBYTE(v14) = v29;
  }

  if (v14 == 2 || (v14 & 1) == 0)
  {
    v21 = type metadata accessor for Font.TextStyle();
    (*(*(v21 - 8) + 16))(v4, v1, v21);
    v22 = sub_10010FC20(&qword_1011883A8);
    (*(*(v22 - 8) + 56))(v4, 0, 1, v22);
    *&v4[*(type metadata accessor for BaselineSpacer.Configuration(0) + 20)] = 0x4036000000000000;
    sub_1007B4EC8(v4, v7, type metadata accessor for BaselineSpacer);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101199330);
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer);
    sub_1007B7AFC(&qword_101199338, &qword_101199330);
    _ConditionalContent<>.init(storage:)();
    return sub_1007B4F64(v4, type metadata accessor for BaselineSpacer);
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v16 = v29;
    v17 = v30;
    v18 = v31;
    v19 = v32;
    v28 = 1;
    v27 = v30;
    v26 = v32;
    *v7 = 0;
    v7[8] = 1;
    *(v7 + 2) = v16;
    v7[24] = v17;
    *(v7 + 4) = v18;
    v7[40] = v19;
    *(v7 + 3) = v33;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101199330);
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer);
    sub_1007B7AFC(&qword_101199338, &qword_101199330);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1007B33E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v41 = a2;
  v31 = *(a1 + 48);
  v40 = *(v31 - 8);
  __chkstk_darwin(a1);
  v39 = &KeyPath - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &KeyPath - v5;
  v8 = v6[3];
  v32 = v6[2];
  v7 = v32;
  v10 = v6[4];
  v35 = v6[5];
  v9 = v35;
  v12 = v6[8];
  v34 = v6[7];
  v11 = v34;
  v13 = v6[10];
  v33 = v6[9];
  v14 = v33;
  v15 = v6[11];
  KeyPath = swift_getKeyPath();
  v46 = KeyPath;
  LOBYTE(v47) = 0;
  v57 = v7;
  v58 = v8;
  v59 = v10;
  v60 = v9;
  v16 = v31;
  v61 = v31;
  v62 = v11;
  v63 = v12;
  v64 = v14;
  v65 = v13;
  v66 = v15;
  v17 = v15;
  v18 = type metadata accessor for Header.TextVStack.PlaybackControlContainer.Spacing.Before();
  v37 = v18;
  WitnessTable = swift_getWitnessTable();
  sub_100663950(&v46, v18, WitnessTable);
  sub_1000D8F20(KeyPath, 0);
  v19 = v42;
  v20 = v36;
  sub_100663950(v36, v16, v15);
  LOBYTE(v2) = *(v20 + *(v2 + 100));
  v21 = swift_getKeyPath();
  LOBYTE(v46) = v2;
  v47 = v21;
  LOBYTE(v48) = 0;
  v57 = v32;
  v58 = v8;
  v59 = v10;
  v60 = v35;
  v61 = v16;
  v62 = v34;
  v63 = v12;
  v64 = v33;
  v65 = v13;
  v66 = v15;
  v22 = type metadata accessor for Header.TextVStack.PlaybackControlContainer.Spacing.After();
  v23 = swift_getWitnessTable();
  sub_100663950(&v46, v22, v23);
  sub_1000D8F20(v21, 0);
  v24 = v67;
  LOBYTE(v2) = v68;
  v52 = v67;
  v53 = v68;
  v57 = &v52;
  v25 = v40;
  v26 = v39;
  (*(v40 + 16))(v39, v19, v16);
  v27 = v55;
  LOBYTE(v19) = v56;
  v49 = v54;
  v50 = v55;
  v51 = v56;
  v58 = v26;
  v59 = &v49;
  sub_1005FF6B8(v24, v2);
  sub_1005FF6B8(v27, v19);
  v46 = v37;
  v47 = v16;
  v48 = v22;
  v43 = WitnessTable;
  v44 = v17;
  v45 = v23;
  sub_1006769F4(&v57, 3uLL, &v46);
  sub_1000D8F20(v27, v19);
  v28 = *(v25 + 8);
  v28(v42, v16);
  sub_1000D8F20(v24, v2);
  sub_1000D8F20(v50, v51);
  v28(v26, v16);
  return sub_1000D8F20(v52, v53);
}

uint64_t sub_1007B37C8(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Font.TextStyle();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v25 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BaselineSpacer(0);
  __chkstk_darwin(v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_1011A35D0);
  __chkstk_darwin(v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v24[1] = v9;
    v18 = v17;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(a1, 0);
    (*(v13 + 8))(v16, v12);
    LOBYTE(a1) = v28;
  }

  if (a1 == 2 || (a1 & 1) == 0)
  {
    v21 = v25;
    v20 = v26;
    v22 = v27;
    (*(v26 + 104))(v25, enum case for Font.TextStyle.body(_:), v27, v14);
    (*(v20 + 32))(v8, v21, v22);
    v23 = sub_10010FC20(&qword_1011883A8);
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    *&v8[*(type metadata accessor for BaselineSpacer.Configuration(0) + 20)] = 0x4032000000000000;
    sub_1007B4EC8(v8, v11, type metadata accessor for BaselineSpacer);
    swift_storeEnumTagMultiPayload();
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer);
    _ConditionalContent<>.init(storage:)();
    return sub_1007B4F64(v8, type metadata accessor for BaselineSpacer);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer);
    return _ConditionalContent<>.init(storage:)();
  }
}

__n128 sub_1007B3C88@<Q0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v39 = a2;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(a2, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(a2) = v39;
  }

  if (a2 == 2 || (a2 & 1) == 0)
  {
    if (a1)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0uLL;
      v19 = 1;
    }

    else
    {
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v19 = 0;
      v13 = v40;
      v14 = v42;
      v18 = v44;
      LOBYTE(v23) = 1;
      v33 = v41;
      v32 = v43;
      v17 = 1;
      v16 = v41;
      v15 = v43;
      LOBYTE(v34) = 0;
    }

    v33 = 0;
    v23 = 0;
    v24 = v17;
    v25 = v13;
    v26 = v16;
    v27 = v14;
    v28 = v15;
    v29 = v18;
    v30 = v19;
    v31 = 0;
  }

  else
  {
    LOBYTE(v40) = 1;
    v31 = 1;
  }

  sub_10010FC20(&qword_10119D130);
  sub_10068E44C();
  _ConditionalContent<>.init(storage:)();
  v20 = v37;
  *(a4 + 32) = v36;
  *(a4 + 48) = v20;
  *(a4 + 64) = v38;
  result = v35;
  *a4 = v34;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_1007B3F7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for MotionMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v47 = sub_10010FC20(&qword_1011A2EC0);
  __chkstk_darwin(v47);
  v16 = &v39 - v15;
  sub_1000089F8(v1, v14, &unk_10118A5E0);
  v17 = type metadata accessor for ArtworkImage.Info(0);
  sub_1007B4EC8(v1 + *(v17 + 20), v11, type metadata accessor for ArtworkImage.Placeholder);
  sub_1007B4420(v49);
  v18 = v1 + *(v17 + 32);
  v19 = *v18;
  v45 = *(v18 + 8);
  v46 = v19;
  v44 = *(v18 + 16);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v14, v11, 0, 1, v49, v19, v45, v44, v16);
  v20 = type metadata accessor for Header.AdaptativeArtwork(0);
  v21 = *(v20 + 20);
  v22 = _s7ArtworkVMa();
  sub_1000089F8(v2 + v21, &v16[v22[5]], &unk_101192950);
  v23 = (v2 + *(v20 + 28));
  v24 = *v23;
  v25 = v23[1];
  v41 = v22[7];
  v42 = v24;
  v40 = v4;
  (*(v4 + 104))(v8, enum case for MotionMode.on(_:), v3);
  (*(v4 + 16))(v43, v8, v3);
  sub_1007B62D0();

  static NSUserDefaults.MCUI.getter();
  static MCUINamespace<A>.motionModeKey.getter();
  sub_1007B46CC(&qword_1011A2EC8, &type metadata accessor for MotionMode);
  v26 = AppStorage.init<A>(wrappedValue:_:store:)();
  (*(v40 + 8))(v8, v3);
  v27 = v42;
  *&v16[v41] = v26;
  v28 = &v16[v22[6]];
  *v28 = v27;
  *(v28 + 1) = v25;
  sub_1007B4420(&v50);
  sub_1007B4420(v51);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29 = &v16[*(v47 + 36)];
  v30 = v51[4];
  *v29 = v51[3];
  *(v29 + 1) = v30;
  *(v29 + 2) = v51[5];
  v31 = Radiosity.Specs.containerDetailHeaderArtwork.unsafeMutableAddressor();
  v32 = v31[3];
  v34 = *v31;
  v33 = v31[1];
  v53[2] = v31[2];
  v53[3] = v32;
  v53[0] = v34;
  v53[1] = v33;
  v35 = v31[7];
  v37 = v31[4];
  v36 = v31[5];
  v53[6] = v31[6];
  v53[7] = v35;
  v53[4] = v37;
  v53[5] = v36;
  sub_10056F298(v53, v52);
  Radiosity.Specs.pathShadow(for:)(v46, v45, v44, v52);
  sub_10056F2F4(v53);
  sub_1007B631C();
  View.radiosity(specs:)(v52);
  sub_10056F2F4(v52);
  return sub_1000095E8(v16, &qword_1011A2EC0);
}

uint64_t sub_1007B4420@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Header.AdaptativeArtwork(0);
  v8 = v1 + *(v7 + 32);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v9, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v9) = v21;
  }

  if (v9 == 2 || (v9 & 1) != 0)
  {
    v11 = 300.0;
    v12 = 300.0;
  }

  else
  {
    v20 = *(v1 + *(v7 + 24));
    if (v20)
    {
      swift_getKeyPath();
      v21 = v20;
      sub_1007B46CC(&qword_101192A00, _s7MetricsCMa);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *(v20 + 16) + -136.0;
      v12 = v11;
    }

    else
    {
      v11 = 305.0;
      v12 = 305.0;
    }
  }

  result = ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*&v11, 0, *&v12, 0, 0, 1, 2, &v21);
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = v26;
  v19 = v27;
  *a1 = v21;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = v18;
  *(a1 + 41) = v19;
  return result;
}

uint64_t sub_1007B46CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007B472C()
{
  v1 = type metadata accessor for Header(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  sub_10010FC20(&unk_10118F250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1000D8F20(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

uint64_t sub_1007B4890(char a1, uint64_t (*a2)(void, uint64_t))
{
  v4 = *(type metadata accessor for Header(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1 & 1, v5);
}

uint64_t sub_1007B4924@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v5 = *(type metadata accessor for Header(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1007A9C38(a1, v6, a2);
}

uint64_t sub_1007B49A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Header(0);
  v3 = *(v1 + 16);

  return sub_1007A9D6C(v3, a1);
}

uint64_t sub_1007B4A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007B4AB0(uint64_t a1, char a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002F3F4;

  return sub_100728D1C(a1, a2, v6);
}

unint64_t sub_1007B4BD4()
{
  result = qword_1011A2CA0;
  if (!qword_1011A2CA0)
  {
    sub_1001109D0(&qword_1011A2C98);
    sub_1007B4C90();
    sub_1007B46CC(qword_1011A2CC0, type metadata accessor for Header.AdaptativeArtwork);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2CA0);
  }

  return result;
}

unint64_t sub_1007B4C90()
{
  result = qword_1011A2CA8;
  if (!qword_1011A2CA8)
  {
    sub_1001109D0(&qword_1011A2C88);
    sub_1007B4D4C();
    sub_1007B46CC(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2CA8);
  }

  return result;
}

unint64_t sub_1007B4D4C()
{
  result = qword_1011A2CB0;
  if (!qword_1011A2CB0)
  {
    sub_1001109D0(&qword_1011A2C80);
    sub_1001109D0(&qword_1011A2C70);
    type metadata accessor for PlainButtonStyle();
    sub_100020674(&qword_1011A2CB8, &qword_1011A2C70);
    sub_1007B46CC(&qword_10119A260, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1007B46CC(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2CB0);
  }

  return result;
}

uint64_t sub_1007B4EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007B4F64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1007B5030()
{
  type metadata accessor for Optional();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Optional();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Optional();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, &unk_100EDB130, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1007B516C(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v4 = a3[3];
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = a3[5];
  v53 = a3[4];
  v12 = *(v53 - 8);
  if (v7 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v7;
  }

  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v13 <= v15)
  {
    v13 = v15;
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v13 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v13;
  }

  v52 = a3[6];
  v20 = *(v52 - 8);
  v21 = *(v20 + 84);
  v22 = *(v12 + 64);
  v23 = *(v5 + 80);
  v54 = *(v4 - 8);
  v55 = *(v8 + 80);
  v24 = *(v12 + 80);
  v25 = *(v16 + 80);
  v26 = *(*(v11 - 8) + 64);
  v27 = *(v20 + 80);
  if (v19 <= v21)
  {
    v28 = *(v20 + 84);
  }

  else
  {
    v28 = v19;
  }

  if (v28 <= 0xFE)
  {
    v29 = 254;
  }

  else
  {
    v29 = v28;
  }

  if (v6)
  {
    v30 = *(*(a3[2] - 8) + 64);
  }

  else
  {
    v30 = *(*(a3[2] - 8) + 64) + 1;
  }

  if (v9)
  {
    v31 = *(*(v4 - 8) + 64);
  }

  else
  {
    v31 = *(*(v4 - 8) + 64) + 1;
  }

  if (!v14)
  {
    ++v22;
  }

  if (v17)
  {
    v32 = v26;
  }

  else
  {
    v32 = v26 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v33 = v31 + v24;
  v51 = v22 + v25;
  v34 = v32 + v27;
  if (v29 < a2)
  {
    v35 = ((*(*(v52 - 8) + 64) + ((v34 + ((v51 + ((v33 + ((v30 + v55 + ((v23 + 9) & ~v23)) & ~v55)) & ~v24)) & ~v25)) & ~v27) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v35 <= 3)
    {
      v36 = ((a2 - v29 + 255) >> 8) + 1;
    }

    else
    {
      v36 = 2;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 >= 2)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v39 = *&a1[v35];
        if (*&a1[v35])
        {
          goto LABEL_54;
        }
      }

      else
      {
        v39 = *&a1[v35];
        if (v39)
        {
          goto LABEL_54;
        }
      }
    }

    else if (v38)
    {
      v39 = a1[v35];
      if (a1[v35])
      {
LABEL_54:
        v40 = (v39 - 1) << (8 * v35);
        if (v35 <= 3)
        {
          v41 = *a1;
        }

        else
        {
          v40 = 0;
          v41 = *a1;
        }

        v43 = v29 + (v41 | v40);
        return (v43 + 1);
      }
    }
  }

  if (v28 <= 0xFE)
  {
    v42 = a1[8];
    if (v42 >= 2)
    {
      v43 = (v42 + 2147483646) & 0x7FFFFFFF;
      return (v43 + 1);
    }

    return 0;
  }

  if (v7 == v29)
  {
    if (v6 >= 2)
    {
      v44 = (*(v5 + 48))(&a1[v23 + 9] & ~v23);
      goto LABEL_82;
    }

    return 0;
  }

  v45 = ((&a1[v23 + 9] & ~v23) + v30 + v55) & ~v55;
  if (v10 == v29)
  {
    if (v9 < 2)
    {
      return 0;
    }

    v44 = (*(v54 + 48))(v45, v9, a3[3]);
LABEL_82:
    if (v44 >= 2)
    {
      return v44 - 1;
    }

    else
    {
      return 0;
    }
  }

  v47 = (v33 + v45) & ~v24;
  if (v15 == v29)
  {
    if (v14 < 2)
    {
      return 0;
    }

    v44 = (*(*(v53 - 8) + 48))(v47, v14, v53);
    goto LABEL_82;
  }

  v48 = (v51 + v47) & ~v25;
  if (v18 == v29)
  {
    if (v17 < 2)
    {
      return 0;
    }

    v44 = (*(v16 + 48))(v48, v17, a3[5]);
    goto LABEL_82;
  }

  v49 = *(v20 + 48);
  v50 = (v34 + v48) & ~*(v20 + 80);

  return v49(v50, v21, v52);
}

void sub_1007B562C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = 0;
  v5 = a4[3];
  v50 = a4[2];
  v6 = *(v50 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v49 = a4[3];
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v51 = v11;
  v52 = v8;
  if (v8 > v11)
  {
    v11 = v8;
  }

  v47 = a4[4];
  v12 = *(v47 - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v44 = a4[5];
  v15 = *(v44 - 8);
  if (v11 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v11;
  }

  v17 = *(v15 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v16 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16;
  }

  v45 = a4[6];
  v20 = *(v45 - 8);
  v21 = *(*(v5 - 8) + 64);
  v22 = *(v6 + 80);
  v48 = *(v5 - 8);
  v23 = *(v9 + 80);
  v46 = *(v47 - 8);
  v24 = *(v12 + 80);
  v25 = *(v15 + 80);
  v26 = *(v15 + 64);
  v27 = *(v20 + 80);
  if (v19 <= *(v20 + 84))
  {
    v28 = *(v20 + 84);
  }

  else
  {
    v28 = v19;
  }

  if (v28 <= 0xFE)
  {
    v29 = 254;
  }

  else
  {
    v29 = v28;
  }

  if (v7)
  {
    v30 = *(*(v50 - 8) + 64);
  }

  else
  {
    v30 = *(*(v50 - 8) + 64) + 1;
  }

  if (!v10)
  {
    ++v21;
  }

  if (v13)
  {
    v31 = *(*(v47 - 8) + 64);
  }

  else
  {
    v31 = *(*(v47 - 8) + 64) + 1;
  }

  if (!v17)
  {
    ++v26;
  }

  v32 = v26 + v27;
  v33 = ((*(*(v45 - 8) + 64) + ((v26 + v27 + ((v31 + v25 + ((v21 + v24 + ((v30 + v23 + ((v22 + 9) & ~v22)) & ~v23)) & ~v24)) & ~v25)) & ~v27) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v29 < a3)
  {
    if (v33 <= 3)
    {
      v34 = ((a3 - v29 + 255) >> 8) + 1;
    }

    else
    {
      v34 = 2;
    }

    if (v34 >= 0x10000)
    {
      v35 = 4;
    }

    else
    {
      v35 = 2;
    }

    if (v34 < 0x100)
    {
      v35 = 1;
    }

    if (v34 >= 2)
    {
      v4 = v35;
    }

    else
    {
      v4 = 0;
    }
  }

  if (v29 >= a2)
  {
    if (v4 > 1)
    {
      if (v4 != 2)
      {
        *&a1[v33] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_66;
      }

      *&a1[v33] = 0;
    }

    else if (v4)
    {
      a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_66;
    }

    if (!a2)
    {
      return;
    }

LABEL_66:
    if (v28 <= 0xFE)
    {
      a1[8] = a2 + 1;
      return;
    }

    v38 = &a1[v22 + 9] & ~v22;
    if (v52 == v29)
    {
      if (v7 < 2)
      {
        return;
      }

      v39 = v50;
      v40 = *(v6 + 56);
      v41 = a2 + 1;
      v10 = v7;
    }

    else
    {
      v38 = (v38 + v30 + v23) & ~v23;
      if (v51 == v29)
      {
        if (v10 < 2)
        {
          return;
        }

        v39 = v49;
        v40 = *(v48 + 56);
        v41 = a2 + 1;
      }

      else
      {
        v38 = (v21 + v24 + v38) & ~v24;
        if (v14 == v29)
        {
          if (v13 < 2)
          {
            return;
          }

          v39 = v47;
          v40 = *(v46 + 56);
          v41 = a2 + 1;
          v10 = v13;
        }

        else
        {
          v38 = (v31 + v25 + v38) & ~v25;
          if (v18 != v29)
          {
            v42 = *(v20 + 56);
            v43 = (v32 + v38) & ~v27;

            v42(v43);
            return;
          }

          if (v17 < 2)
          {
            return;
          }

          v40 = *(v15 + 56);
          v41 = a2 + 1;
          v10 = v17;
          v39 = v44;
        }
      }
    }

    v40(v38, v41, v10, v39);
    return;
  }

  v36 = ~v29 + a2;
  bzero(a1, v33);
  if (v33 <= 3)
  {
    v37 = (v36 >> 8) + 1;
  }

  else
  {
    v37 = 1;
  }

  if (v33 <= 3)
  {
    *a1 = v36;
    if (v4 > 1)
    {
LABEL_54:
      if (v4 == 2)
      {
        *&a1[v33] = v37;
      }

      else
      {
        *&a1[v33] = v37;
      }

      return;
    }
  }

  else
  {
    *a1 = v36;
    if (v4 > 1)
    {
      goto LABEL_54;
    }
  }

  if (v4)
  {
    a1[v33] = v37;
  }
}

void sub_1007B5B78()
{
  type metadata accessor for ArtworkImage.Info(319);
  if (v0 <= 0x3F)
  {
    sub_1007B7D14(319, &qword_101182200, &type metadata accessor for VideoArtwork, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1007B7D14(319, &unk_1011A2DB0, _s7MetricsCMa, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, &unk_100EDB130, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1007B5CC8()
{
  sub_1007B5E34(319, &qword_101194178, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10001F7E8();
    if (v1 <= 0x3F)
    {
      sub_1007B7D14(319, &qword_1011878B0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1007B5E88(319, &qword_10118E378, &qword_10118E380, &unk_100ECA620, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1007B5E34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CGFloat);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1007B5E88(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1007B5EEC()
{
  result = qword_1011A2E70;
  if (!qword_1011A2E70)
  {
    sub_1001109D0(&qword_1011A2C38);
    sub_1007B5FA4();
    sub_100020674(&qword_10119E820, &qword_10118F360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2E70);
  }

  return result;
}

unint64_t sub_1007B5FA4()
{
  result = qword_1011A2E78;
  if (!qword_1011A2E78)
  {
    sub_1001109D0(&qword_1011A2C28);
    sub_1007B605C();
    sub_100020674(&qword_1011A2EB0, &qword_1011A2EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2E78);
  }

  return result;
}

unint64_t sub_1007B605C()
{
  result = qword_1011A2E80;
  if (!qword_1011A2E80)
  {
    sub_1001109D0(&qword_1011A2C20);
    sub_1007B6114();
    sub_100020674(&qword_1011A2EA0, &qword_1011A2EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2E80);
  }

  return result;
}

unint64_t sub_1007B6114()
{
  result = qword_1011A2E88;
  if (!qword_1011A2E88)
  {
    sub_1001109D0(&qword_1011A2C18);
    sub_1007B61A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2E88);
  }

  return result;
}

unint64_t sub_1007B61A0()
{
  result = qword_1011A2E90;
  if (!qword_1011A2E90)
  {
    sub_1001109D0(&qword_1011A2C10);
    sub_100020674(&qword_1011A2E98, &qword_1011A2C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2E90);
  }

  return result;
}

unint64_t sub_1007B62D0()
{
  result = qword_10118CE58;
  if (!qword_10118CE58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10118CE58);
  }

  return result;
}

unint64_t sub_1007B631C()
{
  result = qword_1011A2ED0;
  if (!qword_1011A2ED0)
  {
    sub_1001109D0(&qword_1011A2EC0);
    sub_1007B46CC(&qword_1011A2ED8, _s7ArtworkVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2ED0);
  }

  return result;
}

unint64_t sub_1007B64B0()
{
  result = qword_1011A2EE8;
  if (!qword_1011A2EE8)
  {
    sub_1001109D0(&qword_1011A2EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2EE8);
  }

  return result;
}

uint64_t sub_1007B652C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for Header.Content() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1007AA2A0(a1 & 1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_1007B65E8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for Header.Content() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));
  v9 = *(v8 + *(v7 + 64));

  return sub_1007AAA00(v8, v9, v3, v4, v5, v6, a1);
}

void sub_1007B66B4()
{
  type metadata accessor for Optional();
  if (v0 <= 0x3F)
  {
    sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, &unk_100EDB130, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1007B6768(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 40) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 40) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (*&a1[v9])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (v14)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    if (v6 < 0xFE)
    {
      v19 = *((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 > 1)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_33;
  }

LABEL_29:
  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void sub_1007B68E8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 40) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a4 + 40) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v13 = (a3 - v10 + 255) >> 8;
    if (v12 <= 3)
    {
      v14 = v13 + 1;
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
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v12] = 0;
    }

    else if (v6)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 < 0xFE)
      {
        v21 = &a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v21 + 8) = 0;
          *v21 = a2 - 255;
        }

        else
        {
          *(v21 + 8) = -a2;
        }
      }

      else if (v9 >= a2)
      {
        v22 = *(v7 + 56);

        v22();
      }

      else
      {
        if (v11 <= 3)
        {
          v18 = ~(-1 << (8 * v11));
        }

        else
        {
          v18 = -1;
        }

        if (v11)
        {
          v19 = v18 & (~v9 + a2);
          if (v11 <= 3)
          {
            v20 = v11;
          }

          else
          {
            v20 = 4;
          }

          bzero(a1, v11);
          if (v20 > 2)
          {
            if (v20 == 3)
            {
              *a1 = v19;
              a1[2] = BYTE2(v19);
            }

            else
            {
              *a1 = v19;
            }
          }

          else if (v20 == 1)
          {
            *a1 = v19;
          }

          else
          {
            *a1 = v19;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v16 = ~v10 + a2;
  bzero(a1, v12);
  if (v12 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v12 <= 3)
  {
    *a1 = v16;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v12] = v17;
      }

      else
      {
        *&a1[v12] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v12] = v17;
  }
}

void sub_1007B6B60()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, &unk_100EDB130, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1007B6C1C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 48) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = a1[v6];
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

void sub_1007B6D64(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 48) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 48) - 8) + 64);
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        a1[v9] = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (v9 & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1007B6F28()
{
  type metadata accessor for Optional();
  if (v0 <= 0x3F)
  {
    sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, &unk_100EDB130, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1007B6FDC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 32) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (*&a1[v9])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (v14)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    if (v6 < 0xFE)
    {
      v19 = *((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 > 1)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_33;
  }

LABEL_29:
  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void sub_1007B715C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 32) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a4 + 32) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v13 = (a3 - v10 + 255) >> 8;
    if (v12 <= 3)
    {
      v14 = v13 + 1;
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
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v12] = 0;
    }

    else if (v6)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 < 0xFE)
      {
        v21 = &a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v21 + 8) = 0;
          *v21 = a2 - 255;
        }

        else
        {
          *(v21 + 8) = -a2;
        }
      }

      else if (v9 >= a2)
      {
        v22 = *(v7 + 56);

        v22();
      }

      else
      {
        if (v11 <= 3)
        {
          v18 = ~(-1 << (8 * v11));
        }

        else
        {
          v18 = -1;
        }

        if (v11)
        {
          v19 = v18 & (~v9 + a2);
          if (v11 <= 3)
          {
            v20 = v11;
          }

          else
          {
            v20 = 4;
          }

          bzero(a1, v11);
          if (v20 > 2)
          {
            if (v20 == 3)
            {
              *a1 = v19;
              a1[2] = BYTE2(v19);
            }

            else
            {
              *a1 = v19;
            }
          }

          else if (v20 == 1)
          {
            *a1 = v19;
          }

          else
          {
            *a1 = v19;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v16 = ~v10 + a2;
  bzero(a1, v12);
  if (v12 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v12 <= 3)
  {
    *a1 = v16;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v12] = v17;
      }

      else
      {
        *&a1[v12] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v12] = v17;
  }
}

void sub_1007B73DC()
{
  type metadata accessor for Optional();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v1 <= 0x3F)
    {
      sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, &unk_100EDB130, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1007B74C4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (v5)
  {
    v12 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v12 = *(*(*(a3 + 16) - 8) + 64) + 1;
  }

  v13 = *(v8 + 80);
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 + v13;
  if (v11 < a2)
  {
    v16 = (((((v15 & ~v13) + v14) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
    v17 = (a2 - v11 + 255) >> 8;
    if (v16 <= 3)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *&a1[v16];
        if (*&a1[v16])
        {
          goto LABEL_33;
        }
      }

      else
      {
        v21 = *&a1[v16];
        if (v21)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v20)
    {
      v21 = a1[v16];
      if (a1[v16])
      {
LABEL_33:
        v22 = (v21 - 1) << (8 * v16);
        if (v16 <= 3)
        {
          v23 = *a1;
        }

        else
        {
          v22 = 0;
          v23 = *a1;
        }

        v28 = v11 + (v23 | v22);
        return (v28 + 1);
      }
    }
  }

  if (v6 == v11)
  {
    if (v5 >= 2)
    {
      v24 = (*(v4 + 48))();
      goto LABEL_46;
    }

    return 0;
  }

  v25 = &a1[v15] & ~v13;
  if (v10 != v11)
  {
    v27 = *(v25 + v14);
    if (v27 >= 2)
    {
      v28 = (v27 + 2147483646) & 0x7FFFFFFF;
      return (v28 + 1);
    }

    return 0;
  }

  if (v9 < 2)
  {
    return 0;
  }

  v24 = (*(v8 + 48))(v25, v9, v7);
LABEL_46:
  if (v24 >= 2)
  {
    return v24 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1007B7700(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  if (v8)
  {
    v11 = v8 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 - 8);
  v13 = *(v10 + 84);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  v16 = v13 - 1;
  if (!v13)
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= 0xFE)
  {
    v17 = 254;
  }

  if (v8)
  {
    v18 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v18 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v19 = v18 + v14;
  if (!v13)
  {
    ++v15;
  }

  v20 = (((((v19 & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 < a3)
  {
    v21 = (a3 - v17 + 255) >> 8;
    if (v20 <= 3)
    {
      v22 = v21 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v6 = v23;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v17 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_46;
      }

      *&a1[v20] = 0;
    }

    else if (v6)
    {
      a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    if (!a2)
    {
      return;
    }

LABEL_46:
    if (v11 == v17)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26(a1, v27);
    }

    else
    {
      v28 = &a1[v19] & ~v14;
      if (v16 == v17)
      {
        v29 = *(v12 + 56);
        v30 = a2 + 1;

        v29(v28, v30, v13, v9);
      }

      else
      {
        *(v28 + v15) = a2 + 1;
      }
    }

    return;
  }

  v24 = ~v17 + a2;
  bzero(a1, (((((v19 & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v20 <= 3)
  {
    v25 = (v24 >> 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v6 > 1)
    {
LABEL_34:
      if (v6 == 2)
      {
        *&a1[v20] = v25;
      }

      else
      {
        *&a1[v20] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v6 > 1)
    {
      goto LABEL_34;
    }
  }

  if (v6)
  {
    a1[v20] = v25;
  }
}

unint64_t sub_1007B79A0()
{
  result = qword_1011A3100;
  if (!qword_1011A3100)
  {
    sub_1001109D0(&qword_1011A3108);
    sub_1007B631C();
    sub_10056F6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3100);
  }

  return result;
}

uint64_t sub_1007B7AFC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1007B7BE4()
{
  type metadata accessor for Font.TextStyle();
  if (v0 <= 0x3F)
  {
    sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, &unk_100EDB130, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1007B7D14(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1007B7D14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1007B7DB8()
{
  type metadata accessor for Font.TextStyle();
  if (v0 <= 0x3F)
  {
    sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, &unk_100EDB130, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1007B7E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 100) + 8);
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

uint64_t sub_1007B7F4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Font.TextStyle();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 100) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1007B8008()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1007B8130()
{
  result = qword_1011A35A8;
  if (!qword_1011A35A8)
  {
    sub_1001109D0(&qword_1011A35A0);
    sub_1007B81B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A35A8);
  }

  return result;
}

unint64_t sub_1007B81B4()
{
  result = qword_1011A35B0;
  if (!qword_1011A35B0)
  {
    sub_1001109D0(&qword_1011A35B8);
    sub_1007B826C();
    sub_100020674(&qword_1011993F0, &qword_1011993F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A35B0);
  }

  return result;
}

unint64_t sub_1007B826C()
{
  result = qword_1011A35C0;
  if (!qword_1011A35C0)
  {
    sub_1001109D0(&qword_1011A35C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A35C0);
  }

  return result;
}

double sub_1007B82F8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = 1;
  return result;
}

unint64_t sub_1007B831C()
{
  result = qword_1011A35E0;
  if (!qword_1011A35E0)
  {
    sub_1001109D0(&qword_1011A35E8);
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer);
    sub_1007B8130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A35E0);
  }

  return result;
}

unint64_t sub_1007B83D8()
{
  result = qword_1011A35F0;
  if (!qword_1011A35F0)
  {
    sub_1001109D0(&qword_1011A35F8);
    sub_1007B7AFC(&qword_101199338, &qword_101199330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A35F0);
  }

  return result;
}

unint64_t sub_1007B8484()
{
  result = qword_1011A3600;
  if (!qword_1011A3600)
  {
    sub_1001109D0(&qword_1011A3608);
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3600);
  }

  return result;
}

unint64_t sub_1007B8540()
{
  result = qword_1011A3610;
  if (!qword_1011A3610)
  {
    sub_1001109D0(&qword_1011A3618);
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer);
    sub_1007B7AFC(&qword_101199338, &qword_101199330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3610);
  }

  return result;
}

unint64_t sub_1007B861C()
{
  result = qword_1011A3620;
  if (!qword_1011A3620)
  {
    sub_1001109D0(&qword_1011A3628);
    sub_10068E44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3620);
  }

  return result;
}

uint64_t sub_1007B86C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1007B8710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1007B8774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_10118CF20);
  __chkstk_darwin(v4);
  v5 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v5);
  v17[5] = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = v17 - v9;
  v22 = v4;
  *&v23 = sub_1007BA7B0();
  v11 = sub_10001C8B8(v21);
  sub_1007B9720(&_swiftEmptySetSingleton, v11);
  sub_1007BA85C(a1, v10);
  v12 = type metadata accessor for Song();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1000095E8(v10, &unk_101183960);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

  else
  {
    *(&v19 + 1) = v12;
    v20 = &protocol witness table for Song;
    v14 = sub_10001C8B8(&v18);
    (*(v13 + 32))(v14, v10, v12);
  }

  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v15 = type metadata accessor for MusicPlaybackIntentDescriptor();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_1007B8D40@<X0>(uint64_t a1@<X8>)
{
  v13 = type metadata accessor for Song();
  v12[9] = *(v13 - 8);
  __chkstk_darwin(v13);
  v2 = sub_10010FC20(&qword_10118CF20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v12[8] = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  v8 = sub_10010E83C(&off_10109B888);
  sub_1007B9720(v8, v7);

  MusicLibrarySectionedRequest<>.filterItems(equalTo:)();
  v19 = v2;
  *&v20 = sub_1007BA7B0();
  v9 = sub_10001C8B8(v18);
  (*(v3 + 16))(v9, v7, v2);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = a1;
  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
  (*(*(v10 - 8) + 56))(v14, 0, 1, v10);
  return (*(v3 + 8))(v7, v2);
}

void sub_1007B9340()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (!*(v0 + 40) || v2 == 1)
  {
    swift_getKeyPath();
    sub_10010FC20(&qword_10118CF20);
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();
    goto LABEL_6;
  }

  if (v2 == 4)
  {
    swift_getKeyPath();
    sub_10010FC20(&qword_10118CF20);
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();
LABEL_6:

    return;
  }

  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, static Logger.libraryView);
  sub_10021817C(v0, v11);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  sub_1003BECBC(v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11[0] = v7;
    *v6 = 136446210;
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, v11);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Tried to apply unhandled sortOption=%{public}s to songs request.", v6, 0xCu);
    sub_10000959C(v7);
  }
}

_UNKNOWN **sub_1007B9600()
{
  if (*(v0 + 8))
  {
    return &off_101098FA8;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  result = &off_101098FA8;
  if (v3 != 6)
  {
    type metadata accessor for MusicLibrary();

    static MusicLibrary.shared.getter();
    sub_1007BA814(&qword_10118CE20, &type metadata accessor for MusicLibrary);
    v4 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v4)
    {
      return &off_101098FD0;
    }

    else
    {
      return &off_101098FA8;
    }
  }

  return result;
}

uint64_t sub_1007B9720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for TitledSection();
  type metadata accessor for Song();
  MusicLibrarySectionedRequest.init()();
  sub_10010FC20(&qword_10118CF20);
  MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.filterItems(text:)(v2[1]);
  sub_1007B9340();
  countAndFlagsBits = v2[2]._countAndFlagsBits;
  if (*(a1 + 16) <= countAndFlagsBits[2] >> 3)
  {
    v9 = v3[2]._countAndFlagsBits;

    sub_100700034(a1);
    v7 = v9;
  }

  else
  {

    v7 = sub_100700254(a1, countAndFlagsBits);
  }

  sub_1007BA318(v7, a2);
}

uint64_t sub_1007B985C(uint64_t a1)
{
  type metadata accessor for MusicLibrary();
  sub_1007BA814(&qword_101180378, &type metadata accessor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 8) & 1);
  String.hash(into:)();
  sub_10010B100(a1, *(v1 + 32));
  v3 = *(v1 + 41);
  String.hash(into:)();

  Hasher._combine(_:)(v3 & 1);
  String.hash(into:)();
  sub_10045EC58(*(v1 + 64));
  String.hash(into:)();
}

void sub_1007B9A80(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 16);
  type metadata accessor for TitledSection();
  type metadata accessor for Song();
  MusicLibrarySectionedRequest.init()();
  sub_10010FC20(&qword_10118CF20);
  MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.filterItems(text:)(v3);
  sub_1007B9340();

  sub_1007BA318(v4, a1);
}

Swift::Int sub_1007B9B70()
{
  Hasher.init(_seed:)();
  sub_1007B985C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1007B9BB4()
{
  Hasher.init(_seed:)();
  sub_1007B985C(v1);
  return Hasher._finalize()();
}

uint64_t sub_1007B9BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1007B9D2C(v7, v9) & 1;
}

unint64_t sub_1007B9C50()
{
  result = qword_1011A3630;
  if (!qword_1011A3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3630);
  }

  return result;
}

unint64_t sub_1007B9CB0(uint64_t a1)
{
  result = sub_1007B9CD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1007B9CD8()
{
  result = qword_1011A3710;
  if (!qword_1011A3710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3710);
  }

  return result;
}

uint64_t sub_1007B9D2C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MusicLibrary();
  if (static MusicLibrary.== infix(_:_:)() & 1) != 0 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0 && (*(a1 + 16) == *(a2 + 16) ? (v4 = *(a1 + 24) == *(a2 + 24)) : (v4 = 0), (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_10018FCA0(*(a1 + 32), *(a2 + 32)) & 1) != 0 && (v5 = *(a1 + 41), v6 = *(a2 + 41), (sub_1006B8B0C(*(a1 + 40), *(a2 + 40))) && ((v5 ^ v6) & 1) == 0 && (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) || (_stringCompareWithSmolCheck(_:_:expecting:)())))
  {
    v9 = *(a2 + 64);
    v10 = sub_10045EC58(*(a1 + 64));
    v12 = v11;
    if (v10 == sub_10045EC58(v9) && v12 == v13)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1007B9E68()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 stringForKey:v2];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    v8 = _findStringSwitchCase(cases:string:)(&off_101098DD8, v7);

    if (!v8)
    {
      return 0;
    }

    if (v8 == 1)
    {
      return 1;
    }
  }

  v10 = [v0 standardUserDefaults];
  Library.SortConfiguration.storageKey.getter(6u);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 stringForKey:v11];

  if (!v12)
  {
    return 3;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  v17 = _findStringSwitchCase(cases:string:)(&off_101098E28, v16);

  if (v17 >= 3)
  {
    return 3;
  }

  else
  {
    return v17;
  }
}

__n128 sub_1007B9FFC@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for MusicLibrary();
  v3 = static MusicLibrary.shared.getter();
  v4 = a1 & 1;
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  sub_100110448();
  sub_10011049C();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, &v48);

  v7 = v48;
  v48 = v3;
  v49 = a1;
  v50 = 0;
  v51 = 0xE000000000000000;
  v52 = &_swiftEmptySetSingleton;
  v53 = 256;
  v54 = 0xD000000000000010;
  v55 = 0x8000000100E57690;
  v56 = 11;
  v8 = sub_100376548(v7);
  if ((v8 & 0xFF00) == 0x200 && (v8 = sub_10045FDA0(0xC0u), (v8 & 0xFF00) == 0x200))
  {
    v9 = 0;
    LOBYTE(v10) = 1;
  }

  else
  {
    v9 = v8;
    v10 = (v8 >> 8) & 1;
  }

  v11 = [v5 standardUserDefaults];
  v12 = sub_10010FC20(&unk_10118CD70);
  sub_100178DD8(&unk_101182910, sub_100178D84);
  sub_100178DD8(&unk_101182920, sub_100178E50);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v12, &v38);

  v13 = v38;
  if (!v38)
  {
    v14 = sub_1007B9E68();
    v15 = Optional<A>.convertToSet.getter(v14);
    if (v15)
    {
      v13 = v15;
    }

    else
    {
      v13 = &_swiftEmptySetSingleton;
    }
  }

  v38 = v3;
  v39 = v4;
  v40 = 0;
  v41 = 0xE000000000000000;
  v42 = &_swiftEmptySetSingleton;
  v43 = v9;
  v44 = v10;
  v45 = 0xD000000000000010;
  v46 = 0x8000000100E57690;
  v47 = 11;
  v57 = &_swiftEmptySetSingleton;
  v16 = sub_1007B9600();
  v17 = sub_1003AE5C4(v16, v13);

  sub_1000095E8(&v57, &unk_10118CD70);
  *&v23 = v3;
  BYTE8(v23) = v4;
  v24.n128_u64[0] = 0;
  v24.n128_u64[1] = 0xE000000000000000;
  *&v25 = v17;
  BYTE8(v25) = v9;
  BYTE9(v25) = v10;
  *&v26 = 0xD000000000000010;
  *(&v26 + 1) = 0x8000000100E57690;
  v27 = 11;
  v28 = v3;
  v29 = v4;
  v30 = 0;
  v31 = 0xE000000000000000;
  v32 = v17;
  v33 = v9;
  v34 = v10;
  v35 = 0xD000000000000010;
  v36 = 0x8000000100E57690;
  v37 = 11;
  sub_10021817C(&v23, v22);
  sub_1003BECBC(&v28);
  v18 = v26;
  *(v21 + 32) = v25;
  *(v21 + 48) = v18;
  *(v21 + 64) = v27;
  result = v24;
  *v21 = v23;
  *(v21 + 16) = result;
  return result;
}

void sub_1007BA318(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for MusicFavoriteStatus();
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v20 = v4;
    Hasher.init(_seed:)();
    String.hash(into:)();
    v7 = Hasher._finalize()();
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    v10 = v7 & ~v9;
    if ((*(a1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v9;
      while (!*(*(a1 + 48) + v10) || *(*(a1 + 48) + v10) == 2)
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_10;
        }

        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

LABEL_10:
      swift_getKeyPath();
      v13 = v20;
      (*(v20 + 104))(v6, enum case for MusicFavoriteStatus.favorited(_:), v3);
      sub_10010FC20(&qword_10118CF20);
      sub_1007BA814(&qword_1011831C8, &type metadata accessor for MusicFavoriteStatus);
      MusicLibrarySectionedRequest<>.filterItems<A>(matching:equalTo:)();

      (*(v13 + 8))(v6, v3);
    }

LABEL_11:
    if (*(a1 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = -1 << *(a1 + 32);
      v16 = v14 & ~v15;
      if ((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (!*(*(a1 + 48) + v16) || *(*(a1 + 48) + v16) == 1)
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_20;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            return;
          }
        }

LABEL_20:
        sub_10010FC20(&qword_10118CF20);
        MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      }
    }
  }
}

uint64_t sub_1007BA6A8@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1007BA700@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  *(a3 + 8) = v8 & 1;
  return result;
}

uint64_t sub_1007BA760(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  return a4(v5, v6);
}

unint64_t sub_1007BA7B0()
{
  result = qword_1011A3718;
  if (!qword_1011A3718)
  {
    sub_1001109D0(&qword_10118CF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3718);
  }

  return result;
}

uint64_t sub_1007BA814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007BA85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101183960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007BA8CC()
{
  v1 = v0;
  v2 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MusicVideo();
  v5 = dispatch thunk of MusicItem.id.getter();
  v7 = v6;
  swift_beginAccess();
  v8 = *(v0 + 88);
  if (*(v8 + 16))
  {
    v9 = sub_100019C10(v5, v7);
    v11 = v10;

    if (v11)
    {
      sub_10000DD18(*(v8 + 56) + 32 * v9, &v21);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v21 = 0u;
  v22 = 0u;
LABEL_6:
  swift_endAccess();
  if (!*(&v22 + 1))
  {
    sub_1000095E8(&v21, &unk_101183F30);
    goto LABEL_10;
  }

  sub_10010FC20(&unk_101184820);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v13 = *(v1 + 48);
    v14 = *(*v13 + 96);
    swift_beginAccess();
    sub_1007CD954(v13 + v14, v4, _s11MusicVideosVMa);

    sub_1007CD9CC(v4, _s11MusicVideosVMa);
    v12 = MusicLibrary.state<A>(for:)();

    v15 = dispatch thunk of MusicItem.id.getter();
    v17 = v16;
    *(&v22 + 1) = sub_10010FC20(&unk_101184820);
    *&v21 = v12;
    swift_beginAccess();

    sub_10040770C(&v21, v15, v17);
    swift_endAccess();
    return v12;
  }

  return v20;
}

uint64_t sub_1007BAB4C()
{
  type metadata accessor for Song();
  v1 = dispatch thunk of MusicItem.id.getter();
  v3 = v2;
  swift_beginAccess();
  v4 = *(v0 + 88);
  if (*(v4 + 16))
  {
    v5 = sub_100019C10(v1, v3);
    v7 = v6;

    if (v7)
    {
      sub_10000DD18(*(v4 + 56) + 32 * v5, &v14);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = 0u;
  v15 = 0u;
LABEL_6:
  swift_endAccess();
  if (!*(&v15 + 1))
  {
    sub_1000095E8(&v14, &unk_101183F30);
    goto LABEL_10;
  }

  sub_10010FC20(&qword_101193DD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    swift_beginAccess();

    v8 = MusicLibrary.state<A>(for:)();

    v9 = dispatch thunk of MusicItem.id.getter();
    v11 = v10;
    *(&v15 + 1) = sub_10010FC20(&qword_101193DD0);
    *&v14 = v8;
    swift_beginAccess();

    sub_10040770C(&v14, v9, v11);
    swift_endAccess();
    return v8;
  }

  return v13;
}

uint64_t sub_1007BAD38()
{
  v1 = v0;
  v2 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for TVEpisode();
  sub_1007CDB28(&unk_1011996E0, &type metadata accessor for TVEpisode);
  v5 = dispatch thunk of MusicItem.id.getter();
  v7 = v6;
  swift_beginAccess();
  v8 = *(v0 + 88);
  if (*(v8 + 16))
  {
    v9 = sub_100019C10(v5, v7);
    v11 = v10;

    if (v11)
    {
      sub_10000DD18(*(v8 + 56) + 32 * v9, &v21);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v21 = 0u;
  v22 = 0u;
LABEL_6:
  swift_endAccess();
  if (!*(&v22 + 1))
  {
    sub_1000095E8(&v21, &unk_101183F30);
    goto LABEL_10;
  }

  sub_10010FC20(&qword_1011A3958);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v13 = *(v1 + 48);
    v14 = *(*v13 + 96);
    swift_beginAccess();
    sub_1007CD954(v13 + v14, v4, _s10TVEpisodesVMa);

    sub_1007CD9CC(v4, _s10TVEpisodesVMa);
    sub_1007CDB28(&qword_1011A3950, &type metadata accessor for TVEpisode);
    v12 = MusicLibrary.state<A>(for:)();

    v15 = dispatch thunk of MusicItem.id.getter();
    v17 = v16;
    *(&v22 + 1) = sub_10010FC20(&qword_1011A3958);
    *&v21 = v12;
    swift_beginAccess();

    sub_10040770C(&v21, v15, v17);
    swift_endAccess();
    return v12;
  }

  return v20;
}

uint64_t sub_1007BB024()
{
  type metadata accessor for MusicMovie();
  sub_1007CDB28(&unk_10118AB60, &type metadata accessor for MusicMovie);
  v1 = dispatch thunk of MusicItem.id.getter();
  v3 = v2;
  swift_beginAccess();
  v4 = *(v0 + 88);
  if (*(v4 + 16))
  {
    v5 = sub_100019C10(v1, v3);
    v7 = v6;

    if (v7)
    {
      sub_10000DD18(*(v4 + 56) + 32 * v5, &v14);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = 0u;
  v15 = 0u;
LABEL_6:
  swift_endAccess();
  if (!*(&v15 + 1))
  {
    sub_1000095E8(&v14, &unk_101183F30);
    goto LABEL_10;
  }

  sub_10010FC20(&qword_1011A3918);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    swift_beginAccess();
    sub_1007CDB28(&qword_1011A3910, &type metadata accessor for MusicMovie);

    v8 = MusicLibrary.state<A>(for:)();

    v9 = dispatch thunk of MusicItem.id.getter();
    v11 = v10;
    *(&v15 + 1) = sub_10010FC20(&qword_1011A3918);
    *&v14 = v8;
    swift_beginAccess();

    sub_10040770C(&v14, v9, v11);
    swift_endAccess();
    return v8;
  }

  return v13;
}

id sub_1007BB278(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___globalHeaderRegistration;
  v8 = sub_10010FC20(&qword_1011A37C8);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___headerRegistration;
  v10 = sub_10010FC20(&unk_10118A650);
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___tvShowCellRegistration;
  v12 = sub_10010FC20(&qword_1011A37D8);
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___movieCellRegistration;
  v14 = sub_10010FC20(&unk_1011A37E8);
  (*(*(v14 - 8) + 56))(&v2[v13], 1, 1, v14);
  *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView] = 0;
  v15 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_prefetchingController;
  v16 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v2[v15] = sub_10003AAD8(0xD000000000000024, 0x8000000100E578C0);
  *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_dragDropController] = 0;
  *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController] = 0;
  v17 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___actionMetricsReportingContext;
  v18 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v18 - 8) + 56))(&v2[v17], 1, 1, v18);
  *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___sortMoviesBarButton] = 0;
  v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context] = 0;
  type metadata accessor for MusicLibrary();
  LOBYTE(v33) = 13;
  *(&v33 + 1) = static MusicLibrary.shared.getter();
  v34 = a1;
  v35 = 0;
  v36 = 0xE000000000000000;
  v37 = 260;
  v38 = 0;
  v39 = 0xE000000000000000;
  v40 = _swiftEmptyArrayStorage;
  v41 = &_swiftEmptySetSingleton;
  v42 = 0;
  v43 = 0xE000000000000000;
  v44 = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011A3850);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_tvShowsResponseController] = sub_1003A3164(&v33);
  sub_10010B6F0(a1, v32);
  sub_10010FC20(&qword_1011A3858);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController] = sub_1003A2DD8(v32);
  v31.receiver = v2;
  v31.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v31, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v20 = String._bridgeToObjectiveC()();

  [v19 setTitle:v20];

  v21 = [v19 traitCollection];
  v22 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    v25 = [v19 navigationItem];
    [v25 setLargeTitleDisplayMode:v22];
  }

  sub_10010FC20(&unk_101182D80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100EBC6B0;
  v27 = sub_100217F14();
  *(v26 + 32) = &type metadata for LibraryFilterTrait;
  *(v26 + 40) = v27;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100EBC6B0;
  v29 = sub_100137E8C();
  *(v28 + 32) = &type metadata for MusicLibraryTrait;
  *(v28 + 40) = v29;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v19;
}

uint64_t sub_1007BB830()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v40.receiver = v0;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, "viewDidLoad");
  v3 = sub_1007BBCF0();
  v4 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView;
  v5 = *&v1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView];
  v6 = sub_10059B450(v5, 1, static MPCPlayerCommandRequest.isAvailable(in:), 0);

  [v3 setCollectionViewLayout:v6];
  v7 = *&v1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_prefetchingController];
  [*&v1[v4] setPrefetchDataSource:v7];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = ObjectType;
  v10 = (v7 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v11 = *(v7 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  *v10 = sub_1007CDB00;
  v10[1] = v9;

  sub_100020438(v11);

  v12 = (v7 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v13 = *(v7 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  *v12 = sub_1007BC4DC;
  v12[1] = 0;
  sub_100020438(v13);
  v14 = *&v1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_tvShowsResponseController];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = *(v14 + 32);
  *(v14 + 32) = sub_1007CDB08;
  *(v14 + 40) = v15;

  sub_100020438(v16);

  v17 = *&v1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = *(v17 + 32);
  *(v17 + 32) = sub_1007CDB10;
  *(v17 + 40) = v18;

  sub_100020438(v19);

  v20 = sub_1007BD9B0();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = *(v20 + 88);
  *(v20 + 88) = sub_1007CDB18;
  *(v20 + 96) = v21;

  sub_100020438(v22);

  v36[3] = sub_10010FC20(&qword_1011A37C8);
  v23 = sub_10001C8B8(v36);
  sub_1007BE3D0(v23);
  v37[3] = sub_10010FC20(&unk_10118A650);
  v24 = sub_10001C8B8(v37);
  sub_1007BE644(v24);
  v38[3] = sub_10010FC20(&unk_1011A37E8);
  v25 = sub_10001C8B8(v38);
  sub_1007BE8CC(v25);
  v39[3] = sub_10010FC20(&qword_1011A37D8);
  v26 = sub_10001C8B8(v39);
  sub_1007BEB6C(v26);
  swift_arrayDestroy();
  v27 = *&v1[v4];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v29 = swift_allocObject();
  *(v29 + 24) = 0u;
  *(v29 + 40) = 0u;
  *(v29 + 56) = 0u;
  *(v29 + 72) = 0u;
  *(v29 + 88) = 1;
  *(v29 + 96) = 0;
  v30 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v31 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
  *(v29 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v29 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v29 + 16) = v27;
  *(v29 + 24) = sub_1007CDB20;
  *(v29 + 32) = v28;
  *(v29 + 40) = 0;
  v32 = *(v29 + 56);
  *(v29 + 64) = 0;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  v33 = v27;
  swift_retain_n();
  sub_100020438(v32);
  v34 = *(v29 + 72);
  *(v29 + 72) = 0;
  *(v29 + 80) = 0;
  sub_100020438(v34);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_dragDropController] = v29;
}

id sub_1007BBCF0()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView];
LABEL_6:
    v43 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1u, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v45.receiver = v16;
    v45.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v45, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v44.receiver = v27;
    v44.super_class = v14;
    objc_msgSendSuper2(&v44, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryTVAndMoviesView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];

      v41 = UIView.withAccessibilityIdentifier(_:)(v39, v40);

      v42 = *&v1[v10];
      *&v1[v10] = v41;
      v12 = v41;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1007BC0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011A3940);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-1] - v5;
  v7 = type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24[-1] - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = 0.0;
  if (Strong)
  {
    v16 = Strong;
    sub_1000089F8(a1, v24, &unk_101183F30);
    if (!v25)
    {

      sub_1000095E8(v24, &unk_101183F30);
      (*(v8 + 56))(v6, 1, 1, v7);
      goto LABEL_6;
    }

    v17 = swift_dynamicCast();
    (*(v8 + 56))(v6, v17 ^ 1u, 1, v7);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

LABEL_6:
      sub_1000095E8(v6, &unk_1011A3940);
      return v15;
    }

    sub_1007CD8EC(v6, v13, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
    sub_1007CD954(v13, v10, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = sub_1007BBCF0();
      v20 = sub_100189858();

      v25 = v7;
      v21 = sub_10001C8B8(v24);
      sub_1007CD954(v13, v21, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
      v15 = (v20)(v24, a2);

      sub_1007CD9CC(v13, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
      sub_1000095E8(v24, &unk_101183F30);
      sub_1007CD9CC(v10, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
    }

    else
    {
      v22 = [objc_opt_self() currentTraitCollection];
      [v22 displayScale];

      sub_1007CD9CC(v13, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
      sub_1007CD9CC(v10, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
      return 102.0;
    }
  }

  return v15;
}

unint64_t sub_1007BC4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v96 = a3;
  v4 = sub_10010FC20(&qword_10118D0B0);
  v88 = *(v4 - 8);
  v89 = v4;
  __chkstk_darwin(v4);
  v87 = &v78 - v5;
  v6 = sub_10010FC20(&unk_10118D0C0);
  v85 = *(v6 - 8);
  v86 = v6;
  __chkstk_darwin(v6);
  v84 = &v78 - v7;
  v8 = sub_10010FC20(&unk_1011803F0);
  __chkstk_darwin(v8 - 8);
  v93 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v94 = &v78 - v11;
  v12 = sub_10010FC20(&qword_1011A3930);
  __chkstk_darwin(v12 - 8);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v95 = &v78 - v16;
  v17 = sub_10010FC20(&qword_1011A3890);
  v82 = *(v17 - 8);
  v83 = v17;
  __chkstk_darwin(v17);
  v81 = &v78 - v18;
  v80 = sub_10010FC20(&qword_1011A3898);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v20 = &v78 - v19;
  v21 = sub_10010FC20(&unk_1011A38A0);
  __chkstk_darwin(v21 - 8);
  v92 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v91 = &v78 - v24;
  v25 = sub_10010FC20(&qword_1011A3938);
  __chkstk_darwin(v25 - 8);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v78 - v29;
  v31 = sub_10010FC20(&unk_1011A3940);
  __chkstk_darwin(v31 - 8);
  v33 = &v78 - v32;
  v34 = type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext(0);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v78 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v78 - v39;
  sub_1000089F8(a1, v97, &unk_101183F30);
  if (v98)
  {
    v41 = swift_dynamicCast();
    (*(v35 + 56))(v33, v41 ^ 1u, 1, v34);
    if ((*(v35 + 48))(v33, 1, v34) != 1)
    {
      v42 = v40;
      sub_1007CD8EC(v33, v40, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
      sub_1007CD954(v40, v37, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v43 = v30;
        sub_10003D17C(v37, v30, &qword_1011A3938);
        sub_1000089F8(v30, v27, &qword_1011A3938);
        v44 = sub_10010FC20(&qword_1011A3878);
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(v27, 1, v44) == 1)
        {
          sub_1000095E8(v27, &qword_1011A3938);
LABEL_21:
          v60 = 1;
          v58 = v91;
          goto LABEL_22;
        }

        v53 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

        if (!v53)
        {
          (*(v45 + 8))(v27, v44);
          goto LABEL_21;
        }

        v54 = MusicLibrarySectionedResponse.sections.getter();
        (*(v45 + 8))(v27, v44);
        result = IndexPath.section.getter();
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *(v54 + 16))
          {
            v55 = v79;
            v56 = v80;
            (*(v79 + 16))(v20, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * result, v80);

            v57 = v81;
            MusicLibrarySection.items.getter();
            (*(v55 + 8))(v20, v56);
            IndexPath.item.getter();
            v58 = v91;
            v59 = v83;
            MusicItemCollection.subscript.getter();
            (*(v82 + 8))(v57, v59);
            v60 = 0;
LABEL_22:
            v70 = type metadata accessor for TVShow();
            v71 = *(v70 - 8);
            (*(v71 + 56))(v58, v60, 1, v70);
            v72 = v92;
            sub_1000089F8(v58, v92, &unk_1011A38A0);
            if ((*(v71 + 48))(v72, 1, v70) == 1)
            {
              v73 = &unk_1011A38A0;
              sub_1000095E8(v58, &unk_1011A38A0);
              v74 = &qword_1011A3938;
              v75 = v43;
LABEL_29:
              sub_1000095E8(v75, v74);
              sub_1007CD9CC(v42, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
              v47 = v72;
              v46 = v73;
              goto LABEL_8;
            }

            TVShow.artwork.getter();
            sub_1000095E8(v58, &unk_1011A38A0);
            v76 = &qword_1011A3938;
            v77 = v43;
            goto LABEL_31;
          }

          goto LABEL_34;
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v50 = v95;
      sub_10003D17C(v37, v95, &qword_1011A3930);
      sub_1000089F8(v50, v14, &qword_1011A3930);
      v51 = sub_10010FC20(&unk_10118D0D0);
      v52 = *(v51 - 8);
      if ((*(v52 + 48))(v14, 1, v51) == 1)
      {
        sub_1000095E8(v14, &qword_1011A3930);
      }

      else
      {
        v61 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

        if (v61)
        {
          v62 = MusicLibrarySectionedResponse.sections.getter();
          (*(v52 + 8))(v14, v51);
          result = IndexPath.section.getter();
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          v63 = v94;
          if (result >= *(v62 + 16))
          {
LABEL_35:
            __break(1u);
            return result;
          }

          v64 = v84;
          v65 = v85;
          v66 = v86;
          (*(v85 + 16))(v84, v62 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * result, v86);

          v67 = v87;
          MusicLibrarySection.items.getter();
          (*(v65 + 8))(v64, v66);
          IndexPath.item.getter();
          v68 = v89;
          MusicItemCollection.subscript.getter();
          (*(v88 + 8))(v67, v68);
          v69 = 0;
LABEL_27:
          v70 = type metadata accessor for MusicMovie();
          v71 = *(v70 - 8);
          (*(v71 + 56))(v63, v69, 1, v70);
          v72 = v93;
          sub_1000089F8(v63, v93, &unk_1011803F0);
          if ((*(v71 + 48))(v72, 1, v70) == 1)
          {
            v73 = &unk_1011803F0;
            sub_1000095E8(v63, &unk_1011803F0);
            v74 = &qword_1011A3930;
            v75 = v50;
            goto LABEL_29;
          }

          MusicMovie.artwork.getter();
          sub_1000095E8(v63, &unk_1011803F0);
          v76 = &qword_1011A3930;
          v77 = v50;
LABEL_31:
          sub_1000095E8(v77, v76);
          sub_1007CD9CC(v42, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
          return (*(v71 + 8))(v72, v70);
        }

        (*(v52 + 8))(v14, v51);
      }

      v69 = 1;
      v63 = v94;
      goto LABEL_27;
    }
  }

  else
  {
    sub_1000095E8(v97, &unk_101183F30);
    (*(v35 + 56))(v33, 1, 1, v34);
  }

  v46 = &unk_1011A3940;
  v47 = v33;
LABEL_8:
  sub_1000095E8(v47, v46);
  v48 = type metadata accessor for Artwork();
  return (*(*(v48 - 8) + 56))(v96, 1, 1, v48);
}

uint64_t sub_1007BD208()
{
  v0 = sub_10010FC20(&unk_1011A3860);
  __chkstk_darwin(v0 - 8);
  v2 = &v53 - v1;
  v57 = sub_10010FC20(&unk_10118D0D0);
  v3 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v53 - v4;
  v5 = sub_10010FC20(&qword_1011A3878);
  v59 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  v8 = sub_10010FC20(&qword_1011A3870);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = sub_10010FC20(&qword_1011A3938);
  __chkstk_darwin(v14 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v60 = &v53 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v54 = v3;
    v55 = v7;
    v58 = v2;
    RequestResponse.Revision.content.getter(v13);
    v21 = sub_10010FC20(&qword_1011A3888);
    v22 = *(*(v21 - 8) + 48);
    if (v22(v13, 1, v21) == 1)
    {
      sub_1000095E8(v13, &qword_1011A3870);
      v23 = 1;
      v25 = v59;
      v24 = v60;
    }

    else
    {
      v25 = v59;
      v24 = v60;
      (*(v59 + 16))(v60, v13, v5);
      sub_1000095E8(v13, &qword_1011A3888);
      v23 = 0;
    }

    (*(v25 + 56))(v24, v23, 1, v5);
    v26 = v25;
    if ((v20[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context] & 1) == 0)
    {
      v27 = *&v20[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_prefetchingController];
      v61[3] = type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext(0);
      v28 = sub_10001C8B8(v61);
      sub_1000089F8(v60, v28, &qword_1011A3938);
      v26 = v59;
      swift_storeEnumTagMultiPayload();
      v29 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
      swift_beginAccess();
      sub_10006B010(v61, v27 + v29, &unk_101183F30);
      swift_endAccess();
    }

    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v10);

    if (v22(v10, 1, v21) == 1)
    {
      sub_1000095E8(v10, &qword_1011A3870);
      v30 = v26;
      v31 = 1;
    }

    else
    {
      v32 = v55;
      (*(v26 + 16))(v55, v10, v5);
      sub_1000095E8(v10, &qword_1011A3888);
      v33 = MusicLibrarySectionedResponse.isEmpty.getter();
      (*(v26 + 8))(v32, v5);
      v30 = v26;
      v31 = !v33;
    }

    v34 = v58;
    [v20 setNeedsUpdateContentUnavailableConfiguration];
    v35 = sub_1007BBCF0();
    [v35 setBouncesVertically:v31 & 1];

    v36 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView;
    [*&v20[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v31 & 1];
    [*&v20[v36] reloadData];
    v37 = sub_1007BD9B0();
    v38 = v60;
    sub_1000089F8(v60, v16, &qword_1011A3938);
    if ((*(v30 + 48))(v16, 1, v5) == 1)
    {
      sub_1000095E8(v16, &qword_1011A3938);
    }

    else
    {
      v39 = MusicLibrarySectionedResponse.isEmpty.getter();
      (*(v30 + 8))(v16, v5);
      if (!v39)
      {
        goto LABEL_22;
      }
    }

    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v34);

    v40 = sub_10010FC20(&qword_1011A3880);
    if ((*(*(v40 - 8) + 48))(v34, 1, v40) == 1)
    {
      sub_1000095E8(v34, &unk_1011A3860);
      goto LABEL_16;
    }

    v41 = v54;
    v42 = v56;
    v43 = v57;
    (*(v54 + 16))(v56, v34, v57);
    sub_1000095E8(v34, &qword_1011A3880);
    v44 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v41 + 8))(v42, v43);
    if (v44)
    {
LABEL_16:
      v45 = (*(*&v20[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
      v46 = v45[1];
      if (v46)
      {
        v47 = *v45 & 0xFFFFFFFFFFFFLL;
        if ((v46 & 0x2000000000000000) != 0)
        {
          v48 = HIBYTE(v46) & 0xF;
        }

        else
        {
          v48 = v47;
        }

        v49 = v48 != 0;
        v50 = *(v37 + 64);
        *(v37 + 64) = v49;
        if (v50 == v49)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v52 = *(v37 + 64);
        *(v37 + 64) = 0;
        if ((v52 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_23;
    }

LABEL_22:
    v51 = *(v37 + 64);
    *(v37 + 64) = 1;
    if (v51)
    {
LABEL_24:

      return sub_1000095E8(v38, &qword_1011A3938);
    }

LABEL_23:
    sub_10043EAB8();
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_1007BD9B0()
{
  v1 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1007BDA54()
{
  v0 = sub_10010FC20(&qword_1011A3870);
  __chkstk_darwin(v0 - 8);
  v2 = &v53 - v1;
  v57 = sub_10010FC20(&qword_1011A3878);
  v3 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v53 - v4;
  v5 = sub_10010FC20(&unk_10118D0D0);
  v59 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  v8 = sub_10010FC20(&unk_1011A3860);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = sub_10010FC20(&qword_1011A3930);
  __chkstk_darwin(v14 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v60 = &v53 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v54 = v3;
    v55 = v7;
    v58 = v2;
    RequestResponse.Revision.content.getter(v13);
    v21 = sub_10010FC20(&qword_1011A3880);
    v22 = *(*(v21 - 8) + 48);
    if (v22(v13, 1, v21) == 1)
    {
      sub_1000095E8(v13, &unk_1011A3860);
      v23 = 1;
      v25 = v59;
      v24 = v60;
    }

    else
    {
      v25 = v59;
      v24 = v60;
      (*(v59 + 16))(v60, v13, v5);
      sub_1000095E8(v13, &qword_1011A3880);
      v23 = 0;
    }

    (*(v25 + 56))(v24, v23, 1, v5);
    v26 = v25;
    if (v20[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context] == 1)
    {
      v27 = *&v20[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_prefetchingController];
      v61[3] = type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext(0);
      v28 = sub_10001C8B8(v61);
      sub_1000089F8(v60, v28, &qword_1011A3930);
      v26 = v59;
      swift_storeEnumTagMultiPayload();
      v29 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
      swift_beginAccess();
      sub_10006B010(v61, v27 + v29, &unk_101183F30);
      swift_endAccess();
    }

    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v10);

    if (v22(v10, 1, v21) == 1)
    {
      sub_1000095E8(v10, &unk_1011A3860);
      v30 = v26;
      v31 = 1;
    }

    else
    {
      v32 = v55;
      (*(v26 + 16))(v55, v10, v5);
      sub_1000095E8(v10, &qword_1011A3880);
      v33 = MusicLibrarySectionedResponse.isEmpty.getter();
      (*(v26 + 8))(v32, v5);
      v30 = v26;
      v31 = !v33;
    }

    v34 = v58;
    [v20 setNeedsUpdateContentUnavailableConfiguration];
    v35 = sub_1007BBCF0();
    [v35 setBouncesVertically:v31 & 1];

    v36 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView;
    [*&v20[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v31 & 1];
    [*&v20[v36] reloadData];
    v37 = sub_1007BD9B0();
    v38 = v60;
    sub_1000089F8(v60, v16, &qword_1011A3930);
    if ((*(v30 + 48))(v16, 1, v5) == 1)
    {
      sub_1000095E8(v16, &qword_1011A3930);
    }

    else
    {
      v39 = MusicLibrarySectionedResponse.isEmpty.getter();
      (*(v30 + 8))(v16, v5);
      if (!v39)
      {
        goto LABEL_22;
      }
    }

    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v34);

    v40 = sub_10010FC20(&qword_1011A3888);
    if ((*(*(v40 - 8) + 48))(v34, 1, v40) == 1)
    {
      sub_1000095E8(v34, &qword_1011A3870);
      goto LABEL_16;
    }

    v41 = v54;
    v42 = v56;
    v43 = v57;
    (*(v54 + 16))(v56, v34, v57);
    sub_1000095E8(v34, &qword_1011A3888);
    v44 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v41 + 8))(v42, v43);
    if (v44)
    {
LABEL_16:
      v45 = (*(*&v20[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
      v46 = v45[1];
      if (v46)
      {
        v47 = *v45 & 0xFFFFFFFFFFFFLL;
        if ((v46 & 0x2000000000000000) != 0)
        {
          v48 = HIBYTE(v46) & 0xF;
        }

        else
        {
          v48 = v47;
        }

        v49 = v48 != 0;
        v50 = *(v37 + 64);
        *(v37 + 64) = v49;
        if (v50 == v49)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v52 = *(v37 + 64);
        *(v37 + 64) = 0;
        if ((v52 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_23;
    }

LABEL_22:
    v51 = *(v37 + 64);
    *(v37 + 64) = 1;
    if (v51)
    {
LABEL_24:

      return sub_1000095E8(v38, &qword_1011A3930);
    }

LABEL_23:
    sub_10043EAB8();
    goto LABEL_24;
  }

  return result;
}

void sub_1007BE200(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v5 = a1;
    }

    else
    {
      v5 = 0;
    }

    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0xE000000000000000;
    }

    v7 = *(*(Strong + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_tvShowsResponseController) + 48);
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v7 + 16);
    v10 = *(v7 + 32);
    v11 = *(v7 + 48);
    v12 = *(v7 + 64);
    v13 = *(v7 + 96);
    v36[4] = *(v7 + 80);
    v36[5] = v13;
    v37 = *(v7 + 112);
    v36[2] = v11;
    v36[3] = v12;
    v36[0] = v9;
    v36[1] = v10;
    v14 = *(v7 + 16);
    v39 = *(v7 + 32);
    v38 = v14;
    v15 = *(v7 + 56);
    v16 = *(v7 + 72);
    v17 = *(v7 + 88);
    v45 = *(v7 + 104);
    v44 = v17;
    v43 = v16;
    v42 = v15;
    sub_1003BF8F0(v36, &v28);

    v40 = v5;
    v41 = v6;
    sub_10037993C(&v38);
    v18 = *(*&v8[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController] + 48);
    swift_beginAccess();
    v19 = *(v18 + 64);
    v27[2] = *(v18 + 48);
    v20 = *(v18 + 16);
    v27[1] = *(v18 + 32);
    v21 = *(v18 + 96);
    v27[4] = *(v18 + 80);
    v27[5] = v21;
    v27[3] = v19;
    v27[0] = v20;
    v28 = *(v18 + 16);
    v22 = *(v18 + 56);
    v23 = *(v18 + 72);
    v24 = *(v18 + 88);
    v25 = *(v18 + 104);
    v29 = *(v18 + 32);
    v35 = v25;
    v34 = v24;
    v33 = v23;
    v32 = v22;

    sub_1001103E0(v27, v26);

    v30 = v5;
    v31 = v6;
    sub_100379614(&v28);
  }
}

uint64_t sub_1007BE3D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011A3920);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___globalHeaderRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_1011A3920);
  v10 = sub_10010FC20(&qword_1011A37C8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_1011A3920);
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for LibraryTVShowsMoviesViewController.SegmentedControlCell();

  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_1011A3920);
  return swift_endAccess();
}

uint64_t sub_1007BE644@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_1007BE8CC@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10010FC20(&unk_1011A38D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___movieCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v9, &unk_1011A38D0);
  v11 = sub_10010FC20(&unk_1011A37E8);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000095E8(v9, &unk_1011A38D0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for MusicMovie();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v10, &unk_1011A38D0);
  return swift_endAccess();
}

uint64_t sub_1007BEB6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011A38C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___tvShowCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_1011A38C0);
  v10 = sub_10010FC20(&qword_1011A37D8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_1011A38C0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for TVShow();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_1011A38C0);
  return swift_endAccess();
}

unint64_t sub_1007BEDE4(uint64_t a1)
{
  v53 = a1;
  v1 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v1 - 8);
  v52 = &v44 - v2;
  v47 = sub_10010FC20(&qword_10118D0B0);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v4 = &v44 - v3;
  v5 = sub_10010FC20(&unk_10118D0C0);
  v45 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_10010FC20(&unk_1011A3860);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v11 = sub_10010FC20(&unk_10118D0D0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v51 = type metadata accessor for MusicMovie();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  __chkstk_darwin(v19);
  v49 = &v44 - v20;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v22 = result;
  if (*(result + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context) != 1)
  {
LABEL_5:

    return 0;
  }

  v44 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v23 = sub_10010FC20(&qword_1011A3880);
  if ((*(*(v23 - 8) + 48))(v10, 1, v23) == 1)
  {
    sub_1000095E8(v10, &unk_1011A3860);
    goto LABEL_5;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &qword_1011A3880);
  v24 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

  v25 = (v12 + 8);
  if (!v24)
  {

    (*v25)(v14, v11);
    return 0;
  }

  v26 = MusicLibrarySectionedResponse.sections.getter();
  (*v25)(v14, v11);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result >= *(v26 + 16))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v27 = v45;
  (*(v45 + 16))(v7, v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * result, v5);

  MusicLibrarySection.items.getter();
  (*(v27 + 8))(v7, v5);
  IndexPath.item.getter();
  v28 = v47;
  MusicItemCollection.subscript.getter();
  (*(v46 + 8))(v4, v28);
  v29 = v50;
  v30 = v49;
  v31 = v51;
  (*(v50 + 32))(v49, v18, v51);
  v32 = *(*&v22[v44] + 48);
  swift_beginAccess();
  v33 = v32[4];
  v55[2] = v32[3];
  v55[3] = v33;
  v34 = v32[6];
  v55[4] = v32[5];
  v55[5] = v34;
  v35 = v32[2];
  v55[0] = v32[1];
  v55[1] = v35;
  sub_1001103E0(v55, v54);
  v36 = v52;
  sub_100108ED8(v52);
  sub_100110418(v55);
  v37 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    sub_1000095E8(v36, &unk_10118CDB0);
    v39 = 0;
  }

  else
  {
    v39 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v38 + 8))(v36, v37);
  }

  v40 = sub_10079A22C(v39);
  v41 = sub_100797240(&off_10109C410, v40);

  v42 = v48;
  (*(v29 + 16))(v48, v30, v31);
  v43 = sub_10079E8E4(v41, v42);

  (*(v29 + 8))(v30, v31);
  return v43;
}

void sub_1007BF588(char a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  v4 = sub_1007BBCF0();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  type metadata accessor for ApplicationMainMenu();
  v5 = sub_100314AEC();
  if (v5)
  {
    v6 = v5;
    sub_1007CA720(v2, v5, &off_1010BFF30);
  }
}

uint64_t sub_1007BF6D0(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidDisappear:", a1 & 1);
  return RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
}

uint64_t sub_1007BF7A4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context);
    v5 = OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection;
    v6 = *(a1 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection);
    *(a1 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection) = v4;
    if (v4 != v6)
    {
      sub_1007C9818();
      v7 = *(a1 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_selectionDidChange);
      if (v7)
      {
        v8 = *(a1 + v5);

        v7(v8);
        sub_100020438(v7);
      }
    }

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v10 = (a1 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_selectionDidChange);
    v11 = *(a1 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_selectionDidChange);
    *v10 = sub_1007CDABC;
    v10[1] = v9;

    sub_100020438(v11);
  }

  return result;
}

void sub_1007BF8D0(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context);
    v3[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context] = a1 & 1;
    sub_1007C3808(v4);
  }
}

void sub_1007BF93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v49 = a1;
  v4 = sub_10010FC20(&unk_10118D0C0);
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v42 - v5;
  v6 = sub_10010FC20(&unk_1011A3860);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_10010FC20(&unk_10118D0D0);
  v47 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  v12 = sub_10010FC20(&qword_1011A3898);
  v42 = *(v12 - 8);
  v43 = v12;
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v15 = sub_10010FC20(&qword_1011A3870);
  __chkstk_darwin(v15 - 8);
  v17 = &v42 - v16;
  v18 = sub_10010FC20(&qword_1011A3878);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v42 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context))
    {
      RequestResponse.Controller.revision.getter();
      RequestResponse.Revision.content.getter(v8);

      v24 = sub_10010FC20(&qword_1011A3880);
      if ((*(*(v24 - 8) + 48))(v8, 1, v24) == 1)
      {
        v25 = &unk_1011A3860;
        v26 = v8;
LABEL_7:
        sub_1000095E8(v26, v25);
LABEL_8:
        v28 = 0;
        v29 = 0xE000000000000000;
LABEL_18:
        sub_1005FF7FC(v28, v29, v50);

        UICollectionViewCell.contentConfiguration.setter();

        return;
      }

      v30 = v47;
      (*(v47 + 16))(v11, v8, v9);
      sub_1000095E8(v8, &qword_1011A3880);
      v31 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

      if (!v31)
      {
        (*(v30 + 8))(v11, v9);
        goto LABEL_8;
      }

      v32 = MusicLibrarySectionedResponse.sections.getter();
      (*(v30 + 8))(v11, v9);
      v33 = IndexPath.section.getter();
      if ((v33 & 0x8000000000000000) == 0)
      {
        if (v33 < *(v32 + 16))
        {
          v34 = v44;
          v35 = v45;
          v36 = v46;
          (*(v45 + 16))(v44, v32 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33, v46);

          swift_getKeyPath();
          MusicLibrarySection.subscript.getter();

          (*(v35 + 8))(v34, v36);
LABEL_17:
          v28 = v50[0];
          v29 = v50[1];
          goto LABEL_18;
        }

        goto LABEL_24;
      }

      __break(1u);
    }

    else
    {
      RequestResponse.Controller.revision.getter();
      RequestResponse.Revision.content.getter(v17);

      v27 = sub_10010FC20(&qword_1011A3888);
      if ((*(*(v27 - 8) + 48))(v17, 1, v27) == 1)
      {
        v25 = &qword_1011A3870;
        v26 = v17;
        goto LABEL_7;
      }

      (*(v19 + 16))(v21, v17, v18);
      sub_1000095E8(v17, &qword_1011A3888);
      v37 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

      if (!v37)
      {
        (*(v19 + 8))(v21, v18);
        goto LABEL_8;
      }

      v38 = MusicLibrarySectionedResponse.sections.getter();
      (*(v19 + 8))(v21, v18);
      v39 = IndexPath.section.getter();
      if ((v39 & 0x8000000000000000) == 0)
      {
        if (v39 < *(v38 + 16))
        {
          v41 = v42;
          v40 = v43;
          (*(v42 + 16))(v14, v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v39, v43);

          swift_getKeyPath();
          MusicLibrarySection.subscript.getter();

          (*(v41 + 8))(v14, v40);
          goto LABEL_17;
        }

LABEL_25:
        __break(1u);
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }
}

void sub_1007C0004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_10118D2C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    v13[-2] = a3;
    v13[-1] = v9;
    v10 = v9;
    sub_10010FC20(&unk_101184760);
    v11 = _s8GridCellVMa(255);
    v12 = sub_1007CDB28(&qword_10118D290, _s8GridCellVMa);
    v13[0] = v11;
    v13[1] = v12;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v4;
    v13[4] = sub_100020674(&unk_101184770, &qword_10118D2C0);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v5 + 8))(v7, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1007C0250@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v4 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v7 - 8);
  v9 = v33 - v8;
  v10 = _s8GridCellVMa(0);
  __chkstk_darwin(v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TVShow();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v13, &protocol witness table for TVShow, v9);
  v14 = sub_10010FC20(&unk_101182950);
  (*(*(v14 - 8) + 56))(v6, 6, 11, v14);
  v15 = sub_1007BBCF0();
  v16 = *&v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v16, 0, 0, 1, 0x3FF0000000000000, 0, 2, v34);
  v17 = Corner.medium.unsafeMutableAddressor();
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v9, v6, 0x3FF0000000000000, 0, v34, *v17, v17[1], *(v17 + 16), v12);
  v18 = TVShow.name.getter();
  v20 = v19;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  v33[3] = TVShow.episodeCount.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v22._countAndFlagsBits = 0x65646F7369704520;
  v22._object = 0xEB00000000297328;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  v25 = v24;
  v26 = v10[10];
  v27 = type metadata accessor for ContentRating();
  (*(*(v27 - 8) + 56))(&v12[v26], 1, 1, v27);
  v28 = &v12[v10[5]];
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  *&v12[v10[6]] = 0x3FF0000000000000;
  v29 = &v12[v10[7]];
  *v29 = v18;
  v29[1] = v20;
  v30 = &v12[v10[8]];
  *v30 = v23;
  v30[1] = v25;
  v12[v10[9]] = 0;
  v12[v10[11]] = 0;
  v31 = v10[12];
  *&v12[v31] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  sub_1007CDB28(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_1007CDB28(&qword_10118D290, _s8GridCellVMa);

  View.artworkCaching(owner:)();

  return sub_1007CD9CC(v12, _s8GridCellVMa);
}

void sub_1007C0770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&unk_10118D320);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v21 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    v21[-4] = a3;
    v21[-3] = v16;
    v21[-2] = a1;
    v21[-1] = a5;
    v17 = v16;
    sub_10010FC20(&unk_1011847A0);
    v18 = _s8ListCellVMa(255);
    v19 = sub_1007CDB28(&qword_10118D2E0, _s8ListCellVMa);
    v21[0] = v18;
    v21[1] = v19;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v20 = *(v9 + 8);
    v20(v11, v8);
    static Edge.Set.vertical.getter();
    v21[3] = v8;
    v21[4] = sub_100020674(&unk_1011847B0, &unk_10118D320);
    sub_10001C8B8(v21);
    UIHostingConfiguration.margins(_:_:)();
    v20(v14, v8);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1007C0A48@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X2>, uint64_t a4@<X8>)
{
  v128 = a3;
  v130 = a2;
  v129 = a4;
  v5 = type metadata accessor for MusicMovie();
  v126 = *(v5 - 8);
  __chkstk_darwin(v5);
  v124 = v6;
  v125 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v7 - 8);
  v131 = &v104 - v8;
  v119 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v116 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v111 = (&v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v108 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Duration.UnitsFormatStyle();
  v113 = *(v114 - 1);
  __chkstk_darwin(v114);
  v109 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Date.FormatStyle();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v104 - v18;
  v20 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v20 - 8);
  v22 = &v104 - v21;
  v23 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v23 - 8);
  v25 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v26 - 8);
  v28 = &v104 - v27;
  v29 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v29 - 8);
  v31 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = _s8ListCellVMa(0);
  __chkstk_darwin(v123);
  v33 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v5;
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v5, &protocol witness table for MusicMovie, v28);
  v34 = sub_10010FC20(&unk_101182950);
  (*(*(v34 - 8) + 56))(v25, 6, 11, v34);
  ArtworkImage.Size.init(cgSize:)(0x4059800000000000, 0x4063800000000000, 0, v138);
  v35 = Corner.medium.unsafeMutableAddressor();
  v36 = *v35;
  v37 = v35[1];
  v38 = *(v35 + 16);
  v122 = v31;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v28, v25, 0, 1, v138, v36, v37, v38, v31);
  v121 = MusicMovie.title.getter();
  v120 = v39;
  v40 = a1;
  MusicMovie.releaseDate.getter();
  v41 = type metadata accessor for Date();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v22, 1, v41) == 1)
  {
    sub_1000095E8(v22, &qword_101188C20);
    v43 = 0;
    v44 = 0;
  }

  else
  {
    static FormatStyle<>.dateTime.getter();
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    Date.FormatStyle.year(_:)();
    (*(v104 + 8))(v14, v105);
    v45 = *(v106 + 8);
    v46 = v16;
    v47 = v107;
    v45(v46, v107);
    sub_1007CDB28(&unk_1011A3900, &type metadata accessor for Date.FormatStyle);
    Date.formatted<A>(_:)();
    v45(v19, v47);
    (*(v42 + 8))(v22, v41);
    v43 = v132;
    v44 = v133;
  }

  v136 = v43;
  v137[0] = v44;
  MusicMovie.duration.getter();
  v48 = v131;
  if (v49)
  {
    v50 = 0;
    v51 = 0;
  }

  else
  {
    static Duration.seconds(_:)();
    sub_10010FC20(&unk_1011A38F0);
    type metadata accessor for Duration.UnitsFormatStyle.Unit();
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100EBDC20;
    static Duration.UnitsFormatStyle.Unit.hours.getter();
    static Duration.UnitsFormatStyle.Unit.minutes.getter();
    sub_10011064C(v52);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v53 = v108;
    static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
    v54 = v111;
    static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
    v55 = v116;
    static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
    v56 = v109;
    static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

    (*(v118 + 8))(v55, v119);
    (*(v115 + 8))(v54, v117);
    (*(v110 + 8))(v53, v112);
    sub_1007CDB28(&qword_10119D648, &type metadata accessor for Duration.UnitsFormatStyle);
    v57 = v114;
    Duration.formatted<A>(_:)();
    (*(v113 + 8))(v56, v57);
    v50 = v132;
    v51 = v133;
  }

  v58 = 0;
  v137[1] = v50;
  v137[2] = v51;
  v59 = _swiftEmptyArrayStorage;
LABEL_8:
  v60 = &v137[2 * v58];
  while (++v58 != 3)
  {
    v61 = v60 + 2;
    v62 = *v60;
    v60 += 2;
    if (v62)
    {
      v63 = *(v61 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_100498B7C(0, *(v59 + 2) + 1, 1, v59);
      }

      v65 = *(v59 + 2);
      v64 = *(v59 + 3);
      if (v65 >= v64 >> 1)
      {
        v59 = sub_100498B7C((v64 > 1), v65 + 1, 1, v59);
      }

      *(v59 + 2) = v65 + 1;
      v66 = &v59[16 * v65];
      *(v66 + 4) = v63;
      *(v66 + 5) = v62;
      v48 = v131;
      goto LABEL_8;
    }
  }

  sub_10010FC20(&qword_1011815E0);
  swift_arrayDestroy();
  v132 = v59;
  sub_10010FC20(&qword_101183BC8);
  sub_100020674(&unk_101183BD0, &qword_101183BC8);
  v119 = BidirectionalCollection<>.joined(separator:)();
  v118 = v67;

  v68 = type metadata accessor for ContentRating();
  v69 = *(v68 - 8);
  v70 = *(v69 + 56);
  v115 = v68;
  v114 = v70;
  v113 = v69 + 56;
  (v70)(v48, 1, 1);
  sub_1007BB024();
  v134 = sub_10010FC20(&qword_101199708);
  v135 = sub_100020674(&unk_101199710, &qword_101199708);
  sub_10001C8B8(&v132);
  dispatch thunk of MusicLibrary.ItemState.$downloadStatus.getter();

  v116 = sub_10010FC20(&unk_1011847C0);
  swift_allocObject();
  v117 = OptionalObservableObject.init(publisher:)(&v132);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  sub_1007CDB28(&unk_1011A38E0, &type metadata accessor for MusicMovie);
  v71 = v40;
  v72 = v40;
  v73 = v127;
  v74 = *(*Player.state<A>(for:)(v71) + 280);
  v134 = sub_10010FC20(&qword_101199728);
  v135 = sub_100020674(&qword_101199730, &qword_101199728);
  sub_10001C8B8(&v132);
  v74();

  v112 = sub_10010FC20(&unk_10118D300);
  swift_allocObject();
  v111 = OptionalObservableObject.init(publisher:)(&v132);
  v75 = swift_allocObject();
  v110 = v75;
  swift_unknownObjectWeakInit();
  v76 = v126;
  v77 = v125;
  (*(v126 + 16))(v125, v72, v73);
  v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v79 = swift_allocObject();
  v80 = v128;
  *(v79 + 16) = v75;
  *(v79 + 24) = v80;
  (*(v76 + 32))(v79 + v78, v77, v73);

  v81 = v80;
  v82 = static HierarchicalShapeStyle.primary.getter();
  *(v33 + 3) = &type metadata for HierarchicalShapeStyle;
  *(v33 + 4) = &protocol witness table for HierarchicalShapeStyle;
  *v33 = v82;
  v33[40] = 0;
  v83 = v123;
  v84 = &v33[v123[6]];
  v86 = v123[9];
  v85 = v123[10];
  (v114)(&v33[v85], 1, 1, v115);
  v128 = &v33[v83[11]];
  v87 = v83[14];
  *&v33[v87] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v88 = v122;
  sub_1007CD954(v122, &v33[v83[5]], type metadata accessor for ArtworkImage.Info);
  *(v84 + 1) = 0;
  *(v84 + 2) = 0;
  *v84 = 0;
  v89 = &v33[v83[7]];
  v90 = v120;
  *v89 = v121;
  v89[1] = v90;
  v91 = &v33[v83[8]];
  v92 = v118;
  *v91 = v119;
  v91[1] = v92;
  v33[v86] = 0;
  v93 = &v33[v85];
  v94 = v33;
  v95 = v131;
  sub_100123348(v131, v93);
  v96 = (v94 + v83[12]);
  sub_100020674(&unk_1011847D0, &unk_1011847C0);

  *v96 = ObservedObject.init(wrappedValue:)();
  v96[1] = v97;
  v98 = (v94 + v83[13]);
  sub_100020674(&qword_10118D310, &unk_10118D300);
  v99 = ObservedObject.init(wrappedValue:)();
  v101 = v100;

  sub_1000095E8(v95, &unk_10118D2F0);
  sub_1007CD9CC(v88, type metadata accessor for ArtworkImage.Info);

  *v98 = v99;
  v98[1] = v101;
  v102 = v128;
  *v128 = sub_1007CDA40;
  v102[1] = v79;
  sub_1007CDB28(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_1007CDB28(&qword_10118D2E0, _s8ListCellVMa);

  View.artworkCaching(owner:)();

  return sub_1007CD9CC(v94, _s8ListCellVMa);
}

uint64_t sub_1007C1C70(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v141 = a4;
  v5 = type metadata accessor for UUID();
  v149 = *(v5 - 8);
  __chkstk_darwin(v5);
  v148 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011838D0);
  v145 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v146 = v8;
  v147 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v157 = &v131 - v10;
  v11 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v11 - 8);
  v142 = &v131 - v12;
  v13 = sub_10010FC20(&unk_1011845D0);
  v143 = *(v13 - 8);
  v14 = *(v143 + 64);
  __chkstk_darwin(v13 - 8);
  v144 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v156 = &v131 - v16;
  v17 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v17 - 8);
  v19 = &v131 - v18;
  v20 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v20 - 8);
  v140 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v131 - v23;
  __chkstk_darwin(v25);
  v151 = &v131 - v26;
  __chkstk_darwin(v27);
  v152 = &v131 - v28;
  v29 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v29 - 8);
  v150 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v155 = &v131 - v32;
  v33 = sub_10010FC20(&unk_1011803F0);
  __chkstk_darwin(v33 - 8);
  v35 = &v131 - v34;
  v36 = type metadata accessor for MusicMovie();
  v153 = *(v36 - 8);
  v154 = v36;
  __chkstk_darwin(v36);
  v38 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for IndexPath();
  v159 = *(v39 - 8);
  v160 = v39;
  __chkstk_darwin(v39);
  v41 = &v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v158 = &v131 - v43;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v138 = v5;
    v139 = v24;
    v45 = result;
    v46 = sub_1007BBCF0();
    v47 = [v46 indexPathForCell:a3];

    if (v47)
    {
      v136 = v14;
      v137 = v38;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = v158;
      v48 = v159;
      v50 = v160;
      (*(v159 + 32))(v158, v41, v160);
      v51 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController;

      sub_10037D4E4(v49, v35);

      v53 = v153;
      v52 = v154;
      if ((*(v153 + 48))(v35, 1, v154) == 1)
      {
        (*(v48 + 8))(v49, v50);

        sub_1000095E8(v35, &unk_1011803F0);
        return 0;
      }

      else
      {
        v54 = v137;
        (*(v53 + 32))(v137, v35, v52);
        sub_10010FC20(&unk_101183900);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_100EBC6B0;
        *(v55 + 56) = v52;
        *(v55 + 64) = sub_1007CDB28(&unk_10118AB60, &type metadata accessor for MusicMovie);
        v56 = sub_10001C8B8((v55 + 32));
        (*(v53 + 16))(v56, v54, v52);
        v57 = [v45 traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        v135 = *&v184[0];
        v58 = *(*&v45[v51] + 48);
        swift_beginAccess();
        v59 = v58[4];
        v184[2] = v58[3];
        v184[3] = v59;
        v60 = v58[6];
        v184[4] = v58[5];
        v184[5] = v60;
        v61 = v58[2];
        v184[0] = v58[1];
        v184[1] = v61;
        sub_1001103E0(v184, v175);
        sub_100108ED8(v19);
        sub_100110418(v184);
        v62 = v152;
        PlaybackIntentDescriptor.IntentType.init(_:)(v19, v152);
        v176 = 0;
        memset(v175, 0, sizeof(v175));
        if (qword_10117F608 != -1)
        {
          swift_once();
        }

        v63 = qword_101218AD8;
        sub_1000089F8(v62, v151, &unk_1011838E0);
        v64 = v63;
        v65 = UIViewController.playActivityInformation.getter();
        v67 = v66;
        v69 = v68;
        v134 = v70;
        sub_1000089F8(v175, &v167, &unk_101183910);
        v141 = v45;
        if (*(&v168 + 1))
        {
          sub_100059A8C(&v167, &v171);
          v71 = v139;
          v72 = v152;
          v73 = v64;
        }

        else
        {
          *&v177 = v45;
          sub_100009F78(0, &qword_101183D40);
          v74 = v45;
          sub_10010FC20(&unk_101183920);
          if (swift_dynamicCast())
          {
            sub_100059A8C(&v180, &v171);
            v71 = v139;
            v72 = v152;
            v73 = v64;
          }

          else
          {
            v182 = 0;
            v180 = 0u;
            v181 = 0u;
            *&v171 = v74;
            v75 = v74;
            v76 = String.init<A>(reflecting:)();
            v172 = &type metadata for Player.CommandIssuerIdentity;
            v173 = &protocol witness table for Player.CommandIssuerIdentity;
            *&v171 = v76;
            *(&v171 + 1) = v77;
            v71 = v139;
            v72 = v152;
            v73 = v64;
            if (*(&v181 + 1))
            {
              sub_1000095E8(&v180, &unk_101183910);
            }
          }

          if (*(&v168 + 1))
          {
            sub_1000095E8(&v167, &unk_101183910);
          }
        }

        v78 = v155;
        Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v73, v151, v65, v67, v69, v134, &v171, v155);
        sub_1000095E8(v175, &unk_101183910);
        sub_1000095E8(v72, &unk_1011838E0);
        v79 = type metadata accessor for Actions.PlaybackContext();
        v80 = *(v79 - 8);
        (*(v80 + 56))(v78, 0, 1, v79);
        v81 = type metadata accessor for PlaylistContext();
        (*(*(v81 - 8) + 56))(v156, 1, 1, v81);
        v82 = v159;
        v83 = v142;
        v84 = v160;
        (*(v159 + 16))(v142, v158, v160);
        (*(v82 + 56))(v83, 0, 1, v84);
        v85 = v141;
        sub_100376F7C(v83, v175);
        sub_1000095E8(v83, &unk_10118BCE0);
        v86 = v157;
        sub_1007C2FEC(v157);
        v87 = type metadata accessor for Actions.MetricsReportingContext();
        (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
        sub_100008FE4(v55 + 32, v174);

        sub_1000089F8(v175, &v167, &unk_1011845E0);
        if (v170 == 1)
        {
          v182 = 0;
          v180 = 0u;
          v181 = 0u;
          v183 = xmmword_100EBCEF0;
          PresentationSource.init(viewController:position:)(v85, &v180, &v171);
          v88 = v150;
          if (v170 != 1)
          {
            sub_1000095E8(&v167, &unk_1011845E0);
          }
        }

        else
        {
          sub_10012B828(&v167, &v171);
          v88 = v150;
        }

        swift_getObjectType();
        v89 = swift_conformsToProtocol2();
        if (v89)
        {
          v142 = v89;
          v90 = v85;
          v151 = v85;
        }

        else
        {
          v151 = 0;
          v142 = 0;
        }

        v152 = swift_allocBox();
        v92 = v91;
        sub_1000089F8(v155, v88, &unk_10118AB20);
        v93 = *(v80 + 48);
        if (v93(v88, 1, v79) == 1)
        {
          v94 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
          (*(*(v94 - 8) + 56))(v71, 1, 1, v94);
          v169 = 0;
          v167 = 0u;
          v168 = 0u;
          v95 = v71;
          v96 = v140;
          sub_1000089F8(v95, v140, &unk_1011838E0);
          v134 = v73;
          v97 = UIViewController.playActivityInformation.getter();
          v132 = v99;
          v133 = v98;
          v101 = v100;
          sub_1000089F8(&v167, &v165, &unk_101183910);
          if (v166)
          {
            sub_100059A8C(&v165, &v177);
          }

          else
          {
            v164 = v85;
            sub_100009F78(0, &qword_101183D40);
            v102 = v85;
            sub_10010FC20(&unk_101183920);
            if (swift_dynamicCast())
            {
              sub_100059A8C(&v161, &v177);
              v88 = v150;
            }

            else
            {
              v163 = 0;
              v161 = 0u;
              v162 = 0u;
              *&v177 = v102;
              v103 = v102;
              v104 = String.init<A>(reflecting:)();
              *(&v178 + 1) = &type metadata for Player.CommandIssuerIdentity;
              v179 = &protocol witness table for Player.CommandIssuerIdentity;
              *&v177 = v104;
              *(&v177 + 1) = v105;
              v88 = v150;
              if (*(&v162 + 1))
              {
                sub_1000095E8(&v161, &unk_101183910);
              }
            }

            v96 = v140;
            if (v166)
            {
              sub_1000095E8(&v165, &unk_101183910);
            }
          }

          Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v134, v96, v97, v133, v132, v101, &v177, v92);
          sub_1000095E8(&v167, &unk_101183910);
          sub_1000095E8(v139, &unk_1011838E0);
          if (v93(v88, 1, v79) != 1)
          {
            sub_1000095E8(v88, &unk_10118AB20);
          }
        }

        else
        {
          sub_1007CD8EC(v88, v92, type metadata accessor for Actions.PlaybackContext);
        }

        v106 = &v92[*(v79 + 28)];
        sub_1000089F8(v106, &v177, &unk_101183910);
        if (*(&v178 + 1))
        {
          sub_100059A8C(&v177, &v167);
        }

        else
        {
          *&v167 = v141;
          v107 = v141;
          v108 = String.init<A>(reflecting:)();
          *(&v168 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v169 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v167 = v108;
          *(&v167 + 1) = v109;
          if (*(&v178 + 1))
          {
            sub_1000095E8(&v177, &unk_101183910);
          }
        }

        sub_10010FC20(&unk_101183930);
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_100EBDC20;
        *(v110 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v110 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v110 + 32) = 0x4D747865746E6F43;
        *(v110 + 40) = 0xEB00000000756E65;
        sub_100008FE4(&v167, v110 + 72);
        v111 = static Player.CommandIssuer<>.combining(_:)();
        v113 = v112;

        sub_10000959C(&v167);
        *(&v168 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v169 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v167 = v111;
        *(&v167 + 1) = v113;
        sub_10006B010(&v167, v106, &unk_101183910);
        sub_100008FE4(v174, &v167);
        sub_10010FC20(&unk_10118AB50);
        v150 = String.init<A>(describing:)();
        v140 = v114;
        v139 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100008FE4(v174, &v165);
        sub_10012B7A8(&v171, &v167);
        v115 = v147;
        sub_1000089F8(v157, v147, &unk_1011838D0);
        v116 = v144;
        sub_1000089F8(v156, v144, &unk_1011845D0);
        v117 = (*(v145 + 80) + 160) & ~*(v145 + 80);
        v118 = (v146 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
        v119 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
        v120 = (*(v143 + 80) + v119 + 8) & ~*(v143 + 80);
        v146 = (v120 + v136 + 7) & 0xFFFFFFFFFFFFFFF8;
        v121 = (v120 + v136 + 31) & 0xFFFFFFFFFFFFFFF8;
        v122 = swift_allocObject();
        sub_100059A8C(&v165, v122 + 16);
        *(v122 + 56) = v135;
        sub_10012B828(&v167, v122 + 64);
        sub_10003D17C(v115, v122 + v117, &unk_1011838D0);
        *(v122 + v118) = v139;
        *(v122 + v119) = v152;
        sub_10003D17C(v116, v122 + v120, &unk_1011845D0);
        v123 = v122 + v146;
        v124 = v142;
        *v123 = v151;
        *(v123 + 8) = v124;
        *(v123 + 16) = 2;
        v125 = (v122 + v121);
        *v125 = variable initialization expression of Library.Context.playlistVariants;
        v125[1] = 0;
        swift_unknownObjectRetain();

        v126 = v148;
        UUID.init()();
        v127 = UUID.uuidString.getter();
        v129 = v128;
        (*(v149 + 8))(v126, v138);
        v185._countAndFlagsBits = v150;
        v185._object = v140;
        ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v185, v127, v129, sub_10021953C, v122, &v177);
        swift_unknownObjectRelease();
        sub_10012BA6C(&v171);
        sub_10000959C(v174);

        v130 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
        v171 = v177;
        sub_100015BB0(&v171);
        v167 = v178;
        sub_100015BB0(&v167);

        sub_1000095E8(v157, &unk_1011838D0);
        sub_1000095E8(v175, &unk_1011845E0);
        sub_1000095E8(v156, &unk_1011845D0);
        sub_1000095E8(v155, &unk_10118AB20);
        (*(v153 + 8))(v137, v154);
        (*(v159 + 8))(v158, v160);
        return v130;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1007C2FEC@<X0>(char *a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v14, &unk_1011838D0);
  v16 = type metadata accessor for Actions.MetricsReportingContext();
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return sub_1007CD8EC(v14, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v38 = v1;
  sub_1000095E8(v14, &unk_1011838D0);
  v18 = type metadata accessor for MetricsEvent.Page(0);
  v36 = *(*(v18 - 8) + 56);
  v36(v8, 1, 1, v18);
  v37 = v5;
  sub_1000089F8(v8, v5, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v19 = sub_10053771C();
  v34 = v20;
  v35 = v19;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v21 = qword_101218AD0;
  v33 = GroupActivitiesManager.hasJoined.getter();
  v32 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v8, &unk_1011838F0);
  v22 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v23 = *(v21 + v22);
  v24 = v16[5];
  v36(&a1[v24], 1, 1, v18);
  v25 = v16[7];
  v26 = &a1[v16[6]];
  v27 = v16[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v37, &a1[v24], &unk_1011838F0);
  v28 = v34;
  *v26 = v35;
  v26[1] = v28;
  *&a1[v25] = 0;
  *&a1[v27] = 0;
  v29 = &a1[v16[9]];
  *v29 = v33 & 1;
  *(v29 + 1) = v32;
  *(v29 + 2) = v23;
  sub_1007CD954(a1, v11, type metadata accessor for Actions.MetricsReportingContext);
  (*(v17 + 56))(v11, 0, 1, v16);
  v30 = v38;
  swift_beginAccess();
  sub_10006B010(v11, v30 + v15, &unk_1011838D0);
  return swift_endAccess();
}

objc_class *sub_1007C33E4()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___sortMoviesBarButton;
  v4 = *(v0 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___sortMoviesBarButton);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___sortMoviesBarButton);
  }

  else
  {
    v22 = sub_100009F78(0, &qword_101181580);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v6 = String.init(localized:table:bundle:locale:comment:)();
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() systemImageNamed:{v9, v22}];

    sub_100009F78(0, &unk_1011845F0);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v12.value = 0;
    v13 = v0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v12, 0, sub_1007CDAF0, v11).super.super.isa;

    v15 = AccessibilityIdentifier.librarySortOptionsButton.unsafeMutableAddressor();
    v16 = *v15;
    v17 = v15[1];

    v18 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v6, v8, v10, 0, isa, 1, v16, v17);
    v19 = *(v13 + v3);
    *(v13 + v3) = v18;
    v5 = v18;

    v4 = 0;
  }

  v20 = v4;
  return v5;
}

void *sub_1007C3680()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = *(Strong + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController);
  v2 = Strong;

  v3 = *(v1 + 48);
  swift_beginAccess();
  v4 = v3[4];
  v13[2] = v3[3];
  v13[3] = v4;
  v5 = v3[6];
  v13[4] = v3[5];
  v13[5] = v5;
  v6 = v3[2];
  v13[0] = v3[1];
  v13[1] = v6;
  v7 = swift_allocObject();
  swift_weakInit();

  sub_1001103E0(v13, &v12);
  v8.super.super.isa = sub_100211E88(sub_1007CDC30, v7).super.super.isa;

  sub_100110418(v13);

  if (!v8.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = [(objc_class *)v8.super.super.isa children];

  sub_100009F78(0, &qword_10118CDE0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

void sub_1007C3808(char a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_1011A3860);
  __chkstk_darwin(v4 - 8);
  v132 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v131 = &v124 - v7;
  __chkstk_darwin(v8);
  v130 = &v124 - v9;
  v10 = sub_10010FC20(&unk_10118D0D0);
  v133 = *(v10 - 8);
  v134 = v10;
  __chkstk_darwin(v10);
  v128 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v129 = &v124 - v13;
  __chkstk_darwin(v14);
  v127 = &v124 - v15;
  __chkstk_darwin(v16);
  v126 = &v124 - v17;
  v18 = sub_10010FC20(&qword_1011A3870);
  __chkstk_darwin(v18 - 8);
  v20 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v124 - v22;
  __chkstk_darwin(v24);
  v26 = &v124 - v25;
  v27 = sub_10010FC20(&qword_1011A3878);
  v135 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  __chkstk_darwin(v31);
  v33 = &v124 - v32;
  __chkstk_darwin(v34);
  v37 = &v124 - v36;
  v38 = v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context];
  if (v38 != (a1 & 1))
  {
    v125 = v35;
    v39 = sub_1007BBCF0();
    v40 = v39;
    if (v38)
    {
      v41 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      v43 = objc_opt_self();
      v44 = [v43 fractionalWidthDimension:1.0];
      v45 = [v43 estimatedDimension:65.0];
      v46 = [objc_opt_self() sizeWithWidthDimension:v44 heightDimension:v45];

      UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

      v47 = String._bridgeToObjectiveC()();

      v48 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v46 elementKind:v47 alignment:1];

      sub_10010FC20(&qword_101183990);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_100EBC6C0;
      *(v49 + 32) = v48;
      sub_100009F78(0, &unk_1011913A0);
      v50 = v48;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v41 setBoundarySupplementaryItems:isa];

      v52 = *(v42 + 16);
      *(v42 + 16) = v50;

      v53 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v54 = swift_allocObject();
      *(v54 + 16) = v53;
      *(v54 + 24) = 0u;
      *(v54 + 40) = 0u;
      *(v54 + 56) = 0u;
      *(v54 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
      *(v54 + 80) = 0;
      *(v54 + 88) = v42;
      v55 = objc_allocWithZone(UICollectionViewCompositionalLayout);
      v140 = sub_1002193FC;
      v141 = v54;
      aBlock = _NSConcreteStackBlock;
      v137 = 1107296256;
      v138 = sub_1005A63A8;
      v139 = &unk_1010C0260;
      v56 = _Block_copy(&aBlock);

      v57 = [v55 initWithSectionProvider:v56 configuration:v41];

      _Block_release(v56);

      v58 = v57;
      v59 = [v2 navigationItem];
      v60 = sub_1007C33E4();
      [v59 setRightBarButtonItem:v60];

      RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
      RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
      v61 = sub_1007BD9B0();
      v62 = v61;
      v63 = (*(*&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
      v64 = v63[1];
      if (v64 && ((v65 = *v63 & 0xFFFFFFFFFFFFLL, (v64 & 0x2000000000000000) != 0) ? (v66 = HIBYTE(v64) & 0xF) : (v66 = v65), v66))
      {
        v67 = *(v61 + 64);
        *(v61 + 64) = 1;
        v69 = v133;
        v68 = v134;
        v70 = v131;
        if (v67)
        {
LABEL_10:

          RequestResponse.Controller.revision.getter();
          RequestResponse.Revision.content.getter(v70);

          v71 = sub_10010FC20(&qword_1011A3880);
          v72 = *(*(v71 - 8) + 48);
          if (v72(v70, 1, v71) == 1)
          {
            sub_1000095E8(v70, &unk_1011A3860);
            v73 = 1;
          }

          else
          {
            v92 = v127;
            (*(v69 + 16))(v127, v70, v68);
            sub_1000095E8(v70, &qword_1011A3880);
            v93 = MusicLibrarySectionedResponse.isEmpty.getter();
            (*(v69 + 8))(v92, v68);
            v73 = !v93;
          }

          LODWORD(v134) = v73;
          UIViewController.playActivityFeatureIdentifier.setter(7);
          RequestResponse.Controller.revision.getter();
          v94 = v132;
          RequestResponse.Revision.content.getter(v132);

          if (v72(v94, 1, v71) == 1)
          {
            sub_1000095E8(v94, &unk_1011A3860);
          }

          else
          {
            v97 = *(v69 + 16);
            v98 = v128;
            v97(v128, v94, v68);
            sub_1000095E8(v94, &qword_1011A3880);
            v99 = v129;
            (*(v69 + 32))(v129, v98, v68);
            v100 = *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_prefetchingController];
            v139 = type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext(0);
            v101 = sub_10001C8B8(&aBlock);
            v97(v101, v99, v68);
            (*(v69 + 56))(v101, 0, 1, v68);
            swift_storeEnumTagMultiPayload();
            (*(v69 + 8))(v99, v68);
            v102 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
            swift_beginAccess();
            sub_10006B010(&aBlock, v100 + v102, &unk_101183F30);
            swift_endAccess();
          }

          v103 = &unk_100EBC000;
LABEL_37:
          v110 = objc_opt_self();
          v111 = swift_allocObject();
          *(v111 + 16) = v2;
          *(v111 + 24) = v58;
          v112 = swift_allocObject();
          *(v112 + 16) = sub_1007CDAC8;
          *(v112 + 24) = v111;
          v140 = sub_100029B94;
          v141 = v112;
          aBlock = _NSConcreteStackBlock;
          v137 = v103[220];
          v138 = sub_100029B9C;
          v139 = &unk_1010C02D8;
          v113 = _Block_copy(&aBlock);
          v114 = v2;

          [v110 performWithoutAnimation:v113];
          _Block_release(v113);
          LOBYTE(v110) = swift_isEscapingClosureAtFileLocation();

          if (v110)
          {
            __break(1u);
          }

          else
          {
            [v114 setNeedsUpdateContentUnavailableConfiguration];
            v115 = sub_1007BBCF0();
            v116 = v134;
            [v115 setBouncesVertically:v134 & 1];

            [*&v114[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v116 & 1];
            v117 = [objc_opt_self() mainSystem];
            [v117 setNeedsRebuild];
          }

          return;
        }
      }

      else
      {
        RequestResponse.Controller.revision.getter();
        v86 = v130;
        RequestResponse.Revision.content.getter(v130);

        v87 = sub_10010FC20(&qword_1011A3880);
        v88 = (*(*(v87 - 8) + 48))(v86, 1, v87);
        v69 = v133;
        v68 = v134;
        v70 = v131;
        if (v88 == 1)
        {
          sub_1000095E8(v86, &unk_1011A3860);
          v89 = *(v62 + 64);
          *(v62 + 64) = 0;
          if ((v89 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v118 = v126;
          (*(v133 + 16))(v126, v86, v134);
          sub_1000095E8(v86, &qword_1011A3880);
          v119 = MusicLibrarySectionedResponse.isEmpty.getter();
          (*(v69 + 8))(v118, v68);
          v120 = *(v62 + 64);
          *(v62 + 64) = !v119;
          if (v120 == !v119)
          {
            goto LABEL_10;
          }
        }
      }

      sub_10043EAB8();
      goto LABEL_10;
    }

    v74 = sub_10059B450(v39, 1, static MPCPlayerCommandRequest.isAvailable(in:), 0);

    v131 = v74;
    v75 = [v2 navigationItem];
    [v75 setRightBarButtonItem:0];

    v133 = *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_tvShowsResponseController];
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
    v76 = sub_1007BD9B0();
    v77 = v76;
    v132 = v2;
    v78 = (*(*&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
    v79 = v78[1];
    if (v79 && ((v80 = *v78 & 0xFFFFFFFFFFFFLL, (v79 & 0x2000000000000000) != 0) ? (v81 = HIBYTE(v79) & 0xF) : (v81 = v80), v81))
    {
      v82 = *(v76 + 64);
      *(v76 + 64) = 1;
      if (v82)
      {
LABEL_19:

        RequestResponse.Controller.revision.getter();
        RequestResponse.Revision.content.getter(v23);

        v83 = sub_10010FC20(&qword_1011A3888);
        v84 = *(*(v83 - 8) + 48);
        if (v84(v23, 1, v83) == 1)
        {
          sub_1000095E8(v23, &qword_1011A3870);
          v85 = 1;
        }

        else
        {
          v95 = v135;
          (*(v135 + 16))(v33, v23, v27);
          sub_1000095E8(v23, &qword_1011A3888);
          v96 = MusicLibrarySectionedResponse.isEmpty.getter();
          (*(v95 + 8))(v33, v27);
          v85 = !v96;
        }

        LODWORD(v134) = v85;
        v2 = v132;
        UIViewController.playActivityFeatureIdentifier.setter(16);
        RequestResponse.Controller.revision.getter();
        RequestResponse.Revision.content.getter(v20);

        if (v84(v20, 1, v83) == 1)
        {
          sub_1000095E8(v20, &qword_1011A3870);
        }

        else
        {
          v104 = v135;
          v105 = *(v135 + 16);
          v105(v29, v20, v27);
          sub_1000095E8(v20, &qword_1011A3888);
          v106 = v125;
          (*(v104 + 32))(v125, v29, v27);
          v107 = *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_prefetchingController];
          v139 = type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext(0);
          v108 = sub_10001C8B8(&aBlock);
          v105(v108, v106, v27);
          (*(v104 + 56))(v108, 0, 1, v27);
          swift_storeEnumTagMultiPayload();
          (*(v104 + 8))(v106, v27);
          v109 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
          swift_beginAccess();
          sub_10006B010(&aBlock, v107 + v109, &unk_101183F30);
          swift_endAccess();
        }

        v103 = &unk_100EBC000;
        v58 = v131;
        goto LABEL_37;
      }
    }

    else
    {
      RequestResponse.Controller.revision.getter();
      RequestResponse.Revision.content.getter(v26);

      v90 = sub_10010FC20(&qword_1011A3888);
      if ((*(*(v90 - 8) + 48))(v26, 1, v90) == 1)
      {
        sub_1000095E8(v26, &qword_1011A3870);
        v91 = *(v77 + 64);
        *(v77 + 64) = 0;
        if ((v91 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v121 = v135;
        (*(v135 + 16))(v37, v26, v27);
        sub_1000095E8(v26, &qword_1011A3888);
        v122 = MusicLibrarySectionedResponse.isEmpty.getter();
        (*(v121 + 8))(v37, v27);
        v123 = *(v77 + 64);
        *(v77 + 64) = !v122;
        if (v123 == !v122)
        {
          goto LABEL_19;
        }
      }
    }

    sub_10043EAB8();
    goto LABEL_19;
  }
}

void sub_1007C4984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007BBCF0();
  [v4 setCollectionViewLayout:a2];

  v5 = *(a1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView);
  v6 = [v5 indexPathsForVisibleItems];
  if (!v6)
  {
    type metadata accessor for IndexPath();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = isa;
  }

  v8 = v6;
  [v5 reloadItemsAtIndexPaths:?];
}

uint64_t sub_1007C4E78(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10010FC20(&unk_10118A650);
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_10010FC20(&qword_1011A37C8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  if ((*v12 != a2 || v12[1] != a3) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v14 != a3)
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
LABEL_12:
        sub_1007BE644(v7);
        sub_100009F78(0, &unk_101184750);
        v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
        (*(v20 + 8))(v7, v5);
        return v13;
      }

      strcpy(v21, "Unknown kind=");
      v21[7] = -4864;
      v17._countAndFlagsBits = a2;
      v17._object = a3;
      String.append(_:)(v17);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    goto LABEL_12;
  }

  sub_1007BE3D0(v11);
  type metadata accessor for LibraryTVShowsMoviesViewController.SegmentedControlCell();
  v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v9 + 8))(v11, v8);
  return v13;
}

unint64_t sub_1007C5298(uint64_t a1, uint64_t a2)
{
  v99 = a1;
  v100 = a2;
  v3 = sub_10010FC20(&unk_1011A37E8);
  v96 = *(v3 - 8);
  v97 = v3;
  __chkstk_darwin(v3);
  v95 = &v77 - v4;
  v5 = sub_10010FC20(&qword_10118D0B0);
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v86 = &v77 - v6;
  v85 = sub_10010FC20(&unk_10118D0C0);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v77 - v7;
  v8 = sub_10010FC20(&unk_1011A3860);
  __chkstk_darwin(v8 - 8);
  v10 = &v77 - v9;
  v11 = sub_10010FC20(&unk_10118D0D0);
  v89 = *(v11 - 8);
  v90 = v11;
  __chkstk_darwin(v11);
  v13 = &v77 - v12;
  v14 = sub_10010FC20(&unk_1011803F0);
  __chkstk_darwin(v14 - 8);
  v94 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v98 = &v77 - v17;
  v18 = sub_10010FC20(&qword_1011A37D8);
  v92 = *(v18 - 8);
  v93 = v18;
  __chkstk_darwin(v18);
  v91 = &v77 - v19;
  v82 = sub_10010FC20(&qword_1011A3890);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v77 - v20;
  v79 = sub_10010FC20(&qword_1011A3898);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v22 = &v77 - v21;
  v23 = sub_10010FC20(&qword_1011A3870);
  __chkstk_darwin(v23 - 8);
  v25 = &v77 - v24;
  v26 = sub_10010FC20(&qword_1011A3878);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v77 - v28;
  v30 = sub_10010FC20(&unk_1011A38A0);
  __chkstk_darwin(v30 - 8);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v77 - v34;
  if (*(v2 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context))
  {
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v10);

    v36 = sub_10010FC20(&qword_1011A3880);
    if ((*(*(v36 - 8) + 48))(v10, 1, v36) == 1)
    {
      sub_1000095E8(v10, &unk_1011A3860);
LABEL_15:
      v52 = 1;
      v44 = v100;
      v46 = v98;
      goto LABEL_16;
    }

    v41 = v89;
    v40 = v90;
    (*(v89 + 16))(v13, v10, v90);
    sub_1000095E8(v10, &qword_1011A3880);
    v42 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

    if (!v42)
    {
      (*(v41 + 8))(v13, v40);
      goto LABEL_15;
    }

    v43 = MusicLibrarySectionedResponse.sections.getter();
    (*(v41 + 8))(v13, v40);
    v44 = v100;
    result = IndexPath.section.getter();
    v46 = v98;
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v43 + 16))
      {
        v47 = v84;
        v48 = v83;
        v49 = v85;
        (*(v84 + 16))(v83, v43 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * result, v85);

        v50 = v86;
        MusicLibrarySection.items.getter();
        (*(v47 + 8))(v48, v49);
        IndexPath.item.getter();
        v51 = v88;
        MusicItemCollection.subscript.getter();
        (*(v87 + 8))(v50, v51);
        v52 = 0;
LABEL_16:
        v59 = type metadata accessor for MusicMovie();
        v60 = *(v59 - 8);
        (*(v60 + 56))(v46, v52, 1, v59);
        v61 = v95;
        sub_1007BE8CC(v95);
        v62 = sub_1007FE6A8(v61, v44, v46);
        (*(v96 + 8))(v61, v97);
        v63 = v94;
        sub_1000089F8(v46, v94, &unk_1011803F0);
        if ((*(v60 + 48))(v63, 1, v59) == 1)
        {
          sub_1000095E8(v63, &unk_1011803F0);
          v101 = 0u;
          v102 = 0u;
          v103 = 0;
        }

        else
        {
          *(&v102 + 1) = v59;
          v103 = sub_1007CDB28(&unk_1011A38B0, &type metadata accessor for MusicMovie);
          v64 = sub_10001C8B8(&v101);
          (*(v60 + 32))(v64, v63, v59);
        }

        v65 = sub_1004F24B0(&v101);

        v66 = &unk_1011803F0;
        v67 = v46;
LABEL_25:
        sub_1000095E8(v67, v66);
        sub_1000095E8(&v101, &qword_1011A3DD0);
        return v65;
      }

      goto LABEL_28;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v25);

  v37 = sub_10010FC20(&qword_1011A3888);
  if ((*(*(v37 - 8) + 48))(v25, 1, v37) == 1)
  {
    sub_1000095E8(v25, &qword_1011A3870);
    v38 = 1;
    v39 = v100;
LABEL_21:
    v68 = type metadata accessor for TVShow();
    v69 = *(v68 - 8);
    (*(v69 + 56))(v35, v38, 1, v68);
    v70 = v91;
    sub_1007BEB6C(v91);
    v71 = sub_1007FE16C(v70, v39, v35);
    (*(v92 + 8))(v70, v93);
    v72 = Corner.medium.unsafeMutableAddressor();
    v73 = *v72;
    v74 = v72[1];
    LOBYTE(v70) = *(v72 + 16);
    v75 = swift_allocObject();
    *(v75 + 16) = v73;
    *(v75 + 24) = v74;
    *(v75 + 32) = v70;
    UICollectionViewCell.configurationUpdateHandler.setter();
    sub_1000089F8(v35, v32, &unk_1011A38A0);
    if ((*(v69 + 48))(v32, 1, v68) == 1)
    {
      sub_1000095E8(v32, &unk_1011A38A0);
      v101 = 0u;
      v102 = 0u;
      v103 = 0;
    }

    else
    {
      *(&v102 + 1) = v68;
      v103 = sub_1007CDB28(&qword_101192E40, &type metadata accessor for TVShow);
      v76 = sub_10001C8B8(&v101);
      (*(v69 + 32))(v76, v32, v68);
    }

    v65 = sub_1004F24B0(&v101);

    v66 = &unk_1011A38A0;
    v67 = v35;
    goto LABEL_25;
  }

  (*(v27 + 16))(v29, v25, v26);
  sub_1000095E8(v25, &qword_1011A3888);
  v53 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

  v39 = v100;
  if (!v53)
  {
    (*(v27 + 8))(v29, v26);
    v38 = 1;
    goto LABEL_21;
  }

  v54 = MusicLibrarySectionedResponse.sections.getter();
  (*(v27 + 8))(v29, v26);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  if (result < *(v54 + 16))
  {
    v55 = v78;
    v56 = v79;
    (*(v78 + 16))(v22, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * result, v79);

    v57 = v80;
    MusicLibrarySection.items.getter();
    (*(v55 + 8))(v22, v56);
    IndexPath.item.getter();
    v58 = v82;
    MusicItemCollection.subscript.getter();
    (*(v81 + 8))(v57, v58);
    v38 = 0;
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
  return result;
}

BOOL sub_1007C617C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = UICollectionView.isDraggingCell(at:)();

  (*(v5 + 8))(v7, v4);
  return (v9 & 1) == 0;
}

void sub_1007C6270(uint64_t (*a1)(uint64_t a1), void (*a2)(uint64_t, uint64_t))
{
  v159 = a2;
  v156 = a1;
  v3 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v3 - 8);
  v130 = &v121 - v4;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v122 = &v121 - v6;
  v7 = sub_10010FC20(&unk_1011803F0);
  __chkstk_darwin(v7 - 8);
  v127 = &v121 - v8;
  v9 = sub_10010FC20(&qword_1011848A0);
  __chkstk_darwin(v9 - 8);
  v128 = &v121 - v10;
  v126 = type metadata accessor for PlaybackIntentDescriptor(0);
  v129 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v11;
  __chkstk_darwin(v12);
  v125 = &v121 - v13;
  v148 = type metadata accessor for GenericMusicItem();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v154 = *(v150 - 8);
  __chkstk_darwin(v150);
  v146 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v149 = &v121 - v17;
  v144 = sub_10010FC20(&qword_10118D0B0);
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v121 - v18;
  v141 = sub_10010FC20(&unk_10118D0C0);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v121 - v19;
  v20 = sub_10010FC20(&unk_1011A3860);
  __chkstk_darwin(v20 - 8);
  v22 = &v121 - v21;
  v152 = sub_10010FC20(&unk_10118D0D0);
  v155 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v121 - v23;
  v24 = type metadata accessor for MusicMovie();
  v157 = *(v24 - 1);
  v158 = v24;
  __chkstk_darwin(v24);
  v138 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v153 = &v121 - v27;
  v28 = sub_10010FC20(&unk_10119F3A0);
  __chkstk_darwin(v28 - 8);
  v131 = &v121 - v29;
  v136 = _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin(v136);
  v137 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_10010FC20(&qword_1011A3890);
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v121 - v31;
  v32 = sub_10010FC20(&qword_1011A3898);
  v132 = *(v32 - 8);
  __chkstk_darwin(v32);
  v34 = &v121 - v33;
  v35 = sub_10010FC20(&qword_1011A3870);
  __chkstk_darwin(v35 - 8);
  v37 = &v121 - v36;
  v38 = sub_10010FC20(&qword_1011A3878);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v121 - v40;
  v42 = type metadata accessor for TVShow();
  __chkstk_darwin(v42);
  v44 = &v121 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  if ((*(v2 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context) & 1) == 0)
  {
    v155 = (&v121 - v47);
    v156 = v48;
    v157 = v46;
    v158 = v2;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v37);

    v58 = sub_10010FC20(&qword_1011A3888);
    if ((*(*(v58 - 8) + 48))(v37, 1, v58) == 1)
    {
      v59 = &qword_1011A3870;
LABEL_8:
      sub_1000095E8(v37, v59);
      return;
    }

    (*(v39 + 16))(v41, v37, v38);
    sub_1000095E8(v37, &qword_1011A3888);
    v93 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

    if (!v93)
    {
      (*(v39 + 8))(v41, v38);
      return;
    }

    v94 = MusicLibrarySectionedResponse.sections.getter();
    (*(v39 + 8))(v41, v38);
    v95 = IndexPath.section.getter();
    if ((v95 & 0x8000000000000000) == 0)
    {
      if (v95 < *(v94 + 16))
      {
        v96 = v132;
        (*(v132 + 16))(v34, v94 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v95, v32);

        v97 = v133;
        MusicLibrarySection.items.getter();
        (*(v96 + 8))(v34, v32);
        IndexPath.item.getter();
        v98 = v135;
        MusicItemCollection.subscript.getter();
        (*(v134 + 8))(v97, v98);
        v100 = v155;
        v99 = v156;
        v101 = v157;
        (*(v156 + 4))(v155, v44, v157);
        v102 = v137;
        (*(v99 + 2))(v137, v100, v101);
        swift_storeEnumTagMultiPayload();
        v103 = v158;
        v104 = [v158 traitCollection];
        sub_100217F14();
        UITraitCollection.subscript.getter();

        LOBYTE(v104) = sub_10049CB78();

        v105 = objc_allocWithZone(type metadata accessor for LibraryTVEpisodesViewController());
        v106 = sub_10061A47C(v102, v104 & 1);
        v107 = [v103 navigationController];
        if (v107)
        {
          v108 = v107;
          v109 = v131;
          UIViewController.traitOverrides.getter();
          v110 = type metadata accessor for UITraitOverrides();
          (*(*(v110 - 8) + 56))(v109, 0, 1, v110);
          UINavigationController.push(_:traitOverrides:animated:)(v106, v109, 1);

          sub_1000095E8(v109, &unk_10119F3A0);
          (*(v99 + 1))(v100, v101);
        }

        else
        {
          (*(v99 + 1))(v100, v101);
        }

        return;
      }

LABEL_29:
      __break(1u);
      return;
    }

    goto LABEL_27;
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v156 deselectItemAtIndexPath:isa animated:1];

  v50 = [v2 navigationItem];
  v51 = [v50 searchController];

  if (v51)
  {
    v52 = [v51 searchBar];

    [v52 resignFirstResponder];
  }

  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v22);

  v53 = sub_10010FC20(&qword_1011A3880);
  v54 = (*(*(v53 - 8) + 48))(v22, 1, v53);
  v55 = v157;
  v56 = v158;
  v57 = v155;
  if (v54 == 1)
  {
    sub_1000095E8(v22, &unk_1011A3860);
    return;
  }

  v61 = v151;
  v60 = v152;
  v155[2](v151, v22, v152);
  v62 = v22;
  v63 = v60;
  sub_1000095E8(v62, &qword_1011A3880);
  v64 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

  if (!v64)
  {
    (v57[1])(v61, v63);
    return;
  }

  v65 = MusicLibrarySectionedResponse.sections.getter();
  (v57[1])(v61, v63);
  v66 = IndexPath.section.getter();
  if ((v66 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v67 = v150;
  if (v66 >= *(v65 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v68 = v140;
  v69 = v139;
  v70 = v141;
  (*(v140 + 16))(v139, v65 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v66, v141);

  v71 = v142;
  MusicLibrarySection.items.getter();
  (*(v68 + 8))(v69, v70);
  IndexPath.item.getter();
  v72 = v138;
  v73 = v144;
  MusicItemCollection.subscript.getter();
  (*(v143 + 8))(v71, v73);
  v74 = v153;
  (*(v55 + 32))(v153, v72, v56);
  v75 = *(v55 + 16);
  v76 = v145;
  v75(v145, v74, v56);
  v77 = v147;
  v78 = v148;
  (*(v147 + 104))(v76, enum case for GenericMusicItem.musicMovie(_:), v148);
  v79 = v149;
  sub_100538C48(v76, v149);
  v80 = v76;
  v81 = v79;
  (*(v77 + 8))(v80, v78);
  v82 = v154;
  v83 = v146;
  (*(v154 + 104))(v146, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v67);
  LOBYTE(v78) = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v85 = *(v82 + 8);
  v84 = v82 + 8;
  v86 = v83;
  v87 = v85;
  v85(v86, v67);
  if (v78)
  {
    v159 = v87;
    v154 = v84;
    v88 = v67;
    v89 = v56;
    v90 = v127;
    v91 = v153;
    v75(v127, v153, v89);
    (*(v55 + 56))(v90, 0, 1, v89);
    v37 = v128;
    sub_1007C7688(v90, v128);
    sub_1000095E8(v90, &unk_1011803F0);
    v92 = v129;
    if ((*(v129 + 48))(v37, 1, v126) == 1)
    {
      v159(v81, v88);
      (*(v55 + 8))(v91, v89);
      v59 = &qword_1011848A0;
      goto LABEL_8;
    }

    v156 = type metadata accessor for PlaybackIntentDescriptor;
    v114 = v125;
    sub_1007CD8EC(v37, v125, type metadata accessor for PlaybackIntentDescriptor);
    v115 = type metadata accessor for TaskPriority();
    v116 = v122;
    (*(*(v115 - 8) + 56))(v122, 1, 1, v115);
    v117 = v124;
    sub_1007CD954(v114, v124, type metadata accessor for PlaybackIntentDescriptor);
    type metadata accessor for MainActor();
    v118 = static MainActor.shared.getter();
    v119 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v120 = swift_allocObject();
    *(v120 + 16) = v118;
    *(v120 + 24) = &protocol witness table for MainActor;
    sub_1007CD8EC(v117, v120 + v119, v156);
    sub_1001F4F78(0, 0, v116, &unk_100ECA700, v120);

    sub_1007CD9CC(v114, type metadata accessor for PlaybackIntentDescriptor);
    v159(v81, v150);
    (*(v55 + 8))(v91, v89);
  }

  else
  {
    v111 = type metadata accessor for IndexPath();
    v112 = v130;
    (*(*(v111 - 8) + 56))(v130, 1, 1, v111);
    sub_100376F7C(v112, &v160);
    sub_1000095E8(v112, &unk_10118BCE0);
    v113 = v153;
    sub_100860C78(v81, v153, &v160);
    sub_10012BA6C(&v160);
    v87(v81, v67);
    (*(v55 + 8))(v113, v56);
  }
}

uint64_t sub_1007C7688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v3 = sub_10010FC20(&unk_1011803F0);
  __chkstk_darwin(v3 - 8);
  v35 = &v34 - v4;
  v5 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v2;
  v15 = *(*&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController] + 48);
  swift_beginAccess();
  v16 = v15[4];
  v43[2] = v15[3];
  v43[3] = v16;
  v17 = v15[6];
  v43[4] = v15[5];
  v43[5] = v17;
  v18 = v15[2];
  v43[0] = v15[1];
  v43[1] = v18;
  v19 = v37;
  sub_1001103E0(v43, &v40);
  sub_1001087C4(v19, v10);
  sub_100110418(v43);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000095E8(v10, &unk_10118CDB0);
    v20 = 1;
    v21 = v38;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    (*(v12 + 16))(v7, v14, v11);
    swift_storeEnumTagMultiPayload();
    v22 = v19;
    v23 = v35;
    sub_1000089F8(v22, v35, &unk_1011803F0);
    v24 = type metadata accessor for MusicMovie();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_1000095E8(v23, &unk_1011803F0);
      v40 = 0u;
      v41 = 0u;
      v42 = 0;
    }

    else
    {
      *(&v41 + 1) = v24;
      v42 = sub_1007CDB28(&unk_10118AB60, &type metadata accessor for MusicMovie);
      v26 = sub_10001C8B8(&v40);
      (*(v25 + 32))(v26, v23, v24);
    }

    v27 = v36;
    v39[0] = v36;
    v28 = v36;
    v29 = String.init<A>(reflecting:)();
    v39[3] = &type metadata for Player.CommandIssuerIdentity;
    v39[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v39[0] = v29;
    v39[1] = v30;
    v31 = v28;
    v21 = v38;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v7, &v40, 3, 0, 0, 1, 0, 1, v38, v27, v39);
    (*(v12 + 8))(v14, v11);
    v20 = 0;
  }

  v32 = type metadata accessor for PlaybackIntentDescriptor(0);
  return (*(*(v32 - 8) + 56))(v21, v20, 1, v32);
}

unint64_t sub_1007C7C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v116 = a5;
  v7 = type metadata accessor for UUID();
  v125 = *(v7 - 8);
  __chkstk_darwin(v7);
  v124 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_1011838D0);
  v121 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v122 = v10;
  v123 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v128 = &v107 - v12;
  v13 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v107 - v14;
  v16 = sub_10010FC20(&unk_1011845D0);
  v118 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  v119 = v17;
  v120 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v130 = &v107 - v19;
  v20 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v20 - 8);
  v22 = &v107 - v21;
  v23 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v23 - 8);
  v115 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v117 = &v107 - v26;
  __chkstk_darwin(v27);
  v29 = &v107 - v28;
  __chkstk_darwin(v30);
  v32 = &v107 - v31;
  v33 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v33 - 8);
  v126 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v129 = &v107 - v36;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v38 = Strong;
  sub_10010FC20(&unk_101183900);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100EBC6B0;
  sub_100008FE4(a3, v39 + 32);
  v40 = [v38 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v113 = v145[0];
  sub_1000089F8(a4, v22, &unk_10118CDB0);
  PlaybackIntentDescriptor.IntentType.init(_:)(v22, v32);
  memset(v145, 0, 40);
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v41 = qword_101218AD8;
  sub_1000089F8(v32, v29, &unk_1011838E0);
  v42 = v41;
  v43 = UIViewController.playActivityInformation.getter();
  v111 = v44;
  v112 = v43;
  v46 = v45;
  v110 = v47;
  sub_1000089F8(v145, &v137, &unk_101183910);
  v114 = v7;
  v127 = v38;
  if (*(&v138 + 1))
  {
    sub_100059A8C(&v137, &v141);
  }

  else
  {
    *&v146 = v38;
    sub_100009F78(0, &qword_101183D40);
    v49 = v38;
    sub_10010FC20(&unk_101183920);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v149, &v141);
    }

    else
    {
      v151 = 0;
      v149 = 0u;
      v150 = 0u;
      *&v141 = v49;
      v50 = v49;
      v51 = String.init<A>(reflecting:)();
      v142 = &type metadata for Player.CommandIssuerIdentity;
      v143 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v141 = v51;
      *(&v141 + 1) = v52;
      if (*(&v150 + 1))
      {
        sub_1000095E8(&v149, &unk_101183910);
      }
    }

    if (*(&v138 + 1))
    {
      sub_1000095E8(&v137, &unk_101183910);
    }
  }

  v53 = v129;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v42, v29, v112, v111, v46, v110, &v141, v129);
  sub_1000095E8(v145, &unk_101183910);
  sub_1000095E8(v32, &unk_1011838E0);
  v54 = type metadata accessor for Actions.PlaybackContext();
  v55 = *(v54 - 8);
  (*(v55 + 56))(v53, 0, 1, v54);
  v56 = type metadata accessor for PlaylistContext();
  (*(*(v56 - 8) + 56))(v130, 1, 1, v56);
  v57 = type metadata accessor for IndexPath();
  v58 = *(v57 - 8);
  (*(v58 + 16))(v15, v116, v57);
  (*(v58 + 56))(v15, 0, 1, v57);
  v59 = v127;
  sub_100376F7C(v15, v145);
  sub_1000095E8(v15, &unk_10118BCE0);
  v60 = v128;
  sub_1007C2FEC(v128);
  v61 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  sub_100008FE4(v39 + 32, v144);

  sub_1000089F8(v145, &v137, &unk_1011845E0);
  if (v140 == 1)
  {
    v151 = 0;
    v149 = 0u;
    v150 = 0u;
    v152 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v59, &v149, &v141);
    v62 = v126;
    if (v140 != 1)
    {
      sub_1000095E8(&v137, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v137, &v141);
    v62 = v126;
  }

  swift_getObjectType();
  v63 = swift_conformsToProtocol2();
  if (v63)
  {
    v111 = v63;
    v64 = v59;
    v112 = v59;
  }

  else
  {
    v111 = 0;
    v112 = 0;
  }

  v116 = swift_allocBox();
  v66 = v65;
  sub_1000089F8(v129, v62, &unk_10118AB20);
  v67 = *(v55 + 48);
  if (v67(v62, 1, v54) == 1)
  {
    v68 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v69 = v117;
    (*(*(v68 - 8) + 56))(v117, 1, 1, v68);
    v139 = 0;
    v137 = 0u;
    v138 = 0u;
    v70 = v69;
    v71 = v115;
    sub_1000089F8(v70, v115, &unk_1011838E0);
    v110 = v42;
    v72 = UIViewController.playActivityInformation.getter();
    v108 = v74;
    v109 = v73;
    v76 = v75;
    sub_1000089F8(&v137, &v135, &unk_101183910);
    if (v136)
    {
      sub_100059A8C(&v135, &v146);
    }

    else
    {
      v134 = v59;
      sub_100009F78(0, &qword_101183D40);
      v77 = v59;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v131, &v146);
        v62 = v126;
      }

      else
      {
        v133 = 0;
        v131 = 0u;
        v132 = 0u;
        *&v146 = v77;
        v78 = v77;
        v79 = String.init<A>(reflecting:)();
        *(&v147 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v148 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v146 = v79;
        *(&v146 + 1) = v80;
        v62 = v126;
        if (*(&v132 + 1))
        {
          sub_1000095E8(&v131, &unk_101183910);
        }
      }

      v59 = v127;
      v71 = v115;
      if (v136)
      {
        sub_1000095E8(&v135, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v110, v71, v72, v109, v108, v76, &v146, v66);
    sub_1000095E8(&v137, &unk_101183910);
    sub_1000095E8(v117, &unk_1011838E0);
    if (v67(v62, 1, v54) != 1)
    {
      sub_1000095E8(v62, &unk_10118AB20);
    }
  }

  else
  {
    sub_1007CD8EC(v62, v66, type metadata accessor for Actions.PlaybackContext);
  }

  v81 = *(v54 + 28);
  sub_1000089F8(&v66[v81], &v146, &unk_101183910);
  if (*(&v147 + 1))
  {
    sub_100059A8C(&v146, &v137);
  }

  else
  {
    *&v137 = v59;
    v82 = v59;
    v83 = String.init<A>(reflecting:)();
    *(&v138 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v139 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v137 = v83;
    *(&v137 + 1) = v84;
    if (*(&v147 + 1))
    {
      sub_1000095E8(&v146, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_100EBDC20;
  *(v85 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v85 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v85 + 32) = 0x4D747865746E6F43;
  *(v85 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v137, v85 + 72);
  v86 = static Player.CommandIssuer<>.combining(_:)();
  v88 = v87;

  sub_10000959C(&v137);
  *(&v138 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v139 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v137 = v86;
  *(&v137 + 1) = v88;
  sub_10006B010(&v137, &v66[v81], &unk_101183910);
  sub_100008FE4(v144, &v137);
  sub_10010FC20(&unk_10118AB50);
  v126 = String.init<A>(describing:)();
  v117 = v89;
  v115 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v144, &v135);
  sub_10012B7A8(&v141, &v137);
  v90 = v123;
  sub_1000089F8(v128, v123, &unk_1011838D0);
  v91 = v120;
  sub_1000089F8(v130, v120, &unk_1011845D0);
  v92 = (*(v121 + 80) + 160) & ~*(v121 + 80);
  v93 = (v122 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
  v95 = (*(v118 + 80) + v94 + 8) & ~*(v118 + 80);
  v122 = (v95 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v95 + v119 + 31) & 0xFFFFFFFFFFFFFFF8;
  v97 = swift_allocObject();
  sub_100059A8C(&v135, v97 + 16);
  *(v97 + 56) = v113;
  sub_10012B828(&v137, v97 + 64);
  sub_10003D17C(v90, v97 + v92, &unk_1011838D0);
  v98 = v116;
  *(v97 + v93) = v115;
  *(v97 + v94) = v98;
  sub_10003D17C(v91, v97 + v95, &unk_1011845D0);
  v99 = v97 + v122;
  v100 = v111;
  *v99 = v112;
  *(v99 + 8) = v100;
  *(v99 + 16) = 2;
  v101 = (v97 + v96);
  *v101 = variable initialization expression of Library.Context.playlistVariants;
  v101[1] = 0;
  swift_unknownObjectRetain();

  v102 = v124;
  UUID.init()();
  v103 = UUID.uuidString.getter();
  v105 = v104;
  (*(v125 + 8))(v102, v114);
  v153._countAndFlagsBits = v126;
  v153._object = v117;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v153, v103, v105, sub_100217D28, v97, &v146);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v141);
  sub_10000959C(v144);

  v48 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v141 = v146;
  sub_100015BB0(&v141);
  v137 = v147;
  sub_100015BB0(&v137);

  sub_1000095E8(v128, &unk_1011838D0);
  sub_1000095E8(v145, &unk_1011845E0);
  sub_1000095E8(v130, &unk_1011845D0);
  sub_1000095E8(v129, &unk_10118AB20);
  return v48;
}

void sub_1007C8D4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_10119F3A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = type metadata accessor for TVShow();
    (*(*(v11 - 8) + 16))(v8, a2, v11);
    swift_storeEnumTagMultiPayload();
    v12 = v10;
    v13 = [v12 traitCollection];
    sub_100217F14();
    UITraitCollection.subscript.getter();

    LOBYTE(v10) = sub_10049CB78();

    v14 = objc_allocWithZone(type metadata accessor for LibraryTVEpisodesViewController());
    v15 = sub_10061A47C(v8, v10 & 1);
    v16 = [v12 navigationController];
    if (v16)
    {
      v17 = v16;
      UIViewController.traitOverrides.getter();

      v18 = type metadata accessor for UITraitOverrides();
      (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
      UINavigationController.push(_:traitOverrides:animated:)(v15, v5, 1);

      sub_1000095E8(v5, &unk_10119F3A0);
    }

    else
    {
    }
  }
}

id sub_1007C9058(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = sub_10023D4E4(v7, 0, 1);

  (*(v5 + 8))(v7, v4);

  return v9;
}

uint64_t sub_1007C91D4()
{
  v1 = sub_10010FC20(&unk_1011A3860);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - v2;
  v4 = sub_10010FC20(&unk_10118D0D0);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_10010FC20(&qword_1011A3870);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_10010FC20(&qword_1011A3878);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;
  if (*(v0 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context))
  {
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v3);

    v20 = sub_10010FC20(&qword_1011A3880);
    if ((*(*(v20 - 8) + 48))(v3, 1, v20) == 1)
    {
      sub_1000095E8(v3, &unk_1011A3860);
    }

    else
    {
      v22 = v27;
      (*(v27 + 16))(v6, v3, v4);
      sub_1000095E8(v3, &qword_1011A3880);
      (*(v22 + 32))(v9, v6, v4);
      if (MusicLibrarySectionedResponse.isEmpty.getter())
      {
        *(&v29 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
        v30 = &protocol witness table for UIContentUnavailableConfiguration;
        v23 = sub_10001C8B8(&v28);
        sub_1007DDEE4(v23);
        UIViewController.contentUnavailableConfiguration.setter();
        return (*(v22 + 8))(v9, v4);
      }

      (*(v22 + 8))(v9, v4);
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
  }

  else
  {
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v12);

    v21 = sub_10010FC20(&qword_1011A3888);
    if ((*(*(v21 - 8) + 48))(v12, 1, v21) == 1)
    {
      sub_1000095E8(v12, &qword_1011A3870);
    }

    else
    {
      (*(v14 + 16))(v16, v12, v13);
      sub_1000095E8(v12, &qword_1011A3888);
      (*(v14 + 32))(v19, v16, v13);
      if (MusicLibrarySectionedResponse.isEmpty.getter())
      {
        *(&v29 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
        v30 = &protocol witness table for UIContentUnavailableConfiguration;
        v25 = sub_10001C8B8(&v28);
        sub_1007DDE8C(v25);
        UIViewController.contentUnavailableConfiguration.setter();
        return (*(v14 + 8))(v19, v13);
      }

      (*(v14 + 8))(v19, v13);
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
  }

  return UIViewController.contentUnavailableConfiguration.setter();
}

void sub_1007C9818()
{
  v1 = (*(v0 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection) & ~(*(v0 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection) ^ 1) & 1);
  v2 = sub_1007C9AC8();
  v3 = [v2 selectedSegmentIndex];

  if (v3 != v1)
  {
    v4 = *(v0 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell____lazy_storage___segmentedControl);

    [v4 setSelectedSegmentIndex:v1];
  }
}

id sub_1007C98C4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection] = 0;
  v10 = &v4[OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_selectionDidChange];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell____lazy_storage___segmentedControl] = 0;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  sub_1007C9818();
  v12 = v11;
  v13 = [v12 contentView];
  v14 = [v12 traitCollection];
  v15 = [v14 horizontalSizeClass];

  v16 = 0.0;
  if (v15 == 2)
  {
    v16 = 9.0;
  }

  [v13 setLayoutMargins:{v16, 0.0, 24.0, 0.0}];

  v17 = [v12 contentView];
  v18 = sub_1007C9AC8();
  UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(v18, 1);

  sub_10010FC20(&unk_101182D80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBC6B0;
  *(v19 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v19 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v12;
}

id sub_1007C9AC8()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell____lazy_storage___segmentedControl;
  v5 = *(v0 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell____lazy_storage___segmentedControl);
  if (v5)
  {

    return v5;
  }

  else
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_100009F78(0, &qword_1011839A0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = 1;
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v11 = objc_allocWithZone(UISegmentedControl);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v13 = [v11 initWithFrame:isa actions:{0.0, 0.0, 0.0, 0.0}];

    v14 = *(v1 + v4);
    *(v1 + v4) = v13;
    v15 = v13;

    return v15;
  }
}

void sub_1007C9EFC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection;
    v7 = *(Strong + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection);
    *(Strong + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection) = a3 & 1;
    if (v7 == (a3 & 1) || (sub_1007C9818(), (v8 = *&v5[OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_selectionDidChange]) == 0))
    {
    }

    else
    {
      v9 = v5[v6];

      v8(v9);

      sub_100020438(v8);
    }
  }
}

void sub_1007CA228()
{
  sub_10003920C(319, &qword_1011A37C0, &qword_1011A37C8);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &unk_101184560, &unk_10118A650);
    if (v1 <= 0x3F)
    {
      sub_10003920C(319, &qword_1011A37D0, &qword_1011A37D8);
      if (v2 <= 0x3F)
      {
        sub_10003920C(319, &qword_1011A37E0, &unk_1011A37E8);
        if (v3 <= 0x3F)
        {
          sub_1002114E8();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

unint64_t sub_1007CA4B8()
{
  result = qword_1011A3848;
  if (!qword_1011A3848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3848);
  }

  return result;
}

uint64_t sub_1007CA50C()
{
  v1 = v0;
  sub_10010FC20(&unk_1011845C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6B0;
  v3 = sub_10031EA10();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *&v18[0] = v4;
  *(&v18[0] + 1) = v6;
  v7._countAndFlagsBits = 0x74726F532ELL;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  if (*(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context) == 1)
  {
    v9 = *(*(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController) + 48);
    swift_beginAccess();
    v10 = v9[4];
    v18[2] = v9[3];
    v18[3] = v10;
    v11 = v9[6];
    v18[4] = v9[5];
    v18[5] = v11;
    v12 = v9[2];
    v18[0] = v9[1];
    v18[1] = v12;
    v13 = swift_allocObject();
    swift_weakInit();

    sub_1001103E0(v18, v17);
    v14.super.super.isa = sub_100211E88(sub_1007CAAA0, v13).super.super.isa;

    sub_100110418(v18);

    if (v14.super.super.isa)
    {
      v15 = [(objc_class *)v14.super.super.isa children];

      sub_100009F78(0, &qword_10118CDE0);
      v14.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {

      v8 = 0;
    }
  }

  else
  {

    v8 = 0;
    v14.super.super.isa = 0;
  }

  *(v2 + 32) = v8;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = v14;
  return v2;
}

void sub_1007CA720(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC5Music19ApplicationMainMenu_submenuProviders;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v10 = *(v7 + 16);
  v8 = v7 + 16;
  v9 = v10;
  if (!v10 || *(v8 + 16 * v9) != a1)
  {
    if (qword_10117F580 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, qword_101218A28);
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v30 = a3;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31[0] = v16;
      *v15 = 136446210;
      v29 = v12;
      v17 = v12;
      v18 = [v17 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = sub_1000105AC(v19, v21, v31);

      *(v15 + 4) = v22;
      v12 = v29;
      _os_log_impl(&_mh_execute_header, v13, v14, "Become active submenuProvider=%{public}s", v15, 0xCu);
      sub_10000959C(v16);

      a3 = v30;
    }

    swift_beginAccess();
    v23 = *(a2 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + v6) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_100499B18(0, v23[2] + 1, 1, v23);
      *(a2 + v6) = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = sub_100499B18((v25 > 1), v26 + 1, 1, v23);
    }

    v23[2] = v26 + 1;
    v27 = &v23[2 * v26];
    v27[4] = v12;
    v27[5] = a3;
    *(a2 + v6) = v23;
    swift_endAccess();
    v28 = v12;
    sub_100059768();
  }
}

void sub_1007CA9F0(void *a1)
{
  v5 = [a1 contentView];
  v2 = [a1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = 0.0;
  if (v3 == 2)
  {
    v4 = 9.0;
  }

  [v5 setLayoutMargins:{v4, 0.0, 24.0, 0.0}];
}

uint64_t sub_1007CAAAC(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_tvShowsResponseController];
  v3 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v4 = sub_10049CB78();

  v5 = *(v2 + 48);
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v5 + 32);
  v8 = *(v5 + 48);
  v9 = *(v5 + 64);
  v10 = *(v5 + 96);
  v42[4] = *(v5 + 80);
  v42[5] = v10;
  v43 = *(v5 + 112);
  v42[2] = v8;
  v42[3] = v9;
  v42[0] = v6;
  v42[1] = v7;
  v35 = *(v5 + 16);
  v36 = v4 & 1;
  v11 = *(v5 + 33);
  v38 = *(v5 + 49);
  v37 = v11;
  v12 = *(v5 + 65);
  v13 = *(v5 + 81);
  v14 = *(v5 + 97);
  *&v41[15] = *(v5 + 112);
  *v41 = v14;
  v40 = v13;
  v39 = v12;
  sub_1003BF8F0(v42, v28);
  sub_10037993C(&v35);
  v15 = *&a1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController];
  v16 = [a1 traitCollection];
  UITraitCollection.subscript.getter();

  LOBYTE(v16) = sub_10049CB78();

  v17 = *(v15 + 48);
  swift_beginAccess();
  v18 = v17[1];
  v19 = v17[2];
  v20 = v17[3];
  v21 = v17[4];
  v22 = v17[6];
  v28[4] = v17[5];
  v28[5] = v22;
  v28[2] = v20;
  v28[3] = v21;
  v28[1] = v19;
  v28[0] = v18;
  v29 = v17[1];
  v30 = v16 & 1;
  v31 = *(v17 + 33);
  v23 = *(v17 + 49);
  v24 = *(v17 + 65);
  v25 = *(v17 + 81);
  *&v34[15] = v22;
  *v34 = v25;
  v33 = v24;
  v32 = v23;
  sub_1001103E0(v28, v27);
  return sub_100379614(&v29);
}

uint64_t sub_1007CACC4(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_tvShowsResponseController];
  v3 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v4 = *&v60[0];
  v5 = *(v2 + 48);
  swift_beginAccess();
  v6 = *(v5 + 32);
  v60[0] = *(v5 + 16);
  v7 = *(v5 + 64);
  v60[2] = *(v5 + 48);
  v8 = *(v5 + 80);
  v9 = *(v5 + 96);
  v61 = *(v5 + 112);
  v60[4] = v8;
  v60[5] = v9;
  v60[3] = v7;
  v60[1] = v6;
  v10 = *&v60[0];
  v11 = *(v5 + 32);
  v55 = *(v5 + 48);
  v54 = v11;
  v12 = *(v5 + 64);
  v13 = *(v5 + 80);
  v14 = *(v5 + 96);
  v59 = *(v5 + 112);
  v58 = v14;
  v57 = v13;
  v56 = v12;
  sub_1003BF8F0(v60, v35);

  v53[0] = v10;
  v53[1] = v4;
  sub_10037993C(v53);
  v15 = *&a1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController];
  v16 = [a1 traitCollection];
  UITraitCollection.subscript.getter();

  v17 = *&v35[0];
  v18 = *(v15 + 48);
  swift_beginAccess();
  v19 = *(v18 + 64);
  v36 = *(v18 + 48);
  v35[0] = *(v18 + 16);
  v20 = *(v18 + 96);
  v38 = *(v18 + 80);
  v39 = v20;
  v37 = v19;
  v35[1] = *(v18 + 32);
  v21 = BYTE9(v36);
  v22 = *&v35[0];
  v23 = BYTE8(v36);
  v34 = *(v18 + 48);
  v33 = *(v18 + 32);
  LOBYTE(v4) = BYTE9(v36);
  *&v32[14] = *(v18 + 104);
  v31 = *(v18 + 74);
  *v32 = *(v18 + 90);
  v30 = *(v18 + 58);
  sub_1001103E0(v35, v46);

  v47 = v33;
  v51[0] = v30;
  v46[0] = v22;
  v46[1] = v17;
  v48 = v34;
  v49 = v23;
  v50 = v4;
  v51[1] = v31;
  *v52 = *v32;
  if (v21)
  {
    v24 = 256;
  }

  else
  {
    v24 = 0;
  }

  *&v52[14] = *&v32[14];
  v25 = sub_1003754F0(v24 | v23);
  if ((v25 & 0xFF00) == 0x200)
  {
    v26 = 4;
  }

  else
  {
    v26 = v25;
  }

  if ((v25 & 0xFF00) == 0x200)
  {
    v27 = 1;
  }

  else
  {
    v27 = (v25 >> 8) & 1;
  }

  if (sub_1006B8B0C(v26, v23) & 1) == 0 || ((v21 ^ v27))
  {
    v28 = [objc_opt_self() standardUserDefaults];
    *(&v41 + 1) = &_s11ContentSortVN;
    v42 = sub_100110448();
    *v43 = sub_10011049C();
    LOBYTE(v40) = v26;
    BYTE1(v40) = v27;
    NSUserDefaults.encodeValue(_:forKey:)(&v40);

    sub_10000959C(&v40);
  }

  v41 = v33;
  *&v43[2] = v30;
  *&v40 = v22;
  *(&v40 + 1) = v17;
  v42 = v34;
  v43[0] = v26;
  v43[1] = v27;
  v44 = v31;
  *v45 = *v32;
  *&v45[14] = *&v32[14];
  return sub_100379614(&v40);
}

uint64_t sub_1007CB020()
{
  v1 = sub_10010FC20(&unk_1011A3860);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - v2;
  v4 = sub_10010FC20(&unk_10118D0D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  v8 = sub_10010FC20(&qword_1011A3870);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_10010FC20(&qword_1011A3878);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  if (*(v0 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context))
  {
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v3);

    v15 = sub_10010FC20(&qword_1011A3880);
    if ((*(*(v15 - 8) + 48))(v3, 1, v15) != 1)
    {
      (*(v5 + 16))(v7, v3, v4);
      sub_1000095E8(v3, &qword_1011A3880);
      v20 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

      if (v20)
      {
        v21 = MusicLibrarySectionedResponse.sections.getter();
        (*(v5 + 8))(v7, v4);
        v22 = *(v21 + 16);

        return v22;
      }

      (*(v5 + 8))(v7, v4);
      return 1;
    }

    v16 = &unk_1011A3860;
    v17 = v3;
    goto LABEL_6;
  }

  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v18 = sub_10010FC20(&qword_1011A3888);
  if ((*(*(v18 - 8) + 48))(v10, 1, v18) == 1)
  {
    v16 = &qword_1011A3870;
    v17 = v10;
LABEL_6:
    sub_1000095E8(v17, v16);
    return 1;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &qword_1011A3888);
  v23 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

  if (v23)
  {
    v24 = MusicLibrarySectionedResponse.sections.getter();
    (*(v12 + 8))(v14, v11);
    v25 = *(v24 + 16);

    return v25;
  }

  (*(v12 + 8))(v14, v11);
  return 1;
}

uint64_t sub_1007CB47C(unint64_t a1)
{
  v54 = a1;
  v2 = sub_10010FC20(&qword_10118D0B0);
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v43 - v3;
  v4 = sub_10010FC20(&unk_10118D0C0);
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v47 = &v43 - v5;
  v6 = sub_10010FC20(&unk_1011A3860);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - v7;
  v9 = sub_10010FC20(&unk_10118D0D0);
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  v12 = sub_10010FC20(&qword_1011A3890);
  v45 = *(v12 - 8);
  v46 = v12;
  __chkstk_darwin(v12);
  v44 = &v43 - v13;
  v14 = sub_10010FC20(&qword_1011A3898);
  v43 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v17 = sub_10010FC20(&qword_1011A3870);
  __chkstk_darwin(v17 - 8);
  v19 = &v43 - v18;
  v20 = sub_10010FC20(&qword_1011A3878);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v43 - v22;
  if ((*(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context) & 1) == 0)
  {
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v19);

    v27 = sub_10010FC20(&qword_1011A3888);
    if ((*(*(v27 - 8) + 48))(v19, 1, v27) == 1)
    {
      v25 = &qword_1011A3870;
      v26 = v19;
      goto LABEL_6;
    }

    (*(v21 + 16))(v23, v19, v20);
    sub_1000095E8(v19, &qword_1011A3888);
    v38 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

    if (!v38)
    {
      (*(v21 + 8))(v23, v20);
      return 0;
    }

    v39 = MusicLibrarySectionedResponse.sections.getter();
    result = (*(v21 + 8))(v23, v20);
    if ((v54 & 0x8000000000000000) == 0)
    {
      if (*(v39 + 16) > v54)
      {
        v40 = v43;
        (*(v43 + 16))(v16, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v54, v14);

        v41 = v44;
        MusicLibrarySection.items.getter();
        (*(v40 + 8))(v16, v14);
        sub_100020674(&unk_10118C290, &qword_1011A3890);
        v42 = v46;
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        v37 = dispatch thunk of Collection.distance(from:to:)();
        (*(v45 + 8))(v41, v42);
        return v37;
      }

LABEL_23:
      __break(1u);
      return result;
    }

    goto LABEL_21;
  }

  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v8);

  v24 = sub_10010FC20(&qword_1011A3880);
  if ((*(*(v24 - 8) + 48))(v8, 1, v24) == 1)
  {
    v25 = &unk_1011A3860;
    v26 = v8;
LABEL_6:
    sub_1000095E8(v26, v25);
    return 0;
  }

  v29 = v53;
  (*(v53 + 16))(v11, v8, v9);
  sub_1000095E8(v8, &qword_1011A3880);
  v30 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

  if (!v30)
  {
    (*(v29 + 8))(v11, v9);
    return 0;
  }

  v31 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v29 + 8))(v11, v9);
  if ((v54 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (*(v31 + 16) <= v54)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = v47;
  v32 = v48;
  v34 = v49;
  (*(v48 + 16))(v47, v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v54, v49);

  v35 = v50;
  MusicLibrarySection.items.getter();
  (*(v32 + 8))(v33, v34);
  sub_100020674(&unk_10118C250, &qword_10118D0B0);
  v36 = v52;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v37 = dispatch thunk of Collection.distance(from:to:)();
  (*(v51 + 8))(v35, v36);
  return v37;
}

unint64_t sub_1007CBCEC(uint64_t a1)
{
  v114 = sub_10010FC20(&qword_10118D0B0);
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = v95 - v2;
  v3 = sub_10010FC20(&unk_10118D0C0);
  v108 = *(v3 - 8);
  v109 = v3;
  __chkstk_darwin(v3);
  v107 = v95 - v4;
  v5 = sub_10010FC20(&unk_1011A3860);
  __chkstk_darwin(v5 - 8);
  v7 = v95 - v6;
  v8 = sub_10010FC20(&unk_10118D0D0);
  isa = *(v8 - 8);
  v118 = v8;
  __chkstk_darwin(v8);
  v10 = v95 - v9;
  v115 = type metadata accessor for MusicMovie();
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v106 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v110 = v95 - v13;
  v14 = sub_10010FC20(&qword_1011A3890);
  v104 = *(v14 - 8);
  v105 = v14;
  __chkstk_darwin(v14);
  v103 = v95 - v15;
  v102 = sub_10010FC20(&qword_1011A3898);
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v17 = v95 - v16;
  v18 = sub_10010FC20(&qword_1011A3870);
  __chkstk_darwin(v18 - 8);
  v20 = v95 - v19;
  v21 = sub_10010FC20(&qword_1011A3878);
  v116 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = v95 - v22;
  v101 = type metadata accessor for TVShow();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v25 = v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v95 - v27;
  v29 = sub_10010FC20(&unk_10118CDB0);
  v119 = *(v29 - 8);
  __chkstk_darwin(v29 - 8);
  v120 = v30;
  v121 = v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v123 = v95 - v32;
  v33 = type metadata accessor for IndexPath();
  __chkstk_darwin(v33);
  v40 = __chkstk_darwin(v34);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v97 = v35;
  v98 = v39;
  v122 = v38;
  v42 = *(v38 + 16);
  v41 = v38 + 16;
  v43 = *(v41 + 64);
  v95[1] = v41;
  v96 = v43;
  v124 = v37;
  v125 = v95 - v36;
  v95[0] = v42;
  v42(v40);
  if (v126[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context])
  {
    v44 = *&v126[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController];
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v7);

    v45 = sub_10010FC20(&qword_1011A3880);
    if ((*(*(v45 - 8) + 48))(v7, 1, v45) == 1)
    {
      sub_1000095E8(v7, &unk_1011A3860);
LABEL_18:
      (*(v122 + 8))(v125, v124);
      return 0;
    }

    v48 = isa;
    v47 = v118;
    (*(isa + 2))(v10, v7, v118);
    sub_1000095E8(v7, &qword_1011A3880);
    v49 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

    if (!v49)
    {
      (*(v48 + 1))(v10, v47);
      goto LABEL_18;
    }

    v50 = MusicLibrarySectionedResponse.sections.getter();
    (*(v48 + 1))(v10, v47);
    result = IndexPath.section.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v50 + 16))
      {
        v52 = v107;
        v53 = v108;
        v54 = v109;
        (*(v108 + 16))(v107, v50 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * result, v109);

        v55 = v111;
        MusicLibrarySection.items.getter();
        (*(v53 + 8))(v52, v54);
        v56 = v125;
        IndexPath.item.getter();
        v57 = v106;
        v58 = v114;
        MusicItemCollection.subscript.getter();
        (*(v112 + 8))(v55, v58);
        v59 = v113;
        v60 = v110;
        v61 = v115;
        (*(v113 + 32))(v110, v57, v115);
        v135 = v61;
        v136 = sub_1007CDB28(&unk_10118AB60, &type metadata accessor for MusicMovie);
        v62 = sub_10001C8B8(v134);
        (*(v59 + 16))(v62, v60, v61);
        v63 = sub_100246AB0();
        v64 = *(v44 + 48);
        swift_beginAccess();
        v65 = v64[4];
        v137[2] = v64[3];
        v137[3] = v65;
        v66 = v64[6];
        v137[4] = v64[5];
        v137[5] = v66;
        v67 = v64[2];
        v137[0] = v64[1];
        v137[1] = v67;
        v118 = v63;

        sub_1001103E0(v137, &v128);
        v68 = v123;
        sub_100108ED8(v123);
        sub_100110418(v137);
        (*(v59 + 8))(v60, v61);
LABEL_15:
        v81 = v96;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v82 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100008FE4(v134, v127);
        v83 = v121;
        sub_1000089F8(v68, v121, &unk_10118CDB0);
        v84 = v98;
        v85 = v56;
        v86 = v124;
        (v95[0])(v98, v85, v124);
        v87 = (*(v119 + 80) + 64) & ~*(v119 + 80);
        v88 = (v120 + v81 + v87) & ~v81;
        v89 = swift_allocObject();
        *(v89 + 16) = v82;
        sub_100059A8C(v127, v89 + 24);
        sub_10003D17C(v83, v89 + v87, &unk_10118CDB0);
        v90 = v122;
        (*(v122 + 32))(v89 + v88, v84, v86);
        v126 = objc_opt_self();
        v132 = sub_100218654;
        v133 = v118;
        v128 = _NSConcreteStackBlock;
        v129 = 1107296256;
        v130 = sub_100747E6C;
        v131 = &unk_1010C0080;
        v91 = _Block_copy(&v128);

        v132 = sub_1007CD804;
        v133 = v89;
        v128 = _NSConcreteStackBlock;
        v129 = 1107296256;
        v130 = sub_100747EBC;
        v131 = &unk_1010C00A8;
        v92 = _Block_copy(&v128);

        v93 = isa;
        v94 = [v126 configurationWithIdentifier:isa previewProvider:v91 actionProvider:v92];

        _Block_release(v92);
        _Block_release(v91);

        sub_1000095E8(v123, &unk_10118CDB0);
        (*(v90 + 8))(v125, v124);
        sub_10000959C(v134);

        return v94;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v20);

  v46 = sub_10010FC20(&qword_1011A3888);
  if ((*(*(v46 - 8) + 48))(v20, 1, v46) == 1)
  {
    sub_1000095E8(v20, &qword_1011A3870);
    goto LABEL_18;
  }

  v69 = v116;
  (*(v116 + 16))(v23, v20, v21);
  sub_1000095E8(v20, &qword_1011A3888);
  v70 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

  if (!v70)
  {
    (*(v69 + 8))(v23, v21);
    goto LABEL_18;
  }

  v71 = MusicLibrarySectionedResponse.sections.getter();
  (*(v69 + 8))(v23, v21);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if (result < *(v71 + 16))
  {
    v72 = v100;
    v73 = v102;
    (*(v100 + 16))(v17, v71 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * result, v102);

    v74 = v103;
    MusicLibrarySection.items.getter();
    (*(v72 + 8))(v17, v73);
    v56 = v125;
    IndexPath.item.getter();
    v75 = v105;
    MusicItemCollection.subscript.getter();
    (*(v104 + 8))(v74, v75);
    v76 = v99;
    v77 = v101;
    (*(v99 + 32))(v28, v25, v101);
    v135 = v77;
    v136 = sub_1007CDB28(&qword_101181A60, &type metadata accessor for TVShow);
    v78 = sub_10001C8B8(v134);
    (*(v76 + 16))(v78, v28, v77);
    v79 = sub_10024A3CC();
    (*(v76 + 8))(v28, v77);
    v80 = type metadata accessor for MusicPlaybackIntentDescriptor();
    v68 = v123;
    (*(*(v80 - 8) + 56))(v123, 1, 1, v80);
    v118 = v79;

    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
  return result;
}