uint64_t sub_100256C28@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = type metadata accessor for Divider();
  v68 = *(v64 - 8);
  v4 = v68[8];
  __chkstk_darwin(v64);
  v67 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v61 - v7;
  v8 = *(a1 + 8) + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration;
  v9 = *(v8 + 48);
  v62 = a1;
  if (v9 == 1)
  {
    v66 = static VerticalAlignment.center.getter();
    LOBYTE(v138) = 1;
    sub_100257C00(a1, &v159);
    *&v131[16] = v161;
    *&v131[32] = v162;
    *&v131[48] = v163;
    *v131 = v160;
    v130 = v159;
    *&v134[16] = v161;
    *&v134[32] = v162;
    *&v134[48] = v163;
    *v134 = v160;
    v133 = v159;
    sub_1001AC934(&v130, &v146, &qword_100379598, &qword_1002F4720);
    sub_1001AC99C(&v133, &qword_100379598, &qword_1002F4720);
    *&v77[23] = *v131;
    *&v77[39] = *&v131[16];
    *&v77[55] = *&v131[32];
    *&v77[71] = *&v131[48];
    *&v77[7] = v130;
    v10 = v138;
    v11 = static VerticalAlignment.center.getter();
    LOBYTE(v138) = 1;
    sub_100257E28(a1, &v159);
    v89 = v161;
    v90 = v162;
    v91 = v163;
    v87 = v159;
    v88 = v160;
    v101[1] = v161;
    v101[2] = v162;
    v101[3] = v163;
    v101[0] = v160;
    v100 = v159;
    sub_1001AC934(&v87, &v146, &qword_100379598, &qword_1002F4720);
    sub_1001AC99C(&v100, &qword_100379598, &qword_1002F4720);
    *&v76[23] = v88;
    *&v76[39] = v89;
    *&v76[55] = v90;
    *&v76[71] = v91;
    *&v76[7] = v87;
    v12 = v66;
    v122 = v66;
    LOBYTE(v123[0]) = v10;
    *(v123 + 1) = *v77;
    *(&v123[1] + 1) = *&v77[16];
    *&v123[5] = *&v77[79];
    *(&v123[4] + 1) = *&v77[64];
    *(&v123[3] + 1) = *&v77[48];
    *(&v123[2] + 1) = *&v77[32];
    v69 = v66;
    v70 = v123[0];
    v73 = v123[3];
    v74 = v123[4];
    v71 = v123[1];
    v72 = v123[2];
    v124 = v11;
    LOBYTE(v125[0]) = v138;
    *(v125 + 1) = *v76;
    *(&v125[1] + 1) = *&v76[16];
    *&v125[5] = *(&v91 + 1);
    *(&v125[4] + 1) = *&v76[64];
    *(&v125[3] + 1) = *&v76[48];
    *(&v125[2] + 1) = *&v76[32];
    *(&v75[2] + 8) = v125[1];
    *(&v75[1] + 8) = v125[0];
    *(v75 + 8) = v11;
    *(&v75[5] + 8) = v125[4];
    *(&v75[4] + 8) = v125[3];
    *(&v75[3] + 8) = v125[2];
    *(&v137[1] + 1) = *&v76[16];
    *(v137 + 1) = *v76;
    *&v75[0] = *&v123[5];
    *(&v75[6] + 1) = *&v125[5];
    v136 = v11;
    LOBYTE(v137[0]) = v138;
    *&v137[5] = *(&v91 + 1);
    *(&v137[4] + 1) = *&v76[64];
    *(&v137[3] + 1) = *&v76[48];
    *(&v137[2] + 1) = *&v76[32];
    sub_1001AC934(&v122, &v159, &qword_100379558, &unk_1002F46B8);
    sub_1001AC934(&v124, &v159, &qword_100379558, &unk_1002F46B8);
    sub_1001AC99C(&v136, &qword_100379558, &unk_1002F46B8);
    v138 = v12;
    LOBYTE(v139[0]) = v10;
    *(&v139[2] + 1) = *&v77[32];
    *(&v139[3] + 1) = *&v77[48];
    *(&v139[4] + 1) = *&v77[64];
    *&v139[5] = *&v77[79];
    *(v139 + 1) = *v77;
    *(&v139[1] + 1) = *&v77[16];
    sub_1001AC99C(&v138, &qword_100379558, &unk_1002F46B8);
    v156 = v75[4];
    v157 = v75[5];
    v158 = v75[6];
    v152 = v75[0];
    v153 = v75[1];
    v155 = v75[3];
    v154 = v75[2];
    v148 = v71;
    v149 = v72;
    v151 = v74;
    v150 = v73;
    v147 = v70;
    v146 = v69;
    nullsub_1(&v146);
    v169 = v156;
    v170 = v157;
    v171 = v158;
    v165 = v152;
    v166 = v153;
    v168 = v155;
    v167 = v154;
    v161 = v148;
    v162 = v149;
    v164 = v151;
    v163 = v150;
    v160 = v147;
    v159 = v146;
  }

  else
  {
    sub_10025BD08(&v159);
  }

  if (*(v8 + 49) == 1)
  {
    v66 = static VerticalAlignment.center.getter();
    LOBYTE(v136) = 1;
    v13 = v62;
    sub_100257FEC(v62, &v146);
    v129[1] = v148;
    v129[2] = v149;
    v129[3] = v150;
    v129[0] = v147;
    v128 = v146;
    *&v131[16] = v148;
    *&v131[32] = v149;
    *&v131[48] = v150;
    *v131 = v147;
    v130 = v146;
    sub_1001AC934(&v128, &v138, &qword_100379598, &qword_1002F4720);
    sub_1001AC99C(&v130, &qword_100379598, &qword_1002F4720);
    *&v86[23] = v129[0];
    *&v86[39] = v129[1];
    *&v86[55] = v129[2];
    *&v86[71] = v129[3];
    *&v86[7] = v128;
    v14 = v136;
    v15 = static VerticalAlignment.center.getter();
    LOBYTE(v136) = 1;
    sub_100258214(v13, &v146);
    *&v134[16] = v148;
    *&v134[32] = v149;
    *&v134[48] = v150;
    *v134 = v147;
    v133 = v146;
    v89 = v148;
    v90 = v149;
    v91 = v150;
    v87 = v146;
    v88 = v147;
    sub_1001AC934(&v133, &v138, &qword_100379598, &qword_1002F4720);
    sub_1001AC99C(&v87, &qword_100379598, &qword_1002F4720);
    *&v85[23] = *v134;
    *&v85[39] = *&v134[16];
    *&v85[55] = *&v134[32];
    *&v85[71] = *&v134[48];
    *&v85[7] = v133;
    v16 = v66;
    v100 = v66;
    LOBYTE(v101[0]) = v14;
    *(v101 + 1) = *v86;
    *(&v101[1] + 1) = *&v86[16];
    *&v101[5] = *&v86[79];
    *(&v101[4] + 1) = *&v86[64];
    *(&v101[3] + 1) = *&v86[48];
    *(&v101[2] + 1) = *&v86[32];
    v78 = v66;
    v79 = v101[0];
    v82 = v101[3];
    v83 = v101[4];
    v80 = v101[1];
    v81 = v101[2];
    v122 = v15;
    LOBYTE(v123[0]) = v136;
    *(v123 + 1) = *v85;
    *(&v123[1] + 1) = *&v85[16];
    *&v123[5] = *&v134[56];
    *(&v123[4] + 1) = *&v85[64];
    *(&v123[3] + 1) = *&v85[48];
    *(&v123[2] + 1) = *&v85[32];
    *(&v84[2] + 8) = v123[1];
    *(&v84[1] + 8) = v123[0];
    *(v84 + 8) = v15;
    *(&v84[5] + 8) = v123[4];
    *(&v84[4] + 8) = v123[3];
    *(&v84[3] + 8) = v123[2];
    *(&v125[1] + 1) = *&v85[16];
    *(v125 + 1) = *v85;
    *&v84[0] = *&v101[5];
    *(&v84[6] + 1) = *&v123[5];
    v124 = v15;
    LOBYTE(v125[0]) = v136;
    *&v125[5] = *&v134[56];
    *(&v125[4] + 1) = *&v85[64];
    *(&v125[3] + 1) = *&v85[48];
    *(&v125[2] + 1) = *&v85[32];
    sub_1001AC934(&v100, &v146, &qword_100379558, &unk_1002F46B8);
    sub_1001AC934(&v122, &v146, &qword_100379558, &unk_1002F46B8);
    sub_1001AC99C(&v124, &qword_100379558, &unk_1002F46B8);
    v136 = v16;
    LOBYTE(v137[0]) = v14;
    *(&v137[2] + 1) = *&v86[32];
    *(&v137[3] + 1) = *&v86[48];
    *(&v137[4] + 1) = *&v86[64];
    *&v137[5] = *&v86[79];
    *(v137 + 1) = *v86;
    *(&v137[1] + 1) = *&v86[16];
    sub_1001AC99C(&v136, &qword_100379558, &unk_1002F46B8);
    v143 = v84[4];
    v144 = v84[5];
    v145 = v84[6];
    v139[5] = v84[0];
    v140 = v84[1];
    v142 = v84[3];
    v141 = v84[2];
    v139[1] = v80;
    v139[2] = v81;
    v139[4] = v83;
    v139[3] = v82;
    v139[0] = v79;
    v138 = v78;
    nullsub_1(&v138);
    v156 = v143;
    v157 = v144;
    v158 = v145;
    v152 = v139[5];
    v153 = v140;
    v155 = v142;
    v154 = v141;
    v148 = v139[1];
    v149 = v139[2];
    v151 = v139[4];
    v150 = v139[3];
    v147 = v139[0];
    v146 = v138;
  }

  else
  {
    sub_10025BD08(&v146);
    v13 = v62;
  }

  v17 = v63;
  Divider.init()();
  v66 = static VerticalAlignment.center.getter();
  LOBYTE(v124) = 1;
  sub_1002583D8(v13, &v138);
  v112 = v139[1];
  v113 = v139[2];
  v114 = v139[3];
  v111 = v139[0];
  v110 = v138;
  v115[2] = v139[1];
  v115[3] = v139[2];
  v115[4] = v139[3];
  v115[1] = v139[0];
  v115[0] = v138;
  sub_1001AC934(&v110, &v136, &qword_100379598, &qword_1002F4720);
  sub_1001AC99C(v115, &qword_100379598, &qword_1002F4720);
  *&v109[23] = v111;
  *&v109[39] = v112;
  *&v109[55] = v113;
  *&v109[71] = v114;
  *&v109[7] = v110;
  v65 = v124;
  v61 = static VerticalAlignment.center.getter();
  LOBYTE(v124) = 1;
  sub_100258678(v13, &v138);
  v118 = v139[1];
  v119 = v139[2];
  v120 = v139[3];
  v117 = v139[0];
  v116 = v138;
  v121[2] = v139[1];
  v121[3] = v139[2];
  v121[4] = v139[3];
  v121[1] = v139[0];
  v121[0] = v138;
  sub_1001AC934(&v116, &v136, &qword_100379598, &qword_1002F4720);
  sub_1001AC99C(v121, &qword_100379598, &qword_1002F4720);
  *&v108[23] = v117;
  *&v108[39] = v118;
  *&v108[55] = v119;
  *&v108[71] = v120;
  *&v108[7] = v116;
  LODWORD(v62) = v124;
  v105 = v169;
  v106 = v170;
  v107 = v171;
  v101[5] = v165;
  v102 = v166;
  v104 = v168;
  v103 = v167;
  v101[1] = v161;
  v101[2] = v162;
  v101[4] = v164;
  v101[3] = v163;
  v101[0] = v160;
  v100 = v159;
  v97 = v156;
  v98 = v157;
  v99 = v158;
  v93 = v152;
  v94 = v153;
  v95 = v154;
  v96 = v155;
  v89 = v148;
  v90 = v149;
  v91 = v150;
  v92 = v151;
  v87 = v146;
  v88 = v147;
  v18 = v67;
  v19 = v68[2];
  v20 = v64;
  v19(v67, v17, v64);
  v21 = v106;
  v123[9] = v105;
  v123[10] = v106;
  v22 = v107;
  v123[11] = v107;
  v23 = v101[5];
  v24 = v102;
  v123[5] = v101[5];
  v123[6] = v102;
  v25 = v104;
  v26 = v103;
  v123[8] = v104;
  v123[7] = v103;
  v27 = v101[1];
  v28 = v101[2];
  v123[1] = v101[1];
  v123[2] = v101[2];
  v29 = v101[4];
  v30 = v101[3];
  v123[4] = v101[4];
  v123[3] = v101[3];
  v31 = v101[0];
  v32 = v100;
  v123[0] = v101[0];
  v122 = v100;
  *(a2 + 10) = v105;
  *(a2 + 11) = v21;
  *(a2 + 6) = v23;
  *(a2 + 7) = v24;
  *(a2 + 8) = v26;
  *(a2 + 9) = v25;
  *(a2 + 2) = v27;
  *(a2 + 3) = v28;
  *(a2 + 4) = v30;
  *(a2 + 5) = v29;
  *a2 = v32;
  *(a2 + 1) = v31;
  v33 = v97;
  v34 = v98;
  v125[9] = v97;
  v125[10] = v98;
  v35 = v99;
  v125[11] = v99;
  v36 = v93;
  v37 = v94;
  v125[5] = v93;
  v125[6] = v94;
  v38 = v95;
  v125[8] = v96;
  v125[7] = v95;
  v39 = v89;
  v40 = v90;
  v125[1] = v89;
  v125[2] = v90;
  v42 = v91;
  v41 = v92;
  v125[4] = v92;
  v125[3] = v91;
  v44 = v87;
  v43 = v88;
  v125[0] = v88;
  v124 = v87;
  *(a2 + 22) = v96;
  *(a2 + 23) = v33;
  *(a2 + 24) = v34;
  *(a2 + 25) = v35;
  *(a2 + 18) = v41;
  *(a2 + 19) = v36;
  *(a2 + 20) = v37;
  *(a2 + 21) = v38;
  *(a2 + 14) = v43;
  *(a2 + 15) = v39;
  *(a2 + 16) = v40;
  *(a2 + 17) = v42;
  *(a2 + 12) = v22;
  *(a2 + 13) = v44;
  v45 = sub_1001A551C(&qword_1003795A0, &qword_1002F4728);
  v19(&a2[v45[16]], v18, v20);
  v46 = &a2[v45[20]];
  v126[0] = v66;
  v126[1] = 0;
  v127[0] = v65;
  *&v127[1] = *v109;
  *&v127[17] = *&v109[16];
  *&v127[65] = *&v109[64];
  *&v127[80] = *&v109[79];
  *&v127[49] = *&v109[48];
  *&v127[33] = *&v109[32];
  v47 = *v127;
  *v46 = v66;
  *(v46 + 1) = v47;
  v48 = *&v127[16];
  v49 = *&v127[32];
  v50 = *&v127[48];
  v51 = *&v127[64];
  *(v46 + 12) = *&v127[80];
  *(v46 + 4) = v50;
  *(v46 + 5) = v51;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  v52 = &a2[v45[24]];
  v53 = v61;
  v128 = v61;
  LOBYTE(v45) = v62;
  LOBYTE(v129[0]) = v62;
  *(v129 + 1) = *v108;
  *(&v129[4] + 1) = *&v108[64];
  *&v129[5] = *&v108[79];
  *(&v129[1] + 1) = *&v108[16];
  *(&v129[3] + 1) = *&v108[48];
  *(&v129[2] + 1) = *&v108[32];
  v54 = v129[0];
  *v52 = v61;
  *(v52 + 1) = v54;
  v55 = v129[1];
  v56 = v129[2];
  v57 = v129[3];
  v58 = v129[4];
  *(v52 + 12) = *&v129[5];
  *(v52 + 4) = v57;
  *(v52 + 5) = v58;
  *(v52 + 2) = v55;
  *(v52 + 3) = v56;
  sub_1001AC934(&v122, &v138, &qword_1003795A8, &qword_1002F4730);
  sub_1001AC934(&v124, &v138, &qword_1003795A8, &qword_1002F4730);
  sub_1001AC934(v126, &v138, &qword_100379558, &unk_1002F46B8);
  sub_1001AC934(&v128, &v138, &qword_100379558, &unk_1002F46B8);
  v59 = v68[1];
  v59(v17, v20);
  *&v131[33] = *&v108[32];
  *&v131[49] = *&v108[48];
  *v132 = *&v108[64];
  *&v131[1] = *v108;
  v130 = v53;
  v131[0] = v45;
  *&v132[15] = *&v108[79];
  *&v131[17] = *&v108[16];
  sub_1001AC99C(&v130, &qword_100379558, &unk_1002F46B8);
  v133 = v66;
  v134[0] = v65;
  *&v134[33] = *&v109[32];
  *&v134[49] = *&v109[48];
  *v135 = *&v109[64];
  *&v135[15] = *&v109[79];
  *&v134[1] = *v109;
  *&v134[17] = *&v109[16];
  sub_1001AC99C(&v133, &qword_100379558, &unk_1002F46B8);
  v59(v67, v20);
  v137[9] = v97;
  v137[10] = v98;
  v137[11] = v99;
  v137[5] = v93;
  v137[6] = v94;
  v137[8] = v96;
  v137[7] = v95;
  v137[1] = v89;
  v137[2] = v90;
  v137[4] = v92;
  v137[3] = v91;
  v137[0] = v88;
  v136 = v87;
  sub_1001AC99C(&v136, &qword_1003795A8, &qword_1002F4730);
  v143 = v105;
  v144 = v106;
  v145 = v107;
  v139[5] = v101[5];
  v140 = v102;
  v142 = v104;
  v141 = v103;
  v139[1] = v101[1];
  v139[2] = v101[2];
  v139[4] = v101[4];
  v139[3] = v101[3];
  v139[0] = v101[0];
  v138 = v100;
  return sub_1001AC99C(&v138, &qword_1003795A8, &qword_1002F4730);
}

uint64_t sub_100257C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002EED40;
  v12 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1001C94F4();
  v14 = v13;

  *(v11 + 56) = &type metadata for Double;
  *(v11 + 64) = &protocol witness table for Double;
  *(v11 + 32) = v14;
  String.init(format:_:)();
  sub_1001A56A0();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v18 = v8 & 1;
  v24 = v8 & 1;
  v20 = v19 & 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v18;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v19 & 1;
  *(a2 + 72) = v21;
  sub_1001A5174(v4, v6, v18);

  sub_1001A5174(v15, v17, v20);

  sub_1001ACFEC(v15, v17, v20);

  sub_1001ACFEC(v4, v6, v24);
}

uint64_t sub_100257E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = sub_1001C98D0();
  v14 = v13;

  sub_10023B24C(v12, v14);
  sub_1001A56A0();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v18 = v8 & 1;
  v24 = v8 & 1;
  v20 = v19 & 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v18;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v19 & 1;
  *(a2 + 72) = v21;
  sub_1001A5174(v4, v6, v18);

  sub_1001A5174(v15, v17, v20);

  sub_1001ACFEC(v15, v17, v20);

  sub_1001ACFEC(v4, v6, v24);
}

uint64_t sub_100257FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002EED40;
  v12 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1001C950C();
  v14 = v13;

  *(v11 + 56) = &type metadata for Double;
  *(v11 + 64) = &protocol witness table for Double;
  *(v11 + 32) = v14;
  String.init(format:_:)();
  sub_1001A56A0();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v18 = v8 & 1;
  v24 = v8 & 1;
  v20 = v19 & 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v18;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v19 & 1;
  *(a2 + 72) = v21;
  sub_1001A5174(v4, v6, v18);

  sub_1001A5174(v15, v17, v20);

  sub_1001ACFEC(v15, v17, v20);

  sub_1001ACFEC(v4, v6, v24);
}

uint64_t sub_100258214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = sub_1001C9AA4();
  v14 = v13;

  sub_10023B24C(v12, v14);
  sub_1001A56A0();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v18 = v8 & 1;
  v24 = v8 & 1;
  v20 = v19 & 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v18;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v19 & 1;
  *(a2 + 72) = v21;
  sub_1001A5174(v4, v6, v18);

  sub_1001A5174(v15, v17, v20);

  sub_1001ACFEC(v15, v17, v20);

  sub_1001ACFEC(v4, v6, v24);
}

uint64_t sub_1002583D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
  v14 = *(a1 + 8) + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration;
  v15._countAndFlagsBits = sub_10023E8AC(*(v14 + 26));
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v15);

  v16._countAndFlagsBits = 10272;
  v16._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
  v17 = qword_1002F4748[*(v14 + 26)];
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1002EED40;
  *(v18 + 56) = &type metadata for Int;
  *(v18 + 64) = &protocol witness table for Int;
  *(v18 + 32) = v17;
  v19._countAndFlagsBits = String.init(format:_:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v19);

  v20._countAndFlagsBits = 41;
  v20._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v20);
  LocalizedStringKey.init(stringInterpolation:)();
  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  v24 = v10 & 1;
  v29 = v10 & 1;
  v26 = v25 & 1;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v24;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  *(a2 + 64) = v25 & 1;
  *(a2 + 72) = v27;
  sub_1001A5174(v6, v8, v24);

  sub_1001A5174(v21, v23, v26);

  sub_1001ACFEC(v21, v23, v26);

  sub_1001ACFEC(v6, v8, v29);
}

uint64_t sub_100258678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001A551C(&qword_1003795B0, &unk_1002F4738);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30[-v6];
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10020C7D4(v31, v7);

  v17 = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  if ((*(*(v17 - 8) + 48))(v7, 1, v17) == 1)
  {
    sub_1001AC99C(v7, &qword_1003795B0, &unk_1002F4738);
    v19 = *aPdpIp0;
    v18 = unk_100378060;
  }

  else
  {
    v20 = v7 + *(v17 + 48);
    v21 = (v20 + *(type metadata accessor for STransferMetrics() + 40));
    v19 = *v21;
    v18 = v21[1];

    sub_1001CBA60(v20);
  }

  v31 = v19;
  v32 = v18;
  sub_1001A56A0();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v25 = v12 & 1;
  LOBYTE(v31) = v12 & 1;
  v30[16] = v12 & 1;
  v30[8] = 1;
  v27 = v26 & 1;
  v30[0] = v26 & 1;
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v25;
  *(a2 + 24) = v14;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v22;
  *(a2 + 56) = v23;
  *(a2 + 64) = v26 & 1;
  *(a2 + 72) = v28;
  sub_1001A5174(v8, v10, v25);

  sub_1001A5174(v22, v24, v27);

  sub_1001ACFEC(v22, v24, v27);

  sub_1001ACFEC(v8, v10, v31);
}

uint64_t sub_100258994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SURLSessionRunningView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v24;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v24;
  v11 = v24[2];
  if (!v11)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v20 = v5;
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = a2;
  v12 = sub_100225B64(v11, 0);
  v13 = *(sub_1001A551C(&qword_1003772A0, &qword_1002F11B0) - 8);
  sub_1001FC59C(&v24, v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v11, v10);
  v15 = v14;

  sub_1001DD8F0();
  if (v15 == v11)
  {
    a1 = v22;
    v5 = v20;
    v7 = v21;
LABEL_5:
    v24 = v12;
    sub_100254914(&v24);

    swift_getKeyPath();
    sub_10025A0E0(a1, v7);
    v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v17 = swift_allocObject();
    sub_10025A144(v7, v17 + v16);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_10025BA84;
    *(v18 + 24) = v17;
    sub_1001A551C(&qword_100379510, &qword_1002F4688);
    sub_1001A551C(&qword_1003794F8, &qword_1002F45C0);
    sub_1001AD0C8(&qword_100379518, &qword_100379510, &qword_1002F4688);
    sub_1001AD0C8(&qword_1003794F0, &qword_1003794F8, &qword_1002F45C0);
    return ForEach<>.init(_:id:content:)();
  }

  __break(1u);

  __break(1u);
  return result;
}

int *sub_100258D38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_1001A551C(&qword_100379520, &qword_1002F4690);
  return sub_100258DA0(a1, a2 + *(v4 + 44));
}

int *sub_100258DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LinearProgressViewStyle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v49 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001A551C(&qword_100379528, &qword_1002F4698);
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = v40 - v10;
  v12 = sub_1001A551C(&qword_100379530, &qword_1002F46A0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v40 - v15;
  result = type metadata accessor for STransferMetrics();
  v18 = *(a1 + result[15]);
  v19 = *(a1 + result[14]);
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = result;
  v45 = v12;
  v46 = a2;
  v43 = v4;
  v44 = v13;
  v41 = v5;
  v42 = v16;
  if (!v21)
  {
    v26 = 0.0;
    goto LABEL_6;
  }

  v23 = *(a1 + result[13]);
  v24 = *(a1 + result[12]);
  v20 = __OFADD__(v23, v24);
  v25 = v23 + v24;
  if (v20)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v26 = v25 / v21;
LABEL_6:
  v40[1] = v40;
  v51 = v26;
  v52 = 0;
  __chkstk_darwin(result);
  __chkstk_darwin(v27);
  v50 = 0x3FF0000000000000;
  sub_1001A551C(&qword_100379538, &qword_1002F46A8);
  sub_1001A551C(&qword_100379540, &qword_1002F46B0);
  sub_10025BB84();
  sub_1001AD0C8(&qword_100379560, &qword_100379540, &qword_1002F46B0);
  sub_1001ACF98();
  ProgressView.init<A>(value:total:label:currentValueLabel:)();
  v28 = v49;
  LinearProgressViewStyle.init()();
  sub_1001AD0C8(&qword_100379568, &qword_100379528, &qword_1002F4698);
  sub_10025BC68(&qword_100379570, &type metadata accessor for LinearProgressViewStyle);
  v30 = v42;
  v29 = v43;
  v31 = v48;
  View.progressViewStyle<A>(_:)();
  (*(v41 + 8))(v28, v29);
  (*(v47 + 8))(v11, v31);
  if (*(a1 + v22[16]))
  {
    v32 = static Color.red.getter();
    v34 = v44;
    v33 = v45;
  }

  else
  {
    v34 = v44;
    v33 = v45;
    if (*(a1 + v22[17]))
    {
      v35 = static Color.green.getter();
    }

    else
    {
      v35 = static Color.blue.getter();
    }

    v32 = v35;
  }

  KeyPath = swift_getKeyPath();
  v51 = *&v32;
  v37 = AnyShapeStyle.init<A>(_:)();
  v38 = v46;
  (*(v34 + 32))(v46, v30, v33);
  result = sub_1001A551C(&qword_100379578, &qword_1002F46F8);
  v39 = (v38 + result[9]);
  *v39 = KeyPath;
  v39[1] = v37;
  return result;
}

double sub_10025927C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v19 = 1;
  sub_10025939C(&v13, a1);
  v22 = v15;
  v23 = v16;
  v20 = v13;
  v21 = v14;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[1] = v14;
  v24 = v17;
  v25[0] = v13;
  sub_1001AC934(&v20, &v12, &qword_100379598, &qword_1002F4720);
  sub_1001AC99C(v25, &qword_100379598, &qword_1002F4720);
  *&v18[23] = v21;
  *&v18[39] = v22;
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[7] = v20;
  v5 = v19;
  v6 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v8 = *&v18[48];
  *(a2 + 49) = *&v18[32];
  *(a2 + 65) = v8;
  *(a2 + 81) = *&v18[64];
  result = *v18;
  v10 = *&v18[16];
  *(a2 + 17) = *v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  v11 = *&v18[79];
  *(a2 + 33) = v10;
  *(a2 + 96) = v11;
  *(a2 + 104) = KeyPath;
  *(a2 + 112) = v6;
  return result;
}

double sub_1002597B8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v27 = 1;
  sub_100259954(a1, &v14);
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v40[8] = v22;
  v40[9] = v23;
  v40[10] = v24;
  v40[11] = v25;
  v40[4] = v18;
  v40[5] = v19;
  v40[6] = v20;
  v40[7] = v21;
  v40[0] = v14;
  v40[1] = v15;
  v40[2] = v16;
  v40[3] = v17;
  sub_1001AC934(&v28, &v13, &qword_100379580, &qword_1002F4700);
  sub_1001AC99C(v40, &qword_100379580, &qword_1002F4700);
  *&v26[135] = v36;
  *&v26[151] = v37;
  *&v26[167] = v38;
  *&v26[183] = v39;
  *&v26[71] = v32;
  *&v26[87] = v33;
  *&v26[103] = v34;
  *&v26[119] = v35;
  *&v26[7] = v28;
  *&v26[23] = v29;
  *&v26[39] = v30;
  *&v26[55] = v31;
  v5 = *&v26[128];
  *(a2 + 161) = *&v26[144];
  v6 = *&v26[176];
  *(a2 + 177) = *&v26[160];
  *(a2 + 193) = v6;
  v7 = *&v26[64];
  *(a2 + 97) = *&v26[80];
  v8 = *&v26[112];
  *(a2 + 113) = *&v26[96];
  *(a2 + 129) = v8;
  *(a2 + 145) = v5;
  v9 = *v26;
  *(a2 + 33) = *&v26[16];
  result = *&v26[32];
  v11 = *&v26[48];
  *(a2 + 49) = *&v26[32];
  *(a2 + 65) = v11;
  *(a2 + 81) = v7;
  v12 = v27;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v12;
  *(a2 + 208) = *&v26[191];
  *(a2 + 17) = v9;
  return result;
}

uint64_t sub_100259954@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v28 = 1;
  sub_100259BB8(a1, &v31);
  v21 = *&v32[16];
  v22 = *&v32[32];
  v23 = *&v32[48];
  v24 = *&v32[64];
  v19 = v31;
  v20 = *v32;
  v25[2] = *&v32[16];
  v25[3] = *&v32[32];
  v25[4] = *&v32[48];
  v25[5] = *&v32[64];
  v25[0] = v31;
  v25[1] = *v32;
  sub_1001AC934(&v19, v29, &qword_100379588, &qword_1002F4708);
  sub_1001AC99C(v25, &qword_100379588, &qword_1002F4708);
  *&v18[39] = v21;
  *&v18[55] = v22;
  *&v18[71] = v23;
  *&v18[87] = v24;
  *&v18[7] = v19;
  *&v18[23] = v20;
  v5 = v28;
  v6 = static VerticalAlignment.center.getter();
  sub_100259E3C(&v31);
  v7 = v31;
  v8 = BYTE8(v31);
  v9 = *v32;
  v10 = v32[16];
  v11 = *&v32[24];
  v28 = 1;
  v27 = BYTE8(v31);
  v26 = v32[16];
  v29[0] = v4;
  v29[1] = 0;
  v30[0] = v5;
  *&v30[1] = *v18;
  *&v30[33] = *&v18[32];
  *&v30[17] = *&v18[16];
  *&v30[96] = *&v18[95];
  *&v30[81] = *&v18[80];
  *&v30[65] = *&v18[64];
  *&v30[49] = *&v18[48];
  v12 = *v30;
  v13 = *&v30[32];
  *(a2 + 32) = *&v30[16];
  *(a2 + 48) = v13;
  *a2 = v4;
  *(a2 + 16) = v12;
  v14 = *&v30[48];
  v15 = *&v30[80];
  v16 = *&v30[96];
  *(a2 + 80) = *&v30[64];
  *(a2 + 96) = v15;
  *(a2 + 64) = v14;
  *(a2 + 112) = v16;
  *(a2 + 120) = v6;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  *(a2 + 144) = v7;
  *(a2 + 152) = v8;
  *(a2 + 160) = v9;
  *(a2 + 176) = v10;
  *(a2 + 184) = v11;
  sub_1001AC934(v29, &v31, &qword_100379590, &unk_1002F4710);
  sub_1001A5174(v9, *(&v9 + 1), v10);

  sub_1001ACFEC(v9, *(&v9 + 1), v10);

  *&v32[49] = *&v18[48];
  *&v32[65] = *&v18[64];
  *v33 = *&v18[80];
  *&v32[1] = *v18;
  *&v32[17] = *&v18[16];
  v31 = v4;
  v32[0] = v5;
  *&v33[15] = *&v18[95];
  *&v32[33] = *&v18[32];
  return sub_1001AC99C(&v31, &qword_100379590, &unk_1002F4710);
}

uint64_t sub_100259BB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10023B128(a1);
  sub_1001A56A0();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v28 = v7;
  v9 = v8;
  v10 = type metadata accessor for STransferMetrics();
  if (*(a1 + v10[16]))
  {
    static Color.red.getter();
  }

  else
  {
    static Color.primary.getter();
  }

  KeyPath = swift_getKeyPath();
  v12 = AnyShapeStyle.init<A>(_:)();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  result = swift_allocObject();
  *(result + 16) = xmmword_1002EED40;
  v14 = *(a1 + v10[13]);
  v15 = *(a1 + v10[12]);
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
  }

  else if ((v17 - 0x1000000000000000) >> 61 == 7)
  {
    v18 = result;
    v19 = (8 * v17);
    v20 = sub_1001C24B0();
    *(v18 + 56) = &type metadata for Double;
    *(v18 + 64) = &protocol witness table for Double;
    *(v18 + 32) = v19 / v20 / 1000000.0;
    String.init(format:_:)();
    v21 = Text.init<A>(_:)();
    v23 = v22;
    v24 = v21;
    v26 = v25 & 1;
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v28 & 1;
    *(a2 + 24) = v9;
    *(a2 + 32) = KeyPath;
    *(a2 + 40) = v12;
    *(a2 + 48) = 0;
    *(a2 + 56) = 1;
    *(a2 + 64) = v21;
    *(a2 + 72) = v22;
    *(a2 + 80) = v25 & 1;
    *(a2 + 88) = v27;
    sub_1001A5174(v4, v6, v28 & 1);

    sub_1001A5174(v24, v23, v26);

    sub_1001ACFEC(v24, v23, v26);

    sub_1001ACFEC(v4, v6, v28 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_100259E3C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  v5 = sub_1001C24B0();
  if (qword_100374F78 != -1)
  {
    swift_once();
  }

  v6 = [qword_100375E90 stringFromTimeInterval:v5];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    Double.write<A>(to:)();
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v11);

  v12._countAndFlagsBits = 0x64657370616C6520;
  v12._object = 0xE800000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
  LocalizedStringKey.init(stringInterpolation:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  v17 = v16 & 1;
  *(a1 + 32) = v16 & 1;
  *(a1 + 40) = v18;
  sub_1001A5174(v13, v14, v16 & 1);

  sub_1001ACFEC(v13, v15, v17);
}

uint64_t sub_10025A03C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10025A07C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10025A0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SURLSessionRunningView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10025A144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SURLSessionRunningView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10025A1A8()
{
  v2 = *(type metadata accessor for SURLSessionRunningView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001DD5F4;

  return sub_100255BD0(v0 + v3);
}

unint64_t sub_10025A27C()
{
  result = qword_100379438;
  if (!qword_100379438)
  {
    sub_1001A55C8(&qword_100379410, &qword_1002F4498);
    sub_10025A338();
    sub_10025BC68(&qword_100379450, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379438);
  }

  return result;
}

unint64_t sub_10025A338()
{
  result = qword_100379440;
  if (!qword_100379440)
  {
    sub_1001A55C8(&qword_100379430, &qword_1002F44B0);
    sub_1001AD0C8(&qword_100379448, &qword_100379428, &qword_1002F44A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379440);
  }

  return result;
}

uint64_t sub_10025A3F4()
{
  v1 = *(type metadata accessor for SURLSessionRunningView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100256634(v2);
}

uint64_t *sub_10025A454(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10025A4C0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_10025A4D4()
{
  result = qword_1003794A8;
  if (!qword_1003794A8)
  {
    sub_1001A55C8(&qword_100379480, &qword_1002F4500);
    sub_1001AD0C8(&qword_100379498, &qword_100379488, &qword_1002F4508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003794A8);
  }

  return result;
}

unint64_t sub_10025A584()
{
  result = qword_1003794B0;
  if (!qword_1003794B0)
  {
    sub_1001A55C8(&qword_100379468, &qword_1002F44E8);
    sub_1001AD0C8(&qword_100379498, &qword_100379488, &qword_1002F4508);
    sub_1001AD0C8(&qword_1003794A0, &qword_100379458, &qword_1002F44D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003794B0);
  }

  return result;
}

uint64_t sub_10025A668@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1001BF030(a1);
}

uint64_t sub_10025A670@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10025A69C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10025A6C8(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_10025A6F4(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

unint64_t sub_10025A728()
{
  result = qword_1003794E8;
  if (!qword_1003794E8)
  {
    sub_1001A55C8(&qword_1003794E0, &qword_1002F45B8);
    sub_1001AD0C8(&qword_1003794F0, &qword_1003794F8, &qword_1002F45C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003794E8);
  }

  return result;
}

void sub_10025A7E8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_1001A551C(&qword_1003772A0, &qword_1002F11B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10025AB70(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10025A92C(0, v2, 1, a1);
  }
}

void sub_10025A92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  v8 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v36 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v27 - v11);
  __chkstk_darwin(v13);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v34 = -v18;
    v35 = v17;
    v20 = a1 - a3;
    v28 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v32 = v19;
    v33 = a3;
    v30 = v21;
    v31 = v20;
    v22 = v20;
    while (1)
    {
      sub_1001AC934(v21, v16, &qword_1003772A0, &qword_1002F11B0);
      sub_1001AC934(v19, v12, &qword_1003772A0, &qword_1002F11B0);
      v23 = *v16;
      v24 = *v12;
      sub_1001AC99C(v12, &qword_1003772A0, &qword_1002F11B0);
      sub_1001AC99C(v16, &qword_1003772A0, &qword_1002F11B0);
      if (v23 >= v24)
      {
LABEL_4:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v20 = v31 - 1;
        v21 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v25 = v36;
      sub_100204FDC(v21, v36);
      swift_arrayInitWithTakeFrontToBack();
      sub_100204FDC(v25, v19);
      v19 += v34;
      v21 += v34;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10025AB70(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v108 = a1;
  v122 = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  v117 = *(v122 - 8);
  v8 = *(v117 + 64);
  __chkstk_darwin(v122);
  v112 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v121 = &v104 - v11;
  __chkstk_darwin(v12);
  v124 = (&v104 - v13);
  __chkstk_darwin(v14);
  v123 = (&v104 - v15);
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_97:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_129:
      v18 = sub_1001FA564(v18);
    }

    v125 = v18;
    v100 = *(v18 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v101 = *&v18[16 * v100];
        v102 = *&v18[16 * v100 + 24];
        sub_10025B450(*a3 + *(v117 + 72) * v101, *a3 + *(v117 + 72) * *&v18[16 * v100 + 16], *a3 + *(v117 + 72) * v102, a4);
        if (v5)
        {
          goto LABEL_107;
        }

        if (v102 < v101)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1001FA564(v18);
        }

        if (v100 - 2 >= *(v18 + 2))
        {
          goto LABEL_123;
        }

        v103 = &v18[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        v125 = v18;
        sub_1001FA4D8(v100 - 1);
        v18 = v125;
        v100 = *(v125 + 2);
        if (v100 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v105 = a4;
  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v109 = a3;
  while (1)
  {
    v19 = v17;
    if (v17 + 1 >= v16)
    {
      v29 = v17 + 1;
    }

    else
    {
      v118 = v16;
      v107 = v5;
      v20 = v17;
      v120 = *a3;
      v21 = v120;
      v22 = *(v117 + 72);
      a4 = v120 + v22 * (v17 + 1);
      v23 = v123;
      sub_1001AC934(a4, v123, &qword_1003772A0, &qword_1002F11B0);
      v24 = v21 + v22 * v20;
      v25 = v124;
      sub_1001AC934(v24, v124, &qword_1003772A0, &qword_1002F11B0);
      v26 = *v23;
      v115 = *v25;
      v116 = v26;
      sub_1001AC99C(v25, &qword_1003772A0, &qword_1002F11B0);
      sub_1001AC99C(v23, &qword_1003772A0, &qword_1002F11B0);
      v106 = v20;
      v27 = v20 + 2;
      v119 = v22;
      v28 = v120 + v22 * (v20 + 2);
      v114 = v18;
      while (1)
      {
        v29 = v118;
        if (v118 == v27)
        {
          break;
        }

        LODWORD(v120) = v116 < v115;
        v30 = v123;
        sub_1001AC934(v28, v123, &qword_1003772A0, &qword_1002F11B0);
        v31 = v124;
        sub_1001AC934(a4, v124, &qword_1003772A0, &qword_1002F11B0);
        v32 = *v30;
        v33 = *v31;
        sub_1001AC99C(v31, &qword_1003772A0, &qword_1002F11B0);
        sub_1001AC99C(v30, &qword_1003772A0, &qword_1002F11B0);
        v34 = v32 < v33;
        v18 = v114;
        v35 = !v34;
        ++v27;
        v28 += v119;
        a4 += v119;
        if (((v120 ^ v35) & 1) == 0)
        {
          v29 = v27 - 1;
          break;
        }
      }

      v19 = v106;
      v5 = v107;
      a3 = v109;
      if (v116 < v115)
      {
        if (v29 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v29)
        {
          v36 = v119 * (v29 - 1);
          v37 = v29 * v119;
          v38 = v29;
          v39 = v106;
          v40 = v106 * v119;
          do
          {
            if (v39 != --v38)
            {
              v41 = *v109;
              if (!*v109)
              {
                goto LABEL_132;
              }

              a4 = v41 + v40;
              sub_100204FDC(v41 + v40, v112);
              if (v40 < v36 || a4 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_100204FDC(v112, v41 + v36);
            }

            ++v39;
            v36 -= v119;
            v37 -= v119;
            v40 += v119;
          }

          while (v39 < v38);
          v19 = v106;
          v5 = v107;
          a3 = v109;
          v18 = v114;
        }
      }
    }

    v42 = a3[1];
    if (v29 < v42)
    {
      if (__OFSUB__(v29, v19))
      {
        goto LABEL_125;
      }

      if (v29 - v19 < v105)
      {
        if (__OFADD__(v19, v105))
        {
          goto LABEL_127;
        }

        if (v19 + v105 >= v42)
        {
          v43 = a3[1];
        }

        else
        {
          v43 = v19 + v105;
        }

        if (v43 < v19)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v29 != v43)
        {
          break;
        }
      }
    }

    v17 = v29;
    if (v29 < v19)
    {
      goto LABEL_124;
    }

LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1001FA578(0, *(v18 + 2) + 1, 1, v18);
    }

    v45 = *(v18 + 2);
    v44 = *(v18 + 3);
    a4 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v18 = sub_1001FA578((v44 > 1), v45 + 1, 1, v18);
    }

    *(v18 + 2) = a4;
    v46 = &v18[16 * v45];
    *(v46 + 4) = v19;
    *(v46 + 5) = v17;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (v45)
    {
      while (1)
      {
        v48 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v18 + 4);
          v50 = *(v18 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_55:
          if (v52)
          {
            goto LABEL_113;
          }

          v65 = &v18[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_116;
          }

          v71 = &v18[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_120;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = a4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v75 = &v18[16 * a4];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_69:
        if (v70)
        {
          goto LABEL_115;
        }

        v78 = &v18[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_118;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_76:
        v86 = v48 - 1;
        if (v48 - 1 >= a4)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        a4 = *&v18[16 * v86 + 32];
        v87 = *&v18[16 * v48 + 40];
        sub_10025B450(*a3 + *(v117 + 72) * a4, *a3 + *(v117 + 72) * *&v18[16 * v48 + 32], *a3 + *(v117 + 72) * v87, v47);
        if (v5)
        {
          goto LABEL_107;
        }

        if (v87 < a4)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1001FA564(v18);
        }

        if (v86 >= *(v18 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v18[16 * v86];
        *(v88 + 4) = a4;
        *(v88 + 5) = v87;
        v125 = v18;
        sub_1001FA4D8(v48);
        v18 = v125;
        a4 = *(v125 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v18[16 * a4 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_111;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_112;
      }

      v60 = &v18[16 * a4];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_114;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_117;
      }

      if (v64 >= v56)
      {
        v82 = &v18[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_121;
        }

        if (v51 < v85)
        {
          v48 = a4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v16 = a3[1];
    if (v17 >= v16)
    {
      goto LABEL_97;
    }
  }

  v114 = v18;
  v106 = v19;
  v107 = v5;
  v89 = *a3;
  v90 = *(v117 + 72);
  v91 = *a3 + v90 * (v29 - 1);
  v119 = -v90;
  v120 = v89;
  v92 = v19 - v29;
  v110 = v90;
  v111 = v43;
  a4 = v89 + v29 * v90;
LABEL_88:
  v118 = v29;
  v113 = a4;
  v115 = v92;
  v116 = v91;
  v93 = v91;
  while (1)
  {
    v94 = v123;
    sub_1001AC934(a4, v123, &qword_1003772A0, &qword_1002F11B0);
    v95 = v124;
    sub_1001AC934(v93, v124, &qword_1003772A0, &qword_1002F11B0);
    v96 = *v94;
    v97 = *v95;
    sub_1001AC99C(v95, &qword_1003772A0, &qword_1002F11B0);
    sub_1001AC99C(v94, &qword_1003772A0, &qword_1002F11B0);
    if (v96 >= v97)
    {
LABEL_87:
      v29 = v118 + 1;
      v17 = v111;
      v91 = v116 + v110;
      v92 = v115 - 1;
      a4 = v113 + v110;
      if (v118 + 1 != v111)
      {
        goto LABEL_88;
      }

      v19 = v106;
      v5 = v107;
      a3 = v109;
      v18 = v114;
      if (v111 < v106)
      {
        goto LABEL_124;
      }

      goto LABEL_36;
    }

    if (!v120)
    {
      break;
    }

    v98 = v121;
    sub_100204FDC(a4, v121);
    swift_arrayInitWithTakeFrontToBack();
    sub_100204FDC(v98, v93);
    v93 += v119;
    a4 += v119;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_87;
    }
  }

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
}

void sub_10025B450(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  v8 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v45 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v44 = (&v35 - v11);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_58;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_59;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v28 = a4 + v17;
      v38 = a1;
      v39 = a4;
      v37 = -v13;
      do
      {
        v35 = v26;
        v29 = a2 + v27;
        v40 = a2;
        v41 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v48 = a2;
            v46 = v35;
            goto LABEL_56;
          }

          v30 = a3;
          v36 = v26;
          a3 += v27;
          v31 = v28 + v27;
          v32 = v44;
          sub_1001AC934(v28 + v27, v44, &qword_1003772A0, &qword_1002F11B0);
          v33 = v45;
          sub_1001AC934(v29, v45, &qword_1003772A0, &qword_1002F11B0);
          v42 = *v32;
          v34 = *v33;
          sub_1001AC99C(v33, &qword_1003772A0, &qword_1002F11B0);
          sub_1001AC99C(v32, &qword_1003772A0, &qword_1002F11B0);
          if (v42 < v34)
          {
            break;
          }

          v26 = v28 + v27;
          if (v30 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v41;
            v27 = v37;
            a1 = v38;
          }

          else
          {
            v29 = v41;
            v27 = v37;
            a1 = v38;
            if (v30 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v31;
          a2 = v40;
          if (v31 <= v39)
          {
            goto LABEL_54;
          }
        }

        if (v30 < v40 || a3 >= v40)
        {
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v37;
          a1 = v38;
          v26 = v36;
        }

        else
        {
          a2 = v41;
          v27 = v37;
          a1 = v38;
          v26 = v36;
          if (v30 != v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v39);
    }

LABEL_54:
    v48 = a2;
    v46 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a3;
    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v40 = v13;
      do
      {
        v19 = v44;
        v20 = a2;
        sub_1001AC934(a2, v44, &qword_1003772A0, &qword_1002F11B0);
        v21 = v45;
        sub_1001AC934(a4, v45, &qword_1003772A0, &qword_1002F11B0);
        v22 = *v19;
        v23 = *v21;
        sub_1001AC99C(v21, &qword_1003772A0, &qword_1002F11B0);
        sub_1001AC99C(v19, &qword_1003772A0, &qword_1002F11B0);
        if (v22 >= v23)
        {
          v24 = v40;
          v25 = a4 + v40;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = v25;
          a4 += v24;
        }

        else
        {
          v24 = v40;
          a2 += v40;
          if (a1 < v20 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v24;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v41);
    }
  }

LABEL_56:
  sub_100252E64(&v48, &v47, &v46);
}

uint64_t sub_10025B950()
{
  v1 = (type metadata accessor for SURLSessionRunningView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = *(v0 + v3 + 48);

  v9 = v1[9];
  sub_1001A551C(&qword_1003755D0, &qword_1002F44C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DismissAction();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

int *sub_10025BA84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for SURLSessionRunningView() - 8) + 80);

  return sub_100258D38(a1, a2);
}

uint64_t sub_10025BB0C(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  return v4(v5, &a1[*(v6 + 48)]);
}

unint64_t sub_10025BB84()
{
  result = qword_100379548;
  if (!qword_100379548)
  {
    sub_1001A55C8(&qword_100379538, &qword_1002F46A8);
    sub_1001AD0C8(&qword_100379550, &qword_100379558, &unk_1002F46B8);
    sub_1001AD0C8(&qword_1003759D0, &qword_1003759D8, &qword_1002EFAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379548);
  }

  return result;
}

uint64_t sub_10025BC68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10025BCB0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10025BCDC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

double sub_10025BD08(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10025BD2C()
{
  sub_1001A55C8(&qword_100379410, &qword_1002F4498);
  sub_1001A55C8(&qword_100375260, &qword_1002EF058);
  sub_10025A27C();
  sub_1001AD0C8(&qword_100375270, &qword_100375260, &qword_1002EF058);
  return swift_getOpaqueTypeConformance2();
}

void sub_10025BE04(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10025BE6C(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10025BF7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10025BFC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10025C024()
{
  v1 = OBJC_IVAR____TtC11FTMInternal16PersistanceStore____lazy_storage___database;
  if (*(v0 + OBJC_IVAR____TtC11FTMInternal16PersistanceStore____lazy_storage___database))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal16PersistanceStore____lazy_storage___database);
LABEL_9:

    return v2;
  }

  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  if (qword_100375060 != -1)
  {
    swift_once();
  }

  if (databasePath.value._object)
  {
    v2 = sub_100267560();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;

    goto LABEL_9;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

char *sub_10025C1A4()
{
  v1 = OBJC_IVAR____TtC11FTMInternal16PersistanceStore____lazy_storage___coreTelephonyService;
  v2 = *&v0[OBJC_IVAR____TtC11FTMInternal16PersistanceStore____lazy_storage___coreTelephonyService];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11FTMInternal16PersistanceStore____lazy_storage___coreTelephonyService];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for CoreTelephonyService());
    v5 = v0;
    v6 = sub_1001E3A04(v0);
    v7 = *&v0[v1];
    *&v5[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_10025C220()
{
  v1 = OBJC_IVAR____TtC11FTMInternal16PersistanceStore____lazy_storage___metricService;
  v2 = *&v0[OBJC_IVAR____TtC11FTMInternal16PersistanceStore____lazy_storage___metricService];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11FTMInternal16PersistanceStore____lazy_storage___metricService];
LABEL_5:
    v11 = v2;
    return v3;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    objc_allocWithZone(type metadata accessor for MetricService());
    v6 = v0;
    v7 = v5;
    v8 = v0;
    v9 = sub_10023FA84(v6, v7);
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

char *sub_10025C2CC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC11FTMInternal16PersistanceStore____lazy_storage___database] = 0;
  v11 = &v3[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTime];
  Date.init()();
  v12 = sub_1001D530C();
  v14 = v13;
  v15 = *(v7 + 8);
  v15(v10, v6);
  *v11 = v12;
  v11[1] = v14;
  v16 = &v3[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTimeScellFirst];
  Date.init()();
  v17 = sub_1001D530C();
  v19 = v18;
  v15(v10, v6);
  *v16 = v17;
  v16[1] = v19;
  v20 = &v3[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTimeScellSecond];
  Date.init()();
  v21 = sub_1001D530C();
  v23 = v22;
  v15(v10, v6);
  *v20 = v21;
  v20[1] = v23;
  v24 = OBJC_IVAR____TtC11FTMInternal16PersistanceStore_group;
  *&v3[v24] = dispatch_group_create();
  v25 = OBJC_IVAR____TtC11FTMInternal16PersistanceStore_firstTimeDashboard;
  *&v3[v25] = dispatch_group_create();
  *&v3[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_storeDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC11FTMInternal16PersistanceStore____lazy_storage___coreTelephonyService] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal16PersistanceStore____lazy_storage___metricService] = 0;
  v26 = OBJC_IVAR____TtC11FTMInternal16PersistanceStore_timer;
  *&v3[v26] = [objc_allocWithZone(NSTimer) init];
  *&v3[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_hardwareManager] = a1;
  *&v3[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_aBMWrapper] = a2;
  v27 = type metadata accessor for PersistanceStore();
  v59.receiver = v3;
  v59.super_class = v27;

  v52 = a2;
  v28 = objc_msgSendSuper2(&v59, "init");
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v30 = v28;
  sub_10025E52C(sub_10025F20C, v29);

  v31 = objc_opt_self();
  v32 = [v31 defaultCenter];
  if (qword_100374FE0 != -1)
  {
    swift_once();
  }

  v33 = static NSNotificationName.NewABMMetric;
  v34 = swift_allocObject();
  *(v34 + 16) = v30;
  v57 = sub_10025F54C;
  v58 = v34;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10025BE6C;
  v56 = &unk_100320340;
  v35 = _Block_copy(&aBlock);
  v36 = v30;

  v37 = [v32 addObserverForName:v33 object:0 queue:0 usingBlock:v35];
  _Block_release(v35);
  swift_unknownObjectRelease();

  v38 = [v31 defaultCenter];
  if (qword_100374FE8 != -1)
  {
    swift_once();
  }

  v39 = static NSNotificationName.NewCTMetric;
  v40 = swift_allocObject();
  *(v40 + 16) = v36;
  v57 = sub_10025F22C;
  v58 = v40;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10025BE6C;
  v56 = &unk_100320390;
  v41 = _Block_copy(&aBlock);
  v42 = v36;

  v43 = [v38 addObserverForName:v39 object:0 queue:0 usingBlock:v41];
  _Block_release(v41);
  swift_unknownObjectRelease();

  v44 = objc_opt_self();
  v45 = swift_allocObject();
  *(v45 + 16) = v42;
  v57 = sub_10025F250;
  v58 = v45;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10025BE04;
  v56 = &unk_1003203E0;
  v46 = _Block_copy(&aBlock);
  v47 = v42;

  v48 = [v44 scheduledTimerWithTimeInterval:1 repeats:v46 block:900.0];

  _Block_release(v46);
  v49 = *&v47[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_timer];
  *&v47[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_timer] = v48;

  return v47;
}

uint64_t sub_10025C8A0(char a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_100374FC8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    sub_10025C024();
    sub_10025F698(sub_10025CA98, 0);
  }

  else
  {
    if (qword_100374FC8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1002EED40;
    if (a2)
    {
      swift_getErrorValue();
      Error.localizedDescription.getter();
    }

    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_1001A76E8();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t sub_10025CA98(char a1)
{
  if (a1)
  {
    if (qword_100374FC8 != -1)
    {
      swift_once();
    }
  }

  else if (qword_100374FC8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();

  return os_log(_:dso:log:type:_:)();
}

void sub_10025CB80()
{
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v0 = qword_100382508;
  sub_100212E50();

  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100382500 + 168);
  v21 = v1 - 1;
  if (v1 >= 1)
  {
    v2 = 0;
    while (1)
    {
      v4 = sub_10025C1A4();
      v5 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
      swift_beginAccess();
      v6 = *&v4[v5];
      v7 = *(v6 + 16);
      if (v7)
      {
        break;
      }

LABEL_8:
      if (v2++ == v21)
      {
        return;
      }
    }

    v25 = v4;
    v22 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client;

    v8 = 48;
    v23 = v6;
    v24 = v2;
    while (1)
    {
      v9 = *(v6 + v8);
      if (v9 == 1)
      {
        if (!v2)
        {
          goto LABEL_15;
        }
      }

      else if (v2 == 1)
      {
LABEL_15:
        if (qword_100374FA8 != -1)
        {
          swift_once();
        }

        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
        v10 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:v9];
        v11 = [v10 slotID];
        v12 = [v10 slotID];
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = swift_allocObject();
        v14[2] = v13;
        v14[3] = v11;
        v14[4] = v10;
        v15 = objc_allocWithZone(CTXPCServiceSubscriptionContext);
        v16 = v10;

        v17 = [v15 initWithSlot:v12];
        v18 = *&v25[v22];
        v19 = swift_allocObject();
        *(v19 + 16) = sub_10020372C;
        *(v19 + 24) = v14;
        aBlock[4] = sub_100203738;
        aBlock[5] = v19;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001F2210;
        aBlock[3] = &unk_100320480;
        v20 = _Block_copy(aBlock);

        [v18 copyCellInfo:v17 completion:v20];
        _Block_release(v20);

        v6 = v23;
        v2 = v24;
      }

      v8 += 224;
      if (!--v7)
      {

        goto LABEL_8;
      }
    }
  }
}

void sub_10025CF2C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTime);
  v7 = *(v0 + OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTime);
  v8 = *(v0 + OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTime + 8);

  v9 = sub_10020CACC();

  if (v9 > 29)
  {
    Date.init()();
    v10 = sub_1001D530C();
    v12 = v11;
    (*(v2 + 8))(v5, v1);
    v13 = v6[1];
    *v6 = v10;
    v6[1] = v12;

    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v14 = qword_100382508;
    sub_100211D70(1);

    v15 = sub_10025C1A4();
    v16 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
    swift_beginAccess();
    v17 = *&v15[v16];
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client;
      v20 = qword_100374FA8;

      if (v20 != -1)
      {
        swift_once();
      }

      v48[1] = v52;
      v48[2] = qword_100382490;
      v21 = 48;
      v50 = v17;
      do
      {
        v22 = *(v50 + v21);
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
        v23 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:v22];
        v24 = [v23 slotID];
        v25 = [v23 slotID];
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = swift_allocObject();
        v27[2] = v26;
        v27[3] = v24;
        v27[4] = v23;
        v28 = objc_allocWithZone(CTXPCServiceSubscriptionContext);
        v49 = v23;

        v29 = [v28 initWithSlot:v25];
        v30 = *&v15[v19];
        v31 = swift_allocObject();
        *(v31 + 16) = sub_1002050B8;
        *(v31 + 24) = v27;
        v52[2] = sub_100205088;
        v52[3] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v52[0] = sub_1001F2210;
        v52[1] = &unk_100320660;
        v32 = v15;
        v33 = _Block_copy(aBlock);

        [v30 copyCellInfo:v29 completion:v33];
        v34 = v33;
        v15 = v32;
        _Block_release(v34);

        v21 += 224;
        --v18;
      }

      while (v18);
    }

    else
    {
    }

    v35 = [objc_opt_self() sharedInstance];
    if (v35)
    {
      v36 = v35;
      v37 = String._bridgeToObjectiveC()();
      [v36 removeAWDConfigForAppid:v37];

      v38 = [objc_opt_self() mainBundle];
      if (qword_100375018 != -1)
      {
        swift_once();
      }

      v39 = qword_100382500;
      v40 = *(qword_100382500 + 176);
      v41 = *(qword_100382500 + 184);

      v42 = String._bridgeToObjectiveC()();

      v43 = String._bridgeToObjectiveC()();
      v44 = [v38 pathForResource:v42 ofType:v43];

      if (v44)
      {
        v45 = String._bridgeToObjectiveC()();
        v46 = [v36 addAWDConfigForAppId:v45 andProtofFilePath:v44];

        if (v46)
        {
          [v36 listen];
          v47 = String._bridgeToObjectiveC()();
          [v36 querySpecificMetric:v47 triggerRef:9999 triggerType:0 triggerID:*(v39 + 192) profileID:0 metricID:0];
        }
      }

      else
      {
        if (qword_100374F98 != -1)
        {
          swift_once();
        }

        static os_log_type_t.error.getter();
        os_log(_:dso:log:type:_:)();
      }
    }
  }

  else
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();

    os_log(_:dso:log:type:_:)();
  }
}

void sub_10025D620(char a1)
{
  LOBYTE(v2) = a1;
  v3 = type metadata accessor for Date();
  v121 = *(v3 - 1);
  v4 = *(v121 + 64);
  __chkstk_darwin(v3);
  v6 = v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v1[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTimeScellFirst];
  v8 = *&v1[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTimeScellFirst];
  v9 = *&v1[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTimeScellFirst + 8];

  KeyPath = sub_10020CACC();

  v11 = &v1[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTimeScellSecond];
  v12 = *&v1[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTimeScellSecond];
  v13 = *&v1[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTimeScellSecond + 8];

  v14 = sub_10020CACC();

  if (qword_100375018 != -1)
  {
    goto LABEL_89;
  }

  while (2)
  {
    if (*(qword_100382500 + 160))
    {
      return;
    }

    v15 = *(qword_100382500 + 156);
    if (v2 == 2)
    {
      if (!v15 && KeyPath < 2)
      {
        goto LABEL_11;
      }

LABEL_10:
      if (v14 <= 1)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    if ((v2 & 1) == 0)
    {
      if (!v15 && KeyPath <= 1)
      {
LABEL_11:
        if (qword_100374FA8 != -1)
        {
          goto LABEL_96;
        }

        goto LABEL_12;
      }

      goto LABEL_10;
    }

LABEL_15:
    v120 = v1;
    v16 = v15;
    Date.init()();
    v17 = sub_1001D530C();
    v19 = v18;
    (*(v121 + 8))(v6, v3);
    v121 = v16;
    if (v16)
    {
      v20 = v11;
    }

    else
    {
      v20 = v7;
    }

    v21 = v20[1];
    *v20 = v17;
    v20[1] = v19;

    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v7 = &unk_100382000;
    v3 = qword_100382508;
    v14 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
    swift_beginAccess();
    v1 = *&v3[v14];
    KeyPath = *(v1 + 2);
    if (!KeyPath)
    {
LABEL_31:
      v24 = v3;
      v6 = KeyPath;
      goto LABEL_32;
    }

    v22 = 0;
    v2 = v124;
    v11 = 264;
    while (1)
    {
      if (v1[v11 - 208] != 1)
      {
        if (*&v1[v11 - 216] == v121)
        {
          break;
        }

        goto LABEL_23;
      }

      if (v121 == -1)
      {
        break;
      }

LABEL_23:
      ++v22;
      v11 += 208;
      if (KeyPath == v22)
      {
        goto LABEL_31;
      }
    }

    v6 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_98;
    }

    v23 = v3;
    if (v6 == KeyPath)
    {
      v6 = KeyPath;
LABEL_29:
      KeyPath = v22;
      if (v6 < v22)
      {
        __break(1u);
        goto LABEL_31;
      }

LABEL_32:
      sub_1001FCA28(KeyPath, v6);
      swift_endAccess();
      sub_10020D3C0(1);
      v25 = *&v3[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_neighbourCellStateObj];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v26 = v125[0];
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      v125[0] = (v26 & 1) == 0;

      static Published.subscript.setter();

      v27 = qword_100382508;
      v2 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell;
      swift_beginAccess();
      v1 = *&v27[v2];
      v6 = *(v1 + 2);
      if (!v6)
      {
        goto LABEL_43;
      }

      v14 = 0;
      v11 = 328;
      while (1)
      {
        if (v1[v11 - 272] == 1)
        {
          if (v121 == -1)
          {
LABEL_38:
            v3 = (v14 + 1);
            if (!__OFADD__(v14, 1))
            {
              v28 = v27;
              if (v3 == v6)
              {
                v3 = v6;
LABEL_41:
                v6 = v14;
                if (v3 < v14)
                {
                  __break(1u);
LABEL_43:
                  v29 = v27;
                  v3 = v6;
                }

                sub_1001FCC2C(v6, v3);
                swift_endAccess();
                v30 = *&v27[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCellStateObj];
                swift_getKeyPath();
                swift_getKeyPath();
                static Published.subscript.getter();

                v31 = v125[0];
                swift_getKeyPath();
                swift_getKeyPath();
                v125[0] = (v31 & 1) == 0;

                static Published.subscript.setter();

                v32 = sub_10025C1A4();
                v33 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
                swift_beginAccess();
                v120 = v32;
                v34 = *&v32[v33];
                v35 = *(v34 + 16);
                if (!v35)
                {

                  return;
                }

                v117[1] = &v125[16];
                v118 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client;

                v36 = 48;
                v37 = v121;
                v119 = v34;
                while (2)
                {
                  v38 = *(v34 + v36);
                  if (v38 == 1)
                  {
                    if (!v37)
                    {
                      goto LABEL_50;
                    }
                  }

                  else if (v37 == 1)
                  {
LABEL_50:
                    if (qword_100374FA8 != -1)
                    {
                      swift_once();
                    }

                    static os_log_type_t.default.getter();
                    os_log(_:dso:log:type:_:)();
                    v39 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:v38];
                    v40 = [v39 slotID];
                    v41 = [v39 slotID];
                    v42 = swift_allocObject();
                    v43 = v120;
                    swift_unknownObjectWeakInit();
                    v44 = swift_allocObject();
                    v44[2] = v42;
                    v44[3] = v40;
                    v44[4] = v39;
                    v45 = objc_allocWithZone(CTXPCServiceSubscriptionContext);
                    v46 = v39;

                    v47 = [v45 initWithSlot:v41];
                    v48 = *&v43[v118];
                    v49 = swift_allocObject();
                    *(v49 + 16) = sub_1002050B8;
                    *(v49 + 24) = v44;
                    *&v125[32] = sub_100205088;
                    *&v125[40] = v49;
                    *v125 = _NSConcreteStackBlock;
                    *&v125[8] = 1107296256;
                    *&v125[16] = sub_1001F2210;
                    *&v125[24] = &unk_1003205E8;
                    v50 = _Block_copy(v125);

                    [v48 copyCellInfo:v47 completion:v50];
                    _Block_release(v50);

                    v37 = v121;
                    v34 = v119;
                  }

                  v36 += 224;
                  if (!--v35)
                  {

                    return;
                  }

                  continue;
                }
              }

              v7 = 296;
              v114 = v121;
              while (2)
              {
                if (v3 >= v6)
                {
                  goto LABEL_88;
                }

                KeyPath = &v1[v11];
                if (v1[v11 + 24] == 1)
                {
                  if (v114 == -1)
                  {
LABEL_74:
                    ++v3;
                    v6 = *(v1 + 2);
                    v11 += 296;
                    if (v3 == v6)
                    {
                      goto LABEL_41;
                    }

                    continue;
                  }
                }

                else if (*(KeyPath + 16) == v114)
                {
                  goto LABEL_74;
                }

                break;
              }

              if (v3 != v14)
              {
                if (v14 >= v6)
                {
                  goto LABEL_93;
                }

                memcpy(v124, &v1[296 * v14 + 32], 0x121uLL);
                memcpy(v125, &v1[v11], sizeof(v125));
                sub_1001DFAB0(v124, v123);
                sub_1001DFAB0(v125, v123);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v27[v2] = v1;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v1 = sub_1001FA730(v1);
                  *&v27[v2] = v1;
                }

                if (v14 >= *(v1 + 2))
                {
                  goto LABEL_94;
                }

                v116 = &v1[296 * v14];
                memcpy(v122, v116 + 32, 0x121uLL);
                memcpy(v116 + 32, v125, 0x121uLL);
                sub_1001DFB0C(v122);
                *&v27[v2] = v1;
                if (v3 >= *(v1 + 2))
                {
                  goto LABEL_95;
                }

                memcpy(v123, &v1[v11], 0x121uLL);
                memcpy(&v1[v11], v124, 0x121uLL);
                sub_1001DFB0C(v123);
                *&v27[v2] = v1;
                v114 = v121;
              }

              ++v14;
              goto LABEL_74;
            }

LABEL_98:
            __break(1u);
            return;
          }
        }

        else if (*&v1[v11 - 280] == v121)
        {
          goto LABEL_38;
        }

        ++v14;
        v11 += 296;
        if (v6 == v14)
        {
          goto LABEL_43;
        }
      }
    }

    v51 = v121;
LABEL_60:
    if (v6 >= KeyPath)
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      swift_once();
      continue;
    }

    break;
  }

  v71 = &v1[v11];
  if (v1[v11] == 1)
  {
    if (v51 == -1)
    {
LABEL_59:
      ++v6;
      KeyPath = *(v1 + 2);
      v11 += 208;
      if (v6 == KeyPath)
      {
        goto LABEL_29;
      }

      goto LABEL_60;
    }
  }

  else if (*(v71 - 1) == v51)
  {
    goto LABEL_59;
  }

  if (v6 == v22)
  {
LABEL_58:
    ++v22;
    goto LABEL_59;
  }

  if (v22 < KeyPath)
  {
    v72 = 208 * v22;
    v73 = &v1[208 * v22 + 32];
    v124[0] = *v73;
    v74 = *(v73 + 1);
    v75 = *(v73 + 2);
    v76 = *(v73 + 4);
    v124[3] = *(v73 + 3);
    v124[4] = v76;
    v124[1] = v74;
    v124[2] = v75;
    v77 = *(v73 + 5);
    v78 = *(v73 + 6);
    v79 = *(v73 + 8);
    v124[7] = *(v73 + 7);
    v124[8] = v79;
    v124[5] = v77;
    v124[6] = v78;
    v80 = *(v73 + 9);
    v81 = *(v73 + 10);
    v82 = *(v73 + 11);
    *(&v124[11] + 9) = *(v73 + 185);
    v124[10] = v81;
    v124[11] = v82;
    v124[9] = v80;
    v84 = *(v71 - 24);
    v83 = v71 - 24;
    *v125 = v84;
    v85 = *(v83 + 1);
    v86 = *(v83 + 2);
    v87 = *(v83 + 4);
    *&v125[48] = *(v83 + 3);
    *&v125[64] = v87;
    *&v125[16] = v85;
    *&v125[32] = v86;
    v88 = *(v83 + 5);
    v89 = *(v83 + 6);
    v90 = *(v83 + 7);
    *&v125[128] = *(v83 + 8);
    *&v125[112] = v90;
    *&v125[96] = v89;
    *&v125[80] = v88;
    v91 = *(v83 + 9);
    v92 = *(v83 + 10);
    v93 = *(v83 + 11);
    *&v125[185] = *(v83 + 185);
    *&v125[176] = v93;
    *&v125[160] = v92;
    *&v125[144] = v91;
    sub_100201470(v124, v123);
    sub_100201470(v125, v123);
    v94 = swift_isUniquelyReferenced_nonNull_native();
    *&v3[v14] = v1;
    if ((v94 & 1) == 0)
    {
      v1 = sub_1001FA708(v1);
      *&v3[v14] = v1;
    }

    if (v22 >= *(v1 + 2))
    {
      goto LABEL_91;
    }

    v95 = &v1[v72];
    v122[0] = *&v1[v72 + 32];
    v96 = *&v1[v72 + 48];
    v97 = *&v1[v72 + 64];
    v98 = *&v1[v72 + 96];
    v122[3] = *&v1[v72 + 80];
    v122[4] = v98;
    v122[1] = v96;
    v122[2] = v97;
    v99 = *&v1[v72 + 112];
    v100 = *&v1[v72 + 128];
    v101 = *&v1[v72 + 160];
    v122[7] = *&v1[v72 + 144];
    v122[8] = v101;
    v122[5] = v99;
    v122[6] = v100;
    v102 = *&v1[v72 + 176];
    v103 = *&v1[v72 + 192];
    v104 = *&v1[v72 + 208];
    *(&v122[11] + 9) = *&v1[v72 + 217];
    v122[10] = v103;
    v122[11] = v104;
    v122[9] = v102;
    *(v95 + 2) = *v125;
    v105 = *&v125[16];
    v106 = *&v125[32];
    v107 = *&v125[64];
    *(v95 + 5) = *&v125[48];
    *(v95 + 6) = v107;
    *(v95 + 3) = v105;
    *(v95 + 4) = v106;
    v108 = *&v125[80];
    v109 = *&v125[96];
    v110 = *&v125[128];
    *(v95 + 9) = *&v125[112];
    *(v95 + 10) = v110;
    *(v95 + 7) = v108;
    *(v95 + 8) = v109;
    v111 = *&v125[144];
    v112 = *&v125[160];
    v113 = *&v125[176];
    *(v95 + 217) = *&v125[185];
    *(v95 + 12) = v112;
    *(v95 + 13) = v113;
    *(v95 + 11) = v111;
    sub_1002014CC(v122);
    *&v3[v14] = v1;
    if (v6 >= *(v1 + 2))
    {
      goto LABEL_92;
    }

    v52 = &v1[v11];
    v123[0] = *&v1[v11 - 24];
    v53 = *&v1[v11 - 8];
    v54 = *&v1[v11 + 8];
    v55 = *&v1[v11 + 40];
    v123[3] = *&v1[v11 + 24];
    v123[4] = v55;
    v123[1] = v53;
    v123[2] = v54;
    v56 = *&v1[v11 + 56];
    v57 = *&v1[v11 + 72];
    v58 = *&v1[v11 + 104];
    v123[7] = *&v1[v11 + 88];
    v123[8] = v58;
    v123[5] = v56;
    v123[6] = v57;
    v59 = *&v1[v11 + 120];
    v60 = *&v1[v11 + 136];
    v61 = *&v1[v11 + 152];
    *(&v123[11] + 9) = *&v1[v11 + 161];
    v123[10] = v60;
    v123[11] = v61;
    v123[9] = v59;
    *(v52 - 24) = v124[0];
    v62 = v124[1];
    v63 = v124[2];
    v64 = v124[3];
    *(v52 + 40) = v124[4];
    *(v52 + 24) = v64;
    *(v52 + 8) = v63;
    *(v52 - 8) = v62;
    v65 = v124[5];
    v66 = v124[6];
    v67 = v124[7];
    *(v52 + 104) = v124[8];
    *(v52 + 88) = v67;
    *(v52 + 72) = v66;
    *(v52 + 56) = v65;
    v68 = v124[9];
    v69 = v124[10];
    v70 = v124[11];
    *(v52 + 161) = *(&v124[11] + 9);
    *(v52 + 152) = v70;
    *(v52 + 136) = v69;
    *(v52 + 120) = v68;
    sub_1002014CC(v123);
    *&v3[v14] = v1;
    v51 = v121;
    goto LABEL_58;
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  swift_once();
LABEL_12:
  static os_log_type_t.default.getter();

  os_log(_:dso:log:type:_:)();
}

id sub_10025E2A4()
{
  [*&v0[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_timer] invalidate];
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = qword_100374FE0;
  v4 = v0;
  if (v3 != -1)
  {
    swift_once();
  }

  [v2 removeObserver:v4 name:static NSNotificationName.NewABMMetric object:0];

  v5 = [v1 defaultCenter];
  v6 = qword_100374FE8;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  [v5 removeObserver:v7 name:static NSNotificationName.NewCTMetric object:0];

  v9.receiver = v7;
  v9.super_class = type metadata accessor for PersistanceStore();
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t sub_10025E52C(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v25 - 8);
  v5 = *(v28 + 64);
  __chkstk_darwin(v25);
  v24 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC11FTMInternal16PersistanceStore_group);
  dispatch_group_enter(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  sub_10025C024();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;

  sub_10025F99C(0xD000000000000186, 0x80000001002BEB60, 0x325663697274654DLL, 0xE900000000000030, sub_10025F508, v14);

  dispatch_group_enter(v11);
  v15 = *(v2 + OBJC_IVAR____TtC11FTMInternal16PersistanceStore____lazy_storage___database);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v12;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;

  sub_10025F99C(0xD0000000000001B7, 0x80000001002BECF0, 0x72616F6268736144, 0xE900000000000064, sub_10025F2EC, v17);

  sub_1002181D0();
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  v19[2] = v12;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = sub_10025F34C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_100320570;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10025F358(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1002302F0();
  v22 = v24;
  v21 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v20);

  (*(v28 + 8))(v22, v21);
  (*(v26 + 8))(v10, v27);
}

void sub_10025E9EC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t))
{
  if (a1)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  else
  {
    if (a2)
    {
      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0xE000000000000000;
    }

    sub_10025F3A0();
    v10 = swift_allocError();
    *v11 = v7;
    *(v11 + 8) = v9;
    *(v11 + 16) = 1;
    a5(0, v10);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + OBJC_IVAR____TtC11FTMInternal16PersistanceStore_group);

    dispatch_group_leave(v14);
  }
}

uint64_t sub_10025EB20(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    return a2(1, 0);
  }

  sub_10025F3A0();
  v5 = swift_allocError();
  *v6 = xmmword_1002F2090;
  *(v6 + 16) = 1;
  a2(0, v5);
}

uint64_t sub_10025EBDC(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *a1;
    v5 = *(a1 + 8);
    v6 = *(result + 72) == *a1 && *(result + 80) == v5;
    if (v6 || (v7 = *a1, v8 = *(a1 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v9 = *(a1 + 16);
      v10 = *(a1 + 24);
      v11 = *(v3 + 88) == v9 && *(v3 + 96) == v10;
      if (v11 || (v12 = *(a1 + 16), v13 = *(a1 + 24), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v14 = *(v3 + 104);
        if (v14 == *(a1 + 32))
        {
          sub_10024DC84(v4, v5, v9, v10, v14);
          type metadata accessor for MetricDetailViewModel();
          sub_10025F358(&qword_100378F80, type metadata accessor for MetricDetailViewModel);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          *(v3 + 33) = 1;
        }
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10025ED3C()
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v1 = result;
    strcpy(&v8, "metricObject");
    BYTE13(v8) = 0;
    HIWORD(v8) = -5120;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v2 = sub_1001F6774(v6), (v3 & 1) != 0))
    {
      sub_1001A773C(*(v1 + 56) + 32 * v2, v7);
      sub_1002015DC(v6);

      result = swift_dynamicCast();
      if (result)
      {
        v8 = v4[0];
        v9 = v4[1];
        v10 = v5;
        sub_10025EBDC(&v8);
        v4[0] = v8;
        sub_100209DFC(v4);
        v6[0] = v9;
        return sub_100209DFC(v6);
      }
    }

    else
    {

      return sub_1002015DC(v6);
    }
  }

  return result;
}

uint64_t sub_10025EEB8(char a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = 1;
    a2 = 0;
  }

  else
  {
    v3 = 0;
  }

  return a3(v3, a2);
}

void sub_10025EF20(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (a1)
  {
    if (qword_100374F98 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v5 = [objc_opt_self() defaultCenter];
    v12 = v5;
    if (qword_100375008 != -1)
    {
      swift_once();
      v5 = v12;
    }

    [v5 postNotificationName:static NSNotificationName.dashboardMetricUpdate object:0 userInfo:0];
  }

  else
  {
    if (qword_100374F98 != -1)
    {
      v11 = a5;
      swift_once();
      a5 = v11;
    }

    a5();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1002EED40;
    if (a2)
    {
      swift_getErrorValue();
      Error.localizedDescription.getter();
    }

    sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1001A76E8();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t sub_10025F1D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10025F214(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10025F258()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10025F2A4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10025F30C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10025F358(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10025F3A0()
{
  result = qword_100379640;
  if (!qword_100379640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379640);
  }

  return result;
}

uint64_t sub_10025F408()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_10025F440(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10025F454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_10025F49C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10025F550(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10025F568(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10025F5BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_10025F618(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

Swift::String_optional *databasePath.unsafeMutableAddressor()
{
  if (qword_100375060 != -1)
  {
    swift_once();
  }

  return &databasePath;
}

uint64_t sub_10025F698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_100267120;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_100320A18;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100267F44(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_100232FC0(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_10025F99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v15 = *(v28 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v28);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v6 + 24);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v22 = v25;
  v21 = v26;
  v20[4] = a2;
  v20[5] = v22;
  v20[6] = a6;
  v20[7] = v21;
  v20[8] = a4;
  aBlock[4] = sub_100267F30;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_100320E50;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100267F44(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_100232FC0(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v29 + 8))(v14, v11);
  (*(v15 + 8))(v18, v28);
}

uint64_t sub_10025FCC4(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + 24);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  aBlock[4] = sub_100267D78;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_100320C70;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100267F44(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_100232FC0(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_10025FFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[0] = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = *(v3 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v16 = *a1;
  v15 = *(a1 + 8);
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  v19 = swift_allocObject();
  v20 = *(a1 + 16);
  *(v19 + 24) = *a1;
  *(v19 + 16) = v14;
  *(v19 + 40) = v20;
  *(v19 + 56) = *(a1 + 32);
  v21 = v28[0];
  *(v19 + 64) = a2;
  *(v19 + 72) = v21;
  aBlock[4] = sub_100267550;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_100320B80;
  v22 = _Block_copy(aBlock);

  v23 = v16;
  v24 = v15;
  v25 = v18;
  v26 = v17;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100267F44(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_100232FC0(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v31 + 8))(v9, v6);
  (*(v29 + 8))(v13, v30);
}

uint64_t sub_100260300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + 24);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = sub_100267FD4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_100320EA0;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100267F44(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_100232FC0(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v23 + 8))(v12, v9);
  (*(v13 + 8))(v16, v22);
}

uint64_t sub_100260614()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001A551C(&qword_100378818, &unk_1002F3B40);
  sub_100223820(v5, qword_1003825C8);
  v6 = sub_10021F6F4(v5, qword_1003825C8);
  v7 = [objc_opt_self() defaultManager];
  v15 = 0;
  v8 = [v7 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:&v15];

  v9 = v15;
  if (v8)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    (*(v1 + 32))(v6, v4, v0);
    v11 = 0;
  }

  else
  {
    v12 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v11 = 1;
  }

  return (*(v1 + 56))(v6, v11, 1, v0);
}

BOOL Database.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10031C878, v2);

  return v3 != 0;
}

Swift::Int sub_100260874()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1002608F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100260954@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10031C8B0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1002609D0()
{
  v0 = sub_1001A551C(&qword_100378818, &unk_1002F3B40);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100375058 != -1)
  {
    swift_once();
  }

  v9 = sub_10021F6F4(v0, qword_1003825C8);
  sub_1001AC934(v9, v3, &qword_100378818, &unk_1002F3B40);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = sub_1001AC99C(v3, &qword_100378818, &unk_1002F3B40);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v13 = *(v5 + 8);
    v13(v3, v4);
    v11 = URL.relativePath.getter();
    v12 = v14;
    result = (v13)(v8, v4);
  }

  databasePath.value._countAndFlagsBits = v11;
  databasePath.value._object = v12;
  return result;
}

unint64_t sub_100260BDC()
{
  result = qword_100379648;
  if (!qword_100379648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379648);
  }

  return result;
}

unint64_t sub_100260C54(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6C62616870617267;
    v7 = 0x616D6B6F6F427369;
    if (a1 != 10)
    {
      v7 = 0x4E6E6F6974636573;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x644963697274656DLL;
    v9 = 0x657463656C6C6F63;
    if (a1 != 7)
    {
      v9 = 0x644973627573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x655463697274656DLL;
    v2 = 0xD000000000000019;
    v3 = 0x7475626972747461;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x614E63697274656DLL;
    if (a1 != 1)
    {
      v4 = 0x7475626972747461;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100260E14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100260C54(*a1);
  v5 = v4;
  if (v3 == sub_100260C54(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100260E9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100260C54(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100260F00()
{
  sub_100260C54(*v0);
  String.hash(into:)();
}

Swift::Int sub_100260F54()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100260C54(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100260FB4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100267B54(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100260FE4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100260C54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10026102C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100267B54(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100261060(uint64_t a1)
{
  v2 = sub_100267420();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026109C(uint64_t a1)
{
  v2 = sub_100267420();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002610D8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for Date();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001A551C(&qword_100379870, &qword_1002F4D58);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = type metadata accessor for Metric(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1001A5610(a1, a1[3]);
  sub_100267420();
  v41 = v10;
  v16 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    sub_1001A5654(a1);
  }

  else
  {
    v35 = v6;
    v36 = v3;
    v17 = v38;
    v42 = a1;
    UUID.init()();
    v54 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v18 = String._bridgeToObjectiveC()();

    *&v14[v11[5]] = v18;
    v53 = 1;
    v34 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v19 = String._bridgeToObjectiveC()();

    *&v14[v11[6]] = v19;
    v52 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v20 = String._bridgeToObjectiveC()();

    *&v14[v11[7]] = v20;
    v51 = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    v21 = String._bridgeToObjectiveC()();

    *&v14[v11[8]] = v21;
    v50 = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    v22 = String._bridgeToObjectiveC()();

    *&v14[v11[9]] = v22;
    v49 = 5;
    KeyedDecodingContainer.decode(_:forKey:)();
    v23 = String._bridgeToObjectiveC()();

    *&v14[v11[10]] = v23;
    v48 = 6;
    KeyedDecodingContainer.decode(_:forKey:)();
    v24 = String._bridgeToObjectiveC()();

    *&v14[v11[12]] = v24;
    v47 = 7;
    sub_100267F44(&qword_100379880, &type metadata accessor for Date);
    v26 = v35;
    v25 = v36;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v40 + 32))(&v14[v11[11]], v26, v25);
    v46 = 8;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = v11[13];
    v35 = v14;
    *&v14[v28] = v27;
    v45 = 9;
    v35[v11[14]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v44 = 10;
    v35[v11[15]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v43 = 11;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v30;
    v32 = v35;
    v33 = &v35[v11[16]];
    (*(v17 + 8))(v41, v39);
    *v33 = v29;
    v33[1] = v31;
    sub_100249AC8(v32, v37);
    sub_1001A5654(v42);
    sub_100249B2C(v32);
  }
}

uint64_t sub_100261980(void *a1)
{
  v3 = v1;
  v5 = sub_1001A551C(&qword_100379888, &qword_1002F4D60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_1001A5610(a1, a1[3]);
  sub_100267420();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = type metadata accessor for Metric(0);
  v12 = *(v3 + v11[5]);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  LOBYTE(v25) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v13 = *(v3 + v11[6]);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    LOBYTE(v25) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    v14 = *(v3 + v11[7]);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    LOBYTE(v25) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();

    v15 = *(v3 + v11[8]);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    LOBYTE(v25) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();

    v16 = *(v3 + v11[9]);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    LOBYTE(v25) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();

    v17 = *(v3 + v11[10]);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    LOBYTE(v25) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();

    v18 = *(v3 + v11[12]);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    LOBYTE(v25) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();

    v19 = v11[11];
    LOBYTE(v25) = 7;
    type metadata accessor for Date();
    sub_100267F44(&qword_100379890, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = *(v3 + v11[13]);
    LOBYTE(v25) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + v11[14]);
    LOBYTE(v25) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + v11[15]);
    LOBYTE(v25) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = *(v3 + v11[16]);
    v24[15] = 11;
    sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
    sub_100267474();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_100261DE8(sqlite3 *a1)
{
  v22 = a1;
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v1 - 8);
  v21 = v1;
  v2 = *(v20 + 64);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v24 = 0xD00000000000001BLL;
  v25 = 0x80000001002BF470;
  UUID.init()();
  sub_100267F44(&qword_1003798A8, &type metadata accessor for UUID);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  (*(v10 + 8))(v13, v9);
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_100267F44(&qword_100377BD0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001A551C(&qword_100377BD8, &unk_1002F3710);
  sub_100232FC0(&qword_100377BE0, &qword_100377BD8, &unk_1002F3710);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v20 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = v23;
  *(v23 + 24) = v15;
  v17 = v22;
  *(v16 + 16) = v22;
  sqlite3_exec(v17, "PRAGMA journal_mode=WAL;", 0, 0, 0);
  return v16;
}

uint64_t sub_10026218C()
{
  sqlite3_close(*(v0 + 16));

  return swift_deallocClassInstance();
}

sqlite3_stmt *sub_1002621F0()
{
  v9 = 0;
  v1 = *(v0 + 16);
  v2 = String.utf8CString.getter();
  v3 = sqlite3_prepare_v2(v1, (v2 + 32), -1, &v9, 0);

  if (!v3)
  {
    return v9;
  }

  if (sqlite3_errmsg(v1))
  {
    v4 = String.init(cString:)();
    v6 = v5;
  }

  else
  {
    v6 = 0x80000001002BF3F0;
    v4 = 0xD000000000000026;
  }

  sub_100267D1C();
  swift_allocError();
  *v8 = v4;
  *(v8 + 8) = v6;
  *(v8 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_10026230C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1002623E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1002624BC()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100262548();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100262548()
{
  if (!qword_100379770)
  {
    type metadata accessor for Metric(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100379770);
    }
  }
}

uint64_t sub_1002625C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_100262608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100262670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1002627A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1002628CC()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1001E1BB4(319, &qword_1003770C8, NSString_ptr);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        sub_1001BE3CC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1002629D0()
{
  result = qword_100379868;
  if (!qword_100379868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379868);
  }

  return result;
}

uint64_t sub_100262A6C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

const char *sub_100262AA4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = sub_1002621F0();
  }

  else
  {
    v10 = 0;
  }

  if (sqlite3_step(v10) == 101)
  {
    if (qword_100374FC8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002EED40;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1001A76E8();
    *(v11 + 32) = a6;
    *(v11 + 40) = a7;

    os_log(_:dso:log:type:_:)();

    a4(1, 0);
    return sqlite3_finalize(v10);
  }

  result = sqlite3_errmsg(v10);
  if (result)
  {
    v13 = String.init(cString:)();
    v15 = v14;
    if (qword_100374FC8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1002EED40;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1001A76E8();
    *(v16 + 32) = v13;
    *(v16 + 40) = v15;

    os_log(_:dso:log:type:_:)();

    sub_100267D1C();
    v17 = swift_allocError();
    *v18 = v13;
    *(v18 + 8) = v15;
    *(v18 + 16) = 1;
    a4(0, v17);

    return sqlite3_finalize(v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_100264350(void (*a1)(void, uint64_t))
{
  sub_100267D1C();
  v2 = swift_allocError();
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 4;
  a1(0, v2);
}

uint64_t sub_1002643CC(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  v96 = a3;
  v87 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v87 - 8);
  v5 = *(v86 + 64);
  __chkstk_darwin(v87);
  v84 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchQoS();
  v83 = *(v85 - 8);
  v7 = *(v83 + 64);
  __chkstk_darwin(v85);
  v82 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for UUID();
  v9 = *(v101 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v101);
  v114 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Metric(0);
  v99 = *(v100 - 1);
  v12 = *(v99 + 64);
  v13 = __chkstk_darwin(v100);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v113 = &v80 - v16;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v97 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v112 = &v80 - v22;
  v23 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v115 = &v80 - v28;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v98 = v15;
    v31 = sub_1002621F0();
    v81 = a4;
    v80 = v30;
    v32 = v31;

    v33 = &_swiftEmptyArrayStorage;
    if (sqlite3_step(v32) == 100)
    {
      v95 = (v18 + 48);
      v92 = (v18 + 32);
      v91 = (v18 + 16);
      v90 = (v9 + 16);
      v110 = (v18 + 8);
      v89 = (v9 + 8);
      v88 = xmmword_1002F2090;
      v94 = v27;
      v93 = v32;
      while (1)
      {
        v111 = v33;
        if (!sqlite3_column_text(v32, 0) || !sqlite3_column_text(v32, 1) || !sqlite3_column_text(v32, 2) || !sqlite3_column_text(v32, 3) || !sqlite3_column_text(v32, 5) || !sqlite3_column_text(v32, 6))
        {

          sub_100267D1C();
          v76 = swift_allocError();
          *v77 = 0;
          *(v77 + 8) = 0;
          *(v77 + 16) = 4;
          v96(0, v76);
        }

        String.init(cString:)();
        v34 = String._bridgeToObjectiveC()();

        String.init(cString:)();
        v35 = String._bridgeToObjectiveC()();

        String.init(cString:)();
        v36 = String._bridgeToObjectiveC()();

        String.init(cString:)();
        v37 = String._bridgeToObjectiveC()();

        v109 = sqlite3_column_int(v32, 4);
        String.init(cString:)();
        v38 = String._bridgeToObjectiveC()();

        String.init(cString:)();
        v39 = v115;
        sub_1001D4DB8(v115);

        sub_1001AC934(v39, v27, &qword_100375738, &qword_1002EF900);
        if ((*v95)(v27, 1, v17) == 1)
        {
          break;
        }

        v40 = *v92;
        v107 = v38;
        v41 = v27;
        v42 = v112;
        v40(v112, v41, v17);
        UUID.init()();
        v117 = v34;
        v116 = v35;
        v43 = v36;
        v44 = String.init(_:)(v43);
        v45 = [objc_opt_self() mainBundle];
        v46.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v46.value._object = 0xEB00000000656C62;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v46, v45, v44, v44);

        v108 = String._bridgeToObjectiveC()();

        sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        v47 = v43;
        v48 = v37;
        v102 = NSString.init(stringLiteral:)();
        v49 = *v91;
        v50 = v97;
        (*v91)(v97, v42, v17);
        v51 = v100;
        v52 = v100[15];
        v104 = v100[14];
        v103 = v52;
        v105 = v100[16];
        v53 = v113;
        v54 = v114;
        v55 = v101;
        (*v90)(v113, v114, v101);
        v56 = v116;
        *(v53 + v51[5]) = v117;
        *(v53 + v51[6]) = v56;
        *(v53 + v51[7]) = v108;
        v57 = v51[8];
        v108 = v47;
        *(v53 + v57) = v47;
        v58 = v51[9];
        v106 = v48;
        *(v53 + v58) = v48;
        *(v53 + v51[10]) = v102;
        v49((v53 + v51[11]), v50, v17);
        v59 = v107;
        *(v53 + v51[12]) = v107;
        *(v53 + v51[13]) = v109;
        *(v53 + v104) = 0;
        *(v53 + v103) = 0;
        v60 = *v110;
        v61 = v59;
        v60(v50, v17);
        (*v89)(v54, v55);
        *(v53 + v105) = v88;
        v62 = v98;
        sub_100249AC8(v53, v98);
        v33 = v111;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_1002250B0(0, v33[2] + 1, 1, v33);
        }

        v32 = v93;
        v64 = v33[2];
        v63 = v33[3];
        v65 = v115;
        if (v64 >= v63 >> 1)
        {
          v33 = sub_1002250B0(v63 > 1, v64 + 1, 1, v33);
        }

        v66 = v117;

        sub_100249B2C(v113);
        v60(v112, v17);
        sub_1001AC99C(v65, &qword_100375738, &qword_1002EF900);
        v33[2] = v64 + 1;
        sub_100267E7C(v62, v33 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v64);
        v67 = sqlite3_step(v32);
        v27 = v94;
        if (v67 != 100)
        {
          goto LABEL_16;
        }
      }

      sub_1001AC99C(v27, &qword_100375738, &qword_1002EF900);
      sub_100267D1C();
      v78 = swift_allocError();
      *v79 = 0;
      *(v79 + 8) = 0;
      *(v79 + 16) = 4;
      v96(0, v78);

      return sub_1001AC99C(v115, &qword_100375738, &qword_1002EF900);
    }

    else
    {
LABEL_16:
      sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
      v68 = static OS_dispatch_queue.main.getter();
      v69 = swift_allocObject();
      v70 = v81;
      v69[2] = v96;
      v69[3] = v70;
      v69[4] = v33;
      aBlock[4] = sub_100268170;
      aBlock[5] = v69;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020C96C;
      aBlock[3] = &unk_100321030;
      v71 = _Block_copy(aBlock);

      v72 = v82;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100267F44(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
      sub_100232FC0(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
      v73 = v84;
      v74 = v87;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v71);

      (*(v86 + 8))(v73, v74);
      return (*(v83 + 8))(v72, v85);
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10026536C(void (*a1)(void, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100267D1C();
  v7 = swift_allocError();
  *v8 = a3;
  *(v8 + 8) = a4;
  *(v8 + 16) = 1;

  a1(0, v7);
}

const char *sub_100265404(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  __chkstk_darwin(v11);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = (v14 + 16);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v16 = sub_1002621F0();
  }

  else
  {
    v16 = 0;
  }

  *v15 = v16;
  swift_beginAccess();
  if (sqlite3_step(*v15) == 101)
  {
    sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    aBlock[4] = sub_100268064;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020C96C;
    aBlock[3] = &unk_100320F40;
    v19 = _Block_copy(aBlock);

    v20 = v28;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100267F44(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
    sub_100232FC0(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v29 + 8))(v10, v7);
    (*(v30 + 8))(v20, v31);
LABEL_8:
    sqlite3_finalize(*(v14 + 16));
  }

  result = sqlite3_errmsg(*v15);
  if (result)
  {
    v22 = String.init(cString:)();
    v24 = v23;
    sub_100267D1C();
    v25 = swift_allocError();
    *v26 = v22;
    *(v26 + 8) = v24;
    *(v26 + 16) = 1;
    a4(0, v25);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100265A04(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  __chkstk_darwin(v5);
  v28 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v29);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = *(a2 + 32);
    sub_100267BA0(*a2, *(a2 + 24));
    v13 = sub_1002621F0();

    *(v11 + 16) = v13;
    swift_beginAccess();
    if (sqlite3_step(*(v11 + 16)) == 101)
    {
      sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
      v14 = static OS_dispatch_queue.main.getter();
      v15 = swift_allocObject();
      v16 = v31;
      *(v15 + 16) = v30;
      *(v15 + 24) = v16;
      aBlock[4] = sub_100267D70;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020C96C;
      aBlock[3] = &unk_100320C20;
      v17 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100267F44(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
      sub_100232FC0(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
      v18 = v28;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v17);

      (*(v26 + 8))(v18, v5);
      (*(v27 + 8))(v10, v29);
LABEL_6:
      sqlite3_finalize(*(v11 + 16));
    }

    if (sqlite3_errmsg(*(v11 + 16)))
    {
      v19 = String.init(cString:)();
      v21 = v20;
      sub_100267D1C();
      v22 = swift_allocError();
      *v23 = v19;
      *(v23 + 8) = v21;
      *(v23 + 16) = 1;
      v30(0, v22);

      goto LABEL_6;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

const char *sub_100266068(uint64_t a1, void (*a2)(void, uint64_t))
{
  swift_beginAccess();
  result = sqlite3_errmsg(*(a1 + 16));
  if (result)
  {
    v5 = String.init(cString:)();
    v7 = v6;
    sub_100267D1C();
    v8 = swift_allocError();
    *v9 = v5;
    *(v9 + 8) = v7;
    *(v9 + 16) = 1;
    a2(0, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10026611C(uint64_t (*a1)(uint64_t, void))
{
  if (qword_100374FC8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)();
  return a1(1, 0);
}

uint64_t sub_1002661C0(uint64_t a1, int a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  __chkstk_darwin(v7);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  v10 = *(v39 + 64);
  __chkstk_darwin(v41);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    aBlock = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v13._countAndFlagsBits = 0xD000000000000029;
    v13._object = 0x80000001002BF260;
    String.append(_:)(v13);
    v50 = a2;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._object = 0x80000001002BF290;
    v15._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v15);
    v16 = sub_1002621F0();
    v17 = &qword_1002F0000;
    v37 = a3;
    v38 = a4;
    v18 = v16;

    v19 = _swiftEmptyArrayStorage;
    if (sqlite3_step(v18) == 100)
    {
      while (sqlite3_column_text(v18, 0) && sqlite3_column_text(v18, 1) && sqlite3_column_text(v18, 2) && sqlite3_column_text(v18, 3))
      {
        String.init(cString:)();
        v20 = String._bridgeToObjectiveC()();

        String.init(cString:)();
        v21 = String._bridgeToObjectiveC()();

        String.init(cString:)();
        v22 = String._bridgeToObjectiveC()();

        String.init(cString:)();
        v23 = String._bridgeToObjectiveC()();

        v24 = sqlite3_column_int(v18, 4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100225204(0, *(v19 + 2) + 1, 1, v19);
        }

        v26 = *(v19 + 2);
        v25 = *(v19 + 3);
        if (v26 >= v25 >> 1)
        {
          v19 = sub_100225204((v25 > 1), v26 + 1, 1, v19);
        }

        *(v19 + 2) = v26 + 1;
        v27 = &v19[40 * v26];
        *(v27 + 4) = v20;
        *(v27 + 5) = v21;
        *(v27 + 6) = v22;
        *(v27 + 7) = v23;
        *(v27 + 16) = v24;
        v17 = &qword_1002F0000;
        if (sqlite3_step(v18) != 100)
        {
          goto LABEL_12;
        }
      }

      sub_100267D1C();
      v34 = swift_allocError();
      *v35 = 0;
      *(v35 + 8) = 0;
      *(v35 + 16) = 4;
      v37(0, v34);
    }

    else
    {
LABEL_12:
      sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
      v28 = static OS_dispatch_queue.main.getter();
      v29 = swift_allocObject();
      v30 = v38;
      v29[2] = v37;
      v29[3] = v30;
      v29[4] = v19;
      v48 = sub_100268518;
      v49 = v29;
      aBlock = _NSConcreteStackBlock;
      v45 = v17[22];
      v46 = sub_10020C96C;
      v47 = &unk_100320D10;
      v31 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100267F44(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
      sub_100232FC0(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
      v32 = v40;
      v33 = v43;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v31);

      (*(v42 + 8))(v32, v33);
      (*(v39 + 8))(v12, v41);
    }

    return sqlite3_finalize(v18);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002669AC(void (*a1)(void, uint64_t))
{
  swift_getErrorValue();
  v2 = Error.localizedDescription.getter();
  v4 = v3;
  sub_100267D1C();
  v5 = swift_allocError();
  *v6 = v2;
  *(v6 + 8) = v4;
  *(v6 + 16) = 1;
  a1(0, v5);
}

uint64_t sub_100266A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v23 = *(v9 - 8);
  v24 = v9;
  v10 = *(v23 + 64);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v22[4] = v13 + 16;
  if (Strong)
  {
    v15 = sub_1002621F0();

    Strong = v15;
  }

  *(v13 + 16) = Strong;
  v16 = sqlite3_step(Strong);
  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  if (v16 == 101)
  {
    v18[2] = a2;
    v18[3] = a3;
    v30 = sub_1002673F4;
    v31 = v18;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10020C96C;
    v29 = &unk_100320B30;
    v19 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100267F44(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
    v20 = v13;
  }

  else
  {
    v18[2] = v13;
    v18[3] = a2;
    v18[4] = a3;
    v30 = sub_1002673E8;
    v31 = v18;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10020C96C;
    v29 = &unk_100320AE0;
    v19 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    v20 = v13;
    sub_100267F44(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  }

  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_100232FC0(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v8, v5);
  (*(v23 + 8))(v12, v24);
  swift_beginAccess();
  sqlite3_finalize(*(v20 + 16));
}

uint64_t sub_10026712C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100267154(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_100374FC8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002EED40;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1001A76E8();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  os_log(_:dso:log:type:_:)();

  return a2(0);
}

const char *sub_1002672AC(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  result = sqlite3_errmsg(*(a1 + 16));
  if (result)
  {
    v5 = String.init(cString:)();
    v7 = v6;
    if (qword_100374FC8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002EED40;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_1001A76E8();
    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
    os_log(_:dso:log:type:_:)();

    return a2(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002673F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

unint64_t sub_100267420()
{
  result = qword_100379878;
  if (!qword_100379878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379878);
  }

  return result;
}

unint64_t sub_100267474()
{
  result = qword_100379898;
  if (!qword_100379898)
  {
    sub_1001A55C8(&qword_1003751D0, &qword_1002EEF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379898);
  }

  return result;
}

uint64_t sub_1002674F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

sqlite3 *sub_100267560()
{
  v8 = 0;
  v0 = String.utf8CString.getter();
  v1 = sqlite3_open_v2((v0 + 32), &v8, 65542, 0);

  v2 = v8;
  if (v1)
  {
    if (sqlite3_errmsg(v8))
    {
      v3 = String.init(cString:)();
      v5 = v4;
      sub_100267D1C();
      swift_allocError();
      *v6 = v3;
      *(v6 + 8) = v5;
    }

    else
    {
      sub_100267D1C();
      swift_allocError();
      *v6 = 0xD000000000000026;
      *(v6 + 8) = 0x80000001002BF3F0;
    }

    *(v6 + 16) = 0;
    swift_willThrow();
    result = v8;
    if (v8)
    {
      return sqlite3_close(v8);
    }
  }

  else
  {
    type metadata accessor for SQLiteDatabase();
    swift_allocObject();
    return sub_100261DE8(v2);
  }

  return result;
}

uint64_t sub_1002676B0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + 24);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  aBlock[4] = sub_100268098;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_100320F90;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = &_swiftEmptyArrayStorage;
  sub_100267F44(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_100232FC0(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_1002679BC(void *a1, void *a2)
{
  _StringGuts.grow(_:)(283);
  v4._countAndFlagsBits = 0xD0000000000000C6;
  v4._object = 0x80000001002BF4B0;
  String.append(_:)(v4);
  v5 = [a1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000019;
  v10._object = 0x80000001002BF220;
  String.append(_:)(v10);
  v11 = [a2 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._object = 0x80000001002BF580;
  v16._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v16);
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0xD000000000000024;
  v18._object = 0x80000001002BF5A0;
  String.append(_:)(v18);
  return 0;
}

unint64_t sub_100267B54(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10031C8E8, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100267BA0(void *a1, void *a2)
{
  _StringGuts.grow(_:)(92);
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v4._object = 0x80000001002BF1F0;
  String.append(_:)(v4);
  v5 = [a1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000019;
  v10._object = 0x80000001002BF220;
  String.append(_:)(v10);
  v11 = [a2 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._object = 0x80000001002BF240;
  v16._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v16);
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  return 0;
}

unint64_t sub_100267D1C()
{
  result = qword_1003798A0;
  if (!qword_1003798A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003798A0);
  }

  return result;
}

uint64_t sub_100267DA0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1002669AC(*(v0 + 16));
}

uint64_t sub_100267DB0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100267DF8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  if (v1[2])
  {
    v4 = v1;
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
  }

  return v2(v4, 0);
}

uint64_t sub_100267E3C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100267E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metric(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100267EE0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100267F44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100267F8C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100267FFC(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100268064()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1, 0);
}

uint64_t sub_1002680A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100268120(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_1002681A4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1002681C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100268208(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10026824C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Metric.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Metric.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002683C8()
{
  result = qword_1003798B0;
  if (!qword_1003798B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003798B0);
  }

  return result;
}

unint64_t sub_100268420()
{
  result = qword_1003798B8;
  if (!qword_1003798B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003798B8);
  }

  return result;
}

unint64_t sub_100268478()
{
  result = qword_1003798C0;
  if (!qword_1003798C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003798C0);
  }

  return result;
}

uint64_t sub_10026859C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100268610()
{
  v1 = OBJC_IVAR____TtC11FTMInternal22FTMBandInfoDataChanged__bandInfoArray;
  v2 = sub_1001A551C(&unk_100379A90, qword_1002F5058);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1002686E0()
{
  sub_100268770();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100268770()
{
  if (!qword_100379908)
  {
    sub_1001A55C8(&qword_1003770E8, &unk_1002F22C0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100379908);
    }
  }
}

uint64_t sub_1002687E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
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
    v9 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 92);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1002688C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 92);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100268994()
{
  sub_100268B00(319, &qword_100379130);
  if (v0 <= 0x3F)
  {
    sub_100268B00(319, &qword_100379138);
    if (v1 <= 0x3F)
    {
      sub_100268B00(319, &qword_100379140);
      if (v2 <= 0x3F)
      {
        sub_100268B00(319, &qword_100375AF8);
        if (v3 <= 0x3F)
        {
          sub_100268B00(319, &unk_100379148);
          if (v4 <= 0x3F)
          {
            sub_1001C1F1C();
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

void sub_100268B00(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100268B4C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FTMBandInfoDataChanged(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100268B94(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 216) = a3;
  *(v4 + 72) = a1;
  v5 = type metadata accessor for UUID();
  *(v4 + 96) = v5;
  v6 = *(v5 - 8);
  *(v4 + 104) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v4 + 120) = v8;
  v9 = *(v8 - 8);
  *(v4 + 128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v11 = type metadata accessor for URLRequest();
  *(v4 + 152) = v11;
  v12 = *(v11 - 8);
  *(v4 + 160) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_100268D2C, 0, 0);
}

uint64_t sub_100268D2C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 216);
  v4 = v2 + OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_didSessionStart;
  v5 = *(v2 + OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_didSessionStart);
  v6 = *(v2 + OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_didSessionStart + 8);
  *v4 = *(v0 + 72);
  *(v4 + 8) = v1;
  v7 = *(v4 + 16);
  *(v4 + 16) = v3;

  sub_10026C26C(v5, v6);
  v8 = OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_downloadTask;
  *(v0 + 184) = OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_downloadTask;
  v9 = *(v2 + v8);
  if (v9)
  {
    [v9 cancel];
  }

  v10 = *(v0 + 88);
  v11 = OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_operationQueue;
  *(v0 + 192) = OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_operationQueue;
  [*(v10 + v11) setQualityOfService:25];
  v12 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *v13 = v0;
  v13[1] = sub_100268E5C;

  return static Task<>.sleep(nanoseconds:)(2000000000);
}

uint64_t sub_100268E5C()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {

    v3 = sub_10026951C;
  }

  else
  {
    v3 = sub_100268F78;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100268F78()
{
  v67 = v0;
  v1 = v0[26];
  v2 = v0[18];
  v3 = v0[11];
  sub_10026AF84(1);
  sub_100269D4C(v2);

  if (v1)
  {
    v5 = v0[21];
    v4 = v0[22];
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[14];

    v9 = v0[1];
  }

  else
  {
    v10 = v0[21];
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    (*(v0[16] + 16))(v0[17], v0[18], v0[15]);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.allowsCellularAccess.setter();
    URLRequest.allowsExpensiveNetworkAccess.setter();
    URLRequest.allowsConstrainedNetworkAccess.setter();
    UUID.init()();
    v14 = UUID.uuidString.getter();
    v16 = v15;
    (*(v12 + 8))(v11, v13);
    v17._object = 0x80000001002BDE00;
    v18._countAndFlagsBits = v14;
    v18._object = v16;
    v17._countAndFlagsBits = 0xD000000000000011;
    URLRequest.addValue(_:forHTTPHeaderField:)(v18, v17);

    if (qword_100375038 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10021F6F4(v19, qword_100382528);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[21];
      v23 = v0[19];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v66 = v25;
      *v24 = 136446210;
      swift_beginAccess();
      sub_10026C2B0(&qword_100378808, &type metadata accessor for URLRequest);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = sub_100223114(v26, v27, &v66);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "FTMURLSessionViewModel made url request=%{public}s", v24, 0xCu);
      sub_1001A5654(v25);
    }

    v29 = v0[24];
    v30 = v0[21];
    v31 = v0[22];
    v32 = v0[19];
    v33 = v0[20];
    v34 = v0[18];
    v35 = v0[15];
    v36 = v0[16];
    v37 = v0[11];
    swift_beginAccess();
    (*(v33 + 16))(v31, v30, v32);
    v65 = *(v33 + 8);
    v65(v30, v32);
    (*(v36 + 8))(v34, v35);
    v38 = *(v37 + v29);
    v39 = sub_10026B1D4(v38);

    v40 = v39;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v63 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v41 = v0[22];
    v42 = v0[23];
    v43 = v0[11];
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v45 = [v40 downloadTaskWithRequest:isa];

    v46 = *(v43 + v42);
    *(v43 + v42) = v45;
    v47 = v45;

    if (v47)
    {
      LODWORD(v48) = 1.0;
      [v47 setPriority:v48];
    }

    v49 = v0[23];
    v50 = v0[11];
    v51 = *(v50 + v49);
    if (v51)
    {
      v0[8] = 1;
      v52 = v51;
      dispatch thunk of CustomStringConvertible.description.getter();
      v53 = String._bridgeToObjectiveC()();

      [v52 setTaskDescription:v53];

      v54 = *(v50 + v49);
      if (v54)
      {
        [v54 resume];
      }
    }

    v55 = v40;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v64 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v57 = v0[21];
    v56 = v0[22];
    v59 = v0[18];
    v58 = v0[19];
    v60 = v0[17];
    v61 = v0[14];
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    [v55 finishTasksAndInvalidate];

    v65(v56, v58);

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_10026951C()
{
  v61 = v0;
  v1 = v0[18];
  v2 = v0[11];
  sub_10026AF84(1);
  sub_100269D4C(v1);

  v3 = v0[21];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  (*(v0[16] + 16))(v0[17], v0[18], v0[15]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.allowsCellularAccess.setter();
  URLRequest.allowsExpensiveNetworkAccess.setter();
  URLRequest.allowsConstrainedNetworkAccess.setter();
  UUID.init()();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v5 + 8))(v4, v6);
  v10._object = 0x80000001002BDE00;
  v11._countAndFlagsBits = v7;
  v11._object = v9;
  v10._countAndFlagsBits = 0xD000000000000011;
  URLRequest.addValue(_:forHTTPHeaderField:)(v11, v10);

  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10021F6F4(v12, qword_100382528);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[21];
    v16 = v0[19];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v60 = v18;
    *v17 = 136446210;
    swift_beginAccess();
    sub_10026C2B0(&qword_100378808, &type metadata accessor for URLRequest);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_100223114(v19, v20, &v60);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "FTMURLSessionViewModel made url request=%{public}s", v17, 0xCu);
    sub_1001A5654(v18);
  }

  v22 = v0[24];
  v23 = v0[21];
  v24 = v0[22];
  v25 = v0[19];
  v26 = v0[20];
  v27 = v0[18];
  v28 = v0[15];
  v29 = v0[16];
  v30 = v0[11];
  swift_beginAccess();
  (*(v26 + 16))(v24, v23, v25);
  v59 = *(v26 + 8);
  v59(v23, v25);
  (*(v29 + 8))(v27, v28);
  v31 = *(v30 + v22);
  v32 = sub_10026B1D4(v31);

  v33 = v32;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v57 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v34 = v0[22];
  v35 = v0[23];
  v36 = v0[11];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v38 = [v33 downloadTaskWithRequest:isa];

  v39 = *(v36 + v35);
  *(v36 + v35) = v38;
  v40 = v38;

  if (v40)
  {
    LODWORD(v41) = 1.0;
    [v40 setPriority:v41];
  }

  v42 = v0[23];
  v43 = v0[11];
  v44 = *(v43 + v42);
  if (v44)
  {
    v0[8] = 1;
    v45 = v44;
    dispatch thunk of CustomStringConvertible.description.getter();
    v46 = String._bridgeToObjectiveC()();

    [v45 setTaskDescription:v46];

    v47 = *(v43 + v42);
    if (v47)
    {
      [v47 resume];
    }
  }

  v48 = v33;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v58 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v50 = v0[21];
  v49 = v0[22];
  v52 = v0[18];
  v51 = v0[19];
  v53 = v0[17];
  v54 = v0[14];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  [v48 finishTasksAndInvalidate];

  v59(v49, v51);

  v55 = v0[1];

  return v55();
}

id sub_100269AC0()
{
  result = *(v0 + OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_downloadTask);
  if (result)
  {
    result = [result cancel];
  }

  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_sessionArray);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v2 < 0)
  {
    v7 = *(v0 + OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_sessionArray);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v3 = result;
  if (result)
  {
LABEL_5:
    if (v3 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v3; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v5 = *(v2 + 8 * i + 32);
        }

        v6 = v5;
        [v5 invalidateAndCancel];
      }
    }
  }

  return result;
}

id sub_100269C70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTMURLSessionViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100269D4C@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for URLError.Code();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for URLError();
  v49 = *(v51 - 8);
  v5 = *(v49 + 64);
  __chkstk_darwin(v51);
  v47 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1001A551C(&qword_100378818, &unk_1002F3B40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v19 = type metadata accessor for URLComponents();
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = *(v52 + 64);
  __chkstk_darwin(v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  URLComponents.host.setter();
  URLComponents.port.setter();
  URLComponents.scheme.setter();

  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1001AC99C(v10, &qword_100378818, &unk_1002F3B40);
    if (qword_100375038 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10021F6F4(v23, qword_100382528);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v53;
    if (v26)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v55 = v29;
      *v28 = 136315138;
      swift_beginAccess();
      sub_10026C2B0(&qword_100378828, &type metadata accessor for URLComponents);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = sub_100223114(v30, v31, &v55);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "FTMURLSessionViewModel Unable to composed the URL %s", v28, 0xCu);
      sub_1001A5654(v29);
    }

    static URLError.Code.badURL.getter();
    sub_10026AE74(_swiftEmptyArrayStorage);
    sub_10026C2B0(&qword_100378820, &type metadata accessor for URLError);
    v33 = v47;
    v34 = v51;
    _BridgedStoredNSError.init(_:userInfo:)();
    URLError._nsError.getter();
    (*(v49 + 8))(v33, v34);
    swift_willThrow();
    return (*(v52 + 8))(v22, v27);
  }

  else
  {
    v51 = v1;
    v49 = *(v12 + 32);
    (v49)(v18, v10, v11);
    if (qword_100375038 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10021F6F4(v36, qword_100382528);
    (*(v12 + 16))(v15, v18, v11);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v46 = v39;
      v47 = swift_slowAlloc();
      v54 = v47;
      *v39 = 136446210;
      sub_10026C2B0(&qword_100378830, &type metadata accessor for URL);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v18;
      v42 = v41;
      (*(v12 + 8))(v15, v11);
      v43 = sub_100223114(v40, v42, &v54);
      v18 = v48;

      v44 = v46;
      *(v46 + 1) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "FTMURLSessionViewModel made url=%{public}s", v44, 0xCu);
      sub_1001A5654(v47);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    (v49)(v50, v18, v11);
    return (*(v52 + 8))(v22, v53);
  }
}

void sub_10026A568()
{
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10021F6F4(v0, qword_100382528);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100223114(0xD00000000000001CLL, 0x80000001002BF8B0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "FTMURLSessionViewModel %s", v2, 0xCu);
    sub_1001A5654(v3);
  }
}

void sub_10026A908()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v0 - 8);
  v1 = *(v26 + 64);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10021F6F4(v9, qword_100382528);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100223114(0xD000000000000028, 0x80000001002BDCC0, aBlock);
    _os_log_impl(&_mh_execute_header, v10, v11, "FTMURLSessionViewModel completed %s", v12, 0xCu);
    sub_1001A5654(v13);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v15 = *&Strong[OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_didSessionStart];
  v16 = *&Strong[OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_didSessionStart + 8];
  v17 = Strong[OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_didSessionStart + 16];
  sub_10026C1CC(v15, v16);

  if (v16)
  {
    sub_1002181D0();
    v25 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v16;
    *(v18 + 32) = v17 & 1;
    aBlock[4] = sub_10026C24C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020C96C;
    aBlock[3] = &unk_100321240;
    v19 = _Block_copy(aBlock);

    v20 = v8;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10026C2B0(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
    v21 = v26;
    v24 = v4;
    sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
    sub_1002302F0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v25;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v21 + 8))(v3, v0);
    (*(v5 + 8))(v20, v24);
  }
}

unint64_t sub_10026AE74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&unk_1003771D0, &unk_1002F5090);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10026C2F8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1001F66B8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100201570(&v15, (v3[7] + 32 * result));
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

void *sub_10026AF84(char a1)
{
  if (a1)
  {
    sub_1001A551C(&qword_100378838, &unk_1002F50A0);
    v1 = *(type metadata accessor for URLQueryItem() - 8);
    v2 = *(v1 + 72);
    v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v4 = swift_allocObject();
    *(v4 + 1) = xmmword_1002EED40;
    v14 = 100;
    dispatch thunk of CustomStringConvertible.description.getter();
    URLQueryItem.init(name:value:)();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10021F6F4(v5, qword_100382528);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    type metadata accessor for URLQueryItem();
    v10 = Array.description.getter();
    v12 = sub_100223114(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FTMURLSessionViewModel made url query items %s", v8, 0xCu);
    sub_1001A5654(v9);
  }

  return v4;
}

id sub_10026B1D4(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() ephemeralSessionConfiguration];
  [v4 setAllowsCellularAccess:1];
  [v4 setAllowsExpensiveNetworkAccess:1];
  [v4 setAllowsConstrainedNetworkAccess:1];
  [v4 setDiscretionary:0];
  [v4 setSessionSendsLaunchEvents:1];
  [v4 setWaitsForConnectivity:1];
  v5 = [objc_opt_self() sessionWithConfiguration:v4 delegate:v2 delegateQueue:a1];
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10021F6F4(v6, qword_100382528);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "FTMURLSessionViewModel made url session=%{public}@", v10, 0xCu);
    sub_1001AC99C(v11, &unk_100379B60, &unk_1002F3B30);
  }

  return v7;
}

void sub_10026B3E8()
{
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10021F6F4(v0, qword_100382528);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100223114(0xD000000000000032, 0x80000001002BDCF0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "FTMURLSessionViewModel %s", v2, 0xCu);
    sub_1001A5654(v3);
  }
}

uint64_t sub_10026B530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v16);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002181D0();
  v13 = static OS_dispatch_queue.main.getter();
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedDestroy();
  aBlock[4] = a1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10026C2B0(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1002302F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v16);
}

uint64_t sub_10026B7BC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10021F6F4(v13, qword_100382528);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = a2;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_100223114(0xD000000000000028, 0x80000001002BDCC0, aBlock);
    *(v18 + 12) = 2048;
    *(v18 + 14) = [v14 taskIdentifier];

    _os_log_impl(&_mh_execute_header, v15, v16, "FTMURLSessionViewModel %s task.id=%ld", v18, 0x16u);
    sub_1001A5654(v20);
    a2 = v33;

    v5 = v34;

    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!a2)
    {
      goto LABEL_10;
    }
  }

  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v34 = v5;
    v24 = v23;
    aBlock[0] = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_100223114(0xD000000000000028, 0x80000001002BDCC0, aBlock);
    *(v24 + 12) = 2080;
    swift_getErrorValue();
    v25 = Error.localizedDescription.getter();
    v27 = sub_100223114(v25, v26, aBlock);
    v33 = a2;
    v28 = v27;

    *(v24 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "FTMURLSessionViewModel %s: terminated with error: %s", v24, 0x16u);
    swift_arrayDestroy();

    v5 = v34;
  }

  else
  {
  }

LABEL_10:
  sub_1002181D0();
  v29 = static OS_dispatch_queue.main.getter();
  v30 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  aBlock[4] = sub_10026C1C4;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_1003211F0;
  v31 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10026C2B0(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1002302F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v5 + 8))(v8, v4);
  return (*(v35 + 8))(v12, v36);
}

void sub_10026BD50()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10021F6F4(v11, qword_100382528);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100223114(0xD000000000000033, 0x80000001002BDC80, aBlock);
    _os_log_impl(&_mh_execute_header, v12, v13, "FTMURLSessionViewModel background completed %s", v14, 0xCu);
    sub_1001A5654(v15);
  }

  v16 = (v1 + OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_didSessionStart);
  v17 = *(v1 + OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_didSessionStart + 8);
  if (v17)
  {
    v18 = *(v16 + 16);
    v19 = *v16;
    sub_1002181D0();

    v27 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v17;
    *(v20 + 32) = v18 & 1;
    aBlock[4] = sub_10026C39C;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020C96C;
    aBlock[3] = &unk_1003211A0;
    v21 = _Block_copy(aBlock);

    v22 = v10;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10026C2B0(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
    v23 = v28;
    v26 = v6;
    sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
    sub_1002302F0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v27;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v23 + 8))(v5, v2);
    (*(v7 + 8))(v22, v26);
  }
}

uint64_t sub_10026C174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10026C18C()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10026C1CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10026C20C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10026C24C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_10026ADC0();
}

uint64_t sub_10026C26C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10026C2B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10026C2F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100379B70, &qword_1002F2380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10026C3A0()
{
  v1 = OBJC_IVAR____TtC11FTMInternal20ExportViewController____lazy_storage___exportOptionsLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal20ExportViewController____lazy_storage___exportOptionsLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal20ExportViewController____lazy_storage___exportOptionsLabel);
  }

  else
  {
    v4 = sub_10026C400();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10026C400()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() colorNamed:v2];

  [v0 setTextColor:v3];
  [v0 setTextAlignment:1];
  [v0 setLineBreakMode:0];
  [v0 setNumberOfLines:2];
  v4 = [objc_opt_self() systemFontOfSize:30.0 weight:UIFontWeightMedium];
  [v0 setFont:v4];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_10026C574()
{
  v0 = [objc_allocWithZone(UIButton) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  [v0 setImage:v2 forState:0];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() colorNamed:v3];

  [v0 setTintColor:v4];
  sub_1001A551C(&qword_100379BC8, &unk_1002F5100);
  [v0 addTarget:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() action:"didTapDismissWithSender:" forControlEvents:{64, sub_10026C700, 0}];
  swift_unknownObjectRelease();
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_10026C700@<X0>(id *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v6 = *a1;
  v3 = swift_allocObject();
  *(v3 + 16) = v6;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10021D79C;
  *(v4 + 24) = v3;
  *a2 = sub_10021D80C;
  a2[1] = v4;

  return v6;
}

char *sub_10026C7A0()
{
  v1 = OBJC_IVAR____TtC11FTMInternal20ExportViewController____lazy_storage___loadingView;
  v2 = *&v0[OBJC_IVAR____TtC11FTMInternal20ExportViewController____lazy_storage___loadingView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11FTMInternal20ExportViewController____lazy_storage___loadingView];
  }

  else
  {
    v4 = sub_10026C804(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_10026C804(char *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for LoadingView());
  v3 = sub_100205B14(0xD00000000000001FLL, 0x80000001002BAA10, 0.0, 0.0, 0.0, 0.0);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [result addSubview:v3];

  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002EF930;
  v7 = [v3 topAnchor];
  v8 = [*&a1[OBJC_IVAR____TtC11FTMInternal20ExportViewController_dismissButton] safeAreaLayoutGuide];
  v9 = [v8 bottomAnchor];

  v10 = [v7 constraintEqualToAnchor:v9];
  *(v6 + 32) = v10;
  v11 = [v3 leadingAnchor];
  result = [a1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  v13 = [result safeAreaLayoutGuide];

  v14 = [v13 leadingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];

  *(v6 + 40) = v15;
  v16 = [v3 trailingAnchor];
  result = [a1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = result;
  v18 = [result safeAreaLayoutGuide];

  v19 = [v18 trailingAnchor];
  v20 = [v16 constraintEqualToAnchor:v19];

  *(v6 + 48) = v20;
  v21 = [v3 bottomAnchor];

  result = [a1 view];
  if (result)
  {
    v22 = result;
    v23 = objc_opt_self();
    v24 = [v22 safeAreaLayoutGuide];

    v25 = [v24 bottomAnchor];
    v26 = [v21 constraintEqualToAnchor:v25];

    *(v6 + 56) = v26;
    sub_1001AD6F0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v23 activateConstraints:isa];

    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10026CC58()
{
  v1 = v0;
  v123.receiver = v0;
  v123.super_class = type metadata accessor for ExportViewController();
  objc_msgSendSuper2(&v123, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  v4 = sub_10026C3A0();
  [v3 addSubview:v4];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = *&v1[OBJC_IVAR____TtC11FTMInternal20ExportViewController_dismissButton];
  [v5 addSubview:v7];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  v10 = *&v1[OBJC_IVAR____TtC11FTMInternal20ExportViewController_containerView];
  [v8 addSubview:v10];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002F50B0;
  v12 = [v7 topAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  v15 = [v13 safeAreaLayoutGuide];

  v16 = [v15 topAnchor];
  v17 = [v12 constraintEqualToAnchor:v16 constant:25.0];

  *(v11 + 32) = v17;
  v18 = [v7 rightAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  v22 = [v21 rightAnchor];
  v23 = [v18 constraintEqualToAnchor:v22 constant:-10.0];

  *(v11 + 40) = v23;
  v24 = [v7 heightAnchor];
  v25 = [v24 constraintEqualToConstant:30.0];

  *(v11 + 48) = v25;
  v26 = [v7 widthAnchor];
  v27 = [v26 constraintEqualToConstant:30.0];

  *(v11 + 56) = v27;
  v28 = OBJC_IVAR____TtC11FTMInternal20ExportViewController____lazy_storage___exportOptionsLabel;
  v29 = [*&v1[OBJC_IVAR____TtC11FTMInternal20ExportViewController____lazy_storage___exportOptionsLabel] topAnchor];
  v30 = [v7 safeAreaLayoutGuide];
  v31 = [v30 bottomAnchor];

  v32 = [v29 constraintEqualToAnchor:v31 constant:10.0];
  *(v11 + 64) = v32;
  v33 = [*&v1[v28] rightAnchor];
  v34 = [v1 view];
  if (!v34)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v35 = v34;
  v36 = [v34 safeAreaLayoutGuide];

  v37 = [v36 rightAnchor];
  v38 = [v33 constraintEqualToAnchor:v37 constant:-10.0];

  *(v11 + 72) = v38;
  v39 = [*&v1[v28] leftAnchor];
  v40 = [v1 view];
  if (!v40)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v41 = v40;
  v42 = [v40 safeAreaLayoutGuide];

  v43 = [v42 leftAnchor];
  v44 = [v39 constraintEqualToAnchor:v43 constant:10.0];

  *(v11 + 80) = v44;
  v45 = [v10 topAnchor];
  v46 = [*&v1[v28] bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v11 + 88) = v47;
  v48 = [v10 rightAnchor];
  v49 = [v1 view];
  if (!v49)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v50 = v49;
  v51 = [v49 safeAreaLayoutGuide];

  v52 = [v51 rightAnchor];
  v53 = [v48 constraintEqualToAnchor:v52 constant:-10.0];

  *(v11 + 96) = v53;
  v54 = [v10 leftAnchor];
  v55 = [v1 view];
  if (!v55)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v56 = v55;
  v57 = [v55 safeAreaLayoutGuide];

  v58 = [v57 leftAnchor];
  v59 = [v54 constraintEqualToAnchor:v58 constant:10.0];

  *(v11 + 104) = v59;
  v60 = [v10 bottomAnchor];
  v61 = [v1 view];
  v119 = v10;
  if (v61)
  {
    v62 = v61;
    v118 = objc_opt_self();
    v63 = [v62 safeAreaLayoutGuide];

    v64 = [v63 bottomAnchor];
    v65 = [v60 constraintEqualToAnchor:v64 constant:-10.0];

    *(v11 + 112) = v65;
    sub_1001AD6F0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v118 activateConstraints:isa];

    v67 = type metadata accessor for ExportView();
    v68 = objc_allocWithZone(v67);
    v69 = OBJC_IVAR____TtC11FTMInternal10ExportView_label;
    *&v68[v69] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    *&v68[OBJC_IVAR____TtC11FTMInternal10ExportView_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v68[OBJC_IVAR____TtC11FTMInternal10ExportView_timeFrame] = 0;
    v70 = &v68[OBJC_IVAR____TtC11FTMInternal10ExportView_labelText];
    *v70 = 0x796C696144;
    v70[1] = 0xE500000000000000;
    v122.receiver = v68;
    v122.super_class = v67;
    v71 = objc_msgSendSuper2(&v122, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_1001AD144();
    *&v71[OBJC_IVAR____TtC11FTMInternal10ExportView_delegate + 8] = &off_100321308;
    swift_unknownObjectWeakAssign();
    v72 = objc_allocWithZone(v67);
    v73 = OBJC_IVAR____TtC11FTMInternal10ExportView_label;
    *&v72[v73] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    *&v72[OBJC_IVAR____TtC11FTMInternal10ExportView_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v72[OBJC_IVAR____TtC11FTMInternal10ExportView_timeFrame] = 1;
    v74 = &v72[OBJC_IVAR____TtC11FTMInternal10ExportView_labelText];
    *v74 = 0x796C6B656557;
    v74[1] = 0xE600000000000000;
    v121.receiver = v72;
    v121.super_class = v67;
    v75 = objc_msgSendSuper2(&v121, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_1001AD144();
    *&v75[OBJC_IVAR____TtC11FTMInternal10ExportView_delegate + 8] = &off_100321308;
    swift_unknownObjectWeakAssign();
    v76 = objc_allocWithZone(v67);
    v77 = OBJC_IVAR____TtC11FTMInternal10ExportView_label;
    *&v76[v77] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    *&v76[OBJC_IVAR____TtC11FTMInternal10ExportView_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v76[OBJC_IVAR____TtC11FTMInternal10ExportView_timeFrame] = 2;
    v78 = &v76[OBJC_IVAR____TtC11FTMInternal10ExportView_labelText];
    *v78 = 0x796C68746E6F4DLL;
    v78[1] = 0xE700000000000000;
    v120.receiver = v76;
    v120.super_class = v67;
    v79 = objc_msgSendSuper2(&v120, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_1001AD144();
    *&v79[OBJC_IVAR____TtC11FTMInternal10ExportView_delegate + 8] = &off_100321308;
    swift_unknownObjectWeakAssign();
    v80 = v71;
    [v119 addSubview:v80];
    v81 = v75;
    [v119 addSubview:v81];
    v82 = v79;
    [v119 addSubview:v82];
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1002F50C0;
    v84 = [v80 topAnchor];

    v85 = [v119 topAnchor];
    v86 = [v84 constraintEqualToAnchor:v85 constant:10.0];

    *(v83 + 32) = v86;
    v87 = [v80 rightAnchor];

    v88 = [v119 rightAnchor];
    v89 = [v87 constraintEqualToAnchor:v88 constant:-10.0];

    *(v83 + 40) = v89;
    v90 = [v80 leftAnchor];

    v91 = [v119 leftAnchor];
    v92 = [v90 constraintEqualToAnchor:v91 constant:10.0];

    *(v83 + 48) = v92;
    v93 = [v80 heightAnchor];

    v94 = [v93 constraintEqualToConstant:150.0];
    *(v83 + 56) = v94;
    v95 = [v81 topAnchor];

    v96 = [v80 bottomAnchor];
    v97 = [v95 constraintEqualToAnchor:v96 constant:10.0];

    *(v83 + 64) = v97;
    v98 = [v81 rightAnchor];

    v99 = [v119 rightAnchor];
    v100 = [v98 constraintEqualToAnchor:v99 constant:-10.0];

    *(v83 + 72) = v100;
    v101 = [v81 leftAnchor];

    v102 = [v119 leftAnchor];
    v103 = [v101 constraintEqualToAnchor:v102 constant:10.0];

    *(v83 + 80) = v103;
    v104 = [v81 heightAnchor];

    v105 = [v104 constraintEqualToConstant:150.0];
    *(v83 + 88) = v105;
    v106 = [v82 topAnchor];

    v107 = [v81 bottomAnchor];
    v108 = [v106 constraintEqualToAnchor:v107 constant:10.0];

    *(v83 + 96) = v108;
    v109 = [v82 rightAnchor];

    v110 = [v119 rightAnchor];
    v111 = [v109 constraintEqualToAnchor:v110 constant:-10.0];

    *(v83 + 104) = v111;
    v112 = [v82 leftAnchor];

    v113 = [v119 leftAnchor];
    v114 = [v112 constraintEqualToAnchor:v113 constant:10.0];

    *(v83 + 112) = v114;
    v115 = [v82 heightAnchor];

    v116 = [v115 constraintEqualToConstant:150.0];
    *(v83 + 120) = v116;
    v117 = Array._bridgeToObjectiveC()().super.isa;

    [v118 activateConstraints:v117];

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_10026DCDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FTMInternal20ExportViewController_persistanceStore);
}

id sub_10026DD4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExportViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10026DE20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10026DE58()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10026DE90(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Metric(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002EED40;
    swift_getErrorValue();
    v43 = Error.localizedDescription.getter();
    v44 = v13;
    sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_1001A76E8();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v42 = v9;
    v17 = sub_10026C7A0();
    v18 = OBJC_IVAR____TtC11FTMInternal11LoadingView_shouldHideLoadingView;
    v17[OBJC_IVAR____TtC11FTMInternal11LoadingView_shouldHideLoadingView] = 1;
    v19 = sub_10020582C();
    [v19 setHidden:v17[v18]];

    v20 = sub_100205934();
    [v20 setHidden:v17[v18]];

    [*&v17[OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator] stopAnimating];
    [v17 setHidden:1];

    if (a1)
    {
      v21 = *(a1 + 16);
      v22 = &_swiftEmptyArrayStorage;
      if (v21)
      {
        v41 = a3;
        v45 = &_swiftEmptyArrayStorage;
        sub_1001F53D8(0, v21, 0);
        v22 = v45;
        v23 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v24 = *(v7 + 72);
        do
        {
          sub_100249AC8(v23, v11);
          v43 = 0;
          v44 = 0xE000000000000000;
          _print_unlocked<A, B>(_:_:)();
          v25 = v43;
          v26 = v44;
          sub_100249B2C(v11);
          v45 = v22;
          v28 = v22[2];
          v27 = v22[3];
          if (v28 >= v27 >> 1)
          {
            sub_1001F53D8((v27 > 1), v28 + 1, 1);
            v22 = v45;
          }

          v22[2] = v28 + 1;
          v29 = &v22[2 * v28];
          v29[4] = v25;
          v29[5] = v26;
          v23 += v24;
          --v21;
        }

        while (v21);
        a3 = v41;
      }

      v43 = v22;
      sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
      sub_1001A7684();
      v30 = BidirectionalCollection<>.joined(separator:)();
      v32 = v31;

      sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1002EED40;
      *(v33 + 56) = &type metadata for String;
      *(v33 + 32) = v30;
      *(v33 + 40) = v32;
      v34 = objc_allocWithZone(UIActivityViewController);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v36 = [v34 initWithActivityItems:isa applicationActivities:0];

      v37 = v36;
      [v37 setModalPresentationStyle:7];
      v38 = [v37 popoverPresentationController];

      if (v38)
      {
        v39 = [a3 view];
        [v38 setSourceView:v39];

        [v38 setPermittedArrowDirections:0];
      }

      [a3 presentViewController:v37 animated:1 completion:0];
    }
  }
}

uint64_t sub_10026E368(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746C7561666564;
    v6 = 0x6F65646976;
    if (a1 != 2)
    {
      v6 = 0x756F72676B636162;
    }

    if (a1)
    {
      v5 = 1885958006;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D61657274537661;
    v2 = 0x69736E6F70736572;
    if (a1 != 7)
    {
      v2 = 0x6E6769536C6C6163;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6563696F76;
    if (a1 != 4)
    {
      v3 = 0x69736E6F70736572;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10026E4A0(void *a1, int a2)
{
  LODWORD(v79) = a2;
  v3 = sub_1001A551C(&qword_100379C88, &qword_1002F5310);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  __chkstk_darwin(v3);
  v70 = &v55 - v5;
  v6 = sub_1001A551C(&qword_100379C90, &qword_1002F5318);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  __chkstk_darwin(v6);
  v67 = &v55 - v8;
  v9 = sub_1001A551C(&qword_100379C98, &qword_1002F5320);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  __chkstk_darwin(v9);
  v64 = &v55 - v11;
  v63 = sub_1001A551C(&qword_100379CA0, &qword_1002F5328);
  v62 = *(v63 - 8);
  v12 = *(v62 + 64);
  __chkstk_darwin(v63);
  v61 = &v55 - v13;
  v60 = sub_1001A551C(&qword_100379CA8, &qword_1002F5330);
  v59 = *(v60 - 8);
  v14 = *(v59 + 64);
  __chkstk_darwin(v60);
  v58 = &v55 - v15;
  v57 = sub_1001A551C(&qword_100379CB0, &qword_1002F5338);
  v78 = *(v57 - 8);
  v16 = *(v78 + 64);
  __chkstk_darwin(v57);
  v77 = &v55 - v17;
  v56 = sub_1001A551C(&qword_100379CB8, &qword_1002F5340);
  v76 = *(v56 - 8);
  v18 = *(v76 + 64);
  __chkstk_darwin(v56);
  v75 = &v55 - v19;
  v20 = sub_1001A551C(&qword_100379CC0, &qword_1002F5348);
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  __chkstk_darwin(v20);
  v23 = &v55 - v22;
  v24 = sub_1001A551C(&qword_100379CC8, &qword_1002F5350);
  v73 = *(v24 - 8);
  v25 = *(v73 + 64);
  __chkstk_darwin(v24);
  v27 = &v55 - v26;
  v81 = sub_1001A551C(&qword_100379CD0, &qword_1002F5358);
  v28 = *(v81 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v81);
  v31 = &v55 - v30;
  v32 = a1[4];
  sub_1001A5610(a1, a1[3]);
  sub_100270230();
  v80 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v33 = (v28 + 8);
  v34 = v79;
  if (v79 <= 3u)
  {
    v72 = v24;
    v79 = v33;
    v41 = v73;
    v40 = v74;
    v42 = v75;
    v43 = v76;
    v44 = v77;
    v45 = v78;
    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v84 = 2;
        sub_10027047C();
        v49 = v42;
        v51 = v80;
        v50 = v81;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v43 + 8))(v49, v56);
      }

      else
      {
        v85 = 3;
        sub_100270428();
        v53 = v44;
        v51 = v80;
        v50 = v81;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v45 + 8))(v53, v57);
      }
    }

    else
    {
      if (!v34)
      {
        v82 = 0;
        sub_100270524();
        v46 = v80;
        v47 = v81;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v41 + 8))(v27, v72);
        return (*v79)(v46, v47);
      }

      v83 = 1;
      sub_1002704D0();
      v51 = v80;
      v50 = v81;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v40 + 8))(v23, v20);
    }

    return (*v79)(v51, v50);
  }

  else
  {
    if (v79 <= 5u)
    {
      if (v79 == 4)
      {
        v86 = 4;
        sub_1002703D4();
        v52 = v58;
        v36 = v80;
        v37 = v81;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v59 + 8))(v52, v60);
      }

      else
      {
        v87 = 5;
        sub_100270380();
        v54 = v61;
        v36 = v80;
        v37 = v81;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v62 + 8))(v54, v63);
      }
    }

    else
    {
      if (v79 == 6)
      {
        v88 = 6;
        sub_10027032C();
        v35 = v64;
        v36 = v80;
        v37 = v81;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v39 = v65;
        v38 = v66;
      }

      else if (v79 == 7)
      {
        v89 = 7;
        sub_1002702D8();
        v35 = v67;
        v36 = v80;
        v37 = v81;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v39 = v68;
        v38 = v69;
      }

      else
      {
        v90 = 8;
        sub_100270284();
        v35 = v70;
        v36 = v80;
        v37 = v81;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v39 = v71;
        v38 = v72;
      }

      (*(v39 + 8))(v35, v38);
    }

    return (*v33)(v36, v37);
  }
}

uint64_t sub_10026ED9C(uint64_t a1)
{
  v2 = sub_10027032C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026EDD8(uint64_t a1)
{
  v2 = sub_10027032C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026EE14@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10026EE44(uint64_t a1)
{
  v2 = sub_100270428();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026EE80(uint64_t a1)
{
  v2 = sub_100270428();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026EEBC(uint64_t a1)
{
  v2 = sub_100270284();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026EEF8(uint64_t a1)
{
  v2 = sub_100270284();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026EF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10026F474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10026EF70(uint64_t a1)
{
  v2 = sub_100270230();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026EFAC(uint64_t a1)
{
  v2 = sub_100270230();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026EFE8(uint64_t a1)
{
  v2 = sub_100270524();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026F024(uint64_t a1)
{
  v2 = sub_100270524();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026F060(uint64_t a1)
{
  v2 = sub_1002702D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026F09C(uint64_t a1)
{
  v2 = sub_1002702D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026F0D8(uint64_t a1)
{
  v2 = sub_100270380();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026F114(uint64_t a1)
{
  v2 = sub_100270380();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026F150(uint64_t a1)
{
  v2 = sub_10027047C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026F18C(uint64_t a1)
{
  v2 = sub_10027047C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026F1C8(uint64_t a1)
{
  v2 = sub_1002703D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026F204(uint64_t a1)
{
  v2 = sub_1002703D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026F240(uint64_t a1)
{
  v2 = sub_1002704D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026F27C(uint64_t a1)
{
  v2 = sub_1002704D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026F2B8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026F454(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10026F2E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10026E354(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_10026F314()
{
  result = qword_100379BD0;
  if (!qword_100379BD0)
  {
    sub_1001A55C8(&qword_100379BD8, qword_1002F5160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379BD0);
  }

  return result;
}

char *sub_10026F378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026F76C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10026F400()
{
  result = qword_100379BE0;
  if (!qword_100379BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379BE0);
  }

  return result;
}

uint64_t sub_10026F454(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 9;
  }

  else
  {
    return byte_1002F5B50[a1];
  }
}

uint64_t sub_10026F474(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1885958006 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6563696F76 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69736E6F70736572 && a2 == 0xEE00617461446576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D61657274537661 && a2 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69736E6F70736572 && a2 == 0xEC00000056416576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6769536C6C6163 && a2 == 0xED0000676E696C61)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

char *sub_10026F76C(uint64_t *a1)
{
  v2 = sub_1001A551C(&qword_100379BE8, &qword_1002F52B8);
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  __chkstk_darwin(v2);
  v82 = &v59 - v4;
  v5 = sub_1001A551C(&qword_100379BF0, &qword_1002F52C0);
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = *(v75 + 64);
  __chkstk_darwin(v5);
  v81 = &v59 - v7;
  v8 = sub_1001A551C(&qword_100379BF8, &qword_1002F52C8);
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  __chkstk_darwin(v8);
  v80 = &v59 - v10;
  v11 = sub_1001A551C(&qword_100379C00, &qword_1002F52D0);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = *(v71 + 64);
  __chkstk_darwin(v11);
  v85 = &v59 - v13;
  v69 = sub_1001A551C(&qword_100379C08, &qword_1002F52D8);
  v70 = *(v69 - 8);
  v14 = *(v70 + 64);
  __chkstk_darwin(v69);
  v84 = &v59 - v15;
  v68 = sub_1001A551C(&qword_100379C10, &qword_1002F52E0);
  v67 = *(v68 - 8);
  v16 = *(v67 + 64);
  __chkstk_darwin(v68);
  v83 = &v59 - v17;
  v66 = sub_1001A551C(&qword_100379C18, &qword_1002F52E8);
  v65 = *(v66 - 8);
  v18 = *(v65 + 64);
  __chkstk_darwin(v66);
  v79 = &v59 - v19;
  v64 = sub_1001A551C(&qword_100379C20, &qword_1002F52F0);
  v63 = *(v64 - 8);
  v20 = *(v63 + 64);
  __chkstk_darwin(v64);
  v22 = &v59 - v21;
  v23 = sub_1001A551C(&qword_100379C28, &qword_1002F52F8);
  v62 = *(v23 - 8);
  v24 = *(v62 + 64);
  __chkstk_darwin(v23);
  v26 = &v59 - v25;
  v27 = sub_1001A551C(&qword_100379C30, &unk_1002F5300);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v59 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v86 = a1;
  sub_1001A5610(a1, v32);
  sub_100270230();
  v34 = v87;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v34)
  {
    v60 = v26;
    v59 = v23;
    v35 = v22;
    v36 = v83;
    v37 = v84;
    v38 = v85;
    v87 = v28;
    v61 = v31;
    v39 = KeyedDecodingContainer.allKeys.getter();
    v40 = (2 * *(v39 + 16)) | 1;
    v88 = v39;
    v89 = v39 + 32;
    v90 = 0;
    v91 = v40;
    v41 = sub_1001C52D8();
    if (v41 != 9 && v90 == v91 >> 1)
    {
      v31 = v41;
      if (v41 <= 3u)
      {
        v42 = v61;
        if (v41 > 1u)
        {
          if (v41 == 2)
          {
            v92 = 2;
            sub_10027047C();
            v57 = v79;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v65 + 8))(v57, v66);
          }

          else
          {
            v92 = 3;
            sub_100270428();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v67 + 8))(v36, v68);
          }

          (*(v87 + 8))(v42, v27);
          goto LABEL_29;
        }

        v43 = v87;
        if (v41)
        {
          v92 = 1;
          sub_1002704D0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v54 = *(v63 + 8);
          v55 = v35;
          v56 = &v93;
        }

        else
        {
          v92 = 0;
          sub_100270524();
          v53 = v60;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v54 = *(v62 + 8);
          v55 = v53;
          v56 = &v91;
        }
      }

      else
      {
        v42 = v61;
        if (v41 > 5u)
        {
          v43 = v87;
          if (v41 == 6)
          {
            v92 = 6;
            sub_10027032C();
            v44 = v80;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v46 = v73;
            v45 = v74;
          }

          else
          {
            if (v41 != 7)
            {
              v92 = 8;
              sub_100270284();
              v58 = v82;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v77 + 8))(v58, v78);
LABEL_28:
              (*(v43 + 8))(v42, v27);
LABEL_29:
              swift_unknownObjectRelease();
              sub_1001A5654(v86);
              return v31;
            }

            v92 = 7;
            sub_1002702D8();
            v44 = v81;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v46 = v75;
            v45 = v76;
          }

          goto LABEL_26;
        }

        v43 = v87;
        if (v41 != 4)
        {
          v92 = 5;
          sub_100270380();
          v44 = v38;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v46 = v71;
          v45 = v72;
LABEL_26:
          v54 = *(v46 + 8);
          v55 = v44;
          goto LABEL_27;
        }

        v92 = 4;
        sub_1002703D4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v54 = *(v70 + 8);
        v55 = v37;
        v56 = &v94;
      }

      v45 = *(v56 - 32);
LABEL_27:
      v54(v55, v45);
      goto LABEL_28;
    }

    v47 = type metadata accessor for DecodingError();
    v31 = swift_allocError();
    v49 = v48;
    v50 = *(sub_1001A551C(&qword_100376048, &qword_1002F0820) + 48);
    *v49 = &type metadata for SURLSessionTrafficClass;
    v51 = v61;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v47 - 8) + 104))(v49, enum case for DecodingError.typeMismatch(_:), v47);
    swift_willThrow();
    (*(v87 + 8))(v51, v27);
    swift_unknownObjectRelease();
  }

  sub_1001A5654(v86);
  return v31;
}

unint64_t sub_100270230()
{
  result = qword_100379C38;
  if (!qword_100379C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379C38);
  }

  return result;
}

unint64_t sub_100270284()
{
  result = qword_100379C40;
  if (!qword_100379C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379C40);
  }

  return result;
}

unint64_t sub_1002702D8()
{
  result = qword_100379C48;
  if (!qword_100379C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379C48);
  }

  return result;
}

unint64_t sub_10027032C()
{
  result = qword_100379C50;
  if (!qword_100379C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379C50);
  }

  return result;
}

unint64_t sub_100270380()
{
  result = qword_100379C58;
  if (!qword_100379C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379C58);
  }

  return result;
}

unint64_t sub_1002703D4()
{
  result = qword_100379C60;
  if (!qword_100379C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379C60);
  }

  return result;
}

unint64_t sub_100270428()
{
  result = qword_100379C68;
  if (!qword_100379C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379C68);
  }

  return result;
}

unint64_t sub_10027047C()
{
  result = qword_100379C70;
  if (!qword_100379C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379C70);
  }

  return result;
}

unint64_t sub_1002704D0()
{
  result = qword_100379C78;
  if (!qword_100379C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379C78);
  }

  return result;
}

unint64_t sub_100270524()
{
  result = qword_100379C80;
  if (!qword_100379C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379C80);
  }

  return result;
}

uint64_t sub_10027057C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100270610(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100270764()
{
  result = qword_100379CD8;
  if (!qword_100379CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379CD8);
  }

  return result;
}

unint64_t sub_1002707BC()
{
  result = qword_100379CE0;
  if (!qword_100379CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379CE0);
  }

  return result;
}

unint64_t sub_100270814()
{
  result = qword_100379CE8;
  if (!qword_100379CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379CE8);
  }

  return result;
}

unint64_t sub_10027086C()
{
  result = qword_100379CF0;
  if (!qword_100379CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379CF0);
  }

  return result;
}

unint64_t sub_1002708C4()
{
  result = qword_100379CF8;
  if (!qword_100379CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379CF8);
  }

  return result;
}

unint64_t sub_10027091C()
{
  result = qword_100379D00;
  if (!qword_100379D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D00);
  }

  return result;
}