uint64_t sub_1003C295C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a2;
  v46 = a3;
  v3 = sub_100004CB8(&qword_1006448D0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v45 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_100004CB8(&qword_100644830);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v41 = sub_1004DB85C();
  sub_1004DBD1C();
  sub_1004D9F5C();
  v40 = v47[1];
  LODWORD(v39) = v48;
  v15 = v49;
  v38 = v50;
  v37 = v51;
  v36 = v52;
  v16 = sub_1004DB87C();
  v17 = &v14[*(v10 + 44)];
  v18 = *(sub_100004CB8(&qword_100644838) + 36);
  v19 = enum case for BlendMode.destinationOut(_:);
  v20 = sub_1004DBDAC();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17 + v18, v19, v20);
  *v17 = v16;
  *(v17 + *(sub_100004CB8(&qword_100644840) + 56)) = 256;
  v22 = v40;
  *v14 = v41;
  *(v14 + 1) = v22;
  v14[16] = v39;
  *(v14 + 3) = v15;
  v14[32] = v38;
  v23 = v36;
  *(v14 + 5) = v37;
  *(v14 + 6) = v23;
  v41 = sub_1004DB85C();
  sub_1004DBD1C();
  sub_1004D9F5C();
  v24 = v53;
  LOBYTE(v15) = v54;
  v25 = v55;
  LOBYTE(v19) = v56;
  v40 = v57;
  v39 = v58;
  sub_1003C2DC4(v47);
  v26 = v47[0];
  v27 = &v8[*(v4 + 44)];
  v28 = sub_100004CB8(&qword_100644848);
  (*(v21 + 16))(v27 + *(v28 + 36), v44, v20);
  *v27 = v26;
  *(v27 + *(sub_100004CB8(&qword_100644850) + 56)) = 256;
  v29 = v42;
  *v8 = v41;
  *(v8 + 1) = v24;
  v8[16] = v15;
  *(v8 + 3) = v25;
  v8[32] = v19;
  v30 = v39;
  *(v8 + 5) = v40;
  *(v8 + 6) = v30;
  sub_1000108DC(v14, v29, &qword_100644830);
  v31 = v45;
  sub_1000108DC(v8, v45, &qword_1006448D0);
  v32 = v46;
  sub_1000108DC(v29, v46, &qword_100644830);
  v33 = sub_100004CB8(&qword_1006448D8);
  sub_1000108DC(v31, v32 + *(v33 + 48), &qword_1006448D0);
  sub_10001074C(v8, &qword_1006448D0);
  sub_10001074C(v14, &qword_100644830);
  sub_10001074C(v31, &qword_1006448D0);
  return sub_10001074C(v29, &qword_100644830);
}

uint64_t sub_1003C2DC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_100004CB8(&qword_100644870);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v22 = &v21 - v5;
  v6 = sub_1004DA8BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004D9D8C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Reactions.StackView(0);
  sub_10032A924(v13);
  sub_10032A8D4(v9);
  v14 = *(v4 + 56);
  v15 = v11;
  v16 = v22;
  (*(v15 + 32))(v22, v13, v10);
  (*(v7 + 32))(v16 + v14, v9, v6);
  v17 = (*(v15 + 88))(v16, v10);
  if (v17 == enum case for ColorScheme.light(_:))
  {
    if ((*(v7 + 88))(v16 + v14, v6) == enum case for ColorSchemeContrast.increased(_:))
    {
      v18 = [objc_opt_self() secondarySystemFillColor];
      v24 = sub_1004DB8CC();
LABEL_7:
      *v23 = sub_1004D9F6C();
      return (*(v15 + 8))(v16, v10);
    }
  }

  else if (v17 == enum case for ColorScheme.dark(_:) && (*(v7 + 88))(v16 + v14, v6) == enum case for ColorSchemeContrast.increased(_:))
  {
    LODWORD(v24) = sub_1004DABFC();
    goto LABEL_7;
  }

  if (*(*(v2 + 8) + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) == 1)
  {
    LODWORD(v24) = sub_1004DABDC();
  }

  else
  {
    v20 = [objc_opt_self() secondarySystemFillColor];
    v24 = sub_1004DB8CC();
  }

  *v23 = sub_1004D9F6C();
  return sub_10001074C(v16, &qword_100644870);
}

uint64_t sub_1003C317C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a2;
  v91 = a3;
  v85 = a1;
  v94 = a4;
  v81 = sub_1004DA35C();
  v78 = *(v81 - 8);
  __chkstk_darwin(v81);
  v75 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_100644820);
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin(v6);
  v76 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v71 - v9;
  v10 = sub_1004DB8FC();
  v73 = *(v10 - 8);
  v74 = v10;
  __chkstk_darwin(v10);
  v72 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004CB8(&qword_100641CB0);
  __chkstk_darwin(v12 - 8);
  v88 = &v71 - v13;
  v89 = sub_100004CB8(&qword_100644828) - 8;
  __chkstk_darwin(v89);
  v93 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v71 - v16;
  v18 = sub_100004CB8(&qword_100644830);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v95 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v71 - v22;
  v92 = sub_1004DB85C();
  v24 = *(a1 + 8);
  sub_1004DBD1C();
  sub_1004D9F5C();
  v25 = v123;
  LODWORD(v87) = v124;
  v86 = v125;
  LODWORD(v84) = v126;
  v82 = v128;
  *&v83 = v127;
  v26 = sub_1004DB87C();
  v27 = &v23[*(v19 + 44)];
  v28 = *(sub_100004CB8(&qword_100644838) + 36);
  v29 = enum case for BlendMode.destinationOut(_:);
  v30 = sub_1004DBDAC();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v27 + v28, v29, v30);
  *v27 = v26;
  *(v27 + *(sub_100004CB8(&qword_100644840) + 56)) = 256;
  *v23 = v92;
  *(v23 + 1) = v25;
  v23[16] = v87;
  *(v23 + 3) = v86;
  v23[32] = v84;
  v32 = v82;
  *(v23 + 5) = v83;
  *(v23 + 6) = v32;
  v92 = v23;
  sub_1003C3CC4(&v129);
  v86 = *(&v131 + 1);
  v87 = v131;
  LOBYTE(v27) = v132;
  v33 = sub_1004DB02C();
  v83 = v130;
  v84 = v129;
  v34 = v88;
  (*(*(v33 - 8) + 56))(v88, 1, 1, v33);
  v35 = sub_1004DB07C();
  sub_10001074C(v34, &qword_100641CB0);
  KeyPath = swift_getKeyPath();
  LOBYTE(v129) = v27;
  sub_1004DBD1C();
  v88 = v24;
  sub_1004D9F5C();
  sub_1003C2DC4(&v129);
  v37 = v129;
  v38 = &v17[*(v89 + 44)];
  v39 = sub_100004CB8(&qword_100644848);
  (*(v31 + 16))(&v38[*(v39 + 36)], v91, v30);
  *v38 = v37;
  *&v38[*(sub_100004CB8(&qword_100644850) + 56)] = 256;
  v40 = v83;
  *v17 = v84;
  *(v17 + 1) = v40;
  v41 = v86;
  *(v17 + 4) = v87;
  *(v17 + 5) = v41;
  v17[48] = v27;
  *(v17 + 7) = KeyPath;
  *(v17 + 8) = v35;
  v42 = v140;
  *(v17 + 72) = v139;
  *(v17 + 88) = v42;
  v43 = v17;
  *(v17 + 104) = v141;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v44 = v129;
  if (!v129)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v129 != 1)
  {

LABEL_5:
    sub_1003C5110(&v129);
    goto LABEL_6;
  }

  v45 = v44;
  sub_1004DB8DC();
  v47 = v72;
  v46 = v73;
  v48 = v74;
  (*(v73 + 104))(v72, enum case for Image.ResizingMode.stretch(_:), v74);
  v91 = sub_1004DB94C();

  (*(v46 + 8))(v47, v48);
  v49 = sub_1004DBD1C();
  v89 = v50;
  v90 = v49;
  sub_1004DB84C();
  v87 = sub_1004DB88C();

  sub_1004DBE7C();
  v51 = v75;
  sub_1004DA36C();
  sub_1004DBD8C();
  v52 = sub_1003C5130(&qword_100644868, &type metadata accessor for ScaleTransition);
  v53 = v77;
  v54 = v81;
  sub_1004D9D4C();

  (*(v78 + 8))(v51, v54);
  v55 = v79;
  v56 = v80;
  (*(v79 + 16))(v76, v53, v80);
  *&v129 = v54;
  *(&v129 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  v57 = sub_1004D9FCC();
  (*(v55 + 8))(v53, v56);
  sub_1004DBD1C();
  sub_1004D9F5C();

  *(v122 + 8) = v106;
  v116 = v91;
  LOWORD(v117) = 257;
  *(&v117 + 1) = v90;
  *&v118 = v89;
  *(&v118 + 1) = v87;
  *&v119 = 0x3FE0000000000000;
  BYTE8(v119) = 0;
  v120 = 0uLL;
  LOBYTE(v121) = 2;
  *(&v121 + 1) = 0x3FF0000000000000;
  *&v122[0] = v57;
  *(&v122[1] + 8) = v107;
  *(&v122[2] + 8) = v108;
  v58.location = &v116;
  CFRange.init(_:)(v58);
  v135 = v122[0];
  v136 = v122[1];
  v137 = v122[2];
  v138 = *&v122[3];
  v131 = v118;
  v132 = v119;
  v133 = v120;
  v134 = v121;
  v129 = v116;
  v130 = v117;
LABEL_6:
  v59 = v92;
  v60 = v95;
  sub_1000108DC(v92, v95, &qword_100644830);
  v61 = v93;
  sub_1000108DC(v43, v93, &qword_100644828);
  v102 = v135;
  v103 = v136;
  v104 = v137;
  v105 = v138;
  v98 = v131;
  v99 = v132;
  v100 = v133;
  v101 = v134;
  v96 = v129;
  v97 = v130;
  v62 = v60;
  v63 = v94;
  sub_1000108DC(v62, v94, &qword_100644830);
  v64 = sub_100004CB8(&qword_100644858);
  sub_1000108DC(v61, v63 + *(v64 + 48), &qword_100644828);
  v65 = v63 + *(v64 + 64);
  v112 = v102;
  v113 = v103;
  v114 = v104;
  v115 = v105;
  v110 = v100;
  v111 = v101;
  v108 = v98;
  v109 = v99;
  v106 = v96;
  v107 = v97;
  sub_1000108DC(&v106, &v116, &qword_100644860);
  sub_10001074C(v43, &qword_100644828);
  sub_10001074C(v59, &qword_100644830);
  v66 = v113;
  *(v65 + 96) = v112;
  *(v65 + 112) = v66;
  *(v65 + 128) = v114;
  *(v65 + 144) = v115;
  v67 = v109;
  *(v65 + 32) = v108;
  *(v65 + 48) = v67;
  v68 = v111;
  *(v65 + 64) = v110;
  *(v65 + 80) = v68;
  v69 = v107;
  *v65 = v106;
  *(v65 + 16) = v69;
  v122[0] = v102;
  v122[1] = v103;
  v122[2] = v104;
  *&v122[3] = v105;
  v118 = v98;
  v119 = v99;
  v120 = v100;
  v121 = v101;
  v116 = v96;
  v117 = v97;
  sub_10001074C(&v116, &qword_100644860);
  sub_10001074C(v61, &qword_100644828);
  return sub_10001074C(v95, &qword_100644830);
}

double sub_1003C3CC4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1004DA35C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (*(&v35 + 1))
  {
    sub_1002E6780();
    v9 = sub_1004DB34C();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = sub_1004DBD8C();
    sub_1004DBE7C();
    sub_1004DA36C();
    (*(v3 + 16))(v5, v8, v2);
    sub_1003C5130(&qword_100644868, &type metadata accessor for ScaleTransition);
    v17 = sub_1004D9FCC();
    (*(v3 + 8))(v8, v2);
    v28 = v9;
    v29 = v11;
    v30 = v13 & 1;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = 0;
  }

  else
  {
    v18 = sub_1004DB90C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    if (v35 == 1)
    {
      v19 = sub_1004DB89C();
    }

    else
    {
      v19 = sub_1004DB7FC();
    }

    v20 = v19;
    v21 = sub_1004DB0DC();
    KeyPath = swift_getKeyPath();
    v28 = v18;
    v29 = v20;
    v30 = KeyPath;
    v31 = v21;
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  sub_100004CB8(&qword_100644878);
  sub_100004CB8(&qword_100644880);
  sub_1003C5178();
  sub_1003C525C();
  sub_1004DAADC();
  result = *&v35;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  *a1 = v35;
  *(a1 + 16) = v24;
  *(a1 + 32) = v25;
  *(a1 + 48) = v26;
  return result;
}

uint64_t Reactions.StackView.Specs.init(maxItemCount:platterLength:stackSpacing:fontSize:sizingMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t sub_1003C4020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C4084()
{
  v1 = type metadata accessor for Reactions.StackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 49) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = sub_1004DBDAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  v8 = v1[6];
  sub_100004CB8(&qword_100641B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1004D9D8C();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  sub_100004CB8(&unk_10063DBC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1004DA8BC();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  sub_100004CB8(&unk_100641090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1004DA25C();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v3 + v15 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1003C4320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C4384@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for Reactions.StackView(0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1004DBDAC() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1003C2690(v1 + v4, v7, a1);
}

unint64_t sub_1003C446C()
{
  result = qword_1006444F8;
  if (!qword_1006444F8)
  {
    sub_100008DE4(&qword_1006444E8);
    sub_1003C44F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006444F8);
  }

  return result;
}

unint64_t sub_1003C44F0()
{
  result = qword_100644500;
  if (!qword_100644500)
  {
    sub_100008DE4(&qword_100644508);
    sub_1003C457C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644500);
  }

  return result;
}

unint64_t sub_1003C457C()
{
  result = qword_100644510;
  if (!qword_100644510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644510);
  }

  return result;
}

unint64_t sub_1003C45D0()
{
  result = qword_100644518;
  if (!qword_100644518)
  {
    sub_100008DE4(&qword_1006444F0);
    sub_100042B08(&qword_100644520, &qword_100644528);
    sub_100042B08(&qword_100643218, &qword_100643220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644518);
  }

  return result;
}

unint64_t sub_1003C46D4()
{
  result = qword_100644550;
  if (!qword_100644550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644550);
  }

  return result;
}

uint64_t sub_1003C476C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_100004CB8(&qword_1006418C0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100004CB8(&qword_1006404F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_100004CB8(&qword_10063FF28);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1003C4910(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100004CB8(&qword_1006418C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100004CB8(&qword_1006404F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_100004CB8(&qword_10063FF28);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_1003C4AA0()
{
  sub_1003C4BB0();
  if (v0 <= 0x3F)
  {
    sub_1003C4C44(319, &qword_100641938, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_1003C4C44(319, &unk_100640568, &type metadata accessor for ColorSchemeContrast);
      if (v2 <= 0x3F)
      {
        sub_1003C4C44(319, &qword_1006415A0, &type metadata accessor for DynamicTypeSize);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003C4BB0()
{
  if (!qword_1006445C0)
  {
    type metadata accessor for Reactions.StackView.Model(255);
    sub_1003C5130(&qword_1006444C8, type metadata accessor for Reactions.StackView.Model);
    v0 = sub_1004DA16C();
    if (!v1)
    {
      atomic_store(v0, &qword_1006445C0);
    }
  }
}

void sub_1003C4C44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004D9DCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003C4CA0()
{
  sub_100236040(319, &qword_100644638, &qword_100644AB0);
  if (v0 <= 0x3F)
  {
    sub_1003C4E3C(319, &unk_100644640);
    if (v1 <= 0x3F)
    {
      sub_100236040(319, &unk_100642A80, &qword_10063E4C0);
      if (v2 <= 0x3F)
      {
        sub_1003C4E3C(319, &qword_1006411B8);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1003C4E3C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1004D9B9C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1003C4E88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1003C4ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1003C4F38()
{
  result = qword_1006447F0;
  if (!qword_1006447F0)
  {
    sub_100008DE4(&qword_1006447F8);
    sub_1003C4FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006447F0);
  }

  return result;
}

unint64_t sub_1003C4FC4()
{
  result = qword_100644800;
  if (!qword_100644800)
  {
    sub_100008DE4(&qword_100644548);
    sub_1003C5050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644800);
  }

  return result;
}

unint64_t sub_1003C5050()
{
  result = qword_100644808;
  if (!qword_100644808)
  {
    sub_100008DE4(&qword_100644540);
    sub_100042B08(&qword_100644810, &qword_100644818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644808);
  }

  return result;
}

double sub_1003C5110(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1003C5130(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003C5178()
{
  result = qword_100644888;
  if (!qword_100644888)
  {
    sub_100008DE4(&qword_100644878);
    sub_100042B08(&qword_100644890, &qword_100644898);
    sub_100042B08(&qword_100643218, &qword_100643220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644888);
  }

  return result;
}

unint64_t sub_1003C525C()
{
  result = qword_1006448A0;
  if (!qword_1006448A0)
  {
    sub_100008DE4(&qword_100644880);
    sub_1003C5314();
    sub_100042B08(&unk_100641BF0, &qword_100640088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006448A0);
  }

  return result;
}

unint64_t sub_1003C5314()
{
  result = qword_1006448A8;
  if (!qword_1006448A8)
  {
    sub_100008DE4(&qword_1006448B0);
    sub_100042B08(&qword_1006448B8, &qword_1006448C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006448A8);
  }

  return result;
}

id sub_1003C54B4(uint64_t a1, uint64_t a2)
{
  sub_1003C979C(a1, v16);
  v5 = v17;
  if (v17)
  {
    v6 = sub_100008C70(v16, v17);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1004DF06C();
    (*(v7 + 8))(v10, v5);
    sub_100008D24(v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for SliderView.PanGestureRecognizer();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, "initWithTarget:action:", v11, a2);
  swift_unknownObjectRelease();
  sub_1002DFAAC(a1);
  return v13;
}

uint64_t *SliderView.Specs.barHeight.unsafeMutableAddressor()
{
  if (qword_10063DAB8 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.barHeight;
}

uint64_t *SliderView.Specs.expandedBarHeight.unsafeMutableAddressor()
{
  if (qword_10063DAC0 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.expandedBarHeight;
}

CGFloat sub_1003C57D4()
{
  CGAffineTransformMakeScale(&v1, 1.05, 1.05);
  result = v1.a;
  *static SliderView.Specs.expandedTransform = v1;
  return result;
}

char *SliderView.Specs.expandedTransform.unsafeMutableAddressor()
{
  if (qword_10063DAC8 != -1)
  {
    swift_once();
  }

  return static SliderView.Specs.expandedTransform;
}

double static SliderView.Specs.expandedTransform.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_10063DAC8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&static SliderView.Specs.expandedTransform[16];
  *a1 = *static SliderView.Specs.expandedTransform;
  a1[1] = v1;
  result = *&static SliderView.Specs.expandedTransform[32];
  a1[2] = *&static SliderView.Specs.expandedTransform[32];
  return result;
}

uint64_t *SliderView.Specs.stretchLimit.unsafeMutableAddressor()
{
  if (qword_10063DAD0 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.stretchLimit;
}

uint64_t *SliderView.Specs.escapeHeight.unsafeMutableAddressor()
{
  if (qword_10063DAD8 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.escapeHeight;
}

id sub_1003C5A0C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_100673C20 = result;
  return result;
}

double sub_1003C5A60()
{
  v0 = Int.seconds.getter(1);
  result = v0 / Int.seconds.getter(100);
  qword_100673C28 = *&result;
  return result;
}

id SliderView.panRecognizer.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SliderView.PanGestureRecognizer()) initWithTarget:v0 action:"panGestureRecognized:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void SliderView.panRecognizer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = a1;
}

void (*SliderView.panRecognizer.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = SliderView.panRecognizer.getter();
  return sub_1003C5BA0;
}

void sub_1003C5BA0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = v2;
}

id SliderView.trackLayoutGuide.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackLayoutGuide.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SliderView.elapsedTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.elapsedTrackColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

void (*SliderView.elapsedTrackColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_1003C5EB0;
}

void sub_1003C5EB0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6))
    {
      v7 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
      swift_beginAccess();
      v8 = v3[9];
    }

    else
    {
      v8 = v3[9];
      v7 = (v8 + v3[10]);
    }

    [v5 setBackgroundColor:*v7];
    v9 = *(v8 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v8 + v10)];
  }

  free(v3);
}

id SliderView.remainingTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.remainingTrackColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v9 = (v1 + v8);
  swift_beginAccess();
  [v6 setBackgroundColor:*v9];
  [*(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v1 + v3)];
}

void (*SliderView.remainingTrackColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_1003C618C;
}

void sub_1003C618C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
    if (!*(v4 + v6))
    {
      v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
    }

    v8 = *v7;
    v10 = v3[9];
    v9 = v3[10];
    swift_beginAccess();
    [v5 setBackgroundColor:*(v10 + v8)];
    [*(v10 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v10 + v9)];
  }

  free(v3);
}

id SliderView.trackingColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackingColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if ((*(v1 + v7) & 1) == 0)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

void (*SliderView.trackingColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_1003C6464;
}

void sub_1003C6464(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6) == 1)
    {
      v7 = v3[9];
      v8 = (v7 + v3[10]);
    }

    else
    {
      v8 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
      swift_beginAccess();
      v7 = v3[9];
    }

    [v5 setBackgroundColor:*v8];
    v9 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v7 + v10)];
  }

  free(v3);
}

double SliderView.value.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void SliderView.isEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = SliderView.panRecognizer.getter();
  [v4 setEnabled:*(v1 + v3)];
}

void (*SliderView.isEnabled.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1003C66EC;
}

void sub_1003C66EC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = SliderView.panRecognizer.getter();
    [v6 setEnabled:*(v4 + v5)];
  }

  free(v3);
}

uint64_t SliderView.isTracking.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.transitionStartValue.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  swift_beginAccess();
  return *v1;
}

void SliderView.transitionStartValue.setter(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = *&a1;
  *(v5 + 8) = a2 & 1;
  if (v7)
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && v6 == *&a1)
  {
    return;
  }

  sub_1003C8F54();
  if ((v5[1] & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v8)
    {
      v9 = *v5;
      v10 = v8;
      [v2 bounds];
      [v10 setConstant:v9 * CGRectGetWidth(v11)];
    }
  }
}

void (*SliderView.transitionStartValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_1003C6968;
}

void sub_1003C6968(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 32);
  if (a2)
  {
    SliderView.transitionStartValue.setter(*&v4, v5);
    goto LABEL_3;
  }

  v6 = *(v3 + 40) + *(v3 + 48);
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = v4;
  *(v6 + 8) = v5;
  if (v8)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v7 == v4)
    {
      v9 = v5;
    }

    else
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v10 = *(v3 + 40) + *(v3 + 48);
  sub_1003C8F54();
  if ((*(v10 + 8) & 1) == 0)
  {
    v11 = *(v3 + 40);
    v12 = *&v11[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v12)
    {
      v13 = *&v11[*(v3 + 48)];
      v14 = v12;
      [v11 bounds];
      [v14 setConstant:v13 * CGRectGetWidth(v16)];
    }
  }

LABEL_3:

  free(v3);
}

uint64_t sub_1003C6B24(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1003C6BAC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id SliderView.semanticContentAttribute.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SliderView();
  return objc_msgSendSuper2(&v2, "semanticContentAttribute");
}

id SliderView.semanticContentAttribute.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v4, "setSemanticContentAttribute:", a1);
  return [*&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] setSemanticContentAttribute:{objc_msgSend(v1, "semanticContentAttribute")}];
}

uint64_t sub_1003C6DE8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1004DE4EC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v14 - 8);
  v16 = &v95 - v15;
  v17 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v18 = [objc_allocWithZone(UIStackView) init];
  v19 = UIView.forAutolayout.getter();

  *&v5[v17] = v19;
  v20 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v21 = [objc_allocWithZone(UIView) init];
  v22 = UIView.forAutolayout.getter();

  *&v5[v20] = v22;
  v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v24 = [objc_allocWithZone(UIView) init];
  v25 = UIView.forAutolayout.getter();

  *&v5[v23] = v25;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = 0;
  v26 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *&v5[v26] = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v27 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  *v28 = 0u;
  v28[1] = 0u;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer] = 0;
  v29 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *&v5[v29] = [objc_allocWithZone(UILayoutGuide) init];
  v30 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v31 = objc_opt_self();
  *&v5[v30] = [v31 whiteColor];
  v32 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *&v5[v32] = [v31 systemFillColor];
  v33 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_10063D810 != -1)
  {
    swift_once();
  }

  v34 = static UIColor.MusicTint.normal;
  *&v5[v33] = static UIColor.MusicTint.normal;
  v35 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *&v5[v35] = Int.seconds.getter(0);
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled] = 1;
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking] = 0;
  v36 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  *v36 = 0;
  v36[8] = 1;
  v37 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  *v37 = 0;
  v37[1] = 0;
  v38 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler];
  *v38 = 0;
  v38[1] = 0;
  v39 = type metadata accessor for SliderView();
  v96.receiver = v5;
  v96.super_class = v39;
  v40 = v34;
  v41 = objc_msgSendSuper2(&v96, "initWithFrame:", a1, a2, a3, a4);
  v42 = SliderView.panRecognizer.getter();
  [v42 _setRequiresSystemGesturesToFail:0];

  v43 = *&v41[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer];
  v44 = v41;
  [v44 addGestureRecognizer:v43];
  v45 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  [v44 addLayoutGuide:*&v44[v45]];
  [v44 setExclusiveTouch:1];
  v46 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v47 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  [*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack]];
  [*&v44[v46] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack]];
  [*&v44[v46] setAxis:0];
  v48 = qword_10063DAB8;
  v49 = *&v44[v46];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = *&static SliderView.Specs.barHeight;
  *v13 = *&static SliderView.Specs.barHeight * 0.5;
  *(v13 + 8) = 1;
  (*(v11 + 104))(v13, enum case for UIView.Corner.Radius.value(_:), v10);
  sub_1004DDE9C();
  sub_1004DE4FC();
  v51 = sub_1004DE53C();
  (*(*(v51 - 8) + 56))(v16, 0, 1, v51);
  sub_1004DE54C();

  v52 = [*&v44[v46] layer];
  [v52 setMasksToBounds:1];

  [v44 addSubview:*&v44[v46]];
  v53 = [*&v44[v47] widthAnchor];
  v54 = [v53 constraintEqualToConstant:0.0];

  v55 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint;
  v56 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = v54;

  v57 = [*&v44[v46] heightAnchor];
  v58 = [v57 constraintEqualToConstant:v50];

  v59 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint;
  v60 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = v58;

  sub_100004CB8(&qword_100642970);
  result = swift_allocObject();
  *(result + 16) = xmmword_1005272D0;
  v62 = *&v44[v55];
  if (v62)
  {
    v63 = result;
    *(result + 32) = v62;
    v64 = *&v44[v59];
    if (v64)
    {
      v95 = objc_opt_self();
      v63[5] = v64;
      v65 = *&v44[v46];
      v66 = v62;
      v67 = v64;
      v68 = [v65 leadingAnchor];
      v69 = [v44 leadingAnchor];

      v70 = [v68 constraintEqualToAnchor:v69];
      v63[6] = v70;
      v71 = [*&v44[v46] trailingAnchor];
      v72 = [v44 trailingAnchor];

      v73 = [v71 constraintEqualToAnchor:v72];
      v63[7] = v73;
      v74 = [*&v44[v46] topAnchor];
      v75 = [v44 topAnchor];

      v76 = [v74 constraintEqualToAnchor:v75];
      v63[8] = v76;
      v77 = [*&v44[v46] bottomAnchor];
      v78 = [v44 bottomAnchor];

      v79 = [v77 constraintEqualToAnchor:v78];
      v63[9] = v79;
      v80 = [*&v44[v46] centerYAnchor];
      v81 = [v44 centerYAnchor];

      v82 = [v80 constraintEqualToAnchor:v81];
      v63[10] = v82;
      v83 = [*&v44[v45] leadingAnchor];
      v84 = [v44 leadingAnchor];

      v85 = [v83 constraintEqualToAnchor:v84];
      v63[11] = v85;
      v86 = [*&v44[v45] trailingAnchor];
      v87 = [v44 trailingAnchor];

      v88 = [v86 constraintEqualToAnchor:v87];
      v63[12] = v88;
      v89 = [*&v44[v45] centerYAnchor];
      v90 = [v44 centerYAnchor];

      v91 = [v89 constraintEqualToAnchor:v90];
      v63[13] = v91;
      v92 = [*&v44[v45] heightAnchor];
      v93 = [v92 constraintEqualToConstant:v50];

      v63[14] = v93;
      sub_100006F10(0, qword_10063F500);
      isa = sub_1004DD85C().super.isa;

      [v95 activateConstraints:isa];

      return v44;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SliderView.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  if (!CGRectEqualToRect(v11, *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds]))
  {
    v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      Width = CGRectGetWidth(v12);
      v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
      swift_beginAccess();
      [v3 setConstant:Width * *&v0[v5]];

      [v0 bounds];
      *v1 = v6;
      *(v1 + 1) = v7;
      *(v1 + 2) = v8;
      *(v1 + 3) = v9;
    }

    else
    {
      __break(1u);
    }
  }
}

void SliderView.setValue(_:animated:)(char a1, double a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a2 <= 1.0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v4 != *&v2[v5])
  {
    v6 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v6)
    {
      v7 = v6;
      [v2 bounds];
      [v7 setConstant:v4 * CGRectGetWidth(v16)];

      sub_1003C8808();
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      *(v8 + 24) = v4;
      if (a1)
      {
        v9 = vabdd_f64(*&v2[v5], v4) * 0.25;
        if (v9 > 0.1)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0.1;
        }

        v11 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = sub_1003C9364;
        *(v12 + 24) = v8;
        aBlock[4] = sub_10001185C;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100012680;
        aBlock[3] = &unk_1005F2C30;
        v13 = _Block_copy(aBlock);
        v14 = v2;

        [v11 animateWithDuration:4 delay:v13 options:0 animations:v10 completion:0.0];

        _Block_release(v13);
      }

      else
      {
        *&v2[v5] = v4;
        [v2 layoutIfNeeded];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003C7BE0(void *a1)
{
  v3 = [a1 state];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v35 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v35] != 1)
      {
        return;
      }

      v36 = swift_allocObject();
      *(v36 + 16) = v1;
      v1[v35] = 0;
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = v1;
      *(v37 + 32) = sub_1003C9890;
      *(v37 + 40) = v36;
      v27 = objc_opt_self();
      v55 = sub_1003C9BFC;
      v56 = v37;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v28 = &unk_1005F2DD8;
    }

    else
    {
      if (v3 != 4)
      {
        return;
      }

      v24 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v24] != 1)
      {
        return;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = v1;
      v1[v24] = 0;
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = v1;
      *(v26 + 32) = sub_1003C9874;
      *(v26 + 40) = v25;
      v27 = objc_opt_self();
      v55 = sub_1003C9880;
      v56 = v26;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v28 = &unk_1005F2D60;
    }

    v53 = sub_100012680;
    v54 = v28;
    v38 = _Block_copy(&aBlock);
    v39 = v1;

    [v27 _animateUsingSpringWithDuration:2 delay:v38 options:0 mass:1.0 stiffness:0.0 damping:2.0 initialVelocity:500.0 animations:40.0 completion:0.0];
    goto LABEL_39;
  }

  if (v3 == 1)
  {
    v29 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (!v29)
    {
      goto LABEL_54;
    }

    [v29 constant];
    v30 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
    *v30 = v31;
    v30[8] = 0;
    v32 = swift_allocObject();
    *(v32 + 16) = v1;
    v33 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (v1[v33] == 1)
    {
      v34 = v1;

      return;
    }

    v1[v33] = 1;
    v40 = swift_allocObject();
    *(v40 + 16) = 1;
    *(v40 + 24) = v1;
    *(v40 + 32) = sub_1003C98B0;
    *(v40 + 40) = v32;
    v41 = objc_opt_self();
    v55 = sub_1003C9BFC;
    v56 = v40;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100012680;
    v54 = &unk_1005F2E50;
    v38 = _Block_copy(&aBlock);
    v42 = v1;

    [v41 _animateUsingSpringWithDuration:2 delay:v38 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:288.0 animations:26.5 completion:0.0];
LABEL_39:

    _Block_release(v38);
    return;
  }

  if (v3 != 2)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (v1[v4] != 1 || (v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth + 8] & 1) != 0)
  {
    return;
  }

  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  [a1 translationInView:v1];
  v7 = v6;
  v9 = fabs(v8);
  if (qword_10063DAD8 != -1)
  {
    v50 = v9;
    swift_once();
    v9 = v50;
  }

  if (v9 >= *&static SliderView.Specs.escapeHeight)
  {
    v43 = SliderView.panRecognizer.getter();
    [v43 setState:4];

    return;
  }

  v10 = [v1 effectiveUserInterfaceLayoutDirection];
  v11 = -v7;
  if (v10 != 1)
  {
    v11 = v7;
  }

  v12 = v5 + v11;
  [v1 bounds];
  Width = CGRectGetWidth(v58);
  if (Width >= v12)
  {
    Width = v12;
  }

  if (Width < 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = Width;
  }

  v15 = v1;
  [v1 bounds];
  v16 = v14 / CGRectGetWidth(v59);
  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  if (v16 <= 1.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  v57 = 14;
  v18 = sub_1002FEAD0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v18) & 1) == 0)
  {
    v23 = 0;
    v19 = v15;
    goto LABEL_43;
  }

  v19 = v1;
  v20 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  if ((v20[1] & 1) == 0)
  {
    v21 = *v20;
    if (qword_10063DAE8 != -1)
    {
      swift_once();
    }

    v22 = v21 + *&qword_100673C28;
    if (v21 - *&qword_100673C28 <= v21 + *&qword_100673C28)
    {
      if (v21 - *&qword_100673C28 <= v17)
      {
        v23 = v17 <= v22;
        if (v17 <= v22)
        {
          v17 = v21;
        }

        goto LABEL_43;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

LABEL_27:
  v23 = 0;
LABEL_43:
  v44 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v17 != *&v19[v44])
  {
    v45 = v17 == 1.0;
    if (v17 == 0.0)
    {
      v45 = 1;
    }

    if (v45 || v23)
    {
      [*&v19[OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator] impactOccurred];
    }
  }

  SliderView.setValue(_:animated:)(0, v17);
  v46 = v15;
  v47 = &v15[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  swift_beginAccess();
  v48 = *v47;
  if (*v47)
  {
    v49 = *&v46[v44];

    v48(1, v49);
    sub_10000DE74(v48);
  }
}

uint64_t sub_1003C82F4(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler);
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {

    v3(v4);
    return sub_10000DE74(v3);
  }

  return result;
}

uint64_t sub_1003C8368(uint64_t a1, char a2)
{
  v4 = (a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
    swift_beginAccess();
    v8 = *(a1 + v7);

    v6(a2 & 1, v8);
    return sub_10000DE74(v6);
  }

  return result;
}

void sub_1003C8488(char a1, _BYTE *a2, void (*a3)(id))
{
  v6 = sub_1004DE4EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  if ((a1 & 1) == 0)
  {
    if (v13)
    {
      v17 = qword_10063DAB8;
      v15 = v13;
      if (v17 != -1)
      {
        swift_once();
      }

      v16 = &static SliderView.Specs.barHeight;
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
    return;
  }

  if (!v13)
  {
    __break(1u);
    goto LABEL_21;
  }

  v14 = qword_10063DAC0;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = &static SliderView.Specs.expandedBarHeight;
LABEL_10:
  v18 = *v16;
  [v15 setConstant:*v16];

  *v9 = v18 * 0.5;
  *(v9 + 8) = 1;
  (*(v7 + 104))(v9, enum case for UIView.Corner.Radius.value(_:), v6);
  sub_1004DDE9C();
  sub_1004DE4FC();
  v19 = sub_1004DE53C();
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  sub_1004DE54C();
  v20 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
  if (v20)
  {
    v21 = 0.0;
    if (a1)
    {
      v21 = 1.0;
    }

    v20 = [v20 setAlpha:v21];
  }

  if (a3)
  {
    a3(v20);
  }

  v22 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack];
  v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (a2[v23] == 1)
  {
    v24 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v24 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v25 = &a2[v24];
  swift_beginAccess();
  [v22 setBackgroundColor:*v25];
  v26 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack];
  v27 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v26 setBackgroundColor:*&a2[v27]];
  sub_1003C8808();
  [a2 layoutIfNeeded];
}

void sub_1003C8808()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint);
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v1;
  [v2 constant];
  v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint);
  if (!v5)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v6 = v4;
  v7 = v4 * 0.5;
  [v5 constant];
  v9 = v8;
  [*(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView) frame];
  Width = CGRectGetWidth(v24);
  v11 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v6 * 0.5 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{1.57079633, 4.71238898}];
  v12 = v11;
  v13 = Width - v7;
  if (v9 <= Width - v7)
  {
    [v11 addLineToPoint:{v9, 0.0}];
    [v12 addLineToPoint:{v9, v6}];
  }

  else if (v9 >= Width)
  {
    [v11 addLineToPoint:{Width - v7, 0.0}];
    [v12 addArcWithCenter:1 radius:Width - v7 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{4.71238898, 1.57079633}];
  }

  else
  {
    v14 = v7 - (Width - v9);
    v15 = 1.57079633 - acos(v14 / v7);
    v16 = sqrt(v7 * v7 - v14 * v14);
    v17 = v16 + v16;
    [v12 addLineToPoint:{v13, 0.0}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{4.71238898, (v15 + 4.71238898)}];
    [v12 currentPoint];
    v19 = v18;
    [v12 currentPoint];
    [v12 addLineToPoint:{v19, v17 + v20}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{(1.57079633 - v15), 1.57079633}];
  }

  [v12 closePath];
  v21 = [v3 layer];
  v22 = [v12 CGPath];
  [v21 setShadowPath:v22];
}

Swift::Void __swiftcall SliderView.addGlowIfNeeded()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow;
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow])
  {
    v2 = [objc_allocWithZone(UIView) init];
    v3 = v0;
    v4 = UIView.forAutolayout.getter();

    v5 = [v4 layer];
    v6 = [objc_opt_self() whiteColor];
    v7 = [v6 CGColor];

    [v5 setShadowColor:v7];
    v8 = [v4 layer];
    [v8 setShadowOpacity:0.0];

    v9 = [v4 layer];
    [v9 setShadowOffset:{0.0, 0.0}];

    v10 = [v4 layer];
    [v10 setShadowRadius:4.0];

    v11 = *&v3[v1];
    *&v3[v1] = v4;
    v12 = v4;

    [v3 addSubview:v12];
    sub_1003C8808();
    sub_100006F10(0, &qword_100644F50);
    if (qword_10063DAE0 != -1)
    {
      swift_once();
    }

    v13 = qword_100673C20;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v15 = v12;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v13, 0, sub_1003C959C, v14, 0, 0, 0.65, 0.0);
  }
}

Swift::Void __swiftcall SliderView.removeGlowIfNeeded()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow];
  if (v1)
  {
    sub_100006F10(0, &qword_100644F50);
    v2 = qword_10063DAE0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = qword_100673C20;
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = v3;
    v8 = v0;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v4, 0, sub_1003C95FC, v5, sub_1003C961C, v6, 0.65, 0.0);
  }
}

void sub_1003C8EF0(void *a1, float a2)
{
  v4 = [a1 layer];
  *&v3 = a2;
  [v4 setShadowOpacity:v3];
}

void sub_1003C8F54()
{
  v1 = v0;
  v2 = sub_1002FEAD0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
    swift_beginAccess();
    v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark;
    v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
    if (v3[1])
    {
      [v5 removeFromSuperview];
      v6 = *&v1[v4];
      *&v1[v4] = 0;

      isa = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
    }

    else
    {
      if (v5)
      {
        return;
      }

      v8 = *v3;
      v9 = [objc_allocWithZone(UIView) init];
      v10 = UIView.forAutolayout.getter();

      v11 = [objc_opt_self() blackColor];
      [v10 setBackgroundColor:v11];

      v12 = [v10 layer];
      [v12 setCompositingFilter:kCAFilterDestOut];

      v13 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      v14 = 0.0;
      if (v1[v13])
      {
        v14 = 1.0;
      }

      [v10 setAlpha:v14];
      [v1 addSubview:v10];
      v15 = *&v1[v4];
      *&v1[v4] = v10;
      v16 = v10;

      v17 = [v16 leadingAnchor];
      v18 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView];
      v19 = [v18 leadingAnchor];
      [v1 bounds];
      v20 = [v17 constraintEqualToAnchor:v19 constant:v8 * CGRectGetWidth(v32)];

      v21 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint;
      v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = v20;

      sub_100004CB8(&qword_100642970);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1005127F0;
      v24 = [v16 widthAnchor];
      v25 = [v24 constraintEqualToConstant:2.0];

      *(v23 + 32) = v25;
      v26 = [v16 heightAnchor];
      v27 = [v18 heightAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v23 + 40) = v28;
      v29 = *&v1[v21];
      if (!v29)
      {
        __break(1u);
        return;
      }

      v30 = objc_opt_self();
      *(v23 + 48) = v29;
      sub_100006F10(0, qword_10063F500);
      v31 = v29;
      isa = sub_1004DD85C().super.isa;

      [v30 activateConstraints:isa];
    }
  }
}

uint64_t sub_1003C932C()
{

  return swift_deallocObject();
}

id sub_1003C9364()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  *&v1[v3] = v2;
  return [v1 layoutIfNeeded];
}

id sub_1003C93E0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1003C954C()
{

  return swift_deallocObject();
}

uint64_t sub_1003C9584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003C95C4()
{

  return swift_deallocObject();
}

void sub_1003C961C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
}

double sub_1003C9634@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1003C968C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1003C96E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1003C9738(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1003C979C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100644FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003C980C()
{
  result = qword_1006449E8;
  if (!qword_1006449E8)
  {
    sub_100006F10(255, &qword_1006449E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006449E8);
  }

  return result;
}

uint64_t sub_1003C98D0()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

void sub_1003C9918()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v3 = [objc_allocWithZone(UIStackView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v6 = [objc_allocWithZone(UIView) init];
  v7 = UIView.forAutolayout.getter();

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v9 = [objc_allocWithZone(UIView) init];
  v10 = UIView.forAutolayout.getter();

  *(v1 + v8) = v10;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint) = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *(v1 + v11) = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v12 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds);
  *v13 = 0u;
  v13[1] = 0u;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = 0;
  v14 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *(v1 + v14) = [objc_allocWithZone(UILayoutGuide) init];
  v15 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v16 = objc_opt_self();
  *(v1 + v15) = [v16 whiteColor];
  v17 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v1 + v17) = [v16 systemFillColor];
  v18 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_10063D810 != -1)
  {
    swift_once();
  }

  *(v1 + v18) = static UIColor.MusicTint.normal;
  v19 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *(v1 + v19) = Int.seconds.getter(0);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking) = 0;
  v20 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler);
  *v22 = 0;
  v22[1] = 0;
  sub_1004DECCC();
  __break(1u);
}

unint64_t SymbolButton.CustomView.init(view:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>, int64x2_t a3@<Q0>, int64x2_t a4@<Q1>)
{
  a3.i64[0] = 0;
  *a2 = result;
  a4.i64[0] = result;
  v4 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(a4, a3)).i64[0], 0);
  v5 = vandq_s8(*&UIEdgeInsetsZero.bottom, v4);
  v6 = 0x3FF0000000000000;
  *(a2 + 8) = vandq_s8(*&UIEdgeInsetsZero.top, v4);
  if (!result)
  {
    v6 = 0;
  }

  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  return result;
}

BOOL sub_1003C9C54(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1004DF26C();
  v4 = qword_100533448[a1];
  sub_1004DF27C(v4);
  v5 = sub_1004DF2BC();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_100533448[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1003C9D34(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004DCDAC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1003DF6DC(&qword_100641C20, &type metadata accessor for Playlist.Collaborator), v7 = sub_1004DD2AC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1003DF6DC(&qword_100641C28, &type metadata accessor for Playlist.Collaborator);
      v15 = sub_1004DD35C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1003C9F4C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_1004DF26C();
    sub_1004DF27C(a1 & 1);
    v5 = sub_1004DF2BC();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t SymbolButton.updateConfigurationIfNeeded(_:animation:)(uint64_t a1, uint64_t a2, id a3, uint64_t a4, int a5)
{
  v6 = v5;
  v77 = a5;
  v78 = a4;
  v76 = a2;
  v75 = sub_1004D98EC();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004CB8(&qword_100644070);
  __chkstk_darwin(v10 - 8);
  v12 = &v70 - v11;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000108DC(a1, v12, &qword_100644070);
  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    v18 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_1003DF60C(&v6[v18], v16, type metadata accessor for SymbolButton.Configuration);
    if (v17(v12, 1, v13) != 1)
    {
      sub_10001074C(v12, &qword_100644070);
    }
  }

  else
  {
    sub_1003DF674(v12, v16, type metadata accessor for SymbolButton.Configuration);
  }

  v19 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  if (v6[v19])
  {
    sub_1002E009C(*(v16 + 25), *(v16 + 26));
    *(v16 + 200) = xmmword_100512770;
    *(v16 + 27) = 0;
    *(v16 + 28) = 0;
  }

  v20 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  v21 = &selRef_setShadowPathIsBounds_;
  if ((v6[v20] & 1) != 0 || *&v16[*(v13 + 68)] != 0.0)
  {
    [v6 state];
    v22 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
    swift_beginAccess();
    v23 = v6[v22];
    v79 = v13;
    v72 = v19;
    if (v23 & 1) != 0 || (v24 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted, swift_beginAccess(), (v6[v24]) || (v25 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected, swift_beginAccess(), v6[v25] == 1))
    {
      if ((v6[v19] & 1) == 0)
      {
        v70 = v22;
        v71 = a3;
        if (qword_10063DB28 != -1)
        {
          swift_once();
        }

        v27 = static SymbolButton.Background.normal;
        v26 = qword_100673CE8;
        v29 = qword_100673CF0;
        v28 = qword_100673CF8;
        v30 = *(v16 + 25);
        v31 = *(v16 + 26);

        v32 = v26;
        sub_1002E009C(v30, v31);
        *(v16 + 25) = v27;
        *(v16 + 26) = v26;
        *(v16 + 27) = v29;
        *(v16 + 28) = v28;
        a3 = v71;
        v13 = v79;
        v21 = &selRef_setShadowPathIsBounds_;
        v22 = v70;
      }

      v33 = [v6 v21[234]];
      v34 = [v33 userInterfaceIdiom];

      if (v34 == 6)
      {
        v35 = objc_opt_self();
        v36 = [v35 labelColor];

        *(v16 + 14) = v36;
        v13 = v79;
        v37 = [v35 labelColor];

        *(v16 + 22) = v37;
      }

      *&v16[*(v13 + 68)] = 0x3FF0000000000000;
      v19 = v72;
    }

    if (([v6 state] & 2) != 0 && v6[v22] == 1)
    {
      *&v16[*(v13 + 68)] = 0x3FD0000000000000;
    }

    if ([v6 state])
    {
      v38 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
      swift_beginAccess();
      v39 = v79;
      if (v6[v38] == 1)
      {
        if ((v6[v19] & 1) == 0)
        {
          v71 = a3;
          if (qword_10063DB30 != -1)
          {
            swift_once();
          }

          v40 = static SymbolButton.Background.highlighted;
          v41 = qword_100673D08;
          v42 = qword_100673D18;
          v70 = qword_100673D10;
          v43 = *(v16 + 25);
          v44 = *(v16 + 26);

          v45 = v41;
          sub_1002E009C(v43, v44);
          *(v16 + 25) = v40;
          *(v16 + 26) = v41;
          *(v16 + 27) = v70;
          *(v16 + 28) = v42;
          a3 = v71;
          v39 = v79;
          v21 = &selRef_setShadowPathIsBounds_;
        }

        v46 = *(v39 + 68);
        *&v16[v46] = 0x3FE0000000000000;
        v47 = [v6 v21[234]];
        v48 = [v47 userInterfaceIdiom];

        v49 = v48 == 6;
        v19 = v72;
        if (v49)
        {
          v50 = objc_opt_self();
          v51 = [v50 labelColor];

          *(v16 + 14) = v51;
          v52 = [v50 labelColor];

          *(v16 + 22) = v52;
          *&v16[v46] = 0x3FF0000000000000;
          if ([v6 showsMenuAsPrimaryAction])
          {
            if ([v6 isContextMenuInteractionEnabled])
            {
              v71 = v52;
              v53 = v51;
              if ((v6[v19] & 1) == 0)
              {
                sub_1002E009C(*(v16 + 25), *(v16 + 26));
                *(v16 + 25) = 0x3FF0000000000000;
                *(v16 + 26) = 0;
                *(v16 + 27) = 0;
                *(v16 + 28) = 0;
              }

              v54 = [v50 blackColor];

              *(v16 + 14) = v54;
              v55 = [v50 blackColor];

              *(v16 + 22) = v55;
            }
          }
        }
      }
    }

    if (([v6 state] & 4) != 0)
    {
      v56 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
      swift_beginAccess();
      v57 = v6[v56];
      v58 = v79;
      if (v57 == 1)
      {
        if ((v6[v19] & 1) == 0)
        {
          sub_1002E009C(*(v16 + 25), *(v16 + 26));
          *(v16 + 25) = 0x3FF0000000000000;
          *(v16 + 26) = 0;
          *(v16 + 27) = 0;
          *(v16 + 28) = 0;
        }

        v59 = *(v58 + 68);
        *&v16[v59] = 0x3FF0000000000000;
        v60 = [v6 v21[234]];
        v61 = [v60 userInterfaceIdiom];

        if (v61 == 6)
        {
          v62 = objc_opt_self();
          v63 = [v62 blackColor];

          *(v16 + 14) = v63;
          v64 = [v62 blackColor];

          *(v16 + 22) = v64;
        }

        else if ([v6 state])
        {
          *&v16[v59] = 0x3FE0000000000000;
        }
      }
    }
  }

  v65 = &v6[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v66 = *v65;
  if (*v65)
  {

    v67 = [v6 v21[234]];
    v68 = v73;
    sub_1004D98CC();
    [v6 isEnabled];
    sub_1004D987C();
    [v6 isSelected];
    sub_1004D989C();
    [v6 isHighlighted];
    sub_1004D98BC();
    v66(v68, v16);
    sub_10000DE74(v66);
    (*(v74 + 8))(v68, v75);
  }

  SymbolButton.setConfiguration(_:animation:updates:)(v16, v76, a3, v78, v77 & 1, _swiftEmptyArrayStorage);
  return sub_1003DD438(v16, type metadata accessor for SymbolButton.Configuration);
}

__n128 static SymbolButton.Material.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v6 = 0uLL;
  v7 = 0;
  v8 = 2;
  v9 = 0uLL;
  a1(&v6);
  v3 = v7;
  v4 = v8;
  result = v9;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = result;
  return result;
}

double static SymbolButton.Symbol.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v9 = 0uLL;
  v13 = 0uLL;
  v17 = 0;
  *&v16[7] = 0;
  *&v10 = 0;
  *(&v10 + 1) = UIFontTextStyleSubheadline;
  *&v11 = 0;
  BYTE8(v11) = 1;
  v12 = xmmword_1005272E0;
  v14[0] = -1;
  *&v14[16] = 0;
  *&v14[24] = 0x3FF0000000000000;
  *&v14[1] = *v16;
  v15 = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v9);
  v5 = *v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v5;
  *(a2 + 96) = *&v14[16];
  *(a2 + 112) = v15;
  v6 = v10;
  *a2 = v9;
  *(a2 + 16) = v6;
  result = *&v11;
  v8 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v8;
  return result;
}

__n128 static SymbolButton.Title.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v7 = 0uLL;
  v8.n128_u64[0] = UIFontTextStyleSubheadline;
  v8.n128_f64[1] = UIFontWeightSemibold;
  v9 = 0uLL;
  v10 = 0x3FF0000000000000uLL;
  LOBYTE(v11) = 0;
  *(&v11 + 1) = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v7);
  v5 = v10;
  *(a2 + 32) = v9;
  *(a2 + 48) = v5;
  *(a2 + 64) = v11;
  result = v8;
  *a2 = v7;
  *(a2 + 16) = result;
  return result;
}

uint64_t static SymbolButton.Background.with(_:)(void (*a1)(uint64_t *))
{
  v2 = 0x3FF0000000000000;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  a1(&v2);
  return v3;
}

char *SymbolButton.__allocating_init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1003DBAE0(a1, a2, a3);
  sub_10000DE74(a2);
  return v8;
}

char *SymbolButton.init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1003DBAE0(a1, a2, a3);
  sub_10000DE74(a2);
  return v4;
}

void sub_1003CACD8(void *a1)
{
  if ([a1 sender])
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      v1 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
      swift_beginAccess();
      v2 = *v1;
      if (*v1)
      {

        v2();

        sub_10000DE74(v2);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_10001074C(v6, &qword_100644FB0);
  }
}

id SymbolButton._monochromaticTreatment.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SymbolButton(0);
  return objc_msgSendSuper2(&v2, "_monochromaticTreatment");
}

void SymbolButton._monochromaticTreatment.setter(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SymbolButton(0);
  objc_msgSendSuper2(&v5, "_setMonochromaticTreatment:", a1);
  v3 = sub_1003D386C();
  [v3 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];

  v4 = sub_1003D36F4();
  [v4 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];
}

uint64_t SymbolButton.debugLabel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SymbolButton.debugLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SymbolButton.configurationProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_100004CB8(&qword_100644070);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  swift_beginAccess();
  v9 = *v8;
  *v8 = a1;
  v8[1] = a2;
  sub_10000DE64(a1);
  sub_10000DE74(v9);
  v10 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v7, 0, 0, 0, 1);
  sub_10000DE74(a1);
  return sub_10001074C(v7, &qword_100644070);
}

void (*SymbolButton.configurationProvider.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100004CB8(&qword_100644070) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  *(v4 + 32) = v6;
  swift_beginAccess();
  return sub_1003CB348;
}

void sub_1003CB348(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v4, 0, 0, 0, 1);
    sub_10001074C(v4, &qword_100644070);
  }

  free(v4);

  free(v3);
}

uint64_t SymbolButton.configurationState.getter()
{
  v1 = [v0 traitCollection];
  sub_1004D98CC();
  [v0 isEnabled];
  sub_1004D987C();
  [v0 isSelected];
  sub_1004D989C();
  [v0 isHighlighted];
  return sub_1004D98BC();
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100004CB8(&qword_100644070) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003DFF24;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenSelected.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1003CB6AC(char a1, uint64_t *a2)
{
  v5 = a1 & 1;
  v6 = sub_100004CB8(&qword_100644070);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = *a2;
  result = swift_beginAccess();
  v11 = *(v2 + v9);
  *(v2 + v9) = a1;
  if (v11 != v5)
  {
    v12 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v8, 0, 0, 0, 1);
    return sub_10001074C(v8, &qword_100644070);
  }

  return result;
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenSelected.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100004CB8(&qword_100644070) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003DFF24;
}

void sub_1003CB8A4(void ***a1)
{
  v1 = *a1;
  v2 = (*a1)[5];
  v3 = (*a1)[3];
  v4 = *(*a1 + 48);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    v6 = v1[4];
    v7 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
    sub_10001074C(v6, &qword_100644070);
  }

  free(v1[4]);

  free(v1);
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenDisabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100004CB8(&qword_100644070) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003DFF24;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHidden.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenHidden.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100004CB8(&qword_100644070) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003DFF24;
}

uint64_t SymbolButton.prefersSolariumTreatment.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.prefersSolariumTreatment.modify(uint64_t *a1))(void ***)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100004CB8(&qword_100644070) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003CBCE4;
}

uint64_t SymbolButton.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  return sub_1003DF60C(v1 + v3, a1, type metadata accessor for SymbolButton.Configuration);
}

void (*SymbolButton.configuration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(type metadata accessor for SymbolButton.Configuration(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 32) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 32) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 40) = v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003DF60C(v1 + v8, v7, type metadata accessor for SymbolButton.Configuration);
  return sub_1003CBEB8;
}

void sub_1003CBEB8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1003DF60C(*(*a1 + 40), v3, type metadata accessor for SymbolButton.Configuration);
    SymbolButton.setConfiguration(_:animation:updates:)(v3, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    sub_1003DD438(v3, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    SymbolButton.setConfiguration(_:animation:updates:)(*(*a1 + 40), 0, 0, 0, 1, _swiftEmptyArrayStorage);
  }

  sub_1003DD438(v4, type metadata accessor for SymbolButton.Configuration);
  free(v4);
  free(v3);

  free(v2);
}

uint64_t *SymbolButton.Background.normal.unsafeMutableAddressor()
{
  if (qword_10063DB28 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.normal;
}

uint64_t *SymbolButton.Background.highlighted.unsafeMutableAddressor()
{
  if (qword_10063DB30 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.highlighted;
}

uint64_t SymbolButton.Update.alongside.getter()
{
  v1 = *v0;
  sub_10000DE64(*v0);
  return v1;
}

uint64_t SymbolButton.Update.alongside.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10000DE74(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SymbolButton.Update.completion.getter()
{
  v1 = *(v0 + 32);
  sub_10000DE64(v1);
  return v1;
}

uint64_t SymbolButton.Update.completion.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10000DE74(*(v2 + 32));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SymbolButton.Update.init(alongside:animationOptions:completion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

void SymbolButton.setConfiguration(_:animation:updates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v171 = a6;
  LODWORD(v170) = a5;
  v164 = a4;
  v162 = *&a3;
  v168 = *&a2;
  ObjectType = swift_getObjectType();
  v174 = sub_100004CB8(&qword_10063E4C8);
  __chkstk_darwin(v174);
  v9 = &v158 - v8;
  v10 = sub_1004D82AC();
  v172 = *(v10 - 8);
  v173 = v10;
  __chkstk_darwin(v10);
  v12 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v165 = *(v13 - 8);
  __chkstk_darwin(v13);
  v175 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v169 = &v158 - v16;
  __chkstk_darwin(v17);
  v167 = &v158 - v18;
  __chkstk_darwin(v19);
  v21 = &v158 - v20;
  v166 = v22;
  __chkstk_darwin(v23);
  v25 = &v158 - v24;
  v26 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003DF60C(v6 + v26, v25, type metadata accessor for SymbolButton.Configuration);
  v27 = a1;
  v28 = _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v25);
  v29 = 0;
  if (v28)
  {
    goto LABEL_62;
  }

  sub_1003DF60C(v27, v21, type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v159 = v21;
  v160 = v6;
  sub_1003DC954(v21, v6 + v26);
  swift_endAccess();
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v161 = sub_1004D827C();
  v176 = v30;
  v172[1](v12, v173);
  v31 = *(v13 + 36);
  v32 = *(v174 + 12);
  v174 = v25;
  sub_1000108DC(&v25[v31], v9, &qword_100644A50);
  sub_1000108DC(v27 + v31, &v9[v32], &qword_100644A50);
  v33 = sub_1004DE53C();
  v34 = *(*(v33 - 8) + 48);
  v35 = v34(v9, 1, v33);
  v36 = v34(&v9[v32], 1, v33);
  v37 = v27;
  if (v35 == 1)
  {
    if (v36 != 1)
    {
      sub_10001074C(&v9[v32], &qword_100644A50);
LABEL_6:
      sub_10001074C(v9, &qword_100644A50);
      v38 = v160;
      *(v160 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
      v39 = v176;
      goto LABEL_8;
    }
  }

  else if (v36 == 1)
  {
    goto LABEL_6;
  }

  sub_10001074C(v9, &qword_10063E4C8);
  v39 = v176;
  v38 = v160;
LABEL_8:
  v172 = v13;
  [v38 invalidateIntrinsicContentSize];
  [v38 accessibilityUpdateSymbolButton];
  v40 = *(v37 + 8);
  v177 = v37;
  if (v40)
  {
    v41 = *(v37 + 16);
    v42 = sub_1004DD3FC();
    v43 = objc_opt_self();
    v44 = [v43 _systemImageNamed:v42];

    if (!v44)
    {
      v45 = sub_1004DD3FC();
      v44 = [v43 imageNamed:v45 inBundle:v41];
    }
  }

  else
  {
    v44 = 0;
  }

  [v38 setLargeContentImage:v44];

  v46 = [v38 window];
  if (!v46 || (v46, (v170 & 1) != 0) || (v47 = v168, v168 <= 0.0))
  {
    v60 = v177;
    if (qword_10063D808 != -1)
    {
      swift_once();
    }

    v61 = sub_1004D966C();
    v62 = sub_100035430(v61, qword_1006736D8);
    v63 = v175;
    sub_1003DF60C(v60, v175, type metadata accessor for SymbolButton.Configuration);
    v64 = v38;

    v65 = sub_1004D964C();
    v66 = sub_1004DDF6C();

    v67 = os_log_type_enabled(v65, v66);
    v173 = v62;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *&aBlock = v170;
      *v68 = 136446722;
      v69 = &v64[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      v70 = v69[1];
      if (v70)
      {
        v71 = *v69;
        v72 = v70;
      }

      else
      {
        v73 = v64;
        v74 = [v73 description];
        v71 = sub_1004DD43C();
        v72 = v75;

        v63 = v175;
      }

      v76 = sub_1002E5CC4(v71, v72, &aBlock);

      *(v68 + 4) = v76;
      *(v68 + 12) = 2082;
      *(v68 + 14) = sub_1002E5CC4(v161, v39, &aBlock);
      *(v68 + 22) = 2082;
      v77 = SymbolButton.Configuration.description.getter();
      v79 = v78;
      sub_1003DD438(v63, type metadata accessor for SymbolButton.Configuration);
      v80 = sub_1002E5CC4(v77, v79, &aBlock);

      *(v68 + 24) = v80;
      _os_log_impl(&_mh_execute_header, v65, v66, "[%{public}s] UpdateID=%{public}s — Applying new configuration=%{public}s", v68, 0x20u);
      swift_arrayDestroy();

      v60 = v177;
    }

    else
    {

      sub_1003DD438(v63, type metadata accessor for SymbolButton.Configuration);
    }

    sub_1003D4C48(v60);
    v81 = *(v171 + 16);
    v25 = v174;
    if (v81)
    {
      v82 = v171 + 72;
      while (1)
      {
        v83 = *(v82 - 40);
        v84 = *(v82 - 8);
        if (v83)
        {
          break;
        }

        sub_10000DE64(v84);
        if (v84)
        {
          goto LABEL_35;
        }

LABEL_30:
        v82 += 48;
        sub_10000DE74(v83);
        if (!--v81)
        {
          goto LABEL_36;
        }
      }

      sub_10000DE64(v84);
      sub_10000DE64(v83);
      v83(v64);
      if (!v84)
      {
        goto LABEL_30;
      }

LABEL_35:
      v84(v64);
      sub_10000DE74(v84);
      goto LABEL_30;
    }

LABEL_36:
    v85 = *(v25 + 5);
    v191[4] = *(v25 + 4);
    v191[5] = v85;
    v191[6] = *(v25 + 6);
    v192 = *(v25 + 14);
    v86 = *(v25 + 1);
    v191[0] = *v25;
    v191[1] = v86;
    v87 = *(v25 + 3);
    v191[2] = *(v25 + 2);
    v191[3] = v87;
    v88 = v177;
    v89 = *v177;
    v90 = v177[1];
    v91 = v177[3];
    v195 = v177[2];
    v196 = v91;
    aBlock = v89;
    v194 = v90;
    v92 = v177[4];
    v93 = v177[5];
    v94 = v177[6];
    v200 = *(v177 + 14);
    v198 = v93;
    v199 = v94;
    v197 = v92;
    if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v191, &aBlock))
    {
      goto LABEL_48;
    }

    v95 = *(v25 + 15);
    v96 = *(v25 + 16);
    v97 = *(v25 + 152);
    v180 = *(v25 + 136);
    v181 = v97;
    v182 = *(v25 + 168);
    v98 = v25[184];
    v179[0] = v95;
    v179[1] = v96;
    v183 = v98;
    *v184 = *(v25 + 185);
    v99 = *(v25 + 24);
    v100 = *(v88 + 120);
    v101 = *(v88 + 128);
    v102 = *(v88 + 152);
    v186 = *(v88 + 136);
    v187 = v102;
    v188 = *(v88 + 168);
    v103 = *(v88 + 184);
    *&v184[7] = v99;
    v185[0] = v100;
    v185[1] = v101;
    v189 = v103;
    *v190 = *(v88 + 185);
    *&v190[7] = *(v88 + 192);
    if (sub_1003DC41C(v179, v185))
    {
      goto LABEL_48;
    }

    if (v101)
    {
      if ((((*&v96 != 0) & (v98 ^ 1) ^ v103) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (((*&v96 != 0) & (v98 ^ 1)) != 0)
    {
      goto LABEL_48;
    }

    v104 = *(v172 + 10);
    v105 = *&v25[v104];
    v106 = *(v88 + v104);
    if (v105)
    {
      if (v105 != v106)
      {
        goto LABEL_48;
      }

LABEL_47:
      if ((*&v25[*(v172 + 11) + 16] == 1) == (*(v88 + *(v172 + 11) + 16) == 1))
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (!v106)
    {
      goto LABEL_47;
    }

LABEL_48:
    [v64 setNeedsLayout];
LABEL_49:
    v107 = v64;

    v108 = sub_1004D964C();
    v109 = sub_1004DDF6C();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v178[0] = swift_slowAlloc();
      *v110 = 136446466;
      v111 = &v107[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      if (v111[1])
      {
        v112 = *v111;
        v113 = v111[1];
      }

      else
      {
        v114 = [v107 description];
        v112 = sub_1004DD43C();
        v113 = v115;
      }

      v116 = sub_1002E5CC4(v112, v113, v178);

      *(v110 + 4) = v116;
      *(v110 + 12) = 2082;
      v117 = sub_1002E5CC4(v161, v176, v178);

      *(v110 + 14) = v117;
      _os_log_impl(&_mh_execute_header, v108, v109, "[%{public}s] UpdateID=%{public}s — Updated ✅", v110, 0x16u);
      swift_arrayDestroy();

      v29 = 0;
      v25 = v174;
    }

    else
    {

      v29 = 0;
    }

    goto LABEL_62;
  }

  v48 = v177;
  if (qword_10063D808 != -1)
  {
    swift_once();
  }

  v49 = sub_1004D966C();
  sub_100035430(v49, qword_1006736D8);
  v50 = v167;
  sub_1003DF60C(v48, v167, type metadata accessor for SymbolButton.Configuration);
  v51 = v38;

  v52 = sub_1004D964C();
  LODWORD(v53) = sub_1004DDF6C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    *&aBlock = v175;
    *v54 = 136446722;
    v55 = &v51[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v56 = v55[1];
    v57 = v169;
    if (v56)
    {
      v58 = *v55;
      v59 = v56;
    }

    else
    {
      v118 = v51;
      v119 = [v118 description];
      LODWORD(v173) = v53;
      v53 = v119;
      v58 = sub_1004DD43C();
      v59 = v120;

      v50 = v167;
      LOBYTE(v53) = v173;
    }

    v121 = sub_1002E5CC4(v58, v59, &aBlock);

    *(v54 + 4) = v121;
    *(v54 + 12) = 2082;
    *(v54 + 14) = sub_1002E5CC4(v161, v39, &aBlock);
    *(v54 + 22) = 2082;
    v122 = SymbolButton.Configuration.description.getter();
    v123 = v50;
    v125 = v124;
    sub_1003DD438(v123, type metadata accessor for SymbolButton.Configuration);
    v126 = sub_1002E5CC4(v122, v125, &aBlock);

    *(v54 + 24) = v126;
    _os_log_impl(&_mh_execute_header, v52, v53, "[%{public}s] UpdateID=%{public}s — Animating to new configuration=%{public}s", v54, 0x20u);
    swift_arrayDestroy();

    v48 = v177;
  }

  else
  {

    sub_1003DD438(v50, type metadata accessor for SymbolButton.Configuration);
    v57 = v169;
  }

  v127 = *&v51[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v128 = v127 + 1;
  v129 = v159;
  if (__OFADD__(v127, 1))
  {
    __break(1u);
  }

  else
  {
    *&v51[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v128;
    if (v128 != v127)
    {
      sub_1003D56C0();
    }

    v130 = swift_allocObject();
    v170 = v130;
    *(v130 + 16) = _swiftEmptyArrayStorage;
    v173 = v130 + 16;
    v175 = objc_opt_self();
    v172 = v51;
    v25 = v174;
    sub_1003DF60C(v174, v129, type metadata accessor for SymbolButton.Configuration);
    sub_1003DF60C(v48, v57, type metadata accessor for SymbolButton.Configuration);
    v131 = *(v165 + 80);
    v132 = (v131 + 16) & ~v131;
    v165 = v166 + v131;
    v133 = (v166 + v131 + v132) & ~v131;
    v166 += 7;
    v167 = v131;
    v134 = (v166 + v133) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    sub_1003DF674(v129, v135 + v132, type metadata accessor for SymbolButton.Configuration);
    sub_1003DF674(v57, v135 + v133, type metadata accessor for SymbolButton.Configuration);
    v137 = v172;
    v136 = v173;
    *(v135 + v134) = v172;
    *(v135 + ((v134 + 15) & 0xFFFFFFFFFFFFFFF8)) = v136;
    v138 = swift_allocObject();
    *(v138 + 16) = sub_1003DCD70;
    *(v138 + 24) = v135;
    v173 = v135;
    *&v195 = sub_10001185C;
    *(&v195 + 1) = v138;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v168 = COERCE_DOUBLE(&v194);
    *&v194 = sub_1000121E8;
    *(&v194 + 1) = &unk_1005F2EF0;
    v139 = _Block_copy(&aBlock);
    v172 = v137;

    [v175 performWithoutAnimation:v139];
    _Block_release(v139);
    LOBYTE(v139) = swift_isEscapingClosureAtFileLocation();

    if ((v139 & 1) == 0)
    {
      v140 = v162;
      v141 = v167;
      v142 = ~v167;
      v143 = v159;
      sub_1003DF60C(v177, v159, type metadata accessor for SymbolButton.Configuration);
      sub_1003DF60C(v25, v169, type metadata accessor for SymbolButton.Configuration);
      v144 = (v141 + 24) & v142;
      v145 = (v165 + v144) & v142;
      v146 = (v166 + v145) & 0xFFFFFFFFFFFFFFF8;
      v147 = swift_allocObject();
      v148 = v172;
      *(v147 + 16) = v172;
      sub_1003DF674(v143, v147 + v144, type metadata accessor for SymbolButton.Configuration);
      sub_1003DF674(v169, v147 + v145, type metadata accessor for SymbolButton.Configuration);
      v149 = v170;
      v150 = v171;
      *(v147 + v146) = v170;
      *(v147 + ((v146 + 15) & 0xFFFFFFFFFFFFFFF8)) = v150;
      *&v195 = sub_1003DD1D4;
      *(&v195 + 1) = v147;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v194 = sub_100012680;
      *(&v194 + 1) = &unk_1005F2F40;
      v151 = _Block_copy(&aBlock);
      v152 = v148;

      v153 = swift_allocObject();
      v153[2] = v149;
      v153[3] = v152;
      v154 = v161;
      v153[4] = v150;
      v153[5] = v154;
      v155 = ObjectType;
      v153[6] = v176;
      v153[7] = v155;
      *&v195 = sub_1003DD2D0;
      *(&v195 + 1) = v153;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v194 = sub_100016298;
      *(&v194 + 1) = &unk_1005F2F90;
      v156 = _Block_copy(&aBlock);
      v157 = v152;

      [v175 animateKeyframesWithDuration:v164 delay:v151 options:v156 animations:v47 completion:v140];
      _Block_release(v156);
      _Block_release(v151);

      v29 = sub_1003DCD70;
LABEL_62:
      sub_1003DD438(v25, type metadata accessor for SymbolButton.Configuration);
      sub_10000DE74(v29);
      return;
    }
  }

  __break(1u);
}

void sub_1003CD428(uint64_t a1, __int128 *a2, char *a3, char **a4)
{
  v4 = a3;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 96);
  v174 = *(a1 + 80);
  v175 = v9;
  v176 = *(a1 + 112);
  v10 = *(a1 + 32);
  v170 = *(a1 + 16);
  v171 = v10;
  v11 = *(a1 + 64);
  v172 = *(a1 + 48);
  v173 = v11;
  v169[0] = v7;
  v169[1] = v8;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v177[2] = a2[2];
  v177[3] = v14;
  v177[0] = v12;
  v177[1] = v13;
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v178 = *(a2 + 14);
  v177[5] = v16;
  v177[6] = v17;
  v177[4] = v15;
  if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v169, v177))
  {
    v18 = sub_1003D36F4();
    v19 = a2[5];
    v166[4] = a2[4];
    v166[5] = v19;
    v167 = a2[6];
    v168 = *(a2 + 14);
    v20 = a2[1];
    v166[0] = *a2;
    v166[1] = v20;
    v21 = a2[3];
    v166[2] = a2[2];
    v166[3] = v21;
    v22 = type metadata accessor for SymbolButton.ImageView();
    v156.receiver = objc_allocWithZone(v22);
    v156.super_class = v22;
    v23 = objc_msgSendSuper2(&v156, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v23 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v23 setContentMode:4];
    sub_1003D71EC(v166);
    v24 = [v18 preferredSymbolConfiguration];
    [v23 setPreferredSymbolConfiguration:v24];

    [v18 frame];
    [v23 setFrame:?];

    v25 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
    v26 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
    *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = v23;
    v27 = v23;

    [v27 setAlpha:0.0];
    v28 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v29 = *&a3[v25];
    if (([v29 isDescendantOfView:v28] & 1) == 0)
    {
      [v28 addSubview:v29];
    }

    if (!v8 && *(&v166[0] + 1))
    {
      [a3 setNeedsLayout];
      [a3 layoutIfNeeded];
    }

    v30 = *(&v167 + 1);
    v31 = *&a3[v25];
    v32 = *a4;
    v33 = v31;
    v34 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_1003E0B28(0, *(v32 + 2) + 1, 1, v32);
      *a4 = v32;
    }

    v37 = *(v32 + 2);
    v36 = *(v32 + 3);
    v4 = a3;
    if (v37 >= v36 >> 1)
    {
      *a4 = sub_1003E0B28((v36 > 1), v37 + 1, 1, v32);
    }

    v38 = *a4;
    *(v38 + 2) = v37 + 1;
    v39 = &v38[88 * v37];
    *(v39 + 4) = v31;
    *(v39 + 5) = v30;
    *(v39 + 6) = 0;
    *(v39 + 7) = 0;
    *(v39 + 8) = 0;
    *(v39 + 9) = v34;
    *(v39 + 5) = xmmword_100512770;
    *(v39 + 12) = 0;
    *(v39 + 13) = 0;
    v39[112] = 0;
  }

  v40 = *(a1 + 136);
  v41 = *(a1 + 168);
  v164[2] = *(a1 + 152);
  v164[3] = v41;
  v42 = *(a1 + 184);
  v164[0] = *(a1 + 120);
  v164[1] = v40;
  v43 = *(a2 + 136);
  v44 = *(a2 + 168);
  v165[2] = *(a2 + 152);
  v165[3] = v44;
  v165[4] = *(a2 + 184);
  v45 = *(a2 + 120);
  v165[1] = v43;
  v164[4] = v42;
  v165[0] = v45;
  if (sub_1003DC41C(v164, v165))
  {
    v46 = sub_1003D386C();
    v47 = *(a2 + 136);
    v48 = *(a2 + 168);
    v161[2] = *(a2 + 152);
    v162 = v48;
    v163 = *(a2 + 184);
    v161[0] = *(a2 + 120);
    v161[1] = v47;
    v49 = objc_allocWithZone(type metadata accessor for SymbolButton.Label());
    sub_1003DD350(v161, v160);
    v50 = sub_1003D7430(v161);
    v51 = [v46 font];
    [v50 setFont:v51];

    v52 = v50;
    v53 = v46;
    [v53 frame];
    [v52 setFrame:?];

    v54 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
    v55 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = v52;
    v56 = v52;

    [v56 setAlpha:0.0];
    v57 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v58 = *&v4[v54];
    if (([v58 isDescendantOfView:v57] & 1) == 0)
    {
      [v57 addSubview:v58];
    }

    v59 = v162;
    v60 = *&v4[v54];
    v61 = *(a1 + 136);
    v62 = *(a1 + 168);
    v159[2] = *(a1 + 152);
    v159[3] = v62;
    v63 = *(a1 + 184);
    v159[0] = *(a1 + 120);
    v159[1] = v61;
    v64 = *(a2 + 136);
    v65 = *(a2 + 168);
    v160[2] = *(a2 + 152);
    v160[3] = v65;
    v160[4] = *(a2 + 184);
    v66 = *(a2 + 120);
    v160[1] = v64;
    v159[4] = v63;
    v160[0] = v66;
    v67 = v60;
    v68 = sub_1003DD4E4(v159, v160);
    v69 = *a4;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v69;
    if ((v70 & 1) == 0)
    {
      v69 = sub_1003E0B28(0, *(v69 + 2) + 1, 1, v69);
      *a4 = v69;
    }

    v72 = *(v69 + 2);
    v71 = *(v69 + 3);
    v4 = a3;
    if (v72 >= v71 >> 1)
    {
      *a4 = sub_1003E0B28((v71 > 1), v72 + 1, 1, v69);
    }

    v73 = *a4;
    *(v73 + 2) = v72 + 1;
    v74 = &v73[88 * v72];
    *(v74 + 4) = v60;
    *(v74 + 5) = v59;
    *(v74 + 6) = 0;
    *(v74 + 7) = 0;
    *(v74 + 8) = 0;
    *(v74 + 9) = v53;
    *(v74 + 5) = xmmword_100512770;
    *(v74 + 12) = 0;
    *(v74 + 13) = 0;
    v74[112] = v68 & 1;
  }

  v75 = type metadata accessor for SymbolButton.Configuration(0);
  v76 = *(v75 + 40);
  v77 = *(a1 + v76);
  v78 = a2 + v76;
  v79 = *(a2 + v76);
  if (v77)
  {
    if (v77 == v79)
    {
      goto LABEL_47;
    }

    if (!v79)
    {
      v153 = v75;
      v80 = 0;
      v151 = 1;
      goto LABEL_26;
    }
  }

  else if (!v79)
  {
    goto LABEL_47;
  }

  v153 = v75;
  v81 = v79;
  v151 = 0;
  v80 = v79;
LABEL_26:
  v82 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v83 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView];
  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = v80;
  v84 = v80;

  v85 = a3;
  if (v80)
  {
    v86 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    if ([v86 isDescendantOfView:v86])
    {
      [v86 insertSubview:v84 aboveSubview:v86];
    }

    else
    {

      if (([v84 isDescendantOfView:v86] & 1) == 0)
      {
        [v86 addSubview:v84];
      }
    }

    v85 = a3;
    sub_1003D3B58();
  }

  v87 = *&v85[v82];
  if (v87)
  {
    [v87 setAlpha:0.0];
  }

  sub_1003D3B58();
  [*&v85[v82] layoutIfNeeded];
  if ((v151 & 1) == 0)
  {
    v89 = v79;
    if (v79)
    {
      v88 = *(v78 + 40);
      if (v77)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v88 = 0;
      if (v77)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    v91 = 0;
    goto LABEL_42;
  }

  v79 = 0;
  v88 = 0;
  if (!v77)
  {
    goto LABEL_41;
  }

LABEL_39:
  v90 = v77;
  v91 = 1;
LABEL_42:
  v92 = *a4;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v92;
  if ((v93 & 1) == 0)
  {
    v92 = sub_1003E0B28(0, *(v92 + 2) + 1, 1, v92);
    *a4 = v92;
  }

  v95 = *(v92 + 2);
  v94 = *(v92 + 3);
  if (v95 >= v94 >> 1)
  {
    v92 = sub_1003E0B28((v94 > 1), v95 + 1, 1, v92);
    *a4 = v92;
  }

  *(v92 + 2) = v95 + 1;
  v96 = &v92[88 * v95];
  *(v96 + 4) = v79;
  *(v96 + 5) = v88;
  *(v96 + 6) = 0;
  *(v96 + 7) = 0;
  *(v96 + 8) = 0;
  *(v96 + 9) = v77;
  *(v96 + 10) = 0;
  *(v96 + 11) = v91;
  *(v96 + 12) = 0;
  *(v96 + 13) = 0;
  v96[112] = 0;
  v4 = a3;
  v75 = v153;
LABEL_47:
  v97 = *(v75 + 44);
  v98 = *(a1 + v97 + 16);
  v99 = (a2 + v97);
  v100 = v99[2];
  if (v98 == 1)
  {
    if (v100 == 1)
    {
      return;
    }

    v105 = *v99;
    v104 = v99[1];
    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v106 = type metadata accessor for SymbolButton.BadgeView();
    v107 = objc_allocWithZone(v106);
    v152 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
    v108 = objc_allocWithZone(UIView);
    if (v102)
    {
      v109 = v102;
      sub_1003DD408(v105, v104, v100);
      v110 = v105;
      v111 = [v108 init];
      v112 = objc_opt_self();
      v113 = [v112 blackColor];
      [v111 setBackgroundColor:v113];

      v114 = [v111 layer];
      [v114 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v111;
      v115 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v115 = v110;
      v115[1] = v104;
      v115[2] = v100;
      v158.receiver = v107;
      v158.super_class = v106;
      v116 = v100;
      v117 = objc_msgSendSuper2(&v158, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v118 = v116;
      if (!v100)
      {
        v118 = [v112 tintColor];
      }

      v119 = v116;
      [v117 setBackgroundColor:v118];

      [v117 setAlpha:*&v104];
      [*&v117[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&v104];
      sub_1003D7B6C();
      v120 = v110;
    }

    else
    {
      v150 = v100;
      v121 = [v108 init];
      v122 = v105;
      v123 = v121;
      v124 = objc_opt_self();
      v125 = [v124 blackColor];
      [v123 setBackgroundColor:v125];

      v126 = [v123 layer];
      [v126 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v123;
      v127 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v127 = v122;
      v127[1] = v104;
      v127[2] = v100;
      v157.receiver = v107;
      v157.super_class = v106;
      v128 = v150;
      v117 = objc_msgSendSuper2(&v157, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v129 = v128;
      if (!v100)
      {
        v129 = [v124 tintColor];
      }

      v130 = v128;
      [v117 setBackgroundColor:v129];

      [v117 setAlpha:*&v104];
      [*&v117[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&v104];
      sub_1003D7B6C();
      sub_1002EA654(v122, v104, v100);
      v120 = v122;
    }

    v131 = *v101;
    *v101 = v117;
    v132 = v117;
    sub_1003D3974(v131);

    if (*v101)
    {
      [*v101 setAlpha:0.0];
      if (*v101)
      {
        v133 = *v101;
        v134 = [a3 traitCollection];
        v135 = [v134 userInterfaceIdiom];

        if (v135 == 6)
        {
          v136 = 12.0;
        }

        else
        {
          v136 = 8.0;
        }

        [a3 bounds];
        MaxX = CGRectGetMaxX(v179);
        v180.origin.x = 0.0;
        v180.origin.y = 0.0;
        v180.size.width = v136;
        v180.size.height = v136;
        v138 = MaxX - CGRectGetWidth(v180) + 1.0;
        [a3 bounds];
        [v133 setFrame:{v138, CGRectGetMinY(v181) + -1.0, v136, v136}];
      }
    }

    sub_1002EA654(v120, v104, v100);
    v98 = 1;
  }

  else
  {
    if (v100 != 1)
    {
      return;
    }

    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    v103 = v102;
    sub_1003D3974(v102);

    v104 = 0;
  }

  v139 = *v101;
  if (*v101)
  {
    v140 = v104;
  }

  else
  {
    v140 = 0;
  }

  if (*v101)
  {
    v141 = v98 != 1;
  }

  else
  {
    v141 = 0;
  }

  v142 = *a4;
  v143 = v139;
  v144 = v102;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v142;
  if ((v145 & 1) == 0)
  {
    v142 = sub_1003E0B28(0, *(v142 + 2) + 1, 1, v142);
    *a4 = v142;
  }

  v147 = *(v142 + 2);
  v146 = *(v142 + 3);
  if (v147 >= v146 >> 1)
  {
    *a4 = sub_1003E0B28((v146 > 1), v147 + 1, 1, v142);
  }

  v148 = *a4;
  *(v148 + 2) = v147 + 1;
  v149 = &v148[88 * v147];
  *(v149 + 4) = v139;
  *(v149 + 5) = v140;
  *(v149 + 6) = v141;
  *(v149 + 7) = 0;
  *(v149 + 8) = 0;
  *(v149 + 9) = v102;
  *(v149 + 10) = 0;
  *(v149 + 11) = v102 != 0;
  *(v149 + 12) = 0;
  *(v149 + 13) = 0;
  v149[112] = 0;
}

uint64_t sub_1003CE180(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v81 = a5;
  v9 = type metadata accessor for SymbolButton.Configuration(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  v74 = objc_opt_self();
  sub_1003DF60C(a2, v15, type metadata accessor for SymbolButton.Configuration);
  sub_1003DF60C(a3, v12, type metadata accessor for SymbolButton.Configuration);
  v16 = *(v10 + 80);
  v17 = (v16 + 24) & ~v16;
  v18 = (v11 + v16 + v17) & ~v16;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  sub_1003DF674(v15, v19 + v17, type metadata accessor for SymbolButton.Configuration);
  sub_1003DF674(v12, v19 + v18, type metadata accessor for SymbolButton.Configuration);
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v87 = sub_1003DFB30;
  v88 = v19;
  aBlock = _NSConcreteStackBlock;
  v84 = 1107296256;
  v85 = sub_100012680;
  v86 = &unk_1005F3930;
  v20 = _Block_copy(&aBlock);
  v21 = a1;
  v82 = a4;

  [v74 addKeyframeWithRelativeStartTime:v20 relativeDuration:0.0 animations:1.0];
  _Block_release(v20);
  v22 = *(v81 + 16);
  if (v22)
  {
    v23 = (v81 + 40);
    do
    {
      v24 = *(v23 - 1);
      if (v24)
      {
        v25 = *(v23 + 3);
        v27 = v23[1];
        v26 = v23[2];
        v28 = *v23;
        v29 = swift_allocObject();
        *(v29 + 2) = v24;
        v29[3] = v28;
        *(v29 + 4) = v21;
        v87 = sub_100027370;
        v88 = v29;
        aBlock = _NSConcreteStackBlock;
        v84 = 1107296256;
        v85 = sub_100012680;
        v86 = &unk_1005F3980;
        v30 = _Block_copy(&aBlock);
        sub_10000DE64(v24);
        v31 = v21;
        sub_10000DE64(v24);
        sub_10000DE64(v25);

        [v74 addKeyframeWithRelativeStartTime:v30 relativeDuration:v27 animations:v26];
        sub_10000DE74(v25);
        _Block_release(v30);
        sub_10000DE74(v24);
      }

      v23 += 6;
      --v22;
    }

    while (v22);
  }

  v32 = v82;
  swift_beginAccess();
  v33 = v32[2];
  v34 = *(v33 + 16);
  v69 = v33;

  v68 = v34;
  if (!v34)
  {
  }

  v36 = 0;
  v72 = &v85;
  v37 = v69 + 56;
  while (v36 < *(v69 + 16))
  {
    v48 = *(v37 - 24);
    v47 = *(v37 - 16);
    v49 = *(v37 - 8);
    v50 = *v37;
    v51 = *(v37 + 8);
    v52 = *(v37 + 16);
    v54 = *(v37 + 24);
    v53 = *(v37 + 32);
    v55 = *(v37 + 40);
    v81 = *(v37 + 48);
    v56 = *(v37 + 56);
    v82 = v48;
    if ((v48 == 0) | v49 & 1)
    {
      v57 = 1.0;
    }

    else
    {
      v57 = *&v47;
    }

    v80 = v52;
    v79 = v47;
    v78 = v53;
    v77 = v54;
    v76 = v49;
    v75 = v50;
    v73 = v56;
    if (v52)
    {
      v92 = v53 & 1;
      if (v56)
      {
        v58 = 1.0;
      }

      else
      {
        v58 = 0.5;
      }

      v70 = v51;
      v59 = v47;
      v60 = swift_allocObject();
      *(v60 + 16) = v52;
      *(v60 + 24) = v54;
      *(v60 + 32) = v92;
      *(v60 + 33) = *v91;
      *(v60 + 36) = *&v91[3];
      v61 = v81;
      *(v60 + 40) = v55;
      *(v60 + 48) = v61;
      v87 = sub_1003DFC48;
      v88 = v60;
      aBlock = _NSConcreteStackBlock;
      v84 = 1107296256;
      v85 = sub_100012680;
      v86 = &unk_1005F3A20;
      v62 = _Block_copy(&aBlock);
      v71 = v36;
      v63 = v62;
      v64 = v50;
      v65 = v70;
      sub_1003DF724(v82, v59, v49, v64);
      sub_1003DF724(v52, v54, v53, v55);
      sub_1003DF724(v52, v54, v53, v55);
      v66 = v52;
      sub_10000DE64(v55);

      [v74 addKeyframeWithRelativeStartTime:v63 relativeDuration:0.0 animations:v58];
      v67 = v63;
      v36 = v71;
      _Block_release(v67);

      sub_10000DE74(v55);
      if (v82)
      {
LABEL_8:
        v38 = v76;
        v90 = v76 & 1;
        if (v73)
        {
          v39 = 1.0;
        }

        else
        {
          v39 = 0.5;
        }

        if (v73)
        {
          v40 = 0.0;
        }

        else
        {
          v40 = 0.5;
        }

        v41 = swift_allocObject();
        v42 = v82;
        v43 = v79;
        *(v41 + 16) = v82;
        *(v41 + 24) = v43;
        *(v41 + 32) = v90;
        *(v41 + 33) = *v89;
        *(v41 + 36) = *&v89[3];
        v44 = v75;
        *(v41 + 40) = v75;
        *(v41 + 48) = v65;
        *(v41 + 56) = v57;
        v87 = sub_1003DFBD8;
        v88 = v41;
        aBlock = _NSConcreteStackBlock;
        v84 = 1107296256;
        v85 = sub_100012680;
        v86 = &unk_1005F39D0;
        v45 = _Block_copy(&aBlock);
        sub_1003DF724(v42, v43, v38, v44);
        v46 = v42;
        sub_10000DE64(v44);

        [v74 addKeyframeWithRelativeStartTime:v45 relativeDuration:v40 animations:v39];
        _Block_release(v45);

        sub_10000DE74(v44);
        goto LABEL_15;
      }
    }

    else
    {
      sub_1003DF724(v82, v47, v49, v50);
      sub_1003DF724(0, v54, v53, v55);
      v65 = v51;
      if (v82)
      {
        goto LABEL_8;
      }
    }

    v82 = 0;
    v43 = v79;
    v38 = v76;
    v44 = v75;
LABEL_15:
    ++v36;
    sub_1003DF76C(v82, v43, v38, v44);
    result = sub_1003DF76C(v80, v77, v78, v55);
    v37 += 88;
    if (v68 == v36)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003CE980(char *a1, uint64_t a2, char **a3, char *a4)
{
  v124 = a4;
  v125 = a1;
  v7 = v131;
  v8 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v8 - 8);
  v127 = &v122 - v9;
  v129 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v129);
  v11 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SymbolButton.Metrics(0);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 traitCollection];
  sub_1003D4740(v15);
  sub_1003DD438(v15, type metadata accessor for SymbolButton.Metrics);
  sub_1003DF60C(a2, v11, type metadata accessor for SymbolButton.Configuration);
  sub_1003D3D78(v11, v16, v15);
  v130 = v15;
  sub_1003D49E8(v15);
  v17 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  v18 = *(a2 + 248);
  v138[0] = *(a2 + 232);
  v138[1] = v18;
  v138[2] = *(a2 + 264);
  v123 = v17;
  sub_1003D691C(v138);
  v128 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v19 = *(a2 + 200);
  v20 = *(a2 + 208);
  if (v20 == 1)
  {
    v122 = *(a2 + 216);
    v126 = v19;
    if (qword_10063DAF8 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_3;
  }

  v21 = *(a2 + 200);
  v24 = *(a2 + 224);
  v25 = *(a2 + 208);
  v22 = v25;
  v23 = *(a2 + 216);
LABEL_5:
  sub_1003DD3C0(v19, v20);
  sub_1003D6D98(v22, v21, v23, v24);

  v26 = *(a3 + 17);
  v27 = *(a3 + 21);
  *(v7 + 31) = *(a3 + 19);
  *(v7 + 32) = v27;
  v28 = *(a3 + 23);
  *(v7 + 29) = *(a3 + 15);
  *(v7 + 30) = v26;
  v29 = *(a2 + 152);
  *(v7 + 35) = *(a2 + 136);
  *(v7 + 36) = v29;
  v30 = *(a2 + 184);
  *(v7 + 37) = *(a2 + 168);
  *(v7 + 38) = v30;
  v31 = *(a2 + 120);
  *(v7 + 33) = v28;
  *(v7 + 34) = v31;
  v32 = sub_1003DC41C(&v136, v137);
  v33 = v125;
  if ((v32 & 1) == 0)
  {
    v34 = sub_1003D386C();
    v35 = *(a2 + 136);
    *(v7 + 24) = *(a2 + 120);
    *(v7 + 25) = v35;
    v36 = *(a2 + 168);
    *(v7 + 26) = *(a2 + 152);
    *(v7 + 27) = v36;
    *(v7 + 28) = *(a2 + 184);
    v37 = v135[0];
    v38 = v135[1];
    sub_1003D75B8(v135);

    if (v38)
    {
      v39 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v39 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v40 = sub_1004DD3FC();
        [v33 setAccessibilityLabel:v40];
      }
    }
  }

  v41 = *(a3 + 5);
  *(v7 + 12) = *(a3 + 4);
  *(v7 + 13) = v41;
  *(v7 + 14) = *(a3 + 6);
  v133[14] = a3[14];
  v42 = *(a3 + 1);
  *(v7 + 8) = *a3;
  *(v7 + 9) = v42;
  v43 = *(a3 + 3);
  *(v7 + 10) = *(a3 + 2);
  *(v7 + 11) = v43;
  v44 = *a2;
  v45 = *(a2 + 16);
  v46 = *(a2 + 48);
  *(v7 + 18) = *(a2 + 32);
  *(v7 + 19) = v46;
  *(v7 + 16) = v44;
  *(v7 + 17) = v45;
  v47 = *(a2 + 64);
  v48 = *(a2 + 80);
  v49 = *(a2 + 96);
  v134[14] = *(a2 + 112);
  *(v7 + 21) = v48;
  *(v7 + 22) = v49;
  *(v7 + 20) = v47;
  if (!_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v133, v134))
  {
    v50 = sub_1003D36F4();
    v51 = *(a2 + 80);
    *(v7 + 4) = *(a2 + 64);
    *(v7 + 5) = v51;
    *(v7 + 6) = *(a2 + 96);
    v132 = *(a2 + 112);
    v52 = *(a2 + 16);
    v131[0] = *a2;
    v131[1] = v52;
    v53 = *(a2 + 48);
    v131[2] = *(a2 + 32);
    v131[3] = v53;
    sub_1003D71EC(v131);
  }

  v54 = *(v129 + 44);
  v55 = (a2 + v54);
  v56 = *(a2 + v54 + 16);
  if (v56 != 1 && *(a3 + v54 + 16) != 1)
  {
    v57 = *&v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    if (v57)
    {
      v58 = *v55;
      a3 = v55[1];
      if (v56)
      {
        v59 = v57;
        v60 = v56;
        v61 = v56;
      }

      else
      {
        v62 = objc_opt_self();
        v63 = v57;
        sub_1003DD408(v58, a3, 0);
        v61 = [v62 tintColor];
        v60 = 0;
      }

      sub_1003DD408(v58, a3, v56);
      v64 = v60;
      [v57 setBackgroundColor:v61];

      [v57 setAlpha:*&a3];
      [*&v57[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&a3];
      sub_1003D7B6C();
      sub_1002EA654(v58, a3, v56);
    }
  }

  v65 = [v123 contentView];
  v66 = *(a2 + 280);
  v20 = *(a2 + 288);
  v7 = *(a2 + 296);
  v67 = v7;
  UIView.border.setter(v66, v20, v7);

  [v33 setAlpha:*(a2 + *(v129 + 68))];
  v68 = v130;
  sub_1003D4740(v130);
  sub_1003D5B88(v68);
  sub_1003DD438(v68, type metadata accessor for SymbolButton.Metrics);
  v69 = [v33 superview];
  [v69 layoutIfNeeded];

  [v33 layoutIfNeeded];
  if (v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] == 1)
  {
    v122 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated;
    v70 = v123;
    [v123 _setAllowsGroupFiltering:1];
    v71 = [v70 contentView];
    v72 = [v71 subviews];

    sub_100006F10(0, &qword_100644F50);
    v73 = sub_1004DD87C();

    v130 = v73;
    if (v73 >> 62)
    {
      v74 = sub_1004DED5C();
    }

    else
    {
      v74 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a2 = v129;
    v128 = &v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
    swift_beginAccess();
    if (v74)
    {
      v75 = 0;
      v76 = v130 & 0xC000000000000001;
      v7 = (v130 & 0xFFFFFFFFFFFFFF8);
      a3 = &selRef_addTarget_action_forControlEvents_;
      v126 = v130 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v76)
        {
          v77 = sub_1004DEB2C();
        }

        else
        {
          if (v75 >= v7[2])
          {
            goto LABEL_55;
          }

          v77 = *(v130 + 8 * v75 + 32);
        }

        v78 = v77;
        v20 = (v75 + 1);
        if (__OFADD__(v75, 1))
        {
          goto LABEL_54;
        }

        type metadata accessor for SymbolButton.Label();
        if (([v78 a3[111]] & 1) == 0)
        {
          v79 = a3;
          v80 = *(v128 + *(a2 + 76));
          if (v80 == 2)
          {
            v81 = v128 + *(a2 + 36);
            v82 = v127;
            sub_1000108DC(v81, v127, &qword_100644A50);
            v83 = sub_1004DE53C();
            LOBYTE(v80) = (*(*(v83 - 8) + 48))(v82, 1, v83) != 1;
            v84 = v82;
            a2 = v129;
            v7 = v126;
            sub_10001074C(v84, &qword_100644A50);
          }

          [v78 setClipsToBounds:v80 & 1];
          a3 = v79;
        }

        ++v75;
      }

      while (v20 != v74);
    }

    *(v125 + v122) = 0;
  }

  v85 = v124;
  swift_beginAccess();
  v86 = *(v85 + 2);
  v87 = v86[2];
  v125 = v86;

  v124 = v87;
  if (v87)
  {
    v20 = 0;
    v88 = (v125 + 7);
    do
    {
      if (v20 >= v125[2])
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
LABEL_3:
        swift_beginAccess();
        v21 = *&static SymbolButton.Background.clear;
        v22 = qword_100673C58;
        v23 = qword_100673C60;
        v24 = qword_100673C68;

        v25 = v22;
        v19 = v126;
        goto LABEL_5;
      }

      v94 = *(v88 - 3);
      v93 = *(v88 - 2);
      v95 = *(v88 - 1);
      a3 = *v88;
      v96 = v88[2];
      v97 = v88[3];
      v98 = v88[4];
      v129 = v88[1];
      v130 = v97;
      v99 = v88[5];
      v7 = v88[6];
      v127 = v95;
      v128 = a3;
      v126 = v93;
      if (v94)
      {
        if (a3)
        {
          sub_1003DF724(v94, v93, v95, a3);
          sub_1003DF724(v96, v130, v98, v99);
          v100 = [v123 contentView];
          v122 = v7;
          v101 = v98;
          v102 = v100;
          [v100 bounds];
          v104 = v103;
          v106 = v105;
          v108 = v107;
          v110 = v109;

          a2 = v99;
          (a3)(v104, v106, v108, v110);
          v98 = v101;
          v7 = v122;
          [v94 setFrame:?];
          if (!v96)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_1003DF724(v94, v93, v95, 0);
          a2 = v99;
          sub_1003DF724(v96, v130, v98, v99);
          if (!v96)
          {
LABEL_38:
            sub_1003DF76C(v94, v126, v127, v128);
            v89 = 0;
            v90 = v130;
            v91 = v98;
            goto LABEL_39;
          }
        }
      }

      else
      {
        sub_1003DF724(0, v93, v95, a3);
        sub_1003DF724(v96, v130, v98, v99);
        a2 = v99;
        if (!v96)
        {
          goto LABEL_38;
        }
      }

      if (!a2)
      {
        sub_1003DF76C(v94, v126, v127, v128);
        v89 = v96;
        v90 = v130;
        v91 = v98;
        v92 = 0;
        goto LABEL_40;
      }

      v111 = v98;
      v112 = [v123 contentView];
      [v112 bounds];
      v114 = v113;
      v116 = v115;
      v118 = v117;
      v120 = v119;

      (a2)(v114, v116, v118, v120);
      [v96 setFrame:?];
      sub_1003DF76C(v94, v126, v127, v128);
      v89 = v96;
      v90 = v130;
      v91 = v111;
LABEL_39:
      v92 = a2;
LABEL_40:
      sub_1003DF76C(v89, v90, v91, v92);
      ++v20;
      v88 += 11;
    }

    while (v124 != v20);
  }
}

uint64_t *SymbolButton.Background.clear.unsafeMutableAddressor()
{
  if (qword_10063DAF8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.clear;
}

void sub_1003CF4B4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = *(v8 + 16);
  v40 = v8;

  v39 = v9;
  if (v9)
  {
    v10 = 0;
    v6 = (v40 + 56);
    while (v10 < *(v40 + 16))
    {
      v11 = v6[2];
      if (v11)
      {
        v13 = *(v6 - 1);
        v12 = *v6;
        v15 = v6[3];
        v14 = v6[4];
        v16 = v6[5];
        v41 = *(v6 - 2);
        v42 = *(v6 - 3);
        sub_1003DF724(v42, v41, v13, *v6);
        sub_1003DF724(v11, v15, v14, v16);
        if ([v11 isDescendantOfView:a3])
        {
          [v11 removeFromSuperview];
        }

        sub_1003DF76C(v42, v41, v13, v12);
        sub_1003DF76C(v11, v15, v14, v16);
      }

      ++v10;
      v6 += 11;
      if (v39 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_9:

  v10 = a3;
  v17 = *(a4 + 16);
  if (v17)
  {
    v18 = a4 + 72;
    do
    {
      v19 = *(v18 - 8);
      if (v19)
      {
        v20 = *(v18 - 40);
        sub_10000DE64(v20);
        sub_10000DE64(v19);
        v19(a3);
        sub_10000DE74(v20);
        sub_10000DE74(v19);
      }

      v18 += 48;
      --v17;
    }

    while (v17);
  }

  v21 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v22 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_18;
  }

  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v22;
  v6 = a6;
  if (v22 != v21)
  {
    sub_1003D56C0();
  }

  if (qword_10063D808 != -1)
  {
    goto LABEL_26;
  }

LABEL_18:
  v23 = sub_1004D966C();
  sub_100035430(v23, qword_1006736D8);
  v24 = v10;

  v25 = sub_1004D964C();
  v26 = sub_1004DDF6C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v27 = 136446466;
    v28 = &v24[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v29 = v28[1];
    if (v29)
    {
      v30 = *v28;
      v31 = v29;
    }

    else
    {
      v32 = [v24 description];
      v30 = sub_1004DD43C();
      v31 = v33;
    }

    v34 = sub_1002E5CC4(v30, v31, &v43);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1002E5CC4(a5, v6, &v43);
    _os_log_impl(&_mh_execute_header, v25, v26, "[%{public}s] UpdateID=%{public}s — Updated ✅", v27, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t SymbolButton.Configuration.background.getter()
{
  v1 = *(v0 + 200);
  sub_1003DD3C0(v1, *(v0 + 208));
  return v1;
}

uint64_t SymbolButton.Configuration.background.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1002E009C(*(v4 + 200), *(v4 + 208));
  *(v4 + 200) = a1;
  *(v4 + 208) = a2;
  *(v4 + 216) = a3;
  *(v4 + 224) = a4;
  return result;
}

uint64_t SymbolButton.Configuration.border.getter()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 296);
  return v1;
}

void SymbolButton.Configuration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 280) = a1;
  *(v3 + 288) = a2;
  *(v3 + 296) = a3;
}

uint64_t SymbolButton.Configuration.badge.getter()
{
  v1 = v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 44);
  v2 = *v1;
  sub_1003DD408(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

void SymbolButton.Configuration.badge.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + *(type metadata accessor for SymbolButton.Configuration(0) + 44);
  sub_1002EA654(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
}

uint64_t SymbolButton.Configuration.symbolToTextSpacing.setter(double a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t SymbolButton.Configuration.minimumSize.setter(double a1, double a2)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v6 = (v2 + *(result + 52));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t SymbolButton.Configuration.maximumImageSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v8 = v3 + *(result + 56);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t SymbolButton.Configuration.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v10 = (v4 + *(result + 60));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t SymbolButton.Configuration.accessibility.getter()
{
  v1 = (v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 64));
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 1);
  v5 = v3;
  return v2;
}

void SymbolButton.Configuration.accessibility.setter(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *(type metadata accessor for SymbolButton.Configuration(0) + 64);

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

UIContentSizeCategory sub_1003D0114()
{
  static SymbolButton.Configuration.Accessibility.forBarButtonItem = 1;
  qword_100673C38 = UIContentSizeCategoryLarge;
  unk_100673C40 = UIContentSizeCategoryExtraLarge;
  byte_100673C48 = 1;
  v0 = UIContentSizeCategoryLarge;

  return UIContentSizeCategoryExtraLarge;
}

char *SymbolButton.Configuration.Accessibility.forBarButtonItem.unsafeMutableAddressor()
{
  if (qword_10063DAF0 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Configuration.Accessibility.forBarButtonItem;
}

uint64_t static SymbolButton.Configuration.Accessibility.forBarButtonItem.getter()
{
  if (qword_10063DAF0 != -1)
  {
    swift_once();
  }

  v0 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v1 = unk_100673C40;
  v2 = qword_100673C38;
  v3 = v1;
  return v0;
}

uint64_t SymbolButton.Configuration.alpha.setter(double a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

void *SymbolButton.Configuration.tint.getter()
{
  v1 = *(v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 72));
  v2 = v1;
  return v1;
}

void SymbolButton.Configuration.tint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolButton.Configuration(0) + 72);

  *(v1 + v3) = a1;
}

uint64_t SymbolButton.Configuration.shouldClipToBounds.setter(char a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

void SymbolButton.Configuration.init()(uint64_t a1@<X8>)
{
  HIBYTE(v30) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = UIFontTextStyleSubheadline;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_1005272E0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 81) = v30;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  v2 = UIFontTextStyleSubheadline;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = v2;
  *(a1 + 144) = UIFontWeightSemibold;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 232) = 1;
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  v4 = v3[9];
  v5 = sub_1004DE53C();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = a1 + v3[10];
  *(v6 + 48) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  v7 = (a1 + v3[11]);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 1;
  *(a1 + v3[12]) = 0x4010000000000000;
  *(a1 + v3[13]) = vdupq_n_s64(0x4040000000000000uLL);
  v8 = a1 + v3[14];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = (a1 + v3[15]);
  v10 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v9 = *&NSDirectionalEdgeInsetsZero.top;
  v9[1] = v10;
  v11 = a1 + v3[16];
  *v11 = 1;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(a1 + v3[17]) = 0x3FF0000000000000;
  *(a1 + v3[18]) = 0;
  *(a1 + v3[19]) = 2;
  v12 = qword_10063DB28;
  v13 = v2;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_100673CF8;
  *(a1 + 200) = static SymbolButton.Background.normal;
  v28 = qword_100673CE8;
  *(a1 + 208) = *&qword_100673CE8;
  *(a1 + 224) = v14;
  v15 = objc_opt_self();

  v16 = v28;
  v17 = [v15 currentTraitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 6)
  {
    if (qword_10063DB38 != -1)
    {
      swift_once();
    }

    v19 = static SymbolButton.Material.xr;
    v20 = qword_100673D28;
    v21 = qword_100673D30;
    v29 = qword_100673D30;
    v22 = byte_100673D38;
    v24 = qword_100673D40;
    v23 = unk_100673D48;
    *(a1 + 232) = static SymbolButton.Material.xr;
    *(a1 + 240) = v20;
    *(a1 + 248) = v21;
    *(a1 + 256) = v22;
    *(a1 + 264) = v24;
    *(a1 + 272) = v23;

    v25 = v19;
    v26 = v20;

    v27 = v29;
  }
}

uint64_t *SymbolButton.Material.xr.unsafeMutableAddressor()
{
  if (qword_10063DB38 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Material.xr;
}

uint64_t SymbolButton.Symbol.offset.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 64) = result;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  return result;
}

void *SymbolButton.Symbol.tint.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

BOOL sub_1003D0870(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(v12, v14);
}

BOOL sub_1003D091C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(v8, v9);
}

id sub_1003D09C0()
{
  result = [objc_opt_self() clearColor];
  static SymbolButton.Background.clear = 0x3FF0000000000000;
  qword_100673C58 = result;
  qword_100673C60 = 0;
  qword_100673C68 = 0;
  return result;
}

uint64_t static SymbolButton.Background.clear.getter()
{
  if (qword_10063DAF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_100673C58;
  v1 = qword_100673C58;

  return v0;
}

uint64_t static SymbolButton.Background.clear.setter(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_10063DAF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_100673C58;
  static SymbolButton.Background.clear = *&a4;
  qword_100673C58 = a1;
  qword_100673C60 = a2;
  qword_100673C68 = a3;
}

uint64_t (*static SymbolButton.Background.clear.modify())()
{
  if (qword_10063DAF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void SymbolButton.Material.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

BOOL sub_1003D0C34(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

void SyncedLyricsViewController.BottomViewMetadata.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

void *SymbolButton.CustomView.tint.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *static SymbolButton.CustomView.with(_:configurator:)@<X0>(void *result@<X0>, uint64_t (*a2)(void **)@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    v11 = result;
    v5 = *&UIEdgeInsetsZero.bottom;
    v12 = *&UIEdgeInsetsZero.top;
    v13 = v5;
    v14 = 0x3FF0000000000000uLL;
    v6 = result;
    result = a2(&v11);
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
  }

  else
  {
    v7 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 24) = v9;
  *(a3 + 40) = v10;
  return result;
}

uint64_t sub_1003D0D60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

uint64_t static SymbolButton.Badge.with(_:)(void (*a1)(__int128 *))
{
  v2 = xmmword_1005272F0;
  v3 = 0;
  a1(&v2);
  return v3;
}

Swift::Void __swiftcall SymbolButton.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v2);
  v4 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1004DE4EC();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin(v6);
  v8 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v139 - v10;
  __chkstk_darwin(v12);
  v14 = &v139 - v13;
  v15 = type metadata accessor for SymbolButton(0);
  v152.receiver = v0;
  v152.super_class = v15;
  objc_msgSendSuper2(&v152, "layoutSubviews");
  v16 = *&v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView] bounds];
  [v16 setFrame:?];
  v17 = [v16 contentView];
  [v17 bounds];
  v19 = v18;

  sub_1003D4740(v14);
  v20 = *&v14[v6[12] + 16];
  [v1 effectiveUserInterfaceLayoutDirection];
  [v1 contentHorizontalAlignment];
  v143 = v2;
  v151 = v19;
  if ([v1 contentVerticalAlignment] == 2)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v20;
  }

  [v1 effectiveUserInterfaceLayoutDirection];
  sub_1004DE40C();
  v146 = v22;
  v24 = v23;
  v148 = v25;
  v149 = v26;
  sub_1003DD438(v14, type metadata accessor for SymbolButton.Metrics);
  sub_1003D4740(v11);
  v27 = *&v11[v6[8]];
  sub_1003DD438(v11, type metadata accessor for SymbolButton.Metrics);
  v28 = sub_1003D36F4();
  sub_1003D4740(v8);
  v29 = &v8[v6[11]];
  v30 = *v29;
  v31 = *(v29 + 1);
  v32 = v29[16];
  sub_1003DD438(v8, type metadata accessor for SymbolButton.Metrics);
  if (v32)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v30;
  }

  if (v32)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v31;
  }

  [v28 sizeThatFits:{v33, v34}];
  v151 = v35;
  v37 = v36;

  v38 = &v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
  swift_beginAccess();
  if (!*(v38 + 128) || (*(v38 + 184) & 1) != 0)
  {
    v45 = sub_1003D386C();
    [v45 frame];
    v47 = v49;
    v145 = v50;
  }

  else
  {
    v39 = v146;
    v159.origin.x = v146;
    v159.origin.y = v24;
    v40 = v148;
    v159.size.width = v148;
    v41 = v149;
    v159.size.height = v149;
    Width = CGRectGetWidth(v159);
    v160.origin.x = 0.0;
    v160.origin.y = 0.0;
    v160.size.width = v151;
    v160.size.height = v37;
    v43 = Width - (v27 + CGRectGetWidth(v160));
    v161.origin.x = v39;
    v161.origin.y = v24;
    v161.size.width = v40;
    v161.size.height = v41;
    Height = CGRectGetHeight(v161);
    v45 = sub_1003D386C();
    [v45 sizeThatFits:{v43, Height}];
    v47 = v46;
    v145 = v48;
  }

  v51 = &selRef_setShadowPathIsBounds_;
  v52 = &selRef_addTarget_action_forControlEvents_;
  v144 = v27;
  v147 = v47;
  if (*(v38 + 8))
  {
    v162.origin.x = 0.0;
    v162.origin.y = 0.0;
    v53 = v151;
    v162.size.width = v151;
    v162.size.height = v37;
    v54 = CGRectGetWidth(v162) + 0.0;
    v163.origin.x = 0.0;
    v163.origin.y = 0.0;
    v163.size.height = 0.0;
    v163.size.width = v54;
    v55 = CGRectGetHeight(v163);
    v164.origin.x = 0.0;
    v164.origin.y = 0.0;
    v164.size.width = v53;
    v164.size.height = v37;
    v56 = CGRectGetHeight(v164);
    if (v55 <= v56)
    {
      v55 = v56;
    }
  }

  else
  {
    v54 = 0.0;
    v55 = 0.0;
  }

  v57 = v146;
  if (*(v38 + 128))
  {
    if ((*(v38 + 184) & 1) == 0)
    {
      v165.origin.x = 0.0;
      v165.origin.y = 0.0;
      v58 = v147;
      v165.size.width = v147;
      v59 = v145;
      v165.size.height = v145;
      v54 = v54 + CGRectGetWidth(v165);
      v166.origin.x = 0.0;
      v166.origin.y = 0.0;
      v166.size.width = v54;
      v166.size.height = v55;
      v55 = CGRectGetHeight(v166);
      v167.origin.x = 0.0;
      v167.origin.y = 0.0;
      v167.size.width = v58;
      v167.size.height = v59;
      v60 = CGRectGetHeight(v167);
      if (v55 <= v60)
      {
        v55 = v60;
      }
    }
  }

  v61 = *(v38 + 8);
  v150 = v37;
  if (v61 && *(v38 + 128) && !*(v38 + 184))
  {
    v54 = v144 + v54;
  }

  v62 = [v1 contentHorizontalAlignment];
  MinY = 0.0;
  MinX = 0.0;
  if (v62 <= 5)
  {
    if (((1 << v62) & 9) != 0)
    {
      v168.origin.x = v57;
      v168.origin.y = v24;
      v168.size.width = v148;
      v168.size.height = v149;
      CGRectGetMidX(v168);
      v169.origin.x = 0.0;
      v169.origin.y = 0.0;
      v169.size.width = v54;
      v169.size.height = v55;
      CGRectGetWidth(v169);
      v69 = [v1 traitCollection];
      [v69 displayScale];

      sub_1004D872C();
      MinX = v70;
    }

    else
    {
      v65 = v57;
      v66 = v24;
      v67 = v148;
      v68 = v149;
      if (((1 << v62) & 0x12) != 0)
      {
        MinX = CGRectGetMinX(*&v65);
      }

      else
      {
        MaxX = CGRectGetMaxX(*&v65);
        v170.origin.x = 0.0;
        v170.origin.y = 0.0;
        v170.size.width = v54;
        v170.size.height = v55;
        MinX = MaxX - CGRectGetWidth(v170);
      }
    }
  }

  v72 = [v1 contentVerticalAlignment];
  if (v72 > 1)
  {
    if (v72 == 2)
    {
      v176.origin.x = v57;
      v176.origin.y = v24;
      v176.size.width = v148;
      v176.size.height = v149;
      MaxY = CGRectGetMaxY(v176);
      v177.origin.y = 0.0;
      v177.origin.x = MinX;
      v177.size.width = v54;
      v177.size.height = v55;
      MinY = MaxY - CGRectGetHeight(v177);
    }

    else if (v72 == 3)
    {
      v172.origin.x = v57;
      v172.origin.y = v24;
      v73 = v148;
      v172.size.width = v148;
      v74 = v149;
      v172.size.height = v149;
      MinY = CGRectGetMinY(v172);
      v173.origin.x = v57;
      v173.origin.y = v24;
      v173.size.width = v73;
      v173.size.height = v74;
      v55 = CGRectGetHeight(v173);
    }
  }

  else if (v72)
  {
    if (v72 == 1)
    {
      v171.origin.x = v57;
      v171.origin.y = v24;
      v171.size.width = v148;
      v171.size.height = v149;
      MinY = CGRectGetMinY(v171);
    }
  }

  else
  {
    v174.origin.x = v57;
    v174.origin.y = v24;
    v174.size.width = v148;
    v174.size.height = v149;
    CGRectGetMidY(v174);
    v175.origin.y = 0.0;
    v175.origin.x = MinX;
    v175.size.width = v54;
    v175.size.height = v55;
    CGRectGetHeight(v175);
    v75 = [v1 traitCollection];
    [v75 displayScale];

    sub_1004D872C();
    MinY = v76;
  }

  v78 = MinX;
  if (*(v38 + 8))
  {
    v178.origin.x = MinX;
    v178.origin.y = MinY;
    v178.size.width = v151;
    v178.size.height = v150;
    v78 = v144 + CGRectGetMaxX(v178);
  }

  v79 = [v1 contentVerticalAlignment];
  if (v79 == 3)
  {
    v183.origin.x = MinX;
    v183.origin.y = MinY;
    v183.size.width = v54;
    v183.size.height = v55;
    v150 = CGRectGetHeight(v183);
    v184.origin.x = MinX;
    v184.origin.y = MinY;
    v184.size.width = v54;
    v184.size.height = v55;
    v84 = CGRectGetHeight(v184);
    v82 = MinY;
    v83 = v147;
  }

  else if (v79)
  {
    v82 = MinY;
    v83 = v147;
    v84 = v145;
  }

  else
  {
    v179.origin.x = MinX;
    v179.origin.y = MinY;
    v179.size.width = v54;
    v179.size.height = v55;
    CGRectGetMidY(v179);
    v180.origin.x = MinX;
    v180.origin.y = MinY;
    v180.size.width = v151;
    v180.size.height = v150;
    CGRectGetHeight(v180);
    v80 = [v1 traitCollection];
    [v80 displayScale];

    sub_1004D872C();
    v82 = v81;
    v181.origin.x = MinX;
    v181.origin.y = MinY;
    v181.size.width = v54;
    v181.size.height = v55;
    CGRectGetMidY(v181);
    v182.origin.x = v78;
    v182.origin.y = MinY;
    v83 = v147;
    v182.size.width = v147;
    v84 = v145;
    v182.size.height = v145;
    CGRectGetHeight(v182);
    v52 = &selRef_addTarget_action_forControlEvents_;
    v85 = [v1 traitCollection];
    [v85 displayScale];

    sub_1004D872C();
    MinY = v86;
  }

  v87 = sub_1003D386C();
  if ([v1 v52[45]] == 4 || objc_msgSend(v1, v52[45]) == 5)
  {
    v156 = 0u;
    v157 = 0u;
    v158 = 1;
    sub_1004DE3DC();
    v78 = v88;
    MinY = v89;
    v83 = v90;
    v84 = v91;
  }

  [v87 setFrame:{v78, MinY, v83, v84}];

  if (*(v38 + 128))
  {
    if ((*(v38 + 184) & 1) == 0)
    {
      v92 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] image];
      if (v92)
      {
        v93 = v92;
        sub_1003D4740(v11);
        v94 = *&v11[v6[7]];
        sub_1003DD438(v11, type metadata accessor for SymbolButton.Metrics);
        v95 = [v93 imageByApplyingSymbolConfiguration:v94];

        if (v95)
        {
          sub_1004DE5BC();
          v51 = &selRef_setShadowPathIsBounds_;
          if ((v96 & 1) == 0)
          {
            v97 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
            [*&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] frame];
            CGRectGetMinY(v185);
            [*&v1[v97] _firstLineBaseline];
            v186.origin.x = MinX;
            v186.origin.y = v82;
            v186.size.width = v151;
            v186.size.height = v150;
            CGRectGetHeight(v186);
          }
        }

        else
        {
          v51 = &selRef_setShadowPathIsBounds_;
        }

        v52 = &selRef_addTarget_action_forControlEvents_;
      }
    }
  }

  sub_1003D4740(v11);
  sub_1003DD438(v11, type metadata accessor for SymbolButton.Metrics);
  sub_1004DE42C();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v106 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
  if ([v1 v52[45]] == 4 || objc_msgSend(v1, v52[45]) == 5)
  {
    v153 = 0u;
    v154 = 0u;
    v155 = 1;
    sub_1004DE3DC();
  }

  else
  {
    v107 = v99;
    v108 = v101;
    v109 = v103;
    v110 = v105;
  }

  v111 = v143;
  [v106 v51[212]];

  sub_1003D3B58();
  v112 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
  if (v112)
  {
    v113 = v112;
    v114 = [v1 traitCollection];
    v115 = [v114 userInterfaceIdiom];

    v116 = v115 == 6;
    v51 = &selRef_setShadowPathIsBounds_;
    if (v116)
    {
      v117 = 12.0;
    }

    else
    {
      v117 = 8.0;
    }

    [v1 bounds];
    v118 = CGRectGetMaxX(v187);
    v188.origin.x = 0.0;
    v188.origin.y = 0.0;
    v188.size.width = v117;
    v188.size.height = v117;
    v119 = v118 - CGRectGetWidth(v188) + 1.0;
    [v1 bounds];
    [v113 setFrame:{v119, CGRectGetMinY(v189) + -1.0, v117, v117}];
  }

  v120 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v121 = [v16 contentView];
  [v121 bounds];
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v129 = v128;

  [v120 v51[212]];
  sub_1003DF60C(v38, v4, type metadata accessor for SymbolButton.Configuration);
  v130 = *(v111 + 36);
  v131 = sub_1004DE53C();
  if ((*(*(v131 - 8) + 48))(&v4[v130], 1, v131))
  {
    v132 = type metadata accessor for SymbolButton.Configuration;
    v133 = v4;
  }

  else
  {
    v134 = v140;
    sub_1004DE50C();
    sub_1003DD438(v4, type metadata accessor for SymbolButton.Configuration);
    v135 = v141;
    v136 = v142;
    v137 = (*(v141 + 88))(v134, v142);
    v138 = enum case for UIView.Corner.Radius.rounded(_:);
    (*(v135 + 8))(v134, v136);
    if (v137 != v138)
    {
      return;
    }

    sub_1003D4740(v11);
    sub_1003D5B88(v11);
    v132 = type metadata accessor for SymbolButton.Metrics;
    v133 = v11;
  }

  sub_1003DD438(v133, v132);
}

Swift::Void __swiftcall SymbolButton.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = sub_100004CB8(&qword_100644070);
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - v14;
  v16 = type metadata accessor for SymbolButton(0);
  v20.receiver = v1;
  v20.super_class = v16;
  objc_msgSendSuper2(&v20, "traitCollectionDidChange:", isa);
  (*(v7 + 56))(v15, 1, 1, v6);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v15, 0, 0, 0, 1);
  sub_10001074C(v15, &qword_100644070);
  v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003DF60C(v1 + v17, v12, type metadata accessor for SymbolButton.Configuration);
  v18 = [v1 traitCollection];
  sub_1003D4740(v5);
  sub_1003DD438(v5, type metadata accessor for SymbolButton.Metrics);
  sub_1003DF60C(v12, v9, type metadata accessor for SymbolButton.Configuration);
  sub_1003D3D78(v9, v18, v5);
  sub_1003DD438(v12, type metadata accessor for SymbolButton.Configuration);
  sub_1003D49E8(v5);
}

double SymbolButton.intrinsicContentSize.getter()
{
  v1 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  sub_1003D4740(&v35 - v11);
  sub_1003DD438(v12, type metadata accessor for SymbolButton.Metrics);
  sub_1004DE34C();
  v14 = v13;
  sub_1003D4740(v12);
  sub_1003DD438(v12, type metadata accessor for SymbolButton.Metrics);
  sub_1004DE35C();
  v15 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  if (!*(v15 + 8))
  {
    v23 = 0.0;
    if (!*(v15 + 128))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_1003D4740(v9);
  v16 = &v9[v1[11]];
  v17 = *v16;
  v18 = v16[16];
  sub_1003DD438(v9, type metadata accessor for SymbolButton.Metrics);
  v19 = sub_1003D36F4();
  [v19 intrinsicContentSize];
  v21 = v20;

  if (v17 >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v17;
  }

  if (v18)
  {
    v22 = v21;
  }

  v23 = v22 + 0.0;
  if (*(v15 + 128))
  {
LABEL_10:
    if ((*(v15 + 184) & 1) == 0)
    {
      v24 = sub_1003D386C();
      [v24 intrinsicContentSize];
      v26 = v25;

      v23 = v23 + v26;
    }
  }

LABEL_12:
  if (*(v15 + 8) && *(v15 + 128) && (*(v15 + 184) & 1) == 0)
  {
    sub_1003D4740(v12);
    v27 = *&v12[v1[8]];
    sub_1003DD438(v12, type metadata accessor for SymbolButton.Metrics);
    v23 = v23 + v27;
  }

  v28 = *(v15 + *(type metadata accessor for SymbolButton.Configuration(0) + 40));
  if (v28)
  {
    [v28 intrinsicContentSize];
    if (v29 > v23)
    {
      v23 = v29;
    }
  }

  v30 = v14 + 0.0;
  sub_1003D4740(v6);
  v31 = *&v6[v1[10]];
  sub_1003DD438(v6, type metadata accessor for SymbolButton.Metrics);
  if (v23 > v31)
  {
    v32 = v23;
  }

  else
  {
    v32 = v31;
  }

  v33 = v30 + v32;
  sub_1003D4740(v3);
  sub_1003DD438(v3, type metadata accessor for SymbolButton.Metrics);
  return v33;
}

Swift::Void __swiftcall SymbolButton.tintColorDidChange()()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SymbolButton(0);
  v7.receiver = v0;
  v7.super_class = v4;
  objc_msgSendSuper2(&v7, "tintColorDidChange");
  v5 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003DF60C(v0 + v5, v3, type metadata accessor for SymbolButton.Configuration);
  sub_1003D4C48(v3);
  sub_1003DD438(v3, type metadata accessor for SymbolButton.Configuration);
}

double SymbolButton.hitRectMinimumSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize;
  swift_beginAccess();
  return *v1;
}

uint64_t SymbolButton.hitRectMinimumSize.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double SymbolButton.hitRect()()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for SymbolButton(0);
  objc_msgSendSuper2(&v15, "hitRect");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize];
  swift_beginAccess();
  v10 = *v9;
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  Width = CGRectGetWidth(v16);
  if (Width > v10)
  {
    v10 = Width;
  }

  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  CGRectGetHeight(v17);
  sub_1004DE41C();
  v13 = v12 - v10 * 0.5;
  sub_1004DE41C();
  return v13;
}

id SymbolButton.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for SymbolButton(0);
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, "isHighlighted");
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "setHighlighted:", a1 & 1);
  return sub_1003D2B24(v4);
}

id sub_1003D2B24(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_100004CB8(&qword_100644070);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &aBlock - v6;
  result = [v2 isHighlighted];
  if (result != v3)
  {
    v9 = [v2 traitCollection];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 6)
    {
      v11 = objc_opt_self();
      if ([v11 areAnimationsEnabled])
      {
        if ([v2 isHighlighted])
        {
          v12 = swift_allocObject();
          *(v12 + 16) = v2;
          v29 = sub_1003DF5DC;
          v30 = v12;
          aBlock = _NSConcreteStackBlock;
          v26 = 1107296256;
          v27 = sub_100012680;
          v28 = &unk_1005F3868;
          v13 = _Block_copy(&aBlock);
          v14 = v2;

          v15 = swift_allocObject();
          *(v15 + 16) = v14;
          v29 = sub_1003DF604;
          v30 = v15;
          aBlock = _NSConcreteStackBlock;
          v26 = 1107296256;
          v27 = sub_100016298;
          v28 = &unk_1005F38B8;
          v16 = _Block_copy(&aBlock);
          v17 = v14;

          [v11 animateWithDuration:0x20000 delay:v13 options:v16 animations:0.1 completion:0.0];
          _Block_release(v16);
          _Block_release(v13);
        }

        else
        {
          sub_100006F10(0, &qword_100644F50);
          sub_100006F10(0, &qword_100644F78);
          v18 = UISpringTimingParameters.init(dampingRatio:response:)(0.7, 0.4);
          v19 = swift_allocObject();
          *(v19 + 16) = v2;
          v20 = v2;
          static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v18, 0, sub_1003DF5BC, v19, 0, 0, 0.0);
        }
      }
    }

    v21 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = [objc_opt_self() areAnimationsEnabled];
    if (v22)
    {
      v23 = 0x3FD0000000000000;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = 3075;
    }

    else
    {
      v24 = 0;
    }

    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v7, v23, 0, v24, v22 ^ 1);
    return sub_10001074C(v7, &qword_100644070);
  }

  return result;
}

id sub_1003D2ED0(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

void sub_1003D2F30(int a1, id a2)
{
  if ([a2 showsMenuAsPrimaryAction] && objc_msgSend(a2, "isContextMenuInteractionEnabled"))
  {
    sub_100006F10(0, &qword_100644F50);
    sub_100006F10(0, &qword_100644F78);
    v5 = UISpringTimingParameters.init(dampingRatio:response:)(0.7, 0.4);
    v3 = swift_allocObject();
    *(v3 + 16) = a2;
    v4 = a2;
    static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v5, 0, sub_1003DFF0C, v3, 0, 0, 0.0);
  }
}

id sub_1003D3080(void *a1, uint64_t a2, uint64_t (*a3)(void), SEL *a4)
{
  v6.receiver = a1;
  v6.super_class = a3(0);
  return objc_msgSendSuper2(&v6, *a4);
}

id sub_1003D30D4(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SymbolButton(0);
  return objc_msgSendSuper2(&v4, *a1);
}

id sub_1003D3210(char a1, SEL *a2, SEL *a3)
{
  v7 = sub_100004CB8(&qword_100644070);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SymbolButton(0);
  v18.receiver = v3;
  v18.super_class = v10;
  v11 = objc_msgSendSuper2(&v18, *a2);
  v17.receiver = v3;
  v17.super_class = v10;
  objc_msgSendSuper2(&v17, *a3, a1 & 1);
  result = [v3 *a2];
  if (v11 != result)
  {
    v13 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = [objc_opt_self() areAnimationsEnabled];
    if (v14)
    {
      v15 = 0x3FD0000000000000;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = 3075;
    }

    else
    {
      v16 = 0;
    }

    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v9, v15, 0, v16, v14 ^ 1);
    return sub_10001074C(v9, &qword_100644070);
  }

  return result;
}

Swift::Void __swiftcall SymbolButton.setEnabled(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  if (animated)
  {

    [v2 setEnabled:_];
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = _;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1003DD4D0;
    *(v6 + 24) = v5;
    v10[4] = sub_100051F90;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1000121E8;
    v10[3] = &unk_1005F3008;
    v7 = _Block_copy(v10);
    v8 = v2;

    [v4 performWithoutAnimation:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003D3548(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1003D35D0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id sub_1003D36F4()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView);
  }

  else
  {
    v4 = v0;
    v5 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v6 = *(v5 + 80);
    v18[4] = *(v5 + 64);
    v18[5] = v6;
    v18[6] = *(v5 + 96);
    v19 = *(v5 + 112);
    v7 = *(v5 + 16);
    v18[0] = *v5;
    v18[1] = v7;
    v8 = *(v5 + 48);
    v18[2] = *(v5 + 32);
    v18[3] = v8;
    v9 = type metadata accessor for SymbolButton.ImageView();
    v10 = objc_allocWithZone(v9);
    sub_1003DD2E0(v18, v17);
    v16.receiver = v10;
    v16.super_class = v9;
    v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v11 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v11 setContentMode:4];
    sub_1003D71EC(v18);
    sub_1003B411C(v18);

    v12 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
    if (([v11 isDescendantOfView:v12] & 1) == 0)
    {
      [v12 addSubview:v11];
    }

    v13 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_1003D386C()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v6 = *(v5 + 136);
    v7 = *(v5 + 168);
    v15[2] = *(v5 + 152);
    v15[3] = v7;
    v15[4] = *(v5 + 184);
    v15[0] = *(v5 + 120);
    v15[1] = v6;
    v8 = objc_allocWithZone(type metadata accessor for SymbolButton.Label());
    sub_1003DD350(v15, v14);
    v9 = sub_1003D7430(v15);
    v10 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
    if (([v9 isDescendantOfView:v10] & 1) == 0)
    {
      [v10 addSubview:v9];
    }

    v11 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_1003D3974(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [v3 removeFromSuperview];
    v5 = *&v2[v4];
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a1)
  {
    type metadata accessor for SymbolButton.BadgeView();
    v6 = v5;
    v3 = v3;
    v7 = sub_1004DE5FC();

    if (v7)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
  v17 = v5;
  [v8 insertSubview:? aboveSubview:?];
  v9 = *&v2[v4];
  if (v9)
  {
    v10 = v9;
    v11 = [v2 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 6)
    {
      v13 = 12.0;
    }

    else
    {
      v13 = 8.0;
    }

    [v2 bounds];
    MaxX = CGRectGetMaxX(v19);
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = v13;
    v20.size.height = v13;
    v15 = MaxX - CGRectGetWidth(v20) + 1.0;
    [v2 bounds];
    [v10 setFrame:{v15, CGRectGetMinY(v21) + -1.0, v13, v13}];

    v16 = v10;
  }

  else
  {
    v16 = v17;
  }
}

void sub_1003D3B58()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
    v6 = v4;
    v7 = [v5 contentView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_1003DF60C(v0 + v16, v3, type metadata accessor for SymbolButton.Configuration);
    v17 = &v3[*(v1 + 40)];
    if (*v17)
    {
      v18 = (v17 + 8);
    }

    else
    {
      v18 = &UIEdgeInsetsZero;
    }

    if (*v17)
    {
      p_left = (v17 + 16);
    }

    else
    {
      p_left = &UIEdgeInsetsZero.left;
    }

    v20 = *p_left;
    top = v18->top;
    sub_1003DD438(v3, type metadata accessor for SymbolButton.Configuration);
    [v6 setFrame:{sub_10001087C(v9, v11, v13, v15, top, v20)}];
  }
}

id sub_1003D3D3C()
{
  result = [objc_opt_self() defaultMetrics];
  qword_1006449F0 = result;
  return result;
}

uint64_t sub_1003D3D78@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v6 - 8);
  v75 = &v74 - v7;
  v8 = type metadata accessor for SymbolButton.Metrics(0);
  v9 = v8[5];
  v10 = sub_1004DE53C();
  v11 = *(*(v10 - 8) + 56);
  v81 = v9;
  v11(&a3[v9], 1, 1, v10);
  v12 = &a3[v8[11]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v76 = v12;
  v12[16] = 1;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v14 = (a1 + v13[16]);
  v77 = *v14;
  v80 = a2;
  if (v77 == 1)
  {
    v15 = [a2 preferredContentSizeCategory];
    v16 = *(v14 + 1);
    if (v16)
    {
      v17 = v16;
      v18 = sub_1004DE2FC();
      if (v18)
      {
        v19 = v15;
      }

      else
      {
        v19 = v17;
      }

      if (v18)
      {
        v15 = v17;
      }
    }

    v20 = *(v14 + 2);
    if (v20)
    {
      v21 = v20;
      if (sub_1004DE2EC())
      {

        goto LABEL_15;
      }
    }

    v21 = v15;
  }

  else
  {
    v21 = UIContentSizeCategoryLarge;
  }

LABEL_15:
  v22 = objc_opt_self();
  v79 = v21;
  v23 = [v22 traitCollectionWithPreferredContentSizeCategory:v21];
  *a3 = v23;
  v24 = objc_opt_self();
  v25 = *(a1 + 136);
  v74 = v23;
  v26 = v23;
  v27 = [v24 preferredFontDescriptorWithTextStyle:v25 compatibleWithTraitCollection:v26];
  v28 = objc_opt_self();
  v78 = v27;
  [v27 pointSize];
  *&a3[v8[6]] = [v28 systemFontOfSize:? weight:?];
  if (*(a1 + 40))
  {
    v29 = [v24 preferredFontDescriptorWithTextStyle:*(a1 + 24) compatibleWithTraitCollection:v26];
    [v29 pointSize];
    v31 = [objc_opt_self() configurationWithPointSize:*(a1 + 48) weight:*(a1 + 56) scale:v30];
  }

  else
  {
    v31 = [objc_opt_self() configurationWithPointSize:*(a1 + 48) weight:*(a1 + 56) scale:*(a1 + 32)];
  }

  *&a3[v8[7]] = v31;
  *&a3[v8[8]] = *(a1 + v13[12]);
  v32 = *(a1 + 80);
  v33 = v80;
  if (v32 == 255)
  {
    *&a3[v8[9]] = UIOffsetZero;
    if (v77)
    {
      goto LABEL_23;
    }

LABEL_29:

    v66 = (a1 + v13[15]);
    v67 = &a3[v8[12]];
    v68 = v66[1];
    *v67 = *v66;
    *(v67 + 1) = v68;
    *&a3[v8[10]] = *(a1 + v13[13]);
    v69 = a1 + v13[14];
    LOBYTE(v67) = *(v69 + 16);
    v70 = *v69;
    v71 = v76;
    *v76 = v70;
    *(v71 + 16) = v67;
    v72 = v13[9];
    v73 = v81;
    sub_10001074C(&a3[v81], &qword_100644A50);
    sub_1000108DC(a1 + v72, &a3[v73], &qword_100644A50);
    return sub_1003DD438(a1, type metadata accessor for SymbolButton.Configuration);
  }

  v34 = *(a1 + 72);
  if ((v32 & 1) == 0)
  {
    [v80 displayScale];
    sub_1004DE71C();
    v63 = &a3[v8[9]];
    *v63 = v64;
    *(v63 + 1) = v65;
    if (v77)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  v35 = &a3[v8[9]];
  *v35 = *(a1 + 64);
  *(v35 + 1) = v34;
  if (!v77)
  {
    goto LABEL_29;
  }

LABEL_23:
  if (qword_10063DB00 != -1)
  {
    swift_once();
  }

  v36 = qword_1006449F0;
  v37 = (a1 + v13[15]);
  v38 = v37[1];
  v39 = v37[2];
  v40 = v37[3];
  [qword_1006449F0 scaledValueForValue:v26 compatibleWithTraitCollection:*v37];
  v42 = v41;
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v38];
  v44 = v43;
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v39];
  v46 = v45;
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v40];
  v47 = &a3[v8[12]];
  *v47 = v42;
  *(v47 + 1) = v44;
  *(v47 + 2) = v46;
  *(v47 + 3) = v48;
  v49 = (a1 + v13[13]);
  v50 = v49[1];
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:*v49];
  v52 = v51;
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v50];
  v53 = &a3[v8[10]];
  *v53 = v52;
  *(v53 + 1) = v54;
  v55 = a1 + v13[14];
  if ((*(v55 + 16) & 1) == 0)
  {
    v56 = *(v55 + 8);
    [v36 scaledValueForValue:v26 compatibleWithTraitCollection:*v55];
    v58 = v57;
    [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v56];
    v59 = v76;
    *v76 = v58;
    *(v59 + 1) = v60;
    *(v59 + 16) = 0;
  }

  v61 = v75;
  sub_1003D43AC(a1 + v13[9], v74, v75);

  sub_1003DD438(a1, type metadata accessor for SymbolButton.Configuration);
  return sub_1000107AC(v61, &a3[v81], &qword_100644A50);
}

uint64_t sub_1003D43AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v29 = a3;
  v27 = sub_1004DE4EC();
  v4 = *(v27 - 8);
  v5 = __chkstk_darwin(v27);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  v10 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - v11;
  v13 = sub_1004DE53C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_1000108DC(a1, v12, &qword_100644A50);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10001074C(v12, &qword_100644A50);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_1004DE50C();
    v17 = v27;
    v18 = (*(v4 + 88))(v9, v27);
    if (v18 == enum case for UIView.Corner.Radius.value(_:))
    {
      v19 = v18;
      (*(v4 + 96))(v9, v17);
      v20 = *v9;
      v21 = v9[8];
      v22 = v29;
      (*(v14 + 16))(v29, v16, v13);
      [v25[1] scaledValueForValue:v26 compatibleWithTraitCollection:v20];
      *v7 = v23;
      v7[8] = v21;
      (*(v4 + 104))(v7, v19, v17);
      sub_1004DE51C();
      (*(v14 + 8))(v16, v13);
      return (*(v14 + 56))(v22, 0, 1, v13);
    }

    (*(v14 + 8))(v16, v13);
    (*(v4 + 8))(v9, v17);
  }

  return sub_1000108DC(v28, v29, &qword_100644A50);
}

uint64_t sub_1003D4740@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_100644F58);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  swift_beginAccess();
  sub_1000108DC(v1 + v12, v11, &qword_100644F58);
  v13 = type metadata accessor for SymbolButton.Metrics(0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_1003DF674(v11, a1, type metadata accessor for SymbolButton.Metrics);
  }

  sub_10001074C(v11, &qword_100644F58);
  v15 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003DF60C(v1 + v15, v5, type metadata accessor for SymbolButton.Configuration);
  sub_1003D3D78(v5, [v1 traitCollection], a1);
  sub_1003DF60C(a1, v9, type metadata accessor for SymbolButton.Metrics);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000107AC(v9, v1 + v12, &qword_100644F58);
  return swift_endAccess();
}

uint64_t sub_1003D49E8(uint64_t a1)
{
  v3 = sub_100004CB8(&qword_100644F58);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for SymbolButton.Metrics(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v16 - v11);
  sub_1003D4740(&v16 - v11);
  sub_1003DF60C(a1, v5, type metadata accessor for SymbolButton.Metrics);
  (*(v7 + 56))(v5, 0, 1, v6);
  v13 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  swift_beginAccess();
  sub_1000107AC(v5, v1 + v13, &qword_100644F58);
  swift_endAccess();
  sub_1003D4740(v10);
  v14 = sub_1003DAA08(v10, v12);
  sub_1003DD438(v10, type metadata accessor for SymbolButton.Metrics);
  if ((v14 & 1) == 0)
  {
    sub_1003D4740(v10);
    sub_1003D5A50();
    sub_1003DD438(v10, type metadata accessor for SymbolButton.Metrics);
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsLayout];
  }

  sub_1003DD438(a1, type metadata accessor for SymbolButton.Metrics);
  return sub_1003DD438(v12, type metadata accessor for SymbolButton.Metrics);
}

id sub_1003D4C48(uint64_t a1)
{
  v3 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin(v3 - 8);
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for SymbolButton.Configuration(0);
  v5 = __chkstk_darwin(v112);
  v110 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v102 - v7;
  if (qword_10063D808 != -1)
  {
    swift_once();
  }

  v9 = sub_1004D966C();
  sub_100035430(v9, qword_1006736D8);
  sub_1003DF60C(a1, v8, type metadata accessor for SymbolButton.Configuration);
  v10 = v1;
  v11 = sub_1004D964C();
  v12 = sub_1004DDF6C();

  v13 = os_log_type_enabled(v11, v12);
  v113 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v118 = v15;
    *v14 = 136446466;
    v16 = &v10[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v17 = v16[1];
    if (v17)
    {
      v18 = *v16;
      v19 = v17;
    }

    else
    {
      v20 = v10;
      v109 = v15;
      v21 = v20;
      v22 = [v20 description];
      v18 = sub_1004DD43C();
      v19 = v23;
    }

    v24 = sub_1002E5CC4(v18, v19, &v118);

    *(v14 + 4) = v24;
    *(v14 + 12) = 2082;
    v25 = SymbolButton.Configuration.description.getter();
    v27 = v26;
    sub_1003DD438(v8, type metadata accessor for SymbolButton.Configuration);
    v28 = sub_1002E5CC4(v25, v27, &v118);

    *(v14 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] Applying configuration=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1003DD438(v8, type metadata accessor for SymbolButton.Configuration);
  }

  v29 = v113;
  v30 = *&v113[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  v31 = *(a1 + 248);
  v126[0] = *(a1 + 232);
  v126[1] = v31;
  v126[2] = *(a1 + 264);
  sub_1003D691C(v126);
  v32 = [v30 contentView];
  v33 = *(a1 + 280);
  v34 = *(a1 + 288);
  v35 = *(a1 + 296);
  v36 = v35;
  UIView.border.setter(v33, v34, v35);

  v109 = *&v29[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v37 = *(a1 + 200);
  v38 = *(a1 + 208);
  if (v38 == 1)
  {
    if (qword_10063DAF8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v39 = *&static SymbolButton.Background.clear;
    v40 = qword_100673C58;
    v41 = qword_100673C60;
    v42 = qword_100673C68;

    v43 = v40;
  }

  else
  {
    v39 = *(a1 + 200);
    v42 = *(a1 + 224);
    v43 = *(a1 + 208);
    v40 = v43;
    v41 = *(a1 + 216);
  }

  sub_1003DD3C0(v37, v38);
  sub_1003D6D98(v40, v39, v41, v42);

  v44 = v113;
  v45 = sub_1003D36F4();
  v46 = *(a1 + 80);
  v122 = *(a1 + 64);
  v123 = v46;
  v124 = *(a1 + 96);
  v125 = *(a1 + 112);
  v47 = *(a1 + 16);
  v118 = *a1;
  v119 = v47;
  v48 = *(a1 + 48);
  v120 = *(a1 + 32);
  v121 = v48;
  sub_1003D71EC(&v118);

  v49 = sub_1003D386C();
  v50 = *(a1 + 136);
  v117[0] = *(a1 + 120);
  v117[1] = v50;
  v51 = *(a1 + 168);
  v117[2] = *(a1 + 152);
  v117[3] = v51;
  v117[4] = *(a1 + 184);
  v52 = v117[0];
  sub_1003D75B8(v117);

  if (*(&v52 + 1))
  {
    v53 = HIBYTE(*(&v52 + 1)) & 0xFLL;
    if ((*(&v52 + 1) & 0x2000000000000000) == 0)
    {
      v53 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      v54 = sub_1004DD3FC();
      [v44 setAccessibilityLabel:v54];
    }
  }

  v55 = (a1 + *(v112 + 44));
  v56 = v55[2];
  v57 = &selRef_scaledValueForValue_;
  v109 = v52;
  if (v56 == 1)
  {
    v58 = *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    sub_1003D3974(v58);
  }

  else
  {
    v59 = *v55;
    v60 = v55[1];
    v61 = *&v60;
    v62 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView;
    v63 = *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v107 = v60;
    v108 = v59;
    if (v63)
    {
      v64 = v56;
      v65 = v44;
      v66 = v63;
      v67 = v63;
    }

    else
    {
      v106 = type metadata accessor for SymbolButton.BadgeView();
      v68 = objc_allocWithZone(v106);
      v105 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
      v69 = objc_allocWithZone(UIView);
      v104 = v56;
      v70 = [v69 init];
      v103 = objc_opt_self();
      v71 = v59;
      v72 = [v103 blackColor];
      [v70 setBackgroundColor:v72];

      v73 = [v70 layer];
      [v73 setCompositingFilter:kCAFilterDestOut];

      *&v68[v105] = v70;
      v74 = &v68[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v74 = v71;
      v74[1] = v60;
      v74[2] = v56;
      v114.receiver = v68;
      v114.super_class = v106;
      v75 = v104;
      v76 = v60;
      v67 = objc_msgSendSuper2(&v114, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v77 = v75;
      if (!v56)
      {
        v77 = [v103 tintColor];
      }

      v78 = v75;
      [v67 setBackgroundColor:v77];

      [v67 setAlpha:v61];
      [*&v67[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:v61];
      sub_1003D7B6C();
      sub_1002EA654(v108, v76, v56);

      v66 = 0;
      v65 = v113;
      v63 = *&v113[v62];
    }

    *&v65[v62] = v67;
    v79 = v67;
    v80 = v66;
    sub_1003D3974(v63);

    v81 = *&v65[v62];
    v44 = v65;
    if (v81)
    {
      v57 = &selRef_scaledValueForValue_;
      if (v56)
      {
        v82 = v81;
        v83 = v56;
        v84 = v56;
      }

      else
      {
        v85 = objc_opt_self();
        v86 = v81;
        v84 = [v85 tintColor];
        v83 = 0;
      }

      v87 = v83;
      [v81 setBackgroundColor:v84];

      [v81 setAlpha:v61];
      [*&v81[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:v61];
      sub_1003D7B6C();
      sub_1002EA654(v108, v107, v56);
    }

    else
    {
      sub_1002EA654(v108, v107, v56);
      v57 = &selRef_scaledValueForValue_;
    }
  }

  v88 = v112;
  v89 = a1 + *(v112 + 40);
  v90 = *(v89 + 16);
  v115[0] = *v89;
  v115[1] = v90;
  v115[2] = *(v89 + 32);
  v116 = *(v89 + 48);
  sub_1003D584C(v115);
  [v44 v57[32]];
  [v44 setTintColor:*(a1 + v88[18])];
  v91 = [v44 traitCollection];
  v92 = v111;
  sub_1003D4740(v111);
  sub_1003DD438(v92, type metadata accessor for SymbolButton.Metrics);
  v93 = v110;
  sub_1003DF60C(a1, v110, type metadata accessor for SymbolButton.Configuration);
  sub_1003D3D78(v93, v91, v92);
  sub_1003D49E8(v92);
  sub_1003D4740(v92);
  sub_1003D5B88(v92);
  sub_1003DD438(v92, type metadata accessor for SymbolButton.Metrics);
  sub_1003D56C0();
  [v44 setShowsLargeContentViewer:*(a1 + v88[16] + 24)];
  if (*(&v52 + 1))
  {
    v94 = sub_1004DD3FC();
  }

  else
  {
    v94 = 0;
  }

  v95 = *(&v118 + 1);
  [v44 setLargeContentTitle:v94];

  if (v95)
  {
    v96 = sub_1004DD3FC();
    v97 = objc_opt_self();
    v98 = [v97 _systemImageNamed:v96];

    if (!v98)
    {
      v99 = v119;
      v100 = sub_1004DD3FC();
      v98 = [v97 imageNamed:v100 inBundle:v99];
    }
  }

  else
  {
    v98 = 0;
  }

  [v44 setLargeContentImage:v98];

  return [v44 setScalesLargeContentImage:1];
}

void sub_1003D56C0()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
  if (!*(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount))
  {
    v6 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_1003DF60C(v0 + v6, v3, type metadata accessor for SymbolButton.Configuration);
    if (*(v3 + 29) == 1)
    {
      sub_1003DD438(v3, type metadata accessor for SymbolButton.Configuration);
    }

    else
    {
      v7 = *(v3 + 34);

      sub_1003DD438(v3, type metadata accessor for SymbolButton.Configuration);
      if (v7)
      {
        v8 = sub_1004DD3FC();

LABEL_10:
        [v4 _setGroupName:v8];

        return;
      }
    }

    v8 = 0;
    goto LABEL_10;
  }

  v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);

  [v5 _setGroupName:0];
}

void **sub_1003D584C(void **result)
{
  v2 = v1;
  v3 = result;
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView);
  v6 = *result;
  if (!*result)
  {
    if (!v5)
    {
      return result;
    }

LABEL_10:
    if ([v5 isDescendantOfView:v2])
    {
      [*(v2 + v4) removeFromSuperview];
    }

    v8 = v6;
    if (!v6)
    {
      v15 = *(v2 + v4);
      *(v2 + v4) = 0;
      v16 = 0;

      result = *(v2 + v4);
      if (!result)
      {
        return result;
      }

      v14 = 1.0;
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v7 = v6;
  v8 = v7;
  if (v5)
  {
    sub_100006F10(0, &qword_100644F50);
    v9 = v5;
    v10 = sub_1004DE5FC();

    if (v10)
    {
      result = *(v2 + v4);
      if (!result)
      {
        return result;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v5 = *(v2 + v4);
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_13:
  v11 = *(v2 + v4);
  *(v2 + v4) = v6;
  v12 = v8;

  v13 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
  if ([v13 isDescendantOfView:v13])
  {
    [v13 insertSubview:v12 aboveSubview:v13];
  }

  else
  {

    if (([v12 isDescendantOfView:v13] & 1) == 0)
    {
      [v13 addSubview:v12];
    }
  }

  sub_1003D3B58();

  result = *(v2 + v4);
  if (result)
  {
LABEL_18:
    v14 = *(v3 + 5);
LABEL_21:
    [result setAlpha:v14];
    result = *(v2 + v4);
    if (result)
    {
      if (v6)
      {
        v17 = v3[6];
      }

      else
      {
        v17 = 0;
      }

      return [result setTintColor:v17];
    }
  }

  return result;
}

uint64_t sub_1003D5A50()
{
  v0 = type metadata accessor for SymbolButton.Metrics(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1003D36F4();
  sub_1003D4740(v3);
  v5 = *&v3[*(v1 + 36)];
  sub_1003DD438(v3, type metadata accessor for SymbolButton.Metrics);
  [v4 setPreferredSymbolConfiguration:v5];

  v6 = sub_1003D386C();
  sub_1003D4740(v3);
  v7 = *&v3[*(v1 + 32)];
  sub_1003DD438(v3, type metadata accessor for SymbolButton.Metrics);
  [v6 setFont:v7];

  sub_1003D4740(v3);
  sub_1003D5B88(v3);
  return sub_1003DD438(v3, type metadata accessor for SymbolButton.Metrics);
}

uint64_t sub_1003D5B88(uint64_t a1)
{
  v3 = sub_100004CB8(&qword_100644A50);
  v4 = __chkstk_darwin(v3 - 8);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - v7;
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
  v12 = *(type metadata accessor for SymbolButton.Metrics(0) + 20);
  sub_1000108DC(a1 + v12, v10, &qword_100644A50);
  sub_1004DE54C();
  v44 = v1;
  sub_1000108DC(a1 + v12, v10, &qword_100644A50);
  sub_1004DE54C();
  v13 = [v11 contentView];
  v14 = [v13 clipsToBounds];

  if (v14)
  {
    sub_1000108DC(a1 + v12, v8, &qword_100644A50);
    v15 = sub_1004DE53C();
    v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);
    sub_10001074C(v8, &qword_100644A50);
    if (v16 != 1)
    {
      v17 = [v11 contentView];
      [v17 setClipsToBounds:0];
    }
  }

  v18 = v44;
  if (*(v44 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) == 1)
  {
    v43 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated;
    [v11 _setAllowsGroupFiltering:1];
    v19 = [v11 contentView];
    v20 = [v19 subviews];

    sub_100006F10(0, &qword_100644F50);
    v21 = sub_1004DD87C();

    if (v21 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1004DED5C())
    {
      v23 = v18 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
      swift_beginAccess();
      if (!i)
      {
        break;
      }

      v24 = 0;
      v25 = v21 & 0xC000000000000001;
      v26 = v21 & 0xFFFFFFFFFFFFFF8;
      v18 = &selRef_addTarget_action_forControlEvents_;
      v45 = v21 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v25)
        {
          v27 = sub_1004DEB2C();
        }

        else
        {
          if (v24 >= *(v26 + 16))
          {
            goto LABEL_22;
          }

          v27 = *(v21 + 8 * v24 + 32);
        }

        v28 = v27;
        v29 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        type metadata accessor for SymbolButton.Label();
        if (([v28 v18[111]] & 1) == 0)
        {
          v30 = type metadata accessor for SymbolButton.Configuration(0);
          v31 = v23[*(v30 + 76)];
          if (v31 == 2)
          {
            v32 = &v23[*(v30 + 36)];
            v33 = v25;
            v34 = v21;
            v35 = i;
            v36 = v23;
            v37 = v18;
            v38 = v46;
            sub_1000108DC(v32, v46, &qword_100644A50);
            v39 = sub_1004DE53C();
            LOBYTE(v31) = (*(*(v39 - 8) + 48))(v38, 1, v39) != 1;
            v40 = v38;
            v18 = v37;
            v23 = v36;
            i = v35;
            v21 = v34;
            v25 = v33;
            v26 = v45;
            sub_10001074C(v40, &qword_100644A50);
          }

          [v28 setClipsToBounds:v31 & 1];
        }

        ++v24;
        if (v29 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_19:

    *(v44 + v43) = 0;
  }

  return sub_1003D6004();
}

uint64_t sub_1003D6004()
{
  v1 = v0;
  v2 = sub_1004DE4EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7 = __chkstk_darwin(v6);
  v36 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = sub_100004CB8(&qword_100644F80);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - v12;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v14 = [v0 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 6)
  {
    *(&v40 + 1) = sub_1004D97FC();
    v41 = &protocol witness table for UIHoverHighlightEffect;
    sub_1000357EC(&v39);
    sub_1004D973C();
  }

  else
  {
    *(&v40 + 1) = sub_1004D979C();
    v41 = &protocol witness table for UIHoverLiftEffect;
    sub_1000357EC(&v39);
    sub_1004D972C();
  }

  sub_10001074C(&v42, &qword_100644F88);
  v42 = v39;
  v43 = v40;
  v44 = v41;
  sub_1000108DC(&v42, &v37, &qword_100644F88);
  if (v38)
  {
    v29 = v3;
    v30 = v2;
    v35 = v13;
    sub_100035850(&v37, &v39);
    v33 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
    v32 = v41;
    v16 = sub_100008C70(&v39, *(&v40 + 1));
    v31 = &v29;
    __chkstk_darwin(v16);
    (*(v18 + 16))(&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_1003DF60C(&v1[v19], v10, type metadata accessor for SymbolButton.Configuration);
    v34 = v6;
    v20 = *(v6 + 36);
    v21 = sub_1004DE53C();
    v22 = *(*(v21 - 8) + 48);
    if (v22(&v10[v20], 1, v21))
    {
      sub_1003DD438(v10, type metadata accessor for SymbolButton.Configuration);
      sub_1004D974C();
    }

    else
    {
      sub_1004DE50C();
      sub_1003DD438(v10, type metadata accessor for SymbolButton.Configuration);
      [v1 bounds];
      sub_1004DE4DC();
      (*(v29 + 8))(v5, v30);
    }

    v24 = v36;
    sub_1003DF60C(&v1[v19], v36, type metadata accessor for SymbolButton.Configuration);
    if (v22((v24 + *(v34 + 36)), 1, v21))
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_1004DE4BC();
    }

    v26 = v35;
    sub_100006F10(0, &qword_100644F90);
    sub_1003DD438(v24, type metadata accessor for SymbolButton.Configuration);
    sub_1004DDF3C(v25);
    sub_1004D9A1C();
    v27 = sub_1004D9A2C();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    v28 = sub_1004DDF2C();
    [v33 setHoverStyle:v28];

    sub_10001074C(&v42, &qword_100644F88);
    return sub_100008D24(&v39);
  }

  else
  {
    sub_10001074C(&v37, &qword_100644F88);
    [v1 setHoverStyle:0];
    return sub_10001074C(&v42, &qword_100644F88);
  }
}

void sub_1003D691C(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  [v2 setEffect:0];
  v6 = *a1;
  if (*a1 < 2uLL)
  {
    sub_100006F10(0, &qword_100644F98);
    isa = sub_1004DD85C().super.isa;
    [v2 setBackgroundEffects:isa];

    if (*a1 == 1)
    {
LABEL_6:
      sub_100006F10(0, &qword_100644F98);
      v8.super.isa = sub_1004DD85C().super.isa;
      [v2 setContentEffects:v8.super.isa];
      goto LABEL_12;
    }

    v5 = *(a1 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_8:
    v12 = v5;
    v13 = [v2 backgroundEffects];
    sub_100006F10(0, &qword_100644F98);
    v14 = sub_1004DD87C();

    sub_1004DD84C();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004DD8BC();
    }

    sub_1004DD90C();
    v15 = sub_1004DD85C().super.isa;

    [v2 setBackgroundEffects:v15];

    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  sub_100004CB8(&qword_100642970);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100511AB0;
  *(v9 + 32) = v6;
  sub_100006F10(0, &qword_100644F98);
  v10 = v6;
  v11 = sub_1004DD85C().super.isa;

  [v2 setBackgroundEffects:v11];

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (*a1 == 1)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_11:
  sub_100004CB8(&qword_100642970);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100511AB0;
  *(v16 + 32) = v4;
  sub_100006F10(0, &qword_100644F98);
  v17 = v4;
  v8.super.isa = sub_1004DD85C().super.isa;

  [v2 setContentEffects:v8.super.isa];

LABEL_12:
  v18 = [v2 contentView];
  v19 = [v18 layer];

  [v19 setAllowsGroupBlending:0];
}

id sub_1003D6CE8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003D6D98(void *a1, double a2, uint64_t a3, NSString a4)
{
  v8 = [v4 layer];
  if (a4)
  {
    a4 = sub_1004DD3FC();
  }

  [v8 setCompositingFilter:a4];

  swift_unknownObjectRelease();
  v9 = &v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v10 = *&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v11 = *&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration + 8];
  *v9 = a1;
  v9[1] = a2;
  if (!a1)
  {
    a1 = v10;
    if (!v10)
    {
      if (v11 == a2)
      {
        v14 = 0;
        goto LABEL_11;
      }

LABEL_10:
      sub_1003D6F58();
      v14 = v10;
      goto LABEL_11;
    }

LABEL_9:
    v15 = a1;
    goto LABEL_10;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  sub_100006F10(0, &qword_100641C80);
  v12 = a1;
  v16 = v10;
  v13 = sub_1004DE5FC();

  v14 = v16;
  if ((v13 & 1) == 0 || v11 != a2)
  {
    goto LABEL_10;
  }

LABEL_11:
  v17 = v14;
}

void sub_1003D6F58()
{
  v1 = &v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  }

  else
  {
    v3 = [objc_opt_self() tintColor];
  }

  v4 = *(v1 + 1);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = objc_allocWithZone(UIColor);
  v11[4] = sub_1003DFD04;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1003BB590;
  v11[3] = &unk_1005F3A70;
  v7 = _Block_copy(v11);
  v8 = v2;
  v9 = v3;
  v10 = [v6 initWithDynamicProvider:v7];
  _Block_release(v7);

  [v0 setBackgroundColor:v10];
}

id sub_1003D70B8(uint64_t a1, id a2, double a3)
{
  v4 = [a2 resolvedColorWithTraitCollection:a1];
  [v4 alphaComponent];
  v6 = [v4 colorWithAlphaComponent:v5 * a3];

  return v6;
}

id sub_1003D71EC(double *a1)
{
  if (*(a1 + 1))
  {
    v3 = sub_1004DD3FC();
    v4 = objc_opt_self();
    v5 = [v4 _systemImageNamed:v3];

    if (!v5)
    {
      v6 = *(a1 + 2);
      v7 = sub_1004DD3FC();
      v5 = [v4 imageNamed:v7 inBundle:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  [v1 setImage:v5];

  v8 = [v1 layer];
  if (*(a1 + 12))
  {
    v9 = sub_1004DD3FC();
  }

  else
  {
    v9 = 0;
  }

  [v8 setCompositingFilter:v9];

  swift_unknownObjectRelease();
  v10 = [v1 layer];
  [v10 setAllowsGroupOpacity:0];

  [v1 setTintColor:*(a1 + 14)];
  v11 = a1[13];

  return [v1 setAlpha:v11];
}

id sub_1003D7430(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SymbolButton.Label();
  v3 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v3 setLineBreakMode:5];
  v4 = v3;
  [v4 setNumberOfLines:1];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setAdjustsFontForContentSizeCategory:0];
  [v4 setClipsToBounds:0];

  [v4 _setTextColorFollowsTintColor:1];
  sub_1003D75B8(a1);
  sub_1003B4170(a1);

  return v4;
}

id sub_1003D75B8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v3 = sub_1004DD3FC();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  v4 = [v1 layer];
  if (*(a1 + 40))
  {
    v5 = sub_1004DD3FC();
  }

  else
  {
    v5 = 0;
  }

  [v4 setCompositingFilter:v5];

  swift_unknownObjectRelease();
  v6 = [v1 layer];
  [v6 setAllowsGroupOpacity:0];

  [v1 setTintColor:*(a1 + 56)];
  [v1 setSizingRule:*(a1 + 72)];
  v7 = 0.0;
  if ((*(a1 + 64) & 1) == 0)
  {
    v7 = *(a1 + 48);
  }

  return [v1 setAlpha:v7];
}

void sub_1003D7B6C()
{
  v1 = v0;
  v2 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  [v1 bounds];
  v5 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration;
  sub_1004DDF0C();
  sub_1004DE45C();
  v7 = v6;
  v9 = v8;
  [v1 frame];
  v11 = v10 - *&v1[v5];
  [v1 frame];
  v13 = v12 - *&v1[v5];
  v14 = *&v1[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView];
  [v14 setFrame:{v11, v13, v7, v9}];
  sub_1004DE52C();
  v15 = sub_1004DE53C();
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  sub_1004DE54C();
  v16 = [v1 superview];
  [v16 insertSubview:v14 belowSubview:v1];
}

Swift::Void __swiftcall SymbolButton.configureForToolbar(_:)(UITraitCollection a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  v29 = v1;
  sub_1003DF60C(v1 + v11, v7, type metadata accessor for SymbolButton.Configuration);
  if (qword_10063DAF0 != -1)
  {
    swift_once();
  }

  v12 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v13 = qword_100673C38;
  v14 = unk_100673C40;
  v15 = byte_100673C48;
  sub_1003DF60C(v7, v4, type metadata accessor for SymbolButton.Configuration);
  v16 = *(v2 + 64);
  v28 = v2;
  v17 = &v4[v16];
  v18 = *&v4[v16 + 8];
  v19 = v13;
  v20 = v14;

  *v17 = v12;
  *(v17 + 1) = v13;
  *(v17 + 2) = v14;
  v17[24] = v15;
  v21 = UITraitCollection.supportedMaterials.getter();
  LOBYTE(v13) = sub_1003C9F4C(1, v21);

  if (v13)
  {
    v22 = [objc_opt_self() labelColor];
    sub_1003DD438(v7, type metadata accessor for SymbolButton.Configuration);
    v23 = *(v28 + 72);

    *&v4[v23] = v22;
    sub_1002E009C(*(v4 + 25), *(v4 + 26));
    *(v4 + 200) = xmmword_100512770;
    *(v4 + 27) = 0;
    *(v4 + 28) = 0;
  }

  else
  {
    sub_1003DD438(v7, type metadata accessor for SymbolButton.Configuration);
  }

  sub_1003DF674(v4, v10, type metadata accessor for SymbolButton.Configuration);
  v24 = v29;
  SymbolButton.setConfiguration(_:animation:updates:)(v10, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_1003DD438(v10, type metadata accessor for SymbolButton.Configuration);
  v25 = UITraitCollection.supportedMaterials.getter();
  v26 = sub_1003C9F4C(1, v25);

  if (v26)
  {
    [v24 _setMonochromaticTreatment:2];
  }
}

double SymbolButton.Configuration.forBarButtonItem(_:)@<D0>(uint64_t a1@<X8>)
{
  if (qword_10063DAF0 != -1)
  {
    swift_once();
  }

  v3 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v4 = qword_100673C38;
  v5 = unk_100673C40;
  v6 = byte_100673C48;
  sub_1003DF60C(v1, a1, type metadata accessor for SymbolButton.Configuration);
  v7 = type metadata accessor for SymbolButton.Configuration(0);
  v8 = a1 + *(v7 + 64);
  v9 = *(v8 + 8);
  v10 = v4;
  v11 = v5;

  *v8 = v3;
  *(v8 + 8) = v4;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v12 = UITraitCollection.supportedMaterials.getter();
  v13 = sub_1003C9F4C(1, v12);

  if (v13)
  {
    v15 = [objc_opt_self() labelColor];
    v16 = *(v7 + 72);

    *(a1 + v16) = v15;
    sub_1002E009C(*(a1 + 200), *(a1 + 208));
    result = 0.0;
    *(a1 + 200) = xmmword_100512770;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  return result;
}

int64x2_t sub_1003D8204()
{
  v0 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  sub_100035718(v3, static SymbolButton.Configuration.contextualAction);
  v4 = sub_100035430(v3, static SymbolButton.Configuration.contextualAction);
  SymbolButton.Configuration.init()(v4);
  v24[0] = 0;
  v24[1] = 0;
  *&v23[7] = 0uLL;
  v25[0] = UIFontTextStyleSubheadline;
  v5 = UIFontTextStyleSubheadline;
  sub_10001074C(v24, &qword_100644AB0);
  v6 = [objc_opt_self() currentTraitCollection];
  v7 = [v6 userInterfaceIdiom];

  v8 = v7 == 6;
  if (v7 == 6)
  {
    v9 = 5;
  }

  else
  {
    v9 = 6;
  }

  v10 = &UIFontTextStyleTitle3;
  if (!v8)
  {
    v10 = &UIFontTextStyleCallout;
  }

  v11 = *v10;
  sub_1003DD438(v25, type metadata accessor for TextStyle);
  v12 = *v4;
  v13 = *(v4 + 16);
  v14 = *(v4 + 48);
  v21[2] = *(v4 + 32);
  v21[3] = v14;
  v21[0] = v12;
  v21[1] = v13;
  v15 = *(v4 + 64);
  v16 = *(v4 + 80);
  v17 = *(v4 + 96);
  v22 = *(v4 + 112);
  v21[5] = v16;
  v21[6] = v17;
  v21[4] = v15;
  *v4 = xmmword_100527300;
  *(v4 + 16) = 0;
  *(v4 + 24) = v11;
  *(v4 + 32) = 0;
  *(v4 + 40) = 1;
  *(v4 + 48) = v9;
  *(v4 + 56) = 2;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = -1;
  v18 = *v23;
  *(v4 + 96) = *&v23[15];
  *(v4 + 104) = 0x3FF0000000000000;
  *(v4 + 81) = v18;
  *(v4 + 112) = 0;
  sub_1003B411C(v21);
  sub_1004DE52C();
  v19 = sub_1004DE53C();
  (*(*(v19 - 8) + 56))(v2, 0, 1, v19);
  sub_1000107AC(v2, v4 + *(v3 + 36), &qword_100644A50);
  result = vdupq_n_s64(0x4040000000000000uLL);
  *(v4 + *(v3 + 52)) = result;
  return result;
}

uint64_t sub_1003D84AC(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_100035430(v4, a3);
}

uint64_t sub_1003D8530()
{
  v0 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  sub_100035718(v6, static SymbolButton.Configuration.barButtonContextualAction);
  v22 = sub_100035430(v0, static SymbolButton.Configuration.barButtonContextualAction);
  if (qword_10063DB08 != -1)
  {
    swift_once();
  }

  v7 = sub_100035430(v0, static SymbolButton.Configuration.contextualAction);
  sub_1003DF60C(v7, v5, type metadata accessor for SymbolButton.Configuration);
  v8 = [objc_opt_self() currentTraitCollection];
  if (qword_10063DAF0 != -1)
  {
    swift_once();
  }

  v9 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v10 = qword_100673C38;
  v11 = unk_100673C40;
  v12 = byte_100673C48;
  sub_1003DF60C(v5, v2, type metadata accessor for SymbolButton.Configuration);
  v13 = &v2[*(v0 + 64)];
  v14 = *(v13 + 1);
  v15 = v10;
  v16 = v11;

  *v13 = v9;
  *(v13 + 1) = v10;
  *(v13 + 2) = v11;
  v13[24] = v12;
  v17 = UITraitCollection.supportedMaterials.getter();
  LOBYTE(v10) = sub_1003C9F4C(1, v17);

  if (v10)
  {
    v18 = [objc_opt_self() labelColor];
    v19 = *(v0 + 72);

    *&v2[v19] = v18;
    sub_1002E009C(*(v2 + 25), *(v2 + 26));
    *(v2 + 200) = xmmword_100512770;
    *(v2 + 27) = 0;
    *(v2 + 28) = 0;
  }

  sub_1003DF674(v2, v22, type metadata accessor for SymbolButton.Configuration);

  return sub_1003DD438(v5, type metadata accessor for SymbolButton.Configuration);
}

uint64_t sub_1003D8820@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SymbolButton.Configuration(0);
  v6 = sub_100035430(v5, a2);
  return sub_1003DF60C(v6, a3, type metadata accessor for SymbolButton.Configuration);
}

void *SymbolButton.Configuration.adding(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v14 = *(a1 + 24);
  v12 = a1[5];
  v13 = a1[4];
  sub_1003DF60C(v2, a2, type metadata accessor for SymbolButton.Configuration);
  v8 = a2[29];
  v10 = a2[31];
  v11 = a2[30];
  v19 = v6;
  v17 = v7;
  v18 = v5;
  v16 = *(a1 + 2);
  sub_1000108DC(&v19, v15, &qword_100644AA8);
  sub_1000108DC(&v18, v15, &qword_100644AA8);
  sub_1000108DC(&v17, v15, &qword_100644AA8);
  sub_1000108DC(&v16, v15, &qword_100644AB0);
  result = sub_1003B28AC(v8, v11, v10);
  a2[29] = v6;
  a2[30] = v5;
  a2[31] = v7;
  a2[32] = v14;
  a2[33] = v13;
  a2[34] = v12;
  return result;
}

double SymbolButton.Configuration.removingMaterial()@<D0>(uint64_t a1@<X8>)
{
  sub_1003DF60C(v1, a1, type metadata accessor for SymbolButton.Configuration);
  sub_1003B28AC(*(a1 + 232), *(a1 + 240), *(a1 + 248));
  *(a1 + 232) = 1;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  return result;
}

uint64_t SymbolButton.Configuration.adding(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1003DF60C(v5, a5, type metadata accessor for SymbolButton.Configuration);
  v11 = a5[25];
  v12 = a5[26];
  sub_1003DD3C0(a1, a2);
  result = sub_1002E009C(v11, v12);
  a5[25] = a1;
  a5[26] = a2;
  a5[27] = a3;
  a5[28] = a4;
  return result;
}

double SymbolButton.Configuration.removingBackground()@<D0>(uint64_t a1@<X8>)
{
  sub_1003DF60C(v1, a1, type metadata accessor for SymbolButton.Configuration);
  sub_1002E009C(*(a1 + 200), *(a1 + 208));
  result = 0.0;
  *(a1 + 200) = xmmword_100512770;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  return result;
}

void SymbolButton.Configuration.withAccessibility(_:)(char a1@<W0>, void *a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1003DF60C(v5, a5, type metadata accessor for SymbolButton.Configuration);
  v11 = a5 + *(type metadata accessor for SymbolButton.Configuration(0) + 64);
  v12 = *(v11 + 8);
  v13 = a2;
  v14 = a3;

  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
}

uint64_t *SymbolButton.Background.tertiary.unsafeMutableAddressor()
{
  if (qword_10063DB20 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.tertiary;
}

uint64_t SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v50 = a7;
  v51 = a3;
  v48 = a6;
  v49 = a2;
  v52 = a4;
  v53 = a5;
  LODWORD(v56) = a1;
  v11 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v11 - 8);
  v55 = &v47 - v12;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v19 = [objc_opt_self() currentTraitCollection];
  if (qword_10063DAF0 != -1)
  {
    swift_once();
  }

  v20 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v21 = qword_100673C38;
  v22 = unk_100673C40;
  v23 = byte_100673C48;
  sub_1003DF60C(v9, v18, type metadata accessor for SymbolButton.Configuration);
  v24 = *(v13 + 64);
  v54 = v13;
  v25 = &v18[v24];
  v26 = *&v18[v24 + 8];
  v27 = v21;
  v28 = v22;

  *v25 = v20;
  *(v25 + 1) = v21;
  *(v25 + 2) = v22;
  v25[24] = v23;
  v29 = UITraitCollection.supportedMaterials.getter();
  v30 = sub_1003C9F4C(1, v29);

  if (v30)
  {
    v31 = [objc_opt_self() labelColor];

    v32 = v54;
    v33 = *(v54 + 72);

    *&v18[v33] = v31;
    sub_1002E009C(*(v18 + 25), *(v18 + 26));
    *(v18 + 200) = xmmword_100512770;
    *(v18 + 27) = 0;
    *(v18 + 28) = 0;
  }

  else
  {

    v32 = v54;
  }

  sub_1003DF674(v18, a8, type metadata accessor for SymbolButton.Configuration);
  v34 = v55;
  sub_1004DE52C();
  v35 = sub_1004DE53C();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  sub_1000107AC(v34, a8 + *(v32 + 36), &qword_100644A50);

  *(a8 + 280) = 0;
  *(a8 + 288) = 0;
  *(a8 + 296) = 0;
  if (v56)
  {
    v56 = [objc_opt_self() effectWithStyle:16];
    sub_1003DF60C(a8, v15, type metadata accessor for SymbolButton.Configuration);
    v36 = *(v15 + 29);
    v37 = *(v15 + 30);
    v38 = *(v15 + 31);
    v39 = v50;

    sub_1003B28AC(v36, v37, v38);
    *(v15 + 29) = v56;
    *(v15 + 30) = 0;
    *(v15 + 31) = 0;
    *(v15 + 32) = 2;
    *(v15 + 33) = v48;
    *(v15 + 34) = v39;
    sub_1003DD438(a8, type metadata accessor for SymbolButton.Configuration);
    sub_1003DF60C(v15, a8, type metadata accessor for SymbolButton.Configuration);
    sub_1002E009C(*(a8 + 200), *(a8 + 208));
    *(a8 + 200) = xmmword_100512770;
    *(a8 + 216) = 0;
    *(a8 + 224) = 0;
  }

  else
  {
    sub_1003DF60C(a8, v15, type metadata accessor for SymbolButton.Configuration);
    sub_1003B28AC(*(v15 + 29), *(v15 + 30), *(v15 + 31));
    *(v15 + 29) = 1;
    *(v15 + 15) = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 34) = 0;
    sub_1003DD438(a8, type metadata accessor for SymbolButton.Configuration);
    sub_1003DF60C(v15, a8, type metadata accessor for SymbolButton.Configuration);
    v40 = *(a8 + 200);
    v41 = *(a8 + 208);
    v42 = v49;
    v44 = v51;
    v43 = v52;
    v45 = v53;
    sub_1003DD3C0(v49, v51);
    sub_1002E009C(v40, v41);
    *(a8 + 200) = v42;
    *(a8 + 208) = v44;
    *(a8 + 216) = v43;
    *(a8 + 224) = v45;
  }

  return sub_1003DD438(v15, type metadata accessor for SymbolButton.Configuration);
}

uint64_t SymbolButton.Configuration.forPromotionalParallaxNavigationBar(withMaterial:background:backgroundAlpha:groupName:)@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v50 = a7;
  v51 = a8;
  v58 = a1;
  v59 = a6;
  v53 = a5;
  v54 = a3;
  v55 = a4;
  v52 = a2;
  v12 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v12 - 8);
  v57 = &v49 - v13;
  v14 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = [objc_opt_self() currentTraitCollection];
  if (qword_10063DAF0 != -1)
  {
    swift_once();
  }

  v21 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v23 = qword_100673C38;
  v22 = unk_100673C40;
  v24 = byte_100673C48;
  sub_1003DF60C(v10, v19, type metadata accessor for SymbolButton.Configuration);
  v25 = &v19[*(v14 + 64)];
  v56 = v14;
  v26 = *(v25 + 1);
  v27 = v23;
  v28 = v22;

  *v25 = v21;
  *(v25 + 1) = v23;
  *(v25 + 2) = v22;
  v25[24] = v24;
  v29 = UITraitCollection.supportedMaterials.getter();
  v30 = sub_1003C9F4C(1, v29);

  v31 = &unk_100512000;
  if (v30)
  {
    v32 = [objc_opt_self() labelColor];

    v33 = v56;
    v34 = *(v56 + 72);

    *&v19[v34] = v32;
    sub_1002E009C(*(v19 + 25), *(v19 + 26));
    *(v19 + 200) = xmmword_100512770;
    *(v19 + 27) = 0;
    *(v19 + 28) = 0;
  }

  else
  {

    v33 = v56;
  }

  sub_1003DF674(v19, a9, type metadata accessor for SymbolButton.Configuration);
  v35 = v57;
  sub_1004DE52C();
  v36 = sub_1004DE53C();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  sub_1000107AC(v35, a9 + *(v33 + 36), &qword_100644A50);

  *(a9 + 280) = 0;
  *(a9 + 288) = 0;
  *(a9 + 296) = 0;
  if (v58)
  {
    v37 = [objc_opt_self() effectWithStyle:16];
    sub_1003DF60C(a9, v16, type metadata accessor for SymbolButton.Configuration);
    v38 = *(v16 + 29);
    v39 = *(v16 + 30);
    v40 = *(v16 + 31);
    v41 = v51;

    sub_1003B28AC(v38, v39, v40);
    *(v16 + 29) = v37;
    *(v16 + 30) = 0;
    *(v16 + 31) = 0;
    *(v16 + 32) = 2;
    *(v16 + 33) = v50;
    *(v16 + 34) = v41;
    v31 = &unk_100512000;
  }

  else
  {
    sub_1003DF60C(a9, v16, type metadata accessor for SymbolButton.Configuration);
    sub_1003B28AC(*(v16 + 29), *(v16 + 30), *(v16 + 31));
    *(v16 + 29) = 1;
    *(v16 + 15) = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 34) = 0;
  }

  sub_1003DC954(v16, a9);
  sub_1003DF60C(a9, v16, type metadata accessor for SymbolButton.Configuration);
  v42 = *(v16 + 25);
  v43 = *(v16 + 26);
  if (v59)
  {
    sub_1002E009C(*(v16 + 25), *(v16 + 26));
    *(v16 + 200) = v31[119];
    *(v16 + 27) = 0;
    *(v16 + 28) = 0;
  }

  else
  {
    v44 = v55;

    v45 = v52;
    v46 = v52;
    sub_1002E009C(v42, v43);
    v47 = v54;
    *(v16 + 25) = v53;
    *(v16 + 26) = v45;
    *(v16 + 27) = v47;
    *(v16 + 28) = v44;
  }

  return sub_1003DC954(v16, a9);
}

void *SymbolButton.Background.withAlpha(_:)(void *a1)
{

  v2 = a1;
  return a1;
}

uint64_t SymbolButton.Configuration.withAlpha(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_1003DF60C(v2, a1, type metadata accessor for SymbolButton.Configuration);
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + *(result + 68)) = a2;
  return result;
}

id sub_1003D962C()
{
  result = [objc_opt_self() secondarySystemFillColor];
  static SymbolButton.Background.secondary = 0x3FF0000000000000;
  qword_100673CA8 = result;
  qword_100673CB0 = 0;
  qword_100673CB8 = 0;
  return result;
}

uint64_t *SymbolButton.Background.secondary.unsafeMutableAddressor()
{
  if (qword_10063DB18 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.secondary;
}

uint64_t static SymbolButton.Background.secondary.getter()
{
  if (qword_10063DB18 != -1)
  {
    swift_once();
  }

  v0 = qword_100673CA8;
  v1 = qword_100673CA8;

  return v0;
}

id sub_1003D9750()
{
  result = [objc_opt_self() tertiarySystemFillColor];
  static SymbolButton.Background.tertiary = 0x3FF0000000000000;
  qword_100673CC8 = result;
  qword_100673CD0 = 0;
  qword_100673CD8 = 0;
  return result;
}

uint64_t static SymbolButton.Background.tertiary.getter()
{
  if (qword_10063DB20 != -1)
  {
    swift_once();
  }

  v0 = qword_100673CC8;
  v1 = qword_100673CC8;

  return v0;
}

id sub_1003D9824()
{
  if (qword_10063DB20 != -1)
  {
    swift_once();
  }

  static SymbolButton.Background.normal = static SymbolButton.Background.tertiary;
  *&qword_100673CE8 = *&qword_100673CC8;
  qword_100673CF8 = qword_100673CD8;
  v1 = qword_100673CC8;

  return v1;
}

uint64_t static SymbolButton.Background.normal.getter()
{
  if (qword_10063DB28 != -1)
  {
    swift_once();
  }

  v0 = qword_100673CE8;
  v1 = qword_100673CE8;

  return v0;
}

id sub_1003D9944()
{
  if (qword_10063DB18 != -1)
  {
    swift_once();
  }

  static SymbolButton.Background.highlighted = static SymbolButton.Background.secondary;
  *&qword_100673D08 = *&qword_100673CA8;
  qword_100673D18 = qword_100673CB8;
  v1 = qword_100673CA8;

  return v1;
}

uint64_t static SymbolButton.Background.highlighted.getter()
{
  if (qword_10063DB30 != -1)
  {
    swift_once();
  }

  v0 = qword_100673D08;
  v1 = qword_100673D08;

  return v0;
}

id sub_1003D9A64()
{
  result = [objc_opt_self() effectWithStyle:7];
  qword_100673D28 = 0;
  qword_100673D30 = 0;
  static SymbolButton.Material.xr = result;
  byte_100673D38 = 2;
  qword_100673D40 = 0;
  unk_100673D48 = 0;
  return result;
}

uint64_t static SymbolButton.Material.xr.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10063DB38 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = static SymbolButton.Material.xr;
  v2 = qword_100673D28;
  v3 = qword_100673D30;
  v4 = byte_100673D38;
  v5 = qword_100673D40;
  v6 = unk_100673D48;
  *a1 = static SymbolButton.Material.xr;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v1;
  v8 = v2;
  v9 = v3;
}

uint64_t sub_1003D9B5C()
{
  v0 = sub_1004DE53C();
  sub_100035718(v0, static UIView.Corner.capsule);
  sub_100035430(v0, static UIView.Corner.capsule);
  return sub_1004DE52C();
}

uint64_t sub_1003D9BCC()
{
  v0 = sub_1004DE53C();
  sub_100035718(v0, static UIView.Corner.roundedRect);
  sub_100035430(v0, static UIView.Corner.roundedRect);
  return sub_1004DE4CC();
}

id SymbolButton.withProvider(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100644070);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = &v12[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v8 = *v7;
  *v7 = a1;
  v7[1] = a2;

  sub_10000DE74(v8);
  v9 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
  sub_10001074C(v6, &qword_100644070);
  v10 = v12;

  return v10;
}

id SymbolButton.withConfiguration(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v2 - 8);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003DF60C(a1, v4, type metadata accessor for SymbolButton.Configuration);
  SymbolButton.setConfiguration(_:animation:updates:)(v4, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_1003DD438(v4, type metadata accessor for SymbolButton.Configuration);
  v5 = v7[1];

  return v5;
}

id sub_1003D9EC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100006F10(0, &qword_100644F70);
  v2 = sub_1004DD87C();

  v3 = v1(v2);

  return v3;
}

BOOL _s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1004DF08C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    sub_100006F10(0, &qword_100644FA8);
    v9 = v8;
    v10 = v7;
    v11 = sub_1004DE5FC();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v12 = sub_1004DD43C();
  v14 = v13;
  if (v12 == sub_1004DD43C() && v14 == v15)
  {
  }

  else
  {
    v16 = sub_1004DF08C();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *(a2 + 40);
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
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v18 = *(a1 + 80);
  v19 = *(a2 + 80);
  if (v18 == 255)
  {
    if (v19 != 255)
    {
      return 0;
    }
  }

  else
  {
    v20 = *(a2 + 64);
    v33 = *(a1 + 64);
    v34 = v18;
    if (v19 == 255)
    {
      return 0;
    }

    v31 = v20;
    v32 = v19 & 1;
    type metadata accessor for UIOffset(0);
    v22 = v21;
    sub_1003DF6DC(&qword_100644FA0, type metadata accessor for UIOffset);
    if ((static DisplayUnit.__derived_enum_equals(_:_:)(&v33, &v31, v22) & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *(a1 + 96);
  v24 = *(a2 + 96);
  if (v23)
  {
    if (!v24 || (*(a1 + 88) != *(a2 + 88) || v23 != v24) && (sub_1004DF08C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (*(a1 + 104) == *(a2 + 104))
  {
    v25 = *(a1 + 112);
    v26 = *(a2 + 112);
    if (v25)
    {
      if (!v26)
      {
        return 0;
      }

      sub_100006F10(0, &qword_100641C80);
      v27 = v26;
      v28 = v25;
      v29 = sub_1004DE5FC();

      return (v29 & 1) != 0;
    }

    if (!v26)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s11MusicCoreUI12SymbolButtonC10BackgroundV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  if (a7 != a8)
  {
    return 0;
  }

  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v9 = a2;
    v10 = a3;
    v11 = a6;
    v12 = a5;
    sub_100006F10(0, &qword_100641C80);
    v14 = a4;
    v15 = a1;
    v16 = sub_1004DE5FC();

    a2 = v9;
    a3 = v10;
    a5 = v12;
    a6 = v11;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a3)
  {
    return a6 && (a2 == a5 && a3 == a6 || (sub_1004DF08C() & 1) != 0);
  }

  return !a6;
}