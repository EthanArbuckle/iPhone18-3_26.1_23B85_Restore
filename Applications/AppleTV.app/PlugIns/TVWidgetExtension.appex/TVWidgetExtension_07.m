uint64_t sub_1000C40F4@<X0>(uint64_t a1@<X8>)
{
  sub_10000F320();

  v3 = sub_1000D260C();
  v5 = v4;
  v7 = v6;
  v8 = sub_1000D254C();
  v10 = v9;
  v12 = v11;
  sub_10000F374(v3, v5, v7 & 1);

  v13 = sub_1000D257C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10000F374(v8, v10, v12 & 1);

  v20 = *(v1 + 88);
  KeyPath = swift_getKeyPath();
  v22 = *(v1 + 96);
  v23 = swift_getKeyPath();
  v24 = *(v1 + 104);
  result = swift_getKeyPath();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v20;
  *(a1 + 48) = 0;
  *(a1 + 56) = v23;
  *(a1 + 64) = v22;
  *(a1 + 72) = result;
  *(a1 + 80) = v24;
  return result;
}

uint64_t sub_1000C4268@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v76 = a2;
  v5 = sub_1000D23FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100006334(&qword_100126BE0);
  __chkstk_darwin(v9 - 8);
  v11 = v70 - v10;
  v12 = a1 + *(type metadata accessor for SportsWatchWidgetView() + 20);
  v13 = type metadata accessor for SportsWatchWidgetViewModel(0);
  v75 = v12[*(v13 + 44)];
  if (v75 == 1)
  {
    v14 = v13;
    v74 = a1;
    v15 = &v12[*(v13 + 48)];
    v16 = *(v15 + 1);
    if (v16)
    {
      v17 = &selRef_labelColor;
      v18 = *v15 == *v76 && v16 == *(v76 + 8);
      if (!v18 && (sub_1000D39CC() & 1) == 0)
      {
        v17 = &selRef_tertiaryLabelColor;
      }
    }

    else
    {
      v17 = &selRef_labelColor;
    }

    v21 = sub_1000D242C();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    sub_1000D245C();
    sub_10000F938(v11, &qword_100126BE0);
    sub_1000D23EC();
    sub_1000D241C();

    (*(v6 + 8))(v8, v5);
    sub_1000D244C();
    v22 = sub_1000D247C();

    v23 = [objc_opt_self() *v17];
    v24 = sub_1000D27DC();
    if (v12[*(v14 + 52)] == 1)
    {
      sub_10002F270(&v83);
      *(&v88[10] + 7) = v87[1];
      *(&v88[8] + 7) = v87[0];
      *(&v88[6] + 7) = v86;
      *(&v88[4] + 7) = v85;
      *(&v88[2] + 7) = v84;
      *(v88 + 7) = v83;
      *(&v96[3] + 1) = *&v88[6];
      *(&v96[4] + 1) = *&v88[8];
      *(&v96[5] + 1) = *&v88[10];
      *(v96 + 1) = *v88;
      *(&v96[1] + 1) = *&v88[2];
      LOBYTE(v99[0]) = 0;
      LOBYTE(v96[0]) = 0;
      *&v96[6] = *(&v87[1] + 1);
      *(&v96[2] + 1) = *&v88[4];
      BYTE8(v96[6]) = 0;
    }

    else
    {
      v25 = *(v76 + 24);
      *&v83 = *(v76 + 16);
      *(&v83 + 1) = v25;
      *&v84 = v22;
      *(&v84 + 1) = v24;
      *&v85 = 1;
      BYTE8(v85) = 1;
      v86 = xmmword_1000DED50;
      v96[0] = v83;
      v96[1] = v84;
      v96[2] = v85;
      v96[3] = xmmword_1000DED50;
      LOBYTE(v99[0]) = 1;
      BYTE8(v96[6]) = 1;
      sub_1000C5EAC(&v83, &v101);
    }

    sub_10000F204();
    sub_10000F7F0();
    sub_1000D229C();

    v81 = v102;
    v82 = v101;
    v79 = *v103;
    v80 = *&v103[16];
    v77 = v104;
    v78 = v105;
    v19 = v106;
    LODWORD(v20) = v107;
    a1 = v74;
    if (sub_1000C026C())
    {
      goto LABEL_18;
    }

    v72 = v20;
    v73 = v19;
    v74 = a3;
    v71 = 0;
LABEL_20:
    v70[1] = a1[25];
    v32 = *(v76 + 40);
    *&v101 = *(v76 + 32);
    *(&v101 + 1) = v32;
    sub_10000F320();

    v33 = sub_1000D260C();
    v35 = v34;
    v37 = v36;
    v38 = a1;
    v39 = sub_1000D254C();
    v41 = v40;
    v43 = v42;
    sub_10000F374(v33, v35, v37 & 1);

    v44 = sub_1000D257C();
    v46 = v45;
    v48 = v47;
    sub_10000F374(v39, v41, v43 & 1);

    v49 = sub_1000D252C();
    v51 = v50;
    LOBYTE(v41) = v52;
    v20 = v53;
    sub_10000F374(v44, v46, v48 & 1);

    v54 = v38[28];
    KeyPath = swift_getKeyPath();
    v56 = *(v38 + 232);
    v57 = swift_getKeyPath();
    LOBYTE(v41) = v41 & 1;
    LOBYTE(v101) = v41;
    LOBYTE(v96[0]) = 0;
    v58 = v38[30];
    v59 = swift_getKeyPath();
    LOBYTE(v96[0]) = 1;
    *&v101 = v49;
    *(&v101 + 1) = v51;
    LOBYTE(v102) = v41;
    *(&v102 + 1) = v20;
    *v103 = KeyPath;
    *&v103[8] = v54;
    v103[16] = 0;
    *&v103[24] = v57;
    LOBYTE(v104) = v56;
    *(&v104 + 1) = v59;
    *&v105 = v58;
    BYTE8(v105) = 1;
    sub_100006334(&qword_1001225C0);
    sub_10000F670();
    sub_10000F720();
    sub_1000D229C();
    v19 = v73;
    a3 = v74;
    LOBYTE(v20) = v72;
    goto LABEL_21;
  }

  if (!sub_1000C026C())
  {
    v73 = 0;
    v74 = a3;
    v71 = a1[27];
    v81 = 0u;
    v82 = 0u;
    v72 = 255;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    goto LABEL_20;
  }

  v19 = 0;
  v81 = 0u;
  v82 = 0u;
  LOBYTE(v20) = -1;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
LABEL_18:
  v26 = a1[18];
  v27 = a1[19];
  v28 = *(v76 + 48);
  v29 = *(v76 + 56);
  v30 = *(v76 + 64);
  v31 = *(v76 + 88);
  LOBYTE(v96[0]) = 0;
  *&v101 = v26;
  *(&v101 + 1) = v27;
  *&v102 = v28;
  *(&v102 + 1) = v29;
  *v103 = v30;
  *&v103[8] = *(v76 + 72);
  *&v103[24] = v31;
  BYTE8(v105) = 0;

  sub_100006334(&qword_1001225C0);
  sub_10000F670();
  sub_10000F720();
  sub_1000D229C();
LABEL_21:
  v99[2] = v85;
  v99[3] = v86;
  v100[0] = v87[0];
  *(v100 + 9) = *(v87 + 9);
  v99[0] = v83;
  v99[1] = v84;
  v96[0] = v82;
  v96[1] = v81;
  v96[2] = v79;
  v96[3] = v80;
  v96[4] = v77;
  v96[5] = v78;
  *&v96[6] = v19;
  BYTE8(v96[6]) = v20;
  *&v88[19] = v80;
  v89 = v77;
  v90[0] = v78;
  *(v90 + 9) = *(&v96[5] + 9);
  *&v88[13] = v82;
  *&v88[15] = v81;
  *&v88[17] = v79;
  v97[0] = v83;
  v97[1] = v84;
  *(v98 + 9) = *(v87 + 9);
  v98[0] = v87[0];
  v97[2] = v85;
  v97[3] = v86;
  v92 = v84;
  v91 = v83;
  *(v95 + 9) = *(v87 + 9);
  v94 = v86;
  v95[0] = v87[0];
  v93 = v85;
  v60 = v82;
  v61 = v81;
  v62 = v80;
  a3[2] = v79;
  a3[3] = v62;
  *a3 = v60;
  a3[1] = v61;
  v63 = v89;
  v64 = v90[0];
  v65 = v91;
  a3[6] = v90[1];
  a3[7] = v65;
  a3[4] = v63;
  a3[5] = v64;
  v66 = v92;
  v67 = v93;
  *(a3 + 185) = *(v95 + 9);
  v68 = v95[0];
  a3[10] = v94;
  a3[11] = v68;
  a3[8] = v66;
  a3[9] = v67;
  sub_10000F8D0(v96, &v101, &qword_100127F60);
  sub_10000F8D0(v97, &v101, &qword_100123868);
  sub_10000F938(v99, &qword_100123868);
  v101 = v82;
  v102 = v81;
  *v103 = v79;
  *&v103[16] = v80;
  v104 = v77;
  v105 = v78;
  v106 = v19;
  v107 = v20;
  return sub_10000F938(&v101, &qword_100127F60);
}

uint64_t sub_1000C4AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D3>)
{
  v6 = sub_1000D1D2C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v31[-v11];
  sub_1000D1D5C();
  sub_1000C6768(&qword_100127FD8, &type metadata accessor for LayoutSubviews);
  sub_1000D373C();
  sub_1000D376C();
  result = sub_1000D375C();
  v14 = 0;
  v15 = 0;
  v16 = 0.0;
  v17 = 0;
  v18 = 0.0;
  v19 = 0;
  if (result == 3)
  {
    sub_1000D1D6C();
    sub_1000D1DEC();
    v32 = v20 & 1;
    v31[0] = v21 & 1;
    sub_1000D1D0C();
    v17 = v23;
    if (v22 <= a3)
    {
      v16 = v22;
    }

    else
    {
      v16 = a3;
    }

    sub_1000D1D6C();
    sub_1000D1DEC();
    v32 = v24 & 1;
    v31[0] = v25 & 1;
    sub_1000D1D0C();
    v19 = v27;
    if (v26 <= a3)
    {
      v18 = v26;
    }

    else
    {
      v18 = a3;
    }

    sub_1000C67B0(a1);
    v14 = v28;
    v15 = v29;
    v30 = *(v7 + 8);
    v30(v10, v6);
    result = (v30)(v12, v6);
  }

  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 40) = v19;
  return result;
}

double sub_1000C4D48@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000C4AE0(a1, v6, *(v2 + 24));
  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  result = *&v7;
  a2[2] = v7;
  return result;
}

double sub_1000C4D98(uint64_t a1, char a2)
{
  sub_1000D1D5C();
  sub_1000C6768(&qword_100127FD8, &type metadata accessor for LayoutSubviews);
  sub_1000D373C();
  sub_1000D376C();
  v4 = sub_1000D375C();
  result = 0.0;
  if (v4 == 3 && (a2 & 1) == 0)
  {
    return *&a1;
  }

  return result;
}

void (*sub_1000C4F38(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D1B7C();
  return sub_10001B4F4;
}

uint64_t sub_1000C4FC0(int a1)
{
  v29 = a1;
  v1 = sub_1000D23FC();
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  __chkstk_darwin(v1);
  v23 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100006334(&qword_100126BE0);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = sub_1000D24BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = enum case for Font.TextStyle.footnote(_:);
  v27 = *(v8 + 104);
  v20[0] = v7;
  v27(v10);
  v11 = enum case for Font.Design.rounded(_:);
  v25 = enum case for Font.Design.rounded(_:);
  v12 = sub_1000D242C();
  v13 = *(v12 - 8);
  v24 = *(v13 + 104);
  v24(v6, v11, v12);
  v22 = *(v13 + 56);
  v22(v6, 0, 1, v12);
  sub_1000D246C();
  sub_10000F938(v6, &qword_100126BE0);
  v14 = *(v8 + 8);
  v20[1] = v8 + 8;
  v21 = v14;
  v14(v10, v7);
  v15 = v23;
  sub_1000D23EC();
  sub_1000D241C();

  v16 = *(v31 + 8);
  v31 += 8;
  v16(v15, v30);
  sub_1000D244C();
  v26 = sub_1000D247C();

  v17 = [objc_opt_self() labelColor];
  sub_1000D27DC();
  v18 = v20[0];
  (v27)(v10, v28, v20[0]);
  v24(v6, v25, v12);
  v22(v6, 0, 1, v12);
  sub_1000D246C();
  sub_10000F938(v6, &qword_100126BE0);
  v21(v10, v18);
  sub_1000D23EC();
  sub_1000D241C();

  v16(v15, v30);
  sub_1000D244C();
  sub_1000D247C();

  if (v29)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000C53E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000D23FC();
  v3 = *(v2 - 8);
  v55 = v2;
  v56 = v3;
  __chkstk_darwin(v2);
  v54 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006334(&qword_100126BE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_1000D24BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v52) = enum case for Font.TextStyle.footnote(_:);
  v12 = *(v9 + 104);
  v48 = v9 + 104;
  v51 = v12;
  v12(v11);
  v13 = enum case for Font.Design.rounded(_:);
  v50 = enum case for Font.Design.rounded(_:);
  v14 = sub_1000D242C();
  v15 = *(v14 - 8);
  v49 = *(v15 + 104);
  v49(v7, v13, v14);
  v47 = *(v15 + 56);
  v47(v7, 0, 1, v14);
  sub_1000D246C();
  sub_10000F938(v7, &qword_100126BE0);
  v16 = *(v9 + 8);
  v45 = v9 + 8;
  v46 = v16;
  v16(v11, v8);
  v17 = v54;
  sub_1000D23EC();
  sub_1000D241C();

  v44 = *(v56 + 8);
  v56 += 8;
  v44(v17, v55);
  sub_1000D244C();
  v53 = sub_1000D247C();

  v51(v11, v52, v8);
  v49(v7, v50, v14);
  v47(v7, 0, 1, v14);
  sub_1000D246C();
  sub_10000F938(v7, &qword_100126BE0);
  v46(v11, v8);
  v18 = v54;
  sub_1000D23EC();
  sub_1000D241C();

  v44(v18, v55);
  sub_1000D244C();
  v56 = sub_1000D247C();

  v19 = objc_opt_self();
  v20 = [v19 labelColor];
  v52 = sub_1000D27DC();
  v21 = sub_1000D2B6C();
  v54 = v22;
  v55 = v21;
  v23 = [v19 labelColor];
  v24 = sub_1000D27DC();
  v25 = sub_1000D2B4C();
  v27 = v26;
  v28 = sub_1000D21BC();
  v29 = [v19 labelColor];
  v30 = sub_1000D27DC();
  v31 = [v19 labelColor];
  v32 = sub_1000D27DC();
  v33 = [v19 labelColor];
  v34 = sub_1000D27DC();
  v35 = sub_1000D248C();
  v36 = sub_1000D240C();
  result = sub_1000D244C();
  *a1 = xmmword_1000ED160;
  v38 = v53;
  *(a1 + 16) = 0;
  *(a1 + 24) = v38;
  v39 = v55;
  v40 = v52;
  *(a1 + 32) = v56;
  *(a1 + 40) = v40;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0;
  v41 = v54;
  *(a1 + 64) = v39;
  *(a1 + 72) = v41;
  *(a1 + 80) = v24;
  *(a1 + 88) = 2;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0x3FD3333333333333;
  *(a1 + 112) = v25;
  *(a1 + 120) = v27;
  *(a1 + 128) = v28;
  *(a1 + 136) = xmmword_1000ED170;
  *(a1 + 152) = v30;
  *(a1 + 160) = 0x4035000000000000;
  *(a1 + 168) = v32;
  *(a1 + 176) = xmmword_1000ED180;
  *(a1 + 192) = v34;
  *(a1 + 200) = v35;
  *(a1 + 208) = v36;
  *(a1 + 216) = v42;
  *(a1 + 224) = 1;
  *(a1 + 232) = 1;
  *(a1 + 240) = 0x3FE0000000000000;
  return result;
}

uint64_t sub_1000C5938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SportsWatchWidgetViewModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000C59F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SportsWatchWidgetViewModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SportsWatchWidgetView()
{
  result = qword_100127E28;
  if (!qword_100127E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C5AE8()
{
  result = type metadata accessor for SportsWatchWidgetViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1000C5B64(uint64_t a1, __int128 *a2)
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
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1000C5BB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_1000C5BF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000C5CA8()
{
  result = qword_100127EB8;
  if (!qword_100127EB8)
  {
    sub_10000637C(&qword_100127E98);
    sub_10000637C(&qword_100127EC0);
    sub_1000C5DA0();
    swift_getOpaqueTypeConformance2();
    sub_1000C6768(&qword_100122720, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127EB8);
  }

  return result;
}

unint64_t sub_1000C5DA0()
{
  result = qword_100127EC8;
  if (!qword_100127EC8)
  {
    sub_10000637C(&qword_100127EC0);
    sub_10000FC38(&qword_100127ED0, &qword_100127ED8);
    sub_10000FC38(&qword_100127EE0, &qword_100127EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127EC8);
  }

  return result;
}

uint64_t sub_1000C5F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C5F78(uint64_t a1)
{
  v2 = type metadata accessor for SportsWidgetClockView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000C5FE8()
{
  result = qword_100127F98;
  if (!qword_100127F98)
  {
    sub_10000637C(&qword_100127E88);
    sub_1000C60A0();
    sub_10000FC38(&qword_100125950, &qword_100125958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127F98);
  }

  return result;
}

unint64_t sub_1000C60A0()
{
  result = qword_100127FA0;
  if (!qword_100127FA0)
  {
    sub_10000637C(&qword_100127E70);
    sub_1000C6158();
    sub_10000FC38(&qword_100127FC8, &qword_100127E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127FA0);
  }

  return result;
}

unint64_t sub_1000C6158()
{
  result = qword_100127FA8;
  if (!qword_100127FA8)
  {
    sub_10000637C(&qword_100127E68);
    sub_1000C61E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127FA8);
  }

  return result;
}

unint64_t sub_1000C61E4()
{
  result = qword_100127FB0;
  if (!qword_100127FB0)
  {
    sub_10000637C(&qword_100127E60);
    sub_1000C6268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127FB0);
  }

  return result;
}

unint64_t sub_1000C6268()
{
  result = qword_100127FB8;
  if (!qword_100127FB8)
  {
    sub_10000637C(&qword_100127FC0);
    sub_10000FC38(&qword_100127EB0, &qword_100127EA8);
    sub_1000C5CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127FB8);
  }

  return result;
}

unint64_t sub_1000C6324()
{
  result = qword_100127FD0;
  if (!qword_100127FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127FD0);
  }

  return result;
}

uint64_t sub_1000C6378(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  v17 = sub_1000D1D2C();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = v31 - v23;
  __chkstk_darwin(v22);
  v26 = v31 - v25;
  sub_1000D1D5C();
  sub_1000C6768(&qword_100127FD8, &type metadata accessor for LayoutSubviews);
  sub_1000D373C();
  sub_1000D376C();
  result = sub_1000D375C();
  if (result == 3)
  {
    sub_1000D1D6C();
    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    CGRectGetMinX(v34);
    *&v31[1] = a6;
    *&v31[2] = a5;
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetMidY(v35);
    *&v31[3] = a7;
    sub_1000D2C0C();
    v31[0] = *(a9 + 16);
    v33 = 0;
    v32 = 0;
    sub_1000D1D1C();
    sub_1000D1D6C();
    v36.origin.x = a1;
    v36.origin.y = a2;
    v36.size.width = a3;
    v36.size.height = a4;
    CGRectGetMaxX(v36);
    v37.origin.x = a1;
    v37.origin.y = a2;
    v37.size.width = a3;
    v37.size.height = a4;
    CGRectGetMidY(v37);
    sub_1000D2C0C();
    v33 = 0;
    v32 = 0;
    sub_1000D1D1C();
    sub_1000D1D6C();
    sub_1000D1DEC();
    v33 = v28 & 1;
    v32 = v29 & 1;
    sub_1000D1D0C();
    v38.origin.x = a1;
    v38.origin.y = a2;
    v38.size.width = a3;
    v38.size.height = a4;
    CGRectGetWidth(v38);
    v39.origin.x = a1;
    v39.origin.y = a2;
    v39.size.width = a3;
    v39.size.height = a4;
    CGRectGetMidX(v39);
    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    CGRectGetMidY(v40);
    sub_1000D2C0C();
    v33 = 0;
    v32 = 0;
    sub_1000D1D1C();
    v30 = *(v18 + 8);
    v30(v21, v17);
    v30(v24, v17);
    return (v30)(v26, v17);
  }

  return result;
}

uint64_t sub_1000C6768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C67B0(uint64_t a1)
{
  *&v28.f64[0] = sub_1000D1D2C();
  v2 = *(*&v28.f64[0] - 8);
  __chkstk_darwin(*&v28.f64[0]);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D1D5C();
  sub_1000C6768(&qword_100127FD8, &type metadata accessor for LayoutSubviews);
  v5 = sub_1000D374C();
  v7 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v8 = v5;
    v31 = &_swiftEmptyArrayStorage;
    sub_100053CCC(0, v5 & ~(v5 >> 63), 0);
    v7 = v31;
    result = sub_1000D373C();
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v27 = (v2 + 16);
    do
    {
      v10 = sub_1000D378C();
      v11 = v28.f64[0];
      (*v27)(v4);
      v10(v30, 0);
      sub_1000D1DEC();
      v30[0] = v12 & 1;
      v29 = v13 & 1;
      sub_1000D1D0C();
      v15 = v14;
      v17 = v16;
      (*(v2 + 8))(v4, COERCE_FLOAT64_T(*&v11));
      v31 = v7;
      v18 = a1;
      v20 = *(v7 + 2);
      v19 = *(v7 + 3);
      if (v20 >= v19 >> 1)
      {
        sub_100053CCC((v19 > 1), v20 + 1, 1);
        v7 = v31;
      }

      *(v7 + 2) = v20 + 1;
      v21 = &v7[16 * v20];
      *(v21 + 4) = v15;
      *(v21 + 5) = v17;
      sub_1000D377C();
      --v8;
      a1 = v18;
    }

    while (v8);
  }

  v22 = *(v7 + 2);
  if (v22)
  {
    v23 = (v7 + 32);
    v24 = 0uLL;
    do
    {
      v25 = *v23++;
      v24 = vbslq_s8(vcgeq_f64(v25, v24), v25, v24);
      --v22;
    }

    while (v22);
    v28 = v24;
  }

  else
  {
    v6.f64[0] = 0.0;
    v28 = v6;
  }
}

uint64_t sub_1000C6A6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C6A8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1000C6B00@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v86 = type metadata accessor for SportsWatchWidgetView();
  __chkstk_darwin(v86);
  v2 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000D31AC();
  __chkstk_darwin(v3 - 8);
  v81 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsWatchWidgetViewModel(0);
  __chkstk_darwin(v5 - 8);
  v82 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100006334(&qword_100128218);
  __chkstk_darwin(v97);
  v87 = &v72 - v7;
  v85 = sub_100006334(&qword_100128220);
  __chkstk_darwin(v85);
  v94 = &v72 - v8;
  v95 = sub_100006334(&qword_100128228);
  __chkstk_darwin(v95);
  v96 = &v72 - v9;
  v99 = sub_100006334(&qword_100122380);
  __chkstk_darwin(v99);
  v73 = &v72 - v10;
  v98 = type metadata accessor for SportsWidgetView();
  __chkstk_darwin(v98);
  v83 = (&v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = sub_100006334(&qword_100128230);
  v75 = *(v89 - 8);
  __chkstk_darwin(v89);
  v74 = &v72 - v12;
  v93 = sub_100006334(&qword_100128238);
  v77 = *(v93 - 8);
  __chkstk_darwin(v93);
  v76 = &v72 - v13;
  v14 = sub_1000D2E8C();
  v78 = *(v14 - 8);
  v79 = v14;
  v15 = __chkstk_darwin(v14);
  v80 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v72 - v17;
  v19 = sub_1000D2F7C();
  __chkstk_darwin(v19 - 8);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SportsWidgetContentViewModel(0);
  __chkstk_darwin(v22 - 8);
  v84 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000D331C();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v72 - v29;
  sub_1000B2EC4(&v72 - v29);
  v31 = *(v25 + 16);
  v90 = v30;
  v31(v28, v30, v24);
  v91 = v25;
  v92 = v24;
  v32 = (*(v25 + 88))(v28, v24);
  if (v32 == enum case for ActivityFamily.small(_:))
  {
    type metadata accessor for SportsWidgetActivityFamilyView();
    sub_100006334(&qword_100128008);
    sub_1000D335C();
    v33 = v81;
    sub_1000D2DBC();
    (*(v78 + 8))(v18, v79);
    sub_1000D336C();
    v34 = v80;
    sub_1000D335C();
    v35 = sub_1000D337C();
    v36 = v82;
    sub_100095008(v33, v21, v34, v35 & 1, v82);
    sub_1000CD8E4(v36, &v2[*(v86 + 20)], type metadata accessor for SportsWatchWidgetViewModel);
    sub_1000C53E0(&v104);
    v37 = v117;
    *(v2 + 12) = v116;
    *(v2 + 13) = v37;
    *(v2 + 14) = v118;
    *(v2 + 30) = v119;
    v38 = v113;
    *(v2 + 8) = v112;
    *(v2 + 9) = v38;
    v39 = v115;
    *(v2 + 10) = v114;
    *(v2 + 11) = v39;
    v40 = v109;
    *(v2 + 4) = v108;
    *(v2 + 5) = v40;
    v41 = v111;
    *(v2 + 6) = v110;
    *(v2 + 7) = v41;
    v42 = v105;
    *v2 = v104;
    *(v2 + 1) = v42;
    v43 = v107;
    *(v2 + 2) = v106;
    *(v2 + 3) = v43;
    sub_1000CD8E4(v2, v94, type metadata accessor for SportsWatchWidgetView);
    swift_storeEnumTagMultiPayload();
    v44 = sub_1000CD6DC(&qword_100128240, type metadata accessor for SportsWidgetView);
    v45 = sub_10000FC38(&qword_1001223A8, &qword_100122380);
    v100 = v98;
    v101 = v99;
    v102 = v44;
    v103 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v100 = v89;
    v101 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1000CD6DC(&qword_100128248, type metadata accessor for SportsWatchWidgetView);
    v47 = v96;
    sub_1000D229C();
    sub_10000F8D0(v47, v87, &qword_100128228);
    swift_storeEnumTagMultiPayload();
    sub_1000CD724();
    sub_1000D229C();
    sub_10000F938(v47, &qword_100128228);
    sub_1000CD954(v2, type metadata accessor for SportsWatchWidgetView);
    v48 = type metadata accessor for SportsWatchWidgetViewModel;
    v49 = v36;
LABEL_8:
    sub_1000CD954(v49, v48);
    return (*(v91 + 8))(v90, v92);
  }

  v50 = v98;
  if (v32 == enum case for ActivityFamily.medium(_:))
  {
    type metadata accessor for SportsWidgetActivityFamilyView();
    sub_100006334(&qword_100128008);
    sub_1000D336C();
    sub_1000D335C();
    v51 = sub_1000D337C();
    v52 = v84;
    sub_1000932BC(v21, v18, v51 & 1, v84);
    v53 = v83;
    sub_1000CD8E4(v52, v83 + *(v50 + 24), type metadata accessor for SportsWidgetContentViewModel);
    *v53 = swift_getKeyPath();
    sub_100006334(&qword_100122410);
    swift_storeEnumTagMultiPayload();
    v54 = (v53 + *(v50 + 20));
    v55 = sub_1000D282C();
    *v54 = 0x7FF0000000000000;
    v54[1] = v55;
    if (qword_100122150 != -1)
    {
      swift_once();
    }

    v56 = sub_1000D1DBC();
    v57 = sub_100006610(v56, qword_10013C440);
    sub_1000CD6DC(&qword_1001223D0, &type metadata accessor for DynamicTypeSize);
    v58 = sub_1000D357C();
    v59 = v99;
    if (v58)
    {
      v60 = v73;
      (*(*(v56 - 8) + 16))(v73, v57, v56);
      v61 = sub_1000CD6DC(&qword_100128240, type metadata accessor for SportsWidgetView);
      v62 = sub_10000FC38(&qword_1001223A8, &qword_100122380);
      v63 = v74;
      v64 = v83;
      sub_1000D270C();
      sub_10000F938(v60, &qword_100122380);
      sub_1000CD954(v64, type metadata accessor for SportsWidgetView);
      sub_1000D282C();
      *&v104 = v50;
      *(&v104 + 1) = v59;
      *&v105 = v61;
      *(&v105 + 1) = v62;
      v65 = swift_getOpaqueTypeConformance2();
      v66 = v76;
      v67 = v89;
      sub_1000D266C();

      (*(v75 + 8))(v63, v67);
      v68 = v77;
      v69 = v93;
      (*(v77 + 16))(v94, v66, v93);
      swift_storeEnumTagMultiPayload();
      *&v104 = v67;
      *(&v104 + 1) = v65;
      swift_getOpaqueTypeConformance2();
      sub_1000CD6DC(&qword_100128248, type metadata accessor for SportsWatchWidgetView);
      v70 = v96;
      sub_1000D229C();
      sub_10000F8D0(v70, v87, &qword_100128228);
      swift_storeEnumTagMultiPayload();
      sub_1000CD724();
      sub_1000D229C();
      sub_10000F938(v70, &qword_100128228);
      (*(v68 + 8))(v66, v69);
      v48 = type metadata accessor for SportsWidgetContentViewModel;
      v49 = v84;
      goto LABEL_8;
    }

    __break(1u);
  }

  result = sub_1000D396C();
  __break(1u);
  return result;
}

uint64_t sub_1000C78CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for SportsWidgetActivityFamilyView() + 20);
  v5 = sub_100006334(&qword_100128008);
  (*(*(v5 - 8) + 16))(a2 + v4, a1, v5);
  *a2 = swift_getKeyPath();
  sub_100006334(&qword_100127778);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000C798C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_1000D2E8C();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006334(&qword_100122DB8);
  __chkstk_darwin(v5 - 8);
  v45 = &v36 - v6;
  v7 = sub_100006334(&qword_100128008);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v36 = &v36 - v12;
  v13 = __chkstk_darwin(v11);
  v38 = &v36 - v14;
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v17 = sub_1000D330C();
  v43 = *(v17 - 8);
  v44 = v17;
  __chkstk_darwin(v17);
  v42 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v8 + 16);
  v19(v16, a1, v7);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v41 = swift_allocObject();
  v21 = *(v8 + 32);
  v21(v41 + v20, v16, v7);
  v22 = v38;
  v19(v38, a1, v7);
  v40 = swift_allocObject();
  v21(v40 + v20, v22, v7);
  v23 = v36;
  v39 = a1;
  v19(v36, a1, v7);
  v38 = swift_allocObject();
  v21(&v38[v20], v23, v7);
  v24 = v37;
  v19(v37, a1, v7);
  v25 = swift_allocObject();
  v21(v25 + v20, v24, v7);
  sub_100006334(&qword_100128010);
  sub_100006334(&qword_100128018);
  v37 = sub_100006334(&qword_100128020);
  sub_10000FC38(&qword_100128028, &qword_100128010);
  v26 = type metadata accessor for SportsWidgetDynamicIslandCompactView(255);
  v27 = sub_10000637C(&qword_100122380);
  v28 = sub_1000CD6DC(&qword_100128030, type metadata accessor for SportsWidgetDynamicIslandCompactView);
  v29 = sub_10000FC38(&qword_1001223A8, &qword_100122380);
  v50 = v26;
  v51 = v27;
  v52 = v28;
  v53 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = sub_10000637C(&qword_100128038);
  v31 = sub_1000CC430();
  v50 = v30;
  v51 = v27;
  v52 = v31;
  v53 = v29;
  swift_getOpaqueTypeConformance2();
  v32 = v42;
  sub_1000D32EC();
  v33 = v46;
  sub_1000D335C();
  sub_1000D2DCC();
  (*(v47 + 8))(v33, v48);
  v34 = v45;
  sub_1000D190C();

  sub_1000D32FC();
  sub_10000F938(v34, &qword_100122DB8);
  return (*(v43 + 8))(v32, v44);
}

uint64_t sub_1000C7FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v61 = a2;
  v62 = sub_100006334(&qword_100128050);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v54 = &v38 - v3;
  v4 = sub_100006334(&qword_100128058);
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v48 = &v38 - v5;
  v6 = sub_100006334(&qword_100128060);
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v65 = &v38 - v7;
  v55 = sub_100006334(&qword_100128068);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v45 = &v38 - v8;
  v9 = sub_100006334(&qword_100128070);
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v44 = &v38 - v10;
  v11 = sub_100006334(&qword_100128078);
  v49 = *(v11 - 8);
  v50 = v11;
  __chkstk_darwin(v11);
  v63 = &v38 - v12;
  v13 = sub_1000D34FC();
  __chkstk_darwin(v13 - 8);
  v14 = sub_100006334(&qword_100128080);
  v46 = *(v14 - 8);
  v47 = v14;
  __chkstk_darwin(v14);
  v64 = &v38 - v15;
  sub_1000D34DC();
  v76 = a1;
  v43 = sub_100006334(&qword_100128088);
  v16 = sub_10000637C(&qword_100128090);
  v17 = sub_10000637C(&qword_100122380);
  v38 = v17;
  v18 = sub_10000637C(&qword_100128098);
  v40 = &protocol conformance descriptor for HStack<A>;
  v19 = sub_10000FC38(&qword_1001280A0, &qword_100128098);
  v77 = v18;
  v78 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_10000FC38(&qword_1001223A8, &qword_100122380);
  v77 = v16;
  v78 = v17;
  v79 = OpaqueTypeConformance2;
  v80 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  sub_1000D348C();
  sub_1000D34EC();
  v21 = v41;
  v75 = v41;
  sub_100006334(&qword_1001280A8);
  v22 = sub_10000637C(&qword_1001280B0);
  v23 = sub_10000637C(&qword_1001280B8);
  v24 = sub_10000FC38(&qword_1001280C0, &qword_1001280B8);
  v77 = v23;
  v78 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = v38;
  v27 = v39;
  v77 = v22;
  v78 = v38;
  v79 = v25;
  v80 = v39;
  swift_getOpaqueTypeConformance2();
  v28 = v63;
  sub_1000D348C();
  sub_1000D34BC();
  v74 = v21;
  sub_100006334(&qword_1001280C8);
  sub_1000CCED4();
  v29 = v44;
  sub_1000D348C();
  sub_1000D34CC();
  v73 = v21;
  sub_100006334(&qword_1001280E0);
  v30 = sub_10000637C(&qword_1001280E8);
  v31 = sub_1000CD0B8();
  v77 = v30;
  v78 = v26;
  v79 = v31;
  v80 = v27;
  swift_getOpaqueTypeConformance2();
  v32 = v45;
  sub_1000D348C();
  v72 = v64;
  sub_100006334(&qword_100128100);
  v77 = v43;
  v78 = v42;
  swift_getOpaqueTypeConformance2();
  v33 = v65;
  sub_1000D349C();
  v70 = v33;
  v71 = v28;
  sub_100006334(&qword_100128108);
  sub_10000FC38(&qword_100128110, &qword_100128108);
  v34 = v48;
  sub_1000D349C();
  v68 = v34;
  v69 = v29;
  v35 = v29;
  sub_100006334(&qword_100128118);
  sub_10000FC38(&qword_100128120, &qword_100128118);
  v36 = v54;
  sub_1000D349C();
  v66 = v36;
  v67 = v32;
  sub_100006334(&qword_100128010);
  sub_10000FC38(&qword_100128028, &qword_100128010);
  sub_1000D349C();
  (*(v60 + 8))(v36, v62);
  (*(v58 + 8))(v34, v59);
  (*(v56 + 8))(v65, v57);
  (*(v53 + 8))(v32, v55);
  (*(v51 + 8))(v35, v52);
  (*(v49 + 8))(v63, v50);
  return (*(v46 + 8))(v64, v47);
}

uint64_t sub_1000C899C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v42 = sub_100006334(&qword_100122380);
  __chkstk_darwin(v42);
  v41 = &v39 - v1;
  v2 = sub_1000D22FC();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v48 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100006334(&qword_100128098);
  __chkstk_darwin(v47);
  v45 = (&v39 - v4);
  v5 = sub_100006334(&qword_100128090);
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v46 = &v39 - v6;
  v7 = sub_1000D2F7C();
  __chkstk_darwin(v7 - 8);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D31AC();
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000D2E8C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = type metadata accessor for SportsWidgetDynamicIslandExpanded(0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006334(&qword_100128008);
  sub_1000D335C();
  sub_1000D2DBC();
  v23 = v12;
  v24 = v47;
  (*(v13 + 8))(v18, v23);
  v25 = v44;
  sub_1000D336C();
  sub_1000D335C();
  v26 = sub_1000D337C();
  v27 = v16;
  v28 = v46;
  sub_1000941A8(v11, v25, v27, v26 & 1, &v22[*(v20 + 28)]);
  sub_100018900(v22);
  v29 = sub_1000D210C();
  v30 = v45;
  *v45 = v29;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  v31 = sub_100006334(&qword_100128168);
  sub_1000251C0(v22, v30 + *(v31 + 44));
  v32 = v48;
  sub_1000D22DC();
  v33 = sub_10000FC38(&qword_1001280A0, &qword_100128098);
  sub_1000D276C();
  (*(v49 + 8))(v32, v50);
  sub_10000F938(v30, &qword_100128098);
  sub_1000CD954(v22, type metadata accessor for SportsWidgetDynamicIslandExpanded);
  if (qword_100122150 != -1)
  {
    swift_once();
  }

  v34 = sub_1000D1DBC();
  v35 = sub_100006610(v34, qword_10013C440);
  sub_1000CD6DC(&qword_1001223D0, &type metadata accessor for DynamicTypeSize);
  result = sub_1000D357C();
  if (result)
  {
    v37 = v41;
    (*(*(v34 - 8) + 16))(v41, v35, v34);
    v51 = v24;
    v52 = v33;
    swift_getOpaqueTypeConformance2();
    sub_10000FC38(&qword_1001223A8, &qword_100122380);
    v38 = v40;
    sub_1000D270C();
    sub_10000F938(v37, &qword_100122380);
    return (*(v39 + 8))(v28, v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C8FF4@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v42 = sub_100006334(&qword_100122380);
  __chkstk_darwin(v42);
  v41 = &v39 - v1;
  v2 = sub_1000D22FC();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v48 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100006334(&qword_1001280B8);
  __chkstk_darwin(v47);
  v45 = (&v39 - v4);
  v5 = sub_100006334(&qword_1001280B0);
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v46 = &v39 - v6;
  v7 = sub_1000D2F7C();
  __chkstk_darwin(v7 - 8);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D31AC();
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000D2E8C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = type metadata accessor for SportsWidgetDynamicIslandExpanded(0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006334(&qword_100128008);
  sub_1000D335C();
  sub_1000D2DBC();
  v23 = v12;
  v24 = v47;
  (*(v13 + 8))(v18, v23);
  v25 = v44;
  sub_1000D336C();
  sub_1000D335C();
  v26 = sub_1000D337C();
  v27 = v16;
  v28 = v46;
  sub_1000941A8(v11, v25, v27, v26 & 1, &v22[*(v20 + 28)]);
  sub_100018900(v22);
  v29 = sub_1000D210C();
  v30 = v45;
  *v45 = v29;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  v31 = sub_100006334(&qword_100128160);
  sub_100025808(v22, v30 + *(v31 + 44));
  v32 = v48;
  sub_1000D22DC();
  v33 = sub_10000FC38(&qword_1001280C0, &qword_1001280B8);
  sub_1000D276C();
  (*(v49 + 8))(v32, v50);
  sub_10000F938(v30, &qword_1001280B8);
  sub_1000CD954(v22, type metadata accessor for SportsWidgetDynamicIslandExpanded);
  if (qword_100122150 != -1)
  {
    swift_once();
  }

  v34 = sub_1000D1DBC();
  v35 = sub_100006610(v34, qword_10013C440);
  sub_1000CD6DC(&qword_1001223D0, &type metadata accessor for DynamicTypeSize);
  result = sub_1000D357C();
  if (result)
  {
    v37 = v41;
    (*(*(v34 - 8) + 16))(v41, v35, v34);
    v51 = v24;
    v52 = v33;
    swift_getOpaqueTypeConformance2();
    sub_10000FC38(&qword_1001223A8, &qword_100122380);
    v38 = v40;
    sub_1000D270C();
    sub_10000F938(v37, &qword_100122380);
    return (*(v39 + 8))(v28, v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C964C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v37 = sub_100006334(&qword_100122380);
  __chkstk_darwin(v37);
  v36 = &v33 - v1;
  v35 = sub_100006334(&qword_1001223D8);
  __chkstk_darwin(v35);
  v41 = &v33 - v2;
  v3 = sub_1000D31AC();
  __chkstk_darwin(v3 - 8);
  v40 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000D2E8C();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for SportsWidgetDynamicIslandExpanded(0);
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100006334(&qword_100128158);
  v42 = *(v14 - 8);
  v43 = v14;
  __chkstk_darwin(v14);
  v34 = &v33 - v15;
  v16 = sub_1000D2F7C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006334(&qword_100128008);
  sub_1000D336C();
  v20 = sub_1000D2ECC();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    v32 = 1;
    v29 = v43;
    v31 = v44;
    v30 = v42;
    return (*(v30 + 56))(v31, v32, 1, v29);
  }

  sub_1000D335C();
  v21 = v40;
  sub_1000D2DBC();
  (*(v38 + 8))(v10, v39);
  sub_1000D336C();
  sub_1000D335C();
  v22 = sub_1000D337C();
  sub_1000941A8(v21, v19, v8, v22 & 1, &v13[*(v11 + 20)]);
  sub_100018900(v13);
  v23 = v41;
  sub_1000266B0(v41);
  sub_1000CD954(v13, type metadata accessor for SportsWidgetDynamicIslandExpanded);
  if (qword_100122150 != -1)
  {
    swift_once();
  }

  v24 = sub_1000D1DBC();
  v25 = sub_100006610(v24, qword_10013C440);
  sub_1000CD6DC(&qword_1001223D0, &type metadata accessor for DynamicTypeSize);
  result = sub_1000D357C();
  if (result)
  {
    v27 = v36;
    (*(*(v24 - 8) + 16))(v36, v25, v24);
    sub_1000CCFF4();
    sub_10000FC38(&qword_1001223A8, &qword_100122380);
    v28 = v34;
    sub_1000D270C();
    sub_10000F938(v27, &qword_100122380);
    sub_10000F938(v23, &qword_1001223D8);
    v30 = v42;
    v29 = v43;
    v31 = v44;
    (*(v42 + 32))(v44, v28, v43);
    v32 = 0;
    return (*(v30 + 56))(v31, v32, 1, v29);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C9C14@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = sub_100006334(&qword_100122380);
  __chkstk_darwin(v29);
  v28 = &v27 - v1;
  v27 = sub_100006334(&qword_1001280E8);
  __chkstk_darwin(v27);
  v32 = &v27 - v2;
  v3 = sub_1000D2F7C();
  __chkstk_darwin(v3 - 8);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000D31AC();
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D2E8C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = type metadata accessor for SportsWidgetDynamicIslandExpanded(0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006334(&qword_100128008);
  sub_1000D335C();
  sub_1000D2DBC();
  (*(v9 + 8))(v14, v8);
  v19 = v31;
  sub_1000D336C();
  sub_1000D335C();
  v20 = sub_1000D337C();
  v21 = *(v16 + 28);
  v22 = v32;
  sub_1000941A8(v7, v19, v12, v20 & 1, &v18[v21]);
  sub_100018900(v18);
  sub_100025E28(v22);
  sub_1000CD954(v18, type metadata accessor for SportsWidgetDynamicIslandExpanded);
  if (qword_100122150 != -1)
  {
    swift_once();
  }

  v23 = sub_1000D1DBC();
  v24 = sub_100006610(v23, qword_10013C440);
  sub_1000CD6DC(&qword_1001223D0, &type metadata accessor for DynamicTypeSize);
  result = sub_1000D357C();
  if (result)
  {
    v26 = v28;
    (*(*(v23 - 8) + 16))(v28, v24, v23);
    sub_1000CD0B8();
    sub_10000FC38(&qword_1001223A8, &qword_100122380);
    sub_1000D270C();
    sub_10000F938(v26, &qword_100122380);
    return sub_10000F938(v22, &qword_1001280E8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CA094@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v93 = sub_100006334(&qword_100122380);
  __chkstk_darwin(v93);
  v92 = &v86 - v1;
  v110 = type metadata accessor for SportsWidgetDynamicIslandCompactView(0);
  __chkstk_darwin(v110);
  v111 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1000D2E0C();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1000D318C();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000D2E4C();
  v115 = *(v5 - 8);
  v116 = v5;
  __chkstk_darwin(v5);
  v114 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000D2D9C();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v119 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006334(&qword_100126930);
  __chkstk_darwin(v8 - 8);
  v118 = &v86 - v9;
  v117 = sub_1000D2F7C();
  v120 = *(v117 - 8);
  v10 = __chkstk_darwin(v117);
  v100 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v99 = &v86 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v86 - v15;
  __chkstk_darwin(v14);
  v18 = &v86 - v17;
  v103 = sub_1000D31AC();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000D2E8C();
  v112 = v21;
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v98 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v97 = &v86 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v86 - v28;
  __chkstk_darwin(v27);
  v31 = &v86 - v30;
  v101 = type metadata accessor for SportsWidgetDynamicIslandCompactViewModel(0);
  v32 = __chkstk_darwin(v101);
  v95 = (&v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v108 = (&v86 - v34);
  sub_100006334(&qword_100128008);
  sub_1000D335C();
  v113 = v20;
  sub_1000D2DBC();
  v35 = *(v22 + 8);
  v35(v31, v21);
  sub_1000D336C();
  sub_1000D2F6C();
  v36 = v120 + 8;
  v37 = *(v120 + 8);
  v38 = v117;
  v37(v18, v117);
  sub_1000D336C();
  sub_1000D2EFC();
  v39 = v38;
  v120 = v36;
  v40 = v37;
  v37(v16, v39);
  sub_1000D335C();
  v41 = sub_1000D2DAC();
  v42 = v112;
  v96 = v35;
  (v35)(v29);
  if (!*(v41 + 16))
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_9;
  }

  (*(v115 + 16))(v114, v41 + ((*(v115 + 80) + 32) & ~*(v115 + 80)), v116);

  v43 = v97;
  sub_1000D335C();
  v89 = sub_1000D2DCC();
  v90 = v44;
  v45 = v96;
  v96(v43, v42);
  sub_1000D2CEC();
  v46 = v99;
  sub_1000D336C();
  v47 = v98;
  sub_1000D335C();
  v97 = sub_1000D2CDC();
  v91 = v48;
  v45(v47, v42);
  v49 = v117;
  (v40)(v46, v117);
  v50 = v100;
  sub_1000D336C();
  LODWORD(v112) = sub_1000D2F2C();
  (v40)(v50, v49);
  LODWORD(v120) = sub_1000D337C();
  v51 = v118;
  v52 = v119;
  v53 = sub_100090CDC(v118, 0, v119);
  v55 = v114;
  v56 = v115;
  if (!v54)
  {
    v57 = sub_1000D2D7C();
    v58 = v86;
    sub_1000D319C();
    if (*(v57 + 16) && (v59 = sub_100023678(v58), (v60 & 1) != 0))
    {
      v61 = *(*(v57 + 56) + 8 * v59);
      (*(v87 + 8))(v58, v88);
    }

    else
    {

      (*(v87 + 8))(v58, v88);
      v61 = 0;
    }

    *&v121[0] = v61;
    v53 = sub_1000D39BC();
  }

  v62 = v95;
  v95[6] = v53;
  v62[7] = v54;
  v63 = sub_1000D2D6C();
  v65 = v64;
  v66 = v106;
  sub_1000D2E1C();
  v67 = sub_1000D2DEC();
  v68 = v52;
  v70 = v69;
  (*(v107 + 8))(v66, v109);
  *v62 = v63;
  v62[1] = v65;
  v62[2] = 0;
  v62[3] = 0;
  v62[4] = v67;
  v62[5] = v70;
  v71 = v101;
  sub_1000D190C();

  v72 = sub_1000D2DDC();
  v74 = v73;
  (*(v56 + 8))(v55, v116);
  (*(v104 + 8))(v68, v105);
  sub_10000F938(v51, &qword_100126930);
  (*(v102 + 8))(v113, v103);
  v75 = (v62 + v71[7]);
  *v75 = v72;
  v75[1] = v74;
  v76 = (v62 + v71[8]);
  v77 = v91;
  *v76 = v97;
  v76[1] = v77;
  *(v62 + v71[9]) = v112 & 1;
  *(v62 + v71[10]) = v120 & 1;
  v78 = v62;
  v37 = v108;
  sub_1000CCE58(v78, v108);
  v40 = v111;
  sub_1000CD8E4(v37, &v111[*(v110 + 24)], type metadata accessor for SportsWidgetDynamicIslandCompactViewModel);
  *v40 = 0;
  sub_100018A64(v121);
  v79 = v121[2];
  *(v40 + 56) = v121[3];
  v80 = v121[5];
  *(v40 + 72) = v121[4];
  *(v40 + 88) = v80;
  *(v40 + 104) = v121[6];
  v81 = v121[1];
  *(v40 + 8) = v121[0];
  *(v40 + 24) = v81;
  *(v40 + 40) = v79;
  if (qword_100122150 != -1)
  {
    goto LABEL_12;
  }

LABEL_9:
  v82 = sub_1000D1DBC();
  v83 = sub_100006610(v82, qword_10013C440);
  sub_1000CD6DC(&qword_1001223D0, &type metadata accessor for DynamicTypeSize);
  result = sub_1000D357C();
  if (result)
  {
    v85 = v92;
    (*(*(v82 - 8) + 16))(v92, v83, v82);
    sub_1000CD6DC(&qword_100128030, type metadata accessor for SportsWidgetDynamicIslandCompactView);
    sub_10000FC38(&qword_1001223A8, &qword_100122380);
    sub_1000D270C();
    sub_10000F938(v85, &qword_100122380);
    sub_1000CD954(v40, type metadata accessor for SportsWidgetDynamicIslandCompactView);
    return sub_1000CD954(v37, type metadata accessor for SportsWidgetDynamicIslandCompactViewModel);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CADD8@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v93 = sub_100006334(&qword_100122380);
  __chkstk_darwin(v93);
  v92 = &v86 - v1;
  v109 = type metadata accessor for SportsWidgetDynamicIslandCompactView(0);
  __chkstk_darwin(v109);
  v110 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1000D2E0C();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1000D318C();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000D2E4C();
  v115 = *(v5 - 8);
  v116 = v5;
  __chkstk_darwin(v5);
  v114 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1000D2D9C();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v119 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006334(&qword_100126930);
  __chkstk_darwin(v8 - 8);
  v118 = &v86 - v9;
  v117 = sub_1000D2F7C();
  v120 = *(v117 - 8);
  v10 = __chkstk_darwin(v117);
  v99 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v98 = &v86 - v13;
  v14 = __chkstk_darwin(v12);
  v112 = &v86 - v15;
  __chkstk_darwin(v14);
  v17 = &v86 - v16;
  v102 = sub_1000D31AC();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000D2E8C();
  v111 = v20;
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v97 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v96 = &v86 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v86 - v27;
  __chkstk_darwin(v26);
  v30 = &v86 - v29;
  v100 = type metadata accessor for SportsWidgetDynamicIslandCompactViewModel(0);
  v31 = __chkstk_darwin(v100);
  v95 = (&v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31);
  v107 = (&v86 - v33);
  sub_100006334(&qword_100128008);
  sub_1000D335C();
  v113 = v19;
  sub_1000D2DBC();
  v34 = *(v21 + 8);
  v34(v30, v20);
  sub_1000D336C();
  sub_1000D2F6C();
  v35 = v120 + 8;
  v36 = *(v120 + 8);
  v37 = v117;
  v36(v17, v117);
  v38 = v112;
  sub_1000D336C();
  sub_1000D2F0C();
  v120 = v35;
  v36(v38, v37);
  sub_1000D335C();
  v39 = sub_1000D2DAC();
  v40 = v28;
  v41 = v111;
  v112 = v34;
  (v34)(v40);
  if (*(v39 + 16) < 2uLL)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_9;
  }

  (*(v115 + 16))(v114, v39 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72), v116);

  v42 = v96;
  sub_1000D335C();
  v89 = sub_1000D2DCC();
  v90 = v43;
  v44 = v112;
  (v112)(v42, v41);
  sub_1000D2CEC();
  v45 = v98;
  sub_1000D336C();
  v46 = v97;
  sub_1000D335C();
  v96 = sub_1000D2CDC();
  v91 = v47;
  v44(v46, v41);
  v48 = v45;
  v49 = v117;
  v36(v48, v117);
  v50 = v99;
  sub_1000D336C();
  LODWORD(v112) = sub_1000D2F2C();
  v36(v50, v49);
  LODWORD(v120) = sub_1000D337C();
  v51 = v118;
  v52 = v119;
  v53 = sub_100090CDC(v118, 1, v119);
  v55 = v114;
  v56 = v115;
  if (!v54)
  {
    v57 = sub_1000D2D7C();
    v58 = v86;
    sub_1000D319C();
    if (*(v57 + 16) && (v59 = sub_100023678(v58), (v60 & 1) != 0))
    {
      v61 = *(*(v57 + 56) + 8 * v59);
      (*(v87 + 8))(v58, v88);
    }

    else
    {

      (*(v87 + 8))(v58, v88);
      v61 = 0;
    }

    *&v121[0] = v61;
    v53 = sub_1000D39BC();
  }

  v62 = v95;
  v95[6] = v53;
  v62[7] = v54;
  v63 = sub_1000D2D6C();
  v65 = v64;
  v66 = v105;
  sub_1000D2E1C();
  v67 = sub_1000D2DEC();
  v68 = v52;
  v70 = v69;
  (*(v106 + 8))(v66, v108);
  *v62 = v63;
  v62[1] = v65;
  v62[2] = 0;
  v62[3] = 0;
  v62[4] = v67;
  v62[5] = v70;
  v71 = v100;
  sub_1000D190C();

  v72 = sub_1000D2DDC();
  v74 = v73;
  (*(v56 + 8))(v55, v116);
  (*(v103 + 8))(v68, v104);
  sub_10000F938(v51, &qword_100126930);
  (*(v101 + 8))(v113, v102);
  v75 = (v62 + v71[7]);
  *v75 = v72;
  v75[1] = v74;
  v76 = (v62 + v71[8]);
  v77 = v91;
  *v76 = v96;
  v76[1] = v77;
  *(v62 + v71[9]) = v112 & 1;
  *(v62 + v71[10]) = v120 & 1;
  v78 = v62;
  v36 = v107;
  sub_1000CCE58(v78, v107);
  v37 = v110;
  sub_1000CD8E4(v36, &v110[*(v109 + 24)], type metadata accessor for SportsWidgetDynamicIslandCompactViewModel);
  *v37 = 1;
  sub_100018A64(v121);
  v79 = v121[2];
  *(v37 + 56) = v121[3];
  v80 = v121[5];
  *(v37 + 72) = v121[4];
  *(v37 + 88) = v80;
  *(v37 + 104) = v121[6];
  v81 = v121[1];
  *(v37 + 8) = v121[0];
  *(v37 + 24) = v81;
  *(v37 + 40) = v79;
  if (qword_100122150 != -1)
  {
    goto LABEL_12;
  }

LABEL_9:
  v82 = sub_1000D1DBC();
  v83 = sub_100006610(v82, qword_10013C440);
  sub_1000CD6DC(&qword_1001223D0, &type metadata accessor for DynamicTypeSize);
  result = sub_1000D357C();
  if (result)
  {
    v85 = v92;
    (*(*(v82 - 8) + 16))(v92, v83, v82);
    sub_1000CD6DC(&qword_100128030, type metadata accessor for SportsWidgetDynamicIslandCompactView);
    sub_10000FC38(&qword_1001223A8, &qword_100122380);
    sub_1000D270C();
    sub_10000F938(v85, &qword_100122380);
    sub_1000CD954(v37, type metadata accessor for SportsWidgetDynamicIslandCompactView);
    return sub_1000CD954(v36, type metadata accessor for SportsWidgetDynamicIslandCompactViewModel);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CBB3C()
{
  v0 = sub_100006334(&qword_100122380);
  __chkstk_darwin(v0);
  v2 = v16 - v1;
  v3 = sub_1000D2E8C();
  __chkstk_darwin(v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D2F7C();
  __chkstk_darwin(v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006334(&qword_100128008);
  sub_1000D336C();
  sub_1000D335C();
  sub_100096EEC(v8, v5, v17);
  memcpy(v18, v17, sizeof(v18));
  v9 = objc_opt_self();
  sub_1000CCDA8(v17, v19);
  v10 = [v9 labelColor];
  v11 = sub_1000D27DC();
  sub_1000D284C();
  v12 = sub_1000D285C();

  sub_1000D2B5C();
  sub_1000D1C8C();
  v16[0] = xmmword_1000ED670;
  *&v16[1] = v11;
  *(&v16[1] + 8) = xmmword_1000ED680;
  *(&v16[2] + 8) = xmmword_1000ED690;
  *(&v16[3] + 1) = v12;
  *&v16[4] = 0x3FF0000000000000;
  memcpy(&v16[4] + 8, v18, 0x120uLL);
  if (qword_100122150 != -1)
  {
    swift_once();
  }

  v13 = sub_1000D1DBC();
  v14 = sub_100006610(v13, qword_10013C440);
  sub_1000CD6DC(&qword_1001223D0, &type metadata accessor for DynamicTypeSize);
  result = sub_1000D357C();
  if (result)
  {
    (*(*(v13 - 8) + 16))(v2, v14, v13);
    sub_100006334(&qword_100128038);
    sub_1000CC430();
    sub_10000FC38(&qword_1001223A8, &qword_100122380);
    sub_1000D270C();
    sub_1000CCE04(v17);
    sub_10000F938(v2, &qword_100122380);
    memcpy(v19, v16, 0x198uLL);
    return sub_10000F938(v19, &qword_100128038);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000CBF08()
{
  v0 = sub_100002D08();
  if (v0)
  {
    sub_1000D37AC();
    sub_1000D1B2C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000CBF80()
{
  v0 = sub_100006334(&qword_100127FE0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_1000D2E8C();
  type metadata accessor for SportsWidgetActivityFamilyView();
  sub_1000CD6DC(&qword_100127FE8, &type metadata accessor for SportsActivityAttributes);
  sub_1000CD6DC(&qword_100127FF0, type metadata accessor for SportsWidgetActivityFamilyView);
  sub_1000D33CC();
  sub_100006334(&qword_100127FF8);
  v4 = sub_1000D331C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000E2080;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, enum case for ActivityFamily.small(_:), v4);
  v10(v9 + v6, enum case for ActivityFamily.medium(_:), v4);
  sub_10000FC38(&qword_100128000, &qword_100127FE0);
  sub_1000D225C();

  return (*(v1 + 8))(v3, v0);
}

uint64_t type metadata accessor for SportsWidgetActivityFamilyView()
{
  result = qword_1001281D0;
  if (!qword_1001281D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CC2F4()
{
  v1 = sub_100006334(&qword_100128008);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000CC3A0(uint64_t (*a1)(uint64_t))
{
  v2 = *(sub_100006334(&qword_100128008) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000CC430()
{
  result = qword_100128040;
  if (!qword_100128040)
  {
    sub_10000637C(&qword_100128038);
    sub_1000CC4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128040);
  }

  return result;
}

unint64_t sub_1000CC4BC()
{
  result = qword_100128048;
  if (!qword_100128048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128048);
  }

  return result;
}

uint64_t sub_1000CC510(uint64_t a1)
{
  v2 = sub_1000D331C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000D207C();
}

uint64_t sub_1000CC5D8@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_100006334(&qword_100128128);
  v20 = *(v1 - 8);
  v2 = v20;
  v3 = __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_100006334(&qword_100128118);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  sub_100006334(&qword_100128050);
  sub_1000D34AC();
  sub_100006334(&qword_100128068);
  sub_1000D347C();
  sub_10000F8D0(v13, v11, &qword_100128118);
  v14 = *(v2 + 16);
  v15 = v1;
  v14(v5, v7, v1);
  v16 = v21;
  sub_10000F8D0(v11, v21, &qword_100128118);
  v17 = sub_100006334(&qword_100128130);
  v14((v16 + *(v17 + 48)), v5, v15);
  v18 = *(v20 + 8);
  v18(v7, v15);
  sub_10000F938(v13, &qword_100128118);
  v18(v5, v15);
  return sub_10000F938(v11, &qword_100128118);
}

uint64_t sub_1000CC858@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_100006334(&qword_100128138);
  v20 = *(v1 - 8);
  v2 = v20;
  v3 = __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_100006334(&qword_100128108);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  sub_100006334(&qword_100128058);
  sub_1000D34AC();
  sub_100006334(&qword_100128070);
  sub_1000D347C();
  sub_10000F8D0(v13, v11, &qword_100128108);
  v14 = *(v2 + 16);
  v15 = v1;
  v14(v5, v7, v1);
  v16 = v21;
  sub_10000F8D0(v11, v21, &qword_100128108);
  v17 = sub_100006334(&qword_100128140);
  v14((v16 + *(v17 + 48)), v5, v15);
  v18 = *(v20 + 8);
  v18(v7, v15);
  sub_10000F938(v13, &qword_100128108);
  v18(v5, v15);
  return sub_10000F938(v11, &qword_100128108);
}

uint64_t sub_1000CCAD8@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v1 = sub_100006334(&qword_100128148);
  v25 = *(v1 - 8);
  v2 = v25;
  v3 = __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = sub_100006334(&qword_100128100);
  v26 = *(v8 - 8);
  v9 = v26;
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  sub_100006334(&qword_100128060);
  sub_1000D34AC();
  sub_100006334(&qword_100128078);
  v24 = v7;
  sub_1000D347C();
  v15 = *(v9 + 16);
  v15(v12, v14, v8);
  v16 = *(v2 + 16);
  v17 = v7;
  v18 = v1;
  v16(v5, v17, v1);
  v19 = v27;
  v15(v27, v12, v8);
  v20 = &v19[*(sub_100006334(&qword_100128150) + 48)];
  v16(v20, v5, v18);
  v21 = *(v25 + 8);
  v21(v24, v18);
  v22 = *(v26 + 8);
  v22(v14, v8);
  v21(v5, v18);
  return (v22)(v12, v8);
}

uint64_t sub_1000CCE58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsWidgetDynamicIslandCompactViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000CCED4()
{
  result = qword_1001280D0;
  if (!qword_1001280D0)
  {
    sub_10000637C(&qword_1001280C8);
    sub_10000637C(&qword_1001223D8);
    sub_10000637C(&qword_100122380);
    sub_1000CCFF4();
    sub_10000FC38(&qword_1001223A8, &qword_100122380);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001280D0);
  }

  return result;
}

unint64_t sub_1000CCFF4()
{
  result = qword_1001280D8;
  if (!qword_1001280D8)
  {
    sub_10000637C(&qword_1001223D8);
    sub_10000F204();
    sub_1000CD6DC(&qword_100122420, type metadata accessor for SportsWidgetPlayByPlayView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001280D8);
  }

  return result;
}

unint64_t sub_1000CD0B8()
{
  result = qword_1001280F0;
  if (!qword_1001280F0)
  {
    sub_10000637C(&qword_1001280E8);
    sub_1000CD13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001280F0);
  }

  return result;
}

unint64_t sub_1000CD13C()
{
  result = qword_1001280F8;
  if (!qword_1001280F8)
  {
    sub_10000637C(&qword_100123810);
    sub_100026C70();
    sub_10000FC38(&qword_100123838, &qword_100123820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001280F8);
  }

  return result;
}

uint64_t sub_1000CD288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006334(&qword_100128170);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100006334(&qword_100128008);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000CD3A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100006334(&qword_100128170);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100006334(&qword_100128008);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000CD4B8()
{
  sub_1000CD53C();
  if (v0 <= 0x3F)
  {
    sub_1000CD594();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000CD53C()
{
  if (!qword_1001281E0)
  {
    sub_1000D331C();
    v0 = sub_1000D1BDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1001281E0);
    }
  }
}

void sub_1000CD594()
{
  if (!qword_1001281E8)
  {
    sub_1000D2E8C();
    sub_1000CD6DC(&qword_100127FE8, &type metadata accessor for SportsActivityAttributes);
    v0 = sub_1000D338C();
    if (!v1)
    {
      atomic_store(v0, &qword_1001281E8);
    }
  }
}

uint64_t sub_1000CD628()
{
  sub_10000637C(&qword_100127FE0);
  sub_10000FC38(&qword_100128000, &qword_100127FE0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000CD6DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000CD724()
{
  result = qword_100128250;
  if (!qword_100128250)
  {
    sub_10000637C(&qword_100128228);
    sub_10000637C(&qword_100128230);
    type metadata accessor for SportsWidgetView();
    sub_10000637C(&qword_100122380);
    sub_1000CD6DC(&qword_100128240, type metadata accessor for SportsWidgetView);
    sub_10000FC38(&qword_1001223A8, &qword_100122380);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000CD6DC(&qword_100128248, type metadata accessor for SportsWatchWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128250);
  }

  return result;
}

uint64_t sub_1000CD8E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CD954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000CD9B8()
{
  result = qword_100128258;
  if (!qword_100128258)
  {
    sub_10000637C(&qword_100128260);
    sub_1000CD724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128258);
  }

  return result;
}

double sub_1000CDA7C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000D285C();
  v3 = sub_1000D285C();
  sub_100006334(&qword_100126A28);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000E2080;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  sub_1000D2AFC();
  sub_1000D1D7C();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_1000CDD1C(uint64_t a1, const void *a2)
{
  v4 = sub_1000D17DC();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a2);
  sub_1000D17BC();

  return _swift_task_switch(sub_1000CDE04, 0, 0);
}

uint64_t sub_1000CDE04()
{
  sub_1000D1ACC();
  v0[6] = sub_1000D1AAC();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000CDEB4;
  v2 = v0[4];

  return UTSNetworkManager.execute(request:)(v2);
}

uint64_t sub_1000CDEB4(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000CE058, 0, 0);
  }

  else
  {
    v6 = v4[5];
    (*(v4[3] + 8))(v4[4], v4[2]);

    (v6)[2](v6, a1, 0);
    _Block_release(v6);

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_1000CE058()
{
  v1 = v0[5];
  (*(v0[3] + 8))(v0[4], v0[2]);
  v2 = sub_1000D187C();

  (v1)[2](v1, 0, v2);

  _Block_release(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000CE298(uint64_t a1, const void *a2)
{
  v4 = sub_1000D17DC();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a2);
  sub_1000D17BC();

  return _swift_task_switch(sub_1000CE380, 0, 0);
}

uint64_t sub_1000CE380()
{
  sub_1000D1ACC();
  v0[6] = sub_1000D1AAC();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000CE430;
  v2 = v0[4];

  return UTSNetworkManager.cancel(request:)(v2);
}

uint64_t sub_1000CE430()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);
  v1[2](v1);
  _Block_release(v1);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1000CE754(char a1, void *aBlock)
{
  *(v2 + 48) = a1;
  *(v2 + 16) = _Block_copy(aBlock);

  return _swift_task_switch(sub_1000CE7C4, 0, 0);
}

uint64_t sub_1000CE7C4()
{
  sub_1000D1ACC();
  *(v0 + 24) = sub_1000D1AAC();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000CE874;
  v2 = *(v0 + 48);

  return UTSNetworkManager.fetchConfiguration(forceConfig:)(v2);
}

uint64_t sub_1000CE874(void *a1)
{
  v4 = *v2;
  v4[5] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000CE9E4, 0, 0);
  }

  else
  {
    v5 = v4[2];

    (v5)[2](v5, a1, 0);
    _Block_release(v5);

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1000CE9E4()
{
  v1 = *(v0 + 16);

  v2 = sub_1000D187C();

  (v1)[2](v1, 0, v2);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

id TVUTSNetworkManagerProxy.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVUTSNetworkManagerProxy();
  return objc_msgSendSuper2(&v2, "init");
}

id TVUTSNetworkManagerProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVUTSNetworkManagerProxy();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000CEB54()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000CEB8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000119BC;

  return sub_1000CE754(v2, v3);
}

uint64_t sub_1000CEC40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100013B8C;

  return v6();
}

uint64_t sub_1000CED28(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000119BC;

  return v7();
}

uint64_t sub_1000CEE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100006334(&qword_100125288);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000CF0D0(a3, v23 - v10);
  v12 = sub_1000D372C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000CF140(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000D371C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1000D370C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1000D363C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1000CF140(a3);

    return v21;
  }

LABEL_8:
  sub_1000CF140(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1000CF0D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_100125288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CF140(uint64_t a1)
{
  v2 = sub_100006334(&qword_100125288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CF1A8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000CF2A0;

  return v6(a1);
}

uint64_t sub_1000CF2A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000CF398()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000CF3D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100013B8C;

  return sub_1000CF1A8(a1, v4);
}

uint64_t sub_1000CF488(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return sub_1000CF1A8(a1, v4);
}

uint64_t sub_1000CF544()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100013B8C;

  return sub_1000CE298(v2, v3);
}

uint64_t sub_1000CF5F8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000CF638()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100013B8C;

  return sub_1000CDD1C(v2, v3);
}

uint64_t sub_1000CF718()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C5F0);
  sub_100006610(v10, qword_10013C5F0);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_1000CFA04()
{
  v0 = sub_100006334(&qword_100123738);
  __chkstk_darwin(v0 - 8);
  v63 = v37 - v1;
  v2 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v2 - 8);
  v62 = v37 - v3;
  v4 = sub_1000D189C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D1A2C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000D35EC();
  __chkstk_darwin(v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1000D18BC();
  v12 = *(v59 - 8);
  __chkstk_darwin(v59);
  v61 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006334(&qword_1001282F0);
  v14 = sub_100006334(&qword_100123768);
  v60 = v14;
  v15 = *(v14 - 8);
  v54 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v55 = v17;
  *(v17 + 16) = xmmword_1000E2080;
  v58 = v17 + v16;
  v53 = *(v14 + 48);
  *(v17 + v16) = 0;
  sub_1000D358C();
  sub_1000D1A1C();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v5 + 104);
  v19(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  v20 = v5 + 104;
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v19(v7, v18, v4);
  v21 = v62;
  sub_1000D18CC();
  v52 = *(v12 + 56);
  v52(v21, 0, 1, v59);
  v50 = sub_1000D15FC();
  v22 = *(v50 - 8);
  v49 = *(v22 + 56);
  v51 = v22 + 56;
  v49(v63, 1, 1, v50);
  v48 = sub_100006334(&qword_100123750);
  v43 = v12 + 56;
  v23 = *(v12 + 72);
  v24 = *(v12 + 80);
  v46 = ((v24 + 32) & ~v24) + 4 * v23;
  v47 = v24;
  v45 = (v24 + 32) & ~v24;
  v25 = v23;
  v26 = swift_allocObject();
  v44 = xmmword_1000E5A60;
  v40 = v26;
  *(v26 + 16) = xmmword_1000E5A60;
  sub_1000D358C();
  sub_1000D1A1C();
  v38 = v4;
  v19(v7, v18, v4);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v19(v7, v18, v4);
  v57 = v25;
  v37[1] = v11;
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v56 = v18;
  v27 = v38;
  v39 = v20;
  v19(v7, v18, v38);
  v41 = 2 * v25;
  sub_1000D18CC();
  v42 = 2 * v25 + v57;
  sub_1000D358C();
  sub_1000D1A1C();
  v19(v7, v18, v27);
  v28 = v7;
  sub_1000D18CC();
  v29 = v58;
  sub_1000D162C();
  v30 = *(v60 + 48);
  v53 = (v29 + v54);
  v54 = v30;
  *v53 = 1;
  sub_1000D358C();
  sub_1000D1A1C();
  v31 = v7;
  v32 = v56;
  v19(v31, v56, v27);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v19(v28, v32, v27);
  v33 = v62;
  sub_1000D18CC();
  v52(v33, 0, 1, v59);
  v49(v63, 1, 1, v50);
  *(swift_allocObject() + 16) = v44;
  sub_1000D358C();
  sub_1000D1A1C();
  v34 = v56;
  v19(v28, v56, v27);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v19(v28, v34, v27);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v19(v28, v34, v27);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v19(v28, v34, v27);
  sub_1000D18CC();
  sub_1000D162C();
  v35 = sub_100024EEC(v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10013C608 = v35;
  return result;
}

uint64_t sub_1000D04B0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 48;
  }

  else
  {
    v2 = 49;
  }

  if (*a2)
  {
    v3 = 48;
  }

  else
  {
    v3 = 49;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1000D39CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_1000D051C()
{
  sub_1000D3A4C();
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_1000D0578()
{
  sub_1000D364C();
}

Swift::Int sub_1000D05B8()
{
  sub_1000D3A4C();
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_1000D0610@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100118B98;
  v8._object = v3;
  v5 = sub_1000D39AC(v4, v8);

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

void sub_1000D0670(uint64_t *a1@<X8>)
{
  v2 = 48;
  if (!*v1)
  {
    v2 = 49;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_1000D069C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122200 != -1)
  {
    swift_once();
  }

  v2 = sub_1000D174C();
  v3 = sub_100006610(v2, qword_10013C5F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000D0744(uint64_t a1)
{
  v2 = sub_1000A7804();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000D0790()
{
  if (qword_100122208 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000D07EC(uint64_t a1)
{
  v2 = sub_1000D0998();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000D083C()
{
  result = qword_100128290;
  if (!qword_100128290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128290);
  }

  return result;
}

unint64_t sub_1000D0894()
{
  result = qword_100128298;
  if (!qword_100128298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128298);
  }

  return result;
}

unint64_t sub_1000D08EC()
{
  result = qword_1001282A0;
  if (!qword_1001282A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001282A0);
  }

  return result;
}

unint64_t sub_1000D0998()
{
  result = qword_1001282A8;
  if (!qword_1001282A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001282A8);
  }

  return result;
}

unint64_t sub_1000D09EC()
{
  result = qword_1001282B0;
  if (!qword_1001282B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001282B0);
  }

  return result;
}

unint64_t sub_1000D0A44()
{
  result = qword_1001282B8;
  if (!qword_1001282B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001282B8);
  }

  return result;
}

unint64_t sub_1000D0AA0()
{
  result = qword_1001282C0;
  if (!qword_1001282C0)
  {
    sub_10000637C(&qword_1001282C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001282C0);
  }

  return result;
}

unint64_t sub_1000D0B08()
{
  result = qword_1001282D0;
  if (!qword_1001282D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001282D0);
  }

  return result;
}

unint64_t sub_1000D0B60()
{
  result = qword_1001282D8;
  if (!qword_1001282D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001282D8);
  }

  return result;
}

unint64_t sub_1000D0BB8()
{
  result = qword_1001282E0;
  if (!qword_1001282E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001282E0);
  }

  return result;
}

unint64_t sub_1000D0C0C(uint64_t a1)
{
  *(a1 + 8) = sub_1000A7804();
  result = sub_1000A79B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000D0C40()
{
  result = qword_1001282E8;
  if (!qword_1001282E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001282E8);
  }

  return result;
}

BOOL sub_1000D0CC4(int a1, int a2, int a3)
{
  if (qword_10013BF50 == -1)
  {
    v3 = dword_10013BF40 < a1;
    if (dword_10013BF40 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_1000D13DC();
    a2 = v6;
    a3 = v5;
    v3 = dword_10013BF40 < a1;
    if (dword_10013BF40 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_10013BF44 > a2)
  {
    return 1;
  }

  if (dword_10013BF44 < a2)
  {
    return 0;
  }

  return dword_10013BF48 >= a3;
}

uint64_t sub_1000D0D84(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_10013BF58 == -1)
  {
    if (qword_10013BF60)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000D13F4();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10013BF60)
    {
      return _availability_version_check();
    }
  }

  if (qword_10013BF50 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000D13DC();
    a3 = v10;
    a4 = v9;
    v8 = dword_10013BF40 < v11;
    if (dword_10013BF40 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10013BF44 > a3)
      {
        return 1;
      }

      if (dword_10013BF44 >= a3)
      {
        return dword_10013BF48 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10013BF40 < a2;
  if (dword_10013BF40 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000D0F18(uint64_t result)
{
  v1 = qword_10013BF60;
  if (qword_10013BF60)
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
      qword_10013BF60 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_10013BF40, &dword_10013BF44, &dword_10013BF48);
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

void sub_1000D12C4(void *a1, NSObject *a2)
{
  [a1 contextEnum];
  sub_100005E38();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "TVUNUpNextWidgetDataSource - Failed to build a punchoutURL. Type:[%ld] %@", v3, 0x16u);
}

void sub_1000D1350(void *a1, NSObject *a2)
{
  [a1 contextEnum];
  sub_100005E38();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "TVUNUpNextWidgetDataSource - Resolved item lacks canonical id. Type:[%ld] %@", v3, 0x16u);
}