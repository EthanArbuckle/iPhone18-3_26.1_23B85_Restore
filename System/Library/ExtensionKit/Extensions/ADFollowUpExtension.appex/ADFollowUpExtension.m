uint64_t sub_1000016AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000017C4(&qword_10001C2F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
  }

  else
  {
    v10 = sub_100010234();
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = a1 + a3[8];
      v14 = *(v13 + 8);
      v15 = *v13 & 0x7FFFFFFF;
      if ((v14 & 0xF000000000000007) != 0)
      {
        return (v15 + 1);
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_1000017C4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001820(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000017C4(&qword_10001C2F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_100010234();
    if (*(*(result - 8) + 84) != a3)
    {
      v14 = (a1 + a4[8]);
      *v14 = (a2 - 1);
      v14[1] = 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_1000019BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 sub_100001A24(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001A30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001A50(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_100001A98@<Q0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_1000017C4(&qword_10001C3B8);
  __chkstk_darwin(v2, v3);
  v5 = &v21 - v4;
  v21 = sub_1000017C4(&qword_10001C3C0);
  v6 = *(v21 - 8);
  __chkstk_darwin(v21, v7);
  v9 = &v21 - v8;
  *v5 = sub_100010404();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v10 = &v5[*(sub_1000017C4(&qword_10001C3C8) + 44)];
  v23 = v1;
  sub_1000104E4();
  sub_1000017C4(&qword_10001C3D0);
  sub_10000BC5C(&qword_10001C3D8, &qword_10001C3D0);
  sub_100010294();
  v11 = sub_100010404();
  v12 = &v10[*(sub_1000017C4(&qword_10001C3E0) + 36)];
  sub_1000066A4(v1, v12);
  sub_1000102A4();
  v13 = sub_100010564();
  v14 = sub_100010314();
  v15 = v12 + *(sub_1000017C4(&qword_10001C3E8) + 36);
  *v15 = v14;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  *(v15 + 17) = v13;
  *(v15 + 24) = v11;
  sub_10000BC5C(&qword_10001C3F0, &qword_10001C3B8);
  sub_100010634();
  sub_10000B860(v5, &qword_10001C3B8);
  sub_100010794();
  sub_100010334();
  v16 = v22;
  (*(v6 + 32))(v22, v9, v21);
  v17 = v16 + *(sub_1000017C4(&qword_10001C3F8) + 36);
  v18 = v29;
  *(v17 + 64) = v28;
  *(v17 + 80) = v18;
  *(v17 + 96) = v30;
  v19 = v25;
  *v17 = v24;
  *(v17 + 16) = v19;
  result = v27;
  *(v17 + 32) = v26;
  *(v17 + 48) = result;
  return result;
}

uint64_t sub_100001DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v98 = type metadata accessor for DeveloperTrustSheetButtons(0);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98, v3);
  v85 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000017C4(&qword_10001C430);
  v7 = __chkstk_darwin(v5 - 8, v6);
  v100 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v99 = &v83 - v10;
  v84 = type metadata accessor for DeveloperTrustSheetView(0);
  v88 = *(v84 - 8);
  __chkstk_darwin(v84, v11);
  v94 = v12;
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100010304();
  v15 = *(v14 - 8);
  v17 = __chkstk_darwin(v14, v16);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = &v83 - v21;
  v23 = sub_1000017C4(&qword_10001C438);
  __chkstk_darwin(v23 - 8, v24);
  v26 = &v83 - v25;
  v86 = sub_1000017C4(&qword_10001C440);
  __chkstk_darwin(v86, v27);
  *&v95 = &v83 - v28;
  v93 = sub_1000017C4(&qword_10001C448);
  v30 = __chkstk_darwin(v93, v29);
  v96 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30, v32);
  v92 = &v83 - v34;
  __chkstk_darwin(v33, v35);
  v104 = &v83 - v36;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, v22);
  v37 = *(v15 + 104);
  LODWORD(v103) = enum case for DynamicTypeSize.large(_:);
  v102 = v15 + 104;
  v90 = v37;
  v37(v19);
  v87 = sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize);
  v38 = sub_100010804();
  v39 = *(v15 + 8);
  v39(v19, v14);
  v91 = v15 + 8;
  v89 = v39;
  v39(v22, v14);
  if (v38)
  {
    v40 = sub_100010414();
  }

  else
  {
    v40 = sub_100010404();
  }

  *v26 = v40;
  *(v26 + 1) = 0x4036000000000000;
  v26[16] = 0;
  v41 = sub_1000017C4(&qword_10001C450);
  sub_100002824(a1, &v26[*(v41 + 44)]);
  sub_100009990(a1, v13, type metadata accessor for DeveloperTrustSheetView);
  v42 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v43 = swift_allocObject();
  v94 = type metadata accessor for DeveloperTrustSheetView;
  sub_100009A28(v13, v43 + v42, type metadata accessor for DeveloperTrustSheetView);
  v44 = v95;
  sub_10000B024(v26, v95, &qword_10001C438);
  v45 = (v44 + *(v86 + 36));
  *v45 = sub_10000BD98;
  v45[1] = 0;
  v45[2] = sub_1000099FC;
  v45[3] = v43;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, v22);
  v46 = v90;
  v90(v19, v103, v14);
  sub_100010804();
  v47 = v89;
  v89(v19, v14);
  v47(v22, v14);
  LOBYTE(v43) = sub_100010504();
  sub_100010284();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v44;
  v57 = v92;
  sub_10000B024(v56, v92, &qword_10001C440);
  v58 = v57 + *(v93 + 36);
  *v58 = v43;
  *(v58 + 8) = v49;
  *(v58 + 16) = v51;
  *(v58 + 24) = v53;
  *(v58 + 32) = v55;
  *(v58 + 40) = 0;
  sub_10000B024(v57, v104, &qword_10001C448);
  sub_100007734(v94, v22);
  v46(v19, v103, v14);
  LOBYTE(v43) = sub_100010804();
  v47(v19, v14);
  v47(v22, v14);
  if (v43)
  {
    v59 = *(a1 + 32);
    v60 = *(a1 + 16);
    v109 = *a1;
    v110 = v60;
    v111 = v59;
    sub_1000017C4(&qword_10001C410);
    sub_1000106F4();
    v61 = v106;
    v102 = v105;
    v103 = v107;
    v95 = v108;
    v62 = *(a1 + 48);
    LOBYTE(v109) = *(a1 + 40);
    *(&v109 + 1) = v62;
    sub_1000017C4(&qword_10001C418);
    sub_1000106F4();
    v63 = v105;
    v64 = v106;
    v65 = v107;
    v66 = v84;
    v67 = *(v84 + 28);
    v68 = v98;
    v69 = *(v98 + 28);
    v70 = sub_100010234();
    v71 = v85;
    (*(*(v70 - 8) + 16))(&v85[v69], a1 + v67, v70);
    v72 = a1 + *(v66 + 32);
    swift_unknownObjectWeakLoadStrong();
    v73 = *(v72 + 8);
    *(v71 + *(v68 + 24)) = swift_getKeyPath();
    sub_1000017C4(&qword_10001C420);
    swift_storeEnumTagMultiPayload();
    *v71 = v102;
    *(v71 + 8) = v61;
    v74 = v95;
    *(v71 + 16) = v103;
    *(v71 + 32) = v74;
    *(v71 + 48) = v63;
    *(v71 + 56) = v64;
    *(v71 + 64) = v65;
    *(v71 + *(v68 + 32) + 8) = v73;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v75 = v99;
    sub_100009A28(v71, v99, type metadata accessor for DeveloperTrustSheetButtons);
    v76 = 0;
  }

  else
  {
    v76 = 1;
    v75 = v99;
    v68 = v98;
  }

  (*(v97 + 56))(v75, v76, 1, v68);
  v77 = v104;
  v78 = v96;
  sub_10000A150(v104, v96, &qword_10001C448);
  v79 = v100;
  sub_10000A150(v75, v100, &qword_10001C430);
  v80 = v101;
  sub_10000A150(v78, v101, &qword_10001C448);
  v81 = sub_1000017C4(&qword_10001C458);
  sub_10000A150(v79, v80 + *(v81 + 48), &qword_10001C430);
  sub_10000B860(v75, &qword_10001C430);
  sub_10000B860(v77, &qword_10001C448);
  sub_10000B860(v79, &qword_10001C430);
  return sub_10000B860(v78, &qword_10001C448);
}

uint64_t sub_100002824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a1;
  v136 = a2;
  v2 = sub_1000017C4(&qword_10001C480);
  __chkstk_darwin(v2 - 8, v3);
  v129 = (&v122 - v4);
  v128 = sub_1000017C4(&qword_10001C488);
  __chkstk_darwin(v128, v5);
  v133 = &v122 - v6;
  v132 = sub_1000017C4(&qword_10001C490);
  v8 = __chkstk_darwin(v132, v7);
  v135 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8, v10);
  v130 = &v122 - v12;
  __chkstk_darwin(v11, v13);
  v134 = &v122 - v14;
  v15 = sub_100010304();
  v141 = *(v15 - 8);
  v17 = __chkstk_darwin(v15, v16);
  v138 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v137 = &v122 - v20;
  v21 = sub_1000017C4(&qword_10001C498);
  __chkstk_darwin(v21 - 8, v22);
  v126 = (&v122 - v23);
  v125 = sub_1000017C4(&qword_10001C4A0);
  v25 = __chkstk_darwin(v125, v24);
  v131 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25, v27);
  v124 = &v122 - v29;
  __chkstk_darwin(v28, v30);
  v140 = &v122 - v31;
  v32 = sub_100010694();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32, v34);
  v36 = &v122 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000017C4(&qword_10001C4A8);
  v38 = v37 - 8;
  __chkstk_darwin(v37, v39);
  v41 = &v122 - v40;
  v42 = sub_1000017C4(&qword_10001C4B0);
  v43 = v42 - 8;
  v45 = __chkstk_darwin(v42, v44);
  v127 = &v122 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v45, v47);
  v50 = &v122 - v49;
  __chkstk_darwin(v48, v51);
  v139 = &v122 - v52;
  sub_1000106A4();
  (*(v33 + 104))(v36, enum case for Image.ResizingMode.stretch(_:), v32);
  v53 = sub_1000106B4();

  (*(v33 + 8))(v36, v32);
  v54 = v123;
  sub_1000107A4();
  sub_1000102B4();
  LOBYTE(v143) = 1;
  *&v142[3] = *&v142[27];
  *&v142[11] = *&v142[35];
  *&v142[19] = *&v142[43];
  v55 = &v41[*(sub_1000017C4(&qword_10001C4B8) + 36)];
  v56 = *(sub_1000017C4(&qword_10001C4C0) + 28);
  sub_100010424();
  v57 = sub_100010434();
  (*(*(v57 - 8) + 56))(v55 + v56, 0, 1, v57);
  *v55 = swift_getKeyPath();
  *v41 = v53;
  *(v41 + 1) = 0;
  *(v41 + 8) = 257;
  v58 = *&v142[8];
  *(v41 + 18) = *v142;
  *(v41 + 34) = v58;
  *(v41 + 50) = *&v142[16];
  *(v41 + 8) = *&v142[23];
  *&v41[*(v38 + 44)] = sub_100010644();
  LOBYTE(v53) = sub_100010514();
  v59 = [objc_opt_self() currentDevice];
  [v59 userInterfaceIdiom];

  sub_100010284();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  sub_10000B024(v41, v50, &qword_10001C4A8);
  v68 = &v50[*(v43 + 44)];
  *v68 = v53;
  *(v68 + 1) = v61;
  *(v68 + 2) = v63;
  *(v68 + 3) = v65;
  *(v68 + 4) = v67;
  v68[40] = 0;
  sub_10000B024(v50, v139, &qword_10001C4B0);
  v69 = v137;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, v137);
  v70 = enum case for DynamicTypeSize.large(_:);
  v71 = v141;
  v72 = v138;
  v122 = *(v141 + 104);
  v122(v138, enum case for DynamicTypeSize.large(_:), v15);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize);
  v73 = v72;
  v74 = v69;
  LOBYTE(v72) = sub_100010804();
  v75 = *(v71 + 8);
  v75(v73, v15);
  v141 = v71 + 8;
  v75(v74, v15);
  if (v72)
  {
    v76 = sub_100010414();
  }

  else
  {
    v76 = sub_100010404();
  }

  v77 = v126;
  *v126 = v76;
  *(v77 + 8) = 0x4010000000000000;
  *(v77 + 16) = 0;
  v78 = sub_1000017C4(&qword_10001C4C8);
  sub_1000034EC(v54, (v77 + *(v78 + 44)));
  v79 = sub_1000104F4();
  sub_1000084A4(type metadata accessor for DeveloperTrustSheetView);
  sub_100010284();
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v88 = v124;
  sub_10000B024(v77, v124, &qword_10001C498);
  v89 = v88 + *(v125 + 36);
  *v89 = v79;
  *(v89 + 8) = v81;
  *(v89 + 16) = v83;
  *(v89 + 24) = v85;
  *(v89 + 32) = v87;
  *(v89 + 40) = 0;
  sub_10000B024(v88, v140, &qword_10001C4A0);
  v90 = sub_1000103E4();
  v91 = v129;
  *v129 = v90;
  *(v91 + 8) = 0;
  *(v91 + 16) = 1;
  v92 = sub_1000017C4(&qword_10001C4D0);
  sub_100004340(v54, (v91 + *(v92 + 44)));
  v93 = v137;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, v137);
  v94 = v138;
  v122(v138, v70, v15);
  v95 = sub_100010804();
  v75(v94, v15);
  v75(v93, v15);
  if (v95)
  {
    sub_1000107B4();
  }

  else
  {
    sub_1000107A4();
  }

  sub_100010334();
  v96 = v133;
  sub_10000B024(v91, v133, &qword_10001C480);
  v97 = (v96 + *(v128 + 36));
  v98 = v148;
  v97[4] = v147;
  v97[5] = v98;
  v97[6] = v149;
  v99 = v144;
  *v97 = v143;
  v97[1] = v99;
  v100 = v146;
  v97[2] = v145;
  v97[3] = v100;
  v101 = sub_1000104F4();
  sub_100010284();
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v110 = v96;
  v111 = v130;
  sub_10000B024(v110, v130, &qword_10001C488);
  v112 = v111 + *(v132 + 36);
  *v112 = v101;
  *(v112 + 8) = v103;
  *(v112 + 16) = v105;
  *(v112 + 24) = v107;
  *(v112 + 32) = v109;
  *(v112 + 40) = 0;
  v113 = v134;
  sub_10000B024(v111, v134, &qword_10001C490);
  v114 = v139;
  v115 = v127;
  sub_10000A150(v139, v127, &qword_10001C4B0);
  v116 = v140;
  v117 = v131;
  sub_10000A150(v140, v131, &qword_10001C4A0);
  v118 = v135;
  sub_10000A150(v113, v135, &qword_10001C490);
  v119 = v136;
  sub_10000A150(v115, v136, &qword_10001C4B0);
  v120 = sub_1000017C4(&qword_10001C4D8);
  sub_10000A150(v117, v119 + *(v120 + 48), &qword_10001C4A0);
  sub_10000A150(v118, v119 + *(v120 + 64), &qword_10001C490);
  sub_10000B860(v113, &qword_10001C490);
  sub_10000B860(v116, &qword_10001C4A0);
  sub_10000B860(v114, &qword_10001C4B0);
  sub_10000B860(v118, &qword_10001C490);
  sub_10000B860(v117, &qword_10001C4A0);
  return sub_10000B860(v115, &qword_10001C4B0);
}

uint64_t sub_1000034EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v135 = a1;
  v130 = a2;
  v2 = type metadata accessor for DeveloperTrustSheetView(0);
  v3 = v2 - 8;
  v104 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v105 = v5;
  v106 = &v100[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000017C4(&qword_10001C538);
  v7 = *(v6 - 8);
  v128 = v6;
  v129 = v7;
  v9 = __chkstk_darwin(v6, v8);
  v108 = &v100[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9, v11);
  v107 = &v100[-v12];
  v120 = sub_1000100A4();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120, v13);
  v118 = &v100[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = sub_1000100B4();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117, v15);
  v114 = &v100[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1000100D4();
  __chkstk_darwin(v17 - 8, v18);
  v113 = &v100[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1000017C4(&qword_10001C540);
  __chkstk_darwin(v20 - 8, v21);
  v111 = &v100[-v22];
  v23 = sub_1000017C4(&qword_10001C548);
  __chkstk_darwin(v23 - 8, v24);
  v112 = &v100[-v25];
  v26 = sub_1000100F4();
  v133 = *(v26 - 8);
  v134 = v26;
  v28 = __chkstk_darwin(v26, v27);
  v102 = &v100[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28, v30);
  v109 = &v100[-v31];
  v32 = sub_1000017C4(&qword_10001C550);
  v34 = __chkstk_darwin(v32 - 8, v33);
  v127 = &v100[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34, v36);
  v126 = &v100[-v37];
  v38 = sub_100010304();
  v136 = *(v38 - 8);
  v40 = __chkstk_darwin(v38, v39);
  v132 = &v100[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v40, v42);
  v131 = &v100[-v43];
  v110 = *(v3 + 36);
  v137 = sub_100010224();
  v138 = v44;
  sub_100009DD8();
  v45 = sub_1000105E4();
  v47 = v46;
  v49 = v48;
  sub_100010594();
  v50 = sub_1000105C4();
  v52 = v51;
  v54 = v53;

  sub_100009E2C(v45, v47, v49 & 1);

  v55 = sub_1000105B4();
  v123 = v56;
  v124 = v55;
  v122 = v57;
  v125 = v58;
  sub_100009E2C(v50, v52, v54 & 1);

  v59 = v131;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, v131);
  v60 = v136;
  v61 = *(v136 + 104);
  v62 = v132;
  v101 = enum case for DynamicTypeSize.large(_:);
  v61(v132);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize);
  v63 = v59;
  v115 = sub_100010804();
  v64 = *(v60 + 8);
  v64(v62, v38);
  v103 = v38;
  v136 = v60 + 8;
  v64(v63, v38);
  KeyPath = swift_getKeyPath();
  sub_100010214();
  v65 = sub_100010154();
  (*(*(v65 - 8) + 56))(v111, 1, 1, v65);
  (*(v116 + 104))(v114, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v117);
  (*(v119 + 104))(v118, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v120);
  v66 = v112;
  sub_1000100C4();
  sub_1000100E4();
  v67 = v133;
  v68 = v134;
  (*(v133 + 56))(v66, 0, 1, v134);
  v69 = v109;
  (*(v67 + 32))(v109, v66, v68);
  (*(v67 + 16))(v102, v69, v68);
  v70 = sub_1000105D4();
  v72 = v71;
  v74 = v73;
  sub_100010584();
  v119 = sub_1000105C4();
  v118 = v75;
  LODWORD(v117) = v76;
  v120 = v77;

  sub_100009E2C(v70, v72, v74 & 1);

  v78 = v131;
  v79 = v135;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, v131);
  v80 = v132;
  v81 = v103;
  (v61)(v132, v101, v103);
  LOBYTE(v45) = sub_100010804();
  v64(v80, v81);
  v64(v78, v81);
  LOBYTE(v81) = (v45 & 1) == 0;
  v82 = swift_getKeyPath();
  v83 = swift_getKeyPath();
  v84 = v106;
  sub_100009990(v79, v106, type metadata accessor for DeveloperTrustSheetView);
  v85 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v86 = swift_allocObject();
  sub_100009A28(v84, v86 + v85, type metadata accessor for DeveloperTrustSheetView);
  v87 = v128;
  v88 = v108;
  v89 = &v108[*(v128 + 36)];
  sub_1000017C4(&qword_10001C560);
  sub_1000102F4();
  (*(v133 + 8))(v109, v134);
  *v89 = v83;
  v90 = v118;
  *v88 = v119;
  *(v88 + 8) = v90;
  *(v88 + 16) = v117 & 1;
  *(v88 + 24) = v120;
  *(v88 + 32) = v82;
  *(v88 + 40) = v81;
  v91 = v107;
  sub_10000B024(v88, v107, &qword_10001C538);
  v92 = v126;
  sub_10000B024(v91, v126, &qword_10001C538);
  (*(v129 + 56))(v92, 0, 1, v87);
  LOBYTE(v81) = (v115 & 1) == 0;
  v93 = v127;
  sub_10000A150(v92, v127, &qword_10001C550);
  v94 = v130;
  v96 = v123;
  v95 = v124;
  *v130 = v124;
  v94[1] = v96;
  LOBYTE(v91) = v122 & 1;
  *(v94 + 16) = v122 & 1;
  v97 = KeyPath;
  v94[3] = v125;
  v94[4] = v97;
  *(v94 + 40) = v81;
  v98 = sub_1000017C4(&qword_10001C558);
  sub_10000A150(v93, v94 + *(v98 + 48), &qword_10001C550);
  sub_100009E90(v95, v96, v91);

  sub_10000B860(v92, &qword_10001C550);
  sub_10000B860(v93, &qword_10001C550);
  sub_100009E2C(v95, v96, v91);
}

uint64_t sub_1000041E0(uint64_t a1)
{
  v2 = type metadata accessor for ButtonSelection(0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DeveloperTrustSheetView(0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = sub_100010154();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v5, a1, v6);
    (*(v7 + 56))(v5, 0, 2, v6);
    sub_10000C7F8(v5);
    swift_unknownObjectRelease();
    sub_10000A0F0(v5, type metadata accessor for ButtonSelection);
  }

  return sub_1000102E4();
}

uint64_t sub_100004340@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v42 = a2;
  v3 = sub_100010304();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v40 - v10;
  v12 = sub_1000017C4(&qword_10001C4E0);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v40 - v14;
  v40 = sub_1000017C4(&qword_10001C4E8);
  v17 = __chkstk_darwin(v40, v16);
  v41 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v40 - v21;
  __chkstk_darwin(v20, v23);
  v25 = &v40 - v24;
  v26 = sub_1000047D8();
  *v15 = sub_100010404();
  *(v15 + 1) = 0x4036000000000000;
  v15[16] = 0;
  v27 = sub_1000017C4(&qword_10001C4F0);
  sub_1000049B8(a1, &v15[*(v27 + 44)]);
  sub_100006004();
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, v11);
  (*(v4 + 104))(v8, enum case for DynamicTypeSize.large(_:), v3);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize);
  v28 = sub_100010804();
  v29 = *(v4 + 8);
  v29(v8, v3);
  v29(v11, v3);
  if (v28)
  {
    sub_1000107B4();
  }

  else
  {
    sub_1000107A4();
  }

  sub_100010334();
  sub_10000B024(v15, v22, &qword_10001C4E0);
  v30 = &v22[*(v40 + 36)];
  v31 = v48;
  *(v30 + 4) = v47;
  *(v30 + 5) = v31;
  *(v30 + 6) = v49;
  v32 = v44;
  *v30 = v43;
  *(v30 + 1) = v32;
  v33 = v46;
  *(v30 + 2) = v45;
  *(v30 + 3) = v33;
  sub_10000B024(v22, v25, &qword_10001C4E8);
  v34 = sub_1000047D8();
  v35 = v41;
  sub_10000A150(v25, v41, &qword_10001C4E8);
  v36 = v42;
  *v42 = v26;
  *(v36 + 8) = 0;
  v37 = sub_1000017C4(&qword_10001C4F8);
  sub_10000A150(v35, v36 + *(v37 + 48), &qword_10001C4E8);
  v38 = (v36 + *(v37 + 64));
  *v38 = v34;
  *(v38 + 8) = 0;
  sub_10000B860(v25, &qword_10001C4E8);
  return sub_10000B860(v35, &qword_10001C4E8);
}

double sub_1000047D8()
{
  v0 = sub_100010304();
  v1 = *(v0 - 8);
  v3 = __chkstk_darwin(v0, v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v8 = &v14 - v7;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, &v14 - v7);
  (*(v1 + 104))(v5, enum case for DynamicTypeSize.large(_:), v0);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize);
  v9 = sub_100010804();
  v10 = *(v1 + 8);
  v10(v5, v0);
  v10(v8, v0);
  result = 0.0;
  if ((v9 & 1) == 0)
  {
    v12 = [objc_opt_self() currentDevice];
    v13 = [v12 userInterfaceIdiom];

    result = 36.0;
    if (v13 == 1)
    {
      return 88.0;
    }
  }

  return result;
}

uint64_t sub_1000049B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_1000017C4(&qword_10001C500);
  v4 = v3 - 8;
  v6 = __chkstk_darwin(v3, v5);
  v64 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6, v8);
  v63 = &v58 - v10;
  v12 = __chkstk_darwin(v9, v11);
  v62 = &v58 - v13;
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v58 - v16;
  v19 = __chkstk_darwin(v15, v18);
  v61 = &v58 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v58 - v23;
  v26 = __chkstk_darwin(v22, v25);
  v60 = &v58 - v27;
  v29 = __chkstk_darwin(v26, v28);
  v31 = &v58 - v30;
  __chkstk_darwin(v29, v32);
  v34 = &v58 - v33;
  v59 = &v58 - v33;
  v35 = objc_opt_self();
  v36 = [v35 currentDevice];
  v37 = [v36 userInterfaceIdiom];

  v38 = 16.0;
  if (v37 == 1)
  {
    v39 = 14.0;
  }

  else
  {
    v39 = 16.0;
  }

  v40 = *(v4 + 48);
  *&v31[v40] = swift_getKeyPath();
  sub_1000017C4(&qword_10001C420);
  swift_storeEnumTagMultiPayload();
  sub_100004E5C(a1, v31);
  *&v31[*(v4 + 44)] = v39;
  sub_10000B024(v31, v34, &qword_10001C500);
  v41 = [v35 currentDevice];
  v42 = [v41 userInterfaceIdiom];

  if (v42 == 1)
  {
    v43 = 14.0;
  }

  else
  {
    v43 = 16.0;
  }

  v44 = *(v4 + 48);
  *&v24[v44] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_1000052D4(a1, v24);
  *&v24[*(v4 + 44)] = v43;
  v45 = v60;
  sub_10000B024(v24, v60, &qword_10001C500);
  v46 = [v35 currentDevice];
  v47 = [v46 userInterfaceIdiom];

  if (v47 == 1)
  {
    v38 = 14.0;
  }

  v48 = *(v4 + 48);
  *&v17[v48] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_100005B8C(a1, v17);
  *&v17[*(v4 + 44)] = v38;
  v49 = v61;
  sub_10000B024(v17, v61, &qword_10001C500);
  v50 = v59;
  v51 = v62;
  sub_10000A150(v59, v62, &qword_10001C500);
  v52 = v45;
  v53 = v63;
  sub_10000A150(v45, v63, &qword_10001C500);
  v54 = v64;
  sub_10000A150(v49, v64, &qword_10001C500);
  v55 = v65;
  sub_10000A150(v51, v65, &qword_10001C500);
  v56 = sub_1000017C4(&qword_10001C508);
  sub_10000A150(v53, v55 + *(v56 + 48), &qword_10001C500);
  sub_10000A150(v54, v55 + *(v56 + 64), &qword_10001C500);
  sub_10000B860(v49, &qword_10001C500);
  sub_10000B860(v52, &qword_10001C500);
  sub_10000B860(v50, &qword_10001C500);
  sub_10000B860(v54, &qword_10001C500);
  sub_10000B860(v53, &qword_10001C500);
  return sub_10000B860(v51, &qword_10001C500);
}

uint64_t sub_100004E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a1;
  v27 = a2;
  v2 = sub_100010694();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000017C4(&qword_10001C4A8);
  v8 = v7 - 8;
  v10 = __chkstk_darwin(v7, v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = v26 - v14;
  sub_100010684();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v16 = sub_1000106B4();

  (*(v3 + 8))(v6, v2);
  sub_1000107A4();
  sub_1000102B4();
  LOBYTE(v34[0]) = 1;
  *&v30[3] = *&v30[27];
  *&v30[11] = *&v30[35];
  *&v30[19] = *&v30[43];
  v17 = &v15[*(sub_1000017C4(&qword_10001C4B8) + 36)];
  v18 = *(sub_1000017C4(&qword_10001C4C0) + 28);
  sub_100010424();
  v19 = sub_100010434();
  (*(*(v19 - 8) + 56))(v17 + v18, 0, 1, v19);
  *v17 = swift_getKeyPath();
  *v15 = v16;
  *(v15 + 1) = 0;
  *(v15 + 8) = 257;
  v20 = *&v30[8];
  *(v15 + 18) = *v30;
  *(v15 + 34) = v20;
  *(v15 + 50) = *&v30[16];
  *(v15 + 8) = *&v30[23];
  *&v15[*(v8 + 44)] = sub_100010644();
  v21 = sub_100010404();
  v29 = 1;
  sub_10000574C(&DeveloperApprovalSheetContext.firstBulletTitle.getter, &DeveloperApprovalSheetContext.firstBulletBody.getter, v34);
  memcpy(v31, v34, sizeof(v31));
  memcpy(v32, v34, sizeof(v32));
  sub_10000A150(v31, v33, &qword_10001C510);
  sub_10000B860(v32, &qword_10001C510);
  memcpy(&v28[7], v31, 0x120uLL);
  v22 = v29;
  sub_10000A150(v15, v12, &qword_10001C4A8);
  v23 = v27;
  sub_10000A150(v12, v27, &qword_10001C4A8);
  v24 = *(sub_1000017C4(&qword_10001C518) + 48);
  v33[0] = v21;
  v33[1] = 0;
  LOBYTE(v33[2]) = v22;
  memcpy(&v33[2] + 1, v28, 0x127uLL);
  memcpy((v23 + v24), v33, 0x138uLL);
  sub_10000A150(v33, v34, &qword_10001C520);
  sub_10000B860(v15, &qword_10001C4A8);
  v34[0] = v21;
  v34[1] = 0;
  LOBYTE(v34[2]) = v22;
  memcpy(&v34[2] + 1, v28, 0x127uLL);
  sub_10000B860(v34, &qword_10001C520);
  return sub_10000B860(v12, &qword_10001C4A8);
}

uint64_t sub_1000052D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a1;
  v27 = a2;
  v2 = sub_100010694();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000017C4(&qword_10001C4A8);
  v8 = v7 - 8;
  v10 = __chkstk_darwin(v7, v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = v26 - v14;
  sub_1000106A4();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v16 = sub_1000106B4();

  (*(v3 + 8))(v6, v2);
  sub_1000107A4();
  sub_1000102B4();
  LOBYTE(v34[0]) = 1;
  *&v30[3] = *&v30[27];
  *&v30[11] = *&v30[35];
  *&v30[19] = *&v30[43];
  v17 = &v15[*(sub_1000017C4(&qword_10001C4B8) + 36)];
  v18 = *(sub_1000017C4(&qword_10001C4C0) + 28);
  sub_100010424();
  v19 = sub_100010434();
  (*(*(v19 - 8) + 56))(v17 + v18, 0, 1, v19);
  *v17 = swift_getKeyPath();
  *v15 = v16;
  *(v15 + 1) = 0;
  *(v15 + 8) = 257;
  v20 = *&v30[8];
  *(v15 + 18) = *v30;
  *(v15 + 34) = v20;
  *(v15 + 50) = *&v30[16];
  *(v15 + 8) = *&v30[23];
  *&v15[*(v8 + 44)] = sub_100010644();
  v21 = sub_100010404();
  v29 = 1;
  sub_10000574C(&DeveloperApprovalSheetContext.secondBulletTitle.getter, &DeveloperApprovalSheetContext.secondBulletBody.getter, v34);
  memcpy(v31, v34, sizeof(v31));
  memcpy(v32, v34, sizeof(v32));
  sub_10000A150(v31, v33, &qword_10001C510);
  sub_10000B860(v32, &qword_10001C510);
  memcpy(&v28[7], v31, 0x120uLL);
  v22 = v29;
  sub_10000A150(v15, v12, &qword_10001C4A8);
  v23 = v27;
  sub_10000A150(v12, v27, &qword_10001C4A8);
  v24 = *(sub_1000017C4(&qword_10001C518) + 48);
  v33[0] = v21;
  v33[1] = 0;
  LOBYTE(v33[2]) = v22;
  memcpy(&v33[2] + 1, v28, 0x127uLL);
  memcpy((v23 + v24), v33, 0x138uLL);
  sub_10000A150(v33, v34, &qword_10001C520);
  sub_10000B860(v15, &qword_10001C4A8);
  v34[0] = v21;
  v34[1] = 0;
  LOBYTE(v34[2]) = v22;
  memcpy(&v34[2] + 1, v28, 0x127uLL);
  sub_10000B860(v34, &qword_10001C520);
  return sub_10000B860(v12, &qword_10001C4A8);
}

uint64_t sub_10000574C@<X0>(void (*a1)(void)@<X1>, uint64_t (*a2)(uint64_t)@<X2>, void *a3@<X8>)
{
  type metadata accessor for DeveloperTrustSheetView(0);
  a1();
  sub_100009DD8();
  v4 = sub_1000105E4();
  v6 = v5;
  v8 = v7;
  sub_100010574();
  v9 = sub_1000105C4();
  v11 = v10;
  v13 = v12;

  sub_100009E2C(v4, v6, v8 & 1);

  v35 = sub_1000105B4();
  v15 = v14;
  LOBYTE(v4) = v16;
  v31 = v17;
  sub_100009E2C(v9, v11, v13 & 1);

  sub_1000107B4();
  v18 = sub_100010334();
  v19 = v4 & 1;
  v95 = v4 & 1;
  HIDWORD(v73) = a2(v18) >> 32;
  v74 = v20;
  v21 = sub_1000105E4();
  v23 = v22;
  LOBYTE(v11) = v24;
  LODWORD(v73) = sub_100010494();
  v25 = sub_1000105A4();
  v27 = v26;
  LOBYTE(v6) = v28;
  v33 = v29;
  sub_100009E2C(v21, v23, v11 & 1);

  sub_1000107B4();
  sub_100010334();
  *&v44 = v35;
  *(&v44 + 1) = v15;
  LOBYTE(v45) = v19;
  *(&v45 + 1) = *v94;
  DWORD1(v45) = *&v94[3];
  *(&v45 + 1) = v31;
  v50 = v91;
  v51 = v92;
  v52 = v93;
  v46 = v87;
  v47 = v88;
  v48 = v89;
  v49 = v90;
  __src[6] = v91;
  __src[7] = v92;
  __src[2] = v87;
  __src[3] = v88;
  __src[4] = v89;
  __src[5] = v90;
  __src[0] = v44;
  __src[1] = v45;
  *&v53 = v25;
  *(&v53 + 1) = v27;
  LOBYTE(v54) = v6 & 1;
  *(&v54 + 1) = *v85;
  DWORD1(v54) = *&v85[3];
  *(&v54 + 1) = v33;
  v59 = v41;
  v60 = v42;
  v61 = v43;
  v55 = v37;
  v56 = v38;
  v57 = v39;
  v58 = v40;
  __src[12] = v38;
  __src[13] = v39;
  __src[10] = v54;
  __src[11] = v37;
  __src[14] = v40;
  __src[15] = v41;
  __src[16] = v42;
  __src[17] = v43;
  v86 = v6 & 1;
  __src[8] = v93;
  __src[9] = v53;
  memcpy(a3, __src, 0x120uLL);
  v62[0] = v25;
  v62[1] = v27;
  v63 = v6 & 1;
  *v64 = *v85;
  *&v64[3] = *&v85[3];
  v65 = v33;
  v70 = v41;
  v71 = v42;
  v72 = v43;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  v69 = v40;
  sub_10000A150(&v44, &v73, &qword_10001C530);
  sub_10000A150(&v53, &v73, &qword_10001C530);
  sub_10000B860(v62, &qword_10001C530);
  v73 = v35;
  v74 = v15;
  v75 = v19;
  *v76 = *v94;
  *&v76[3] = *&v94[3];
  v77 = v31;
  v82 = v91;
  v83 = v92;
  v84 = v93;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  v81 = v90;
  return sub_10000B860(&v73, &qword_10001C530);
}

uint64_t sub_100005B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a1;
  v27 = a2;
  v2 = sub_100010694();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000017C4(&qword_10001C4A8);
  v8 = v7 - 8;
  v10 = __chkstk_darwin(v7, v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = v26 - v14;
  sub_100010684();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v16 = sub_1000106B4();

  (*(v3 + 8))(v6, v2);
  sub_1000107A4();
  sub_1000102B4();
  LOBYTE(v34[0]) = 1;
  *&v30[3] = *&v30[27];
  *&v30[11] = *&v30[35];
  *&v30[19] = *&v30[43];
  v17 = &v15[*(sub_1000017C4(&qword_10001C4B8) + 36)];
  v18 = *(sub_1000017C4(&qword_10001C4C0) + 28);
  sub_100010424();
  v19 = sub_100010434();
  (*(*(v19 - 8) + 56))(v17 + v18, 0, 1, v19);
  *v17 = swift_getKeyPath();
  *v15 = v16;
  *(v15 + 1) = 0;
  *(v15 + 8) = 257;
  v20 = *&v30[8];
  *(v15 + 18) = *v30;
  *(v15 + 34) = v20;
  *(v15 + 50) = *&v30[16];
  *(v15 + 8) = *&v30[23];
  *&v15[*(v8 + 44)] = sub_100010644();
  v21 = sub_100010404();
  v29 = 1;
  sub_10000574C(&DeveloperApprovalSheetContext.thirdBulletTitle.getter, &DeveloperApprovalSheetContext.thirdBulletBody.getter, v34);
  memcpy(v31, v34, sizeof(v31));
  memcpy(v32, v34, sizeof(v32));
  sub_10000A150(v31, v33, &qword_10001C510);
  sub_10000B860(v32, &qword_10001C510);
  memcpy(&v28[7], v31, 0x120uLL);
  v22 = v29;
  sub_10000A150(v15, v12, &qword_10001C4A8);
  v23 = v27;
  sub_10000A150(v12, v27, &qword_10001C4A8);
  v24 = *(sub_1000017C4(&qword_10001C518) + 48);
  v33[0] = v21;
  v33[1] = 0;
  LOBYTE(v33[2]) = v22;
  memcpy(&v33[2] + 1, v28, 0x127uLL);
  memcpy((v23 + v24), v33, 0x138uLL);
  sub_10000A150(v33, v34, &qword_10001C520);
  sub_10000B860(v15, &qword_10001C4A8);
  v34[0] = v21;
  v34[1] = 0;
  LOBYTE(v34[2]) = v22;
  memcpy(&v34[2] + 1, v28, 0x127uLL);
  sub_10000B860(v34, &qword_10001C520);
  return sub_10000B860(v12, &qword_10001C4A8);
}

double sub_100006004()
{
  v0 = sub_100010304();
  v1 = *(v0 - 8);
  v3 = __chkstk_darwin(v0, v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v8 = &v14 - v7;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, &v14 - v7);
  (*(v1 + 104))(v5, enum case for DynamicTypeSize.large(_:), v0);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize);
  v9 = sub_100010804();
  v10 = *(v1 + 8);
  v10(v5, v0);
  v10(v8, v0);
  if (v9)
  {
    return INFINITY;
  }

  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  result = INFINITY;
  if (v13 == 1)
  {
    return 340.0;
  }

  return result;
}

uint64_t sub_1000061F4(__int128 *a1, uint64_t a2)
{
  v4 = sub_1000107C4();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000107E4();
  v8 = *(v26 - 8);
  __chkstk_darwin(v26, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DeveloperTrustSheetView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8, v15);
  sub_100009A90();
  v16 = *a1;
  v24 = a1[1];
  v25 = v16;
  v17 = sub_1000108E4();
  sub_100009990(a2, &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeveloperTrustSheetView);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  sub_100009A28(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for DeveloperTrustSheetView);
  v20 = (v19 + ((v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v24;
  *v20 = v25;
  v20[1] = v21;
  aBlock[4] = sub_100009C60;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006660;
  aBlock[3] = &unk_100018D90;
  v22 = _Block_copy(aBlock);

  sub_1000107D4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100009948(&qword_10001C468, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000017C4(&qword_10001C470);
  sub_10000BC5C(&qword_10001C478, &qword_10001C470);
  sub_100010914();
  sub_1000108F4();
  _Block_release(v22);

  (*(v27 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v26);
}

uint64_t sub_1000065B0(double a1, double a2, double a3, double a4)
{
  CGRectGetHeight(*&a1);
  sub_1000017C4(&qword_10001C410);
  sub_1000106D4();
  sub_1000017C4(&qword_10001C418);
  return sub_1000106E4();
}

uint64_t sub_100006660(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000066A4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for DeveloperTrustSheetButtons(0);
  __chkstk_darwin(v3, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000017C4(&qword_10001C400);
  __chkstk_darwin(v40, v7);
  v9 = &v36 - v8;
  v10 = sub_100010304();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v36 - v17;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, &v36 - v17);
  (*(v11 + 104))(v15, enum case for DynamicTypeSize.large(_:), v10);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize);
  v19 = sub_100010804();
  v20 = *(v11 + 8);
  v20(v15, v10);
  v20(v18, v10);
  if (v19)
  {
    swift_storeEnumTagMultiPayload();
    sub_100009948(&qword_10001C428, type metadata accessor for DeveloperTrustSheetButtons);
    return sub_100010464();
  }

  else
  {
    v22 = *(a1 + 4);
    v23 = a1[1];
    v46 = *a1;
    v47 = v23;
    v48 = v22;
    sub_1000017C4(&qword_10001C410);
    sub_1000106F4();
    v37 = v43;
    v38 = v42;
    v39 = v44;
    v36 = v45;
    v24 = *(a1 + 6);
    LOBYTE(v46) = *(a1 + 40);
    *(&v46 + 1) = v24;
    sub_1000017C4(&qword_10001C418);
    sub_1000106F4();
    v25 = v42;
    v26 = v43;
    v27 = v44;
    v28 = type metadata accessor for DeveloperTrustSheetView(0);
    v29 = *(v28 + 28);
    v30 = v3[7];
    v31 = sub_100010234();
    (*(*(v31 - 8) + 16))(&v6[v30], a1 + v29, v31);
    v32 = a1 + *(v28 + 32);
    swift_unknownObjectWeakLoadStrong();
    v33 = *(v32 + 8);
    *&v6[v3[6]] = swift_getKeyPath();
    sub_1000017C4(&qword_10001C420);
    swift_storeEnumTagMultiPayload();
    v34 = v37;
    *v6 = v38;
    *(v6 + 1) = v34;
    v35 = v36;
    *(v6 + 1) = v39;
    *(v6 + 2) = v35;
    *(v6 + 6) = v25;
    *(v6 + 7) = v26;
    v6[64] = v27;
    *&v6[v3[8] + 8] = v33;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    sub_100009990(v6, v9, type metadata accessor for DeveloperTrustSheetButtons);
    swift_storeEnumTagMultiPayload();
    sub_100009948(&qword_10001C428, type metadata accessor for DeveloperTrustSheetButtons);
    sub_100010464();
    return sub_10000A0F0(v6, type metadata accessor for DeveloperTrustSheetButtons);
  }
}

uint64_t sub_100006B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100010454();
  __chkstk_darwin(v4, v5);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_100010464();
}

uint64_t sub_100006C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100010454();
  __chkstk_darwin(v5, v6);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_100010464();
}

uint64_t sub_100006D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000103D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000017C4(&qword_10001C420);
  __chkstk_darwin(v10, v11);
  v13 = &v17 - v12;
  sub_10000A150(v2 + *(a1 + 40), &v17 - v12, &qword_10001C420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_100010304();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    sub_1000108D4();
    v16 = sub_1000104D4();
    sub_100010244();

    sub_1000103C4();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_100006F50(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_100010724();
  v59 = *(v6 - 8);
  v8 = __chkstk_darwin(v6, v7);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v57 = &v55 - v11;
  v61 = v5;
  v62 = v4;
  v12 = sub_100010744();
  v56 = *(v12 - 8);
  v14 = __chkstk_darwin(v12, v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v55 = &v55 - v18;
  v19 = sub_100010304();
  v20 = *(v19 - 8);
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v55 - v26;
  v60 = v6;
  v28 = sub_100010474();
  v64 = *(v28 - 8);
  v65 = v28;
  __chkstk_darwin(v28, v29);
  v63 = &v55 - v30;
  v31 = v2;
  sub_100006D40(a1, v27);
  (*(v20 + 104))(v24, enum case for DynamicTypeSize.large(_:), v19);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize);
  v32 = sub_100010804();
  v33 = *(v20 + 8);
  v33(v24, v19);
  v33(v27, v19);
  if (v32)
  {
    v34 = sub_100010414();
    __chkstk_darwin(v34, *&v31[*(a1 + 36)]);
    v35 = v61;
    *(&v55 - 4) = v62;
    *(&v55 - 3) = v35;
    *(&v55 - 2) = v31;
    sub_100010734();
    swift_getWitnessTable();
    v37 = v55;
    v36 = v56;
    v38 = *(v56 + 16);
    v38(v55, v16, v12);
    v39 = *(v36 + 8);
    v39(v16, v12);
    v38(v16, v37, v12);
    swift_getWitnessTable();
    v40 = v63;
    sub_100006B50(v16, v12);
    v39(v16, v12);
    v41 = v37;
    v42 = v12;
  }

  else
  {
    v43 = sub_1000103E4();
    __chkstk_darwin(v43, *&v31[*(a1 + 36)]);
    v44 = v61;
    *(&v55 - 4) = v62;
    *(&v55 - 3) = v44;
    *(&v55 - 2) = v31;
    v45 = v58;
    sub_100010714();
    v46 = v60;
    swift_getWitnessTable();
    v47 = v59;
    v48 = *(v59 + 16);
    v49 = v57;
    v48(v57, v45, v46);
    v39 = *(v47 + 8);
    v39(v45, v46);
    v48(v45, v49, v46);
    swift_getWitnessTable();
    v40 = v63;
    sub_100006C48(v45, v12, v46);
    v39(v45, v46);
    v41 = v49;
    v42 = v46;
  }

  v39(v41, v42);
  WitnessTable = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  v67 = WitnessTable;
  v68 = v51;
  v52 = v65;
  swift_getWitnessTable();
  v53 = v64;
  (*(v64 + 16))(v66, v40, v52);
  return (*(v53 + 8))(v40, v52);
}

uint64_t sub_100007640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1, a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

uint64_t sub_100007734@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000103D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000017C4(&qword_10001C420);
  __chkstk_darwin(v10, v11);
  v13 = &v18 - v12;
  v14 = a1(0);
  sub_10000A150(v2 + *(v14 + 24), v13, &qword_10001C420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100010304();
    return (*(*(v15 - 8) + 32))(a2, v13, v15);
  }

  else
  {
    sub_1000108D4();
    v17 = sub_1000104D4();
    sub_100010244();

    sub_1000103C4();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_10000796C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for DeveloperTrustSheetButtons(0);
  v53 = *(v3 - 8);
  v52 = *(v53 + 64);
  __chkstk_darwin(v3 - 8, v4);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100010784();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000017C4(&qword_10001C758);
  v12 = v11 - 8;
  __chkstk_darwin(v11, v13);
  v15 = &v47 - v14;
  v16 = sub_1000017C4(&qword_10001C760);
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v47 - v18;
  v20 = sub_1000017C4(&qword_10001C768);
  v21 = v20 - 8;
  __chkstk_darwin(v20, v22);
  v24 = &v47 - v23;
  v51 = sub_1000017C4(&qword_10001C770) - 8;
  __chkstk_darwin(v51, v25);
  v50 = &v47 - v26;
  *v19 = sub_1000103E4();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v27 = sub_1000017C4(&qword_10001C778);
  sub_100007E5C(v1, &v19[*(v27 + 44)]);
  sub_100010774();
  v28 = *(v1 + 48);
  v29 = *(v1 + 56);
  v30 = *(v1 + 64);
  v48 = v1;
  v56 = v28;
  v57 = v29;
  v58 = v30;
  sub_1000017C4(&qword_10001C780);
  sub_100010754();
  if (v55)
  {
    v31 = 1.0;
  }

  else
  {
    v31 = 0.0;
  }

  (*(v7 + 32))(v15, v10, v6);
  *&v15[*(v12 + 44)] = v31;
  v32 = sub_100010504();
  v33 = &v24[*(v21 + 44)];
  sub_10000B024(v15, v33, &qword_10001C758);
  *(v33 + *(sub_1000017C4(&qword_10001C788) + 36)) = v32;
  sub_10000B024(v19, v24, &qword_10001C760);
  v34 = v49;
  sub_100009990(v2, v49, type metadata accessor for DeveloperTrustSheetButtons);
  v35 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v36 = swift_allocObject();
  sub_100009A28(v34, v36 + v35, type metadata accessor for DeveloperTrustSheetButtons);
  v37 = sub_1000107A4();
  v39 = v38;
  v40 = v24;
  v41 = v50;
  sub_10000B024(v40, v50, &qword_10001C768);
  v42 = (v41 + *(v51 + 44));
  *v42 = sub_10000B090;
  v42[1] = v36;
  v42[2] = v37;
  v42[3] = v39;
  sub_100009990(v48, v34, type metadata accessor for DeveloperTrustSheetButtons);
  v43 = swift_allocObject();
  sub_100009A28(v34, v43 + v35, type metadata accessor for DeveloperTrustSheetButtons);
  v44 = v54;
  sub_10000B024(v41, v54, &qword_10001C770);
  result = sub_1000017C4(&qword_10001C790);
  v46 = (v44 + *(result + 36));
  *v46 = sub_10000BD98;
  v46[1] = 0;
  v46[2] = sub_10000B298;
  v46[3] = v43;
  return result;
}

uint64_t sub_100007E5C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v62 = a2;
  v3 = sub_1000017C4(&qword_10001C7A0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v55 - v5;
  v56 = sub_1000017C4(&qword_10001C7A8);
  __chkstk_darwin(v56, v7);
  v9 = &v55 - v8;
  v58 = sub_1000017C4(&qword_10001C7B0);
  __chkstk_darwin(v58, v10);
  v12 = &v55 - v11;
  v59 = sub_1000017C4(&qword_10001C7B8);
  v14 = __chkstk_darwin(v59, v13);
  v60 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14, v16);
  v19 = &v55 - v18;
  __chkstk_darwin(v17, v20);
  v57 = &v55 - v21;
  v22 = sub_1000084A4(type metadata accessor for DeveloperTrustSheetButtons);
  v23 = objc_opt_self();
  v24 = [v23 currentDevice];
  v25 = [v24 userInterfaceIdiom];

  if (v25 == 1)
  {
    v26 = 0x4028000000000000;
  }

  else
  {
    v26 = 0x4024000000000000;
  }

  *v6 = sub_100010404();
  *(v6 + 1) = v26;
  v6[16] = 0;
  v27 = &v6[*(sub_1000017C4(&qword_10001C7C0) + 44)];
  v61 = a1;
  sub_100008674(a1, v27);
  v28 = [v23 currentDevice];
  [v28 userInterfaceIdiom];

  sub_1000107A4();
  sub_100010334();
  sub_10000B024(v6, v9, &qword_10001C7A0);
  v29 = &v9[*(v56 + 36)];
  v30 = v68;
  *(v29 + 4) = v67;
  *(v29 + 5) = v30;
  *(v29 + 6) = v69;
  v31 = v64;
  *v29 = v63;
  *(v29 + 1) = v31;
  v32 = v66;
  *(v29 + 2) = v65;
  *(v29 + 3) = v32;
  sub_1000017C4(&qword_10001C7C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100010FF0;
  LOBYTE(v28) = sub_100010534();
  *(inited + 32) = v28;
  v34 = sub_100010554();
  *(inited + 33) = v34;
  v35 = sub_100010544();
  sub_100010544();
  if (sub_100010544() != v28)
  {
    v35 = sub_100010544();
  }

  sub_100010544();
  if (sub_100010544() != v34)
  {
    v35 = sub_100010544();
  }

  sub_10000B024(v9, v12, &qword_10001C7A8);
  v36 = &v12[*(v58 + 36)];
  *v36 = v35;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  v36[40] = 1;
  v37 = sub_100010524();
  v38 = [v23 currentDevice];
  [v38 userInterfaceIdiom];

  sub_100010284();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_10000B024(v12, v19, &qword_10001C7B0);
  v47 = &v19[*(v59 + 36)];
  *v47 = v37;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  v48 = v57;
  sub_10000B024(v19, v57, &qword_10001C7B8);
  v49 = sub_1000084A4(type metadata accessor for DeveloperTrustSheetButtons);
  v50 = v60;
  sub_10000A150(v48, v60, &qword_10001C7B8);
  v51 = v62;
  *v62 = v22;
  *(v51 + 8) = 0;
  v52 = sub_1000017C4(&qword_10001C7D0);
  sub_10000A150(v50, v51 + *(v52 + 48), &qword_10001C7B8);
  v53 = (v51 + *(v52 + 64));
  *v53 = v49;
  *(v53 + 8) = 0;
  sub_10000B860(v48, &qword_10001C7B8);
  return sub_10000B860(v50, &qword_10001C7B8);
}

double sub_1000084A4(uint64_t (*a1)(void))
{
  v2 = sub_100010304();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v16 - v9;
  sub_100007734(a1, &v16 - v9);
  (*(v3 + 104))(v7, enum case for DynamicTypeSize.large(_:), v2);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize);
  v11 = sub_100010804();
  v12 = *(v3 + 8);
  v12(v7, v2);
  v12(v10, v2);
  result = 0.0;
  if ((v11 & 1) == 0)
  {
    v14 = [objc_opt_self() currentDevice];
    v15 = [v14 userInterfaceIdiom];

    result = 88.0;
    if (v15 != 1)
    {
      return 20.0;
    }
  }

  return result;
}

uint64_t sub_100008674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v114 = sub_1000104C4();
  v116 = *(v114 - 8);
  __chkstk_darwin(v114, v3);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DeveloperTrustSheetButtons(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8, v9);
  v107 = v8;
  v10 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000017C4(&qword_10001C7D8);
  __chkstk_darwin(v11, v12);
  v14 = &v88 - v13;
  v115 = sub_1000017C4(&qword_10001C7E0) - 8;
  v16 = __chkstk_darwin(v115, v15);
  v112 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v110 = &v88 - v20;
  __chkstk_darwin(v19, v21);
  v23 = &v88 - v22;
  v24 = sub_1000017C4(&qword_10001C7E8);
  v25 = v24 - 8;
  __chkstk_darwin(v24, v26);
  v95 = &v88 - v27;
  v28 = sub_1000017C4(&qword_10001C7F0);
  v29 = v28 - 8;
  v31 = __chkstk_darwin(v28, v30);
  v111 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31, v33);
  v99 = &v88 - v35;
  __chkstk_darwin(v34, v36);
  v108 = &v88 - v37;
  v109 = type metadata accessor for DeveloperTrustSheetButtons;
  v98 = a1;
  v100 = v10;
  sub_100009990(a1, v10, type metadata accessor for DeveloperTrustSheetButtons);
  v106 = *(v7 + 80);
  v38 = (v106 + 16) & ~v106;
  v104 = v38;
  v39 = swift_allocObject();
  v105 = type metadata accessor for DeveloperTrustSheetButtons;
  sub_100009A28(v10, v39 + v38, type metadata accessor for DeveloperTrustSheetButtons);
  v118 = a1;
  v102 = sub_1000017C4(&qword_10001C7F8);
  v103 = sub_10000B66C();
  sub_100010704();
  v88 = v11;
  v40 = &v14[*(v11 + 36)];
  v101 = sub_100010324();
  v41 = *(v101 + 20);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v96 = enum case for RoundedCornerStyle.continuous(_:);
  v93 = sub_1000103F4();
  v43 = *(v93 - 8);
  v92 = *(v43 + 104);
  v97 = v43 + 104;
  v92(&v40[v41], v42, v93);
  __asm { FMOV            V0.2D, #16.0 }

  v94 = _Q0;
  *v40 = _Q0;
  v49 = sub_1000017C4(&qword_10001C818);
  *&v40[*(v49 + 36)] = 256;
  sub_1000104B4();
  v91 = sub_10000B77C();
  v90 = sub_100009948(&qword_10001C840, &type metadata accessor for BorderedProminentButtonStyle);
  v50 = v114;
  sub_100010614();
  v89 = *(v116 + 8);
  v116 += 8;
  v89(v5, v50);
  sub_10000B860(v14, &qword_10001C7D8);
  sub_100010654();
  v51 = sub_100010674();

  KeyPath = swift_getKeyPath();
  v53 = sub_1000017C4(&qword_10001C848);
  v54 = &v23[*(v53 + 36)];
  *v54 = KeyPath;
  v54[1] = v51;
  *&v23[*(v115 + 44)] = sub_100010644();
  LOBYTE(v51) = sub_100010514();
  v55 = [objc_opt_self() currentDevice];
  [v55 userInterfaceIdiom];

  sub_100010284();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v23;
  v65 = v95;
  sub_10000B024(v64, v95, &qword_10001C7E0);
  v66 = v65 + *(v25 + 44);
  *v66 = v51;
  *(v66 + 8) = v57;
  *(v66 + 16) = v59;
  *(v66 + 24) = v61;
  *(v66 + 32) = v63;
  *(v66 + 40) = 0;
  sub_1000107A4();
  sub_100010334();
  v67 = v99;
  sub_10000B024(v65, v99, &qword_10001C7E8);
  v68 = (v67 + *(v29 + 44));
  v69 = v124;
  v68[4] = v123;
  v68[5] = v69;
  v68[6] = v125;
  v70 = v120;
  *v68 = v119;
  v68[1] = v70;
  v71 = v122;
  v68[2] = v121;
  v68[3] = v71;
  v72 = v108;
  sub_10000B024(v67, v108, &qword_10001C7F0);
  v73 = v98;
  v74 = v100;
  sub_100009990(v98, v100, v109);
  v75 = v104;
  v76 = swift_allocObject();
  sub_100009A28(v74, v76 + v75, v105);
  v117 = v73;
  sub_100010704();
  v77 = &v14[*(v88 + 36)];
  v92(&v77[*(v101 + 20)], v96, v93);
  *v77 = v94;
  *&v77[*(v49 + 36)] = 256;
  sub_1000104B4();
  v78 = v110;
  v79 = v114;
  sub_100010614();
  v89(v5, v79);
  sub_10000B860(v14, &qword_10001C7D8);
  sub_100010654();
  v80 = sub_100010674();

  v81 = swift_getKeyPath();
  v82 = (v78 + *(v53 + 36));
  *v82 = v81;
  v82[1] = v80;
  *(v78 + *(v115 + 44)) = sub_100010644();
  v83 = v111;
  sub_10000A150(v72, v111, &qword_10001C7F0);
  v84 = v112;
  sub_10000A150(v78, v112, &qword_10001C7E0);
  v85 = v113;
  sub_10000A150(v83, v113, &qword_10001C7F0);
  v86 = sub_1000017C4(&qword_10001C850);
  sub_10000A150(v84, v85 + *(v86 + 48), &qword_10001C7E0);
  sub_10000B860(v78, &qword_10001C7E0);
  sub_10000B860(v72, &qword_10001C7F0);
  sub_10000B860(v84, &qword_10001C7E0);
  return sub_10000B860(v83, &qword_10001C7F0);
}

uint64_t sub_1000090F8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ButtonSelection(0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DeveloperTrustSheetButtons(0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = sub_100010154();
    (*(*(v8 - 8) + 56))(v6, a2, 2, v8);
    sub_10000C7F8(v6);
    swift_unknownObjectRelease();
    return sub_10000A0F0(v6, type metadata accessor for ButtonSelection);
  }

  return result;
}

__n128 sub_1000091F4@<Q0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for DeveloperTrustSheetButtons(0);
  *&v18 = a1();
  *(&v18 + 1) = v4;
  sub_100009DD8();
  v5 = sub_1000105E4();
  v7 = v6;
  v9 = v8;
  v10 = sub_1000105B4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_100009E2C(v5, v7, v9 & 1);

  sub_1000107A4();
  sub_1000102B4();
  sub_1000107A4();
  sub_100010334();
  *(a2 + 32) = v25;
  *(a2 + 48) = v26;
  result = v27;
  *(a2 + 128) = v21;
  *(a2 + 144) = v22;
  *(a2 + 160) = v23;
  *(a2 + 176) = v24;
  *(a2 + 64) = v27;
  *(a2 + 80) = v18;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  *(a2 + 96) = v19;
  *(a2 + 112) = v20;
  return result;
}

uint64_t sub_100009364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = a1;
  v5 = sub_1000102D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v9 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeveloperTrustSheetButtons(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8, v13);
  v14 = sub_100010664();
  sub_100009990(a2, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeveloperTrustSheetButtons);
  (*(v6 + 16))(v9, v20, v5);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + *(v6 + 80) + v15) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_100009A28(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15, type metadata accessor for DeveloperTrustSheetButtons);
  result = (*(v6 + 32))(v17 + v16, v9, v5);
  *a3 = v14;
  a3[1] = sub_10000B568;
  a3[2] = v17;
  a3[3] = 0;
  a3[4] = 0;
  return result;
}

uint64_t sub_100009574(uint64_t a1)
{
  v2 = sub_100010484();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000104A4();
  sub_1000102C4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v15 = *(a1 + 8);
  v18[4] = *a1;
  v18[5] = v15;
  v16 = *(a1 + 32);
  v19 = *(a1 + 16);
  v20 = v16;
  v18[0] = v8;
  v18[1] = v10;
  v18[2] = v12;
  v18[3] = v14;
  sub_1000017C4(&qword_10001C798);
  return sub_100010764();
}

uint64_t sub_1000096B8@<X0>(void *a1@<X8>)
{
  v2 = sub_100010484();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000104A4();
  sub_1000102C4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v8;
  a1[1] = v10;
  a1[2] = v12;
  a1[3] = v14;
  return result;
}

uint64_t sub_100009878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_100009948(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100009A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100009A90()
{
  result = qword_10001C460;
  if (!qword_10001C460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C460);
  }

  return result;
}

uint64_t sub_100009ADC()
{
  v1 = type metadata accessor for DeveloperTrustSheetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  sub_1000017C4(&qword_10001C420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_100010304();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 28);
  v10 = sub_100010234();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v8 + 32, v2 | 7);
}

uint64_t sub_100009C60()
{
  v1 = *(type metadata accessor for DeveloperTrustSheetView(0) - 8);
  v2 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return sub_1000065B0(v3, v4, v5, v6);
}

uint64_t sub_100009CF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009D30(uint64_t a1)
{
  v2 = sub_1000017C4(&qword_10001C568);
  __chkstk_darwin(v2 - 8, v3);
  sub_10000A150(a1, &v6 - v4, &qword_10001C568);
  return sub_100010364();
}

unint64_t sub_100009DD8()
{
  result = qword_10001C528;
  if (!qword_10001C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C528);
  }

  return result;
}

uint64_t sub_100009E2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100009E3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100010374();
  *a1 = result;
  return result;
}

uint64_t sub_100009E90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100009EA0()
{
  v1 = type metadata accessor for DeveloperTrustSheetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  sub_1000017C4(&qword_10001C420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_100010304();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  v9 = sub_100010234();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000A018(uint64_t a1)
{
  type metadata accessor for DeveloperTrustSheetView(0);

  return sub_1000041E0(a1);
}

uint64_t sub_10000A0B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A0F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000A150(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000017C4(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000A1CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100010154();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000A24C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100010154();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10000A2D4()
{
  v0 = sub_100010154();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_10000A340(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000017C4(&qword_10001C2F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100010234();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000A484(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000017C4(&qword_10001C2F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100010234();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10000A5F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t), unint64_t *a6, uint64_t (*a7)(void, uint64_t))
{
  sub_1000019BC(319, a4, type metadata accessor for CGRect, a5);
  if (v9 <= 0x3F)
  {
    sub_10000AE74(319, a6, &type metadata for Bool, a7);
    if (v10 <= 0x3F)
    {
      sub_1000019BC(319, &unk_10001C370, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v11 <= 0x3F)
      {
        sub_100010234();
        if (v12 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000A724()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1000019BC(319, &unk_10001C370, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10000A7E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_100010304() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  v12 = *(v8 + 80) & 0xF8 | 7;
  if (a2 <= v10)
  {
    goto LABEL_30;
  }

  v13 = v9 + ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_30:
      if (v7 < 0xFE)
      {
        v22 = *(((((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12) + v9);
        if (v22 >= 2)
        {
          return (v22 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v21 = *(v6 + 48);

        return v21(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_10000AA50(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_100010304() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v8 + 64);
  v14 = *(v10 + 80) & 0xF8 | 7;
  v15 = v11 + 1;
  v16 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + v11 + 1;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFE)
  {
    v24 = (((&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14);
    if (a2 > 0xFE)
    {
      if (v15 <= 3)
      {
        v25 = ~(-1 << (8 * v15));
      }

      else
      {
        v25 = -1;
      }

      if (v15)
      {
        v26 = v25 & (a2 - 255);
        if (v15 <= 3)
        {
          v27 = v15;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v15);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            v24[2] = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }

    else
    {
      v24[v11] = -a2;
    }
  }

  else
  {
    v23 = *(v28 + 56);

    v23(a1, a2, v9, v7);
  }
}

__n128 sub_10000ADD0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000ADDC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000ADFC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_10000AE74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10000AEC8()
{
  result = qword_10001C750;
  if (!qword_10001C750)
  {
    sub_100006F50(&qword_10001C3F8);
    sub_100006F50(&qword_10001C3B8);
    sub_10000BC5C(&qword_10001C3F0, &qword_10001C3B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C750);
  }

  return result;
}

uint64_t sub_10000B024(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000017C4(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000B090@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for DeveloperTrustSheetButtons(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100009364(a1, v6, a2);
}

uint64_t sub_10000B110()
{
  v1 = type metadata accessor for DeveloperTrustSheetButtons(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  sub_1000017C4(&qword_10001C420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_100010304();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  v9 = sub_100010234();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000B2C4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_10000B34C()
{
  v1 = type metadata accessor for DeveloperTrustSheetButtons(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1000102D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v16 = *(v6 + 64);
  v8 = v0 + v3;

  v9 = *(v1 + 24);
  sub_1000017C4(&qword_10001C420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_100010304();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  v13 = *(v1 + 28);
  v14 = sub_100010234();
  (*(*(v14 - 8) + 8))(v8 + v13, v14);
  swift_unknownObjectWeakDestroy();
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v16, v11 | 7);
}

uint64_t sub_10000B568()
{
  v1 = *(type metadata accessor for DeveloperTrustSheetButtons(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1000102D4();

  return sub_100009574(v0 + v2);
}

unint64_t sub_10000B66C()
{
  result = qword_10001C800;
  if (!qword_10001C800)
  {
    sub_100006F50(&qword_10001C7F8);
    sub_10000B6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C800);
  }

  return result;
}

unint64_t sub_10000B6F8()
{
  result = qword_10001C808;
  if (!qword_10001C808)
  {
    sub_100006F50(&qword_10001C810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C808);
  }

  return result;
}

unint64_t sub_10000B77C()
{
  result = qword_10001C820;
  if (!qword_10001C820)
  {
    sub_100006F50(&qword_10001C7D8);
    sub_10000BC5C(&qword_10001C828, &qword_10001C830);
    sub_10000BC5C(&qword_10001C838, &qword_10001C818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C820);
  }

  return result;
}

uint64_t sub_10000B860(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000017C4(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000B8C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000103A4();
  *a1 = result;
  return result;
}

unint64_t sub_10000BA08()
{
  result = qword_10001C858;
  if (!qword_10001C858)
  {
    sub_100006F50(&qword_10001C790);
    sub_10000BAC0();
    sub_10000BC5C(&qword_10001C890, &qword_10001C898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C858);
  }

  return result;
}

unint64_t sub_10000BAC0()
{
  result = qword_10001C860;
  if (!qword_10001C860)
  {
    sub_100006F50(&qword_10001C770);
    sub_10000BB78();
    sub_10000BC5C(&qword_10001C880, &qword_10001C888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C860);
  }

  return result;
}

unint64_t sub_10000BB78()
{
  result = qword_10001C868;
  if (!qword_10001C868)
  {
    sub_100006F50(&qword_10001C768);
    sub_10000BC5C(&qword_10001C870, &qword_10001C760);
    sub_10000BC5C(&qword_10001C878, &qword_10001C788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C868);
  }

  return result;
}

uint64_t sub_10000BC5C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100006F50(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BCA4()
{
  sub_100010744();
  sub_100010724();
  sub_100010474();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id sub_10000BD9C()
{
  v1 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_followUpController;
  v2 = objc_allocWithZone(FLFollowUpController);
  v3 = sub_100010814();
  v4 = [v2 initWithClientIdentifier:v3];

  *&v0[v1] = v4;
  *&v0[OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetViewController] = 0;
  v5 = &v0[OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_followUpIdentifier];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetContext;
  v7 = sub_100010234();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  v9.receiver = v0;
  v9.super_class = type metadata accessor for FollowUpViewController();
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

void sub_10000BF3C(char a1)
{
  v3 = type metadata accessor for DeveloperTrustSheetView(0);
  __chkstk_darwin(v3, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000017C4(&qword_10001C918);
  __chkstk_darwin(v7 - 8, v8);
  v10 = v26 - v9;
  v11 = sub_100010234();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FollowUpViewController();
  v30.receiver = v1;
  v30.super_class = v16;
  objc_msgSendSuper2(&v30, "viewWillAppear:", a1 & 1);
  v17 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetViewController;
  if (!*&v1[OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetViewController])
  {
    v18 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetContext;
    swift_beginAccess();
    sub_10000A150(&v1[v18], v10, &qword_10001C918);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10000B860(v10, &qword_10001C918);
    }

    else
    {
      (*(v12 + 32))(v15, v10, v11);
      (*(v12 + 16))(&v6[v3[7]], v15, v11);
      *&v6[v3[6]] = swift_getKeyPath();
      sub_1000017C4(&qword_10001C420);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for CGRect(0);
      memset(v26, 0, sizeof(v26));
      sub_1000106C4();
      v19 = v29;
      v20 = v28;
      *v6 = v27;
      *(v6 + 1) = v20;
      *(v6 + 4) = v19;
      LOBYTE(v26[0]) = 0;
      sub_1000106C4();
      v21 = *(&v27 + 1);
      v6[40] = v27;
      *(v6 + 6) = v21;
      *&v6[v3[8] + 8] = &off_100019000;
      swift_unknownObjectWeakInit();
      v22 = objc_allocWithZone(sub_1000017C4(&unk_10001C940));
      v23 = v1;
      v24 = sub_100010444();
      [v24 setModalPresentationStyle:2];
      [v23 presentViewController:v24 animated:1 completion:0];
      (*(v12 + 8))(v15, v11);
      v25 = *&v23[v17];
      *&v23[v17] = v24;
    }
  }
}

uint64_t sub_10000C378(void *a1, void *a2, uint64_t (*a3)(id))
{
  v7 = sub_1000017C4(&qword_10001C918);
  result = __chkstk_darwin(v7 - 8, v8);
  v11 = &v29 - v10;
  if (!a1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = [a1 uniqueIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100010824();
    v16 = v15;

    v17 = &type metadata for String;
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v17 = 0;
    v32[2] = 0;
  }

  v32[0] = v14;
  v32[1] = v16;
  v32[3] = v17;
  v18 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_followUpIdentifier;
  swift_beginAccess();
  sub_10000FEEC(v32, v3 + v18, &qword_10001C900);
  result = swift_endAccess();
  if (!a2)
  {
    goto LABEL_18;
  }

  v19 = [a2 destructive];
  if (v19)
  {
    sub_10000DDD0();
    if (a3)
    {
      return a3(v19);
    }

    __break(1u);
  }

  v30 = 0xD000000000000010;
  v31 = 0x8000000100014120;
  sub_100010944();
  result = [a1 userInfo];
  if (!result)
  {
    goto LABEL_19;
  }

  v20 = result;
  v21 = sub_1000107F4();

  if (*(v21 + 16) && (v22 = v3, v23 = sub_10000F020(v32), (v24 & 1) != 0))
  {
    sub_10000E4B0(*(v21 + 56) + 32 * v23, v33);
    sub_10000FB30(v32);

    result = swift_dynamicCast();
    if (result)
    {
      v25 = v30;
      v26 = v31;
      sub_100010124();
      swift_allocObject();
      sub_100010114();
      v27 = sub_100010234();
      sub_10000FE50(&qword_10001C938, &type metadata accessor for DeveloperApprovalSheetContext);
      sub_100010104();
      sub_10000FE98(v25, v26);

      (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
      v28 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetContext;
      swift_beginAccess();
      sub_10000FEEC(v11, v22 + v28, &qword_10001C918);
      result = swift_endAccess();
    }
  }

  else
  {

    result = sub_10000FB30(v32);
  }

  if (a3)
  {
    return a3(v19);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000C7F8(uint64_t a1)
{
  v65 = a1;
  v2 = sub_1000017C4(&qword_10001C910);
  __chkstk_darwin(v2 - 8, v3);
  v63 = &v58 - v4;
  v5 = sub_100010154();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  v8 = __chkstk_darwin(v5, v7);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v64 = &v58 - v10;
  v11 = sub_100010164();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11, v12);
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ButtonSelection(0);
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000017C4(&qword_10001C918);
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v58 - v20;
  v22 = sub_100010234();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22, v24);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetContext;
  swift_beginAccess();
  sub_10000A150(v1 + v27, v21, &qword_10001C918);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    return sub_10000B860(v21, &qword_10001C918);
  }

  (*(v23 + 32))(v26, v21, v22);
  sub_10000E62C(v65, v17);
  v29 = (*(v66 + 48))(v17, 2, v67);
  if (v29)
  {
    if (v29 == 1)
    {
      v30 = v1;
      v32 = v59;
      v31 = v60;
      v33 = v61;
      (*(v60 + 104))(v59, enum case for FeatureFlag.newInstallSheetFlow(_:), v61);
      v34 = sub_100010194();
      (*(v31 + 8))(v32, v33);
      if (v34)
      {
        sub_1000101B4();
        sub_100010184();

        sub_10000DDD0();
      }

      else
      {
        v44 = sub_1000101E4();
        v67 = v23;
        v45 = v22;
        v47 = v46;
        v48 = sub_100010204();
        v50 = v49;
        v51 = sub_1000101C4();
        v53 = v52;
        v54 = sub_1000101F4();
        v65 = v26;
        v56 = v55;
        v57 = v30;
        sub_10000F12C(v44, v47, v48, v50, v51, v53, v54, v56, v57);
        v22 = v45;
        v23 = v67;

        v26 = v65;
      }
    }

    else
    {
      [v1 finishProcessing];
    }

    return (*(v23 + 8))(v26, v22);
  }

  else
  {
    v35 = v66;
    v36 = v67;
    v65 = v26;
    v60 = *(v66 + 32);
    v37 = v64;
    (v60)(v64, v17, v67);
    v38 = sub_1000108A4();
    v39 = v63;
    (*(*(v38 - 8) + 56))(v63, 1, 1, v38);
    v40 = v62;
    (*(v35 + 16))(v62, v37, v36);
    sub_100010884();
    v61 = v22;
    v59 = v1;
    v41 = sub_100010874();
    v42 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    *(v43 + 24) = &protocol witness table for MainActor;
    (v60)(v43 + v42, v40, v36);
    *(v43 + ((v6 + v42 + 7) & 0xFFFFFFFFFFFFFFF8)) = v59;
    sub_10000D270(0, 0, v39, &unk_100011608, v43);

    (*(v35 + 8))(v64, v36);
    return (*(v23 + 8))(v65, v61);
  }
}

uint64_t sub_10000CE48(char a1, uint64_t a2, void *a3)
{
  v5 = sub_1000017C4(&qword_10001C910);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = sub_1000108A4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100010884();
  v10 = a3;
  v11 = sub_100010874();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = a1;
  *(v12 + 40) = v10;
  sub_10000D270(0, 0, v8, &unk_100011630, v12);
}

uint64_t sub_10000CF80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  *(v5 + 88) = a4;
  sub_1000017C4(&qword_10001C918);
  *(v5 + 48) = swift_task_alloc();
  v6 = sub_100010234();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  sub_100010884();
  *(v5 + 80) = sub_100010874();
  v8 = sub_100010864();

  return _swift_task_switch(sub_10000D0B0, v8, v7);
}

uint64_t sub_10000D0B0()
{
  v1 = *(v0 + 88);

  if (v1 == 1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetContext;
    swift_beginAccess();
    sub_10000A150(v5 + v6, v4, &qword_10001C918);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_10000B860(*(v0 + 48), &qword_10001C918);
    }

    else
    {
      (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 48), *(v0 + 56));
      sub_1000101B4();
      sub_1000101D4();
      sub_1000101A4();
      sub_100010174();
      v8 = *(v0 + 64);
      v7 = *(v0 + 72);
      v9 = *(v0 + 56);

      sub_10000DDD0();
      (*(v8 + 8))(v7, v9);
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10000D270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000017C4(&qword_10001C910);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_10000A150(a3, v26 - v11, &qword_10001C910);
  v13 = sub_1000108A4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000B860(v12, &qword_10001C910);
  }

  else
  {
    sub_100010894();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100010864();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100010834() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10000B860(a3, &qword_10001C910);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B860(a3, &qword_10001C910);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000D570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v6 = sub_100010274();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  sub_100010884();
  v5[28] = sub_100010874();
  v8 = sub_100010864();
  v5[29] = v8;
  v5[30] = v7;

  return _swift_task_switch(sub_10000D664, v8, v7);
}

uint64_t sub_10000D664()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[31] = v1;
  if (v1)
  {
    v3 = v1;
    sub_100010144(v2);
    v5 = v4;
    v0[32] = v4;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_10000D7C8;
    v6 = swift_continuation_init();
    v0[17] = sub_1000017C4(&qword_10001C920);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000DB84;
    v0[13] = &unk_1000191F0;
    v0[14] = v6;
    [v3 openURL:v5 configuration:0 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10000D7C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_10000D994;
  }

  else
  {
    v5 = sub_10000D8F8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000D8F8()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[24];

  [v3 finishProcessing];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000D994()
{
  v19 = v0;
  v1 = v0[32];
  v2 = v0[31];

  swift_willThrow();

  sub_100010254();
  swift_errorRetain();
  v3 = sub_100010264();
  v4 = sub_1000108C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v17 = v0[27];
    v6 = v0[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = sub_100010994();
    v11 = sub_10000EA78(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to open learn more url: %{public}s", v7, 0xCu);
    sub_10000E554(v8);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v0[26];
    v12 = v0[27];
    v14 = v0[25];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10000DB84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10000FDAC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000017C4(&qword_10001C930);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_1000107F4();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000DC80(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_100010924(*(a2 + 40)), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      sub_10000FB84(*(a2 + 48) + 40 * v5, v9);
      v7 = sub_100010934();
      sub_10000FB30(v9);
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_10000DD58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10000DDD0()
{
  v1 = v0;
  v2 = sub_1000107C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000107E4();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7, v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v0[OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_followUpController];
  if (v13)
  {
    v14 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_followUpIdentifier;
    swift_beginAccess();
    sub_10000A150(v1 + v14, &aBlock, &qword_10001C900);
    if (v24)
    {
      sub_10000E4A0(&aBlock, v28);
      sub_100009A90();
      v15 = v13;
      v21 = sub_1000108E4();
      sub_10000E4B0(v28, v27);
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      sub_10000E4A0(v27, (v16 + 24));
      *(v16 + 56) = v1;
      v25 = sub_10000E5A0;
      v26 = v16;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v23 = sub_100006660;
      v24 = &unk_100019038;
      v17 = _Block_copy(&aBlock);
      v18 = v15;
      v19 = v1;

      sub_1000107D4();
      *&aBlock = &_swiftEmptyArrayStorage;
      sub_10000FE50(&qword_10001C468, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000017C4(&qword_10001C470);
      sub_10000E5C8();
      sub_100010914();
      v20 = v21;
      sub_1000108F4();
      _Block_release(v17);

      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v12, v7);
      return sub_10000E554(v28);
    }

    else
    {
      return sub_10000B860(&aBlock, &qword_10001C900);
    }
  }

  return result;
}

id sub_10000E138(void *a1, uint64_t a2, void *a3)
{
  sub_1000017C4(&qword_10001C908);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100011570;
  sub_10000E4B0(a2, v6 + 32);
  isa = sub_100010854().super.isa;

  v11 = 0;
  LODWORD(a1) = [a1 clearPendingFollowUpItemsWithUniqueIdentifiers:isa error:&v11];

  if (a1)
  {
    v8 = v11;
  }

  else
  {
    v9 = v11;
    sub_100010134();

    swift_willThrow();
  }

  return [a3 finishProcessing];
}

id sub_10000E294()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FollowUpViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FollowUpViewController()
{
  result = qword_10001C8E8;
  if (!qword_10001C8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E3A0()
{
  sub_10000E448();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000E448()
{
  if (!qword_10001C8F8)
  {
    sub_100010234();
    v0 = sub_100010904();
    if (!v1)
    {
      atomic_store(v0, &qword_10001C8F8);
    }
  }
}

_OWORD *sub_10000E4A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000E4B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E50C()
{
  sub_10000E554(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000E554(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000E5B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000E5C8()
{
  result = qword_10001C478;
  if (!qword_10001C478)
  {
    sub_100006F50(&qword_10001C470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C478);
  }

  return result;
}

uint64_t sub_10000E62C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonSelection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E690()
{
  v1 = sub_100010154();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000E768(uint64_t a1)
{
  v4 = *(sub_100010154() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001009C;

  return sub_10000D570(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10000E888(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000E980;

  return v6(a1);
}

uint64_t sub_10000E980()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000EA78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000EB44(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000E4B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000E554(v11);
  return v7;
}

unint64_t sub_10000EB44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000EC50(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100010964();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000EC50(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000EC9C(a1, a2);
  sub_10000EDCC(&off_100018C98);
  return v3;
}

char *sub_10000EC9C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000EEB8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100010964();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100010844();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000EEB8(v10, 0);
        result = sub_100010954();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000EDCC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000EF2C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000EEB8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000017C4(&qword_10001C928);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000EF2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000017C4(&qword_10001C928);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_10000F020(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100010924(*(v2 + 40));

  return sub_10000F064(a1, v4);
}

unint64_t sub_10000F064(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000FB84(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100010934();
      sub_10000FB30(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_10000F12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v58 = a5;
  v59 = a6;
  v9 = sub_1000017C4(&qword_10001C910);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v55 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a9;
  v14 = objc_allocWithZone(LAContext);
  v15 = a9;
  v16 = [v14 init];
  aBlock[0] = 0;
  v17 = [v16 canEvaluatePolicy:2 error:aBlock];
  v18 = aBlock[0];
  if (!v17)
  {
    if (!aBlock[0])
    {
LABEL_17:
      v51 = sub_1000108A4();
      (*(*(v51 - 8) + 56))(v12, 1, 1, v51);
      sub_100010884();
      v52 = v15;
      v53 = sub_100010874();
      v54 = swift_allocObject();
      *(v54 + 16) = v53;
      *(v54 + 24) = &protocol witness table for MainActor;
      *(v54 + 32) = 0;
      *(v54 + 40) = v52;
      sub_10000D270(0, 0, v12, &unk_100011618, v54);

      goto LABEL_18;
    }

    v26 = v15;
    v27 = aBlock[0];
    v28 = [v27 domain];
    v29 = sub_100010824();
    v31 = v30;

    if (v29 == sub_100010824() && v31 == v32)
    {
    }

    else
    {
      v46 = sub_100010984();

      if ((v46 & 1) == 0)
      {
LABEL_16:

        v15 = v26;
        goto LABEL_17;
      }
    }

    if ([v27 code] == -5)
    {
      v47 = sub_1000108A4();
      (*(*(v47 - 8) + 56))(v12, 1, 1, v47);
      sub_100010884();
      v48 = v26;
      v49 = sub_100010874();
      v50 = swift_allocObject();
      *(v50 + 16) = v49;
      *(v50 + 24) = &protocol witness table for MainActor;
      *(v50 + 32) = 1;
      *(v50 + 40) = v48;
      sub_10000D270(0, 0, v12, &unk_100011620, v50);

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v55 = v15;
  v57 = v13;
  aBlock[0] = 0;
  v56 = v18;
  v19 = [v16 evaluationMechanismsForPolicy:2 error:aBlock];
  v20 = aBlock[0];
  if (v19)
  {
    v21 = v19;
    v22 = sub_1000108B4();
    v23 = v20;

    v62 = 1;
    sub_100010944();
    v24 = sub_10000DC80(aBlock, v22);

    sub_10000FB30(aBlock);
    if (v24)
    {
      v25 = sub_100010814();
      [v16 setOptionAuthenticationTitle:v25];
    }
  }

  else
  {
    v33 = aBlock[0];
    sub_100010134();

    swift_willThrow();
  }

  v34 = sub_100010814();
  [v16 setOptionPasscodeTitle:v34];

  v35 = sub_100010814();
  [v16 setOptionPasswordAuthenticationReason:v35];

  v36 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleWhenUnlockedThisDeviceOnly, 0x40000001uLL, 0);
  if (v36)
  {
    v37 = v36;
    v38 = sub_100010814();
    v39 = swift_allocObject();
    v40 = v57;
    v39[2] = sub_10000F844;
    v39[3] = v40;
    aBlock[4] = sub_10000FB04;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000DD58;
    aBlock[3] = &unk_100019150;
    v41 = _Block_copy(aBlock);

    [v16 evaluateAccessControl:v37 operation:3 localizedReason:v38 reply:v41];

    _Block_release(v41);

    return;
  }

  v42 = sub_1000108A4();
  (*(*(v42 - 8) + 56))(v12, 1, 1, v42);
  sub_100010884();
  v43 = v55;
  v44 = sub_100010874();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = &protocol witness table for MainActor;
  *(v45 + 32) = 0;
  *(v45 + 40) = v43;
  sub_10000D270(0, 0, v12, &unk_100011628, v45);

LABEL_18:
}

uint64_t sub_10000F80C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F850(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001009C;

  return sub_10000CF80(a1, v4, v5, v6, v7);
}

uint64_t sub_10000F914(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000F9D8;

  return sub_10000CF80(a1, v4, v5, v6, v7);
}

uint64_t sub_10000F9D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000FACC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FBE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000FC20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001009C;

  return sub_10000E888(a1, v4);
}

uint64_t sub_10000FCD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F9D8;

  return sub_10000E888(a1, v4);
}

void *sub_10000FDAC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000FDF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000FE00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FE50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000FE98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000FEEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000017C4(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_10000FF5C()
{
  v1 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_followUpController;
  v2 = objc_allocWithZone(FLFollowUpController);
  v3 = sub_100010814();
  v4 = [v2 initWithClientIdentifier:v3];

  *(v0 + v1) = v4;
  *(v0 + OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetViewController) = 0;
  v5 = (v0 + OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_followUpIdentifier);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetContext;
  v7 = sub_100010234();
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  sub_100010974();
  __break(1u);
}