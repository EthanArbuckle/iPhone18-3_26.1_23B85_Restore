id sub_14C0()
{
  v0 = objc_allocWithZone(SBSHomeScreenService);

  return [v0 init];
}

uint64_t sub_14F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a1;
  v66 = a3;
  v4 = sub_A754();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  __chkstk_darwin(v4);
  v61 = v6;
  v63 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HomeScreenSettingsList();
  v8 = (v7 - 8);
  v58 = *(v7 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin(v7);
  v59 = v10;
  v60 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4F18(&qword_14528, &qword_B138);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  v52 = sub_4F18(&qword_14530, &qword_B140);
  v53 = *(v52 - 8);
  v16 = *(v53 + 64);
  __chkstk_darwin(v52);
  v18 = &v52 - v17;
  v19 = sub_4F18(&qword_14538, &qword_B148);
  v54 = *(v19 - 8);
  v55 = v19;
  v20 = *(v54 + 64);
  __chkstk_darwin(v19);
  v22 = &v52 - v21;
  v23 = sub_4F18(&qword_14540, &qword_B150);
  v56 = *(v23 - 8);
  v57 = v23;
  v24 = *(v56 + 64);
  __chkstk_darwin(v23);
  v67 = &v52 - v25;
  v68 = a2;
  sub_4F18(&qword_14548, &qword_B158);
  sub_619C(&qword_14550, &qword_14548, &qword_B158);
  sub_A7F4();
  v26 = sub_619C(&qword_14558, &qword_14528, &qword_B138);
  sub_A814();
  (*(v12 + 8))(v15, v11);
  v27 = v8[10];
  v28 = v8[11];
  v29 = v8[12];
  v70 = v11;
  v71 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v52;
  sub_A824();
  (*(v53 + 8))(v18, v31);
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v32 = qword_14E98;
  v33 = sub_A804();
  v35 = v34;
  v37 = v36;
  v70 = v31;
  v71 = OpaqueTypeConformance2;
  v53 = swift_getOpaqueTypeConformance2();
  v38 = v55;
  sub_A884();
  sub_5868(v33, v35, v37 & 1);

  (*(v54 + 8))(v22, v38);
  v39 = a2[1];
  v70 = *a2;
  v71 = v39;
  sub_4F18(&qword_14560, &qword_B160);
  sub_A8E4();
  v40 = v69;
  swift_getKeyPath();
  v70 = v40;
  sub_5DF8(&qword_14568, type metadata accessor for HomeScreenSettingsListViewModel);
  sub_A5E4();

  v41 = *(v40 + 16);

  LOBYTE(v69) = v41;
  v42 = v60;
  sub_5534(a2, v60);
  v44 = v63;
  v43 = v64;
  v45 = v65;
  (*(v64 + 16))(v63, v62, v65);
  v46 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v47 = (v59 + *(v43 + 80) + v46) & ~*(v43 + 80);
  v48 = swift_allocObject();
  sub_5734(v42, v48 + v46);
  (*(v43 + 32))(v48 + v47, v44, v45);
  sub_4F18(&qword_14570, &qword_B190);
  v70 = v38;
  v71 = v53;
  swift_getOpaqueTypeConformance2();
  sub_5B74();
  v49 = v57;
  v50 = v67;
  sub_A8A4();

  return (*(v56 + 8))(v50, v49);
}

uint64_t sub_1CBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v97 = sub_4F18(&qword_14588, &qword_B198);
  v100 = *(v97 - 8);
  v3 = *(v100 + 64);
  __chkstk_darwin(v97);
  v95 = &v95 - v4;
  v5 = sub_4F18(&qword_14590, &qword_B1A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v107 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v113 = &v95 - v9;
  v96 = sub_4F18(&qword_14598, &qword_B1A8);
  v10 = *(*(v96 - 8) + 64);
  v11 = __chkstk_darwin(v96);
  v106 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v112 = &v95 - v13;
  v14 = sub_4F18(&qword_145A0, &qword_B1B0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v110 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v111 = &v95 - v19;
  v20 = sub_4F18(&qword_145A8, &qword_B1B8);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v104 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v105 = &v95 - v25;
  v26 = __chkstk_darwin(v24);
  v108 = &v95 - v27;
  __chkstk_darwin(v26);
  v29 = &v95 - v28;
  v102 = objc_opt_self();
  v30 = [v102 currentDevice];
  v31 = [v30 sf_isiPad];

  v109 = v29;
  v103 = a1;
  v101 = v15;
  if (v31)
  {
    v99 = &v95;
    __chkstk_darwin(v32);
    sub_A794();
    if (qword_14438 != -1)
    {
      swift_once();
    }

    v33 = qword_14E98;
    v118 = sub_A804();
    v119 = v34;
    LOBYTE(v120) = v35 & 1;
    v121 = v36;
    sub_4F18(&qword_145D8, &qword_B1E0);
    sub_5C84();
    v37 = v111;
    sub_A964();
    v38 = v109;
    (*(v15 + 32))(v109, v37, v14);
    v39 = (*(v15 + 56))(v38, 0, 1, v14);
  }

  else
  {
    v39 = (*(v15 + 56))(v29, 1, 1, v14);
  }

  v99 = v14;
  __chkstk_darwin(v39);
  v40 = v103;
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v41 = qword_14E98;
  v118 = sub_A804();
  v119 = v42;
  LOBYTE(v120) = v43 & 1;
  v121 = v44;
  sub_4F18(&qword_145B0, &qword_B1C0);
  v45 = sub_5820(&qword_145B8, &qword_B1C8);
  v46 = sub_5820(&qword_145C0, &qword_B1D0);
  v47 = sub_A784();
  v48 = sub_619C(&qword_145C8, &qword_145C0, &qword_B1D0);
  v114 = v46;
  v115 = v47;
  v116 = v48;
  v117 = &protocol witness table for InlinePickerStyle;
  v49 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = v45;
  v115 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v51 = v112;
  sub_A964();
  v52 = v40[1];
  v114 = *v40;
  v115 = v52;
  sub_4F18(&qword_14560, &qword_B160);
  sub_A8F4();
  v53 = v118;
  v54 = v119;
  v55 = v120;
  swift_getKeyPath();
  v118 = v53;
  v119 = v54;
  v120 = v55;
  sub_4F18(&qword_145D0, &qword_B1D8);
  sub_A954();

  v56 = v114;
  v57 = v115;
  LOBYTE(v46) = v116;

  v58 = v51 + *(v96 + 36);
  *v58 = v56;
  *(v58 + 8) = v57;
  *(v58 + 16) = v46;
  *(v58 + 17) = 1;
  v59 = [v102 currentDevice];
  LODWORD(v56) = [v59 sf_isiPad];

  v61 = v97;
  if (v56)
  {
    __chkstk_darwin(v60);
    sub_A794();
    v62 = qword_14E98;
    v118 = sub_A804();
    v119 = v63;
    LOBYTE(v120) = v64 & 1;
    v121 = v65;
    sub_4F18(&qword_14620, qword_B200);
    sub_619C(&qword_14628, &qword_14620, qword_B200);
    v66 = v95;
    sub_A964();
    (*(v100 + 32))(v113, v66, v61);
    v49 = 0;
  }

  v67 = (*(v100 + 56))(v113, v49, 1, v61);
  __chkstk_darwin(v67);
  sub_A794();
  v68 = qword_14E98;
  v118 = sub_A804();
  v119 = v69;
  LOBYTE(v120) = v70 & 1;
  v121 = v71;
  sub_4F18(&qword_145D8, &qword_B1E0);
  sub_5C84();
  sub_A964();
  v72 = [v102 currentDevice];
  v73 = [v72 sf_isiPhone];

  v75 = 1;
  v76 = v99;
  if (v73)
  {
    __chkstk_darwin(v74);
    sub_A794();
    v77 = qword_14E98;
    v118 = sub_A804();
    v119 = v78;
    LOBYTE(v120) = v79 & 1;
    v121 = v80;
    v81 = v111;
    sub_A964();
    v76 = v99;
    (*(v101 + 32))(v108, v81, v99);
    v75 = 0;
  }

  v82 = v101;
  v83 = v108;
  (*(v101 + 56))(v108, v75, 1, v76);
  v84 = v105;
  sub_5F98(v109, v105, &qword_145A8, &qword_B1B8);
  v85 = v106;
  sub_5E94(v112, v106);
  v86 = v107;
  sub_5F98(v113, v107, &qword_14590, &qword_B1A0);
  v87 = *(v82 + 16);
  v87(v111, v110, v76);
  sub_5F98(v83, v104, &qword_145A8, &qword_B1B8);
  v88 = v98;
  sub_5F98(v84, v98, &qword_145A8, &qword_B1B8);
  v89 = sub_4F18(&qword_14618, &qword_B1F8);
  sub_5E94(v85, v88 + v89[12]);
  sub_5F98(v86, v88 + v89[16], &qword_14590, &qword_B1A0);
  v90 = v111;
  v87((v88 + v89[20]), v111, v76);
  v91 = v88 + v89[24];
  v92 = v104;
  sub_5F98(v104, v91, &qword_145A8, &qword_B1B8);
  sub_6000(v108, &qword_145A8, &qword_B1B8);
  v93 = *(v82 + 8);
  v93(v110, v76);
  sub_6000(v113, &qword_14590, &qword_B1A0);
  sub_5F04(v112);
  sub_6000(v109, &qword_145A8, &qword_B1B8);
  sub_6000(v92, &qword_145A8, &qword_B1B8);
  v93(v90, v76);
  sub_6000(v107, &qword_14590, &qword_B1A0);
  sub_5F04(v106);
  return sub_6000(v105, &qword_145A8, &qword_B1B8);
}

uint64_t sub_2AE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4F18(&qword_14600, &qword_B1F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = a1[2];
  v10 = a1[3];
  v11 = *(a1 + 32);
  sub_547C();
  sub_5DF8(&qword_144D8, sub_547C);
  v12 = sub_A694();
  swift_getKeyPath();
  sub_A724();

  sub_A924();
  sub_619C(&qword_145F8, &qword_14600, &qword_B1F0);
  sub_A894();
  (*(v5 + 8))(v8, v4);
  v13 = a1[1];
  v21 = *a1;
  v22 = v13;
  sub_4F18(&qword_14560, &qword_B160);
  sub_A8F4();
  v14 = v24;
  v15 = v25;
  v16 = v26;
  swift_getKeyPath();
  v24 = v14;
  v25 = v15;
  v26 = v16;
  sub_4F18(&qword_145D0, &qword_B1D8);
  sub_A954();

  v17 = v21;
  v18 = v22;
  LOBYTE(v12) = v23;

  result = sub_4F18(&qword_145D8, &qword_B1E0);
  v20 = a2 + *(result + 36);
  *v20 = v17;
  *(v20 + 8) = v18;
  *(v20 + 16) = v12;
  *(v20 + 17) = 0;
  return result;
}

uint64_t sub_2DB4@<X0>(uint64_t a1@<X8>)
{
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v2 = qword_14E98;
  result = sub_A804();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_A784();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4F18(&qword_145C0, &qword_B1D0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v10 = v27 - v9;
  v11 = sub_4F18(&qword_145B8, &qword_B1C8);
  v12 = *(v11 - 8);
  v32 = v11;
  v33 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v27 - v14;
  v16 = sub_A794();
  v29 = v17;
  v30 = v16;
  v27[1] = v18;
  v28 = v19;
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  v22 = *(a1 + 32);
  sub_547C();
  sub_5DF8(&qword_144D8, sub_547C);
  v23 = sub_A694();
  swift_getKeyPath();
  sub_A724();

  v40 = v36;
  v41 = v37;
  v42 = v38;
  sub_4F18(&qword_14638, &qword_B338);
  sub_619C(&qword_14640, &qword_14638, &qword_B338);
  sub_A914();
  sub_A774();
  v24 = sub_619C(&qword_145C8, &qword_145C0, &qword_B1D0);
  sub_A854();
  (*(v34 + 8))(v6, v3);
  (*(v31 + 8))(v10, v7);
  v36 = v7;
  v37 = v3;
  v38 = v24;
  v39 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_A864();
  return (*(v33 + 8))(v15, v25);
}

uint64_t sub_32A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_4F18(&qword_14648, &qword_B340);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v13[15] = 1;
  sub_4F18(&qword_14650, &qword_B348);
  sub_609C();
  sub_A6B4();
  v13[14] = 0;
  sub_A6B4();
  sub_619C(&qword_14660, &qword_14648, &qword_B340);
  sub_A6F4();
  v10 = a1 + *(sub_4F18(&qword_14668, &qword_B350) + 48);
  sub_A6F4();
  v11 = *(v3 + 8);
  v11(v7, v2);
  return (v11)(v9, v2);
}

uint64_t sub_34D4()
{
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v0 = qword_14E98;
  v1 = sub_A804();
  v3 = v2;
  v5 = v4 & 1;
  sub_A894();
  sub_5868(v1, v3, v5);
}

uint64_t sub_3618()
{
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v0 = qword_14E98;
  v1 = sub_A804();
  v3 = v2;
  v5 = v4 & 1;
  sub_A894();
  sub_5868(v1, v3, v5);
}

uint64_t sub_375C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_4F18(&qword_14600, &qword_B1F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v44 - v6;
  v8 = sub_4F18(&qword_145D8, &qword_B1E0);
  v9 = *(v8 - 8);
  v52 = v8 - 8;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8 - 8);
  v55 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v54 = &v44 - v14;
  v15 = __chkstk_darwin(v13);
  v53 = &v44 - v16;
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = a1[5];
  sub_A674();
  sub_A924();
  v51 = sub_619C(&qword_145F8, &qword_14600, &qword_B1F0);
  v45 = v18;
  sub_A894();
  v20 = *(v4 + 8);
  v49 = v4 + 8;
  v50 = v20;
  v20(v7, v3);
  v21 = *a1;
  v47 = a1[1];
  v48 = v21;
  v57 = v21;
  v58 = v47;
  v46 = sub_4F18(&qword_14560, &qword_B160);
  sub_A8F4();
  v22 = v60;
  v23 = v61;
  v24 = v62;
  swift_getKeyPath();
  v60 = v22;
  v61 = v23;
  v62 = v24;
  v44 = sub_4F18(&qword_145D0, &qword_B1D8);
  sub_A954();

  v25 = v57;
  v26 = v58;
  v27 = v59;

  v28 = v52;
  v29 = &v18[*(v52 + 44)];
  *v29 = v25;
  *(v29 + 1) = v26;
  v29[16] = v27;
  v29[17] = 3;
  v30 = a1[6];
  sub_A674();
  sub_A924();
  v31 = v53;
  sub_A894();
  v50(v7, v3);
  v57 = v48;
  v58 = v47;
  sub_A8F4();
  v32 = v60;
  v33 = v61;
  v34 = v62;
  swift_getKeyPath();
  v60 = v32;
  v61 = v33;
  v62 = v34;
  sub_A954();

  v35 = v57;
  v36 = v58;
  LOBYTE(v18) = v59;

  v37 = v31 + *(v28 + 44);
  *v37 = v35;
  *(v37 + 8) = v36;
  *(v37 + 16) = v18;
  *(v37 + 17) = 4;
  v38 = v45;
  v39 = v54;
  sub_5F98(v45, v54, &qword_145D8, &qword_B1E0);
  v40 = v55;
  sub_5F98(v31, v55, &qword_145D8, &qword_B1E0);
  v41 = v56;
  sub_5F98(v39, v56, &qword_145D8, &qword_B1E0);
  v42 = sub_4F18(&qword_14630, qword_B250);
  sub_5F98(v40, v41 + *(v42 + 48), &qword_145D8, &qword_B1E0);
  sub_6000(v31, &qword_145D8, &qword_B1E0);
  sub_6000(v38, &qword_145D8, &qword_B1E0);
  sub_6000(v40, &qword_145D8, &qword_B1E0);
  return sub_6000(v39, &qword_145D8, &qword_B1E0);
}

uint64_t sub_3C60@<X0>(uint64_t a1@<X8>)
{
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v2 = qword_14E98;
  result = sub_A804();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_3D40@<X0>(uint64_t a1@<X8>)
{
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v2 = qword_14E98;
  result = sub_A804();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_3E20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4F18(&qword_14600, &qword_B1F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = a1[2];
  v10 = a1[3];
  v11 = *(a1 + 32);
  sub_547C();
  sub_5DF8(&qword_144D8, sub_547C);
  v12 = sub_A694();
  swift_getKeyPath();
  sub_A724();

  sub_A924();
  sub_619C(&qword_145F8, &qword_14600, &qword_B1F0);
  sub_A894();
  (*(v5 + 8))(v8, v4);
  v13 = a1[1];
  v21 = *a1;
  v22 = v13;
  sub_4F18(&qword_14560, &qword_B160);
  sub_A8F4();
  v14 = v24;
  v15 = v25;
  v16 = v26;
  swift_getKeyPath();
  v24 = v14;
  v25 = v15;
  v26 = v16;
  sub_4F18(&qword_145D0, &qword_B1D8);
  sub_A954();

  v17 = v21;
  v18 = v22;
  LOBYTE(v12) = v23;

  result = sub_4F18(&qword_145D8, &qword_B1E0);
  v20 = a2 + *(result + 36);
  *v20 = v17;
  *(v20 + 8) = v18;
  *(v20 + 16) = v12;
  *(v20 + 17) = 2;
  return result;
}

uint64_t sub_40F0@<X0>(uint64_t a1@<X8>)
{
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v2 = qword_14E98;
  result = sub_A804();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_41D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4F18(&qword_14600, &qword_B1F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = a1[2];
  v10 = a1[3];
  v11 = *(a1 + 32);
  sub_547C();
  sub_5DF8(&qword_144D8, sub_547C);
  v12 = sub_A694();
  swift_getKeyPath();
  sub_A724();

  sub_A924();
  sub_619C(&qword_145F8, &qword_14600, &qword_B1F0);
  sub_A894();
  (*(v5 + 8))(v8, v4);
  v13 = a1[1];
  v21 = *a1;
  v22 = v13;
  sub_4F18(&qword_14560, &qword_B160);
  sub_A8F4();
  v14 = v24;
  v15 = v25;
  v16 = v26;
  swift_getKeyPath();
  v24 = v14;
  v25 = v15;
  v26 = v16;
  sub_4F18(&qword_145D0, &qword_B1D8);
  sub_A954();

  v17 = v21;
  v18 = v22;
  LOBYTE(v12) = v23;

  result = sub_4F18(&qword_145D8, &qword_B1E0);
  v20 = a2 + *(result + 36);
  *v20 = v17;
  *(v20 + 8) = v18;
  *(v20 + 16) = v12;
  *(v20 + 17) = 5;
  return result;
}

uint64_t sub_44A8@<X0>(uint64_t a1@<X8>)
{
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v2 = qword_14E98;
  result = sub_A804();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_4588(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  v7 = sub_A7E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  if (v13 != 6)
  {
    v14 = a3[1];
    v16[2] = *a3;
    v16[3] = v14;
    sub_4F18(&qword_14560, &qword_B160);
    v15 = sub_A8E4();
    __chkstk_darwin(v15);
    v16[-2] = a4;
    LOBYTE(v16[-1]) = v13;

    sub_A974();
    sub_A7D4();
    sub_A704();

    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t sub_4740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4F18(&qword_14670, &qword_B358);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v23 - v6;
  v23[1] = a1;
  type metadata accessor for HomeScreenSettingsListViewModel();
  sub_A8D4();
  v8 = v25;
  *a2 = v24;
  *(a2 + 8) = v8;
  *(a2 + 16) = sub_14C0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (qword_14440 != -1)
  {
    swift_once();
  }

  v9 = qword_14EA0;
  *(a2 + 40) = sub_A664();
  *(a2 + 48) = sub_A664();
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 sf_isiPad];

  if (v11)
  {
    v12 = 1684107369;
  }

  else
  {
    v12 = 0x656E6F687069;
  }

  if (v11)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  v14 = type metadata accessor for HomeScreenSettingsList();
  v15 = (a2 + v14[8]);
  v24 = 0xD00000000000001FLL;
  v25 = 0x800000000000BB70;
  v26._countAndFlagsBits = v12;
  v26._object = v13;
  sub_AA94(v26);

  v16 = v25;
  *v15 = v24;
  v15[1] = v16;
  v17 = enum case for SettingsEventImage.graphicIcon(_:);
  v18 = sub_A9F4();
  (*(*(v18 - 8) + 104))(v15, v17, v18);
  v19 = a2 + v14[9];
  sub_A584();
  sub_A5B4();
  v20 = sub_A5C4();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v7, 1, v20);
  if (result != 1)
  {
    return (*(v21 + 32))(a2 + v14[10], v7, v20);
  }

  __break(1u);
  return result;
}

uint64_t sub_4A78@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_5534(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_5734(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_5798;
  a2[1] = v7;
  return result;
}

uint64_t variable initialization expression of HomeScreenSettings.viewModel()
{
  v0 = type metadata accessor for HomeScreenSettingsListViewModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 6;
  sub_A5F4();
  return v3;
}

uint64_t sub_4BB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_A05C(2, 26, 0, 0))
  {
    sub_A7C4();

    return sub_A734();
  }

  else
  {
    sub_A764();
    swift_getWitnessTable();
    sub_A7B4();
    sub_A734();
    sub_AAF4();
    swift_getWitnessTable();
    sub_A764();
    swift_getWitnessTable();
    sub_A7B4();
    return sub_A734();
  }
}

uint64_t sub_4D18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_A05C(2, 26, 0, 0))
  {
    sub_A7C4();
    sub_A734();
  }

  else
  {
    sub_A764();
    swift_getWitnessTable();
    sub_A7B4();
    sub_A734();
    sub_AAF4();
    swift_getWitnessTable();
    sub_A764();
    swift_getWitnessTable();
    sub_A7B4();
    sub_A734();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_4F18(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_4F74(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_A9F4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_A594();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_A5C4();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[10]];

  return v15(v16, a2, v14);
}

char *sub_50F4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_A9F4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_A594();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_A5C4();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for HomeScreenSettingsList()
{
  result = qword_144B0;
  if (!qword_144B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_52AC()
{
  sub_5390();
  if (v0 <= 0x3F)
  {
    sub_53E8();
    if (v1 <= 0x3F)
    {
      sub_54C8();
      if (v2 <= 0x3F)
      {
        sub_A9F4();
        if (v3 <= 0x3F)
        {
          sub_A594();
          if (v4 <= 0x3F)
          {
            sub_A5C4();
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

void sub_5390()
{
  if (!qword_144C0)
  {
    type metadata accessor for HomeScreenSettingsListViewModel();
    v0 = sub_A904();
    if (!v1)
    {
      atomic_store(v0, &qword_144C0);
    }
  }
}

void sub_53E8()
{
  if (!qword_144C8)
  {
    sub_547C();
    sub_5DF8(&qword_144D8, sub_547C);
    v0 = sub_A6A4();
    if (!v1)
    {
      atomic_store(v0, &qword_144C8);
    }
  }
}

unint64_t sub_547C()
{
  result = qword_144D0;
  if (!qword_144D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_144D0);
  }

  return result;
}

void sub_54C8()
{
  if (!qword_144E0)
  {
    v0 = sub_A684();
    if (!v1)
    {
      atomic_store(v0, &qword_144E0);
    }
  }
}

uint64_t sub_5534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeScreenSettingsList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5598()
{
  v1 = (type metadata accessor for HomeScreenSettingsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  sub_5724(*(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32));
  v7 = *(v0 + v3 + 40);

  v8 = *(v0 + v3 + 48);

  v9 = v1[10];
  v10 = sub_A9F4();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v1[11];
  v12 = sub_A594();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = v1[12];
  v14 = sub_A5C4();
  (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5724(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1();
  }

  else
  {
  }
}

uint64_t sub_5734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeScreenSettingsList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HomeScreenSettingsList() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_14F8(a1, v6, a2);
}

uint64_t sub_5820(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_5868(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_5880()
{
  v1 = (type metadata accessor for HomeScreenSettingsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_A754();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = (v0 + v3);
  v12 = *v11;

  v13 = v11[1];

  sub_5724(v11[2], v11[3], *(v11 + 32));
  v14 = v11[5];

  v15 = v11[6];

  v16 = v1[10];
  v17 = sub_A9F4();
  (*(*(v17 - 8) + 8))(v11 + v16, v17);
  v18 = v1[11];
  v19 = sub_A594();
  (*(*(v19 - 8) + 8))(v11 + v18, v19);
  v20 = v1[12];
  v21 = sub_A5C4();
  (*(*(v21 - 8) + 8))(v11 + v20, v21);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_5A90(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for HomeScreenSettingsList() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_A754() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_4588(a1, a2, (v2 + v6), v9);
}

unint64_t sub_5B74()
{
  result = qword_14578;
  if (!qword_14578)
  {
    sub_5820(&qword_14570, &qword_B190);
    sub_5BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14578);
  }

  return result;
}

unint64_t sub_5BF8()
{
  result = qword_14580;
  if (!qword_14580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14580);
  }

  return result;
}

uint64_t sub_5C4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_6838();
}

unint64_t sub_5C84()
{
  result = qword_145E0;
  if (!qword_145E0)
  {
    sub_5820(&qword_145D8, &qword_B1E0);
    sub_5D10();
    sub_5E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_145E0);
  }

  return result;
}

unint64_t sub_5D10()
{
  result = qword_145E8;
  if (!qword_145E8)
  {
    sub_5820(&qword_145F0, &qword_B1E8);
    sub_619C(&qword_145F8, &qword_14600, &qword_B1F0);
    sub_5DF8(&qword_14608, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_145E8);
  }

  return result;
}

uint64_t sub_5DF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_5E40()
{
  result = qword_14610;
  if (!qword_14610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14610);
  }

  return result;
}

uint64_t sub_5E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_4F18(&qword_14598, &qword_B1A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5F04(uint64_t a1)
{
  v2 = sub_4F18(&qword_14598, &qword_B1A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5F98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4F18(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_6000(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4F18(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_609C()
{
  result = qword_14658;
  if (!qword_14658)
  {
    sub_5820(&qword_14650, &qword_B348);
    sub_5DF8(&qword_14608, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14658);
  }

  return result;
}

uint64_t sub_619C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_5820(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_61E4()
{
  swift_getKeyPath();
  sub_7238(&qword_14568, type metadata accessor for HomeScreenSettingsListViewModel);
  sub_A5E4();

  return *(v0 + 16);
}

uint64_t sub_6284(unsigned __int8 a1)
{
  result = *(v1 + 16);
  if (result != 6)
  {
    if (a1 == 6)
    {
      goto LABEL_7;
    }

    result = sub_8D40(result, a1);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 16) = a1;
    return result;
  }

  if (a1 == 6)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_7238(&qword_14568, type metadata accessor for HomeScreenSettingsListViewModel);
  sub_A5D4();
}

Swift::Int sub_63CC()
{
  sub_AB64();
  sub_AA84();

  return sub_AB74();
}

uint64_t sub_64F0()
{
  *v0;
  *v0;
  *v0;
  sub_AA84();
}

Swift::Int sub_6604()
{
  sub_AB64();
  sub_AA84();

  return sub_AB74();
}

uint64_t sub_6724@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_70CC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_6754(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000053544E4543;
  v4 = 0x45525F574F4C4C41;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001ALL;
    v3 = 0x800000000000B960;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000000000B940;
  }

  v5 = 0xD000000000000013;
  v6 = 0x800000000000B8E0;
  v7 = 0xD000000000000013;
  v8 = 0x800000000000B900;
  if (v2 != 1)
  {
    v7 = 0xD000000000000015;
    v8 = 0x800000000000B920;
  }

  if (*v1)
  {
    v5 = v7;
    v6 = v8;
  }

  if (*v1 <= 2u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_6890()
{
  v0 = sub_A994();
  v24 = *(v0 - 8);
  v1 = *(v24 + 64);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_A9B4();
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_A9D4();
  v21 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  sub_7118();
  v16 = sub_AAE4();
  sub_A9C4();
  sub_A9E4();
  v20 = *(v9 + 8);
  v20(v13, v8);
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_719C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_6D84;
  aBlock[3] = &unk_10C80;
  v18 = _Block_copy(aBlock);

  sub_A9A4();
  v25 = &_swiftEmptyArrayStorage;
  sub_7238(&qword_14750, &type metadata accessor for DispatchWorkItemFlags);
  sub_4F18(&qword_14758, &qword_B488);
  sub_71BC();
  sub_AB04();
  sub_AAD4();
  _Block_release(v18);

  (*(v24 + 8))(v3, v0);
  (*(v22 + 8))(v7, v23);
  v20(v15, v21);
}

uint64_t sub_6C40()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 16) != 6)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_7238(&qword_14568, type metadata accessor for HomeScreenSettingsListViewModel);
      sub_A5D4();
    }
  }

  return result;
}

uint64_t sub_6D84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_6DC8()
{
  v1 = OBJC_IVAR____TtC18HomeScreenSettings31HomeScreenSettingsListViewModel___observationRegistrar;
  v2 = sub_A604();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for HomeScreenSettingsListViewModel()
{
  result = qword_146B8;
  if (!qword_146B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6EB8()
{
  result = sub_A604();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeScreenSettingsListViewModel.CellIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeScreenSettingsListViewModel.CellIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_70CC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10AC8;
  v6._object = a2;
  v4 = sub_AB44(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_7118()
{
  result = qword_14748;
  if (!qword_14748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_14748);
  }

  return result;
}

uint64_t sub_7164()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_71A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_71BC()
{
  result = qword_14760;
  if (!qword_14760)
  {
    sub_5820(&qword_14758, &qword_B488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14760);
  }

  return result;
}

uint64_t sub_7238(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_7280()
{
  result = qword_14768;
  if (!qword_14768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14768);
  }

  return result;
}

unint64_t sub_7324()
{
  result = qword_14808;
  if (!qword_14808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14808);
  }

  return result;
}

uint64_t sub_7394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_A714();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_A5C4();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = *(*(sub_4F18(&qword_14828, &qword_B578) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = sub_A574();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  sub_AAC4();
  v3[16] = sub_AAB4();
  v15 = sub_AAA4();

  return _swift_task_switch(sub_757C, v15, v14);
}

uint64_t sub_757C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[4];

  sub_AA24();
  sub_A554();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_7C6C(v0[12]);
LABEL_6:
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[6];
    v16 = v0[3];
    v15 = v0[4];
    sub_AA14();
    sub_AA34();
    (*(v13 + 8))(v12, v14);
    goto LABEL_7;
  }

  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  v9 = sub_A564();
  if (!v10 || (v11 = sub_70CC(v9, v10), v11 == 6))
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    goto LABEL_6;
  }

  v23 = v11;
  v24 = v0[5];
  v25 = *(v24 + 16);
  if (v25 == 6)
  {
    goto LABEL_14;
  }

  if ((sub_8D40(v25, v23) & 1) == 0)
  {
    v24 = v0[5];
LABEL_14:
    swift_getKeyPath();
    v26 = swift_task_alloc();
    *(v26 + 16) = v24;
    *(v26 + 24) = v23;
    v0[2] = v24;
    sub_7CFC(&qword_14568, type metadata accessor for HomeScreenSettingsListViewModel);
    sub_A5D4();

    goto LABEL_15;
  }

  *(v24 + 16) = v23;
LABEL_15:
  v28 = v0[14];
  v27 = v0[15];
  v29 = v0[13];
  v31 = v0[7];
  v30 = v0[8];
  v32 = v0[6];
  v34 = v0[3];
  v33 = v0[4];
  sub_AA14();
  sub_AA34();
  (*(v31 + 8))(v30, v32);
  (*(v28 + 8))(v27, v29);
LABEL_7:
  v17 = v0[15];
  v18 = v0[11];
  v19 = v0[12];
  v20 = v0[8];

  v21 = v0[1];

  return v21();
}

uint64_t sub_7850()
{
  v1 = sub_4F18(&qword_14810, &qword_B560);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - v4;
  v6 = *v0;
  type metadata accessor for HomeScreenSettingsList();
  sub_7CFC(&qword_14818, type metadata accessor for HomeScreenSettingsList);

  sub_AA44();
  sub_7C08();

  sub_AA04();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_79D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for HomeScreenSettingsListViewModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 6;
  result = sub_A5F4();
  *a1 = v5;
  return result;
}

uint64_t sub_7A2C@<X0>(uint64_t a1@<X8>)
{

  return sub_4740(v2, a1);
}

uint64_t sub_7A68(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_7B14;

  return sub_7394(a1, a2, v2);
}

uint64_t sub_7B14()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_7C08()
{
  result = qword_14820;
  if (!qword_14820)
  {
    sub_5820(&qword_14810, &qword_B560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14820);
  }

  return result;
}

uint64_t sub_7C6C(uint64_t a1)
{
  v2 = sub_4F18(&qword_14828, &qword_B578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7CFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7D54()
{
  sub_5820(&qword_14810, &qword_B560);
  sub_7C08();
  return swift_getOpaqueTypeConformance2();
}

id sub_7DF8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_7E54()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_14E98 = result;
  return result;
}

id sub_7EAC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLargeIconLayoutEnabled];
  *a2 = result;
  return result;
}

id sub_7EF4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 addsNewIconsToHomeScreen];
  *a2 = result;
  return result;
}

id sub_7F3C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showsBadgesInAppLibrary];
  *a2 = result;
  return result;
}

id sub_7F84@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showsHomeScreenSearchAffordance];
  *a2 = result;
  return result;
}

uint64_t SBSHomeScreenService.objectWillChange.getter()
{
  v0 = sub_4F18(&qword_14858, &qword_B610);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v53 - v3;
  v5 = sub_4F18(&qword_14860, &qword_B618);
  v81 = *(v5 - 8);
  v6 = *(v81 + 64);
  __chkstk_darwin(v5);
  v8 = &v53 - v7;
  v9 = sub_4F18(&qword_14868, &qword_B620);
  v80 = *(v9 - 8);
  v10 = *(v80 + 64);
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v71 = sub_4F18(&qword_14870, &qword_B628);
  v79 = *(v71 - 8);
  v13 = *(v79 + 64);
  __chkstk_darwin(v71);
  v15 = &v53 - v14;
  v58 = sub_4F18(&qword_14878, &qword_B630);
  v59 = *(v58 - 8);
  v16 = *(v59 + 64);
  __chkstk_darwin(v58);
  v57 = &v53 - v17;
  sub_4F18(&qword_14880, qword_B638);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_B600;
  swift_getKeyPath();
  sub_A5A4();

  LOBYTE(v82) = 2;
  v67 = sub_4F18(&qword_14888, &qword_B688);
  v18 = sub_619C(&qword_14890, &qword_14868, &qword_B620);
  v65 = sub_8B5C;
  v66 = v18;
  sub_A654();
  v73 = sub_619C(&qword_14898, &qword_14858, &qword_B610);
  v72 = sub_8B78;
  v61 = v0;
  sub_A634();
  v62 = *(v1 + 8);
  v63 = v1 + 8;
  v62(v4, v0);
  v70 = sub_619C(&qword_148A0, &qword_14860, &qword_B618);
  v64 = v5;
  v55 = v8;
  v19 = sub_A624();
  v69 = *(v81 + 8);
  v81 += 8;
  v69(v8, v5);
  v20 = *(v80 + 8);
  v80 += 8;
  v78 = v20;
  v20(v12, v9);
  v82 = v19;
  v77 = sub_4F18(&qword_148A8, qword_B690);
  v56 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v76 = sub_619C(&qword_148B0, &qword_148A8, qword_B690);
  v60 = v15;
  sub_A644();

  v75 = sub_619C(&qword_148B8, &qword_14870, &qword_B628);
  v21 = v71;
  v22 = sub_A624();
  v23 = *(v79 + 8);
  v79 += 8;
  v74 = v23;
  v23(v15, v21);
  v24 = v68;
  *(v68 + 32) = v22;
  swift_getKeyPath();
  sub_A5A4();

  LOBYTE(v82) = 2;
  v54 = v4;
  v25 = v9;
  sub_A654();
  v26 = v55;
  v27 = v61;
  sub_A634();
  v28 = v4;
  v29 = v62;
  v62(v28, v27);
  v30 = v64;
  v31 = sub_A624();
  v69(v26, v30);
  v32 = v25;
  v78(v12, v25);
  v82 = v31;
  v33 = v60;
  sub_A644();

  v34 = v71;
  v35 = sub_A624();
  v74(v33, v34);
  *(v24 + 40) = v35;
  swift_getKeyPath();
  v36 = v12;
  sub_A5A4();

  LOBYTE(v82) = 2;
  v37 = v54;
  sub_A654();
  v38 = v26;
  v39 = v61;
  sub_A634();
  v40 = v37;
  v29(v37, v39);
  v41 = v64;
  v42 = sub_A624();
  v69(v38, v41);
  v78(v36, v32);
  v82 = v42;
  v43 = v60;
  sub_A644();

  v44 = v71;
  v45 = sub_A624();
  v74(v43, v44);
  *(v68 + 48) = v45;
  swift_getKeyPath();
  sub_A5A4();

  LOBYTE(v82) = 2;
  sub_A654();
  sub_A634();
  v62(v40, v39);
  v46 = v64;
  v47 = sub_A624();
  v69(v38, v46);
  v78(v36, v32);
  v82 = v47;
  sub_A644();

  v48 = sub_A624();
  v74(v43, v44);
  *(v68 + 56) = v48;
  sub_4F18(&qword_148C0, qword_B770);
  sub_619C(&qword_148C8, &qword_148C0, qword_B770);
  v49 = v57;
  sub_A614();
  sub_619C(&qword_148D0, &qword_14878, &qword_B630);
  v50 = v58;
  v51 = sub_A624();
  (*(v59 + 8))(v49, v50);
  return v51;
}

id sub_8AEC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 addsNewIconsToHomeScreen];
  *a2 = result;
  return result;
}

uint64_t sub_8B34@<X0>(uint64_t *a1@<X8>)
{
  result = SBSHomeScreenService.objectWillChange.getter();
  *a1 = result;
  return result;
}

_BYTE *sub_8B5C@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  if (*result == 2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 2;
  }

  *a3 = v3;
  return result;
}

id sub_8B84@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showsBadgesInAppLibrary];
  *a2 = result;
  return result;
}

id sub_8BCC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showsHomeScreenSearchAffordance];
  *a2 = result;
  return result;
}

id sub_8C14@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLargeIconLayoutEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_8CA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_9940();
  sub_A5E4();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_8D40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000053544E4543;
  v3 = 0x45525F574F4C4C41;
  v4 = a1;
  v5 = 0x800000000000B960;
  v6 = 0xD00000000000001ALL;
  if (a1 == 4)
  {
    v6 = 0x45525F574F4C4C41;
    v5 = 0xED000053544E4543;
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v7 = v6;
  }

  if (a1 == 3)
  {
    v8 = 0x800000000000B940;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0x800000000000B900;
  v10 = 0xD000000000000015;
  if (a1 == 1)
  {
    v10 = 0xD000000000000013;
  }

  else
  {
    v9 = 0x800000000000B920;
  }

  if (a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0xD000000000000013;
  }

  if (!a1)
  {
    v9 = 0x800000000000B8E0;
  }

  if (a1 <= 2u)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v4 <= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x800000000000B940;
      v3 = 0xD000000000000010;
    }

    else if (a2 != 4)
    {
      v2 = 0x800000000000B960;
      if (v12 != 0xD00000000000001ALL)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    if (v12 != v3)
    {
LABEL_39:
      v14 = sub_AB54();
      goto LABEL_40;
    }
  }

  else
  {
    if (!a2)
    {
      v2 = 0x800000000000B8E0;
LABEL_32:
      if (v12 != 0xD000000000000013)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    if (a2 == 1)
    {
      v2 = 0x800000000000B900;
      goto LABEL_32;
    }

    v2 = 0x800000000000B920;
    if (v12 != 0xD000000000000015)
    {
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v13 != v2)
  {
    goto LABEL_39;
  }

  v14 = 1;
LABEL_40:

  return v14 & 1;
}

Swift::Void __swiftcall HomeScreenSettings.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for HomeScreenSettingsList();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v1;
  v23.super_class = HomeScreenSettings;
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v6 = *&v1[OBJC_IVAR___HomeScreenSettings_viewModel];

  sub_4740(v7, v5);
  v8 = objc_allocWithZone(sub_4F18(&qword_148E0, &qword_B7E8));
  v9 = sub_A7A4();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v10 = qword_14E98;
  v11 = sub_AA64();
  v12 = [v10 localizedStringForKey:v11 value:0 table:0];

  if (!v12)
  {
    sub_AA74();
    v12 = sub_AA64();
  }

  [v1 setTitle:v12];

  v13 = [v9 view];
  if (!v13)
  {
    v14 = v9;
    goto LABEL_10;
  }

  v14 = v13;
  v15 = [v1 view];
  if (v15)
  {
    v16 = v15;
    [v15 addSubview:v14];

    v17 = [v1 view];
    if (v17)
    {
      v18 = v17;
      [v17 bounds];
      v20 = v19;
      v22 = v21;

      [v14 setFrame:{0.0, 0.0, v20, v22}];
      [v14 setAutoresizingMask:18];
      [v1 addChildViewController:v9];
      [v9 didMoveToParentViewController:v1];

LABEL_10:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t HomeScreenSettings.handleURL(_:withCompletion:)(uint64_t result, uint64_t (*a2)(void))
{
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = v2;
  v5 = result;
  sub_AB34();
  if (!*(v5 + 16) || (v6 = sub_9758(v12), (v7 & 1) == 0))
  {
    result = sub_979C(v12);
    goto LABEL_11;
  }

  sub_97F0(*(v5 + 56) + 32 * v6, v13);
  sub_979C(v12);
  result = swift_dynamicCast();
  if ((result & 1) == 0 || (result = sub_70CC(1752457584, 0xE400000000000000), result == 6))
  {
LABEL_11:
    if (!a2)
    {
      return result;
    }

    return a2();
  }

  v8 = result;
  v9 = *(v3 + OBJC_IVAR___HomeScreenSettings_viewModel);
  v10 = *(v9 + 16);
  if (v10 != 6)
  {
    result = sub_8D40(v10, v8);
    if (result)
    {
      *(v9 + 16) = v8;
      if (!a2)
      {
        return result;
      }

      return a2();
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v12[0] = v9;
  sub_9940();
  sub_A5D4();

  if (a2)
  {
    return a2();
  }

  return result;
}

void __swiftcall HomeScreenSettings.init(nibName:bundle:)(HomeScreenSettings *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_AA64();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id HomeScreenSettings.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___HomeScreenSettings_viewModel;
  v7 = type metadata accessor for HomeScreenSettingsListViewModel();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  sub_A5F4();
  *&v3[v6] = v10;
  if (a2)
  {
    v11 = sub_AA64();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = HomeScreenSettings;
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id HomeScreenSettings.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___HomeScreenSettings_viewModel;
  v4 = type metadata accessor for HomeScreenSettingsListViewModel();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = 6;
  sub_A5F4();
  *&v1[v3] = v7;
  v10.receiver = v1;
  v10.super_class = HomeScreenSettings;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

unint64_t sub_9758(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB14(*(v2 + 40));

  return sub_984C(a1, v4);
}

uint64_t sub_97F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_984C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_9A3C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_AB24();
      sub_979C(v8);
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

unint64_t sub_9940()
{
  result = qword_14568;
  if (!qword_14568)
  {
    type metadata accessor for HomeScreenSettingsListViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14568);
  }

  return result;
}

unint64_t type metadata accessor for HomeScreenSettings()
{
  result = qword_14910;
  if (!qword_14910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_14910);
  }

  return result;
}

uint64_t sub_99E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_99F4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_9A98(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_9AAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_9AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v25 = a5;
  v9 = a4 >> 8;
  v10 = sub_4F18(&qword_14918, &qword_B8C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v15 = sub_4F18(&qword_14448, &qword_B098);
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  v16 = &v14[*(sub_4F18(&qword_14450, &unk_B0A0) + 36)];
  *v16 = v9;
  v16[1] = 1;
  v28 = a2;
  v29 = a3;
  v30 = v5;
  sub_4F18(&qword_14920, &qword_B8C8);
  sub_A944();
  if (v26 == 6 || (sub_8D40(v26, HIBYTE(v5)) & 1) == 0)
  {
    v18 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v17 = sub_A8C4();
  }

  else
  {
    v17 = sub_A8B4();
  }

  v19 = v17;
  v20 = sub_A984();
  v28 = a2;
  v29 = a3;
  v30 = v5;
  sub_A944();
  v26 = v19;
  v27 = v20;
  sub_4F18(&qword_14928, &qword_B8D0);
  sub_9DE4();
  v21 = sub_A934();
  v22 = v25;
  (*(v11 + 32))(v25, v14, v10);
  result = sub_4F18(&qword_14948, &qword_B8E0);
  *(v22 + *(result + 36)) = v21;
  return result;
}

unint64_t sub_9DE4()
{
  result = qword_14930;
  if (!qword_14930)
  {
    sub_5820(&qword_14928, &qword_B8D0);
    sub_619C(&qword_14938, &qword_14940, &qword_B8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14930);
  }

  return result;
}

unint64_t sub_9EA0()
{
  result = qword_14950;
  if (!qword_14950)
  {
    sub_5820(&qword_14948, &qword_B8E0);
    sub_5820(&qword_14448, &qword_B098);
    sub_619C(&qword_14958, &qword_14448, &qword_B098);
    sub_7280();
    swift_getOpaqueTypeConformance2();
    sub_619C(&qword_14960, &qword_14968, qword_B8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14950);
  }

  return result;
}

void sub_9FDC()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_AA64();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    qword_14EA0 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_A05C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_14E88 == -1)
  {
    if (qword_14E90)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_A524();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_14E90)
    {
      return _availability_version_check();
    }
  }

  if (qword_14E80 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_A53C();
    a3 = v10;
    a4 = v9;
    v8 = dword_14E70 < v11;
    if (dword_14E70 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_14E74 > a3)
      {
        return 1;
      }

      if (dword_14E74 >= a3)
      {
        return dword_14E78 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_14E70 < a2;
  if (dword_14E70 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_A1F0(uint64_t result)
{
  v1 = qword_14E90;
  if (qword_14E90)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_14E90 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_14E70, &dword_14E74, &dword_14E78);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}