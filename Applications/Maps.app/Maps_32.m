__n128 sub_1003ABE60@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v5 = *(a1 + 48);
  v34 = *(a1 + 32);
  v35 = v5;
  v36 = *(a1 + 64);
  v37 = *(a1 + 80);
  v6 = *(a1 + 16);
  v32 = *a1;
  v33 = v6;
  v7 = (a2 + *(type metadata accessor for NearbyTransitLineSectionView(0) + 20));
  v8 = v7[3];
  v40 = v7[2];
  v41[0] = v8;
  *(v41 + 9) = *(v7 + 57);
  v9 = v7[1];
  v38 = *v7;
  v39 = v9;
  sub_100160488(&v38, v31);
  type metadata accessor for NearbyTransitDeparturesProvider();
  sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
  v10 = EnvironmentObject.init()();
  v12 = v11;
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v42 = v32;
  v43 = v33;
  *&v47[24] = v39;
  *&v47[40] = v40;
  *&v47[56] = v41[0];
  *&v47[65] = *(v41 + 9);
  *v47 = v37;
  *&v47[8] = v38;
  sub_1001603D8(v3, v31);
  LOBYTE(v3) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v30[55] = v31[3];
  *&v30[71] = v31[4];
  *&v30[87] = v31[5];
  *&v30[103] = v31[6];
  *&v30[7] = v31[0];
  *&v30[23] = v31[1];
  *&v30[39] = v31[2];
  v21 = v43;
  *a3 = v42;
  *(a3 + 16) = v21;
  v22 = v44;
  v23 = v45;
  v24 = *v47;
  *(a3 + 64) = v46;
  *(a3 + 80) = v24;
  *(a3 + 32) = v22;
  *(a3 + 48) = v23;
  v25 = *&v47[16];
  v26 = *&v47[32];
  v27 = *&v47[64];
  v28 = *&v47[80];
  *(a3 + 128) = *&v47[48];
  *(a3 + 144) = v27;
  *(a3 + 96) = v25;
  *(a3 + 112) = v26;
  *(a3 + 160) = v28;
  *(a3 + 168) = v10;
  *(a3 + 176) = v12;
  *(a3 + 184) = v3;
  *(a3 + 192) = v14;
  *(a3 + 200) = v16;
  *(a3 + 208) = v18;
  *(a3 + 216) = v20;
  *(a3 + 224) = 0;
  *(a3 + 289) = *&v30[64];
  *(a3 + 305) = *&v30[80];
  *(a3 + 321) = *&v30[96];
  *(a3 + 336) = *&v30[111];
  *(a3 + 225) = *v30;
  *(a3 + 241) = *&v30[16];
  result = *&v30[32];
  *(a3 + 257) = *&v30[32];
  *(a3 + 273) = *&v30[48];
  return result;
}

uint64_t sub_1003AC0BC@<X0>(char *a1@<X8>)
{
  v81 = a1;
  v2 = type metadata accessor for BorderlessButtonStyle();
  v69 = *(v2 - 8);
  __chkstk_darwin(v2);
  v66 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1000CE6B8(&qword_10191E098);
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v58 - v4;
  v5 = sub_1000CE6B8(&qword_10191E0A0);
  v68 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v58 - v6;
  v7 = sub_1000CE6B8(&qword_10191E0A8);
  v80 = *(v7 - 8);
  __chkstk_darwin(v7);
  v62 = &v58 - v8;
  v9 = sub_1000CE6B8(&qword_10191E0B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  v15 = type metadata accessor for NearbyTransitLineSectionView(0);
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  __chkstk_darwin(v15);
  v82 = v18;
  v83 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000CE6B8(&qword_10191E0B8);
  v78 = *(v19 - 8);
  v79 = v19;
  __chkstk_darwin(v19);
  v77 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = (v1 + *(v16 + 36));
  v25 = *v24;
  v26 = *(v24 + 1);
  v75 = v25;
  LOBYTE(v84) = v25;
  v76 = v26;
  v85 = v26;
  v74 = sub_1000CE6B8(&qword_10190A140);
  result = State.wrappedValue.getter();
  v28 = *(v1 + *(v16 + 28) + 16);
  v29 = *(v28 + 16);
  if (v88 == 1)
  {
    if (v29 < 3)
    {
      __break(1u);
      return result;
    }

    v29 = 3;
  }

  v72 = v7;
  v60 = v5;
  v73 = v11;
  v61 = v2;
  v84 = v28;
  v85 = v28 + 32;
  v86 = 0;
  v87 = (2 * v29) | 1;
  v58 = v1;
  v30 = v83;
  sub_1003BD4C4(v1, v83, type metadata accessor for NearbyTransitLineSectionView);
  v31 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v32 = swift_allocObject();
  v59 = v31;
  sub_1003BCE58(v30, v32 + v31, type metadata accessor for NearbyTransitLineSectionView);
  v71 = v28;
  swift_bridgeObjectRetain_n();
  sub_1000CE6B8(&qword_10191E0C0);
  sub_1000CE6B8(&qword_10191E0C8);
  sub_1000414C8(&qword_10191E0D0, &qword_10191E0C0);
  v33 = v14;
  sub_1000414C8(&qword_10191E0D8, &qword_10191E0C8);
  sub_1003BD948();
  ForEach<>.init(_:content:)();
  LOBYTE(v84) = v75;
  v85 = v76;
  State.wrappedValue.getter();
  v34 = 1;
  v35 = v23;
  if (v88 == 1)
  {
    v36 = v83;
    sub_1003BD4C4(v58, v83, type metadata accessor for NearbyTransitLineSectionView);
    v37 = v59;
    v38 = swift_allocObject();
    sub_1003BCE58(v36, v38 + v37, type metadata accessor for NearbyTransitLineSectionView);
    sub_1000CE6B8(&qword_10191E0F0);
    sub_1003BDB80();
    v39 = v63;
    Button.init(action:label:)();
    v40 = v66;
    BorderlessButtonStyle.init()();
    v41 = sub_1000414C8(&qword_10191E130, &qword_10191E098);
    v42 = sub_1003BAAF0(&unk_10191DC00, &type metadata accessor for BorderlessButtonStyle);
    v43 = v35;
    v44 = v65;
    v45 = v67;
    v46 = v61;
    View.buttonStyle<A>(_:)();
    (*(v69 + 8))(v40, v46);
    (*(v64 + 8))(v39, v45);
    v84 = v45;
    v85 = v46;
    v86 = v41;
    v87 = v42;
    swift_getOpaqueTypeConformance2();
    v47 = v62;
    v48 = v60;
    View.accessibilityIdentifier(_:)();
    v35 = v43;
    (*(v68 + 8))(v44, v48);
    sub_1000F11C4(v47, v33, &qword_10191E0A8);
    v34 = 0;
  }

  v70 = v35;
  (*(v80 + 56))(v33, v34, 1, v72);
  v50 = v78;
  v49 = v79;
  v51 = *(v78 + 16);
  v52 = v33;
  v53 = v77;
  v51(v77, v35, v79);
  v54 = v73;
  sub_1000D2DFC(v52, v73, &qword_10191E0B0);
  v55 = v81;
  v51(v81, v53, v49);
  v56 = sub_1000CE6B8(&qword_10191E0E8);
  sub_1000D2DFC(v54, &v55[*(v56 + 48)], &qword_10191E0B0);

  sub_100024F64(v52, &qword_10191E0B0);
  v57 = *(v50 + 8);
  v57(v70, v49);
  sub_100024F64(v54, &qword_10191E0B0);
  return (v57)(v53, v49);
}

uint64_t sub_1003ACA70@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a3;
  v5 = type metadata accessor for Divider();
  v99 = *(v5 - 8);
  v100 = v5;
  __chkstk_darwin(v5);
  v96 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1000CE6B8(&qword_10191E138);
  __chkstk_darwin(v94);
  v98 = &v78 - v7;
  v97 = sub_1000CE6B8(&qword_10191E140);
  __chkstk_darwin(v97);
  v83 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v95 = &v78 - v10;
  __chkstk_darwin(v11);
  v101 = &v78 - v12;
  v82 = type metadata accessor for BorderlessButtonStyle();
  v91 = *(v82 - 8);
  __chkstk_darwin(v82);
  v90 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NearbyTransitLineSectionView(0);
  v15 = v14 - 8;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1000CE6B8(&qword_10191E148);
  v84 = *(v87 - 8);
  __chkstk_darwin(v87);
  v81 = &v78 - v19;
  v20 = sub_1000CE6B8(&qword_10191E150);
  v88 = *(v20 - 8);
  v89 = v20;
  __chkstk_darwin(v20);
  v85 = &v78 - v21;
  v22 = sub_1000CE6B8(&qword_10191E158);
  __chkstk_darwin(v22 - 8);
  v93 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v92 = &v78 - v25;
  v128 = *(a1 + 10);
  v26 = a1[4];
  v126 = a1[3];
  v127 = v26;
  v27 = a1[2];
  v124 = a1[1];
  v125 = v27;
  v123 = *a1;
  v29 = *a1;
  v28 = *(a1 + 1);
  v30 = *(a2 + *(v15 + 28) + 16);
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v30 + 88 * v31;
    v33 = *(v32 - 40);
    v129 = *(v32 - 56);
    v130 = v33;
    v34 = *(v32 - 24);
    v35 = *(v32 - 8);
    v36 = *(v32 + 8);
    v134 = *(v32 + 24);
    v132 = v35;
    v133 = v36;
    v131 = v34;
    v110 = *(v32 - 56);
    v111 = *(v32 - 40);
    v37 = *(v32 - 24);
    v38 = *(v32 - 8);
    v39 = *(v32 + 8);
    v115 = *(v32 + 24);
    v113 = v38;
    v114 = v39;
    v112 = v37;
    sub_1001603D8(&v129, &v135);
    v137 = v112;
    v138 = v113;
    v139 = v114;
    v140 = v115;
    v135 = v110;
    v136 = v111;
    v40 = *(&v110 + 1);
    v31 = v110;
  }

  else
  {
    v40 = 0;
    v140 = 0;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v135 = 0u;
  }

  if (!v28)
  {
    if (!v40)
    {
      v110 = v29;
      v50 = a1[4];
      v113 = a1[3];
      v114 = v50;
      v115 = *(a1 + 10);
      v51 = a1[2];
      v111 = a1[1];
      v112 = v51;
      sub_1001603D8(&v123, &v129);
      sub_100024F64(&v110, &qword_10191DD60);
      v46 = 0.0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!v40)
  {
LABEL_10:
    *&v110 = v29;
    *(&v110 + 1) = v28;
    v47 = a1[4];
    v113 = a1[3];
    v114 = v47;
    v48 = *(a1 + 10);
    v49 = a1[2];
    v111 = a1[1];
    v112 = v49;
    v115 = v48;
    v116 = v31;
    v117 = v40;
    v122 = v140;
    v120 = v138;
    v121 = v139;
    v118 = v136;
    v119 = v137;
    sub_1001603D8(&v123, &v129);
    sub_100024F64(&v110, &qword_10191E160);
    v46 = 1.0;
    goto LABEL_12;
  }

  *&v102[0] = v31;
  *(&v102[0] + 1) = v40;
  v102[3] = v138;
  v102[4] = v139;
  v103 = v140;
  v102[1] = v136;
  v102[2] = v137;
  v115 = v140;
  v113 = v138;
  v114 = v139;
  v111 = v136;
  v112 = v137;
  v110 = v102[0];
  v41 = a1[4];
  v132 = a1[3];
  v133 = v41;
  v134 = *(a1 + 10);
  v42 = a1[2];
  v130 = a1[1];
  v131 = v42;
  *&v129 = v29;
  *(&v129 + 1) = v28;
  sub_1001603D8(&v123, &v104);
  sub_1001603D8(&v123, &v104);
  v79 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v17;
  sub_1000D2DFC(&v135, &v104, &qword_10191DD60);
  v43 = sub_1004F4808(&v129, &v110);
  sub_100024F64(v102, &qword_10191DD60);
  sub_100024F64(&v135, &qword_10191DD60);
  sub_100160434(&v123);
  *&v104 = v29;
  *(&v104 + 1) = v28;
  v44 = a1[4];
  v107 = a1[3];
  v108 = v44;
  v109 = *(a1 + 10);
  v45 = a1[1];
  v106 = a1[2];
  v105 = v45;
  v18 = v79;
  v17 = v80;
  sub_100024F64(&v104, &qword_10191DD60);
  if (v43)
  {
    v46 = 0.0;
  }

  else
  {
    v46 = 1.0;
  }

LABEL_12:
  sub_1003BD4C4(a2, v18, type metadata accessor for NearbyTransitLineSectionView);
  v52 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v53 = swift_allocObject();
  v54 = sub_1003BCE58(v18, v53 + v52, type metadata accessor for NearbyTransitLineSectionView);
  v55 = v53 + ((v17 + v52 + 7) & 0xFFFFFFFFFFFFFFF8);
  v56 = v126;
  *(v55 + 32) = v125;
  *(v55 + 48) = v56;
  *(v55 + 64) = v127;
  *(v55 + 80) = v128;
  v57 = v124;
  *v55 = v123;
  *(v55 + 16) = v57;
  __chkstk_darwin(v54);
  *(&v78 - 2) = &v123;
  sub_1001603D8(&v123, &v104);
  sub_1000CE6B8(&qword_10191E168);
  sub_1003BDD70();
  v58 = v81;
  Button.init(action:label:)();
  v59 = v90;
  BorderlessButtonStyle.init()();
  v60 = sub_1000414C8(&qword_10191E1A0, &qword_10191E148);
  v61 = sub_1003BAAF0(&unk_10191DC00, &type metadata accessor for BorderlessButtonStyle);
  v62 = v85;
  v63 = v87;
  v64 = v82;
  View.buttonStyle<A>(_:)();
  (*(v91 + 8))(v59, v64);
  (*(v84 + 8))(v58, v63);
  *&v104 = v63;
  *(&v104 + 1) = v64;
  *&v105 = v60;
  *(&v105 + 1) = v61;
  swift_getOpaqueTypeConformance2();
  v65 = v92;
  v66 = v89;
  View.accessibilityIdentifier(_:)();
  (*(v88 + 8))(v62, v66);
  v67 = v96;
  Divider.init()();
  v68 = v98;
  (*(v99 + 32))(v98, v67, v100);
  *(v68 + *(v94 + 36)) = v46;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v69 = v95;
  sub_1000F11C4(v68, v95, &qword_10191E138);
  v70 = (v69 + *(v97 + 36));
  v71 = v105;
  *v70 = v104;
  v70[1] = v71;
  v70[2] = v106;
  v72 = v101;
  sub_1000F11C4(v69, v101, &qword_10191E140);
  v73 = v93;
  sub_1000D2DFC(v65, v93, &qword_10191E158);
  v74 = v83;
  sub_1000D2DFC(v72, v83, &qword_10191E140);
  v75 = v86;
  sub_1000D2DFC(v73, v86, &qword_10191E158);
  v76 = sub_1000CE6B8(&qword_10191E1A8);
  sub_1000D2DFC(v74, v75 + *(v76 + 48), &qword_10191E140);
  sub_100024F64(v72, &qword_10191E140);
  sub_100024F64(v65, &qword_10191E158);
  sub_100024F64(v74, &qword_10191E140);
  return sub_100024F64(v73, &qword_10191E158);
}

void sub_1003AD580(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + *(type metadata accessor for NearbyTransitLineSectionView(0) + 24));
  if (v3)
  {
    v4 = OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_viewDelegate;
    swift_beginAccess();
    sub_1000D2DFC(v3 + v4, v6, &qword_10190D330);
    if (v7)
    {
      sub_10005EB40(v6, v5);
      sub_100024F64(v6, &qword_10190D330);
      sub_10005E838(v5, v5[3]);
      sub_1003CBD24(a2, 0);
      sub_10004E3D0(v5);
    }

    else
    {
      sub_100024F64(v6, &qword_10190D330);
    }

    sub_1003AB310(a2);
  }

  else
  {
    type metadata accessor for NearbyTransitDeparturesProvider();
    sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
    EnvironmentObject.error()();
    __break(1u);
  }
}

__n128 sub_1003AD6DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_10191E180);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v38 - v6;
  type metadata accessor for NearbyTransitDeparturesProvider();
  sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
  *(v7 + 12) = EnvironmentObject.init()();
  *(v7 + 13) = v8;
  v9 = type metadata accessor for NearbyTransitDepartureView(0);
  v10 = v9[6];
  *&v7[v10] = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190A1A0);
  swift_storeEnumTagMultiPayload();
  v11 = v9[7];
  *&v7[v11] = swift_getKeyPath();
  sub_1000CE6B8(&qword_10191DF80);
  swift_storeEnumTagMultiPayload();
  v12 = v9[8];
  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 userInterfaceIdiom];

  v7[v12] = v14 == 4;
  v15 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v15;
  v42 = *(a1 + 64);
  *&v43 = *(a1 + 80);
  v16 = *(a1 + 16);
  v38 = *a1;
  v39 = v16;
  sub_1001603D8(a1, v45);
  State.init(wrappedValue:)();
  v17 = v45[3];
  *(v7 + 2) = v45[2];
  *(v7 + 3) = v17;
  v18 = v45[5];
  *(v7 + 4) = v45[4];
  *(v7 + 5) = v18;
  v19 = v45[1];
  *v7 = v45[0];
  *(v7 + 1) = v19;
  LOBYTE(a1) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v7[*(sub_1000CE6B8(&qword_10191E190) + 36)];
  *v28 = a1;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  LOBYTE(a1) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v29 = &v7[*(v5 + 44)];
  *v29 = a1;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000F11C4(v7, a2, &qword_10191E180);
  v34 = a2 + *(sub_1000CE6B8(&qword_10191E168) + 36);
  v35 = v43;
  *(v34 + 64) = v42;
  *(v34 + 80) = v35;
  *(v34 + 96) = v44;
  v36 = v39;
  *v34 = v38;
  *(v34 + 16) = v36;
  result = v41;
  *(v34 + 32) = v40;
  *(v34 + 48) = result;
  return result;
}

id sub_1003ADA3C()
{
  type metadata accessor for NearbyTransitLineSectionView(0);
  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.setter();
  return [objc_opt_self() captureUserAction:220 target:44 value:0];
}

__n128 sub_1003ADAD0@<Q0>(uint64_t a1@<X8>)
{
  v26 = static VerticalAlignment.center.getter();
  sub_1003ADC9C(&v28);
  v2 = v28;
  v3 = v29;
  v4 = *(&v29 + 1);
  v5 = v30;
  v6 = BYTE8(v30);
  v37 = 1;
  v36 = v29;
  v35 = BYTE8(v30);
  v7 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v28) = 0;
  v16 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v27[55] = v31;
  *&v27[71] = v32;
  *&v27[87] = v33;
  *&v27[103] = v34;
  *&v27[7] = v28;
  *&v27[23] = v29;
  *&v27[39] = v30;
  *a1 = v26;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v2;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  *(a1 + 80) = v9;
  *(a1 + 88) = v11;
  *(a1 + 96) = v13;
  *(a1 + 104) = v15;
  *(a1 + 112) = 0;
  *(a1 + 120) = v16;
  *(a1 + 128) = v18;
  *(a1 + 136) = v20;
  *(a1 + 144) = v22;
  *(a1 + 152) = v24;
  *(a1 + 160) = 0;
  *(a1 + 225) = *&v27[64];
  *(a1 + 241) = *&v27[80];
  *(a1 + 257) = *&v27[96];
  *(a1 + 272) = *&v27[111];
  *(a1 + 161) = *v27;
  *(a1 + 177) = *&v27[16];
  result = *&v27[32];
  *(a1 + 193) = *&v27[32];
  *(a1 + 209) = *&v27[48];
  return result;
}

uint64_t sub_1003ADC9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v22._object = 0x8000000101233FA0;
  v2._countAndFlagsBits = 0x7065442065726F4DLL;
  v2._object = 0xEF73657275747261;
  v3._object = 0x8000000101233F70;
  v22._countAndFlagsBits = 0xD00000000000004DLL;
  v3._countAndFlagsBits = 0xD000000000000020;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v2, v22);
  sub_1000E5580();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Color.blue.getter();
  v9 = Text.foregroundColor(_:)();
  v11 = v10;
  v13 = v12;

  sub_1000F0A40(v4, v6, v8 & 1);

  static Font.body.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_1000F0A40(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_1001C8AFC(v14, v16, v18 & 1);

  sub_1000F0A40(v14, v16, v18 & 1);
}

uint64_t sub_1003ADE8C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v16 = *(v2 - 8);
  v17 = v2;
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&qword_10191E018);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_1000CE6B8(&qword_10191E020);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v12 = sub_1000CE6B8(&qword_10191E028);
  sub_1003AE130(v1, &v7[*(v12 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v13 = sub_1000414C8(&qword_10191E030, &qword_10191E018);
  View.accessibilityElement(children:)();
  (*(v16 + 8))(v4, v17);
  sub_100024F64(v7, &qword_10191E018);
  v19 = v5;
  v20 = v13;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1003AE130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v79 = sub_1000CE6B8(&qword_10191E038);
  __chkstk_darwin(v79);
  v67 = &v67 - v3;
  v4 = type metadata accessor for Date();
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v70 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1000CE6B8(&qword_10191E040);
  __chkstk_darwin(v73);
  v78 = &v67 - v6;
  v74 = sub_1000CE6B8(&qword_10191E048);
  __chkstk_darwin(v74);
  v69 = &v67 - v7;
  v8 = sub_1000CE6B8(&qword_10191E050);
  __chkstk_darwin(v8 - 8);
  v83 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v67 - v11;
  v82 = type metadata accessor for Divider();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  v16 = sub_1000CE6B8(&qword_10191E058);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v86 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (&v67 - v20);
  v68 = type metadata accessor for NearbyTransitLineSectionView(0);
  v22 = (a1 + *(v68 + 20));
  *&v110[9] = *(v22 + 57);
  v23 = v22[3];
  v109 = v22[2];
  *v110 = v23;
  v24 = v22[1];
  v107 = *v22;
  v108 = v24;
  v76 = v110[24];
  KeyPath = swift_getKeyPath();
  v26 = type metadata accessor for NearbyTransitLineSectionHeaderView(0);
  *(v21 + v26[5]) = KeyPath;
  sub_1000CE6B8(&qword_10190A1A0);
  swift_storeEnumTagMultiPayload();
  v27 = *v110;
  v21[2] = v109;
  v21[3] = v27;
  *(v21 + 57) = *&v110[9];
  v28 = v108;
  *v21 = v107;
  v21[1] = v28;
  v29 = v26[6];
  sub_100160488(&v107, v97);
  *(v21 + v29) = static Font.body.getter();
  v30 = v26[7];
  v31 = enum case for Font.TextStyle.body(_:);
  v32 = type metadata accessor for Font.TextStyle();
  (*(*(v32 - 8) + 104))(v21 + v30, v31, v32);
  LOBYTE(v30) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v21 + *(sub_1000CE6B8(&qword_10191E060) + 36);
  *v41 = v30;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  sub_1000CE6B8(&qword_10190F6E0);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v42 = v21;
  v43 = (v21 + *(v17 + 44));
  v44 = v88;
  *v43 = v87;
  v43[1] = v44;
  v43[2] = v89;
  v85 = v15;
  Divider.init()();
  if (v76 == 1)
  {
    v45 = v69;
    sub_1003AC0BC(v69);
    sub_1000D2DFC(v45, v78, &qword_10191E048);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10191E078, &qword_10191E048);
    sub_1003BD74C();
    v46 = v77;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v45, &qword_10191E048);
    v47 = 0;
    v48 = v46;
LABEL_7:
    v56 = sub_1000CE6B8(&qword_10191E068);
    (*(*(v56 - 8) + 56))(v48, v47, 1, v56);
    v75 = v42;
    v57 = v86;
    sub_1000D2DFC(v42, v86, &qword_10191E058);
    v59 = v80;
    v58 = v81;
    v60 = *(v80 + 16);
    v61 = v82;
    v60(v81, v85, v82);
    v62 = v83;
    sub_1000D2DFC(v48, v83, &qword_10191E050);
    v63 = v84;
    sub_1000D2DFC(v57, v84, &qword_10191E058);
    v64 = sub_1000CE6B8(&qword_10191E070);
    v60((v63 + *(v64 + 48)), v58, v61);
    sub_1000D2DFC(v62, v63 + *(v64 + 64), &qword_10191E050);
    sub_100024F64(v48, &qword_10191E050);
    v65 = *(v59 + 8);
    v65(v85, v61);
    sub_100024F64(v75, &qword_10191E058);
    sub_100024F64(v62, &qword_10191E050);
    v65(v58, v61);
    return sub_100024F64(v86, &qword_10191E058);
  }

  v49 = v78;
  v48 = v77;
  *(v106 + 9) = *(v22 + 57);
  v50 = v22[3];
  v105 = v22[2];
  v106[0] = v50;
  v51 = v22[1];
  v103 = *v22;
  v104 = v51;
  v52 = *(a1 + *(v68 + 24));
  if (v52)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v53 = v52;
    v54 = v70;
    static Published.subscript.getter();

    sub_1003FFF7C(v54, &v90);
    (*(v71 + 8))(v54, v72);
    if (v91)
    {
      v97[0] = v90;
      v97[1] = v91;
      v100 = v94;
      v101 = v95;
      v102 = v96;
      v98 = v92;
      v99 = v93;
      v55 = v67;
      sub_1003AB8A0(v97, v67);
      sub_1000D2DFC(v55, v49, &qword_10191E038);
      swift_storeEnumTagMultiPayload();
      sub_1000414C8(&qword_10191E078, &qword_10191E048);
      sub_1003BD74C();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(&v90, &qword_10191DD60);
      sub_100024F64(v55, &qword_10191E038);
      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    goto LABEL_7;
  }

  type metadata accessor for NearbyTransitDeparturesProvider();
  sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1003AEAD0@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000CE6B8(&qword_10191E4D8);
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  __chkstk_darwin(v4);
  v26 = &v26 - v6;
  v29 = static Font.body.getter();
  v7 = [objc_opt_self() labelColor];
  v8 = Color.init(uiColor:)();
  v28 = v8;
  v9 = static VerticalAlignment.center.getter();
  sub_1003AEDF4(v1, v8, &v46);
  v10 = v46;
  v11 = v47;
  v12 = *(&v47 + 1);
  v13 = v48;
  v14 = BYTE8(v48);
  v45 = 1;
  v44 = v47;
  v43 = BYTE8(v48);
  v15 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v42 = 0;
  v35 = v9;
  v36[0] = 1;
  *&v36[8] = v10;
  v36[24] = v11;
  *&v37 = v12;
  *(&v37 + 1) = v13;
  LOBYTE(v38) = v14;
  BYTE8(v38) = v15;
  *&v39 = v16;
  *(&v39 + 1) = v17;
  *&v40 = v18;
  *(&v40 + 1) = v19;
  v41 = 0;
  v20 = v27;
  static AccessibilityChildBehavior.combine.getter();
  v21 = sub_1000CE6B8(&qword_10191E118);
  v22 = sub_1003BDC98();
  v23 = v26;
  View.accessibilityElement(children:)();
  (*(v30 + 8))(v20, v31);
  v50 = v38;
  v51 = v39;
  v52 = v40;
  v53 = v41;
  v46 = v35;
  v47 = *v36;
  v48 = *&v36[16];
  v49 = v37;
  sub_100024F64(&v46, &qword_10191E118);
  *&v35 = v21;
  *(&v35 + 1) = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v32;
  View.accessibilityIdentifier(_:)();

  return (*(v33 + 8))(v23, v24);
}

uint64_t sub_1003AEDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 168);
  if (v10)
  {
    v11 = *(a1 + 48);
    v37[2] = *(a1 + 32);
    v37[3] = v11;
    v37[4] = *(a1 + 64);
    v38 = *(a1 + 80);
    v12 = *(a1 + 16);
    v37[0] = *a1;
    v37[1] = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v10;
    static Published.subscript.getter();

    sub_100402ED8(v37, v9);
    v15 = v14;
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v35 = v15;
    v36 = v17;
    sub_1000E5580();
    v18 = Text.init<A>(_:)();
    v20 = v19;
    LOBYTE(v15) = v21;
    v22 = Text.font(_:)();
    v24 = v23;
    v26 = v25;
    sub_1000F0A40(v18, v20, v15 & 1);

    v35 = a2;
    v27 = Text.foregroundStyle<A>(_:)();
    v29 = v28;
    LOBYTE(v20) = v30;
    v32 = v31;
    sub_1000F0A40(v22, v24, v26 & 1);

    *a3 = v27;
    *(a3 + 8) = v29;
    *(a3 + 16) = v20 & 1;
    *(a3 + 24) = v32;
    *(a3 + 32) = 0;
    *(a3 + 40) = 1;
    sub_1001C8AFC(v27, v29, v20 & 1);

    sub_1000F0A40(v27, v29, v20 & 1);
  }

  else
  {
    type metadata accessor for NearbyTransitDeparturesProvider();
    sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003AF0C4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_10190A1A0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NearbyTransitDepartureView(0);
  sub_1000D2DFC(v1 + *(v10 + 24), v9, &qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1003AF2CC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_10191DF80);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NearbyTransitDepartureView(0);
  sub_1000D2DFC(v1 + *(v10 + 28), v9, &qword_10191DF80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1003AF538(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[3];
  v37 = v1[2];
  v38 = v7;
  v8 = v1[5];
  v39 = v1[4];
  v40 = v8;
  v9 = v1[1];
  v35 = *v1;
  v36 = v9;
  sub_1000CE6B8(&qword_10191E468);
  State.wrappedValue.getter();
  (*(v4 + 16))(v6, a1, v3);
  v10 = v29[10];
  v11 = swift_unknownObjectRetain();
  sub_1004F5A8C(v11, v6, v10, v27);
  sub_100160434(v29);
  v12 = v1[3];
  v13 = v1[1];
  v31 = v1[2];
  v32 = v12;
  v14 = v1[3];
  v15 = v1[5];
  v33 = v1[4];
  v34 = v15;
  v16 = v1[1];
  v30[0] = *v1;
  v30[1] = v16;
  v23 = v31;
  v24 = v14;
  v17 = v1[5];
  v25 = v33;
  v26 = v17;
  v21 = v30[0];
  v22 = v13;
  v19[2] = v27[2];
  v19[3] = v27[3];
  v19[4] = v27[4];
  v20 = v28;
  v19[0] = v27[0];
  v19[1] = v27[1];
  sub_1000D2DFC(v30, &v35, &qword_10191E468);
  State.wrappedValue.setter();
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v35 = v21;
  v36 = v22;
  return sub_100024F64(&v35, &qword_10191E468);
}

id sub_1003AF728()
{
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v16[-v6];
  v8 = v0[2];
  v9 = v0[4];
  v10 = v0[5];
  v25 = v0[3];
  v26 = v9;
  v27 = v10;
  v11 = v0[1];
  v22 = *v0;
  v23 = v11;
  v24 = v8;
  sub_1000CE6B8(&qword_10191E468);
  State.wrappedValue.getter();
  v28[2] = v18;
  v28[3] = v19;
  v29 = v20;
  v30 = v21;
  v28[0] = *&v16[8];
  v28[1] = v17;
  sub_100160434(v28);
  if (!v29)
  {
    return 0;
  }

  v12 = objc_opt_self();
  sub_1003AF0C4(v7);
  (*(v2 + 104))(v4, enum case for ColorScheme.dark(_:), v1);
  v13 = static ColorScheme.== infix(_:_:)();
  v14 = *(v2 + 8);
  v14(v4, v1);
  v14(v7, v1);
  result = [v12 _mapkit_liveTransitIndicatorImageUsingDarkMode:v13 & 1];
  if (result)
  {
    return Image.init(uiImage:)();
  }

  return result;
}

uint64_t sub_1003AF930@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v144 = a1;
  v3 = type metadata accessor for NearbyTransitDepartureView(0);
  v135 = *(v3 - 8);
  __chkstk_darwin(v3);
  v136 = v4;
  v137 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1000CE6B8(&qword_10191E428);
  __chkstk_darwin(v132);
  v134 = (&v116 - v5);
  v143 = sub_1000CE6B8(&qword_10191E430);
  __chkstk_darwin(v143);
  v133 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v139 = &v116 - v8;
  v130 = sub_1000CE6B8(&qword_10191E438);
  __chkstk_darwin(v130);
  v138 = (&v116 - v9);
  v10 = sub_1000CE6B8(&qword_10191E440);
  __chkstk_darwin(v10 - 8);
  v127 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v126 = &v116 - v13;
  v14 = sub_1000CE6B8(&qword_10191E448);
  v123 = *(v14 - 8);
  v124 = v14;
  __chkstk_darwin(v14);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v140 = &v116 - v18;
  v19 = sub_1000CE6B8(&qword_10191E450);
  __chkstk_darwin(v19 - 8);
  v147 = &v116 - v20;
  v141 = sub_1000CE6B8(&qword_10191E458);
  __chkstk_darwin(v141);
  v142 = &v116 - v21;
  v22 = type metadata accessor for DynamicTypeSize();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v116 - v27;
  sub_1003AF2CC(&v116 - v27);
  (*(v23 + 104))(v25, enum case for DynamicTypeSize.accessibility1(_:), v22);
  sub_1003BAAF0(&qword_10191E460, &type metadata accessor for DynamicTypeSize);
  v29 = dispatch thunk of static Comparable.< infix(_:_:)();
  v30 = *(v23 + 8);
  v30(v25, v22);
  v30(v28, v22);
  v31 = static Font.body.getter();
  v32 = static Font.subheadline.getter();
  v33 = objc_opt_self();
  v34 = [v33 labelColor];
  v35 = Color.init(uiColor:)();
  v36 = [v33 secondaryLabelColor];
  v145 = Color.init(uiColor:)();
  v146 = static Font.body.getter();
  v37 = [v33 labelColor];
  v38 = Color.init(uiColor:)();
  v125 = v16;
  if (v29)
  {
    v39 = static HorizontalAlignment.trailing.getter();
  }

  else
  {
    v39 = static HorizontalAlignment.leading.getter();
  }

  v122 = v39;
  v40 = static Font.subheadline.getter();
  v41 = v147;
  if (*(v2 + *(v3 + 32)) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10191E498, &qword_10191E430);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v128 = v40;
    v129 = v38;
    v121 = v32;
    v118 = v29 ^ 1;
    *v41 = static HorizontalAlignment.leading.getter();
    *(v41 + 8) = 0;
    *(v41 + 16) = 1;
    v43 = v2[3];
    v150 = v2[2];
    v151 = v43;
    v44 = v2[5];
    v152 = v2[4];
    v153 = v44;
    v45 = v2[1];
    v148 = *v2;
    v149 = v45;
    v117 = sub_1000CE6B8(&qword_10191E468);
    State.wrappedValue.getter();
    v47 = v154[4];
    v46 = v154[5];

    sub_100160434(v154);
    *&v148 = v47;
    *(&v148 + 1) = v46;
    v116 = sub_1000E5580();
    v48 = Text.init<A>(_:)();
    v50 = v49;
    v131 = v2;
    v51 = v35;
    v53 = v52;
    v120 = v31;
    v54 = Text.font(_:)();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_1000F0A40(v48, v50, v53 & 1);

    KeyPath = swift_getKeyPath();
    *&v148 = v54;
    *(&v148 + 1) = v56;
    v58 &= 1u;
    LOBYTE(v149) = v58;
    *(&v149 + 1) = v60;
    *&v150 = KeyPath;
    BYTE8(v150) = 0;
    *&v151 = v51;

    sub_1000CE6B8(&qword_10191E470);
    v62 = sub_1003BEAA4();
    View.accessibilityIdentifier(_:)();
    sub_1000F0A40(v54, v56, v58);
    v119 = v51;
    v63 = v131;

    v64 = v63[3];
    v150 = v63[2];
    v151 = v64;
    v65 = v63[5];
    v152 = v63[4];
    v153 = v65;
    v66 = v63[1];
    v148 = *v63;
    v149 = v66;
    State.wrappedValue.getter();
    v68 = v156;
    v67 = v157;

    sub_100160434(v155);
    if (v67)
    {
      *&v148 = v68;
      *(&v148 + 1) = v67;
      v69 = Text.init<A>(_:)();
      v71 = v70;
      v73 = v72;
      v74 = Text.font(_:)();
      v117 = v62;
      v76 = v75;
      v78 = v77;
      v80 = v79;
      sub_1000F0A40(v69, v71, v73 & 1);

      v81 = swift_getKeyPath();
      *&v148 = v74;
      *(&v148 + 1) = v76;
      v78 &= 1u;
      LOBYTE(v149) = v78;
      *(&v149 + 1) = v80;
      *&v150 = v81;
      BYTE8(v150) = 0;
      *&v151 = v145;

      v82 = v125;
      View.accessibilityIdentifier(_:)();
      v83 = v74;
      v84 = v82;
      sub_1000F0A40(v83, v76, v78);

      v85 = v126;
      sub_1000F11C4(v82, v126, &qword_10191E448);
      v86 = 0;
    }

    else
    {
      v86 = 1;
      v84 = v125;
      v85 = v126;
    }

    (*(v123 + 56))(v85, v86, 1, v124);
    v87 = sub_1000CE6B8(&qword_10191E480);
    v88 = v147 + *(v87 + 44);
    v89 = v140;
    sub_1000D2DFC(v140, v84, &qword_10191E448);
    v90 = v127;
    sub_1000D2DFC(v85, v127, &qword_10191E440);
    sub_1000D2DFC(v84, v88, &qword_10191E448);
    v91 = sub_1000CE6B8(&unk_10191E488);
    sub_1000D2DFC(v90, v88 + *(v91 + 48), &qword_10191E440);
    sub_100024F64(v85, &qword_10191E440);
    sub_100024F64(v89, &qword_10191E448);
    sub_100024F64(v90, &qword_10191E440);
    sub_100024F64(v84, &qword_10191E448);
    v92 = static VerticalAlignment.center.getter();
    v93 = swift_getKeyPath();
    v94 = v138;
    *v138 = v93;
    sub_1000CE6B8(&qword_10191DF80);
    swift_storeEnumTagMultiPayload();
    v95 = v130;
    v96 = v131;
    sub_1003B0748(v131, v129, v128, v94 + *(v130 + 36));
    *(v94 + v95[12]) = v92;
    v97 = v94 + v95[13];
    *v97 = 0;
    *(v97 + 8) = 0;
    *(v94 + v95[10]) = v122;
    v98 = v94 + v95[11];
    *v98 = 0;
    *(v98 + 8) = 1;
    *(v94 + v95[14]) = 1;
    v99 = static VerticalAlignment.firstTextBaseline.getter();
    v100 = static HorizontalAlignment.leading.getter();
    v101 = swift_getKeyPath();
    v102 = v134;
    *v134 = v101;
    swift_storeEnumTagMultiPayload();
    v103 = v132;
    v104 = v118 & 1;
    sub_1003B0F00(v147, v118 & 1, v94, v102 + *(v132 + 36));
    *(v102 + v103[12]) = v99;
    v105 = v102 + v103[13];
    *v105 = 0;
    *(v105 + 8) = 1;
    *(v102 + v103[10]) = v100;
    v106 = v102 + v103[11];
    *v106 = 0;
    *(v106 + 8) = 1;
    *(v102 + v103[14]) = v104;
    v107 = *(v96 + 12);
    if (v107)
    {
      swift_beginAccess();
      v108 = v143;
      v109 = v107;
      sub_1000CE6B8(&qword_10190D320);
      v110 = v133;
      Published.projectedValue.getter();
      swift_endAccess();

      v111 = v137;
      sub_1003BD4C4(v96, v137, type metadata accessor for NearbyTransitDepartureView);
      v112 = (*(v135 + 80) + 16) & ~*(v135 + 80);
      v113 = swift_allocObject();
      sub_1003BCE58(v111, v113 + v112, type metadata accessor for NearbyTransitDepartureView);
      sub_1000F11C4(v102, v110, &qword_10191E428);
      v114 = (v110 + *(v108 + 56));
      *v114 = sub_1003BEB5C;
      v114[1] = v113;
      v115 = v139;
      sub_1000F11C4(v110, v139, &qword_10191E430);
      sub_1000D2DFC(v115, v142, &qword_10191E430);
      swift_storeEnumTagMultiPayload();
      sub_1000414C8(&qword_10191E498, &qword_10191E430);
      _ConditionalContent<>.init(storage:)();

      sub_100024F64(v115, &qword_10191E430);
      sub_100024F64(v94, &qword_10191E438);
      return sub_100024F64(v147, &qword_10191E450);
    }

    else
    {
      type metadata accessor for NearbyTransitDeparturesProvider();
      sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  return result;
}

id sub_1003B0748@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v85[2] = a3;
  v86 = a2;
  v96 = a4;
  v5 = sub_1000CE6B8(&qword_10191E4B0);
  __chkstk_darwin(v5 - 8);
  v95 = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v94 = v85 - v8;
  v9 = sub_1000CE6B8(&qword_10191DF90);
  v91 = *(v9 - 8);
  v92 = v9;
  __chkstk_darwin(v9);
  v90 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v87 = v85 - v12;
  v89 = sub_1000CE6B8(&qword_10191E4B8);
  __chkstk_darwin(v89);
  v93 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v85 - v15;
  v17 = a1[2];
  v18 = a1[4];
  v19 = a1[5];
  v108 = a1[3];
  v109 = v18;
  v110 = v19;
  v20 = a1[1];
  v105 = *a1;
  v106 = v20;
  v107 = v17;
  v21 = sub_1000CE6B8(&qword_10191E468);
  State.wrappedValue.getter();
  v22 = v111[0];
  v23 = v111[1];

  sub_100160434(v111);
  v24 = a1[2];
  v25 = a1[4];
  v26 = a1[5];
  v108 = a1[3];
  v109 = v25;
  v110 = v26;
  v27 = a1[1];
  v105 = *a1;
  v106 = v27;
  v107 = v24;
  v88 = v21;
  State.wrappedValue.getter();
  v112[2] = v101;
  v112[3] = v102;
  v112[4] = v103;
  v113 = v104;
  v112[0] = v99;
  v112[1] = v100;
  sub_100160434(v112);
  result = MKTransitLiveDepartureColorForLiveStatus();
  if (result)
  {
    v98 = Color.init(uiColor:)();
    *v16 = static VerticalAlignment.center.getter();
    *(v16 + 1) = 0x4014000000000000;
    v97 = v16;
    v16[16] = 0;
    *&v105 = v22;
    *(&v105 + 1) = v23;
    v29 = sub_1000E5580();
    v85[3] = v23;

    v85[1] = v29;
    v30 = Text.init<A>(_:)();
    v32 = v31;
    v34 = v33;
    v35 = Text.font(_:)();
    v37 = v36;
    v39 = v38;
    sub_1000F0A40(v30, v32, v34 & 1);

    *&v105 = v86;
    v40 = Text.foregroundStyle<A>(_:)();
    v42 = v41;
    LOBYTE(v30) = v43;
    v45 = v44;
    sub_1000F0A40(v35, v37, v39 & 1);

    *&v105 = v40;
    *(&v105 + 1) = v42;
    LOBYTE(v106) = v30 & 1;
    *(&v106 + 1) = v45;
    v46 = v87;
    View.accessibilityIdentifier(_:)();
    sub_1000F0A40(v40, v42, v30 & 1);

    v47 = sub_1003AF728();
    if (v47)
    {
      v48 = v98;
      swift_retain_n();
    }

    else
    {
      v48 = 0;
    }

    v49 = v90;
    v50 = sub_1000CE6B8(&qword_10191E4C0);
    v51 = v97;
    v52 = &v97[*(v50 + 44)];
    sub_1000D2DFC(v46, v49, &qword_10191DF90);
    sub_1000D2DFC(v49, v52, &qword_10191DF90);
    v53 = (v52 + *(sub_1000CE6B8(&qword_10191E4C8) + 48));
    sub_1003BEBC0(v47);

    sub_1003BEC00(v54);
    *v53 = v47;
    v53[1] = v48;
    sub_100024F64(v46, &qword_10191DF90);
    sub_1003BEC00(v47);
    sub_100024F64(v49, &qword_10191DF90);

    v55 = *(v89 + 36);
    v56 = a1[2];
    v57 = a1[4];
    v58 = a1[5];
    v108 = a1[3];
    v109 = v57;
    v110 = v58;
    v59 = a1[1];
    v105 = *a1;
    *(v51 + v55) = 0x3FF0000000000000;
    v106 = v59;
    v107 = v56;
    State.wrappedValue.getter();
    v60 = v100;

    sub_100160434(&v99);
    if (*(&v60 + 1))
    {
      v105 = v60;
      v61 = Text.init<A>(_:)();
      v63 = v62;
      v65 = v64;
      *&v105 = v98;
      v66 = Text.foregroundStyle<A>(_:)();
      v67 = v49;
      v69 = v68;
      v71 = v70;
      sub_1000F0A40(v61, v63, v65 & 1);

      v72 = Text.font(_:)();
      v74 = v73;
      LOBYTE(v61) = v75;
      v77 = v76;
      sub_1000F0A40(v66, v69, v71 & 1);

      *&v105 = v72;
      *(&v105 + 1) = v74;
      LOBYTE(v106) = v61 & 1;
      *(&v106 + 1) = v77;
      View.accessibilityIdentifier(_:)();
      sub_1000F0A40(v72, v74, v61 & 1);

      v78 = v94;
      sub_1000F11C4(v67, v94, &qword_10191DF90);
      v79 = 0;
    }

    else
    {
      v79 = 1;
      v78 = v94;
    }

    (*(v91 + 56))(v78, v79, 1, v92);
    v80 = v97;
    v81 = v93;
    sub_1000D2DFC(v97, v93, &qword_10191E4B8);
    v82 = v95;
    sub_1000D2DFC(v78, v95, &qword_10191E4B0);
    v83 = v96;
    sub_1000D2DFC(v81, v96, &qword_10191E4B8);
    v84 = sub_1000CE6B8(&qword_10191E4D0);
    sub_1000D2DFC(v82, v83 + *(v84 + 48), &qword_10191E4B0);

    sub_100024F64(v78, &qword_10191E4B0);
    sub_100024F64(v80, &qword_10191E4B8);
    sub_100024F64(v82, &qword_10191E4B0);
    return sub_100024F64(v81, &qword_10191E4B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003B0F00@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000CE6B8(&qword_10191E438);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000CE6B8(&qword_10191E4A0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  sub_1000D2DFC(a1, &v21 - v16, &qword_10191E450);
  *&v17[*(v12 + 44)] = 256;
  sub_1000D2DFC(v17, v14, &qword_10191E4A0);
  sub_1000D2DFC(a3, v10, &qword_10191E438);
  sub_1000D2DFC(v14, a4, &qword_10191E4A0);
  v18 = sub_1000CE6B8(&qword_10191E4A8);
  v19 = a4 + *(v18 + 48);
  *v19 = 0;
  *(v19 + 8) = a2 ^ 1;
  *(v19 + 9) = a2;
  sub_1000D2DFC(v10, a4 + *(v18 + 64), &qword_10191E438);
  sub_100024F64(v17, &qword_10191E4A0);
  sub_100024F64(v10, &qword_10191E438);
  return sub_100024F64(v14, &qword_10191E4A0);
}

uint64_t sub_1003B1100@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&qword_10190A1A0);
  v10 = __chkstk_darwin(v9);
  v12 = &v17 - v11;
  v13 = a1(0, v10);
  sub_1000D2DFC(v2 + *(v13 + 20), v12, &qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorScheme();
    return (*(*(v14 - 8) + 32))(a2, v12, v14);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1003B1314@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52[1] = a1;
  v52[0] = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v52[0] - 8);
  __chkstk_darwin(v52[0]);
  v5 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_10191E558);
  __chkstk_darwin(v6);
  v8 = v52 - v7;
  v9 = sub_1000CE6B8(&qword_10191E560);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v52 - v11;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0x4008000000000000;
  v8[16] = 0;
  v13 = sub_1000CE6B8(&qword_10191E568);
  sub_1003B1790(v2, &v8[*(v13 + 44)]);
  v14 = objc_opt_self();
  v15 = [v14 secondaryLabelColor];
  v16 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v53 = v16;
  v18 = AnyShapeStyle.init<A>(_:)();
  v19 = &v8[*(sub_1000CE6B8(&qword_10191E570) + 36)];
  *v19 = KeyPath;
  v19[1] = v18;
  LOBYTE(v18) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v8[*(sub_1000CE6B8(&qword_10191E578) + 36)];
  *v28 = v18;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  LOBYTE(v18) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v8[*(sub_1000CE6B8(&qword_10191E580) + 36)];
  *v37 = v18;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = [v14 tertiarySystemFillColor];
  v39 = Color.init(uiColor:)();
  LOBYTE(KeyPath) = static Edge.Set.all.getter();
  v40 = &v8[*(sub_1000CE6B8(&qword_10191E588) + 36)];
  *v40 = v39;
  v40[8] = KeyPath;
  v41 = &v8[*(v6 + 36)];
  v42 = *(type metadata accessor for RoundedRectangle() + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = type metadata accessor for RoundedCornerStyle();
  (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
  __asm { FMOV            V0.2D, #12.0 }

  *v41 = _Q0;
  *&v41[*(sub_1000CE6B8(&qword_10191E590) + 36)] = 256;
  static AccessibilityChildBehavior.combine.getter();
  v50 = sub_1003BEC40();
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v52[0]);
  sub_100024F64(v8, &qword_10191E558);
  v53 = v6;
  v54 = v50;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v10 + 8))(v12, v9);
}

id sub_1003B1790@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v66 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Image.ResizingMode();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin(v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_10191E5D8);
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v70 = &v63 - v9;
  v10 = sub_1000CE6B8(&qword_10191E5E0);
  v74 = *(v10 - 8);
  v75 = v10;
  __chkstk_darwin(v10);
  v69 = &v63 - v11;
  v12 = sub_1000CE6B8(&qword_10191E5E8);
  __chkstk_darwin(v12 - 8);
  v77 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v76 = &v63 - v15;
  v16 = type metadata accessor for ColorScheme();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  v23 = [objc_allocWithZone(MKTransitShield) initWithShieldType:210002 text:0 color:0];
  result = [objc_allocWithZone(MKTransitArtwork) initWithShield:v23 accessibilityText:0];
  if (result)
  {
    v25 = result;

    sub_1003B1100(type metadata accessor for NearbyTransitWalkingPillView, v22);
    (*(v17 + 104))(v19, enum case for ColorScheme.dark(_:), v16);
    v26 = static ColorScheme.== infix(_:_:)();
    v27 = *(v17 + 8);
    v27(v19, v16);
    v27(v22, v16);
    v28 = objc_opt_self();
    v29 = v25;
    v30 = [v28 mainScreen];
    [v30 scale];
    v32 = v31;

    v33 = [objc_opt_self() sharedInstance];
    v34 = [v33 imageForArtwork:v29 size:6 featureType:2 scale:v26 & 1 nightMode:v32];
    v73 = v29;

    if (v34)
    {
      v63 = [v34 imageWithRenderingMode:2];
      Image.init(uiImage:)();
      v36 = v64;
      v35 = v65;
      (*(v64 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v65);
      v37 = Image.resizable(capInsets:resizingMode:)();

      (*(v36 + 8))(v7, v35);
      type metadata accessor for NearbyTransitWalkingPillView(0);
      sub_1000CE6B8(&qword_10191DA40);
      v38 = a1;
      ScaledMetric.wrappedValue.getter();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v83[38] = v88;
      *&v83[6] = v86;
      *&v83[22] = v87;
      *&v82[2] = *v83;
      LOBYTE(v79) = 1;
      v81 = v37;
      *v82 = 1;
      *&v82[18] = *&v83[16];
      *&v82[34] = *&v83[32];
      *&v82[48] = *(&v88 + 1);
      v39 = v66;
      static AccessibilityChildBehavior.ignore.getter();
      v40 = sub_1000CE6B8(&qword_101910498);
      v41 = sub_1001CA1F8();
      v42 = v70;
      View.accessibilityElement(children:)();
      (*(v67 + 8))(v39, v68);
      v84[2] = *&v82[16];
      v84[3] = *&v82[32];
      v85 = *&v82[48];
      v84[0] = v81;
      v84[1] = *v82;
      sub_100024F64(v84, &qword_101910498);
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v89._object = 0x8000000101234120;
      v43._object = 0x8000000101234100;
      v89._countAndFlagsBits = 0xD000000000000034;
      v43._countAndFlagsBits = 0xD000000000000015;
      v44._countAndFlagsBits = 1802264919;
      v44._object = 0xE400000000000000;
      v81 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, qword_1019600D8, v44, v89);
      v79 = v40;
      v80 = v41;
      swift_getOpaqueTypeConformance2();
      sub_1000E5580();
      v45 = v69;
      v46 = v72;
      View.accessibilityLabel<A>(_:)();

      (*(v71 + 8))(v42, v46);
      v47 = v76;
      sub_1000F11C4(v45, v76, &qword_10191E5E0);
      (*(v74 + 56))(v47, 0, 1, v75);
    }

    else
    {
      v38 = a1;
      v47 = v76;
      (*(v74 + 56))(v76, 1, 1, v75);
    }

    v48 = v38[1];
    *&v84[0] = *v38;
    *(&v84[0] + 1) = v48;
    sub_1000E5580();

    v49 = Text.init<A>(_:)();
    v51 = v50;
    v53 = v52;
    static Font.caption.getter();
    v54 = Text.font(_:)();
    v56 = v55;
    LODWORD(v76) = v57;
    v59 = v58;

    sub_1000F0A40(v49, v51, v53 & 1);

    v60 = v77;
    sub_1000D2DFC(v47, v77, &qword_10191E5E8);
    v61 = v78;
    sub_1000D2DFC(v60, v78, &qword_10191E5E8);
    v62 = v61 + *(sub_1000CE6B8(&qword_10191E5F0) + 48);
    LOBYTE(v61) = v76 & 1;
    sub_1001C8AFC(v54, v56, v76 & 1);

    *v62 = v54;
    *(v62 + 8) = v56;
    *(v62 + 16) = v61;
    *(v62 + 24) = v59;
    sub_100024F64(v47, &qword_10191E5E8);
    sub_1000F0A40(v54, v56, v61);

    return sub_100024F64(v60, &qword_10191E5E8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003B2100@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[1] = a1;
  v19[0] = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v19[0] - 8);
  __chkstk_darwin(v19[0]);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_10191E1E8);
  __chkstk_darwin(v6);
  v8 = (v19 - v7);
  v9 = sub_1000CE6B8(&qword_10191E1F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - v11;
  v13 = static HorizontalAlignment.leading.getter();
  v14 = static VerticalAlignment.center.getter();
  *v8 = swift_getKeyPath();
  sub_1000CE6B8(&qword_10191DF80);
  swift_storeEnumTagMultiPayload();
  sub_1003B2414(v2, v8 + v6[9]);
  *(v8 + v6[12]) = v14;
  v15 = v8 + v6[13];
  *v15 = 0x4020000000000000;
  v15[8] = 0;
  *(v8 + v6[10]) = v13;
  v16 = v8 + v6[11];
  *v16 = 0;
  v16[8] = 1;
  *(v8 + v6[14]) = 0;
  static AccessibilityChildBehavior.combine.getter();
  v17 = sub_1000414C8(&qword_10191E1F8, &qword_10191E1E8);
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v19[0]);
  sub_100024F64(v8, &qword_10191E1E8);
  v19[2] = v6;
  v19[3] = v17;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1003B2414@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_1000CE6B8(&qword_10191E200);
  v4 = *(v3 - 8);
  v59 = v3;
  v60 = v4;
  __chkstk_darwin(v3);
  v6 = (&v55 - v5);
  v7 = sub_1000CE6B8(&qword_10191E208);
  __chkstk_darwin(v7 - 8);
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v55 - v10;
  v11 = sub_1000CE6B8(&qword_10191DF90);
  __chkstk_darwin(v11 - 8);
  v61 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v57 = &v55 - v14;
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[3];
  v55 = a1[2];
  v56 = v17;
  v64 = v15;
  v65 = v16;
  sub_1000E5580();

  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.title3.getter();
  v23 = Text.font(_:)();
  v25 = v24;
  v27 = v26;

  sub_1000F0A40(v18, v20, v22 & 1);

  static Font.Weight.semibold.getter();
  v28 = Text.fontWeight(_:)();
  v30 = v29;
  v32 = v31;
  sub_1000F0A40(v23, v25, v27 & 1);

  v33 = [objc_opt_self() labelColor];
  v64 = Color.init(uiColor:)();
  v34 = Text.foregroundStyle<A>(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v32 & 1;
  v42 = v28;
  v43 = v56;
  v44 = v57;
  sub_1000F0A40(v42, v30, v41);

  v64 = v34;
  v65 = v36;
  v66 = v38 & 1;
  v67 = v40;
  View.accessibilityIdentifier(_:)();
  sub_1000F0A40(v34, v36, v38 & 1);

  if (v43)
  {
    KeyPath = swift_getKeyPath();
    *(v6 + *(type metadata accessor for NearbyTransitWalkingPillView(0) + 20)) = KeyPath;
    sub_1000CE6B8(&qword_10190A1A0);
    swift_storeEnumTagMultiPayload();
    *v6 = v55;
    v6[1] = v43;
    v64 = 0x402C000000000000;
    sub_1001C4D24();

    ScaledMetric.init(wrappedValue:)();
    v47 = v58;
    v46 = v59;
    *(v6 + *(v59 + 36)) = 0x3FF0000000000000;
    sub_1000F11C4(v6, v47, &qword_10191E200);
    v48 = 0;
    v49 = v46;
  }

  else
  {
    v48 = 1;
    v47 = v58;
    v49 = v59;
  }

  (*(v60 + 56))(v47, v48, 1, v49);
  v50 = v61;
  sub_1000D2DFC(v44, v61, &qword_10191DF90);
  v51 = v62;
  sub_1000D2DFC(v47, v62, &qword_10191E208);
  v52 = v63;
  sub_1000D2DFC(v50, v63, &qword_10191DF90);
  v53 = sub_1000CE6B8(&unk_10191E210);
  sub_1000D2DFC(v51, v52 + *(v53 + 48), &qword_10191E208);
  sub_100024F64(v47, &qword_10191E208);
  sub_100024F64(v44, &qword_10191DF90);
  sub_100024F64(v51, &qword_10191E208);
  return sub_100024F64(v50, &qword_10191DF90);
}

id sub_1003B298C()
{
  v0 = objc_allocWithZone(TransitItemIncidentCollectionViewCell);

  return [v0 init];
}

id sub_1003B29C4(void *a1)
{
  sub_1000CE6B8(&unk_10190A7F0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = Date._bridgeToObjectiveC()().super.isa;
  [a1 configureWithIncidents:isa referenceDate:v3];

  return [a1 invalidateIntrinsicContentSize];
}

uint64_t sub_1003B2A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003BAAF0(&qword_10191E1E0, type metadata accessor for NearbyTransitGroupIncidentsView);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003B2AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003BAAF0(&qword_10191E1E0, type metadata accessor for NearbyTransitGroupIncidentsView);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003B2B8C()
{
  sub_1003BAAF0(&qword_10191E1E0, type metadata accessor for NearbyTransitGroupIncidentsView);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1003B2BE4()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v4._object = 0x8000000101233DD0;
  v0._object = 0x8000000101233DB0;
  v4._countAndFlagsBits = 0xD00000000000004BLL;
  v0._countAndFlagsBits = 0xD000000000000014;
  v1._countAndFlagsBits = 7235920;
  v1._object = 0xE300000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v0, 0, qword_1019600D8, v1, v4);
  result = v3._countAndFlagsBits;
  xmmword_1019601D8 = v3;
  return result;
}

uint64_t sub_1003B2C94()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v4._object = 0x8000000101233D50;
  v0._countAndFlagsBits = 0x702065766F6D6552;
  v1._object = 0x8000000101233D30;
  v4._countAndFlagsBits = 0xD000000000000055;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0xEA00000000006E69;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v0, v4);
  result = v3._countAndFlagsBits;
  xmmword_1019601E8 = v3;
  return result;
}

uint64_t sub_1003B2D50()
{
  v1 = type metadata accessor for NearbyTransitGroupView(0);
  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.getter();
  if (v3 == 1 && *(*(v0 + *(v1 + 20) + 32) + 16) >= 3uLL)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003B2E18@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NearbyTransitGroupView(0);
  v4 = *(v1 + *(v3 + 20) + 32);
  v5 = (v1 + *(v3 + 36));
  v6 = *v5;
  v7 = *(v5 + 1);
  LOBYTE(v24) = v6;
  *(&v24 + 1) = v7;

  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.getter();
  if (v23[0])
  {
    v8 = 2;
  }

  else
  {
    v8 = *(v4 + 16);
  }

  result = sub_1000D6898(v8, v4);
  if (v11 == v12 >> 1)
  {
    result = swift_unknownObjectRelease();
  }

  else
  {
    if (v11 >= (v12 >> 1))
    {
      __break(1u);
      return result;
    }

    v13 = *(v10 + 80 * v11 + 16);

    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (*(v13 + 16))
    {
      v14 = *(v13 + 80);
      v26 = *(v13 + 64);
      v15 = *(v13 + 96);
      v27 = v14;
      v28 = v15;
      v29 = *(v13 + 112);
      v16 = *(v13 + 48);
      v24 = *(v13 + 32);
      v25 = v16;
      sub_1001603D8(&v24, v23);

      v17 = v29;
      if ((v29 | 4) != 4)
      {
        v18 = v24;
        v19 = v25;
        v20 = v26;
        v21 = v27;
        v22 = v28;
        goto LABEL_13;
      }

      result = sub_100160434(&v24);
    }

    else
    {
    }
  }

  v17 = 0;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
  v22 = 0uLL;
LABEL_13:
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  *(a1 + 48) = v21;
  *(a1 + 64) = v22;
  *(a1 + 80) = v17;
  return result;
}

uint64_t sub_1003B2FD4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NearbyTransitGroupView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_10191DD30);
  v10.n128_f64[0] = __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = *(v1 + *(v4 + 28) + 40);
  if (v13 >> 62)
  {
    v22 = v9;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    v9 = v22;
    if (v19 >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v22 = v9;
    sub_1003BD4C4(v1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NearbyTransitGroupView);
    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    v17 = sub_1003BCE58(v7, v16 + v14, type metadata accessor for NearbyTransitGroupView);
    *(v16 + v15) = v13;
    __chkstk_darwin(v17);
    *(&v21 - 2) = v13;
    *(&v21 - 1) = v1;
    type metadata accessor for NearbyTransitGroupIncidentsView(0);
    sub_1003BAAF0(&unk_10191DD68, type metadata accessor for NearbyTransitGroupIncidentsView);

    Button.init(action:label:)();
    (*(v22 + 32))(a1, v12, v8);
    return (*(v22 + 56))(a1, 0, 1, v8);
  }

  v20 = *(v9 + 56);

  return v20(a1, 1, 1, v8, v10);
}

uint64_t sub_1003B3314(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for NearbyTransitGroupView(0) + 28));
  if (v1)
  {
    v2 = OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_viewDelegate;
    swift_beginAccess();
    sub_1000D2DFC(v1 + v2, v5, &qword_10190D330);
    if (v6)
    {
      sub_10005EB40(v5, v4);
      sub_100024F64(v5, &qword_10190D330);
      sub_10005E838(v4, v4[3]);
      type metadata accessor for NearbyTransitViewController();
      sub_1003CC234();
      return sub_10004E3D0(v4);
    }

    else
    {
      return sub_100024F64(v5, &qword_10190D330);
    }
  }

  else
  {
    type metadata accessor for NearbyTransitDeparturesProvider();
    sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003B3490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NearbyTransitGroupIncidentsView(0);
  __chkstk_darwin(v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + *(type metadata accessor for NearbyTransitGroupView(0) + 28));
  if (v9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    static Published.subscript.getter();

    *v8 = a1;
    sub_1003BCE58(v8, a3, type metadata accessor for NearbyTransitGroupIncidentsView);
  }

  else
  {
    type metadata accessor for NearbyTransitDeparturesProvider();
    sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

id sub_1003B3610()
{
  type metadata accessor for NearbyTransitGroupView(0);
  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.setter();
  return [objc_opt_self() captureUserAction:237 target:44 value:0];
}

__n128 sub_1003B36A4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1000CE6B8(&qword_10191DC38);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = (v34 - v12);
  KeyPath = swift_getKeyPath();
  v15 = type metadata accessor for NearbyTransitCollapsedLinesView(0);
  *(v13 + *(v15 + 20)) = KeyPath;
  sub_1000CE6B8(&qword_10190A1A0);
  swift_storeEnumTagMultiPayload();
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  *(v13 + *(v15 + 24)) = 0x4010000000000000;
  swift_unknownObjectRetain();
  Text.Measurements.init()();
  LOBYTE(v15) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v13 + *(sub_1000CE6B8(&qword_10191DC48) + 36);
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  LOBYTE(v15) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v25 = v13 + *(v11 + 44);
  *v25 = v15;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000F11C4(v13, a5, &qword_10191DC38);
  v30 = a5 + *(sub_1000CE6B8(&qword_10191DC20) + 36);
  v31 = v34[5];
  *(v30 + 64) = v34[4];
  *(v30 + 80) = v31;
  *(v30 + 96) = v34[6];
  v32 = v34[1];
  *v30 = v34[0];
  *(v30 + 16) = v32;
  result = v34[3];
  *(v30 + 32) = v34[2];
  *(v30 + 48) = result;
  return result;
}

uint64_t sub_1003B38E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 32);
  v91 = *(a1 + 16);
  v92 = v7;
  v93[0] = *(a1 + 48);
  *(v93 + 9) = *(a1 + 57);
  v8 = sub_1000CE6B8(&qword_10191DCC0);
  __chkstk_darwin(v8 - 8);
  v60 = &v53 - v9;
  v62 = type metadata accessor for NearbyTransitLineSectionView(0);
  __chkstk_darwin(v62);
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000CE6B8(&qword_10191DC70);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v64 = &v53 - v13;
  v63 = sub_1000CE6B8(&qword_10191DCC8);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v53 - v14;
  v59 = *(a1 + 32);
  if (v59)
  {
    if (qword_1019067F0 != -1)
    {
      swift_once();
    }

    v74 = xmmword_1019601E8;
    sub_1000E5580();
  }

  else
  {
    if (qword_1019067E8 != -1)
    {
      swift_once();
    }

    v74 = xmmword_1019601D8;
    sub_1000E5580();
  }

  Label<>.init<A>(_:systemImage:)();
  v15 = type metadata accessor for NearbyTransitGroupView(0);
  v16 = *(v2 + *(v15 + 20) + 32);
  v17 = (v2 + *(v15 + 36));
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v74) = v18;
  *(&v74 + 1) = v19;

  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.getter();
  if (v87)
  {
    v20 = 2;
  }

  else
  {
    v20 = *(v16 + 16);
  }

  result = sub_1000D6898(v20, v16);
  if (v23 == v24 >> 1)
  {
    swift_unknownObjectRelease();
    v25 = 0;
    v26 = 0;
    v85 = 0u;
    memset(v86, 0, 25);
    v83 = 0u;
    v84 = 0u;
  }

  else
  {
    if (v23 >= (v24 >> 1))
    {
      __break(1u);
      return result;
    }

    v27 = (v22 + 80 * v23);
    v87 = *v27;
    v28 = v27[1];
    v29 = v27[2];
    v30 = v27[3];
    *(v90 + 9) = *(v27 + 57);
    v89 = v29;
    v90[0] = v30;
    v88 = v28;
    memmove(&v74, v27, 0x49uLL);
    sub_100160488(&v87, &v83);
    swift_unknownObjectRelease();
    v83 = v74;
    v84 = v75;
    v85 = v76;
    v86[0] = v77[0];
    *(v86 + 9) = *(v77 + 9);
    v25 = *(&v74 + 1);
    v26 = v74;
  }

  v56 = v11;
  v57 = a2;
  v65 = v2;
  v55 = v12;
  if (!v6)
  {
    if (!v25)
    {
      v74 = v5;
      v75 = v91;
      v76 = v92;
      v77[0] = v93[0];
      *(v77 + 9) = *(v93 + 9);
      sub_100160488(a1, &v87);
      sub_100024F64(&v74, &qword_10191DCE8);
      v31 = 1;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (!v25)
  {
LABEL_20:
    *&v74 = v5;
    *(&v74 + 1) = v6;
    v75 = v91;
    v76 = v92;
    v77[0] = v93[0];
    *(v77 + 9) = *(v93 + 9);
    v78 = v26;
    v79 = v25;
    v80 = v84;
    v81 = v85;
    v82[0] = v86[0];
    *(v82 + 9) = *(v86 + 9);
    sub_100160488(a1, &v87);
    sub_100024F64(&v74, &unk_10191DCD0);
    v31 = 0;
    goto LABEL_22;
  }

  *&v67[0] = v26;
  *(&v67[0] + 1) = v25;
  v67[2] = v85;
  v68[0] = v86[0];
  *(v68 + 9) = *(v86 + 9);
  v67[1] = v84;
  v74 = v67[0];
  v75 = v84;
  *(v77 + 9) = *(v86 + 9);
  v76 = v85;
  v77[0] = v68[0];
  *(v90 + 9) = *(v93 + 9);
  v89 = v92;
  v90[0] = v93[0];
  v88 = v91;
  *&v87 = v5;
  *(&v87 + 1) = v6;
  sub_100160488(a1, &v69);
  sub_1000D2DFC(&v83, &v69, &qword_10191DCE8);
  v31 = sub_100401CD4(&v87, &v74);
  sub_100024F64(v67, &qword_10191DCE8);
  sub_100024F64(&v83, &qword_10191DCE8);
  v69 = v5;
  v70 = v6;
  v71 = v91;
  v72 = v92;
  v73[0] = v93[0];
  *(v73 + 9) = *(v93 + 9);
  sub_100024F64(&v69, &qword_10191DCE8);
LABEL_22:
  v69 = 0x4048000000000000;
  sub_10018C5CC();
  v32 = v58;
  ScaledMetric.init(wrappedValue:)();
  v33 = v62;
  v34 = (v32 + *(v62 + 24));
  type metadata accessor for NearbyTransitDeparturesProvider();
  sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
  *v34 = EnvironmentObject.init()();
  v34[1] = v35;
  v36 = v32 + v33[7];
  LOBYTE(v67[0]) = 0;
  State.init(wrappedValue:)();
  v37 = (v32 + v33[5]);
  v38 = *(a1 + 48);
  v37[2] = *(a1 + 32);
  v37[3] = v38;
  *(v37 + 57) = *(a1 + 57);
  v39 = *(a1 + 16);
  *v37 = *a1;
  v37[1] = v39;
  *(v32 + v33[8]) = v31 & 1;
  LOBYTE(v67[0]) = *(*(a1 + 16) + 16) > 3uLL;
  sub_100160488(a1, &v69);
  State.init(wrappedValue:)();

  v41 = v70;
  *v36 = v69;
  *(v36 + 8) = v41;
  __chkstk_darwin(v40);
  v54 = a1;
  v59 = (v59 & 1) == 0;
  *(&v53 - 32) = v59;
  v42 = v66;
  *(&v53 - 3) = v65;
  *(&v53 - 2) = a1;
  *(&v53 - 1) = v42;
  v43 = sub_1000CE6B8(&qword_10191DC80);
  v44 = sub_1000414C8(&qword_10191DC90, &qword_10191DC80);
  v45 = v60;
  ContextMenu.init(menuItems:)();
  v46 = sub_1000CE6B8(&qword_10191DCE0);
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  v47 = sub_1003BAAF0(&qword_10191DC88, type metadata accessor for NearbyTransitLineSectionView);
  v48 = v64;
  View.contextMenu<A>(_:)();
  sub_100024F64(v45, &qword_10191DCC0);
  v49 = sub_1003BC870(v32);
  v60 = &v53;
  __chkstk_darwin(v49);
  *(&v53 - 32) = v59;
  v50 = v66;
  v51 = v54;
  *(&v53 - 3) = v65;
  *(&v53 - 2) = v51;
  *(&v53 - 1) = v50;
  sub_1000CE6B8(&qword_10191DC78);
  v69 = v33;
  v70 = v43;
  *&v71 = v47;
  *(&v71 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  sub_1003BC77C();
  v52 = v56;
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
  (*(v55 + 8))(v48, v52);
  return (*(v61 + 8))(v50, v63);
}

uint64_t sub_1003B4284(char a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v8 = type metadata accessor for NearbyTransitGroupView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_1003BD4C4(a2, &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NearbyTransitGroupView);
  v11 = (*(v9 + 80) + 17) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  sub_1003BCE58(&v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for NearbyTransitGroupView);
  v13 = (v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = a3[3];
  v13[2] = a3[2];
  v13[3] = v14;
  *(v13 + 57) = *(a3 + 57);
  v15 = a3[1];
  *v13 = *a3;
  v13[1] = v15;
  v18 = a4;
  sub_100160488(a3, v19);
  sub_1000CE6B8(&qword_10191DCC8);
  sub_1000414C8(&qword_10191DCF8, &qword_10191DCC8);
  return Button.init(action:label:)();
}

uint64_t sub_1003B446C@<X0>(char a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for NearbyTransitGroupView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_1003BD4C4(a2, &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NearbyTransitGroupView);
  v13 = (*(v11 + 80) + 17) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  sub_1003BCE58(&v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for NearbyTransitGroupView);
  v15 = (v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = a3[3];
  v15[2] = a3[2];
  v15[3] = v16;
  *(v15 + 57) = *(a3 + 57);
  v17 = a3[1];
  *v15 = *a3;
  v15[1] = v17;
  v28 = a4;
  sub_100160488(a3, v29);
  sub_1000CE6B8(&qword_10191DCF0);
  v18 = sub_1000D6664(&qword_10191DCC8);
  v19 = type metadata accessor for IconOnlyLabelStyle();
  v20 = sub_1000414C8(&qword_10191DCF8, &qword_10191DCC8);
  v21 = sub_1003BAAF0(&unk_10191DD00, &type metadata accessor for IconOnlyLabelStyle);
  v29[0] = v18;
  v29[1] = v19;
  v29[2] = v20;
  v29[3] = v21;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  v22 = static Color.yellow.getter();
  KeyPath = swift_getKeyPath();
  v29[0] = v22;
  v24 = AnyShapeStyle.init<A>(_:)();
  result = sub_1000CE6B8(&qword_10191DC78);
  v26 = (a5 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  return result;
}

id sub_1003B4730(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v16 = *(a2 + *(type metadata accessor for NearbyTransitGroupView(0) + 28));
  if ((a1 & 1) == 0)
  {
    if (v16)
    {
      v21 = *(a3 + 24);
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = v23;
      v24[5] = v21;
      swift_unknownObjectRetain();
      sub_10020AAE4(0, 0, v15, a6, v24);

      return [objc_opt_self() captureUserAction:a7 target:44 value:0];
    }

    goto LABEL_8;
  }

  if (!v16)
  {
LABEL_8:
    type metadata accessor for NearbyTransitDeparturesProvider();
    sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v17 = *(a3 + 24);
  v18 = v16;
  sub_100161458(v17);

  v19 = objc_opt_self();

  return [v19 captureUserAction:a4 target:44 value:0];
}

uint64_t sub_1003B497C()
{
  v0 = type metadata accessor for IconOnlyLabelStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  IconOnlyLabelStyle.init()();
  sub_1000CE6B8(&qword_10191DCC8);
  sub_1000414C8(&qword_10191DCF8, &qword_10191DCC8);
  sub_1003BAAF0(&unk_10191DD00, &type metadata accessor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003B4AF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v107 = a1;
  v105 = sub_1000CE6B8(&qword_10191DB30);
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v90 = &v89 - v3;
  v4 = sub_1000CE6B8(&qword_10191DB38);
  __chkstk_darwin(v4 - 8);
  v106 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v108 = &v89 - v7;
  v8 = type metadata accessor for NearbyTransitGroupView(0);
  v94 = *(v8 - 1);
  __chkstk_darwin(v8);
  v95 = v9;
  v96 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000CE6B8(&qword_10191DB40);
  v99 = *(v10 - 8);
  v100 = v10;
  __chkstk_darwin(v10);
  v97 = &v89 - v11;
  v12 = sub_1000CE6B8(&qword_10191DB48);
  __chkstk_darwin(v12 - 8);
  v104 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v89 - v15;
  v17 = sub_1000CE6B8(&qword_10191DB50);
  __chkstk_darwin(v17);
  v19 = &v89 - v18;
  v20 = sub_1000CE6B8(&qword_10191DB58);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v102 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v89 - v24;
  *v19 = static HorizontalAlignment.leading.getter();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v26 = sub_1000CE6B8(&qword_10191DB60);
  sub_1003B5528(v2, &v19[*(v26 + 44)]);
  v109 = static Color.clear.getter();
  *&v19[*(v17 + 36)] = AnyView.init<A>(_:)();
  sub_1003BBDB4();
  Section<>.init(header:content:)();
  v27 = &v25[*(sub_1000CE6B8(&qword_10191DB90) + 36)];
  v27[32] = 0;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v28 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v25[*(sub_1000CE6B8(&qword_10191DB98) + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v39 = *(v21 + 44);
  v101 = v25;
  v40 = &v25[v39];
  *v40 = v38;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  v45 = *(v2 + v8[5] + 32);
  v46 = (v2 + v8[9]);
  v47 = *v46;
  v48 = *(v46 + 1);
  v92 = v47;
  LOBYTE(v109) = v47;
  v93 = v48;
  v110 = v48;

  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.getter();
  v49 = v16;
  if (v113)
  {
    v50 = 2;
  }

  else
  {
    v50 = *(v45 + 16);
  }

  v51 = sub_1000D6898(v50, v45);
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v2 + v8[8];
  v59 = *v58;
  v60 = v2;
  v61 = *(v58 + 8);
  LOBYTE(v109) = *v58;
  v110 = v61;
  State.wrappedValue.getter();
  v91 = v60;
  v98 = v51;
  if (v113)
  {
    v62 = 1;
    v63 = v105;
    v64 = v103;
    v65 = v49;
    v67 = v99;
    v66 = v100;
  }

  else
  {
    v109 = v51;
    v110 = v53;
    v111 = v55;
    v112 = v57;
    v68 = v96;
    sub_1003BD4C4(v60, v96, type metadata accessor for NearbyTransitGroupView);
    v69 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v70 = swift_allocObject();
    sub_1003BCE58(v68, v70 + v69, type metadata accessor for NearbyTransitGroupView);
    swift_unknownObjectRetain();
    v96 = sub_1000CE6B8(&qword_10191DBA0);
    sub_1000CE6B8(&qword_10191DBA8);
    sub_1000414C8(&qword_10191DBB0, &qword_10191DBA0);
    sub_1000414C8(&qword_10191DBB8, &qword_10191DBA8);
    v88 = sub_1003BBF18();
    v71 = v97;
    ForEach<>.init(_:content:)();
    v67 = v99;
    v66 = v100;
    v65 = v49;
    (*(v99 + 32))(v49, v71, v100);
    v62 = 0;
    v63 = v105;
    v64 = v103;
  }

  v72 = 1;
  (*(v67 + 56))(v65, v62, 1, v66);
  LOBYTE(v109) = v59;
  v110 = v61;
  State.wrappedValue.getter();
  if ((v113 & 1) == 0)
  {
    LOBYTE(v109) = v92;
    v110 = v93;
    State.wrappedValue.getter();
    if (v113 == 1)
    {
      v73 = v91;
      v74 = sub_1003B2D50();
      if (v74)
      {
        __chkstk_darwin(v74);
        *(&v89 - 6) = v73;
        *(&v89 - 5) = v75;
        *(&v89 - 4) = v76;
        *(&v89 - 3) = v77;
        v88 = v78;
        sub_1000CE6B8(&qword_10191DBD0);
        sub_1003BBF7C();
        v79 = v90;
        ControlGroup.init(content:)();
        swift_unknownObjectRelease();
        (*(v64 + 32))(v108, v79, v63);
        v72 = 0;
      }
    }
  }

  v80 = v108;
  (*(v64 + 56))(v108, v72, 1, v63);
  v82 = v101;
  v81 = v102;
  sub_1000D2DFC(v101, v102, &qword_10191DB58);
  v83 = v104;
  sub_1000D2DFC(v65, v104, &qword_10191DB48);
  v105 = v65;
  v84 = v106;
  sub_1000D2DFC(v80, v106, &qword_10191DB38);
  v85 = v107;
  sub_1000D2DFC(v81, v107, &qword_10191DB58);
  v86 = sub_1000CE6B8(&qword_10191DBC8);
  sub_1000D2DFC(v83, v85 + *(v86 + 48), &qword_10191DB48);
  sub_1000D2DFC(v84, v85 + *(v86 + 64), &qword_10191DB38);
  swift_unknownObjectRelease();
  sub_100024F64(v80, &qword_10191DB38);
  sub_100024F64(v105, &qword_10191DB48);
  sub_100024F64(v82, &qword_10191DB58);
  sub_100024F64(v84, &qword_10191DB38);
  sub_100024F64(v83, &qword_10191DB48);
  return sub_100024F64(v81, &qword_10191DB58);
}

uint64_t sub_1003B5528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for BorderlessButtonStyle();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&qword_10191DD10);
  v72 = *(v5 - 8);
  v73 = v5;
  __chkstk_darwin(v5);
  v78 = &v64 - v6;
  v68 = sub_1000CE6B8(&qword_10191DD18);
  __chkstk_darwin(v68);
  v71 = &v64 - v7;
  v8 = sub_1000CE6B8(&qword_10191DD20);
  v86 = *(v8 - 8);
  v87 = v8;
  __chkstk_darwin(v8);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = &v64 - v11;
  v12 = sub_1000CE6B8(&qword_10191DD28);
  __chkstk_darwin(v12 - 8);
  v75 = &v64 - v13;
  v77 = sub_1000CE6B8(&qword_10191DD30);
  v79 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v64 - v14;
  v15 = sub_1000CE6B8(&qword_10191DD38);
  __chkstk_darwin(v15 - 8);
  v85 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v84 = &v64 - v18;
  v19 = sub_1000CE6B8(&unk_10191DD40);
  __chkstk_darwin(v19);
  v83 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v64 - v22;
  __chkstk_darwin(v24);
  v82 = &v64 - v25;
  v26 = type metadata accessor for NearbyTransitGroupView(0);
  v27 = (a1 + *(v26 + 20));
  v28 = v27[3];
  v106 = v27[2];
  v107 = v28;
  v29 = v27[1];
  v104 = *v27;
  v105 = v29;
  sub_1001F1238(&v104, &v97);
  sub_1003B2E18(&v95);
  v30 = v96;
  if (v96)
  {
    sub_100024F64(&v95, &qword_10191DD60);
  }

  v81 = v30 != 0;
  v31 = (a1 + *(v26 + 32));
  v32 = *v31;
  v74 = a1;
  v33 = *(v31 + 1);
  LOBYTE(v91) = v32;
  *(&v91 + 1) = v33;
  sub_1000CE6B8(&qword_10190A140);
  State.projectedValue.getter();
  v34 = *(&v97 + 1);
  v80 = v97;
  v35 = v98;
  v91 = v104;
  v92 = v105;
  v93 = v106;
  v94 = v107;
  v36 = &v23[*(v19 + 36)];
  v37 = *(sub_1000CE6B8(&qword_10191D260) + 28);
  v38 = type metadata accessor for Text.Case();
  v39 = 1;
  (*(*(v38 - 8) + 56))(v36 + v37, 1, 1, v38);
  *v36 = swift_getKeyPath();
  v40 = v92;
  *v23 = v91;
  *(v23 + 1) = v40;
  v41 = v94;
  *(v23 + 2) = v93;
  *(v23 + 3) = v41;
  v23[64] = v81;
  *(v23 + 65) = *v90;
  *(v23 + 17) = *&v90[3];
  *(v23 + 9) = v80;
  *(v23 + 10) = v34;
  v23[88] = v35;
  v42 = v82;
  sub_1000F11C4(v23, v82, &unk_10191DD40);
  LOBYTE(v97) = v32;
  *(&v97 + 1) = v33;
  State.wrappedValue.getter();
  v43 = v87;
  v44 = v84;
  if ((v89 & 1) == 0)
  {
    v45 = v75;
    sub_1003B2FD4(v75);
    v46 = v79;
    v47 = v77;
    if ((*(v79 + 48))(v45, 1, v77) == 1)
    {
      sub_100024F64(v45, &qword_10191DD28);
    }

    else
    {
      (*(v46 + 32))(v76, v45, v47);
      v48 = v65;
      BorderlessButtonStyle.init()();
      sub_1000414C8(&qword_10191DD58, &qword_10191DD30);
      sub_1003BAAF0(&unk_10191DC00, &type metadata accessor for BorderlessButtonStyle);
      v49 = v67;
      View.buttonStyle<A>(_:)();
      (*(v66 + 8))(v48, v49);
      sub_1000CE6B8(&qword_10191DA40);
      ScaledMetric.wrappedValue.getter();
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      (*(v79 + 8))(v76, v47);
      v50 = v71;
      (*(v72 + 32))(v71, v78, v73);
      v51 = (v50 + *(v68 + 36));
      v52 = v102;
      v51[4] = v101;
      v51[5] = v52;
      v51[6] = v103;
      v53 = v98;
      *v51 = v97;
      v51[1] = v53;
      v54 = v100;
      v51[2] = v99;
      v51[3] = v54;
      v55 = v69;
      sub_1000F11C4(v50, v69, &qword_10191DD18);
      v56 = v55 + *(v43 + 36);
      *(v56 + 32) = 0;
      *v56 = 0u;
      *(v56 + 16) = 0u;
      v57 = v55;
      v58 = v70;
      sub_1000F11C4(v57, v70, &qword_10191DD20);
      sub_1000F11C4(v58, v44, &qword_10191DD20);
      v39 = 0;
    }
  }

  (*(v86 + 56))(v44, v39, 1, v43);
  v59 = v83;
  sub_1000D2DFC(v42, v83, &unk_10191DD40);
  v60 = v85;
  sub_1000D2DFC(v44, v85, &qword_10191DD38);
  v61 = v88;
  sub_1000D2DFC(v59, v88, &unk_10191DD40);
  v62 = sub_1000CE6B8(&qword_10191DD50);
  sub_1000D2DFC(v60, v61 + *(v62 + 48), &qword_10191DD38);
  sub_100024F64(v44, &qword_10191DD38);
  sub_100024F64(v42, &unk_10191DD40);
  sub_100024F64(v60, &qword_10191DD38);
  return sub_100024F64(v59, &unk_10191DD40);
}

uint64_t sub_1003B5EF4()
{
  sub_1000CE6B8(&qword_10191DC60);
  sub_1003BC57C();
  return ControlGroup.init(content:)();
}

double sub_1003B5F80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a4;
  v32 = a5;
  v29 = a2;
  v30 = a3;
  v36 = a6;
  v7 = type metadata accessor for BorderlessButtonStyle();
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NearbyTransitGroupView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = sub_1000CE6B8(&qword_10191DBF0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v17 = sub_1000CE6B8(&qword_10191DC18);
  v18 = *(v17 - 8);
  v33 = v17;
  v34 = v18;
  __chkstk_darwin(v17);
  v20 = &v29 - v19;
  sub_1003BD4C4(a1, &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NearbyTransitGroupView);
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = swift_allocObject();
  sub_1003BCE58(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for NearbyTransitGroupView);
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  sub_1000CE6B8(&qword_10191DC20);
  sub_1003BC32C();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  v23 = sub_1000414C8(&qword_10191DBF8, &qword_10191DBF0);
  v24 = sub_1003BAAF0(&unk_10191DC00, &type metadata accessor for BorderlessButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v35 + 8))(v9, v7);
  (*(v14 + 8))(v16, v13);
  v41 = v13;
  v42 = v7;
  v43 = v23;
  v44 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v36;
  v26 = v33;
  View.accessibilityIdentifier(_:)();
  (*(v34 + 8))(v20, v26);
  v27 = v25 + *(sub_1000CE6B8(&qword_10191DBD0) + 36);
  *(v27 + 32) = 0;
  result = 0.0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  return result;
}

uint64_t sub_1003B63F0@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v37 = type metadata accessor for ListSectionSpacing();
  v2 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for InsetGroupedListStyle();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_10191D940);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v34 = sub_1000CE6B8(&qword_10191D948);
  __chkstk_darwin(v34);
  v12 = &v31 - v11;
  v38 = sub_1000CE6B8(&qword_10191D950);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v33 = &v31 - v13;
  v14 = v1[1];
  v51 = *v1;
  v52 = v14;
  v53 = v1[2];
  sub_1000CE6B8(&qword_10191D8D8);
  Binding.wrappedValue.getter();
  v35 = v48;
  v36 = v50;
  v41 = v49;
  v42 = v1;
  v43 = v47;
  v44 = v48;
  v45 = v49;
  v46 = v50;

  sub_1000CE6B8(&qword_10191D958);
  sub_1003BB01C();
  List<>.init(content:)();

  InsetGroupedListStyle.init()();
  sub_1000414C8(&qword_10191D980, &qword_10191D940);
  v15 = v31;
  View.listStyle<A>(_:)();
  (*(v4 + 8))(v6, v15);
  (*(v8 + 8))(v10, v7);
  v16 = v32;
  static ListSectionSpacing.custom(_:)();
  v17 = *(sub_1000CE6B8(&qword_10191D988) + 36);
  v18 = v37;
  (*(v2 + 16))(&v12[v17], v16, v37);
  v19 = *(v2 + 56);
  v19(&v12[v17], 0, 1, v18);
  KeyPath = swift_getKeyPath();
  v21 = &v12[*(sub_1000CE6B8(&unk_10191D990) + 36)];
  v22 = *(sub_1000CE6B8(&qword_10190CD00) + 28);
  (*(v2 + 32))(v21 + v22, v16, v18);
  v19(v21 + v22, 0, 1, v18);
  *v21 = KeyPath;
  v23 = static Color.clear.getter();
  v24 = static Edge.Set.all.getter();
  v25 = v34;
  v26 = &v12[*(v34 + 36)];
  *v26 = v23;
  v26[8] = v24;
  *&v51 = static Color.clear.getter();
  v27 = sub_1003BB17C();
  v28 = v33;
  View.scrollContentBackground<A>(_:)();

  sub_100024F64(v12, &qword_10191D948);
  *&v51 = v25;
  *(&v51 + 1) = &type metadata for Color;
  *&v52 = v27;
  *(&v52 + 1) = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v29 = v38;
  View.accessibility(identifier:)();

  swift_unknownObjectRelease();
  return (*(v39 + 8))(v28, v29);
}

uint64_t sub_1003B6A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a1;
  *(swift_allocObject() + 16) = a1;
  swift_bridgeObjectRetain_n();
  sub_1000CE6B8(&qword_10191D8A0);
  type metadata accessor for NearbyTransitGroupView(0);
  sub_1000414C8(&qword_10191D9E0, &qword_10191D8A0);
  sub_1003BAAF0(&qword_10191D978, type metadata accessor for NearbyTransitGroupView);
  sub_1003BB43C();
  ForEach<>.init(_:content:)();
  v12 = swift_allocObject();
  v13 = *(a2 + 48);
  *(v12 + 48) = *(a2 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(a2 + 64);
  v14 = *(a2 + 80);
  v15 = *(a2 + 16);
  *(v12 + 16) = *a2;
  *(v12 + 32) = v15;
  *(v12 + 96) = v14;
  *(v12 + 104) = a3;
  *(v12 + 112) = a4;
  *(v12 + 120) = a5;
  *(v12 + 128) = a6;
  v16 = (a7 + *(sub_1000CE6B8(&qword_10191D958) + 36));
  *v16 = sub_1003BB490;
  v16[1] = v12;
  v16[2] = 0;
  v16[3] = 0;
  sub_1003BB498(a2, v19);
  swift_unknownObjectRetain();
}

double sub_1003B6BF8@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v46 = *a1;
  v47 = v4;
  v5 = a1[3];
  v48 = a1[2];
  v49 = v5;
  if (*(a2 + 16))
  {
    v6 = *(a2 + 48);
    v38 = *(a2 + 32);
    v39 = v6;
    v7 = *(a2 + 80);
    v40 = *(a2 + 64);
    v41 = v7;
    v26 = v38;
    v27 = v6;
    v28 = v40;
    v29 = v7;
    sub_1001F1238(&v38, &v42);
    v42 = v26;
    v43 = v27;
    v44 = v28;
    v45 = v29;
    v8 = *(&v26 + 1);
    v9 = v26;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
  }

  v10 = v46;
  v35 = v47;
  v36 = v48;
  v37 = v49;
  if (!*(&v46 + 1))
  {
    if (!v8)
    {
      v26 = v46;
      v27 = v47;
      v28 = v48;
      v29 = v49;
      sub_1001F1238(&v46, &v38);
      sub_100024F64(&v26, &qword_10191DA38);
      v12 = 0.0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!v8)
  {
LABEL_10:
    v26 = v46;
    v27 = v47;
    v28 = v48;
    v29 = v49;
    v30 = v9;
    v31 = v8;
    v32 = v43;
    v33 = v44;
    v34 = v45;
    sub_1001F1238(&v46, &v38);
    sub_100024F64(&v26, &unk_10191DA28);
    v12 = 30.0;
    goto LABEL_12;
  }

  *&v24[0] = v9;
  *(&v24[0] + 1) = v8;
  v24[1] = v43;
  v24[2] = v44;
  v24[3] = v45;
  v28 = v44;
  v29 = v45;
  v26 = v24[0];
  v27 = v43;
  v40 = v48;
  v41 = v49;
  v39 = v47;
  v38 = v46;
  sub_1001F1238(&v46, v25);
  sub_1001F1238(&v46, v25);
  sub_1000D2DFC(&v42, v25, &qword_10191DA38);
  v11 = sub_100407808(&v38, &v26);
  sub_100024F64(v24, &qword_10191DA38);
  sub_100024F64(&v42, &qword_10191DA38);
  sub_1001F1294(&v46);
  v25[0] = v10;
  v25[1] = v35;
  v25[2] = v36;
  v25[3] = v37;
  sub_100024F64(v25, &qword_10191DA38);
  if (v11)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 30.0;
  }

LABEL_12:
  *&v24[0] = 0x404E000000000000;
  sub_1001F1238(&v46, v25);
  sub_1001C4D24();
  ScaledMetric.init(wrappedValue:)();
  v13 = type metadata accessor for NearbyTransitGroupView(0);
  v14 = (a3 + v13[7]);
  type metadata accessor for NearbyTransitDeparturesProvider();
  sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
  *v14 = EnvironmentObject.init()();
  v14[1] = v15;
  v16 = a3 + v13[8];
  LOBYTE(v24[0]) = 0;
  State.init(wrappedValue:)();
  v17 = *(&v25[0] + 1);
  *v16 = v25[0];
  *(v16 + 8) = v17;
  v18 = a3 + v13[9];
  LOBYTE(v24[0]) = 0;
  State.init(wrappedValue:)();
  v19 = *(v48 + 16);

  *v18 = v19 > 2;
  *(v18 + 8) = 0;
  v20 = (a3 + v13[5]);
  v21 = v47;
  *v20 = v46;
  v20[1] = v21;
  result = *&v48;
  v23 = v49;
  v20[2] = v48;
  v20[3] = v23;
  *(a3 + v13[6]) = v12;
  return result;
}

uint64_t sub_1003B6FB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_1000CE6B8(&qword_10191D8F0);
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v44 - v4;
  v52 = sub_1000CE6B8(&qword_10191D8F8);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v45 = &v44 - v5;
  v6 = sub_1000CE6B8(&qword_10191D900);
  __chkstk_darwin(v6 - 8);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v9;
  v10 = sub_1000CE6B8(&qword_10191D908);
  __chkstk_darwin(v10 - 8);
  v51 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  v15 = a1[1];
  v55 = *a1;
  v56 = v15;
  v16 = sub_1000E5580();

  v44 = v16;
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  v61 = a1[6];
  v55 = v61;

  v22 = Text.foregroundStyle<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1000F0A40(v17, v19, v21 & 1);

  sub_1003BAFB8(&v61);
  KeyPath = swift_getKeyPath();
  v55 = v22;
  v56 = v24;
  v30 = v26 & 1;
  v31 = v14;
  v57 = v30;
  v58 = v28;
  v59 = KeyPath;
  v60 = 1;
  sub_1000CE6B8(&unk_10191D910);
  sub_100316728();
  View.accessibility(identifier:)();
  sub_1000F0A40(v22, v24, v30);

  v33 = a1[2];
  v32 = a1[3];

  if (String.count.getter() < 1)
  {

    v38 = 1;
    v37 = v49;
  }

  else
  {
    v55 = v33;
    v56 = v32;

    v34 = v46;
    Button<>.init<A>(_:action:)();
    sub_1000414C8(&qword_10190C668, &qword_10191D8F0);
    v35 = v45;
    v36 = v48;
    View.accessibility(identifier:)();
    (*(v47 + 8))(v34, v36);
    v37 = v49;
    sub_1000F11C4(v35, v49, &qword_10191D8F8);
    v38 = 0;
  }

  (*(v50 + 56))(v37, v38, 1, v52);
  v39 = v51;
  sub_1000D2DFC(v31, v51, &qword_10191D908);
  v40 = v53;
  sub_1000D2DFC(v37, v53, &qword_10191D900);
  v41 = v54;
  sub_1000D2DFC(v39, v54, &qword_10191D908);
  v42 = sub_1000CE6B8(&unk_10191D930);
  sub_1000D2DFC(v40, v41 + *(v42 + 48), &qword_10191D900);
  sub_100024F64(v37, &qword_10191D900);
  sub_100024F64(v31, &qword_10191D908);
  sub_100024F64(v40, &qword_10191D900);
  return sub_100024F64(v39, &qword_10191D908);
}

uint64_t sub_1003B752C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v4 = sub_1000CE6B8(&qword_10191D8E8);
  return sub_1003B6FB0(v6, a1 + *(v4 + 44));
}

uint64_t sub_1003B75A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000CE6B8(&qword_10191D740);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = sub_1000CE6B8(&qword_10191D748);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v10 = sub_1000CE6B8(&qword_10191D750);
  sub_1003B77A8(v1, &v5[*(v10 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000F11C4(v5, v9, &qword_10191D740);
  v11 = &v9[*(v7 + 44)];
  v12 = v17[5];
  *(v11 + 4) = v17[4];
  *(v11 + 5) = v12;
  *(v11 + 6) = v17[6];
  v13 = v17[1];
  *v11 = v17[0];
  *(v11 + 1) = v13;
  v14 = v17[3];
  *(v11 + 2) = v17[2];
  *(v11 + 3) = v14;
  v15 = a1 + *(sub_1000CE6B8(&qword_10191D758) + 36);
  sub_1003B9A28(v1, v15);
  *(v15 + *(sub_1000CE6B8(&unk_10191D760) + 36)) = 1;
  return sub_1000F11C4(v9, a1, &qword_10191D748);
}

uint64_t sub_1003B77A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v86 = sub_1000CE6B8(&qword_10191D7C8);
  __chkstk_darwin(v86);
  v4 = &v81 - v3;
  v84 = sub_1000CE6B8(&qword_10191D7D0);
  __chkstk_darwin(v84);
  v85 = (&v81 - v5);
  v94 = sub_1000CE6B8(&qword_10191D7D8);
  __chkstk_darwin(v94);
  v87 = &v81 - v6;
  v7 = sub_1000CE6B8(&qword_10191D7E0);
  __chkstk_darwin(v7);
  v9 = (&v81 - v8);
  *&v89 = sub_1000CE6B8(&qword_10191D7E8);
  __chkstk_darwin(v89);
  *&v83 = &v81 - v10;
  v11 = sub_1000CE6B8(&qword_10191D7F0);
  __chkstk_darwin(v11);
  v13 = &v81 - v12;
  v91 = sub_1000CE6B8(&qword_10191D7F8);
  __chkstk_darwin(v91);
  v93 = &v81 - v14;
  v88 = sub_1000CE6B8(&qword_10191D800);
  __chkstk_darwin(v88);
  v16 = (&v81 - v15);
  v92 = sub_1000CE6B8(&unk_10191D808);
  __chkstk_darwin(v92);
  v90 = &v81 - v17;
  v18 = *(a1 + 56);
  if (!v18)
  {
    type metadata accessor for NearbyTransitDeparturesProvider();
    sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v18;
  static Published.subscript.getter();

  if (v103 <= 2u)
  {
    if (!v103)
    {

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v39._countAndFlagsBits = 0xD00000000000001ELL;
      v107._object = 0x8000000101233C00;
      v39._object = 0x8000000101233BB0;
      v40._countAndFlagsBits = 0xD000000000000029;
      v40._object = 0x8000000101233BD0;
      v107._countAndFlagsBits = 0xD000000000000027;
      v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, qword_1019600D8, v40, v107);
      v42 = [objc_opt_self() secondaryLabelColor];
      v43 = Color.init(uiColor:)();
      v102 = 0;
      v96 = v41;
      v97._countAndFlagsBits = 0;
      v97._object = 0xE000000000000000;
      v98 = UIView.annotateView(with:);
      v99 = 0;
      v100 = v43;
      v101 = 0;
      goto LABEL_18;
    }

    if (v103 == 1)
    {

      *v13 = static VerticalAlignment.center.getter();
      *(v13 + 1) = 0x4020000000000000;
      v13[16] = 0;
      v25 = sub_1000CE6B8(&qword_10191D858);
      sub_1003B8C98(&v13[*(v25 + 44)]);
      sub_1000D2DFC(v13, v9, &qword_10191D7F0);
      swift_storeEnumTagMultiPayload();
      sub_1000414C8(&qword_10191D848, &qword_10191D7F0);
      sub_1003BA898();
      v26 = v83;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v26, v16, &qword_10191D7E8);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10191D818);
      sub_1003BA814();
      sub_1003BA978();
      v27 = v90;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v26, &qword_10191D7E8);
      sub_1000D2DFC(v27, v93, &unk_10191D808);
      swift_storeEnumTagMultiPayload();
      sub_1003BA8EC();
      sub_1003BAA30();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v27, &unk_10191D808);
      return sub_100024F64(v13, &qword_10191D7F0);
    }

    v46 = *(a1 + 16);
    v96 = *a1;
    v97 = v46;
    v98 = *(a1 + 32);
    sub_1000CE6B8(&unk_10191D7A0);
    State.projectedValue.getter();
    v89 = v103;
    v88 = *v104;
    v90 = *&v104[24];
    v83 = *&v104[8];
    v96 = *(a1 + 40);
    sub_1000CE6B8(&qword_10190A140);
    State.projectedValue.getter();
    v82 = *(&v103 + 1);
    v47 = v103;
    v48 = v104[0];
    type metadata accessor for NearbyTransitDeparturesProvider();
    sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
    v49 = EnvironmentObject.init()();
    v51 = v50;
    swift_beginAccess();
    v52 = v86;
    sub_1000CE6B8(&unk_10190D310);
    Published.projectedValue.getter();
    swift_endAccess();

    v53 = swift_allocObject();
    v54 = *(a1 + 48);
    *(v53 + 48) = *(a1 + 32);
    *(v53 + 64) = v54;
    *(v53 + 80) = *(a1 + 64);
    *(v53 + 96) = *(a1 + 80);
    v55 = *(a1 + 16);
    *(v53 + 16) = *a1;
    *(v53 + 32) = v55;
    *v4 = v89;
    *(v4 + 2) = v88;
    *(v4 + 24) = v83;
    *(v4 + 5) = v90;
    *(v4 + 6) = v47;
    *(v4 + 7) = v82;
    v4[64] = v48;
    *(v4 + 17) = *(&v96._countAndFlagsBits + 3);
    *(v4 + 65) = v96._countAndFlagsBits;
    *(v4 + 9) = v49;
    *(v4 + 10) = v51;
    v56 = &v4[*(v52 + 56)];
    *v56 = sub_1003BA80C;
    *(v56 + 1) = v53;
    sub_1000D2DFC(v4, v85, &qword_10191D7C8);
    swift_storeEnumTagMultiPayload();
    sub_1003BA50C(a1, &v103);
    sub_1000CE6B8(&qword_10191D818);
    sub_1003BA814();
    sub_1000414C8(&qword_10191D830, &qword_10191D7C8);
    v57 = v87;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v57, v93, &qword_10191D7D8);
    swift_storeEnumTagMultiPayload();
    sub_1003BA8EC();
    sub_1003BAA30();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v57, &qword_10191D7D8);
    v37 = v4;
    v38 = &qword_10191D7C8;
    return sub_100024F64(v37, v38);
  }

  if (v103 > 4u)
  {
    if (v103 == 5)
    {

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v29._countAndFlagsBits = 0xD00000000000001BLL;
      v106._object = 0x8000000101233AC0;
      v29._object = 0x8000000101233A70;
      v30._object = 0x8000000101233A90;
      v106._countAndFlagsBits = 0xD000000000000041;
      v30._countAndFlagsBits = 0xD000000000000027;
      v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, qword_1019600D8, v30, v106);
      v32 = [objc_opt_self() secondaryLabelColor];
      v33 = Color.init(uiColor:)();
      v102 = 0;
      v96 = v31;
      v97._countAndFlagsBits = 0;
      v97._object = 0xE000000000000000;
      v98 = UIView.annotateView(with:);
      v99 = 0;
      v100 = v33;
      v101 = 0;
      sub_1003BA898();

      _ConditionalContent<>.init(storage:)();
      v34 = *v104;
      v35 = v85;
      *v85 = v103;
      v35[1] = v34;
      v35[2] = *&v104[16];
      *(v35 + 41) = *&v104[25];
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10191D818);
      sub_1003BA814();
      sub_1000414C8(&qword_10191D830, &qword_10191D7C8);
      v36 = v87;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v36, v93, &qword_10191D7D8);
      swift_storeEnumTagMultiPayload();
      sub_1003BA8EC();
      sub_1003BAA30();
      _ConditionalContent<>.init(storage:)();

      v37 = v36;
      v38 = &qword_10191D7D8;
    }

    else
    {

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v65.super.isa = qword_1019600D8;
      v66._countAndFlagsBits = 0xD000000000000020;
      v109._object = 0x8000000101233990;
      v66._object = 0x8000000101233930;
      v67._countAndFlagsBits = 0xD000000000000029;
      v67._object = 0x8000000101233960;
      v109._countAndFlagsBits = 0xD000000000000044;
      v68 = NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, qword_1019600D8, v67, v109);
      v69._countAndFlagsBits = 0xD000000000000012;
      v70._countAndFlagsBits = 0xD00000000000001FLL;
      v110._object = 0x8000000101233A20;
      v70._object = 0x80000001012339E0;
      v69._object = 0x8000000101233A00;
      v110._countAndFlagsBits = 0xD000000000000045;
      v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, 0, v65, v69, v110);
      v72 = swift_allocObject();
      v73 = *(a1 + 48);
      *(v72 + 48) = *(a1 + 32);
      *(v72 + 64) = v73;
      *(v72 + 80) = *(a1 + 64);
      *(v72 + 96) = *(a1 + 80);
      v74 = *(a1 + 16);
      *(v72 + 16) = *a1;
      *(v72 + 32) = v74;
      v75 = objc_opt_self();
      sub_1003BA50C(a1, &v103);
      v76 = [v75 secondaryLabelColor];
      v77 = Color.init(uiColor:)();
      v102 = 1;
      v96 = v68;
      v97 = v71;
      v98 = sub_1003BAAE8;
      v99 = v72;
      v100 = v77;
      v101 = 1;
      sub_1003BA898();

      _ConditionalContent<>.init(storage:)();
      v78 = *v104;
      v79 = v85;
      *v85 = v103;
      v79[1] = v78;
      v79[2] = *&v104[16];
      *(v79 + 41) = *&v104[25];
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10191D818);
      sub_1003BA814();
      sub_1000414C8(&qword_10191D830, &qword_10191D7C8);
      v80 = v87;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v80, v93, &qword_10191D7D8);
      swift_storeEnumTagMultiPayload();
      sub_1003BA8EC();
      sub_1003BAA30();
      _ConditionalContent<>.init(storage:)();

      v37 = v80;
      v38 = &qword_10191D7D8;
    }

    return sub_100024F64(v37, v38);
  }

  if (v103 == 3)
  {

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v20._countAndFlagsBits = 0xD00000000000001ELL;
    v105._object = 0x8000000101233C00;
    v20._object = 0x8000000101233BB0;
    v21._countAndFlagsBits = 0xD000000000000029;
    v21._object = 0x8000000101233BD0;
    v105._countAndFlagsBits = 0xD000000000000027;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, qword_1019600D8, v21, v105);
    v23 = [objc_opt_self() secondaryLabelColor];
    v24 = Color.init(uiColor:)();
    v102 = 1;
    v96 = v22;
    v97._countAndFlagsBits = 0;
    v97._object = 0xE000000000000000;
    v98 = UIView.annotateView(with:);
    v99 = 0;
    v100 = v24;
    v101 = 1;
LABEL_18:
    sub_1003BA898();

    _ConditionalContent<>.init(storage:)();
    v44 = *v104;
    *v16 = v103;
    v16[1] = v44;
    v16[2] = *&v104[16];
    *(v16 + 41) = *&v104[25];
    swift_storeEnumTagMultiPayload();
    sub_1000CE6B8(&qword_10191D818);
    sub_1003BA814();
    sub_1003BA978();
    v45 = v90;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v45, v93, &unk_10191D808);
    swift_storeEnumTagMultiPayload();
    sub_1003BA8EC();
    sub_1003BAA30();
    _ConditionalContent<>.init(storage:)();

    return sub_100024F64(v45, &unk_10191D808);
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v58._countAndFlagsBits = 0xD00000000000001BLL;
  v108._object = 0x8000000101233B60;
  v58._object = 0x8000000101233B10;
  v59._countAndFlagsBits = 0xD00000000000002ELL;
  v59._object = 0x8000000101233B30;
  v108._countAndFlagsBits = 0xD000000000000040;
  v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, qword_1019600D8, v59, v108);
  v61 = [objc_opt_self() secondaryLabelColor];
  v62 = Color.init(uiColor:)();
  *v9 = v60;
  v9[1]._countAndFlagsBits = 0;
  v9[1]._object = 0xE000000000000000;
  v9[2]._countAndFlagsBits = UIView.annotateView(with:);
  v9[2]._object = 0;
  v9[3]._countAndFlagsBits = v62;
  swift_storeEnumTagMultiPayload();
  sub_1000414C8(&qword_10191D848, &qword_10191D7F0);
  sub_1003BA898();

  v63 = v83;
  _ConditionalContent<>.init(storage:)();
  sub_1000D2DFC(v63, v16, &qword_10191D7E8);
  swift_storeEnumTagMultiPayload();
  sub_1000CE6B8(&qword_10191D818);
  sub_1003BA814();
  sub_1003BA978();
  v64 = v90;
  _ConditionalContent<>.init(storage:)();
  sub_100024F64(v63, &qword_10191D7E8);
  sub_1000D2DFC(v64, v93, &unk_10191D808);
  swift_storeEnumTagMultiPayload();
  sub_1003BA8EC();
  sub_1003BAA30();
  _ConditionalContent<>.init(storage:)();

  return sub_100024F64(v64, &unk_10191D808);
}

uint64_t sub_1003B8C98@<X0>(_BYTE *a1@<X8>)
{
  v43 = a1;
  v1 = type metadata accessor for CircularProgressViewStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000CE6B8(&qword_10191D860);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38[-v7];
  v42 = sub_1000CE6B8(&qword_10191D868);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v38[-v11];
  ProgressView<>.init<>()();
  CircularProgressViewStyle.init()();
  sub_1000414C8(&qword_10191D870, &qword_10191D860);
  sub_1003BAAF0(&unk_10191D878, &type metadata accessor for CircularProgressViewStyle);
  v13 = v12;
  View.progressViewStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v45._object = 0x8000000101233C50;
  v14._countAndFlagsBits = 0xE2676E6964616F4CLL;
  v15._object = 0x8000000101233C30;
  v15._countAndFlagsBits = 0x100000000000001BLL;
  v14._object = 0xAA0000000000A680;
  v45._countAndFlagsBits = 0xD000000000000021;
  v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, qword_1019600D8, v14, v45);
  sub_1000E5580();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  v21 = [objc_opt_self() secondaryLabelColor];
  v44._countAndFlagsBits = Color.init(uiColor:)();
  v22 = Text.foregroundStyle<A>(_:)();
  v24 = v23;
  v39 = v25;
  v27 = v26;
  sub_1000F0A40(v16, v18, v20 & 1);

  v28 = v40;
  v29 = v41;
  v30 = *(v40 + 16);
  v31 = v42;
  v30(v41, v13, v42);
  v32 = v43;
  v30(v43, v29, v31);
  v33 = &v32[*(sub_1000CE6B8(&unk_10191D888) + 48)];
  *v33 = v22;
  *(v33 + 1) = v24;
  v34 = v39;
  v35 = v39 & 1;
  v33[16] = v39 & 1;
  *(v33 + 3) = v27;
  sub_1001C8AFC(v22, v24, v34 & 1);
  v36 = *(v28 + 8);

  v36(v13, v31);
  sub_1000F0A40(v22, v24, v35);

  return (v36)(v29, v31);
}

uint64_t sub_1003B915C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_viewDelegate;
    swift_beginAccess();
    sub_1000D2DFC(v1 + v2, v6, &qword_10190D330);
    if (v7)
    {
      sub_10005EB40(v6, v5);
      sub_100024F64(v6, &qword_10190D330);
      v3 = *(*sub_10005E838(v5, v5[3]) + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_mapView);
      if (v3)
      {
        [v3 setUserTrackingMode:1 animated:1];
      }

      return sub_10004E3D0(v5);
    }

    else
    {
      return sub_100024F64(v6, &qword_10190D330);
    }
  }

  else
  {
    type metadata accessor for NearbyTransitDeparturesProvider();
    sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003B92A8(void *a1, __int128 *a2)
{
  v2 = *a1;
  v55 = *(a2 + 40);
  v40 = a2;
  v44 = *(a2 + 40);
  v56 = *(&v55 + 1);
  sub_1000D2DFC(&v56, &v42, &qword_10191D898);
  v35[5] = sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.getter();
  v41 = v2;
  if (v42 == 1)
  {
    v39 = v2[2];
    if (v39)
    {
      v3 = 0;
      v4 = v2 + 4;
      while (v3 < v2[2])
      {
        v6 = *v4;
        v5 = v4[1];
        v7 = *(v40 + 2);
        v8 = *(v40 + 3);
        v9 = *(v40 + 4);
        v54 = *v40;
        v52 = v8;
        v53 = v7;
        v51 = v9;
        v44 = *v40;
        v38 = v7;
        *&v45 = v7;
        *(&v45 + 1) = v8;
        v37 = v8;
        v36 = v9;
        v46 = v9;
        swift_unknownObjectRetain();

        sub_100147688(&v54, &v42);
        sub_1000D2DFC(&v53, &v42, &qword_10191D8A0);
        sub_1000D2DFC(&v52, &v42, &qword_10191D8A8);
        sub_1000D2DFC(&v51, &v42, &qword_10191D8B0);
        v35[6] = sub_1000CE6B8(&unk_10191D7A0);
        State.wrappedValue.getter();
        v10 = v42;

        swift_unknownObjectRelease();
        if (__PAIR128__(v5, v6) == v10)
        {
          swift_unknownObjectRelease();

LABEL_15:
          sub_100024F64(&v55, &qword_10190A140);
          v21 = *v4;
          v22 = v4[1];
          v24 = v4[2];
          v23 = v4[3];
          v3 = v40;
          v44 = *v40;
          *&v45 = v38;
          *(&v45 + 1) = v37;
          v46 = v36;
          *&v42 = v21;
          *(&v42 + 1) = v22;
          *&v43 = v24;
          *(&v43 + 1) = v23;
          swift_unknownObjectRetain();

          State.wrappedValue.setter();
          sub_1002637C0(&v54);
          sub_100024F64(&v53, &qword_10191D8A0);
          sub_100024F64(&v52, &qword_10191D8A8);
          sub_100024F64(&v51, &qword_10191D8B0);
          goto LABEL_16;
        }

        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_unknownObjectRelease();

        if (v11)
        {
          goto LABEL_15;
        }

        sub_1002637C0(&v54);
        sub_100024F64(&v53, &qword_10191D8A0);
        sub_100024F64(&v52, &qword_10191D8A8);
        sub_100024F64(&v51, &qword_10191D8B0);
        v3 = (v3 + 1);
        v4 += 4;
        v2 = v41;
        if (v39 == v3)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_21:
      swift_once();
      goto LABEL_11;
    }
  }

LABEL_8:
  if (v2[2])
  {
    v12 = v2[4];
    v13 = v2[5];
    v14 = v2[6];
    v15 = v2[7];
    v44 = v55;
    LOBYTE(v42) = 0;
    swift_unknownObjectRetain();

    State.wrappedValue.setter();
    sub_100024F64(&v55, &qword_10190A140);
    v3 = v40;
    v16 = v40[1];
    v44 = *v40;
    v45 = v16;
    v46 = *(v40 + 4);
    *&v42 = v12;
    *(&v42 + 1) = v13;
    *&v43 = v14;
    *(&v43 + 1) = v15;
    sub_1000CE6B8(&unk_10191D7A0);
    State.wrappedValue.setter();
    goto LABEL_16;
  }

  sub_100024F64(&v55, &qword_10190A140);
  v3 = v40;
  if (qword_101906708 != -1)
  {
    goto LABEL_21;
  }

LABEL_11:
  v17 = type metadata accessor for Logger();
  sub_100021540(v17, qword_10195FFB8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Provider has a loaded state but no categories", v20, 2u);
  }

LABEL_16:
  v25 = *(v3 + 2);
  v26 = *(v3 + 3);
  v27 = *(v3 + 4);
  v50 = *v3;
  v48 = v26;
  v49 = v25;
  v46 = v27;
  v47 = v27;
  v44 = *v3;
  *&v45 = v25;
  *(&v45 + 1) = v26;
  sub_100147688(&v50, &v42);
  sub_1000D2DFC(&v49, &v42, &qword_10191D8A0);
  sub_1000D2DFC(&v48, &v42, &qword_10191D8A8);
  sub_1000D2DFC(&v47, &v42, &qword_10191D8B0);
  sub_1000CE6B8(&unk_10191D7A0);
  v28 = State.wrappedValue.getter();
  v44 = v42;
  v45 = v43;
  __chkstk_darwin(v28);
  v35[2] = &v44;
  v29 = sub_1002AFF7C(sub_1003BAC00, v35, v41);

  swift_unknownObjectRelease();
  if ((v29 & 1) == 0 && v41[2])
  {
    v30 = v41[4];
    v31 = v41[5];
    v33 = v41[6];
    v32 = v41[7];
    v44 = *v3;
    *&v45 = v25;
    *(&v45 + 1) = v26;
    v46 = v27;
    *&v42 = v30;
    *(&v42 + 1) = v31;
    *&v43 = v33;
    *(&v43 + 1) = v32;
    swift_unknownObjectRetain();

    State.wrappedValue.setter();
  }

  sub_1002637C0(&v50);
  sub_100024F64(&v49, &qword_10191D8A0);
  sub_100024F64(&v48, &qword_10191D8A8);
  return sub_100024F64(&v47, &qword_10191D8B0);
}

uint64_t sub_1003B9A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CardHeaderSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  v23 = type metadata accessor for LeadingCardHeaderViewModel();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v28._object = 0x80000001012338E0;
  v14._countAndFlagsBits = 0x542079627261654ELL;
  v14._object = 0xEE007469736E6172;
  v15._object = 0x80000001012338C0;
  v28._countAndFlagsBits = 0xD000000000000022;
  v15._countAndFlagsBits = 0xD00000000000001FLL;
  v22[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, qword_1019600D8, v14, v28)._countAndFlagsBits;
  v16 = type metadata accessor for MapsDesignAccessibilityString();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  (*(v5 + 104))(v7, enum case for CardHeaderSize.large(_:), v4);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 64);
  *(v17 + 96) = *(a1 + 80);
  v19 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v19;
  sub_1003BA50C(a1, v24);
  static CardButtonViewModel.close(tintColor:enabled:action:)();

  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v20 = sub_1000CE6B8(&qword_10191D778);
  sub_1003B9E54(v13, a1, (a2 + *(v20 + 44)));
  return (*(v11 + 8))(v13, v23);
}

uint64_t sub_1003B9E54@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v59 = a3;
  v5 = sub_1000CE6B8(&qword_10191D780);
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v52 = &v47[-v6];
  v7 = sub_1000CE6B8(&qword_10191D788);
  __chkstk_darwin(v7 - 8);
  v56 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v47[-v10];
  v12 = type metadata accessor for LeadingCardHeaderViewModel();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for LeadingCardHeader();
  v54 = *(v16 - 8);
  v55 = v16;
  __chkstk_darwin(v16);
  v18 = &v47[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v19);
  v22 = &v47[-v21];
  (*(v13 + 16))(v15, a1, v12, v20);
  v23 = v22;
  LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
  v24 = *(a2 + 7);
  if (v24)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = v24;
    static Published.subscript.getter();

    v26 = *(v69 + 16);

    if (v26 <= 1)
    {
      (*(v57 + 56))(v11, 1, 1, v58);
    }

    else
    {
      v27 = a2[1];
      v60 = *a2;
      v61 = v27;
      *&v62[0] = *(a2 + 4);
      sub_1000CE6B8(&unk_10191D7A0);
      State.projectedValue.getter();
      v51 = v69;
      v50 = *v70;
      v28 = *&v70[24];
      v49 = *&v70[8];
      v60 = *(a2 + 40);
      sub_1000CE6B8(&qword_10190A140);
      State.projectedValue.getter();
      v29 = v69;
      v48 = v70[0];
      type metadata accessor for NearbyTransitDeparturesProvider();
      sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
      v30 = EnvironmentObject.init()();
      v32 = v31;
      v33 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v68 = 0;
      *&v60 = v30;
      *(&v60 + 1) = v32;
      v61 = v51;
      *&v62[0] = v50;
      *(v62 + 8) = v49;
      *(&v62[1] + 1) = v28;
      v63 = v29;
      LOBYTE(v64) = v48;
      BYTE8(v64) = v33;
      *&v65 = v34;
      *(&v65 + 1) = v35;
      *&v66 = v36;
      *(&v66 + 1) = v37;
      v67 = 0;
      sub_1000CE6B8(&qword_10191D7B0);
      sub_1003BA72C();
      v38 = v52;
      View.accessibility(identifier:)();
      v74 = v65;
      v75 = v66;
      v76 = v67;
      *&v70[16] = v62[0];
      v71 = v62[1];
      v72 = v63;
      v73 = v64;
      v69 = v60;
      *v70 = v61;
      sub_100024F64(&v69, &qword_10191D7B0);
      sub_1000F11C4(v38, v11, &qword_10191D780);
      (*(v57 + 56))(v11, 0, 1, v58);
    }

    v39 = v54;
    v40 = v55;
    v41 = *(v54 + 16);
    v53 = v23;
    v41(v18, v23, v55);
    v42 = v56;
    sub_1000D2DFC(v11, v56, &qword_10191D788);
    v43 = v59;
    v41(v59, v18, v40);
    v44 = sub_1000CE6B8(&qword_10191D798);
    sub_1000D2DFC(v42, &v43[*(v44 + 48)], &qword_10191D788);
    sub_100024F64(v11, &qword_10191D788);
    v45 = *(v39 + 8);
    v45(v53, v40);
    sub_100024F64(v42, &qword_10191D788);
    return (v45)(v18, v40);
  }

  else
  {
    type metadata accessor for NearbyTransitDeparturesProvider();
    sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BA544@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1003BA5C4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1003BA634@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1003BA6B4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

unint64_t sub_1003BA72C()
{
  result = qword_10191D7B8;
  if (!qword_10191D7B8)
  {
    sub_1000D6664(&qword_10191D7B0);
    sub_1003BA7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D7B8);
  }

  return result;
}

unint64_t sub_1003BA7B8()
{
  result = qword_10191D7C0;
  if (!qword_10191D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D7C0);
  }

  return result;
}

unint64_t sub_1003BA814()
{
  result = qword_10191D820;
  if (!qword_10191D820)
  {
    sub_1000D6664(&qword_10191D818);
    sub_1003BA898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D820);
  }

  return result;
}

unint64_t sub_1003BA898()
{
  result = qword_10191D828;
  if (!qword_10191D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D828);
  }

  return result;
}

unint64_t sub_1003BA8EC()
{
  result = qword_10191D838;
  if (!qword_10191D838)
  {
    sub_1000D6664(&unk_10191D808);
    sub_1003BA814();
    sub_1003BA978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D838);
  }

  return result;
}

unint64_t sub_1003BA978()
{
  result = qword_10191D840;
  if (!qword_10191D840)
  {
    sub_1000D6664(&qword_10191D7E8);
    sub_1000414C8(&qword_10191D848, &qword_10191D7F0);
    sub_1003BA898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D840);
  }

  return result;
}

unint64_t sub_1003BAA30()
{
  result = qword_10191D850;
  if (!qword_10191D850)
  {
    sub_1000D6664(&qword_10191D7D8);
    sub_1003BA814();
    sub_1000414C8(&qword_10191D830, &qword_10191D7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D850);
  }

  return result;
}

uint64_t sub_1003BAAF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003BAB38@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1003BAB8C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return sub_1001F02A0(v2, v3) & 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1003BAC20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1003BAC44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1003BAC8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003BACF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1003BAD3C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1003BADB0()
{
  result = qword_10191D8B8;
  if (!qword_10191D8B8)
  {
    sub_1000D6664(&qword_10191D758);
    sub_1003BAE68();
    sub_1000414C8(&qword_10191D8D0, &unk_10191D760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D8B8);
  }

  return result;
}

unint64_t sub_1003BAE68()
{
  result = qword_10191D8C0;
  if (!qword_10191D8C0)
  {
    sub_1000D6664(&qword_10191D748);
    sub_1000414C8(&qword_10191D8C8, &qword_10191D740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D8C0);
  }

  return result;
}

unint64_t sub_1003BB01C()
{
  result = qword_10191D960;
  if (!qword_10191D960)
  {
    sub_1000D6664(&qword_10191D958);
    sub_1003BB0A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D960);
  }

  return result;
}

unint64_t sub_1003BB0A8()
{
  result = qword_10191D968;
  if (!qword_10191D968)
  {
    sub_1000D6664(&qword_10191D970);
    sub_1003BAAF0(&qword_10191D978, type metadata accessor for NearbyTransitGroupView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D968);
  }

  return result;
}

unint64_t sub_1003BB17C()
{
  result = qword_10191D9A0;
  if (!qword_10191D9A0)
  {
    sub_1000D6664(&qword_10191D948);
    sub_1003BB234();
    sub_1000414C8(&qword_10191D9D0, &qword_101910650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D9A0);
  }

  return result;
}

unint64_t sub_1003BB234()
{
  result = qword_10191D9A8;
  if (!qword_10191D9A8)
  {
    sub_1000D6664(&unk_10191D990);
    sub_1003BB2EC();
    sub_1000414C8(&qword_10190CD48, &qword_10190CD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D9A8);
  }

  return result;
}

unint64_t sub_1003BB2EC()
{
  result = qword_10191D9B0;
  if (!qword_10191D9B0)
  {
    sub_1000D6664(&qword_10191D988);
    sub_1000D6664(&qword_10191D940);
    type metadata accessor for InsetGroupedListStyle();
    sub_1000414C8(&qword_10191D980, &qword_10191D940);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190CD40, &unk_10191D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D9B0);
  }

  return result;
}

unint64_t sub_1003BB43C()
{
  result = qword_10191D9E8;
  if (!qword_10191D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D9E8);
  }

  return result;
}

void sub_1003BB4D0(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  v58 = *(a1 + 16);
  v55[1] = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v58)
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    v57 = a1 + 32;
    v56 = xmmword_1011E1D60;
    v65 = xmmword_1011E1D30;
    do
    {
      v64 = v5;
      v6 = (v57 + (v4 << 6));
      v7 = v6[1];
      v9 = v6[4];
      v8 = v6[5];
      v10 = v6[3];
      v11 = *(v9 + 16);

      v63 = v8;

      if (v11)
      {
        v12 = 0;
        v13 = v9 + 32;
        v14 = v11 - 1;
        v15 = _swiftEmptyArrayStorage;
        do
        {
          v16 = (v13 + 80 * v12);
          v17 = v12;
          while (1)
          {
            if (v17 >= *(v9 + 16))
            {
              __break(1u);
            }

            v18 = v16[3];
            v19 = *(v16 + 57);
            v20 = v16[1];
            v70 = v16[2];
            v21 = *v16;
            *(v71 + 9) = v19;
            v71[0] = v18;
            v68 = v21;
            v69 = v20;
            v12 = v17 + 1;
            if (v70 == 1)
            {
              break;
            }

            v16 += 5;
            ++v17;
            if (v11 == v12)
            {
              goto LABEL_17;
            }
          }

          v61 = v14;
          v62 = v13;
          sub_100160488(&v68, &v67);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = v15;
          v59 = v10;
          v60 = v7;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1005119B8(0, v15[2] + 1, 1);
            v15 = v66;
          }

          v14 = v61;
          v13 = v62;
          v24 = v15[2];
          v23 = v15[3];
          if (v24 >= v23 >> 1)
          {
            sub_1005119B8((v23 > 1), v24 + 1, 1);
            v14 = v61;
            v13 = v62;
            v15 = v66;
          }

          v15[2] = v24 + 1;
          v25 = &v15[10 * v24];
          v25[2] = v68;
          v26 = v69;
          v27 = v70;
          v28 = v71[0];
          *(v25 + 89) = *(v71 + 9);
          v25[4] = v27;
          v25[5] = v28;
          v25[3] = v26;
          v10 = v59;
          v7 = v60;
        }

        while (v14 != v17);
      }

      else
      {
        v15 = _swiftEmptyArrayStorage;
      }

LABEL_17:
      v62 = v4;

      v29 = v15[2];

      sub_1000CE6B8(&qword_10191D9F0);
      v30 = swift_allocObject();
      *(v30 + 16) = v56;
      sub_1000CE6B8(&qword_10191D9F8);
      inited = swift_initStackObject();
      *(inited + 16) = v65;
      *(inited + 32) = 0x73656E696CLL;
      v32 = inited + 32;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = v11 - v29;
      v33 = sub_1000D1968(inited);
      swift_setDeallocating();
      sub_100024F64(v32, &unk_10191DA00);
      *(v30 + 32) = v33;
      v34 = swift_initStackObject();
      *(v34 + 16) = v65;
      *(v34 + 32) = 0x6C5F64656E6E6970;
      v35 = v34 + 32;
      *(v34 + 40) = 0xEC00000073656E69;
      *(v34 + 48) = v29;
      v36 = sub_1000D1968(v34);
      swift_setDeallocating();
      sub_100024F64(v35, &unk_10191DA00);
      *(v30 + 40) = v36;
      sub_1000CE6B8(&qword_101922E10);
      v37 = swift_initStackObject();
      *(v37 + 16) = v65;
      *(v37 + 32) = 0x70756F7267;
      *(v37 + 40) = 0xE500000000000000;
      *(v37 + 72) = sub_1000CE6B8(&unk_10191DA10);
      *(v37 + 48) = v30;
      v38 = sub_1000D0AA8(v37);
      swift_setDeallocating();
      sub_100024F64(v37 + 32, &qword_101906970);
      v5 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100358320(0, v5[2] + 1, 1, v5);
      }

      v40 = v5[2];
      v39 = v5[3];
      v41 = v62;
      if (v40 >= v39 >> 1)
      {
        v5 = sub_100358320((v39 > 1), v40 + 1, 1, v5);
      }

      v4 = v41 + 1;
      v5[2] = v40 + 1;
      v5[v40 + 4] = v38;
    }

    while (v4 != v58);
  }

  v42 = objc_opt_self();
  sub_1000CE6B8(&qword_10191DA20);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *&v68 = 0;
  v44 = [v42 dataWithJSONObject:isa options:0 error:&v68];

  v45 = v68;
  if (!v44)
  {
    v54 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v51 = objc_opt_self();
    goto LABEL_26;
  }

  v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();
  v50 = v49;
  sub_1000D41B4(v46, v48);
  v51 = objc_opt_self();
  if (!v50)
  {
LABEL_26:
    v53 = 0;
    goto LABEL_27;
  }

  v52 = v51;
  v53 = String._bridgeToObjectiveC()();

  v51 = v52;
LABEL_27:
  [v51 captureUserAction:21 target:44 value:v53];
}

void sub_1003BBAFC()
{
  sub_1001C63DC(319, &unk_10190F610, sub_1001C4D24);
  if (v0 <= 0x3F)
  {
    sub_1003BBBF8();
    if (v1 <= 0x3F)
    {
      sub_1003BE55C(319, &unk_10191DAC0, &type metadata for Bool, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003BBBF8()
{
  if (!qword_10191DAB8)
  {
    type metadata accessor for NearbyTransitDeparturesProvider();
    sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10191DAB8);
    }
  }
}

unint64_t sub_1003BBC8C()
{
  result = qword_10191DB18;
  if (!qword_10191DB18)
  {
    sub_1000D6664(&unk_10191DB20);
    sub_1000D6664(&qword_10191D948);
    sub_1003BB17C();
    swift_getOpaqueTypeConformance2();
    sub_1003BAAF0(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191DB18);
  }

  return result;
}

unint64_t sub_1003BBDB4()
{
  result = qword_10191DB68;
  if (!qword_10191DB68)
  {
    sub_1000D6664(&qword_10191DB50);
    sub_1000414C8(&qword_10191DB70, &qword_10191DB78);
    sub_1000414C8(&unk_10191DB80, &qword_10190A368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191DB68);
  }

  return result;
}

uint64_t sub_1003BBE98()
{
  type metadata accessor for NearbyTransitGroupView(0);

  return sub_1003B5EF4();
}

unint64_t sub_1003BBF18()
{
  result = qword_10191DBC0;
  if (!qword_10191DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191DBC0);
  }

  return result;
}

unint64_t sub_1003BBF7C()
{
  result = qword_10191DBD8;
  if (!qword_10191DBD8)
  {
    sub_1000D6664(&qword_10191DBD0);
    sub_1003BC034();
    sub_1000414C8(&qword_10190B010, &qword_10191DC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191DBD8);
  }

  return result;
}

unint64_t sub_1003BC034()
{
  result = qword_10191DBE0;
  if (!qword_10191DBE0)
  {
    sub_1000D6664(&qword_10191DBE8);
    sub_1000D6664(&qword_10191DBF0);
    type metadata accessor for BorderlessButtonStyle();
    sub_1000414C8(&qword_10191DBF8, &qword_10191DBF0);
    sub_1003BAAF0(&unk_10191DC00, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1003BAAF0(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191DBE0);
  }

  return result;
}

uint64_t sub_1003BC1B0()
{
  v1 = (type metadata accessor for NearbyTransitGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1000CE6B8(&qword_10191DA40);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1003BC32C()
{
  result = qword_10191DC28;
  if (!qword_10191DC28)
  {
    sub_1000D6664(&qword_10191DC20);
    sub_1003BC3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191DC28);
  }

  return result;
}

unint64_t sub_1003BC3B8()
{
  result = qword_10191DC30;
  if (!qword_10191DC30)
  {
    sub_1000D6664(&qword_10191DC38);
    sub_1003BC444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191DC30);
  }

  return result;
}

unint64_t sub_1003BC444()
{
  result = qword_10191DC40;
  if (!qword_10191DC40)
  {
    sub_1000D6664(&qword_10191DC48);
    sub_1003BAAF0(&unk_10191DC50, type metadata accessor for NearbyTransitCollapsedLinesView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191DC40);
  }

  return result;
}

double sub_1003BC520@<D0>(uint64_t a1@<X8>)
{
  sub_1003B38E4(*(v1 + 24), a1);
  v3 = a1 + *(sub_1000CE6B8(&qword_10191DC60) + 36);
  result = 0.0;
  *v3 = xmmword_101200CE0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  return result;
}

unint64_t sub_1003BC57C()
{
  result = qword_10191DC68;
  if (!qword_10191DC68)
  {
    sub_1000D6664(&qword_10191DC60);
    sub_1000D6664(&qword_10191DC70);
    sub_1000D6664(&qword_10191DC78);
    type metadata accessor for NearbyTransitLineSectionView(255);
    sub_1000D6664(&qword_10191DC80);
    sub_1003BAAF0(&qword_10191DC88, type metadata accessor for NearbyTransitLineSectionView);
    sub_1000414C8(&qword_10191DC90, &qword_10191DC80);
    swift_getOpaqueTypeConformance2();
    sub_1003BC77C();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190B010, &qword_10191DC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191DC68);
  }

  return result;
}

unint64_t sub_1003BC77C()
{
  result = qword_10191DC98;
  if (!qword_10191DC98)
  {
    sub_1000D6664(&qword_10191DC78);
    sub_1000414C8(&qword_10191DCA0, &qword_10191DCA8);
    sub_1000414C8(&unk_10191DCB0, &qword_10191D6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191DC98);
  }

  return result;
}

uint64_t sub_1003BC870(uint64_t a1)
{
  v2 = type metadata accessor for NearbyTransitLineSectionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003BC90C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC40;

  return sub_10015D4E8(a1, v4, v5, v7, v6);
}

uint64_t sub_1003BC9CC()
{
  v1 = (type metadata accessor for NearbyTransitGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_1000CE6B8(&qword_10191DA40);
  (*(*(v6 - 8) + 8))(v5, v6);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 73, v2 | 7);
}

id sub_1003BCB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for NearbyTransitGroupView(0) - 8);
  v10 = (*(v9 + 80) + 17) & ~*(v9 + 80);
  return sub_1003B4730(*(v4 + 16), v4 + v10, v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8), a1, a2, a3, a4);
}

uint64_t sub_1003BCC24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1000CE6B8(&qword_10191DCC8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_1003BCC9C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003BCCE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC4C;

  return sub_10015D4E8(a1, v4, v5, v7, v6);
}

uint64_t sub_1003BCDA4()
{
  v1 = *(type metadata accessor for NearbyTransitGroupView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1003B3314(v2);
}

uint64_t sub_1003BCE58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1003BCEE8()
{
  sub_1003BE55C(319, qword_10191DDE0, &type metadata for NearbyTransitLinesSectionViewModel, &type metadata accessor for ArraySlice);
  if (v0 <= 0x3F)
  {
    sub_1003BE5AC(319, &qword_10190A258, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Text.Measurements();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1003BCFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1000CE6B8(a4);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1003BD0B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  result = sub_1000CE6B8(a5);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1003BD178()
{
  sub_1001C63DC(319, &qword_10191DE90, sub_10018C5CC);
  if (v0 <= 0x3F)
  {
    sub_1003BBBF8();
    if (v1 <= 0x3F)
    {
      sub_1003BE55C(319, &unk_10191DAC0, &type metadata for Bool, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003BD290()
{
  sub_1003BD314();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003BD314()
{
  if (!qword_10191DF38[0])
  {
    sub_1000D6664(&unk_10190A7F0);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, qword_10191DF38);
    }
  }
}

uint64_t sub_1003BD378(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1003BD3C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003BD4C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1003BD52C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NearbyTransitCollapsedLinesView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  *&result = sub_1003AAAB0(v1 + v4, v5, a1).n128_u64[0];
  return result;
}

unint64_t sub_1003BD5D8()
{
  result = qword_10191DFE8;
  if (!qword_10191DFE8)
  {
    sub_1000D6664(&qword_10191DFC8);
    sub_1003BAAF0(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191DFE8);
  }

  return result;
}

uint64_t sub_1003BD694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_1001C8AFC(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1003BD6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_1000F0A40(a3, a4, a5 & 1);
  }

  return result;
}

unint64_t sub_1003BD74C()
{
  result = qword_10191E080;
  if (!qword_10191E080)
  {
    sub_1000D6664(&qword_10191E038);
    sub_1000D6664(&qword_10191E088);
    type metadata accessor for BorderlessButtonStyle();
    sub_1000414C8(&qword_10191E090, &qword_10191E088);
    sub_1003BAAF0(&unk_10191DC00, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1003BAAF0(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E080);
  }

  return result;
}

uint64_t sub_1003BD8C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NearbyTransitLineSectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1003ACA70(a1, v6, a2);
}

unint64_t sub_1003BD948()
{
  result = qword_10191E0E0;
  if (!qword_10191E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E0E0);
  }

  return result;
}

uint64_t sub_1003BD99C()
{
  v1 = (type metadata accessor for NearbyTransitLineSectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1000CE6B8(&qword_10190F6E0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1003BDB04(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1003BDB80()
{
  result = qword_10191E0F8;
  if (!qword_10191E0F8)
  {
    sub_1000D6664(&qword_10191E0F0);
    sub_1003BDC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E0F8);
  }

  return result;
}

unint64_t sub_1003BDC0C()
{
  result = qword_10191E100;
  if (!qword_10191E100)
  {
    sub_1000D6664(&qword_10191E108);
    sub_1003BDC98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E100);
  }

  return result;
}

unint64_t sub_1003BDC98()
{
  result = qword_10191E110;
  if (!qword_10191E110)
  {
    sub_1000D6664(&qword_10191E118);
    sub_1000414C8(&qword_10191E120, &qword_10191E128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E110);
  }

  return result;
}

unint64_t sub_1003BDD70()
{
  result = qword_10191E170;
  if (!qword_10191E170)
  {
    sub_1000D6664(&qword_10191E168);
    sub_1003BDDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E170);
  }

  return result;
}

unint64_t sub_1003BDDFC()
{
  result = qword_10191E178;
  if (!qword_10191E178)
  {
    sub_1000D6664(&qword_10191E180);
    sub_1003BDE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E178);
  }

  return result;
}

unint64_t sub_1003BDE88()
{
  result = qword_10191E188;
  if (!qword_10191E188)
  {
    sub_1000D6664(&qword_10191E190);
    sub_1003BAAF0(&qword_10191E198, type metadata accessor for NearbyTransitDepartureView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E188);
  }

  return result;
}

uint64_t sub_1003BDF64()
{
  v1 = (type metadata accessor for NearbyTransitLineSectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_1000CE6B8(&qword_10190F6E0);
  (*(*(v6 - 8) + 8))(v5, v6);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 88, v2 | 7);
}

uint64_t sub_1003BE0E8(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for NearbyTransitLineSectionView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1(v1 + v3, v4);
}

unint64_t sub_1003BE190()
{
  result = qword_10191E1C0;
  if (!qword_10191E1C0)
  {
    sub_1000D6664(&qword_10191E1B8);
    sub_1003BE21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E1C0);
  }

  return result;
}

unint64_t sub_1003BE21C()
{
  result = qword_10191E1C8;
  if (!qword_10191E1C8)
  {
    sub_1000D6664(&qword_10191E1D0);
    sub_1003BE2A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E1C8);
  }

  return result;
}

unint64_t sub_1003BE2A8()
{
  result = qword_10191E1D8;
  if (!qword_10191E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E1D8);
  }

  return result;
}

__n128 sub_1003BE31C(uint64_t a1, __int128 *a2)
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
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1003BE358(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1003BE3A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1003BE444()
{
  sub_1003BE55C(319, &qword_10191E288, &type metadata for NearbyTransitDeparturesViewModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_1003BBBF8();
    if (v1 <= 0x3F)
    {
      sub_1003BE5AC(319, &qword_10190A258, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_1003BE5AC(319, &qword_10191E290, &type metadata accessor for DynamicTypeSize);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003BE55C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1003BE5AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003BE628()
{
  sub_1003BE5AC(319, &qword_10190A258, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Font.TextStyle();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003BE708()
{
  sub_1003BE5AC(319, &qword_10190A258, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_1001C63DC(319, &unk_10190F610, sub_1001C4D24);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1003BE7DC()
{
  result = qword_10191E408;
  if (!qword_10191E408)
  {
    sub_1000D6664(&qword_10191E410);
    sub_1000D6664(&qword_10191E018);
    sub_1000414C8(&qword_10191E030, &qword_10191E018);
    swift_getOpaqueTypeConformance2();
    sub_1003BAAF0(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E408);
  }

  return result;
}

unint64_t sub_1003BE908()
{
  result = qword_10191E418;
  if (!qword_10191E418)
  {
    sub_1000D6664(&qword_10191E420);
    sub_1000D6664(&qword_10191E1E8);
    sub_1000414C8(&qword_10191E1F8, &qword_10191E1E8);
    swift_getOpaqueTypeConformance2();
    sub_1003BAAF0(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E418);
  }

  return result;
}

unint64_t sub_1003BEAA4()
{
  result = qword_10191E478;
  if (!qword_10191E478)
  {
    sub_1000D6664(&qword_10191E470);
    sub_100316728();
    sub_1000414C8(&unk_1019105B0, &qword_10190C5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E478);
  }

  return result;
}

uint64_t sub_1003BEBC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1003BEC00(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1003BEC40()
{
  result = qword_10191E598;
  if (!qword_10191E598)
  {
    sub_1000D6664(&qword_10191E558);
    sub_1003BECF8();
    sub_1000414C8(&unk_10190F590, &qword_10191E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E598);
  }

  return result;
}

unint64_t sub_1003BECF8()
{
  result = qword_10191E5A0;
  if (!qword_10191E5A0)
  {
    sub_1000D6664(&qword_10191E588);
    sub_1003BEDB0();
    sub_1000414C8(&qword_10191D9D0, &qword_101910650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E5A0);
  }

  return result;
}

unint64_t sub_1003BEDB0()
{
  result = qword_10191E5A8;
  if (!qword_10191E5A8)
  {
    sub_1000D6664(&qword_10191E580);
    sub_1003BEE3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E5A8);
  }

  return result;
}

unint64_t sub_1003BEE3C()
{
  result = qword_10191E5B0;
  if (!qword_10191E5B0)
  {
    sub_1000D6664(&qword_10191E578);
    sub_1003BEEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E5B0);
  }

  return result;
}

unint64_t sub_1003BEEC8()
{
  result = qword_10191E5B8;
  if (!qword_10191E5B8)
  {
    sub_1000D6664(&qword_10191E570);
    sub_1000414C8(&qword_10191E5C0, &unk_10191E5C8);
    sub_1000414C8(&unk_10191DCB0, &qword_10191D6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E5B8);
  }

  return result;
}

unint64_t sub_1003BEFAC()
{
  result = qword_10191E5F8;
  if (!qword_10191E5F8)
  {
    sub_1000D6664(&qword_10191E600);
    sub_1000414C8(&qword_10191E498, &qword_10191E430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E5F8);
  }

  return result;
}

unint64_t sub_1003BF064()
{
  result = qword_10191E608;
  if (!qword_10191E608)
  {
    sub_1000D6664(&qword_10191E610);
    sub_1000D6664(&qword_10191E118);
    sub_1003BDC98();
    swift_getOpaqueTypeConformance2();
    sub_1003BAAF0(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E608);
  }

  return result;
}

unint64_t sub_1003BF15C()
{
  result = qword_10191E618;
  if (!qword_10191E618)
  {
    sub_1000D6664(&qword_10191E4F0);
    sub_1000D6664(&qword_10191E4E0);
    sub_1000414C8(&unk_10191E500, &qword_10191E4E0);
    swift_getOpaqueTypeConformance2();
    sub_1003BAAF0(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E618);
  }

  return result;
}

unint64_t sub_1003BF288()
{
  result = qword_10191E620;
  if (!qword_10191E620)
  {
    sub_1000D6664(&qword_10191E628);
    sub_1000D6664(&qword_10191E558);
    sub_1003BEC40();
    swift_getOpaqueTypeConformance2();
    sub_1003BAAF0(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E620);
  }

  return result;
}

uint64_t sub_1003BF760@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_sortOptions];
  if (v4 >> 62)
  {
    v31 = *&v1[OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_sortOptions];
    v32 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v31;
    v5 = v32;
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = v4;
    *&v42 = _swiftEmptyArrayStorage;
    result = sub_1005111A4(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v33 = v1;
    v34 = a1;
    v9 = 0;
    v6 = v42;
    v10 = v7;
    v35 = v7 & 0xC000000000000001;
    v11 = v7;
    do
    {
      if (v35)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v10 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = *&v12[OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_id];
      v15 = *&v12[OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_name];
      v16 = *&v12[OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_name + 8];

      *&v42 = v6;
      v18 = v6[2];
      v17 = v6[3];
      if (v18 >= v17 >> 1)
      {
        sub_1005111A4((v17 > 1), v18 + 1, 1);
        v6 = v42;
      }

      ++v9;
      v6[2] = v18 + 1;
      v19 = &v6[3 * v18];
      v19[4] = v14;
      v19[5] = v15;
      v19[6] = v16;
      v10 = v11;
    }

    while (v5 != v9);
    v2 = v33;
    a1 = v34;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = *&v2[OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_initialSelectedSortOptionIndex];
  v38 = 0uLL;
  *&v39 = 0;
  v23 = v2;

  sub_1000CE6B8(&qword_101911328);
  State.init(wrappedValue:)();
  v24 = v42;
  v26 = v43;
  v25 = v44;
  if ((v22 & 0x8000000000000000) == 0 && v22 < v6[2])
  {
    v27 = &v6[3 * v22];
    v36 = *(v27 + 2);
    v28 = v27[6];

    v24 = v36;
    v25 = 0;
    v26 = v28;
  }

  *&v38 = sub_1003C0048;
  *(&v38 + 1) = v20;
  *&v39 = sub_1003C0050;
  *(&v39 + 1) = v21;
  *v40 = v6;
  *&v40[8] = v24;
  *&v40[24] = v26;
  v41 = v25;
  *&v42 = sub_1003C0048;
  *(&v42 + 1) = v20;
  v43 = sub_1003C0050;
  v44 = v21;
  v45 = v6;
  v46 = v24;
  v47 = v26;
  v48 = v25;
  sub_100329194(&v38, v37);
  sub_1003C0058(&v42);

  a1[3] = &type metadata for GenericSortPickerView;
  a1[4] = sub_1003C00AC();
  result = swift_allocObject();
  *a1 = result;
  v29 = *&v40[16];
  *(result + 48) = *v40;
  *(result + 64) = v29;
  *(result + 80) = v41;
  v30 = v39;
  *(result + 16) = v38;
  *(result + 32) = v30;
  return result;
}

id sub_1003BFA68(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler];
  if (v1)
  {
    v2 = *&a1[OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler + 8];

    v1(v3);

    return sub_1000D3B90(v1, v2);
  }

  else
  {

    return [a1 handleDismissAction:a1];
  }
}

void sub_1003BFAEC(unint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_onDone);
  v5 = *(Strong + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_sortOptions);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v6 = *(v5 + 8 * a1 + 32);
LABEL_6:
  v7 = v6;
  v4();

  v8 = *&v3[OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler];
  if (v8)
  {
    v9 = *&v3[OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler + 8];
    v10 = v3;
    v11 = sub_1000CD9D4(v8);
    v8(v11);

    sub_1000D3B90(v8, v9);
  }

  else
  {
    [v3 handleDismissAction:v3];
  }
}

int *sub_1003BFC0C@<X0>(uint64_t a1@<X8>)
{
  sub_1000CE6B8(&unk_10190B9A0);
  type metadata accessor for UIHostingControllerSizingOptions();
  *(swift_allocObject() + 16) = xmmword_1011E1D60;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  sub_1001D2F9C();
  sub_1000CE6B8(&unk_10190B9B0);
  sub_100124984();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  *(a1 + result[5]) = 1;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 2;
  *(a1 + result[7]) = 0;
  return result;
}

void sub_1003BFD60()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  if (![PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v0))
  {
LABEL_4:
    v3 = [v0 cardPresentationController];
    if (v3)
    {
      v4 = v3;
      [v3 setPresentedModally:1];

      v5 = [v0 cardPresentationController];
      if (v5)
      {
        v6 = v5;
        [v5 setDefaultContaineeLayout:5];

        v7 = [v0 cardPresentationController];
        if (v7)
        {
          v8 = v7;
          [v7 setTakesAvailableHeight:1];

          v9 = [v0 cardPresentationController];
          if (v9)
          {
            v10 = v9;
            [v9 setHideGrabber:1];

            v11 = [v0 cardPresentationController];
            if (v11)
            {
              v12 = v11;
              [v11 setUseDefaultLayoutWhenCalculatingBottomInsetForFloatingControls:1];

              return;
            }

            goto LABEL_14;
          }

LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  v1 = [v0 cardPresentationController];
  if (v1)
  {
    v2 = v1;
    [v1 setAllowResizeInFloatingStyle:1];

    goto LABEL_4;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1003BFF68()
{

  v1 = *(v0 + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler);
  v2 = *(v0 + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler + 8);

  return sub_1000D3B90(v1, v2);
}

unint64_t sub_1003C00AC()
{
  result = qword_10191E6B0;
  if (!qword_10191E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E6B0);
  }

  return result;
}

void *sub_1003C0290()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = Strong;
  v2 = [Strong searchPinsManager];

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = [v2 allSearchResults];
  if (result)
  {
    v4 = result;
    sub_10019152C();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003C04A8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = [Strong *a4];

  return v6;
}

void sub_1003C087C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = objc_allocWithZone(MapsTransitIncidentsContaineeViewController);
    sub_1000CE6B8(&unk_10190A7F0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v5 = [v3 initWithTransitIncidents:isa];

    [v5 setContaineeDelegate:v0];
    [v2 setNeedsUpdateComponent:@"cards" animated:1];
  }
}

uint64_t sub_1003C0978()
{
  swift_getKeyPath();
  sub_1003C1D5C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 104);
}

uint64_t sub_1003C09E8()
{
  swift_getKeyPath();
  sub_1003C1D5C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 105);
}

uint64_t sub_1003C0A58()
{
  swift_getKeyPath();
  sub_1003C1D5C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 106);
}

uint64_t sub_1003C0AC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1003C1D5C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10005EB40(v1 + 32, a1);
}

uint64_t sub_1003C0B58()
{
  swift_getKeyPath();
  sub_1003C1D5C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1003C0BD8()
{
  swift_getKeyPath();
  sub_1003C1D5C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_1003C0C58()
{
  swift_getKeyPath();
  sub_1003C1D5C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 111);
}

uint64_t sub_1003C0CC8()
{
  swift_getKeyPath();
  sub_1003C1D5C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 110);
}

uint64_t sub_1003C0D38()
{
  swift_getKeyPath();
  sub_1003C1D5C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 112);
}

uint64_t sub_1003C0DA8(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_1003C1E34((a1 + 32), a2);
  return swift_endAccess();
}

uint64_t sub_1003C0E0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72) == a1 && *(v2 + 80) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003C1D5C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1003C0F3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88) == a1 && *(v2 + 96) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 88) = a1;
    *(v2 + 96) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003C1D5C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1003C106C(uint64_t result)
{
  if (*(v1 + 104) == (result & 1))
  {
    *(v1 + 104) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003C1D5C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1003C114C(uint64_t result)
{
  if (*(v1 + 105) == (result & 1))
  {
    *(v1 + 105) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003C1D5C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1003C122C(uint64_t result)
{
  if (*(v1 + 106) == (result & 1))
  {
    *(v1 + 106) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003C1D5C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1003C130C(uint64_t result)
{
  if (*(v1 + 110) == (result & 1))
  {
    *(v1 + 110) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003C1D5C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1003C13EC(uint64_t result)
{
  if (*(v1 + 111) == (result & 1))
  {
    *(v1 + 111) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003C1D5C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1003C14CC(uint64_t result)
{
  if (*(v1 + 112) == (result & 1))
  {
    *(v1 + 112) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003C1D5C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1003C15AC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps10PinnedItem___observationRegistrar;
  ObservationRegistrar.init()();
  v5 = [a1 uniqueIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *(v2 + 16) = v7;
    *(v2 + 24) = v9;
    *(v2 + 120) = a1;
    v10 = a1;
    v11 = [v10 proposedFavoriteStyleAttributes];
    LOBYTE(v7) = [v10 isSetupPlaceholder];
    *(v2 + 56) = &type metadata for StyleAttributesImageProvider;
    *(v2 + 64) = sub_10017F24C();
    *(v2 + 32) = v11;
    *(v2 + 40) = 0;
    *(v2 + 41) = v7;
    v12 = v11;
    v13 = sub_100546984();
    if (v13)
    {
      v14 = MapsSuggestionsLocalizedNearbyTransitFullString();
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0xE000000000000000;
      }

      *(v2 + 72) = v16;
      *(v2 + 80) = v18;
      v24 = MapsSuggestionsLocalizedNearbyTransitFullSubtitleString();
      if (!v24)
      {
        v25 = 0;
        v27 = 0xE000000000000000;
        goto LABEL_10;
      }
    }

    else
    {
      v20 = [v10 placeName];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      *(v2 + 72) = v21;
      *(v2 + 80) = v23;
      v24 = [v10 shortAddress];
    }

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

LABEL_10:
    *(v2 + 88) = v25;
    *(v2 + 96) = v27;
    *(v2 + 104) = ((v13 | [v10 isSetupPlaceholder]) & 1) == 0;
    *(v2 + 105) = 1;
    *(v2 + 106) = [v10 isSetupPlaceholder];
    *(v2 + 107) = [v10 type] == 2;
    *(v2 + 108) = [v10 type] == 5;
    *(v2 + 109) = [v10 type] == 3;
    *(v2 + 110) = v13 & 1;
    v28 = [v10 isSetupPlaceholder];

    *(v2 + 111) = v28;
    *(v2 + 112) = 0;
    return v2;
  }

  v19 = type metadata accessor for ObservationRegistrar();
  (*(*(v19 - 8) + 8))(v1 + v4, v19);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1003C18A0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps10PinnedItem___observationRegistrar;
  ObservationRegistrar.init()();
  v5 = [a1 uniqueIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *(v2 + 16) = v7;
    *(v2 + 24) = v9;
    *(v2 + 120) = a1;
    v10 = a1;
    v11 = [v10 proposedFavoriteStyleAttributes];
    *(v2 + 56) = &type metadata for StyleAttributesImageProvider;
    *(v2 + 64) = sub_10017F24C();
    *(v2 + 32) = v11;
    *(v2 + 40) = 0;
    v12 = v11;
    v13 = sub_100546984();
    if (v13)
    {
      v14 = MapsSuggestionsLocalizedNearbyTransitFullString();
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0xE000000000000000;
      }

      *(v2 + 72) = v16;
      *(v2 + 80) = v18;
      v24 = MapsSuggestionsLocalizedNearbyTransitFullSubtitleString();
      if (!v24)
      {

        v26 = 0;
        v28 = 0xE000000000000000;
        goto LABEL_10;
      }
    }

    else
    {
      v20 = [v10 placeName];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      *(v2 + 72) = v21;
      *(v2 + 80) = v23;
      v24 = [v10 shortAddress];
    }

    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

LABEL_10:
    *(v2 + 88) = v26;
    *(v2 + 96) = v28;
    *(v2 + 104) = 0x10000;
    *(v2 + 108) = 0;
    *(v2 + 110) = v13 & 1;
    *(v2 + 111) = 256;
    return v2;
  }

  v19 = type metadata accessor for ObservationRegistrar();
  (*(*(v19 - 8) + 8))(v1 + v4, v19);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1003C1B00()
{

  sub_10004E3D0(v0 + 32);

  v1 = OBJC_IVAR____TtC4Maps10PinnedItem___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PinnedItem()
{
  result = qword_10191E750;
  if (!qword_10191E750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003C1C18()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1003C1CF8()
{
  result = qword_10191E850;
  if (!qword_10191E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E850);
  }

  return result;
}

unint64_t sub_1003C1D5C()
{
  result = qword_10190B848;
  if (!qword_10190B848)
  {
    type metadata accessor for PinnedItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B848);
  }

  return result;
}

uint64_t sub_1003C1DF4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 72) = v0[3];
  *(v1 + 80) = v2;
}

uint64_t *sub_1003C1E34(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

void sub_1003C2050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_1003C20E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003C2104, 0, 0);
}

uint64_t sub_1003C2104()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1003C21FC;
  v3 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x70616D2874696E69, 0xEE00293A6D657449, sub_1003C36EC, v1, &type metadata for String);
}

uint64_t sub_1003C21FC()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100171598, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1003C2338(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000CE6B8(&qword_10191E938);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  _s4Maps29LibraryDataOperationsProviderC17existingPlaceItem06forMapH010completionySo05MKMapH0C_yAA0bgH10Compatible_pSg_s5Error_pSgtctF_0(a3, sub_1003C36F4, v11);
}

id sub_1003C2484(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [a1 placeItemNote];
    if (v3)
    {
      v4 = v3;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (String.count.getter() >= 1)
      {
        sub_1000CE6B8(&qword_10191E938);
        return CheckedContinuation.resume(returning:)();
      }
    }
  }

  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    result = GEOErrorDomain();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    [objc_allocWithZone(NSError) initWithDomain:result code:-8 userInfo:0];
  }

  sub_1000CE6B8(&qword_10191E938);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1003C2608()
{
  *(v0 + 24) = OBJC_IVAR____TtC4Maps23PlaceNoteSharingSession_logger;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Preloading note starte", v3, 2u);
  }

  v6 = (&async function pointer to dispatch thunk of ItemPreloader.preload() + async function pointer to dispatch thunk of ItemPreloader.preload());
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1003C2740;

  return v6();
}

uint64_t sub_1003C2740()
{

  return _swift_task_switch(sub_1003C283C, 0, 0);
}

uint64_t sub_1003C283C()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Preloading note ended", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1003C2A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  return _swift_task_switch(sub_1003C2A3C, 0, 0);
}

uint64_t sub_1003C2A3C()
{
  *(v0 + 56) = OBJC_IVAR____TtC4Maps23PlaceNoteSharingSession_logger;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching note", v3, 2u);
  }

  v6 = (&async function pointer to dispatch thunk of ItemPreloader.fetch() + async function pointer to dispatch thunk of ItemPreloader.fetch());
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1003C2B7C;

  return v6(v0 + 16);
}

uint64_t sub_1003C2B7C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1003C2DF4;
  }

  else
  {
    v2 = sub_1003C2C90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C2C90()
{
  v10 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10004DEB8(v2, v1, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetched note URL %s", v5, 0xCu);
    sub_10004E3D0(v6);
  }

  (*(v0 + 40))(v2, v1, 0);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003C2DF4()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Notes ended with error %@", v3, 0xCu);
    sub_1000DCD10(v4);
  }

  v6 = v0[9];
  v7 = v0[5];

  swift_errorRetain();
  v7(0, 0, v6);

  v8 = v0[1];

  return v8();
}

uint64_t type metadata accessor for PlaceNoteSharingSession()
{
  result = qword_10191E8C0;
  if (!qword_10191E8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003C31D0()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003C3280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC4C;

  return sub_1003C2A18(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003C3348()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10191E860);
  sub_100021540(v0, qword_10191E860);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003C33D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_1003C25E8(a1, v4, v5, v6);
}

id sub_1003C3484(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC4Maps23PlaceNoteSharingSession_mapItem] = a1;
  type metadata accessor for MapsSyncStore();
  v5 = a1;
  v6 = static MapsSyncStore.sharedStore.getter();
  v7 = type metadata accessor for LibraryDataOperationsProvider();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = v6;
  v18.receiver = v8;
  v18.super_class = v7;
  v9 = objc_msgSendSuper2(&v18, "init");
  *&v2[OBJC_IVAR____TtC4Maps23PlaceNoteSharingSession_libraryOperationsProvider] = v9;
  v10 = qword_1019067F8;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100021540(v12, qword_10191E860);
  (*(*(v12 - 8) + 16))(&v2[OBJC_IVAR____TtC4Maps23PlaceNoteSharingSession_logger], v13, v12);
  sub_1000CE6B8(&qword_10191E930);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v5;
  v15 = v5;
  *&v2[OBJC_IVAR____TtC4Maps23PlaceNoteSharingSession_preloader] = ItemPreloader.__allocating_init(provider:)();
  v17.receiver = v2;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_1003C3640(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10003AC4C;

  return sub_1003C20E0(a1, v5, v4);
}

id sub_1003C36F4(void *a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_10191E938);

  return sub_1003C2484(a1, a2);
}

uint64_t type metadata accessor for HomePinnedItemRowView()
{
  result = qword_10191E998;
  if (!qword_10191E998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003C37F4()
{
  sub_1003C38A8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HomePinnedItemCarouselViewModel();
    if (v1 <= 0x3F)
    {
      sub_100174E30();
      if (v2 <= 0x3F)
      {
        type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003C38A8()
{
  if (!qword_10190BC08)
  {
    type metadata accessor for ContentSizeCategory();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10190BC08);
    }
  }
}

uint64_t sub_1003C391C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_10190BC28);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1003C40E4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ContentSizeCategory();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1003C3B04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v37 = type metadata accessor for HomePinnedItemCarouselRow();
  __chkstk_darwin(v37);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&qword_10191E9D8);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v36 = type metadata accessor for HomePinnedItemShelfView();
  __chkstk_darwin(v36);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContentSizeCategory();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003C391C(v13);
  v14 = ContentSizeCategory.isAccessibilityCategory.getter();
  (*(v11 + 8))(v13, v10);
  v15 = type metadata accessor for HomePinnedItemRowView();
  v16 = *(v2 + v15[5]);
  v17 = (v2 + v15[6]);
  v19 = *v17;
  v18 = v17[1];
  v20 = v17[2];
  LOBYTE(v17) = *(v17 + 24);
  v41 = v19;
  v42 = v18;
  v43 = v20;
  v44 = v17;
  v21 = v16;
  sub_1000CE6B8(&qword_10190DAE0);
  Binding.projectedValue.getter();
  v34 = v38;
  v22 = v39;
  if (v14)
  {
    v23 = v40;
    v24 = v15[7];
    v25 = *(v36 + 24);
    v26 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
    (*(*(v26 - 8) + 16))(&v9[v25], v2 + v24, v26);
    *v9 = v21;
    *(v9 + 8) = v34;
    *(v9 + 3) = v22;
    v9[32] = v23;
    v27 = type metadata accessor for HomePinnedItemShelfView;
    sub_1003C401C(v9, v7, type metadata accessor for HomePinnedItemShelfView);
    swift_storeEnumTagMultiPayload();
    sub_1003C3FD4(&qword_10191E9E0, type metadata accessor for HomePinnedItemShelfView);
    sub_1003C3FD4(&qword_10191E9E8, type metadata accessor for HomePinnedItemCarouselRow);
    _ConditionalContent<>.init(storage:)();
    v28 = v9;
  }

  else
  {
    v29 = v40;
    v30 = v15[7];
    v31 = *(v37 + 24);
    v32 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
    (*(*(v32 - 8) + 16))(&v4[v31], v2 + v30, v32);
    *v4 = v21;
    *(v4 + 8) = v34;
    *(v4 + 3) = v22;
    v4[32] = v29;
    v27 = type metadata accessor for HomePinnedItemCarouselRow;
    sub_1003C401C(v4, v7, type metadata accessor for HomePinnedItemCarouselRow);
    swift_storeEnumTagMultiPayload();
    sub_1003C3FD4(&qword_10191E9E0, type metadata accessor for HomePinnedItemShelfView);
    sub_1003C3FD4(&qword_10191E9E8, type metadata accessor for HomePinnedItemCarouselRow);
    _ConditionalContent<>.init(storage:)();
    v28 = v4;
  }

  return sub_1003C4084(v28, v27);
}

uint64_t sub_1003C3FD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003C401C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003C4084(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003C40E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190BC28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003C4154()
{
  result = qword_10191E9F0;
  if (!qword_10191E9F0)
  {
    sub_1000D6664(&qword_10191E9F8);
    sub_1003C3FD4(&qword_10191E9E0, type metadata accessor for HomePinnedItemShelfView);
    sub_1003C3FD4(&qword_10191E9E8, type metadata accessor for HomePinnedItemCarouselRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191E9F0);
  }

  return result;
}

void sub_1003C4240()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      while (1)
      {
        if (v5 >= *(v2 + 16))
        {
          __break(1u);
          return;
        }

        v6 = *(v2 + 32 + 8 * v5);
        swift_beginAccess();
        v7 = *(v1 + 72);
        v8 = *(v7 + 16);
        v9 = (v6 & 0x1FFFFFFFFFFFFFFFLL);
        if (v8)
        {
          v10 = sub_1002971C0(v6);
          if (v11)
          {
            break;
          }
        }

        ++v5;
        swift_endAccess();

        if (v3 == v5)
        {
          goto LABEL_11;
        }
      }

      v12 = *(*(v7 + 56) + 8 * v10);
      swift_endAccess();
      v13 = v12;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v4 = v5 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v3 - 1 != v5);
  }

LABEL_11:
}

void sub_1003C43C8(unint64_t a1)
{
  if (a1 >> 61)
  {
    swift_beginAccess();
    v3 = *(v1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 16) = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_10035614C(0, *(v3 + 2) + 1, 1, v3);
      *(v1 + 16) = v3;
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      v17 = sub_10035614C((v5 > 1), v6 + 1, 1, v3);
      v7 = v6 + 1;
      v3 = v17;
    }

    *(v3 + 2) = v7;
    *&v3[8 * v6 + 32] = a1;
    *(v1 + 16) = v3;
    swift_endAccess();
    v8 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
  }

  else
  {
    swift_beginAccess();
    v10 = *(v1 + 16);
    v11 = *(v10 + 2);
    if (v11 && !(*&v10[8 * v11 + 24] >> 61))
    {
      sub_1003C45C8(a1);
      return;
    }

    swift_beginAccess();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 16) = v10;
    if ((v12 & 1) == 0)
    {
      v10 = sub_10035614C(0, v11 + 1, 1, v10);
      *(v1 + 16) = v10;
    }

    v14 = *(v10 + 2);
    v13 = *(v10 + 3);
    v15 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      v18 = sub_10035614C((v13 > 1), v14 + 1, 1, v10);
      v15 = v14 + 1;
      v10 = v18;
    }

    *(v10 + 2) = v15;
    *&v10[8 * v14 + 32] = a1;
    *(v1 + 16) = v10;
    swift_endAccess();
    v16 = a1;
  }

  sub_1003C486C();
  v9 = *(v1 + 40);
  if (v9)
  {

    v9(v1);
    sub_1000588AC(v9);
  }
}

void sub_1003C45C8(unint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 8 * v5 + 24);
    swift_beginAccess();
    v7 = v1[9];
    v8 = *(v7 + 16);
    v9 = (v6 & 0x1FFFFFFFFFFFFFFFLL);
    if (!v8 || (v10 = sub_1002971C0(v6), (v11 & 1) == 0))
    {
      swift_endAccess();
LABEL_13:

      return;
    }

    v12 = *(*(v7 + 56) + 8 * v10);
    swift_endAccess();
    swift_beginAccess();
    v13 = v12;

    v14 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v2[9];
    v2[9] = 0x8000000000000000;
    sub_10012AEF0(v15, a1, isUniquelyReferenced_nonNull_native);

    v2[9] = v31;
    swift_endAccess();
    swift_beginAccess();
    v17 = v2[2];
    if (*(v17 + 2))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v18 = *(v17 + 2);
        if (v18)
        {
          goto LABEL_7;
        }

        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    v17 = sub_100416618(v17);
    v18 = *(v17 + 2);
    if (v18)
    {
LABEL_7:
      v19 = v18 - 1;
      v20 = *&v17[8 * v19 + 32];
      *(v17 + 2) = v19;
      v2[2] = v17;
      swift_endAccess();

      swift_beginAccess();
      v17 = v2[2];
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v2[2] = v17;
      if (v21)
      {
LABEL_8:
        v22 = *(v17 + 2);
        v23 = *(v17 + 3);
        v24 = v22 + 1;
        if (v22 >= v23 >> 1)
        {
          v28 = v17;
          v29 = *(v17 + 2);
          v30 = sub_10035614C((v23 > 1), v22 + 1, 1, v28);
          v22 = v29;
          v17 = v30;
        }

        *(v17 + 2) = v24;
        *&v17[8 * v22 + 32] = a1;
        v2[2] = v17;
        swift_endAccess();
        v25 = v2[7];
        if (v25)
        {
          v26 = v14;
          sub_1000CD9D4(v25);
          v25(v15, a1);

          sub_1000588AC(v25);
          return;
        }

        v27 = v14;

        goto LABEL_13;
      }

LABEL_19:
      v17 = sub_10035614C(0, *(v17 + 2) + 1, 1, v17);
      v2[2] = v17;
      goto LABEL_8;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_1003C486C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v46 = *(v2 + 16);
  if (!v46)
  {
    v4 = _swiftEmptyDictionarySingleton;
LABEL_37:
    swift_beginAccess();
    *(v1 + 72) = v4;
  }

  v3 = 0;
  v4 = _swiftEmptyDictionarySingleton;
  while (v3 < *(v2 + 16))
  {
    v7 = *(v2 + 8 * v3 + 32);
    swift_beginAccess();
    v8 = *(v1 + 72);
    v9 = *(v8 + 16);
    v10 = (v7 & 0x1FFFFFFFFFFFFFFFLL);
    if (v9)
    {
      v11 = sub_1002971C0(v7);
      if (v12)
      {
        v13 = *(*(v8 + 56) + 8 * v11);
        swift_endAccess();
        v14 = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v4;
        v16 = sub_1002971C0(v7);
        v18 = v4[2];
        v19 = (v17 & 1) == 0;
        v20 = __OFADD__(v18, v19);
        v21 = v18 + v19;
        if (v20)
        {
          goto LABEL_40;
        }

        v22 = v17;
        if (v4[3] < v21)
        {
          sub_100126F78(v21, isUniquelyReferenced_nonNull_native);
          v16 = sub_1002971C0(v7);
          if ((v22 & 1) != (v23 & 1))
          {
            goto LABEL_43;
          }

          goto LABEL_28;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_28:
          if ((v22 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v43 = v16;
          sub_10012C924();
          v16 = v43;
          v4 = v47;
          if ((v22 & 1) == 0)
          {
LABEL_33:
            v4[(v16 >> 6) + 8] |= 1 << v16;
            *(v4[6] + 8 * v16) = v7;
            *(v4[7] + 8 * v16) = v14;

            v44 = v4[2];
            v20 = __OFADD__(v44, 1);
            v39 = v44 + 1;
            if (v20)
            {
              goto LABEL_42;
            }

LABEL_34:
            v4[2] = v39;
            goto LABEL_5;
          }
        }

        v40 = v4[7];
        v41 = *(v40 + 8 * v16);
        *(v40 + 8 * v16) = v14;

        goto LABEL_5;
      }
    }

    swift_endAccess();
    v24 = *(v1 + 24);
    if (!v24)
    {
      v35 = sub_1002971C0(v7);
      if (v36)
      {
        v37 = v35;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_10012C924();
        }

        sub_1003C50E0(v37, v4);
      }

      goto LABEL_4;
    }

    v25 = v24(v7);
    sub_1000588AC(v24);
    v26 = v25;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v4;
    v28 = sub_1002971C0(v7);
    v30 = v4[2];
    v31 = (v29 & 1) == 0;
    v20 = __OFADD__(v30, v31);
    v32 = v30 + v31;
    if (v20)
    {
      goto LABEL_39;
    }

    v33 = v29;
    if (v4[3] >= v32)
    {
      if ((v27 & 1) == 0)
      {
        v42 = v28;
        sub_10012C924();
        v28 = v42;
        v4 = v48;
        if ((v33 & 1) == 0)
        {
LABEL_24:
          v4[(v28 >> 6) + 8] |= 1 << v28;
          *(v4[6] + 8 * v28) = v7;
          *(v4[7] + 8 * v28) = v26;

          v38 = v4[2];
          v20 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v20)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_100126F78(v32, v27);
      v28 = sub_1002971C0(v7);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_43;
      }
    }

    if ((v33 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_3:
    v5 = v4[7];
    v6 = *(v5 + 8 * v28);
    *(v5 + 8 * v28) = v26;

LABEL_4:
LABEL_5:
    if (v46 == ++v3)
    {

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003C4C44()
{

  sub_1000588AC(v0[3]);
  sub_1000588AC(v0[5]);
  sub_1000588AC(v0[7]);

  return swift_deallocClassInstance();
}

uint64_t sub_1003C4CC0(unint64_t a1)
{
  v2 = v1;
  v3 = sub_1002971C0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10012C924();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_1003C50E0(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1003C4D58(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1002973CC(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1003C5478(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10012D2B4();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_10055BB68(v4, v7);

  v9 = sub_1002973CC(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1003C5478(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1003C4EA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100297040(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10012D818();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_1003C5604(v6, v8);
  *v3 = v8;
  return v9;
}

void sub_1003C4F54(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1003C50E0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      v10 = v9 >> 61;
      if ((v9 >> 61) > 2)
      {
        v11 = (v9 & 0x1FFFFFFFFFFFFFFFLL);
        if (v10 == 3)
        {
          v12 = 3;
        }

        else if (v10 == 4)
        {
          v12 = 4;
        }

        else
        {
          v12 = 5;
        }
      }

      else
      {
        if (!v10)
        {
          Hasher._combine(_:)(0);
          v13 = v9;
          NSObject.hash(into:)();
          v14 = (v9 & 0x1FFFFFFFFFFFFFFFLL);
          goto LABEL_17;
        }

        v11 = (v9 & 0x1FFFFFFFFFFFFFFFLL);
        if (v10 == 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }
      }

      Hasher._combine(_:)(v12);
      v14 = v11;
      NSObject.hash(into:)();
LABEL_17:
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_22;
      }

      if (v3 >= v16)
      {
LABEL_22:
        v17 = *(a2 + 48);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

uint64_t sub_1003C5308(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1003C5478(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_1003C5604(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1003C57B4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1003C5C48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1003C5CA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1003C5D18(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 61;
  v3 = 3;
  v4 = 4;
  if (a2 >> 61 != 4)
  {
    v4 = 5;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 1;
  if (v2 != 1)
  {
    v5 = 2;
  }

  if (!v2)
  {
    v5 = a2 >> 61;
  }

  if (v2 <= 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  Hasher._combine(_:)(v6);
  return NSObject.hash(into:)();
}

Swift::Int sub_1003C5DA0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1003C5D18(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1003C5DF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1003C5D18(v3, v1);
  return Hasher._finalize()();
}

unint64_t sub_1003C5E44()
{
  result = qword_10191EC18;
  if (!qword_10191EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191EC18);
  }

  return result;
}

uint64_t sub_1003C5E98(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 61;
  if ((a1 >> 61) <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (a2 >> 61 != 1)
        {
          return 0;
        }
      }

      else if (a2 >> 61 != 2)
      {
        return 0;
      }
    }

    else if (a2 >> 61)
    {
      return 0;
    }

LABEL_13:
    sub_10011A1CC();
    return static NSObject.== infix(_:_:)() & 1;
  }

  if (v2 == 3)
  {
    if (a2 >> 61 == 3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v2 == 4)
    {
      if (a2 >> 61 != 4)
      {
        return 0;
      }

      goto LABEL_13;
    }

    if (a2 >> 61 == 5)
    {
      goto LABEL_13;
    }
  }

  return 0;
}

id sub_1003C5F6C()
{
  result = [objc_allocWithZone(type metadata accessor for VisitedPlacesCountsManager()) init];
  static VisitedPlacesCountsManager.shared = result;
  return result;
}

uint64_t *VisitedPlacesCountsManager.shared.unsafeMutableAddressor()
{
  if (qword_101906800 != -1)
  {
    swift_once();
  }

  return &static VisitedPlacesCountsManager.shared;
}

id static VisitedPlacesCountsManager.shared.getter()
{
  if (qword_101906800 != -1)
  {
    swift_once();
  }

  v1 = static VisitedPlacesCountsManager.shared;

  return v1;
}

uint64_t sub_1003C6048(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_allVisitsCount;
  v4 = *(v2 + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_allVisitsCount);
  v5 = *(v2 + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_allVisitsCount + 8);
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  if ((a2 & 1) == 0 && v5 & 1 | (v4 != result))
  {
    v6 = result;
    v7 = [*(v2 + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_observers) allObservers];
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v8 + 32;
      do
      {
        sub_10004E374(v10, v12);
        sub_1000CE6B8(&unk_10191EC70);
        if (swift_dynamicCast())
        {
          [v11 visitedPlacesCountsManager:v2 didUpdateCount:v6];
          swift_unknownObjectRelease();
        }

        v10 += 32;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

id sub_1003C6190()
{
  v1 = &v0[OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_allVisitsCount];
  *v1 = 0;
  v1[8] = 1;
  v2 = OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_dataProvider;
  type metadata accessor for VisitHistoryHomeDataProvider();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for MapsSyncStore();
  v4 = static MapsSyncStore.sharedStore.getter();
  type metadata accessor for VisitedPlacesDataOperationsProvider();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v3 + 112) = v5;
  *(v3 + 120) = 2;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_refreshTask] = 0;
  v6 = OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_observers;
  *&v0[v6] = [objc_allocWithZone(GEOObserverHashTable) initWithProtocol:&OBJC_PROTOCOL____TtP4Maps34VisitedPlacesCountsManagerObserver_ queue:0];
  v7 = OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_storeSubscriptionTypes;
  sub_100024578();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1011E1D60;
  *(v8 + 32) = type metadata accessor for Visit();
  *(v8 + 40) = type metadata accessor for VisitedLocation();
  *&v0[v7] = v8;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for VisitedPlacesCountsManager();
  v9 = objc_msgSendSuper2(&v12, "init");
  v10 = static MapsSyncStore.sharedStore.getter();
  dispatch thunk of MapsSyncStore.subscribe(_:)();

  sub_1003C6504(1);
  return v9;
}

id VisitedPlacesCountsManager.__deallocating_deinit()
{
  v1 = v0;
  type metadata accessor for MapsSyncStore();
  v2 = static MapsSyncStore.sharedStore.getter();
  v3 = v1;
  dispatch thunk of MapsSyncStore.unsubscribe(_:)();

  v5.receiver = v3;
  v5.super_class = type metadata accessor for VisitedPlacesCountsManager();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id VisitedPlacesCountsManager.registerObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1003C70A8(a1, v1);
}

uint64_t sub_1003C6504(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_refreshTask;
  if (!*&v1[OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_refreshTask] || (, isCancelled = swift_task_isCancelled(), result = , (isCancelled & 1) != 0))
  {
    static TaskPriority.utility.getter();
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = a1 & 1;
    *(v11 + 40) = v1;
    *(v11 + 48) = ObjectType;
    v12 = v1;
    *&v1[v7] = sub_10020AAE4(0, 0, v6, &unk_101202588, v11);
  }

  return result;
}

uint64_t sub_1003C6670(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 88) = a4;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_1003C6734, 0, 0);
}

uint64_t sub_1003C6734()
{
  if (*(v0 + 88))
  {
    if (static Task<>.isCancelled.getter())
    {
      *(*(v0 + 16) + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_refreshTask) = 0;

      v1 = *(v0 + 8);

      return v1();
    }

    else
    {
      v4 = swift_task_alloc();
      *(v0 + 64) = v4;
      *v4 = v0;
      v4[1] = sub_1003C6BC4;

      return sub_1001F5630();
    }
  }

  else
  {
    static Clock<>.continuous.getter();
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_1003C68D8;

    return sub_1004539BC(3000000000000000000, 0, 0, 0, 1);
  }
}

uint64_t sub_1003C68D8()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003C6B40;
  }

  else
  {
    v5 = sub_1003C6A48;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C6A48()
{
  if (static Task<>.isCancelled.getter())
  {
    *(v0[2] + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_refreshTask) = 0;

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1003C6BC4;

    return sub_1001F5630();
  }
}

uint64_t sub_1003C6B40()
{

  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_refreshTask) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C6BC4(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1003C6CC4, 0, 0);
}

uint64_t sub_1003C6CC4()
{
  type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C6D58, v2, v1);
}

uint64_t sub_1003C6D58()
{
  v1 = *(v0 + 72);

  sub_1003C6048(v1, 0);

  return _swift_task_switch(sub_1003C6DD0, 0, 0);
}

uint64_t sub_1003C6DD0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_refreshTask) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t VisitedPlacesCountsManager.storeSubscriptionTypes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_storeSubscriptionTypes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t _s4Maps26VisitedPlacesCountsManagerC14storeDidChangeyySay0A4Sync0aI6ObjectCmGF_0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_refreshTask;
  if (!*&v0[OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_refreshTask] || (, isCancelled = swift_task_isCancelled(), result = , (isCancelled & 1) != 0))
  {
    static TaskPriority.utility.getter();
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = v0;
    *(v9 + 48) = ObjectType;
    v10 = v0;
    *&v0[v5] = sub_10020AAE4(0, 0, v4, &unk_1012025A0, v9);
  }

  return result;
}

uint64_t sub_1003C7220(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC40;

  return sub_1003C6670(a1, v4, v5, v6, v7);
}

uint64_t sub_1003C72E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC4C;

  return sub_1003C6670(a1, v4, v5, v6, v7);
}

char *sub_1003C7408()
{
  v1 = OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___modalHeaderView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___modalHeaderView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___modalHeaderView);
  }

  else
  {
    v4 = sub_1003C746C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1003C746C(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for ModalCardHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() buttonWithType:1];
  [v3 addTarget:a1 action:"cancelTapped" forControlEvents:64];
  v4 = OBJC_IVAR____TtC4Maps19ModalCardHeaderView_trailingButton;
  v5 = *&v2[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_trailingButton];
  v6 = v5;
  v7 = v3;
  sub_100283E84();
  v8 = *&v2[v4];
  *&v2[v4] = v3;
  v9 = v7;

  v10 = *&v2[v4];
  if (v10)
  {
    v11 = v10;
    v12 = String._bridgeToObjectiveC()();
    [v11 addObserver:v2 forKeyPath:v12 options:0 context:0];

    v13 = *&v2[v4];
    if (v13)
    {
      v14 = v13;
      v15 = String._bridgeToObjectiveC()();
      [v14 addObserver:v2 forKeyPath:v15 options:0 context:0];

      v16 = *&v2[v4];
      if (v16)
      {
        if (v5)
        {
          sub_100014C84(0, &unk_10191ED40);
          v17 = v6;
          v18 = v16;
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            goto LABEL_9;
          }
        }

        goto LABEL_8;
      }
    }
  }

  v17 = v9;
  if (v5)
  {
LABEL_8:
    sub_100282F08();
    v17 = v6;
LABEL_9:
  }

  return v2;
}

id sub_1003C7680()
{
  v1 = OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___tableView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___tableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___tableView);
  }

  else
  {
    v4 = sub_1003C76E0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1003C76E0()
{
  v0 = [objc_allocWithZone(MapsThemeTableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v1];

  [v0 setPreservesSuperviewLayoutMargins:1];
  v2 = v0;
  v3 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v3];

  return v2;
}

Swift::Void __swiftcall CollectionPickerContaineeViewController.viewDidLoad()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v1 = [v0 cardPresentationController];
  if (v1)
  {
    v2 = v1;
    [v1 setTakesAvailableHeight:1];

    v3 = [v0 cardPresentationController];
    if (v3)
    {
      v4 = v3;
      [v3 setPresentedModally:1];

      sub_1003C79DC();
      sub_1003C7FB4();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1003C79DC()
{
  v1 = v0;
  v2 = [v0 headerView];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = sub_1003C7408();
  [v3 addSubview:v4];

  v5 = OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___modalHeaderView;
  v6 = qword_101906768;
  v7 = *&v1[OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___modalHeaderView];
  if (v6 != -1)
  {
    swift_once();
  }

  v52._object = 0x800000010122D920;
  v8._countAndFlagsBits = 0x61206F7420646441;
  v8._object = 0xEE00656469754720;
  v9._object = 0x8000000101234A10;
  v52._countAndFlagsBits = 0xD00000000000004ELL;
  v9._countAndFlagsBits = 0xD000000000000022;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, qword_1019600D8, v8, v52);
  v11 = *&v7[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_title];
  v12 = *&v7[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_title + 8];
  *&v7[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_title] = v10;
  if (!v12 || (v10._countAndFlagsBits == v11 ? (v13 = v12 == v10._object) : (v13 = 0), !v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    sub_100282F08();
  }

  v14 = [v1 contentView];
  if (!v14)
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  v16 = sub_1003C7680();
  [v15 addSubview:v16];

  sub_1000CE6B8(&qword_101908400);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1011E7920;
  v18 = [*&v1[v5] leadingAnchor];
  v19 = [v3 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v17 + 32) = v20;
  v21 = [*&v1[v5] topAnchor];
  v22 = [v3 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v17 + 40) = v23;
  v24 = [*&v1[v5] trailingAnchor];
  v25 = [v3 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v17 + 48) = v26;
  v27 = [*&v1[v5] bottomAnchor];
  v28 = [v3 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v17 + 56) = v29;
  v30 = OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___tableView;
  v31 = [*&v1[OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___tableView] topAnchor];
  v32 = [v3 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v17 + 64) = v33;
  v34 = [*&v1[v30] leadingAnchor];
  v35 = [v1 contentView];
  if (!v35)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v36 = v35;
  v37 = [v35 leadingAnchor];

  v38 = [v34 constraintEqualToAnchor:v37];
  *(v17 + 72) = v38;
  v39 = [*&v1[v30] trailingAnchor];
  v40 = [v1 contentView];
  if (!v40)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  v42 = [v40 trailingAnchor];

  v43 = [v39 constraintEqualToAnchor:v42];
  *(v17 + 80) = v43;
  v44 = [*&v1[v30] bottomAnchor];
  v45 = [v1 contentView];
  if (!v45)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v46 = v45;
  v47 = objc_opt_self();
  v48 = [v46 bottomAnchor];

  v49 = [v44 constraintEqualToAnchor:v48];
  *(v17 + 88) = v49;
  sub_100014C84(0, &qword_10190B720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v47 activateConstraints:isa];
}

void sub_1003C7FB4()
{
  v1 = sub_1003C7680();
  v2 = [objc_allocWithZone(CollectionListDataSource) initWithTableView:v1 editSession:*(v0 + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController_collectionSession) showsAddCollection:1];

  [v2 setCellsSize:1];
  [v2 setDelegate:v0];
  v3 = OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___tableView;
  [*(v0 + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController____lazy_storage___tableView) setDelegate:v2];
  [*(v0 + v3) setDataSource:v2];
  v4 = *(v0 + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController_collectionListDataSource);
  *(v0 + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController_collectionListDataSource) = v2;
  v5 = v2;

  [v5 setActive:1];
}

Swift::Void __swiftcall CollectionPickerContaineeViewController.dataSourceUpdated(_:)(DataSource_optional *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController_collectionListDataSource);
  if (!a1)
  {
    if (v3)
    {
      return;
    }

    v8 = 0;
    goto LABEL_11;
  }

  if (v3)
  {
    v9 = *(v1 + OBJC_IVAR____TtC4Maps39CollectionPickerContaineeViewController_collectionListDataSource);
    sub_100014C84(0, &qword_10191EC88);
    v4 = v9;
    v5 = a1;
    v6 = static NSObject.== infix(_:_:)();

    if ((v6 & 1) == 0)
    {
      return;
    }

LABEL_11:
    v10 = sub_1003C7680();
    [v10 reloadData];

    return;
  }

  v7 = 0;
}