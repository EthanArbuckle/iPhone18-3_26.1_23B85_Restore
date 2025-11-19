uint64_t sub_100071C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100071D00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100071DCC()
{
  sub_10006AAC4();
  if (v0 <= 0x3F)
  {
    sub_10006FEFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100071E74()
{
  result = qword_1000C25E8;
  if (!qword_1000C25E8)
  {
    sub_10000375C(&qword_1000C25D8, &qword_1000A2860);
    sub_10001CDC8(&qword_1000C25F0, &qword_1000C25E0, &qword_1000A2868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C25E8);
  }

  return result;
}

uint64_t sub_100071F2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for LargeSquareTileView();
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  sub_1000741A0(a1, a2 + v4[7], type metadata accessor for AccessoryAndSceneEntity);
  v7 = type metadata accessor for AccessoryAndSceneEntity();
  v8 = a2 + v4[8];
  sub_1000741A0(a1 + *(v7 + 24), v8, type metadata accessor for WidgetTileInfo);
  v9 = type metadata accessor for WidgetTileInfo();
  *(a2 + v4[9]) = *(v8 + v9[14]);
  v10 = (v8 + v9[8]);
  v12 = *v10;
  v11 = v10[1];
  v13 = (a2 + v4[10]);
  *v13 = v12;
  v13[1] = v11;
  v14 = *(v8 + v9[13]);

  if (v14 == 1)
  {
    sub_100074208(a1, type metadata accessor for AccessoryAndSceneEntity);
    v15 = *(v8 + v9[12]);
  }

  else
  {
    v15 = sub_10009E174();
    result = sub_100074208(a1, type metadata accessor for AccessoryAndSceneEntity);
  }

  *(a2 + v4[11]) = v15;
  return result;
}

uint64_t sub_1000720D8()
{
  v1 = sub_10009DC44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for LargeSquareTileView() + 20);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_10009E834();
    v8 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_100072230()
{
  v1 = sub_100003714(&qword_1000C26A0, &qword_1000A2968);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v72 = &v67 - v3;
  v71 = sub_100003714(&qword_1000C26A8, &qword_1000A2970);
  v4 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v6 = &v67 - v5;
  v73 = sub_100003714(&qword_1000C26B0, &qword_1000A2978);
  v7 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v9 = &v67 - v8;
  v10 = sub_100003714(&qword_1000C26B8, &qword_1000A2980);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v67 - v12;
  v69 = sub_10009DC44();
  v14 = *(v69 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v69);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LargeSquareTileView();
  v19 = *(v18 + 24);
  v70 = v0;
  v20 = v0 + v19;
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    if ((v21 & 1) == 0)
    {
LABEL_3:
      v22 = v70;
      v23 = v70 + *(v18 + 32);
      v24 = sub_10008CA68();
      goto LABEL_6;
    }
  }

  else
  {

    sub_10009E834();
    v26 = sub_10009DEA4();
    v68 = v6;
    v27 = v26;
    sub_10009D8C4();

    v6 = v68;
    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v21, 0);
    (*(v14 + 8))(v17, v69);
    if (v74 != 1)
    {
      goto LABEL_3;
    }
  }

  v22 = v70;
  v28 = v70 + *(v18 + 32);
  v24 = sub_10008D598();
LABEL_6:
  v29 = v24;
  v30 = v25;
  v31 = v72;
  *v31 = sub_10009DD04();
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  v32 = sub_100003714(&qword_1000C26C0, &qword_1000A2988);
  sub_1000727A0(v22, v29, v30, v31 + *(v32 + 44));

  sub_100003714(&qword_1000C26C8, &qword_1000A2990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009F8F0;
  v34 = sub_10009DEE4();
  *(inited + 32) = v34;
  v35 = sub_10009DF04();
  *(inited + 33) = v35;
  v36 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v34)
  {
    v36 = sub_10009DEF4();
  }

  sub_10009DEF4();
  if (sub_10009DEF4() != v35)
  {
    v36 = sub_10009DEF4();
  }

  sub_10009D9E4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_10005B0FC(v31, v6, &qword_1000C26A0, &qword_1000A2968);
  v45 = &v6[*(v71 + 36)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = sub_10009DEC4();
  sub_10009D9E4();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_10005B0FC(v6, v9, &qword_1000C26A8, &qword_1000A2970);
  v55 = &v9[*(v73 + 36)];
  *v55 = v46;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  v56 = sub_10009DED4();
  sub_10009D9E4();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_10005B0FC(v9, v13, &qword_1000C26B0, &qword_1000A2978);
  v65 = &v13[*(v10 + 36)];
  *v65 = v56;
  *(v65 + 1) = v58;
  *(v65 + 2) = v60;
  *(v65 + 3) = v62;
  *(v65 + 4) = v64;
  v65[40] = 0;
  sub_100073FEC(&qword_1000C26D0, &qword_1000C26B8, &qword_1000A2980, sub_100073FBC);
  sub_10009DFF4();
  return sub_1000160CC(v13, &qword_1000C26B8, &qword_1000A2980);
}

uint64_t sub_1000727A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v51 = a2;
  v54 = a4;
  v5 = sub_10009D494();
  v47 = *(v5 - 8);
  v6 = *(v47 + 64);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10009D9A4();
  v50 = *(v53 - 8);
  v9 = *(v50 + 64);
  __chkstk_darwin(v53);
  v46 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003714(&qword_1000C26F0, &qword_1000A2998);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v46 - v17;
  __chkstk_darwin(v16);
  v48 = &v46 - v19;
  v20 = sub_100003714(&qword_1000C26F8, &qword_1000A29A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v46 - v25;
  *v26 = sub_10009DC74();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v27 = sub_100003714(&qword_1000C2700, &qword_1000A29A8);
  sub_100072C74(a1, &v26[*(v27 + 44)]);
  v28 = a1 + *(type metadata accessor for LargeSquareTileView() + 32);
  v29 = type metadata accessor for WidgetTileInfo();
  v30 = *(v29 + 28);
  v31 = (v28 + *(v29 + 24));
  v32 = *v31;
  v33 = v31[1];
  v35 = *(v28 + v30);
  v34 = *(v28 + v30 + 8);
  swift_bridgeObjectRetain_n();

  sub_10009D484();
  sub_10009D474();
  (*(v47 + 8))(v8, v5);

  sub_10009DC64();
  v36 = v46;
  sub_10009D9B4();
  sub_10009E2E4();
  sub_10009DAE4();
  (*(v50 + 32))(v18, v36, v53);
  v37 = &v18[*(v12 + 44)];
  v38 = v60;
  *(v37 + 4) = v59;
  *(v37 + 5) = v38;
  *(v37 + 6) = v61;
  v39 = v56;
  *v37 = v55;
  *(v37 + 1) = v39;
  v40 = v58;
  *(v37 + 2) = v57;
  *(v37 + 3) = v40;
  v41 = v48;
  sub_100074128(v18, v48);
  sub_10001E0A8(v26, v24, &qword_1000C26F8, &qword_1000A29A0);
  v42 = v52;
  sub_10001E0A8(v41, v52, &qword_1000C26F0, &qword_1000A2998);
  v43 = v54;
  sub_10001E0A8(v24, v54, &qword_1000C26F8, &qword_1000A29A0);
  v44 = sub_100003714(&qword_1000C2708, &unk_1000A29B0);
  sub_10001E0A8(v42, v43 + *(v44 + 48), &qword_1000C26F0, &qword_1000A2998);
  sub_1000160CC(v41, &qword_1000C26F0, &qword_1000A2998);
  sub_1000160CC(v26, &qword_1000C26F8, &qword_1000A29A0);
  sub_1000160CC(v42, &qword_1000C26F0, &qword_1000A2998);
  return sub_1000160CC(v24, &qword_1000C26F8, &qword_1000A29A0);
}

uint64_t sub_100072C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_10009DD14();
  v93 = *(v3 - 8);
  v94 = v3;
  v4 = *(v93 + 64);
  v5 = __chkstk_darwin(v3);
  v102 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v101 = &v86 - v7;
  v99 = sub_100003714(&qword_1000C21E0, &unk_1000A23B0);
  v8 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v95 = &v86 - v9;
  v96 = sub_100003714(&qword_1000C21E8, &unk_1000A29C0);
  v10 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v12 = (&v86 - v11);
  v13 = sub_10009DC44();
  v14 = *(v13 - 8);
  v91 = v13;
  v92 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for TileIconView();
  v18 = *(*(v97 - 8) + 64);
  v19 = __chkstk_darwin(v97);
  v21 = (&v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = &v86 - v22;
  v24 = sub_100003714(&qword_1000C21F0, &qword_1000A23C0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v98 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v86 - v28;
  v30 = type metadata accessor for LargeSquareTileView();
  v31 = a1;
  v32 = a1 + *(v30 + 32);
  v33 = sub_10008CFDC();
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    *v12 = sub_10009E2D4();
    v12[1] = v37;
    v38 = sub_100003714(&qword_1000C2248, &unk_1000A2520);
    sub_10007351C(v35, v36, (v12 + *(v38 + 44)));

    sub_10009E2F4();
    sub_10009DA74();
    v39 = v95;
    v40 = (v12 + *(v96 + 36));
    v41 = v104;
    *v40 = v103;
    v40[1] = v41;
    v40[2] = v105;
    sub_10001E0A8(v12, v39, &qword_1000C21E8, &unk_1000A29C0);
    swift_storeEnumTagMultiPayload();
    sub_10006DFC8();
    sub_10006E080();
    sub_10009DD94();
    sub_1000160CC(v12, &qword_1000C21E8, &unk_1000A29C0);
    goto LABEL_16;
  }

  v87 = v21;
  v42 = v32;
  v89 = v29;
  v90 = v17;
  v43 = v91;
  v88 = v23;
  v44 = v31 + *(v30 + 24);
  v45 = *v44;
  v46 = *(v44 + 8);
  if (v46 == 1)
  {
    v47 = v91;
    v48 = v92;
    if (v45)
    {
LABEL_5:
      v49 = 9;
      goto LABEL_8;
    }
  }

  else
  {
    v50 = *v44;

    sub_10009E834();
    v51 = sub_10009DEA4();
    sub_10009D8C4();

    v52 = v90;
    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v45, 0);
    v48 = v92;
    v53 = v52;
    v47 = v43;
    (*(v92 + 8))(v53, v43);
    if (v103)
    {
      goto LABEL_5;
    }
  }

  v49 = 8;
LABEL_8:
  v54 = type metadata accessor for WidgetTileInfo();
  v55 = (v42 + v54[v49]);
  v56 = v55[1];
  v92 = *v55;

  v57 = v42 + v54[10];
  sub_10009D594();
  v58 = v42 + v54[11];
  sub_10009D594();
  v59 = v90;
  if (!v46)
  {

    sub_10009E834();
    v61 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v45, 0);
    (*(v48 + 8))(v59, v47);
    if (v103 != 1)
    {
      goto LABEL_10;
    }

LABEL_12:
    v60 = *(v42 + v54[12]);

    goto LABEL_13;
  }

  if (v45)
  {
    goto LABEL_12;
  }

LABEL_10:
  v60 = sub_10009E174();
LABEL_13:
  v62 = v95;
  v63 = v102;
  v95 = sub_10009E304();
  v65 = v64;
  KeyPath = swift_getKeyPath();
  v67 = v87;
  *v87 = KeyPath;
  *(v67 + 8) = 0;
  v68 = v97;
  v69 = *(v97 + 20);
  *(v67 + v69) = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  v70 = v67 + v68[6];
  *v70 = swift_getKeyPath();
  *(v70 + 8) = 0;
  v71 = v68[7];
  *(v67 + v71) = swift_getKeyPath();
  sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  swift_storeEnumTagMultiPayload();
  v72 = (v67 + v68[8]);
  v73 = v93;
  *v72 = v92;
  v72[1] = v56;
  v74 = *(v73 + 16);
  v75 = v94;
  v74(v67 + v68[9], v101, v94);
  v74(v67 + v68[10], v63, v75);
  sub_10009E174();
  v76 = sub_10009E134();

  if (v76)
  {
    v77 = sub_10009E1B4();

    v60 = v77;
  }

  v78 = v94;
  v79 = *(v93 + 8);
  v79(v102, v94);
  v79(v101, v78);
  *(v67 + v68[11]) = v60;
  *(v67 + v68[12]) = 0x4046000000000000;
  *(v67 + v68[13]) = 0x4041000000000000;
  v80 = (v67 + v68[14]);
  *v80 = v95;
  v80[1] = v65;
  v81 = v88;
  sub_10006DF64(v67, v88);
  sub_1000741A0(v81, v62, type metadata accessor for TileIconView);
  swift_storeEnumTagMultiPayload();
  sub_10006DFC8();
  sub_10006E080();
  v29 = v89;
  sub_10009DD94();
  sub_100074208(v81, type metadata accessor for TileIconView);
LABEL_16:
  v82 = v98;
  sub_10001E0A8(v29, v98, &qword_1000C21F0, &qword_1000A23C0);
  v83 = v100;
  sub_10001E0A8(v82, v100, &qword_1000C21F0, &qword_1000A23C0);
  v84 = v83 + *(sub_100003714(&qword_1000C2710, &unk_1000A2A10) + 48);
  *v84 = 0;
  *(v84 + 8) = 1;
  sub_1000160CC(v29, &qword_1000C21F0, &qword_1000A23C0);
  return sub_1000160CC(v82, &qword_1000C21F0, &qword_1000A23C0);
}

uint64_t sub_10007351C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v40 = sub_100003714(&qword_1000C2250, &qword_1000A2A20);
  v5 = *(v40 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v40);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v37 - v9;
  v10 = sub_10009E3A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10009E164();
  v15 = *(type metadata accessor for LargeSquareTileView() + 32);
  sub_100073984(v14);
  sub_1000720D8();
  v38 = sub_10001D53C(v14);
  (*(v11 + 8))(v14, v10);
  *&v53[0] = a1;
  *(&v53[0] + 1) = a2;
  sub_1000037A4();

  v16 = sub_10009DFE4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  KeyPath = swift_getKeyPath();
  v24 = v20 & 1;
  LOBYTE(v46) = v20 & 1;
  v25 = swift_getKeyPath();
  LOBYTE(v53[0]) = 0;
  sub_10009DF34();
  v26 = sub_10009DF84();
  v27 = swift_getKeyPath();
  *&v46 = v16;
  *(&v46 + 1) = v18;
  LOBYTE(v47) = v24;
  *(&v47 + 1) = v22;
  LOWORD(v48) = 256;
  *(&v48 + 1) = KeyPath;
  LOBYTE(v49) = 1;
  *(&v49 + 1) = v25;
  *&v50 = 1;
  BYTE8(v50) = 0;
  *&v51 = v27;
  *(&v51 + 1) = v26;
  v52 = v38;
  v44 = a1;
  v45 = a2;

  sub_100003714(&qword_1000C2258, &unk_1000A2590);
  sub_10006E1BC();
  sub_10009E024();
  v28 = v39;
  sub_10009E014();
  v53[3] = v49;
  v53[4] = v50;
  v53[5] = v51;
  v54 = v52;
  v53[0] = v46;
  v53[1] = v47;
  v53[2] = v48;
  sub_1000160CC(v53, &qword_1000C2258, &unk_1000A2590);
  v29 = v5[2];
  v30 = v42;
  v31 = v40;
  v29(v42, v28, v40);
  v32 = v43;
  *v43 = v41;
  v32[1] = 0x3FF0000000000000;
  v33 = v32;
  v34 = sub_100003714(&qword_1000C22D8, qword_1000A2AF0);
  v29(v33 + *(v34 + 48), v30, v31);

  v35 = v5[1];
  v35(v28, v31);
  v35(v30, v31);
}

uint64_t sub_100073984@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10009DC44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10001E0A8(v2, &v17 - v11, &qword_1000C16D0, &qword_1000A15B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10009E3A4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10009E834();
    v16 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t type metadata accessor for LargeSquareTileView()
{
  result = qword_1000C2650;
  if (!qword_1000C2650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100073BF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AccessoryAndSceneEntity();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for WidgetTileInfo();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[10] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_100073D70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for AccessoryAndSceneEntity();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[7];
    }

    else
    {
      result = type metadata accessor for WidgetTileInfo();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[8];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100073ED0()
{
  sub_10006FEFC();
  if (v0 <= 0x3F)
  {
    sub_10006AAC4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AccessoryAndSceneEntity();
      if (v2 <= 0x3F)
      {
        type metadata accessor for WidgetTileInfo();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100073FEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100074070()
{
  result = qword_1000C26E0;
  if (!qword_1000C26E0)
  {
    sub_10000375C(&qword_1000C26A8, &qword_1000A2970);
    sub_10001CDC8(&qword_1000C26E8, &qword_1000C26A0, &qword_1000A2968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C26E0);
  }

  return result;
}

uint64_t sub_100074128(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C26F0, &qword_1000A2998);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000741A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100074208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100074268@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009DB34();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000742C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_10009DC14();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000742F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10009DC24();
}

uint64_t sub_100074324@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009DB34();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10007437C@<X0>(uint64_t a1@<X8>)
{
  result = sub_10009DC14();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000743B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10009DC24();
}

uint64_t sub_1000743E8()
{
  sub_10000375C(&qword_1000C26B8, &qword_1000A2980);
  sub_100073FEC(&qword_1000C26D0, &qword_1000C26B8, &qword_1000A2980, sub_100073FBC);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100074484(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_10009CF14();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100074550, 0, 0);
}

uint64_t sub_100074550()
{
  v1 = v0;
  v2 = *(v0 + 72);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = [*(v0 + 80) homes];
      sub_100037D18();
      v4 = sub_10009E6A4();

      *(v0 + 56) = v4;
      sub_10009E814();
      sub_100003714(&qword_1000C2718, &qword_1000A2B30);
      sub_100075734();
      v5 = sub_10009E7A4();
    }

    else
    {
      v8 = [*(v0 + 80) homes];
      sub_100037D18();
      v9 = sub_10009E6A4();

      if (v9 >> 62)
      {
        goto LABEL_28;
      }

      for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
      {
        v11 = 0;
        v43 = v9 & 0xFFFFFFFFFFFFFF8;
        v44 = v9 & 0xC000000000000001;
        v41 = v9;
        v42 = v9 + 32;
        v47 = v2 + 56;
        v39 = v1[12];
        v40 = i;
        v48 = (v39 + 8);
        while (1)
        {
          if (v44)
          {
            v12 = sub_10009EAE4();
          }

          else
          {
            if (v11 >= *(v43 + 16))
            {
              goto LABEL_27;
            }

            v12 = *(v42 + 8 * v11);
          }

          v13 = v12;
          if (__OFADD__(v11++, 1))
          {
            break;
          }

          v15 = v1[14];
          v16 = [v12 uniqueIdentifier];
          sub_10009CF04();

          v17 = v1[14];
          v18 = v1[11];
          if (*(v2 + 16))
          {
            v45 = v13;
            v46 = v11;
            v19 = *(v2 + 40);
            sub_100076A94(&qword_1000C0B68);
            v20 = sub_10009E4F4();
            v21 = -1 << *(v2 + 32);
            v22 = v20 & ~v21;
            if ((*(v47 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
            {
              v23 = ~v21;
              v24 = *(v39 + 72);
              v25 = *(v39 + 16);
              while (1)
              {
                v27 = v1[13];
                v26 = v1[14];
                v28 = v1;
                v29 = v1[11];
                v30 = v2;
                v25(v27, *(v2 + 48) + v22 * v24, v29);
                sub_100076A94(&qword_1000C0BE8);
                LOBYTE(v26) = sub_10009E534();
                v31 = *v48;
                (*v48)(v27, v29);
                if (v26)
                {
                  break;
                }

                v22 = (v22 + 1) & v23;
                v2 = v30;
                v1 = v28;
                if (((*(v47 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
                {
                  goto LABEL_21;
                }
              }

              v31(v28[14], v28[11]);
              sub_10009EB34();
              v34 = _swiftEmptyArrayStorage[2];
              sub_10009EB64();
              sub_10009EB74();
              sub_10009EB44();
              v2 = v30;
              v1 = v28;
            }

            else
            {
LABEL_21:
              v32 = v1[14];
              v33 = v1[11];

              (*v48)(v32, v33);
            }

            i = v40;
            v9 = v41;
            v11 = v46;
          }

          else
          {

            (*v48)(v17, v18);
          }

          if (v11 == i)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        ;
      }

LABEL_29:
      v35 = v1[10];

      v1[8] = _swiftEmptyArrayStorage;
      sub_10009E814();
      sub_100003714(&qword_1000C2718, &qword_1000A2B30);
      sub_100075734();
      v5 = sub_10009E7A4();
    }

    v37 = v1[13];
    v36 = v1[14];

    v38 = v1[1];

    return v38(v5);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_100074A88;

    return sub_100075D38();
  }
}

uint64_t sub_100074A88(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_100074B88, 0, 0);
}

uint64_t sub_100074B88()
{
  v1 = v0[16];
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    sub_10009E684();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v7 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10009E6C4();
    }

    sub_10009E6E4();
  }

  sub_100075FC8((v0 + 6));
  v4 = v0[13];
  v3 = v0[14];

  v5 = v0[1];

  return v5(_swiftEmptyArrayStorage);
}

uint64_t sub_100074C84(void *a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_100003714(&qword_1000C2798, &qword_1000A2C88);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v28 = &v24 - v5;
  v6 = sub_100003714(&qword_1000C27A0, &qword_1000A2C90);
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_100003714(&qword_1000C27A8, &qword_1000A2C98);
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = sub_100003714(&qword_1000C27B0, &qword_1000A2CA0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  v19 = a1[4];
  sub_100024330(a1, a1[3]);
  sub_1000768BC();
  v20 = v31;
  sub_10009EE24();
  if (!v20)
  {
    v33 = 0;
    sub_1000769B8();
    sub_10009EC84();
    (*(v25 + 8))(v13, v10);
    return (*(v15 + 8))(v18, v14);
  }

  if (v20 == 1)
  {
    v34 = 1;
    sub_100076964();
    sub_10009EC84();
    (*(v26 + 8))(v9, v27);
    return (*(v15 + 8))(v18, v14);
  }

  v35 = 2;
  sub_100076910();
  v22 = v28;
  sub_10009EC84();
  v32 = v20;
  sub_100003714(&qword_1000C2770, &qword_1000A2C80);
  sub_100076A0C(&qword_1000C27B8, &qword_1000C27C0);
  v23 = v30;
  sub_10009ECD4();
  (*(v29 + 8))(v22, v23);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1000750B0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1000750EC(uint64_t a1)
{
  v2 = sub_100076964();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100075128(uint64_t a1)
{
  v2 = sub_100076964();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100075164()
{
  v1 = 7105633;
  if (*v0 != 1)
  {
    v1 = 2037149295;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6572727563;
  }
}

uint64_t sub_1000751B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007618C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000751E4(uint64_t a1)
{
  v2 = sub_1000768BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100075220(uint64_t a1)
{
  v2 = sub_1000768BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007525C(uint64_t a1)
{
  v2 = sub_1000769B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100075298(uint64_t a1)
{
  v2 = sub_1000769B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int HomeWidget.HomeWidgetError.hashValue.getter()
{
  sub_10009EDD4();
  sub_10009EDE4(0);
  return sub_10009EE04();
}

Swift::Int sub_100075340()
{
  sub_10009EDD4();
  sub_10009EDE4(0);
  return sub_10009EE04();
}

uint64_t sub_10007538C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10009ED34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10007540C(uint64_t a1)
{
  v2 = sub_100076910();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100075448(uint64_t a1)
{
  v2 = sub_100076910();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100075484(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_100075798(v2, v3);
}

Swift::Int sub_1000754C4()
{
  v1 = *v0;
  sub_10009EDD4();
  if (v1)
  {
    if (v1 != 1)
    {
      sub_10009EDE4(2uLL);
      sub_100075B20(v4, v1);
      return sub_10009EE04();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_10009EDE4(v2);
  return sub_10009EE04();
}

void sub_100075538(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 1;
LABEL_5:
    sub_10009EDE4(v4);
    return;
  }

  sub_10009EDE4(2uLL);

  sub_100075B20(a1, v3);
}

Swift::Int sub_1000755B8()
{
  v1 = *v0;
  sub_10009EDD4();
  if (v1)
  {
    if (v1 != 1)
    {
      sub_10009EDE4(2uLL);
      sub_100075B20(v4, v1);
      return sub_10009EE04();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_10009EDE4(v2);
  return sub_10009EE04();
}

uint64_t sub_100075628@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000762A4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100075670()
{
  if (!*v0)
  {
    return 0x746E6572727563;
  }

  if (*v0 == 1)
  {
    return 7105633;
  }

  sub_10009CF14();
  sub_100076A94(&qword_1000C0B68);
  v2._countAndFlagsBits = sub_10009E764();
  sub_10009E634(v2);

  return 0x3A796C6E6FLL;
}

unint64_t sub_100075734()
{
  result = qword_1000C2720;
  if (!qword_1000C2720)
  {
    sub_10000375C(&qword_1000C2718, &qword_1000A2B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2720);
  }

  return result;
}

uint64_t sub_100075798(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009CF14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v46 = &v35 - v11;
  result = __chkstk_darwin(v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_100076A94(&qword_1000C0B68);
      v28 = sub_10009E4F4();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_100076A94(&qword_1000C0BE8);
        v33 = sub_10009E534();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_100075B20(__int128 *a1, uint64_t a2)
{
  v4 = sub_10009CF14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v25 = a1[2];
  v26 = v9;
  v27 = *(a1 + 8);
  v11 = *a1;
  v10 = a1[1];
  v22[0] = a1;
  v23 = v11;
  v24 = v10;
  v12 = sub_10009EE04();
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v12;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v15; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_100076A94(&qword_1000C0B68);
    v21 = sub_10009E4F4();
    (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      sub_10009EDE4(v17);
      return;
    }

    v15 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v15)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100075D54()
{
  type metadata accessor for HomeWidget();
  v0[6] = static HomeWidget.shared.getter();
  v1 = sub_10009D224();
  v0[7] = v2;
  v0[8] = v3;
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v4;
  v0[5] = v3;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_100075E28;

  return HomeWidget.recommendedHome<A>(configuration:)((v0 + 2), &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_100075E28(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {
    v8 = v4[7];
    v7 = v4[8];
    v9 = v4[6];

    return _swift_task_switch(sub_100075FB0, 0, 0);
  }

  else
  {
    v10 = v4[7];
    v11 = v4[8];
    v12 = v4[6];

    v13 = *(v6 + 8);

    return v13(a1);
  }
}

uint64_t sub_100075FC8(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C2728, &qword_1000A2B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100076030(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100076054(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000760A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_100076104(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_100076138()
{
  result = qword_1000C2730;
  if (!qword_1000C2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2730);
  }

  return result;
}

uint64_t sub_10007618C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (sub_10009ED34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000 || (sub_10009ED34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2037149295 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_10009ED34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000762A4(uint64_t *a1)
{
  v2 = sub_100003714(&qword_1000C2738, &qword_1000A2C58);
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v44 = &v38 - v5;
  v6 = sub_100003714(&qword_1000C2740, &qword_1000A2C60);
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v10 = sub_100003714(&qword_1000C2748, &qword_1000A2C68);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = sub_100003714(&qword_1000C2750, &qword_1000A2C70);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v46 = a1;
  v21 = sub_100024330(a1, v20);
  sub_1000768BC();
  v22 = v45;
  sub_10009EE14();
  if (!v22)
  {
    v38 = v10;
    v23 = v43;
    v24 = v44;
    v45 = v15;
    v21 = v18;
    v25 = sub_10009EC74();
    v26 = *(v25 + 16);
    if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 3) : (v28 = 1), v28))
    {
      v29 = sub_10009EB14();
      swift_allocError();
      v31 = v30;
      v32 = *(sub_100003714(&qword_1000C2760, &qword_1000A2C78) + 48);
      *v31 = &type metadata for HomeScope;
      sub_10009EC04();
      sub_10009EB04();
      (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
      swift_willThrow();
      (*(v45 + 8))(v18, v14);
      swift_unknownObjectRelease();
    }

    else if (*(v25 + 32))
    {
      v34 = v45;
      if (v27 == 1)
      {
        v49 = 1;
        sub_100076964();
        sub_10009EBF4();
        (*(v39 + 8))(v9, v40);
        (*(v34 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v21 = 1;
      }

      else
      {
        v50 = 2;
        sub_100076910();
        sub_10009EBF4();
        sub_100003714(&qword_1000C2770, &qword_1000A2C80);
        sub_100076A0C(&qword_1000C2778, &qword_1000C2780);
        v37 = v41;
        sub_10009EC54();
        (*(v42 + 8))(v24, v37);
        (*(v34 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v21 = v47;
      }
    }

    else
    {
      v48 = 0;
      sub_1000769B8();
      v35 = v13;
      sub_10009EBF4();
      v36 = v45;
      (*(v23 + 8))(v35, v38);
      (*(v36 + 8))(v18, v14);
      swift_unknownObjectRelease();
      v21 = 0;
    }
  }

  sub_100015F44(v46);
  return v21;
}

unint64_t sub_1000768BC()
{
  result = qword_1000C2758;
  if (!qword_1000C2758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2758);
  }

  return result;
}

unint64_t sub_100076910()
{
  result = qword_1000C2768;
  if (!qword_1000C2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2768);
  }

  return result;
}

unint64_t sub_100076964()
{
  result = qword_1000C2788;
  if (!qword_1000C2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2788);
  }

  return result;
}

unint64_t sub_1000769B8()
{
  result = qword_1000C2790;
  if (!qword_1000C2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2790);
  }

  return result;
}

uint64_t sub_100076A0C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(&qword_1000C2770, &qword_1000A2C80);
    sub_100076A94(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100076A94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10009CF14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TileStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TileStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HomeScope.OnlyCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HomeScope.OnlyCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100076D2C()
{
  result = qword_1000C27C8;
  if (!qword_1000C27C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C27C8);
  }

  return result;
}

unint64_t sub_100076D84()
{
  result = qword_1000C27D0;
  if (!qword_1000C27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C27D0);
  }

  return result;
}

unint64_t sub_100076DDC()
{
  result = qword_1000C27D8;
  if (!qword_1000C27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C27D8);
  }

  return result;
}

unint64_t sub_100076E34()
{
  result = qword_1000C27E0;
  if (!qword_1000C27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C27E0);
  }

  return result;
}

unint64_t sub_100076E8C()
{
  result = qword_1000C27E8;
  if (!qword_1000C27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C27E8);
  }

  return result;
}

unint64_t sub_100076EE4()
{
  result = qword_1000C27F0;
  if (!qword_1000C27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C27F0);
  }

  return result;
}

unint64_t sub_100076F3C()
{
  result = qword_1000C27F8;
  if (!qword_1000C27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C27F8);
  }

  return result;
}

unint64_t sub_100076F94()
{
  result = qword_1000C2800;
  if (!qword_1000C2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2800);
  }

  return result;
}

unint64_t sub_100076FEC()
{
  result = qword_1000C2808;
  if (!qword_1000C2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2808);
  }

  return result;
}

unint64_t sub_100077044()
{
  result = qword_1000C2810;
  if (!qword_1000C2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2810);
  }

  return result;
}

unint64_t sub_1000770A4()
{
  result = qword_1000C2818;
  if (!qword_1000C2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2818);
  }

  return result;
}

unint64_t sub_1000770FC()
{
  result = qword_1000C2820;
  if (!qword_1000C2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2820);
  }

  return result;
}

uint64_t sub_1000771BC()
{
  v0 = sub_10009CC04();
  sub_10001F4BC(v0, qword_1000C82C0);
  v1 = sub_100015B68(v0, qword_1000C82C0);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100077244()
{
  v0 = sub_10009CD34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009CF54();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10009E5A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10009CD54();
  sub_10001F4BC(v9, qword_1000C82D8);
  sub_100015B68(v9, qword_1000C82D8);
  sub_10009E554();
  sub_10009CF44();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10009CD64();
}

uint64_t sub_100077434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[89] = a3;
  v3[88] = a2;
  v3[87] = a1;
  v4 = type metadata accessor for AccessoryAndSceneEntity();
  v3[90] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[91] = swift_task_alloc();
  v6 = type metadata accessor for WidgetTileInfo();
  v3[92] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v8 = sub_10009D924();
  v3[95] = v8;
  v9 = *(v8 - 8);
  v3[96] = v9;
  v10 = *(v9 + 64) + 15;
  v3[97] = swift_task_alloc();
  v11 = sub_10009D8F4();
  v3[98] = v11;
  v12 = *(v11 - 8);
  v3[99] = v12;
  v13 = *(v12 + 64) + 15;
  v3[100] = swift_task_alloc();

  return _swift_task_switch(sub_1000775C4, 0, 0);
}

uint64_t sub_1000775C4()
{
  v40 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = v0[100];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  v5 = v0[94];
  v6 = v0[92];
  v7 = v0[91];
  v8 = v0[90];
  v9 = v0[88];
  v10 = sub_100015B68(v4, qword_1000C8278);
  v0[101] = v10;
  (*(v3 + 16))(v2, v10, v4);
  v11 = sub_10009D444();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_10009D434();
  sub_10009D8E4();
  sub_10009C954();
  sub_10007AF10(v7 + *(v8 + 24), v5, type metadata accessor for WidgetTileInfo);
  sub_10003092C(v7, type metadata accessor for AccessoryAndSceneEntity);
  v14 = *(v5 + *(v6 + 60) + 8);
  if (v14 < 3)
  {
    v15 = swift_task_alloc();
    v0[103] = v15;
    *v15 = v0;
    v16 = sub_100077E10;
LABEL_8:
    v15[1] = v16;
    v17 = v0[94];

    return sub_100061870();
  }

  if (v14 == 3)
  {
    v15 = swift_task_alloc();
    v0[102] = v15;
    *v15 = v0;
    v16 = sub_100077A60;
    goto LABEL_8;
  }

  v19 = v0[101];
  v20 = v0[89];
  v21 = v0[88];

  v22 = sub_10009D904();
  v23 = sub_10009E844();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = v0[93];
    v26 = v0[92];
    v27 = v0[91];
    v28 = v0[90];
    v29 = v0[88];
    v30 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v30 = 136315394;
    *(v30 + 4) = sub_10002AD68(0x286D726F66726570, 0xE900000000000029, &v39);
    *(v30 + 12) = 2080;
    sub_10009C954();
    sub_10007AF10(v27 + *(v28 + 24), v25, type metadata accessor for WidgetTileInfo);
    sub_10003092C(v27, type metadata accessor for AccessoryAndSceneEntity);
    v31 = (v25 + *(v26 + 24));
    v32 = *v31;
    v33 = v31[1];

    sub_10003092C(v25, type metadata accessor for WidgetTileInfo);
    v34 = sub_10002AD68(v32, v33, &v39);

    *(v30 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s %s sent toggle() to device", v30, 0x16u);
    swift_arrayDestroy();
  }

  v35 = v0[93];
  v36 = v0[87];
  v38 = *(v0 + 44);
  sub_10007AF10(v0[94], v35, type metadata accessor for WidgetTileInfo);
  v37 = swift_task_alloc();
  v0[104] = v37;
  *(v37 + 16) = v38;
  *(v37 + 32) = v35;
  swift_asyncLet_begin();
  sub_10009C934();

  return _swift_asyncLet_finish(v0 + 2);
}

uint64_t sub_100077A60()
{
  v1 = *(*v0 + 816);
  v3 = *v0;

  return _swift_task_switch(sub_100077B5C, 0, 0);
}

uint64_t sub_100077B5C()
{
  v22 = v0;
  v1 = v0[101];
  v2 = v0[89];
  v3 = v0[88];

  v4 = sub_10009D904();
  v5 = sub_10009E844();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[93];
    v7 = v0[92];
    v8 = v0[91];
    v9 = v0[90];
    v10 = v0[88];
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10002AD68(0x286D726F66726570, 0xE900000000000029, &v21);
    *(v11 + 12) = 2080;
    sub_10009C954();
    sub_10007AF10(v8 + *(v9 + 24), v6, type metadata accessor for WidgetTileInfo);
    sub_10003092C(v8, type metadata accessor for AccessoryAndSceneEntity);
    v12 = (v6 + *(v7 + 24));
    v13 = *v12;
    v14 = v12[1];

    sub_10003092C(v6, type metadata accessor for WidgetTileInfo);
    v15 = sub_10002AD68(v13, v14, &v21);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s sent toggle() to device", v11, 0x16u);
    swift_arrayDestroy();
  }

  v16 = v0[93];
  v17 = v0[87];
  v20 = *(v0 + 44);
  sub_10007AF10(v0[94], v16, type metadata accessor for WidgetTileInfo);
  v18 = swift_task_alloc();
  v0[104] = v18;
  *(v18 + 16) = v20;
  *(v18 + 32) = v16;
  swift_asyncLet_begin();
  sub_10009C934();

  return _swift_asyncLet_finish(v0 + 2);
}

uint64_t sub_100077E10()
{
  v1 = *(*v0 + 824);
  v3 = *v0;

  return _swift_task_switch(sub_10007AF78, 0, 0);
}

uint64_t sub_100077F28()
{
  v1 = v0[104];
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[94];
  v7 = v0[93];
  v8 = v0[91];

  sub_10003092C(v6, type metadata accessor for WidgetTileInfo);
  sub_10003092C(v7, type metadata accessor for WidgetTileInfo);
  sub_10009D8D4();
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100078030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1000780CC;

  return sub_10007958C(a4, a3);
}

uint64_t sub_1000780CC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000781C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003714(&qword_1000C2868, &unk_1000A31F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = a1 + *(type metadata accessor for WidgetTileInfo() + 60);
  if (*(v11 + 8) <= 3u && (v12 = [*v11 home]) != 0)
  {
    v13 = v12;
    v14 = sub_10009CEC4();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    sub_100007330(0, &qword_1000C1D48, NSUserDefaults_ptr);
    sub_10009E864();
    sub_100007330(0, &qword_1000C1260, HMHome_ptr);
    sub_10007AEA8();
    sub_10009D064();

    sub_1000160CC(v8, &qword_1000C2868, &unk_1000A31F0);
    sub_1000160CC(v10, &qword_1000C2868, &unk_1000A31F0);
    v15 = sub_10009D074();
    return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }

  else
  {
    v17 = sub_10009D074();
    v18 = *(*(v17 - 8) + 56);

    return v18(a2, 1, 1, v17);
  }
}

uint64_t sub_100078490(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001EAAC;

  return sub_100077434(a1, v5, v4);
}

uint64_t sub_10007853C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100078E1C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100078564(uint64_t a1)
{
  v2 = sub_1000598E8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000785A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000785E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100078634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v66 = a3;
  v64 = a1;
  v3 = type metadata accessor for AccessoryAndSceneEntity();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 8);
  v5 = __chkstk_darwin(v3);
  v63 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = v50 - v7;
  v8 = sub_100003714(&qword_1000C10A0, "&H");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v61 = v50 - v10;
  v11 = sub_10009CB44();
  v12 = *(v11 - 8);
  v67 = v11;
  v68 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v58 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v57 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v56 = v50 - v19;
  v20 = sub_100003714(&qword_1000C1258, &unk_1000A08D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v55 = v50 - v22;
  v23 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v54 = v50 - v25;
  v26 = sub_10009CD34();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10009CF54();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v33 = sub_10009E5A4();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v35 = sub_10009CD54();
  v51 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v53 = sub_100003714(&qword_1000C12A8, "BJ");
  sub_10009E554();
  sub_10009CF44();
  (*(v27 + 104))(v30, enum case for LocalizedStringResource.BundleDescription.main(_:), v26);
  sub_10009CD64();
  v38 = *(v36 + 56);
  v50[1] = v36 + 56;
  v52 = v38;
  v39 = v54;
  v38(v54, 1, 1, v35);
  (*(v59 + 7))(v55, 1, 1, v60);
  v40 = sub_10009C914();
  v41 = *(*(v40 - 8) + 56);
  v42 = v56;
  v41(v56, 1, 1, v40);
  v41(v57, 1, 1, v40);
  LODWORD(v60) = enum case for InputConnectionBehavior.default(_:);
  v43 = *(v68 + 104);
  v68 += 104;
  v59 = v43;
  v44 = v58;
  v43(v58);
  sub_10007AE4C(&qword_1000C1160, type metadata accessor for AccessoryAndSceneEntity);
  v45 = sub_10009C9A4();
  sub_100003714(&qword_1000C10B8, &qword_1000A03B0);

  sub_10009CD14();
  v52(v39, 1, 1, v51);
  v46 = sub_10009E544();
  v69 = 0;
  v70 = 0;
  (*(*(v46 - 8) + 56))(v61, 1, 1, v46);
  v41(v42, 1, 1, v40);
  (v59)(v44, v60, v67);
  sub_10009C9C4();
  v47 = v64;
  v48 = v62;
  sub_10007AF10(v64, v62, type metadata accessor for AccessoryAndSceneEntity);
  sub_10007AF10(v48, v63, type metadata accessor for AccessoryAndSceneEntity);

  sub_10009C964();
  sub_10003092C(v48, type metadata accessor for AccessoryAndSceneEntity);
  v69 = v65;
  v70 = v66;
  sub_10009C964();
  sub_10003092C(v47, type metadata accessor for AccessoryAndSceneEntity);

  return v45;
}

uint64_t sub_100078E1C()
{
  v0 = sub_100003714(&qword_1000C10A0, "&H");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v49 = &v39 - v2;
  v48 = sub_10009CB44();
  v53 = *(v48 - 8);
  v3 = *(v53 + 64);
  __chkstk_darwin(v48);
  v47 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v39 - v9;
  v10 = sub_100003714(&qword_1000C1258, &unk_1000A08D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v51 = &v39 - v12;
  v13 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v50 = &v39 - v15;
  v16 = sub_10009CD34();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10009CF54();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = sub_10009E5A4();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v25 = sub_10009CD54();
  v43 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v45 = sub_100003714(&qword_1000C12A8, "BJ");
  sub_10009E554();
  sub_10009CF44();
  (*(v17 + 104))(v20, enum case for LocalizedStringResource.BundleDescription.main(_:), v16);
  sub_10009CD64();
  v28 = *(v26 + 56);
  v42 = v26 + 56;
  v44 = v28;
  v28(v50, 1, 1, v25);
  v29 = type metadata accessor for AccessoryAndSceneEntity();
  (*(*(v29 - 8) + 56))(v51, 1, 1, v29);
  v30 = sub_10009C914();
  v31 = *(*(v30 - 8) + 56);
  v31(v52, 1, 1, v30);
  v31(v46, 1, 1, v30);
  v41 = enum case for InputConnectionBehavior.default(_:);
  v32 = *(v53 + 104);
  v53 += 104;
  v40 = v32;
  v34 = v47;
  v33 = v48;
  v32(v47);
  sub_10007AE4C(&qword_1000C1160, type metadata accessor for AccessoryAndSceneEntity);
  v35 = v50;
  v36 = sub_10009C9A4();
  v51 = sub_100003714(&qword_1000C10B8, &qword_1000A03B0);
  sub_10009CD14();
  v44(v35, 1, 1, v43);
  v37 = sub_10009E544();
  v54 = 0;
  v55 = 0;
  (*(*(v37 - 8) + 56))(v49, 1, 1, v37);
  v31(v52, 1, 1, v30);
  v40(v34, v41, v33);
  sub_10009C9C4();
  return v36;
}

uint64_t sub_1000794D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001EAAC;

  return sub_100078030(a1, v4, v5, v6);
}

uint64_t sub_10007958C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_10009D784();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_10009D7A4();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = sub_10009D074();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v12 = sub_10009D084();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v15 = sub_10009D0B4();
  v2[20] = v15;
  v16 = *(v15 - 8);
  v2[21] = v16;
  v17 = *(v16 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v18 = *(*(sub_100003714(&qword_1000C2828, &qword_1000A31C0) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v19 = *(*(sub_100003714(&qword_1000C2830, &qword_1000A31C8) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v20 = *(*(sub_100003714(&qword_1000C2838, &unk_1000A31D0) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v21 = sub_10009D094();
  v2[32] = v21;
  v22 = *(v21 - 8);
  v2[33] = v22;
  v23 = *(v22 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v24 = sub_10009D604();
  v2[36] = v24;
  v25 = *(v24 - 8);
  v2[37] = v25;
  v26 = *(v25 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v27 = *(*(sub_100003714(&qword_1000C0CD0, &qword_10009FA30) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v28 = sub_10009D3F4();
  v2[41] = v28;
  v29 = *(v28 - 8);
  v2[42] = v29;
  v30 = *(v29 + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v31 = sub_10009D6C4();
  v2[45] = v31;
  v32 = *(v31 - 8);
  v2[46] = v32;
  v33 = *(v32 + 64) + 15;
  v2[47] = swift_task_alloc();
  v34 = type metadata accessor for WidgetPredictionAnalyticsInfo();
  v2[48] = v34;
  v35 = *(v34 - 8);
  v2[49] = v35;
  v36 = *(v35 + 64) + 15;
  v2[50] = swift_task_alloc();
  v37 = *(*(sub_100003714(&qword_1000C2840, &unk_1000A31E0) - 8) + 64) + 15;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v38 = *(*(sub_100003714(&qword_1000C0C28, &qword_1000A3620) - 8) + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v39 = type metadata accessor for WidgetTileInfo();
  v2[57] = v39;
  v40 = *(*(v39 - 8) + 64) + 15;
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v41 = sub_10009D1C4();
  v2[60] = v41;
  v42 = *(v41 - 8);
  v2[61] = v42;
  v43 = *(v42 + 64) + 15;
  v2[62] = swift_task_alloc();

  return _swift_task_switch(sub_100079C24, 0, 0);
}

uint64_t sub_100079C24()
{
  v222 = v0;
  v1 = (v0[4] + *(v0[57] + 60));
  if (*(v1 + 8) == 2)
  {
    v10 = 0;
    v6 = 0;
    v8 = 0xE000000000000000;
    v9 = 1;
  }

  else
  {
    if (*(v1 + 8))
    {
      v9 = 0;
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      v3 = v0[61];
      v2 = v0[62];
      v4 = v0[60];
      v5 = *v1;
      sub_10009E904();
      v6 = sub_10009D1A4();
      v8 = v7;
      (*(v3 + 8))(v2, v4);
      v9 = 0;
    }

    v10 = 1;
  }

  v214 = v10;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v11 = v0[58];
  v12 = v0[59];
  v13 = v0[4];
  v14 = sub_10009D924();
  sub_100015B68(v14, qword_1000C8278);
  sub_10007AF10(v13, v12, type metadata accessor for WidgetTileInfo);
  sub_10007AF10(v13, v11, type metadata accessor for WidgetTileInfo);

  v15 = sub_10009D904();
  v16 = sub_10009E844();

  v17 = os_log_type_enabled(v15, v16);
  v218 = v8;
  v18 = v0[58];
  v19 = v0[59];
  v212 = v6;
  if (v17)
  {
    v20 = v0[57];
    v21 = swift_slowAlloc();
    v221[0] = swift_slowAlloc();
    *v21 = 136316418;
    *(v21 + 4) = sub_10002AD68(0xD00000000000001FLL, 0x80000001000A5320, v221);
    v22 = v9;
    *(v21 + 12) = 1024;
    v202 = v15;
    v23 = v214;
    *(v21 + 14) = v214;
    *(v21 + 18) = 2080;
    *(v21 + 20) = sub_10002AD68(v6, v218, v221);
    *(v21 + 28) = 1024;
    *(v21 + 30) = v9;
    *(v21 + 34) = 1024;
    LODWORD(v20) = *(v19 + *(v20 + 52));
    sub_10003092C(v19, type metadata accessor for WidgetTileInfo);
    *(v21 + 36) = v20;
    *(v21 + 40) = 1024;
    v24 = sub_100017C60() & 1;
    sub_10003092C(v18, type metadata accessor for WidgetTileInfo);
    *(v21 + 42) = v24;
    v9 = v22;
    _os_log_impl(&_mh_execute_header, v202, v16, "%s - isAccessory:%{BOOL}d accessoryCategoryType:%s isScene:%{BOOL}d isReachable:%{BOOL}d isActivated:%{BOOL}d", v21, 0x2Eu);
    swift_arrayDestroy();
  }

  else
  {
    sub_10003092C(v18, type metadata accessor for WidgetTileInfo);
    sub_10003092C(v19, type metadata accessor for WidgetTileInfo);

    v23 = v214;
  }

  v25 = v0[56];
  v26 = v0[48];
  v27 = v0[49];
  v28 = v0[5];
  LODWORD(v29) = *(v0[4] + *(v0[57] + 52));
  v30 = sub_100017C60();
  LOBYTE(v221[0]) = 1;
  v31 = 256;
  if (!v29)
  {
    v31 = 0;
  }

  v32 = 0x10000;
  if ((v30 & 1) == 0)
  {
    v32 = 0;
  }

  v33 = v31 | v9 | v32 | 0x2000000;
  type metadata accessor for WidgetAnalyticsEvent();
  v34 = swift_allocObject();
  *(v34 + 16) = 1;
  *(v34 + 24) = v23;
  *(v34 + 32) = v212;
  *(v34 + 40) = v218;
  *(v34 + 48) = v33;
  *(v34 + 56) = 0;
  *(v34 + 64) = 1;
  sub_10005FAEC(0, 0, 1);
  sub_10005C194(v34);
  v35 = *(v27 + 56);
  v35(v25, 1, 1, v26);
  sub_10009C954();
  if (v0[3])
  {
    v36 = v0[2];
    v37 = v0[3];
    v38 = sub_10009CE44();
    v40 = v39;

    if (v40 >> 60 != 15)
    {
      v41 = v0[55];
      v42 = v0[48];
      v43 = sub_10009CC84();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      sub_10009CC74();
      sub_10007AE4C(&qword_1000C2860, type metadata accessor for WidgetPredictionAnalyticsInfo);
      sub_10009CC64();
      v203 = v29;
      v47 = v0[55];
      v46 = v0[56];
      v29 = v0[48];
      sub_10007AE94(v38, v40);

      v35(v47, 0, 1, v29);
      sub_100014CC8(v47, v46);
      LOBYTE(v29) = v203;
    }
  }

  v48 = v0[56];
  v50 = v0[48];
  v49 = v0[49];
  v215 = *(v49 + 48);
  v51 = v215(v48, 1, v50);
  v52 = v0[53];
  if (v51)
  {
    (*(v0[13] + 56))(v0[53], 1, 1, v0[12]);
  }

  else
  {
    v53 = v0[50];
    v54 = v0[12];
    v55 = v0[13];
    (*(v49 + 16))(v53, v48, v50);
    WidgetPredictionAnalyticsInfo.predictionContext.getter(v52);
    (*(v49 + 8))(v53, v50);
    v56 = *(v55 + 48);
    if (v56(v52, 1, v54) != 1)
    {
      v60 = v0[54];
      v62 = v0[12];
      v61 = v0[13];
      (*(v61 + 32))(v60, v0[53], v62);
      (*(v61 + 56))(v60, 0, 1, v62);
      goto LABEL_25;
    }
  }

  v57 = v0[53];
  v59 = v0[12];
  v58 = v0[13];
  sub_1000781C4(v0[4], v0[54]);
  v56 = *(v58 + 48);
  if (v56(v57, 1, v59) != 1)
  {
    sub_1000160CC(v0[53], &qword_1000C2840, &unk_1000A31E0);
  }

LABEL_25:
  v64 = v0[41];
  v63 = v0[42];
  v65 = v0[40];
  sub_10001E0A8(v0[4] + *(v0[57] + 72), v65, &qword_1000C0CD0, &qword_10009FA30);
  v210 = v56;
  if ((*(v63 + 48))(v65, 1, v64) == 1)
  {
    v66 = v0[21];
    sub_1000160CC(v0[40], &qword_1000C0CD0, &qword_10009FA30);
    v67 = (v66 + 104);
    if (v29)
    {
      v68 = v0[4];
      if (sub_100017C60())
      {
        v69 = &enum case for HomeAnalyticsUtilities.TileState.activated(_:);
      }

      else
      {
        v69 = &enum case for HomeAnalyticsUtilities.TileState.notActivated(_:);
      }

      (*v67)(v0[23], *v69, v0[20]);
    }

    else
    {
      (*v67)(v0[23], enum case for HomeAnalyticsUtilities.TileState.unreachable(_:), v0[20]);
    }

    v198 = v0[56];
    v206 = v0[48];
    v93 = v0[37];
    v176 = v0[38];
    v94 = v0[36];
    v95 = v0[33];
    v183 = v0[34];
    v180 = v0[32];
    v96 = v0[24];
    v188 = v0[30];
    v193 = v0[25];
    v178 = v0[22];
    v98 = v0[20];
    v97 = v0[21];
    v99 = v0[19];
    v101 = v0[16];
    v100 = v0[17];
    (*(v97 + 32))(v96, v0[23], v98);
    (*(v93 + 104))(v176, enum case for TileInteractionEvent.InteractionType.singleTap(_:), v94);
    (*(v100 + 104))(v99, enum case for HomeAnalyticsUtilities.HomeElementType.null(_:), v101);
    (*(v97 + 16))(v178, v96, v98);
    (*(v95 + 104))(v183, enum case for HomeAnalyticsUtilities.TileInteractionArea.generalToggleArea(_:), v180);
    v102 = enum case for HomeAnalyticsUtilities.DisplayedTileContext.interactiveWidget(_:);
    v103 = sub_10009D0A4();
    v104 = *(v103 - 8);
    (*(v104 + 104))(v188, v102, v103);
    (*(v104 + 56))(v188, 0, 1, v103);
    v105 = sub_10009D614();
    (*(*(v105 - 8) + 56))(v193, 1, 1, v105);
    if (v215(v198, 1, v206))
    {
      v106 = v0[28];
      v107 = sub_10009D054();
      (*(*(v107 - 8) + 56))(v106, 1, 1, v107);
    }

    else
    {
      v109 = v0[49];
      v108 = v0[50];
      v110 = v0[48];
      v111 = v0[28];
      (*(v109 + 16))(v108, v0[56], v110);
      WidgetPredictionAnalyticsInfo.predictionScores.getter(v111);
      (*(v109 + 8))(v108, v110);
    }

    v184 = v0[38];
    v189 = v0[47];
    v112 = v0[30];
    v113 = v0[28];
    v114 = v0[25];
    v207 = v0[24];
    v116 = v0[21];
    v115 = v0[22];
    v117 = v0[19];
    v194 = v0[34];
    v199 = v0[20];
    sub_10001E0A8(v0[54], v0[52], &qword_1000C2840, &unk_1000A31E0);
    sub_10009D644();
    sub_10009D654();
    sub_10009D634();
    sub_10009D624();
    (*(v116 + 8))(v207, v199);
  }

  else
  {
    v196 = v0[56];
    v204 = v0[48];
    v71 = v0[43];
    v70 = v0[44];
    v73 = v0[41];
    v72 = v0[42];
    v74 = v0[39];
    v76 = v0[36];
    v75 = v0[37];
    v77 = v0[33];
    v186 = v0[32];
    v191 = v0[35];
    v78 = v0[31];
    (*(v72 + 32))(v70, v0[40], v73);
    (*(v72 + 16))(v71, v70, v73);
    (*(v75 + 104))(v74, enum case for TileInteractionEvent.InteractionType.singleTap(_:), v76);
    (*(v77 + 104))(v191, enum case for HomeAnalyticsUtilities.TileInteractionArea.generalToggleArea(_:), v186);
    v79 = enum case for HomeAnalyticsUtilities.DisplayedTileContext.interactiveWidget(_:);
    v80 = sub_10009D0A4();
    v81 = *(v80 - 8);
    (*(v81 + 104))(v78, v79, v80);
    (*(v81 + 56))(v78, 0, 1, v80);
    if (v215(v196, 1, v204))
    {
      v82 = v0[29];
      v83 = sub_10009D054();
      (*(*(v83 - 8) + 56))(v82, 1, 1, v83);
    }

    else
    {
      v85 = v0[49];
      v84 = v0[50];
      v86 = v0[48];
      v87 = v0[29];
      (*(v85 + 16))(v84, v0[56], v86);
      WidgetPredictionAnalyticsInfo.predictionScores.getter(v87);
      (*(v85 + 8))(v84, v86);
    }

    v197 = v0[47];
    v205 = v0[44];
    v88 = v0[41];
    v89 = v0[42];
    v182 = v0[39];
    v90 = v0[35];
    v187 = v0[31];
    v192 = v0[43];
    v91 = v0[29];
    v92 = v0[26];
    sub_10001E0A8(v0[54], v0[52], &qword_1000C2840, &unk_1000A31E0);
    sub_10007AE4C(&qword_1000C2858, &type metadata accessor for AnyTileInfoBearer);
    sub_10009D684();
    sub_10009D694();
    sub_10009D6A4();
    sub_10009D6B4();
    sub_10009D674();
    (*(v89 + 8))(v205, v88);
  }

  v118 = v0[54];
  v119 = v0[51];
  v120 = v0[47];
  v121 = v0[45];
  v122 = v0[12];
  v123 = v0[13];
  sub_10007AE4C(&qword_1000C2848, &type metadata accessor for TileInteractionEvent);
  sub_10009D2E4();
  sub_10001E0A8(v118, v119, &qword_1000C2840, &unk_1000A31E0);
  if (v210(v119, 1, v122) == 1)
  {
    v124 = v0 + 51;
    v125 = v0[54];
    v127 = v0[46];
    v126 = v0[47];
    v128 = v0[45];

    (*(v127 + 8))(v126, v128);
    sub_1000160CC(v125, &qword_1000C2840, &unk_1000A31E0);
  }

  else
  {
    v129 = v0[56];
    v130 = v0[47];
    v131 = v0[48];
    v132 = v0[18];
    v134 = v0[7];
    v133 = v0[8];
    v135 = v0[6];
    (*(v0[13] + 32))(v0[15], v0[51], v0[12]);
    sub_10009D664();
    (*(v134 + 104))(v133, enum case for PredictableInteractionEvent.InteractionType.tileToggle(_:), v135);
    if (v215(v129, 1, v131))
    {
      v136 = v0[27];
      v137 = sub_10009D054();
      (*(*(v137 - 8) + 56))(v136, 1, 1, v137);
    }

    else
    {
      v139 = v0[49];
      v138 = v0[50];
      v140 = v0[48];
      v141 = v0[27];
      (*(v139 + 16))(v138, v0[56], v140);
      WidgetPredictionAnalyticsInfo.predictionScores.getter(v141);
      (*(v139 + 8))(v138, v140);
    }

    v142 = v0[46];
    v216 = v0[45];
    v219 = v0[47];
    v143 = v0[27];
    v144 = v0[18];
    v145 = v0[12];
    v146 = v0[13];
    v200 = v145;
    v208 = v0[15];
    v147 = v0[10];
    v148 = v0[11];
    v149 = v0[8];
    v150 = v0[9];
    (*(v146 + 16))(v0[14]);
    sub_10009D794();
    sub_10007AE4C(&qword_1000C2850, &type metadata accessor for PredictableInteractionEvent);
    sub_10009D2E4();

    (*(v147 + 8))(v148, v150);
    (*(v146 + 8))(v208, v200);
    (*(v142 + 8))(v219, v216);
    v124 = v0 + 54;
  }

  v151 = *v124;
  v152 = v0[62];
  v154 = v0[58];
  v153 = v0[59];
  v155 = v0[55];
  v156 = v0[56];
  v158 = v0[53];
  v157 = v0[54];
  v159 = v0[51];
  v160 = v0[52];
  v163 = v0[50];
  v164 = v0[47];
  v165 = v0[44];
  v166 = v0[43];
  v167 = v0[40];
  v168 = v0[39];
  v169 = v0[38];
  v170 = v0[35];
  v171 = v0[34];
  v172 = v0[31];
  v173 = v0[30];
  v174 = v0[29];
  v175 = v0[28];
  v177 = v0[27];
  v179 = v0[26];
  v181 = v0[25];
  v185 = v0[24];
  v190 = v0[23];
  v195 = v0[22];
  v201 = v0[19];
  v209 = v0[18];
  v211 = v0[15];
  v213 = v0[14];
  v217 = v0[11];
  v220 = v0[8];
  sub_1000160CC(v151, &qword_1000C2840, &unk_1000A31E0);
  sub_1000160CC(v156, &qword_1000C0C28, &qword_1000A3620);

  v161 = v0[1];

  return v161();
}

uint64_t sub_10007AE4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007AE94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100033B34(a1, a2);
  }

  return a1;
}

unint64_t sub_10007AEA8()
{
  result = qword_1000C2870[0];
  if (!qword_1000C2870[0])
  {
    sub_100007330(255, &qword_1000C1260, HMHome_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000C2870);
  }

  return result;
}

uint64_t sub_10007AF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10007AF84(uint64_t a1)
{
  sub_10006FEFC();
  if (v2 <= 0x3F)
  {
    sub_10006AAC4();
    if (v3 <= 0x3F)
    {
      sub_10009CE24();
      if (v4 <= 0x3F)
      {
        v5 = *(a1 + 16);
        swift_checkMetadataState();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10007B03C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_10009E3A4() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_10009CE24() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v16)
  {
    goto LABEL_34;
  }

  v17 = ((v13 + v14 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v12 + 17) & ~v12)) & ~v14) + *(v10 + 64);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v21 < 2)
    {
LABEL_34:
      if (v15 > 0xFE)
      {
        if (v9 == v16)
        {
          v26 = *(v8 + 48);

          return v26((((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) + v12 + 9) & ~v12);
        }

        else
        {
          v27 = *(v10 + 48);

          return v27((((((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) + v12 + 9) & ~v12) + v13 + v14) & ~v14, v11);
        }
      }

      else
      {
        v25 = *(a1 + v7);
        if (v25 >= 2)
        {
          return (v25 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_34;
  }

LABEL_21:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v23 = ((v13 + v14 + (((v7 & 0xFFFFFFF8) + v12 + 17) & ~v12)) & ~v14) + *(v10 + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v16 + (v24 | v22) + 1;
}

void sub_10007B300(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_10009E3A4() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_10009CE24() - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  v16 = *(v12 + 80);
  if (v11 <= v13)
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = *(v10 + 84);
  }

  if (v17 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = v17;
  }

  v19 = ((v15 + v16 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v14 + 17) & ~v14)) & ~v16) + *(v12 + 64);
  if (a3 <= v18)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v18 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v18 < a2)
  {
    v21 = ~v18 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_65:
              if (v20 == 2)
              {
                *&a1[v19] = v22;
              }

              else
              {
                *&a1[v19] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v20)
    {
      a1[v19] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v19] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v20)
  {
    goto LABEL_36;
  }

  a1[v19] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v26 = v9 + 1;
  if (v17 > 0xFE)
  {
    if (v11 == v18)
    {
      v27 = *(v10 + 56);

      v27(((&a1[v26 + 7] & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14, a2);
    }

    else
    {
      v31 = *(v12 + 56);

      v31(((((&a1[v26 + 7] & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14) + v15 + v16) & ~v16, a2, v13);
    }
  }

  else if (a2 > 0xFE)
  {
    if (v26 <= 3)
    {
      v28 = ~(-1 << (8 * v26));
    }

    else
    {
      v28 = -1;
    }

    if (v9 != -1)
    {
      v29 = v28 & (a2 - 255);
      if (v26 <= 3)
      {
        v30 = v9 + 1;
      }

      else
      {
        v30 = 4;
      }

      bzero(a1, v26);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          *a1 = v29;
          a1[2] = BYTE2(v29);
        }

        else
        {
          *a1 = v29;
        }
      }

      else if (v30 == 1)
      {
        *a1 = v29;
      }

      else
      {
        *a1 = v29;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

uint64_t sub_10007B728@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  v4 = *(a1 + 16);
  sub_10000375C(&qword_1000C24F8, &unk_1000A27B0);
  sub_10009DAB4();
  sub_10000375C(&qword_1000C2508, &qword_1000A3280);
  v5 = sub_10009DAB4();
  v31 = *(a1 + 24);
  v6 = v31;
  v32 = sub_10001CDC8(&qword_1000C24F0, &qword_1000C24F8, &unk_1000A27B0);
  WitnessTable = swift_getWitnessTable();
  v30 = sub_10001CDC8(&qword_1000C2500, &qword_1000C2508, &qword_1000A3280);
  v23 = &type metadata for AnyShapeStyle;
  v24 = &type metadata for AnyShapeStyle;
  v25 = v5;
  v26 = &protocol witness table for AnyShapeStyle;
  v27 = &protocol witness table for AnyShapeStyle;
  v28 = swift_getWitnessTable();
  sub_10009D994();
  swift_getWitnessTable();
  sub_10009DFB4();
  swift_getWitnessTable();
  v7 = sub_10009E284();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v20 = v4;
  v21 = v6;
  v22 = v2;
  sub_10009E2F4();
  sub_10009E274();
  swift_getWitnessTable();
  v15 = v8[2];
  v15(v14, v12, v7);
  v16 = v8[1];
  v16(v12, v7);
  v15(v19, v14, v7);
  return (v16)(v14, v7);
}

uint64_t sub_10007BA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v30 = a1;
  v31 = a4;
  v29 = sub_10009CE24();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v29);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000375C(&qword_1000C24F8, &unk_1000A27B0);
  sub_10009DAB4();
  sub_10000375C(&qword_1000C2508, &qword_1000A3280);
  v9 = sub_10009DAB4();
  v10 = sub_10001CDC8(&qword_1000C24F0, &qword_1000C24F8, &unk_1000A27B0);
  v43 = a3;
  v44 = v10;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_10001CDC8(&qword_1000C2500, &qword_1000C2508, &qword_1000A3280);
  v41 = WitnessTable;
  v42 = v12;
  v13 = swift_getWitnessTable();
  v35 = &type metadata for AnyShapeStyle;
  v36 = &type metadata for AnyShapeStyle;
  v37 = v9;
  v38 = &protocol witness table for AnyShapeStyle;
  v39 = &protocol witness table for AnyShapeStyle;
  v40 = v13;
  sub_10009D994();
  swift_getWitnessTable();
  v14 = sub_10009DFB4();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v28 - v20;
  v22 = a3;
  v23 = type metadata accessor for DeepLinkTileView();
  v24 = v30;
  (*(v6 + 16))(v28, v30 + *(v23 + 40), v29);
  v32 = a2;
  v33 = v22;
  v34 = v24;
  sub_10009DFA4();
  swift_getWitnessTable();
  v25 = v15[2];
  v25(v21, v19, v14);
  v26 = v15[1];
  v26(v19, v14);
  v25(v31, v21, v14);
  return (v26)(v21, v14);
}

uint64_t sub_10007BDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v73 = a1;
  v71 = a4;
  v72 = sub_10009DC44();
  v60 = *(v72 - 8);
  v6 = *(v60 + 64);
  __chkstk_darwin(v72);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10009D174();
  v66 = *(v68 - 8);
  v9 = *(v66 + 64);
  v10 = __chkstk_darwin(v68);
  v65 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v58 - v12;
  sub_10000375C(&qword_1000C24F8, &unk_1000A27B0);
  sub_10009DAB4();
  sub_10000375C(&qword_1000C2508, &qword_1000A3280);
  v14 = sub_10009DAB4();
  v15 = sub_10001CDC8(&qword_1000C24F0, &qword_1000C24F8, &unk_1000A27B0);
  v83 = a3;
  v84 = v15;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_10001CDC8(&qword_1000C2500, &qword_1000C2508, &qword_1000A3280);
  v81 = WitnessTable;
  v82 = v17;
  v18 = swift_getWitnessTable();
  v77[0] = &type metadata for AnyShapeStyle;
  v77[1] = &type metadata for AnyShapeStyle;
  v67 = v14;
  v77[2] = v14;
  v78 = &protocol witness table for AnyShapeStyle;
  v79 = &protocol witness table for AnyShapeStyle;
  v80 = v18;
  v61 = v18;
  v19 = sub_10009D994();
  v64 = *(v19 - 8);
  v20 = *(v64 + 64);
  v21 = __chkstk_darwin(v19);
  v62 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v63 = &v58 - v23;
  sub_10009E154();
  v24 = sub_10009E1A4();

  v78 = &type metadata for Color;
  v79 = &protocol witness table for Color;
  v77[0] = v24;
  sub_10009E154();
  v25 = sub_10009E1A4();

  v75 = &type metadata for Color;
  v76 = &protocol witness table for Color;
  v74 = v25;
  sub_10009D144();
  v69 = a2;
  v70 = a3;
  v26 = v73 + *(type metadata accessor for DeepLinkTileView() + 36);
  v27 = *v26;
  v28 = *(v26 + 8);
  v59 = v8;
  if (v28 == 1)
  {
    if ((v27 & 1) == 0)
    {
LABEL_3:
      sub_10009D164();
      goto LABEL_6;
    }
  }

  else
  {

    sub_10009E834();
    v29 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v27, 0);
    (*(v60 + 8))(v8, v72);
    if (LOBYTE(v77[0]) != 1)
    {
      goto LABEL_3;
    }
  }

  sub_10009D154();
LABEL_6:
  v30 = v78;
  v31 = sub_100024330(v77, v78);
  v32 = *(*(v30 - 1) + 64);
  __chkstk_darwin(v31);
  (*(v34 + 16))(&v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_10009DA84();
  v36 = *(v66 + 8);
  v37 = v68;
  v36(v13, v68);
  sub_100015F44(v77);
  v38 = v65;
  v74 = v35;
  sub_100070210();
  v39 = v72;
  if (!v28)
  {

    sub_10009E834();
    v40 = sub_10009DEA4();
    sub_10009D8C4();

    v41 = v59;
    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v27, 0);
    (*(v60 + 8))(v41, v39);
    if (LOBYTE(v77[0]) != 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_10009D154();
    goto LABEL_11;
  }

  if (v27)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_10009D164();
LABEL_11:
  v42 = v78;
  v43 = sub_100024330(v77, v78);
  v44 = *(*(v42 - 1) + 64);
  __chkstk_darwin(v43);
  (*(v46 + 16))(&v58 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_10009DA84();
  v36(v38, v37);
  v48 = sub_100015F44(v77);
  v77[0] = v47;
  __chkstk_darwin(v48);
  v49 = v70;
  *(&v58 - 4) = v69;
  *(&v58 - 3) = v49;
  v57 = v61;
  v56 = &protocol witness table for AnyShapeStyle;
  v50 = v62;
  sub_10009D984();
  swift_getWitnessTable();
  v51 = v64;
  v52 = *(v64 + 16);
  v53 = v63;
  v52(v63, v50, v19);
  v54 = *(v51 + 8);
  v54(v50, v19);
  v52(v71, v53, v19);
  return (v54)(v53, v19);
}

uint64_t sub_10007C62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v83 = a4;
  v7 = sub_10009DA04();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  __chkstk_darwin(v7);
  v80 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10009DC44();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10009D174();
  v85 = *(v15 - 8);
  v86 = v15;
  v16 = *(v85 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v71 - v20;
  sub_10000375C(&qword_1000C24F8, &unk_1000A27B0);
  v22 = sub_10009DAB4();
  v76 = *(v22 - 8);
  v23 = *(v76 + 64);
  __chkstk_darwin(v22);
  v87 = v71 - v24;
  sub_10000375C(&qword_1000C2508, &qword_1000A3280);
  v77 = v22;
  v25 = sub_10009DAB4();
  v78 = *(v25 - 8);
  v26 = *(v78 + 64);
  v27 = __chkstk_darwin(v25);
  v74 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v75 = v71 - v29;
  sub_10006FF70();
  v71[2] = a2;
  v71[0] = type metadata accessor for DeepLinkTileView();
  v30 = *(v71[0] + 36);
  v71[1] = a1;
  v31 = a1 + v30;
  v32 = *v31;
  v84 = *(v31 + 8);
  v79 = a3;
  v73 = v10;
  v72 = v11;
  if (v84 != 1)
  {

    sub_10009E834();
    v38 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v32, 0);
    (*(v11 + 8))(v14, v10);
    if (LOBYTE(v93[0]) == 1)
    {
      goto LABEL_6;
    }

LABEL_4:
    sub_10009D164();
    v33 = v94;
    v34 = sub_100024330(v93, v94);
    v35 = *(*(v33 - 8) + 64);
    __chkstk_darwin(v34);
    (*(v37 + 16))(v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    goto LABEL_7;
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_6:
  sub_10009D154();
  v39 = v94;
  v40 = sub_100024330(v93, v94);
  v41 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v40);
  (*(v43 + 16))(v71 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
LABEL_7:
  v44 = sub_10009DA84();
  v45 = *(v85 + 8);
  v45(v21, v86);
  sub_100015F44(v93);
  v92 = v44;
  sub_1000700B8();
  if (v84)
  {
    if ((v32 & 1) == 0)
    {
LABEL_9:
      sub_10009D164();
      goto LABEL_12;
    }
  }

  else
  {

    sub_10009E834();
    v46 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v32, 0);
    (*(v72 + 8))(v14, v73);
    if (LOBYTE(v93[0]) != 1)
    {
      goto LABEL_9;
    }
  }

  sub_10009D154();
LABEL_12:
  v47 = v94;
  v48 = sub_100024330(v93, v94);
  v49 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v48);
  (*(v51 + 16))(v71 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_10009DA84();
  v45(v19, v86);
  sub_100015F44(v93);
  v53 = *(v71[0] + 44);
  v93[0] = v52;
  v54 = v79;
  sub_10009E0B4();

  swift_getKeyPath();
  if (!v84)
  {

    sub_10009E834();
    v56 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v32, 0);
    (*(v72 + 8))(v14, v73);
    if (v93[0])
    {
      goto LABEL_14;
    }

LABEL_16:
    v55 = &enum case for ColorScheme.dark(_:);
    goto LABEL_17;
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  v55 = &enum case for ColorScheme.light(_:);
LABEL_17:
  v58 = v80;
  v57 = v81;
  v59 = v82;
  (*(v81 + 104))(v80, *v55, v82);
  v60 = sub_10001CDC8(&qword_1000C24F0, &qword_1000C24F8, &unk_1000A27B0);
  v90 = v54;
  v91 = v60;
  v61 = v77;
  WitnessTable = swift_getWitnessTable();
  v63 = v74;
  v64 = v87;
  sub_10009E074();

  (*(v57 + 8))(v58, v59);
  (*(v76 + 8))(v64, v61);
  v65 = sub_10001CDC8(&qword_1000C2500, &qword_1000C2508, &qword_1000A3280);
  v88 = WitnessTable;
  v89 = v65;
  swift_getWitnessTable();
  v66 = v78;
  v67 = *(v78 + 16);
  v68 = v75;
  v67(v75, v63, v25);
  v69 = *(v66 + 8);
  v69(v63, v25);
  v67(v83, v68, v25);
  return (v69)(v68, v25);
}

uint64_t sub_10007D0BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_10000375C(&qword_1000C24F8, &unk_1000A27B0);
  sub_10009DAB4();
  sub_10000375C(&qword_1000C2508, &qword_1000A3280);
  sub_10009DAB4();
  sub_10001CDC8(&qword_1000C24F0, &qword_1000C24F8, &unk_1000A27B0);
  swift_getWitnessTable();
  sub_10001CDC8(&qword_1000C2500, &qword_1000C2508, &qword_1000A3280);
  swift_getWitnessTable();
  sub_10009D994();
  swift_getWitnessTable();
  sub_10009DFB4();
  swift_getWitnessTable();
  sub_10009E284();
  return swift_getWitnessTable();
}

uint64_t sub_10007D2A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_100003714(&qword_1000C1470, &qword_1000A1108);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = sub_10009CEC4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[8] + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10007D424(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_100003714(&qword_1000C1470, &qword_1000A1108);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = sub_10009CEC4();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 24) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t _s5StateVMa()
{
  result = qword_1000C2950;
  if (!qword_1000C2950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007D5D8()
{
  sub_10007D6DC();
  if (v0 <= 0x3F)
  {
    sub_10007D740(319, &qword_1000C2970, &type metadata accessor for HomeDataError);
    if (v1 <= 0x3F)
    {
      sub_10007D740(319, &qword_1000C2978, &type metadata accessor for StaticHome);
      if (v2 <= 0x3F)
      {
        sub_10009CEC4();
        if (v3 <= 0x3F)
        {
          sub_10007D794();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10007D6DC()
{
  if (!qword_1000C2960)
  {
    sub_10000375C(&qword_1000C2968, &qword_1000A32C8);
    v0 = sub_10009E944();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C2960);
    }
  }
}

void sub_10007D740(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10009E944();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10007D794()
{
  result = qword_1000C2980;
  if (!qword_1000C2980)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000C2980);
  }

  return result;
}

uint64_t sub_10007D850(uint64_t a1, uint64_t a2)
{
  v2[56] = a1;
  v2[57] = a2;
  v3 = sub_10009D964();
  v2[58] = v3;
  v4 = *(v3 - 8);
  v2[59] = v4;
  v5 = *(v4 + 64) + 15;
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v6 = *(*(sub_100003714(&qword_1000C0C80, &qword_1000A1E10) - 8) + 64) + 15;
  v2[63] = swift_task_alloc();
  v7 = sub_10009D2A4();
  v2[64] = v7;
  v8 = *(v7 - 8);
  v2[65] = v8;
  v9 = *(v8 + 64) + 15;
  v2[66] = swift_task_alloc();
  v10 = sub_10009D2C4();
  v2[67] = v10;
  v11 = *(v10 - 8);
  v2[68] = v11;
  v12 = *(v11 + 64) + 15;
  v2[69] = swift_task_alloc();
  v13 = sub_10009D5F4();
  v2[70] = v13;
  v14 = *(v13 - 8);
  v2[71] = v14;
  v15 = *(v14 + 64) + 15;
  v2[72] = swift_task_alloc();
  v16 = sub_10009D394();
  v2[73] = v16;
  v17 = *(v16 - 8);
  v2[74] = v17;
  v18 = *(v17 + 64) + 15;
  v2[75] = swift_task_alloc();
  v19 = *(*(sub_100003714(&qword_1000C29D0, &qword_1000A3340) - 8) + 64) + 15;
  v2[76] = swift_task_alloc();
  v20 = sub_10009D704();
  v2[77] = v20;
  v21 = *(v20 - 8);
  v2[78] = v21;
  v22 = *(v21 + 64) + 15;
  v2[79] = swift_task_alloc();
  v23 = sub_10009D894();
  v2[80] = v23;
  v24 = *(v23 - 8);
  v2[81] = v24;
  v25 = *(v24 + 64) + 15;
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v26 = sub_100003714(&qword_1000C29D8, &qword_1000A3348);
  v2[86] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v28 = sub_10009D274();
  v2[89] = v28;
  v29 = *(v28 - 8);
  v2[90] = v29;
  v30 = *(v29 + 64) + 15;
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v31 = sub_10009D924();
  v2[93] = v31;
  v32 = *(v31 - 8);
  v2[94] = v32;
  v33 = *(v32 + 64) + 15;
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v34 = sub_10009D8B4();
  v2[104] = v34;
  v35 = *(v34 - 8);
  v2[105] = v35;
  v36 = *(v35 + 64) + 15;
  v2[106] = swift_task_alloc();
  v37 = sub_10009D864();
  v2[107] = v37;
  v38 = *(v37 - 8);
  v2[108] = v38;
  v39 = *(v38 + 64) + 15;
  v2[109] = swift_task_alloc();
  v40 = *(*(sub_100003714(&qword_1000C29E0, &qword_1000A3350) - 8) + 64) + 15;
  v2[110] = swift_task_alloc();
  v41 = sub_10009CF14();
  v2[111] = v41;
  v42 = *(v41 - 8);
  v2[112] = v42;
  v43 = *(v42 + 64) + 15;
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v44 = sub_10009D844();
  v2[121] = v44;
  v45 = *(v44 - 8);
  v2[122] = v45;
  v46 = *(v45 + 64) + 15;
  v2[123] = swift_task_alloc();
  v47 = *(*(sub_100003714(&qword_1000C29E8, &qword_1000A3358) - 8) + 64) + 15;
  v2[124] = swift_task_alloc();
  v2[125] = swift_task_alloc();
  v48 = *(*(sub_100003714(&qword_1000C0C78, &qword_1000A0390) - 8) + 64) + 15;
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v49 = *(*(sub_100003714(&qword_1000C1470, &qword_1000A1108) - 8) + 64) + 15;
  v2[128] = swift_task_alloc();
  v50 = sub_10009CF94();
  v2[129] = v50;
  v51 = *(v50 - 8);
  v2[130] = v51;
  v52 = *(v51 + 64) + 15;
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();

  return _swift_task_switch(sub_10007E074, 0, 0);
}

uint64_t sub_10007E074()
{
  v0[133] = sub_10009D024();
  v0[134] = sub_10009D1E4();
  v0[135] = sub_10009D1D4();
  v0[136] = sub_1000857AC(&qword_1000C10D0, &type metadata accessor for WidgetActor);
  v2 = sub_10009E714();

  return _swift_task_switch(sub_10007E14C, v2, v1);
}

uint64_t sub_10007E14C()
{
  v1 = v0[135];
  v2 = v0[133];

  v0[137] = sub_10009D004();

  return _swift_task_switch(sub_10007E1C0, 0, 0);
}

uint64_t sub_10007E1C0()
{
  v1 = v0[125];
  v2 = v0[57];
  sub_10009D884();
  v3 = sub_10009D824();
  v0[138] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  v0[139] = v5;
  v0[140] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3))
  {
    sub_1000160CC(v0[125], &qword_1000C29E8, &qword_1000A3358);
    v6 = 1;
  }

  else
  {
    v7 = v0[127];
    v8 = v0[125];
    v9 = v0[123];
    v10 = v0[122];
    v11 = v0[121];
    sub_10009D814();
    sub_1000160CC(v8, &qword_1000C29E8, &qword_1000A3358);
    sub_10009D834();
    (*(v10 + 8))(v9, v11);
    v6 = 0;
  }

  v12 = v0[127];
  v13 = v0[111];
  v14 = *(v0[112] + 56);
  v0[141] = v14;
  v14(v12, v6, 1, v13);
  v15 = async function pointer to WidgetDataModel.home(_:)[1];
  v16 = swift_task_alloc();
  v0[142] = v16;
  *v16 = v0;
  v16[1] = sub_10007E374;
  v17 = v0[137];
  v18 = v0[128];
  v19 = v0[127];

  return WidgetDataModel.home(_:)(v18, v19);
}

uint64_t sub_10007E374()
{
  v2 = *v1;
  v3 = *(*v1 + 1136);
  v4 = *v1;

  v5 = *(v2 + 1096);
  v6 = *(v2 + 1016);
  if (v0)
  {

    sub_1000160CC(v6, &qword_1000C0C78, &qword_1000A0390);
    v7 = sub_1000834F8;
  }

  else
  {
    sub_1000160CC(v6, &qword_1000C0C78, &qword_1000A0390);

    v7 = sub_10007E500;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10007E500()
{
  v170 = v0;
  v1 = v0[132];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[110];
  v6 = v0[108];
  v7 = v0[107];
  v8 = v0[57];
  v9 = *(v2 + 56);
  v0[143] = v9;
  v0[144] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  sub_10009D874();
  if ((*(v6 + 48))(v5, 1, v7))
  {
    v10 = v0[110];
    (*(v0[130] + 8))(v0[132], v0[129]);
    sub_1000160CC(v10, &qword_1000C29E0, &qword_1000A3350);
    v11 = &NSObject__properties;
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v12 = v0[97];
    v13 = v0[84];
    v14 = v0[81];
    v15 = v0[80];
    v16 = v0[57];
    v17 = qword_1000C8318;
    sub_10009D934();
    v18 = *(v14 + 16);
    v18(v13, v16, v15);
    v19 = sub_10009D904();
    v159 = sub_10009E824();
    v20 = os_log_type_enabled(v19, v159);
    v21 = v0[97];
    v22 = v0[94];
    v23 = v0[93];
    v24 = v0[84];
    v25 = v0[81];
    v26 = v0[80];
    v164 = v18;
    if (v20)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v169[0] = v28;
      *v27 = 136315138;
      sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
      v151 = v21;
      v154 = v23;
      v29 = sub_10009ED04();
      v31 = v30;
      (*(v25 + 8))(v24, v26);
      v32 = sub_10002AD68(v29, v31, v169);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v19, v159, "TileControl.State.build(from:) Missing configuration for intent %s", v27, 0xCu);
      sub_100015F44(v28);
      v11 = &NSObject__properties;

      v18 = v164;

      (*(v22 + 8))(v151, v154);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
      (*(v22 + 8))(v21, v23);
    }

    v64 = v0[58];
    v65 = v0[59];
    sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError);
    v66 = swift_allocError();
    (*(v65 + 104))(v67, enum case for HomeDataError.noSelectedAccessories(_:), v64);
    swift_willThrow();
    v0[177] = v66;
    v0[176] = v18;
    v68 = v0[62];
    v69 = v0[58];
    v0[52] = v66;
    swift_errorRetain();
    sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
    if (swift_dynamicCast())
    {
      v71 = v0[61];
      v70 = v0[62];
      v72 = v0[58];
      v73 = v0[59];

      (*(v73 + 32))(v71, v70, v72);
      if (*&v11[348] != -1)
      {
        swift_once();
      }

      v74 = v0[96];
      v75 = v0[83];
      v76 = v0[81];
      v77 = v0[80];
      v79 = v0[60];
      v78 = v0[61];
      v80 = v0[58];
      v81 = v0[59];
      v82 = v0[57];
      v83 = qword_1000C8318;
      sub_10009D934();
      v84 = *(v81 + 16);
      v0[178] = v84;
      v0[179] = (v81 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      log = v84;
      (v84)(v79, v78, v80);
      v0[180] = (v76 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v164(v75, v82, v77);
      v85 = sub_10009D904();
      v153 = sub_10009E824();
      v86 = os_log_type_enabled(v85, v153);
      v87 = v0[96];
      v88 = v0[94];
      v89 = v0[83];
      v90 = v0[81];
      v91 = v0[80];
      v162 = v91;
      v167 = v0[93];
      v93 = v0[59];
      v92 = v0[60];
      v94 = v0[58];
      if (v86)
      {
        v147 = v0[96];
        v95 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v169[0] = v145;
        *v95 = 138412546;
        swift_allocError();
        v157 = v88;
        (log)(v96, v92, v94);
        v97 = _swift_stdlib_bridgeErrorToNSError();
        logb = v85;
        v100 = *(v93 + 8);
        v99 = v93 + 8;
        v98 = v100;
        v100(v92, v94);
        *(v95 + 4) = v97;
        *v143 = v97;
        *(v95 + 12) = 2080;
        sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
        v101 = sub_10009ED04();
        v103 = v102;
        (*(v90 + 8))(v89, v162);
        v104 = sub_10002AD68(v101, v103, v169);

        *(v95 + 14) = v104;
        _os_log_impl(&_mh_execute_header, logb, v153, "TileControl.State.build(from:) Error %@ building snapshot for %s", v95, 0x16u);
        sub_1000160CC(v143, &qword_1000C0E28, &qword_1000A1DC0);

        sub_100015F44(v145);

        (*(v157 + 8))(v147, v167);
      }

      else
      {

        (*(v90 + 8))(v89, v162);
        v127 = *(v93 + 8);
        v99 = v93 + 8;
        v98 = v127;
        v127(v92, v94);
        (*(v88 + 8))(v87, v167);
      }

      v0[182] = v98;
      v0[181] = v99;
      v128 = v0[136];
      v129 = v0[134];
      v0[183] = sub_10009D1D4();
      v130 = sub_10009E714();
      v132 = v131;
      v133 = sub_10008286C;
    }

    else
    {
      v105 = v0[52];

      if (*&v11[348] != -1)
      {
        swift_once();
      }

      v106 = v0[95];
      v107 = v0[82];
      v108 = v0[81];
      v109 = v0[80];
      v110 = v0[57];
      v111 = qword_1000C8318;
      sub_10009D934();
      v0[187] = (v108 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v18(v107, v110, v109);
      v112 = sub_10009D904();
      v113 = sub_10009E824();
      v114 = os_log_type_enabled(v112, v113);
      v115 = v0[95];
      v116 = v0[94];
      v117 = v0[93];
      v118 = v0[82];
      v119 = v0[81];
      v120 = v0[80];
      if (v114)
      {
        v168 = v0[93];
        v121 = swift_slowAlloc();
        v158 = v113;
        v122 = swift_slowAlloc();
        v169[0] = v122;
        *v121 = 136315138;
        sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
        v123 = sub_10009ED04();
        v163 = v115;
        v125 = v124;
        (*(v119 + 8))(v118, v120);
        v126 = sub_10002AD68(v123, v125, v169);

        *(v121 + 4) = v126;
        _os_log_impl(&_mh_execute_header, v112, v158, "TileControl.State.build(from:) Error building snapshot for %s", v121, 0xCu);
        sub_100015F44(v122);

        (*(v116 + 8))(v163, v168);
      }

      else
      {

        (*(v119 + 8))(v118, v120);
        (*(v116 + 8))(v115, v117);
      }

      v134 = v0[136];
      v135 = v0[134];
      v0[188] = sub_10009D1D4();
      v130 = sub_10009E714();
      v132 = v136;
      v133 = sub_100082ED8;
    }
  }

  else
  {
    v160 = v0[139];
    v165 = v0[140];
    v152 = v0[132];
    v155 = v0[138];
    v33 = v0[124];
    v34 = v0[119];
    v146 = v0[120];
    loga = v0[118];
    v35 = v0[112];
    v36 = v0[110];
    v37 = v0[109];
    v38 = v0[108];
    v39 = v0[107];
    v40 = v0[106];
    v41 = v0[105];
    v141 = v0[104];
    v142 = v0[111];
    v144 = v0[57];
    (*(v38 + 16))(v37, v36, v39);
    sub_1000160CC(v36, &qword_1000C29E0, &qword_1000A3350);
    sub_10009D854();
    (*(v38 + 8))(v37, v39);
    sub_10009D8A4();
    (*(v41 + 8))(v40, v141);
    v42 = *(v35 + 32);
    v0[145] = v42;
    v0[146] = (v35 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v42(v146, v34, v142);
    sub_10009CF64();
    sub_10009D884();
    LODWORD(v37) = v160(v33, 1, v155);
    sub_1000160CC(v33, &qword_1000C29E8, &qword_1000A3358);
    if (v37 == 1)
    {
      if (qword_1000C0AE0 != -1)
      {
        swift_once();
      }

      v43 = v0[118];
      v44 = v0[117];
      v45 = v0[112];
      v46 = v0[111];
      v47 = v0[103];
      v48 = qword_1000C8318;
      sub_10009D934();
      (*(v45 + 16))(v44, v43, v46);
      v49 = sub_10009D904();
      v50 = sub_10009E824();
      v51 = os_log_type_enabled(v49, v50);
      v52 = v0[117];
      v53 = v0[112];
      v54 = v0[111];
      v55 = v0[103];
      v56 = v0[94];
      v57 = v0[93];
      if (v51)
      {
        v166 = v0[93];
        v58 = swift_slowAlloc();
        v156 = v50;
        v59 = swift_slowAlloc();
        v169[0] = v59;
        *v58 = 136446210;
        sub_1000857AC(&qword_1000C0C90, &type metadata accessor for UUID);
        v60 = sub_10009ED04();
        v161 = v55;
        v62 = v61;
        (*(v53 + 8))(v52, v54);
        v63 = sub_10002AD68(v60, v62, v169);

        *(v58 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v49, v156, "TileControl.State.build(from:) No configured home, falling back to: %{public}s", v58, 0xCu);
        sub_100015F44(v59);

        (*(v56 + 8))(v161, v166);
      }

      else
      {

        (*(v53 + 8))(v52, v54);
        (*(v56 + 8))(v55, v57);
      }
    }

    v137 = v0[136];
    v138 = v0[134];
    v0[147] = sub_10009D1D4();
    v130 = sub_10009E714();
    v132 = v139;
    v133 = sub_10007F27C;
  }

  return _swift_task_switch(v133, v130, v132);
}

uint64_t sub_10007F27C()
{
  v1 = v0[147];
  v2 = v0[133];

  v0[148] = sub_10009D004();
  v3 = async function pointer to WidgetDataModel.snapshotModerator.getter[1];
  v4 = swift_task_alloc();
  v0[149] = v4;
  *v4 = v0;
  v4[1] = sub_10007F324;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_10007F324(uint64_t a1)
{
  v3 = *(*v1 + 1192);
  v4 = *(*v1 + 1184);
  v8 = *v1;
  *(*v1 + 1200) = a1;

  sub_10009D774();
  sub_1000857AC(&qword_1000C2A00, &type metadata accessor for WidgetSnapshotModerator);
  v6 = sub_10009E714();

  return _swift_task_switch(sub_10007F498, v6, v5);
}

uint64_t sub_10007F498()
{
  v1 = *(v0 + 1200);
  *(v0 + 1208) = sub_10009D744();

  return _swift_task_switch(sub_10007F50C, 0, 0);
}

uint64_t sub_10007F50C()
{
  v1 = v0[136];
  v2 = v0[134];
  v0[152] = sub_10009D1D4();
  v4 = sub_10009E714();

  return _swift_task_switch(sub_10007F5A0, v4, v3);
}

uint64_t sub_10007F5A0()
{
  v1 = v0[152];
  v2 = v0[133];

  v0[153] = sub_10009D004();

  return _swift_task_switch(sub_10007F614, 0, 0);
}

uint64_t sub_10007F614()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 944);
  v4 = *(v0 + 896);
  v5 = *(v0 + 888);
  v24 = *(v0 + 704);
  v25 = *(v0 + 688);
  v6 = *(v0 + 680);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);
  v22 = *(v0 + 632);
  v9 = *(v0 + 624);
  v23 = *(v0 + 616);
  v10 = *(v0 + 456);
  v11 = *(v4 + 16);
  v4 += 16;
  *(v0 + 1232) = v11;
  *(v0 + 1240) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v2, v3, v5);
  *(v0 + 1248) = (v4 + 40) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v1(v2, 0, 1, v5);
  v12 = *(v7 + 16);
  *(v0 + 1256) = v12;
  *(v0 + 1264) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v6, v10, v8);
  *(v0 + 1272) = sub_100003714(&qword_1000C2A08, &qword_1000A3360);
  *(v0 + 1280) = *(v9 + 72);
  *(v0 + 1536) = *(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10009F8F0;
  sub_10009D6E4();
  sub_10009D6D4();
  *(v0 + 424) = v13;
  *(v0 + 1288) = sub_1000857AC(&qword_1000C2A10, &type metadata accessor for WidgetRefreshOptions);
  *(v0 + 1296) = sub_100003714(&qword_1000C2A18, &qword_1000A3368);
  *(v0 + 1304) = sub_1000856FC();
  sub_10009E984();
  v14 = sub_1000857AC(&qword_1000C29F8, &type metadata accessor for ToggleControlConfigurationIntent);
  *(v0 + 1312) = v14;
  sub_10009D2D4();
  swift_storeEnumTagMultiPayload();
  v15 = async function pointer to WidgetDataModel.snapshotOf<A>(updateType:)[1];
  v16 = swift_task_alloc();
  *(v0 + 1320) = v16;
  *v16 = v0;
  v16[1] = sub_10007F8F8;
  v17 = *(v0 + 1224);
  v18 = *(v0 + 736);
  v19 = *(v0 + 704);
  v20 = *(v0 + 640);

  return WidgetDataModel.snapshotOf<A>(updateType:)(v18, v19, v20, v14);
}

uint64_t sub_10007F8F8()
{
  v2 = *v1;
  v3 = *(*v1 + 1320);
  v4 = *v1;
  *(*v1 + 1328) = v0;

  v5 = *(v2 + 1224);

  if (v0)
  {
    v6 = sub_100083E58;
  }

  else
  {
    v6 = sub_10007FA2C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10007FA2C()
{
  v296 = v0;
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 736);
  sub_10009D234();
  v6.super.isa = v1;
  v7 = sub_10009CF74(v6);
  *(v0 + 1336) = v7;
  v8 = *(v3 + 8);
  *(v0 + 1344) = v8;
  *(v0 + 1352) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v4);
  v283 = v8;
  if (!v7)
  {
    v20 = *(v0 + 1208);
    v269 = *(v0 + 1032);
    v277 = *(v0 + 1056);
    v254 = *(v0 + 944);
    v261 = *(v0 + 960);
    v21 = *(v0 + 896);
    v22 = *(v0 + 888);
    v23 = *(v0 + 736);
    v24 = *(v0 + 720);
    v25 = *(v0 + 712);
    v26 = *(v0 + 464);
    v27 = *(v0 + 472);
    sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError);
    v16 = swift_allocError();
    (*(v27 + 104))(v28, enum case for HomeDataError.noHomes(_:), v26);
    swift_willThrow();

    (*(v24 + 8))(v23, v25);
    v29 = *(v21 + 8);
    v29(v254, v22);
    v29(v261, v22);
    v283(v277, v269);
    goto LABEL_11;
  }

  if ([v7 hf_currentUserRoarUpdateRequiredForUnsupportedLegacyHomeHubVersion])
  {
    v268 = *(v0 + 1032);
    v276 = *(v0 + 1056);
    v260 = *(v0 + 960);
    v247 = *(v0 + 1208);
    v253 = *(v0 + 944);
    v9 = *(v0 + 896);
    v10 = *(v0 + 888);
    v11 = *(v0 + 736);
    v12 = *(v0 + 720);
    v13 = *(v0 + 712);
    v15 = *(v0 + 464);
    v14 = *(v0 + 472);
    sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError);
    v16 = swift_allocError();
    v18 = v17;
    v19 = &enum case for HomeDataError.updateToHH2Required(_:);
LABEL_9:
    (*(v14 + 104))(v18, *v19, v15);
    swift_willThrow();

    (*(v12 + 8))(v11, v13);
    v35 = *(v9 + 8);
    v35(v253, v10);
    v35(v260, v10);
    v37 = v268;
    v36 = v276;
LABEL_10:
    v283(v36, v37);
LABEL_11:
    v38 = *(v0 + 1256);
    *(v0 + 1416) = v16;
    *(v0 + 1408) = v38;
    v39 = *(v0 + 496);
    v40 = *(v0 + 464);
    *(v0 + 416) = v16;
    swift_errorRetain();
    sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
    if (swift_dynamicCast())
    {
      v42 = *(v0 + 488);
      v41 = *(v0 + 496);
      v43 = *(v0 + 464);
      v44 = *(v0 + 472);

      (*(v44 + 32))(v42, v41, v43);
      if (qword_1000C0AE0 != -1)
      {
        swift_once();
      }

      v45 = *(v0 + 768);
      v290 = *(v0 + 664);
      v46 = *(v0 + 648);
      v47 = *(v0 + 640);
      v49 = *(v0 + 480);
      v48 = *(v0 + 488);
      v50 = *(v0 + 464);
      v51 = *(v0 + 472);
      v52 = *(v0 + 456);
      v53 = qword_1000C8318;
      sub_10009D934();
      v54 = *(v51 + 16);
      *(v0 + 1424) = v54;
      *(v0 + 1432) = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v270 = v54;
      v54(v49, v48, v50);
      *(v0 + 1440) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v38(v290, v52, v47);
      v55 = sub_10009D904();
      v278 = sub_10009E824();
      v284 = v55;
      v56 = os_log_type_enabled(v55, v278);
      v57 = *(v0 + 768);
      v58 = *(v0 + 752);
      v291 = *(v0 + 744);
      v59 = *(v0 + 664);
      v60 = *(v0 + 648);
      v61 = *(v0 + 640);
      v63 = *(v0 + 472);
      v62 = *(v0 + 480);
      v64 = *(v0 + 464);
      if (v56)
      {
        v262 = *(v0 + 752);
        v65 = swift_slowAlloc();
        v242 = v59;
        v66 = swift_slowAlloc();
        v255 = swift_slowAlloc();
        v295[0] = v255;
        *v65 = 138412546;
        sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError);
        swift_allocError();
        v248 = v57;
        v270(v67, v62, v64);
        v68 = _swift_stdlib_bridgeErrorToNSError();
        v71 = *(v63 + 8);
        v69 = v63 + 8;
        v70 = v71;
        v71(v62, v64);
        *(v65 + 4) = v68;
        *v66 = v68;
        v72 = v66;
        *(v65 + 12) = 2080;
        sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
        v73 = sub_10009ED04();
        v75 = v74;
        (*(v60 + 8))(v242, v61);
        v76 = sub_10002AD68(v73, v75, v295);

        *(v65 + 14) = v76;
        _os_log_impl(&_mh_execute_header, v284, v278, "TileControl.State.build(from:) Error %@ building snapshot for %s", v65, 0x16u);
        sub_1000160CC(v72, &qword_1000C0E28, &qword_1000A1DC0);

        sub_100015F44(v255);

        (*(v262 + 8))(v248, v291);
      }

      else
      {

        (*(v60 + 8))(v59, v61);
        v99 = *(v63 + 8);
        v69 = v63 + 8;
        v70 = v99;
        v99(v62, v64);
        (*(v58 + 8))(v57, v291);
      }

      *(v0 + 1456) = v70;
      *(v0 + 1448) = v69;
      v100 = *(v0 + 1088);
      v101 = *(v0 + 1072);
      *(v0 + 1464) = sub_10009D1D4();
      v102 = sub_10009E714();
      v104 = v103;
      v105 = sub_10008286C;
    }

    else
    {
      v77 = *(v0 + 416);

      if (qword_1000C0AE0 != -1)
      {
        swift_once();
      }

      v78 = *(v0 + 760);
      v79 = *(v0 + 656);
      v80 = *(v0 + 648);
      v81 = *(v0 + 640);
      v82 = *(v0 + 456);
      v83 = qword_1000C8318;
      sub_10009D934();
      *(v0 + 1496) = (v80 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v38(v79, v82, v81);
      v84 = sub_10009D904();
      v85 = sub_10009E824();
      v86 = os_log_type_enabled(v84, v85);
      v87 = *(v0 + 760);
      v88 = *(v0 + 752);
      v89 = *(v0 + 744);
      v90 = *(v0 + 656);
      v91 = *(v0 + 648);
      v92 = *(v0 + 640);
      if (v86)
      {
        v292 = *(v0 + 744);
        v93 = swift_slowAlloc();
        v279 = v85;
        v94 = swift_slowAlloc();
        v295[0] = v94;
        *v93 = 136315138;
        sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
        v95 = sub_10009ED04();
        v285 = v87;
        v97 = v96;
        (*(v91 + 8))(v90, v92);
        v98 = sub_10002AD68(v95, v97, v295);

        *(v93 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v84, v279, "TileControl.State.build(from:) Error building snapshot for %s", v93, 0xCu);
        sub_100015F44(v94);

        (*(v88 + 8))(v285, v292);
      }

      else
      {

        (*(v91 + 8))(v90, v92);
        (*(v88 + 8))(v87, v89);
      }

      v106 = *(v0 + 1088);
      v107 = *(v0 + 1072);
      *(v0 + 1504) = sub_10009D1D4();
      v102 = sub_10009E714();
      v104 = v108;
      v105 = sub_100082ED8;
    }

    goto LABEL_24;
  }

  v30.super.isa = [v7 currentUser];
  isa = v30.super.isa;
  v32 = sub_10009E8A4(v30);

  if (v32)
  {
    v268 = *(v0 + 1032);
    v276 = *(v0 + 1056);
    v260 = *(v0 + 960);
    v247 = *(v0 + 1208);
    v253 = *(v0 + 944);
    v9 = *(v0 + 896);
    v10 = *(v0 + 888);
    v11 = *(v0 + 736);
    v12 = *(v0 + 720);
    v13 = *(v0 + 712);
    v15 = *(v0 + 464);
    v14 = *(v0 + 472);
    sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError);
    v16 = swift_allocError();
    v18 = v33;
    v19 = &enum case for HomeDataError.noAccessOutsideOfScheduleForRestrictedGuest(_:);
    goto LABEL_9;
  }

  if ([v7 hf_isCurrentRestrictedGuestAwayFromHome])
  {
    v268 = *(v0 + 1032);
    v276 = *(v0 + 1056);
    v260 = *(v0 + 960);
    v247 = *(v0 + 1208);
    v253 = *(v0 + 944);
    v9 = *(v0 + 896);
    v10 = *(v0 + 888);
    v11 = *(v0 + 736);
    v12 = *(v0 + 720);
    v13 = *(v0 + 712);
    v15 = *(v0 + 464);
    v14 = *(v0 + 472);
    sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError);
    v16 = swift_allocError();
    v18 = v34;
    v19 = &enum case for HomeDataError.noAccessAwayFromHomeForRestrictedGuest(_:);
    goto LABEL_9;
  }

  if (([v7 hf_hasEnabledResident] & 1) == 0)
  {
    sub_100085760();
    if ((sub_10009E854() & 1) == 0)
    {
      v268 = *(v0 + 1032);
      v276 = *(v0 + 1056);
      v260 = *(v0 + 960);
      v247 = *(v0 + 1208);
      v253 = *(v0 + 944);
      v9 = *(v0 + 896);
      v10 = *(v0 + 888);
      v11 = *(v0 + 736);
      v12 = *(v0 + 720);
      v13 = *(v0 + 712);
      v15 = *(v0 + 464);
      v14 = *(v0 + 472);
      sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError);
      v16 = swift_allocError();
      v18 = v128;
      v19 = &enum case for HomeDataError.noResident(_:);
      goto LABEL_9;
    }
  }

  if (([*(v0 + 1208) hf_canAccessHomeRemotely:v7] & 1) == 0)
  {
    sub_100085760();
    if ((sub_10009E854() & 1) == 0)
    {
      v268 = *(v0 + 1032);
      v276 = *(v0 + 1056);
      v260 = *(v0 + 960);
      v247 = *(v0 + 1208);
      v253 = *(v0 + 944);
      v9 = *(v0 + 896);
      v10 = *(v0 + 888);
      v11 = *(v0 + 736);
      v12 = *(v0 + 720);
      v13 = *(v0 + 712);
      v15 = *(v0 + 464);
      v14 = *(v0 + 472);
      sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError);
      v16 = swift_allocError();
      v18 = v151;
      v19 = &enum case for HomeDataError.noRemoteAccess(_:);
      goto LABEL_9;
    }
  }

  v109 = *(v0 + 960);
  v110 = *(v0 + 736);
  sub_10009D264();
  if (!*(v0 + 80))
  {
    v281 = v7;
    sub_1000160CC(v0 + 56, &qword_1000C1F48, &qword_1000A21B0);
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v129 = *(v0 + 1240);
    v130 = *(v0 + 1232);
    v131 = *(v0 + 960);
    v132 = *(v0 + 904);
    v133 = *(v0 + 888);
    v134 = *(v0 + 784);
    v135 = qword_1000C8318;
    sub_10009D934();
    v130(v132, v131, v133);
    v136 = sub_10009D904();
    v137 = sub_10009E824();
    v138 = os_log_type_enabled(v136, v137);
    v139 = *(v0 + 904);
    v140 = *(v0 + 896);
    v141 = *(v0 + 888);
    v142 = *(v0 + 784);
    v143 = *(v0 + 752);
    v144 = *(v0 + 744);
    if (v138)
    {
      v263 = v137;
      v145 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      v295[0] = v256;
      *v145 = 136446210;
      sub_1000857AC(&qword_1000C0C90, &type metadata accessor for UUID);
      v243 = v144;
      v249 = v142;
      v146 = v136;
      v147 = sub_10009ED04();
      v149 = v148;
      v272 = *(v140 + 8);
      v272(v139, v141);
      v150 = sub_10002AD68(v147, v149, v295);

      *(v145 + 4) = v150;
      _os_log_impl(&_mh_execute_header, v146, v263, "TileControl.State.build(from:) Snapshot missing item with ID %{public}s", v145, 0xCu);
      sub_100015F44(v256);

      (*(v143 + 8))(v249, v243);
    }

    else
    {

      v272 = *(v140 + 8);
      v272(v139, v141);
      (*(v143 + 8))(v142, v144);
    }

    v171 = *(v0 + 1208);
    v257 = *(v0 + 1032);
    v264 = *(v0 + 1056);
    v244 = *(v0 + 944);
    v250 = *(v0 + 960);
    v172 = *(v0 + 888);
    v173 = *(v0 + 736);
    v174 = *(v0 + 720);
    v175 = *(v0 + 712);
    v177 = *(v0 + 464);
    v176 = *(v0 + 472);
    sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError);
    v16 = swift_allocError();
    (*(v176 + 104))(v178, enum case for HomeDataError.noSelectedAccessories(_:), v177);
    swift_willThrow();

    (*(v174 + 8))(v173, v175);
    v272(v244, v172);
    v272(v250, v172);
    v37 = v257;
    v36 = v264;
    goto LABEL_10;
  }

  v111 = *(v0 + 600);
  v112 = *(v0 + 584);
  sub_100031E64((v0 + 56), v0 + 16);
  sub_100068EBC(v0 + 16, v0 + 96);
  sub_100003714(&qword_1000C2968, &qword_1000A32C8);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 592) + 8))(*(v0 + 600), *(v0 + 584));
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v113 = *(v0 + 816);
    v293 = qword_1000C8318;
    sub_10009D934();
    sub_100068EBC(v0 + 16, v0 + 376);
    v114 = sub_10009D904();
    v115 = sub_10009E844();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = *(v0 + 928);
      v117 = *(v0 + 896);
      v118 = *(v0 + 888);
      v286 = *(v0 + 816);
      v271 = *(v0 + 752);
      v280 = *(v0 + 744);
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v295[0] = v120;
      *v119 = 136315138;
      v121 = *(v0 + 408);
      sub_100024330((v0 + 376), *(v0 + 400));
      v122 = *(v121 + 48);
      sub_10009EAD4();
      sub_1000857AC(&qword_1000C0C90, &type metadata accessor for UUID);
      v123 = sub_10009ED04();
      v125 = v124;
      (*(v117 + 8))(v116, v118);
      sub_100015F44((v0 + 376));
      v126 = sub_10002AD68(v123, v125, v295);

      *(v119 + 4) = v126;
      _os_log_impl(&_mh_execute_header, v114, v115, "TileControl.State.build(from:) Fetching control %s action set", v119, 0xCu);
      sub_100015F44(v120);

      v127 = v286;
      v287 = *(v271 + 8);
      v287(v127, v280);
    }

    else
    {
      v179 = *(v0 + 816);
      v180 = *(v0 + 752);
      v181 = *(v0 + 744);

      v287 = *(v180 + 8);
      v287(v179, v181);
      sub_100015F44((v0 + 376));
    }

    v258 = *(v0 + 1296);
    v265 = *(v0 + 1304);
    v273 = *(v0 + 1288);
    v282 = *(v0 + 1312);
    v182 = *(v0 + 1536);
    v237 = *(v0 + 1264);
    v239 = *(v0 + 1280);
    v235 = *(v0 + 1256);
    v183 = *(v0 + 1248);
    v184 = *(v0 + 1240);
    v185 = *(v0 + 1128);
    v186 = *(v0 + 1008);
    v187 = *(v0 + 896);
    v188 = *(v0 + 888);
    v231 = *(v0 + 680);
    v233 = *(v0 + 640);
    v241 = *(v0 + 632);
    v245 = *(v0 + 1272);
    v189 = *(v0 + 616);
    v251 = *(v0 + 608);
    v190 = *(v0 + 456);
    (*(v0 + 1232))(v186, *(v0 + 944), v188);
    v185(v186, 0, 1, v188);
    sub_100003714(&qword_1000C0E88, &unk_1000A08E0);
    v191 = *(v187 + 72);
    v192 = (*(v187 + 80) + 32) & ~*(v187 + 80);
    *(swift_allocObject() + 16) = xmmword_10009F8D0;
    v193 = *(v0 + 48);
    sub_100024330((v0 + 16), *(v0 + 40));
    v194 = *(v193 + 48);
    sub_10009EAD4();
    v235(v231, v190, v233);
    v195 = swift_allocObject();
    *(v195 + 16) = xmmword_10009F8D0;
    sub_10009D6F4();
    *(v0 + 440) = v195;
    sub_10009E984();
  }

  else
  {
    v152 = *(v0 + 736);
    sub_100003714(&qword_1000C2A28, &qword_1000A3370);
    v153 = swift_allocObject();
    *(v153 + 16) = xmmword_10009F8D0;
    sub_100068EBC(v0 + 16, v153 + 32);
    v154 = sub_10009D254();

    v155 = *(v154 + 16);
    if (v155)
    {
      v156 = *(v0 + 896);
      v157 = *(v0 + 568);
      v295[0] = _swiftEmptyArrayStorage;
      sub_10001BC00(0, v155, 0);
      v158 = _swiftEmptyArrayStorage;
      v159 = *(v157 + 16);
      v157 += 16;
      v294 = v159;
      v160 = v154 + ((*(v157 + 64) + 32) & ~*(v157 + 64));
      v288 = *(v157 + 56);
      v161 = (v157 - 8);
      do
      {
        v162 = *(v0 + 920);
        v163 = *(v0 + 576);
        v164 = *(v0 + 560);
        v294(v163, v160, v164);
        sub_10009D5E4();
        (*v161)(v163, v164);
        v295[0] = v158;
        v166 = *(v158 + 2);
        v165 = *(v158 + 3);
        if (v166 >= v165 >> 1)
        {
          sub_10001BC00(v165 > 1, v166 + 1, 1);
          v158 = v295[0];
        }

        v167 = *(v0 + 1168);
        v168 = *(v0 + 1160);
        v169 = *(v0 + 920);
        v170 = *(v0 + 888);
        *(v158 + 2) = v166 + 1;
        v168(&v158[((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v166], v169, v170);
        v160 += v288;
        --v155;
      }

      while (v155);
    }

    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v196 = *(v0 + 808);
    v293 = qword_1000C8318;
    sub_10009D934();
    sub_100068EBC(v0 + 16, v0 + 136);

    v197 = sub_10009D904();
    v198 = sub_10009E844();

    if (os_log_type_enabled(v197, v198))
    {
      v199 = *(v0 + 928);
      v200 = *(v0 + 896);
      v201 = *(v0 + 888);
      v289 = *(v0 + 808);
      v266 = *(v0 + 752);
      v274 = *(v0 + 744);
      v202 = swift_slowAlloc();
      v295[0] = swift_slowAlloc();
      *v202 = 136315394;
      v203 = *(v0 + 168);
      sub_100024330((v0 + 136), *(v0 + 160));
      v204 = *(v203 + 48);
      sub_10009EAD4();
      sub_1000857AC(&qword_1000C0C90, &type metadata accessor for UUID);
      v205 = sub_10009ED04();
      v207 = v206;
      (*(v200 + 8))(v199, v201);
      sub_100015F44((v0 + 136));
      v208 = sub_10002AD68(v205, v207, v295);

      *(v202 + 4) = v208;
      *(v202 + 12) = 2080;
      v209 = sub_10009E6B4();
      v211 = sub_10002AD68(v209, v210, v295);

      *(v202 + 14) = v211;
      _os_log_impl(&_mh_execute_header, v197, v198, "TileControl.State.build(from:) Fetching control %s characteristics %s", v202, 0x16u);
      swift_arrayDestroy();

      v212 = v289;
      v287 = *(v266 + 8);
      v287(v212, v274);
    }

    else
    {
      v213 = *(v0 + 808);
      v214 = *(v0 + 752);
      v215 = *(v0 + 744);

      v287 = *(v214 + 8);
      v287(v213, v215);
      sub_100015F44((v0 + 136));
    }

    v252 = *(v0 + 1296);
    v259 = *(v0 + 1304);
    v267 = *(v0 + 1288);
    v275 = *(v0 + 1312);
    v216 = *(v0 + 1536);
    v238 = *(v0 + 1280);
    v240 = *(v0 + 1272);
    v234 = *(v0 + 1256);
    v236 = *(v0 + 1264);
    v232 = *(v0 + 1248);
    v217 = *(v0 + 1240);
    v230 = *(v0 + 1128);
    v218 = *(v0 + 1008);
    v219 = *(v0 + 888);
    v220 = *(v0 + 680);
    v221 = *(v0 + 640);
    v222 = *(v0 + 632);
    v223 = *(v0 + 616);
    v246 = *(v0 + 608);
    v224 = *(v0 + 456);
    (*(v0 + 1232))(v218, *(v0 + 944), v219);
    v230(v218, 0, 1, v219);
    v234(v220, v224, v221);
    v225 = swift_allocObject();
    *(v225 + 16) = xmmword_10009F8D0;
    sub_10009D6F4();
    *(v0 + 432) = v225;
    sub_10009E984();
  }

  sub_10009D534();
  *(v0 + 1368) = v293;
  *(v0 + 1360) = v287;
  v226 = *(v0 + 1088);
  v227 = *(v0 + 1072);
  *(v0 + 1376) = sub_10009D1D4();
  v102 = sub_10009E714();
  v104 = v228;
  v105 = sub_10008136C;
LABEL_24:

  return _swift_task_switch(v105, v102, v104);
}

uint64_t sub_10008136C()
{
  v1 = v0[172];
  v2 = v0[133];

  v0[173] = sub_10009D004();

  return _swift_task_switch(sub_1000813E0, 0, 0);
}

uint64_t sub_1000813E0()
{
  v1 = v0[86];
  sub_1000857F4(v0[76], v0[87]);
  swift_storeEnumTagMultiPayload();
  v2 = async function pointer to WidgetDataModel.snapshotOf<A>(updateType:)[1];
  v3 = swift_task_alloc();
  v0[174] = v3;
  *v3 = v0;
  v3[1] = sub_1000814AC;
  v4 = v0[173];
  v5 = v0[164];
  v6 = v0[91];
  v7 = v0[87];
  v8 = v0[80];

  return WidgetDataModel.snapshotOf<A>(updateType:)(v6, v7, v8, v5);
}

uint64_t sub_1000814AC()
{
  v2 = *v1;
  v3 = *(*v1 + 1392);
  v4 = *v1;
  *(*v1 + 1400) = v0;

  v5 = *(v2 + 1384);

  if (v0)
  {
    v6 = sub_1000845A8;
  }

  else
  {
    v6 = sub_1000815E0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000815E0()
{
  v248 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  v5 = *(v0 + 712);
  v239 = *(v4 + 8);
  v239(v2, v5);
  (*(v4 + 32))(v2, v3, v5);
  sub_10009D264();
  if (*(v0 + 240))
  {
    sub_100031E64((v0 + 216), v0 + 176);
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 800);
    v7 = *(v0 + 1368);
    sub_10009D934();
    sub_100068EBC(v0 + 176, v0 + 256);
    sub_100068EBC(v0 + 176, v0 + 296);
    sub_100068EBC(v0 + 176, v0 + 336);
    v8 = sub_10009D904();
    v9 = sub_10009E844();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 928);
      v11 = *(v0 + 896);
      v12 = *(v0 + 888);
      v220 = *(v0 + 752);
      v226 = *(v0 + 744);
      v233 = *(v0 + 800);
      v195 = *(v0 + 552);
      v201 = *(v0 + 544);
      v205 = *(v0 + 536);
      v13 = *(v0 + 528);
      v14 = *(v0 + 520);
      v192 = *(v0 + 512);
      v198 = *(v0 + 504);
      v15 = swift_slowAlloc();
      v247[0] = swift_slowAlloc();
      *v15 = 136315650;
      v210 = v9;
      v16 = *(v0 + 288);
      sub_100024330((v0 + 256), *(v0 + 280));
      v17 = *(v16 + 48);
      sub_10009EAD4();
      sub_1000857AC(&qword_1000C0C90, &type metadata accessor for UUID);
      v18 = sub_10009ED04();
      v20 = v19;
      (*(v11 + 8))(v10, v12);
      sub_100015F44((v0 + 256));
      v21 = sub_10002AD68(v18, v20, v247);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      v22 = *(v0 + 328);
      sub_100024330((v0 + 296), *(v0 + 320));
      v23 = sub_10009D364();
      v25 = v24;
      sub_100015F44((v0 + 296));
      v26 = sub_10002AD68(v23, v25, v247);

      *(v15 + 14) = v26;
      *(v15 + 22) = 2080;
      v27 = *(v0 + 368);
      sub_100024330((v0 + 336), *(v0 + 360));
      (*(v14 + 104))(v13, enum case for StatusContext.tile(_:), v192);
      sub_10009D2B4();
      (*(v14 + 8))(v13, v192);
      v28 = sub_10009D4F4();
      (*(*(v28 - 8) + 56))(v198, 1, 1, v28);
      v29 = sub_10009D324();
      v31 = v30;
      sub_1000160CC(v198, &qword_1000C0C80, &qword_1000A1E10);
      (*(v201 + 8))(v195, v205);
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v29 = 0;
        v32 = 0xE000000000000000;
      }

      sub_100015F44((v0 + 336));
      v33 = sub_10002AD68(v29, v32, v247);

      *(v15 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v8, v210, "TileControl.State.build(from:) Fetched control %s (%s, %s", v15, 0x20u);
      swift_arrayDestroy();

      (*(v220 + 8))(v233, v226);
    }

    else
    {
      v57 = *(v0 + 1360);
      v58 = *(v0 + 800);
      v59 = *(v0 + 752);
      v60 = *(v0 + 744);

      v57(v58, v60);
      sub_100015F44((v0 + 256));
      sub_100015F44((v0 + 296));
      sub_100015F44((v0 + 336));
    }

    v228 = *(v0 + 1344);
    v235 = *(v0 + 1352);
    v202 = *(v0 + 1336);
    v193 = *(v0 + 1264);
    v188 = *(v0 + 1312);
    v190 = *(v0 + 1256);
    v199 = *(v0 + 1208);
    v186 = *(v0 + 1152);
    v61 = *(v0 + 1144);
    v62 = *(v0 + 1032);
    v216 = *(v0 + 960);
    v222 = *(v0 + 1056);
    v63 = *(v0 + 896);
    v206 = *(v0 + 888);
    v211 = *(v0 + 944);
    v64 = *(v0 + 736);
    v196 = *(v0 + 712);
    v65 = *(v0 + 640);
    v67 = *(v0 + 464);
    v66 = *(v0 + 472);
    v68 = *(v0 + 448);
    v184 = *(v0 + 456);
    sub_100068EBC(v0 + 176, v68);
    v69 = _s5StateVMa();
    (*(v66 + 56))(v68 + v69[5], 1, 1, v67);
    v70 = v69[6];
    sub_10009D234();
    v61(v68 + v70, 0, 1, v62);
    v71 = (v68 + v69[8]);
    v71[3] = v65;
    v71[4] = v188;
    v72 = sub_100031E00(v71);
    v190(v72, v184, v65);
    v73 = v68 + v69[7];
    sub_10009CEA4();

    sub_100015F44((v0 + 176));
    v239(v64, v196);
    v74 = *(v63 + 8);
    v74(v211, v206);
    v74(v216, v206);
    v228(v222, v62);
    sub_100015F44((v0 + 16));
    v75 = *(v0 + 1056);
    v76 = *(v0 + 1048);
    v77 = *(v0 + 1024);
    v78 = *(v0 + 1016);
    v79 = *(v0 + 1008);
    v80 = *(v0 + 1000);
    v81 = *(v0 + 992);
    v82 = *(v0 + 984);
    v83 = *(v0 + 960);
    v84 = *(v0 + 952);
    v164 = *(v0 + 944);
    v165 = *(v0 + 936);
    v166 = *(v0 + 928);
    v167 = *(v0 + 920);
    v168 = *(v0 + 912);
    v169 = *(v0 + 904);
    v170 = *(v0 + 880);
    v171 = *(v0 + 872);
    v172 = *(v0 + 848);
    v173 = *(v0 + 824);
    v174 = *(v0 + 816);
    v175 = *(v0 + 808);
    v176 = *(v0 + 800);
    v177 = *(v0 + 792);
    v178 = *(v0 + 784);
    v179 = *(v0 + 776);
    v180 = *(v0 + 768);
    v181 = *(v0 + 760);
    v182 = *(v0 + 736);
    v183 = *(v0 + 728);
    v185 = *(v0 + 704);
    v187 = *(v0 + 696);
    v189 = *(v0 + 680);
    v191 = *(v0 + 672);
    v194 = *(v0 + 664);
    v197 = *(v0 + 656);
    v200 = *(v0 + 632);
    v203 = *(v0 + 608);
    v207 = *(v0 + 600);
    v212 = *(v0 + 576);
    v217 = *(v0 + 552);
    v223 = *(v0 + 528);
    v229 = *(v0 + 504);
    v236 = *(v0 + 496);
    v240 = *(v0 + 488);
    v243 = *(v0 + 480);

    v85 = *(v0 + 8);

    return v85();
  }

  else
  {
    sub_1000160CC(v0 + 216, &qword_1000C1F48, &qword_1000A21B0);
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 1240);
    v35 = *(v0 + 1232);
    v36 = *(v0 + 960);
    v37 = *(v0 + 912);
    v38 = *(v0 + 888);
    v39 = *(v0 + 792);
    v40 = *(v0 + 1368);
    sub_10009D934();
    v35(v37, v36, v38);
    v41 = sub_10009D904();
    v42 = sub_10009E824();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 1360);
    v45 = *(v0 + 912);
    v46 = *(v0 + 896);
    v47 = *(v0 + 888);
    v48 = *(v0 + 792);
    v49 = *(v0 + 752);
    v50 = *(v0 + 744);
    if (v43)
    {
      v227 = *(v0 + 792);
      v51 = swift_slowAlloc();
      v221 = v50;
      v52 = swift_slowAlloc();
      v247[0] = v52;
      *v51 = 136315138;
      sub_1000857AC(&qword_1000C0C90, &type metadata accessor for UUID);
      v215 = v44;
      v53 = sub_10009ED04();
      v55 = v54;
      v234 = *(v46 + 8);
      v234(v45, v47);
      v56 = sub_10002AD68(v53, v55, v247);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v41, v42, "TileControl.State.build(from:) Snapshot missing item with ID %s", v51, 0xCu);
      sub_100015F44(v52);

      v215(v227, v221);
    }

    else
    {

      v234 = *(v46 + 8);
      v234(v45, v47);
      v44(v48, v50);
    }

    v224 = *(v0 + 1344);
    v230 = *(v0 + 1352);
    v87 = *(v0 + 1336);
    v88 = *(v0 + 1208);
    v213 = *(v0 + 1032);
    v218 = *(v0 + 1056);
    v204 = *(v0 + 944);
    v208 = *(v0 + 960);
    v89 = *(v0 + 888);
    v90 = *(v0 + 736);
    v91 = *(v0 + 712);
    v92 = *(v0 + 464);
    v93 = *(v0 + 472);
    sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError);
    v94 = swift_allocError();
    (*(v93 + 104))(v95, enum case for HomeDataError.noSelectedAccessories(_:), v92);
    swift_willThrow();

    v239(v90, v91);
    v234(v204, v89);
    v234(v208, v89);
    v224(v218, v213);
    sub_100015F44((v0 + 16));
    v96 = *(v0 + 1256);
    *(v0 + 1416) = v94;
    *(v0 + 1408) = v96;
    v97 = *(v0 + 496);
    v98 = *(v0 + 464);
    *(v0 + 416) = v94;
    swift_errorRetain();
    sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
    if (swift_dynamicCast())
    {
      v100 = *(v0 + 488);
      v99 = *(v0 + 496);
      v101 = *(v0 + 464);
      v102 = *(v0 + 472);

      (*(v102 + 32))(v100, v99, v101);
      if (qword_1000C0AE0 != -1)
      {
        swift_once();
      }

      v103 = *(v0 + 768);
      v244 = *(v0 + 664);
      v104 = *(v0 + 648);
      v105 = *(v0 + 640);
      v107 = *(v0 + 480);
      v106 = *(v0 + 488);
      v108 = *(v0 + 464);
      v109 = *(v0 + 472);
      v110 = *(v0 + 456);
      v111 = qword_1000C8318;
      sub_10009D934();
      v112 = *(v109 + 16);
      *(v0 + 1424) = v112;
      *(v0 + 1432) = (v109 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v231 = v112;
      v112(v107, v106, v108);
      *(v0 + 1440) = (v104 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v96(v244, v110, v105);
      v113 = sub_10009D904();
      v237 = sub_10009E824();
      v114 = os_log_type_enabled(v113, v237);
      v115 = *(v0 + 768);
      v116 = *(v0 + 752);
      v117 = *(v0 + 664);
      v118 = *(v0 + 648);
      v241 = *(v0 + 640);
      v245 = *(v0 + 744);
      v120 = *(v0 + 472);
      v119 = *(v0 + 480);
      v121 = *(v0 + 464);
      if (v114)
      {
        v225 = *(v0 + 768);
        v122 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        v214 = swift_slowAlloc();
        v247[0] = v214;
        *v122 = 138412546;
        swift_allocError();
        v219 = v116;
        v231(v123, v119, v121);
        v124 = _swift_stdlib_bridgeErrorToNSError();
        v232 = v113;
        v127 = *(v120 + 8);
        v126 = v120 + 8;
        v125 = v127;
        v127(v119, v121);
        *(v122 + 4) = v124;
        *v209 = v124;
        *(v122 + 12) = 2080;
        sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
        v128 = sub_10009ED04();
        v130 = v129;
        (*(v118 + 8))(v117, v241);
        v131 = sub_10002AD68(v128, v130, v247);

        *(v122 + 14) = v131;
        _os_log_impl(&_mh_execute_header, v232, v237, "TileControl.State.build(from:) Error %@ building snapshot for %s", v122, 0x16u);
        sub_1000160CC(v209, &qword_1000C0E28, &qword_1000A1DC0);

        sub_100015F44(v214);

        (*(v219 + 8))(v225, v245);
      }

      else
      {

        (*(v118 + 8))(v117, v241);
        v154 = *(v120 + 8);
        v126 = v120 + 8;
        v125 = v154;
        v154(v119, v121);
        (*(v116 + 8))(v115, v245);
      }

      *(v0 + 1456) = v125;
      *(v0 + 1448) = v126;
      v155 = *(v0 + 1088);
      v156 = *(v0 + 1072);
      *(v0 + 1464) = sub_10009D1D4();
      v157 = sub_10009E714();
      v159 = v158;
      v160 = sub_10008286C;
    }

    else
    {
      v132 = *(v0 + 416);

      if (qword_1000C0AE0 != -1)
      {
        swift_once();
      }

      v133 = *(v0 + 760);
      v134 = *(v0 + 656);
      v135 = *(v0 + 648);
      v136 = *(v0 + 640);
      v137 = *(v0 + 456);
      v138 = qword_1000C8318;
      sub_10009D934();
      *(v0 + 1496) = (v135 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v96(v134, v137, v136);
      v139 = sub_10009D904();
      v140 = sub_10009E824();
      v141 = os_log_type_enabled(v139, v140);
      v142 = *(v0 + 760);
      v143 = *(v0 + 752);
      v144 = *(v0 + 744);
      v145 = *(v0 + 656);
      v146 = *(v0 + 648);
      v147 = *(v0 + 640);
      if (v141)
      {
        v246 = *(v0 + 744);
        v148 = swift_slowAlloc();
        v238 = v140;
        v149 = swift_slowAlloc();
        v247[0] = v149;
        *v148 = 136315138;
        sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
        v150 = sub_10009ED04();
        v242 = v142;
        v152 = v151;
        (*(v146 + 8))(v145, v147);
        v153 = sub_10002AD68(v150, v152, v247);

        *(v148 + 4) = v153;
        _os_log_impl(&_mh_execute_header, v139, v238, "TileControl.State.build(from:) Error building snapshot for %s", v148, 0xCu);
        sub_100015F44(v149);

        (*(v143 + 8))(v242, v246);
      }

      else
      {

        (*(v146 + 8))(v145, v147);
        (*(v143 + 8))(v142, v144);
      }

      v161 = *(v0 + 1088);
      v162 = *(v0 + 1072);
      *(v0 + 1504) = sub_10009D1D4();
      v157 = sub_10009E714();
      v159 = v163;
      v160 = sub_100082ED8;
    }

    return _swift_task_switch(v160, v157, v159);
  }
}

uint64_t sub_10008286C()
{
  v1 = v0[183];
  v2 = v0[133];

  v0[184] = sub_10009D004();

  return _swift_task_switch(sub_1000828E0, 0, 0);
}

uint64_t sub_1000828E0()
{
  v1 = *(v0 + 1440);
  (*(v0 + 1408))(*(v0 + 680), *(v0 + 456), *(v0 + 640));
  v2 = async function pointer to WidgetDataModel.queueForNextUpdate<A>(configuration:)[1];
  v3 = swift_task_alloc();
  *(v0 + 1480) = v3;
  v4 = sub_1000857AC(&qword_1000C29F8, &type metadata accessor for ToggleControlConfigurationIntent);
  *(v0 + 1488) = v4;
  *v3 = v0;
  v3[1] = sub_1000829D4;
  v5 = *(v0 + 1472);
  v6 = *(v0 + 680);
  v7 = *(v0 + 640);

  return WidgetDataModel.queueForNextUpdate<A>(configuration:)(v6, v7, v4);
}

uint64_t sub_1000829D4()
{
  v1 = *(*v0 + 1480);
  v2 = *(*v0 + 1472);
  v4 = *v0;

  return _swift_task_switch(sub_100082AEC, 0, 0);
}

uint64_t sub_100082AEC()
{
  v66 = v0[181];
  v68 = v0[182];
  v64 = v0[180];
  v1 = v0[179];
  v2 = v0[178];
  v60 = v0[186];
  v62 = v0[176];
  v3 = v0[130];
  v54 = v0[129];
  v56 = v0[80];
  v4 = v0[61];
  v5 = v0[58];
  v6 = v0[59];
  v7 = v0[56];
  v58 = v0[57];
  v8 = _s5StateVMa();
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v9 = v8[5];
  v2(v7 + v9, v4, v5);
  (*(v6 + 56))(v7 + v9, 0, 1, v5);
  (*(v3 + 56))(v7 + v8[6], 1, 1, v54);
  v10 = (v7 + v8[8]);
  v10[3] = v56;
  v10[4] = v60;
  v11 = sub_100031E00(v10);
  v62(v11, v58, v56);
  v12 = v7 + v8[7];
  sub_10009CEA4();
  v68(v4, v5);
  v13 = v0[52];

  v14 = v0[132];
  v15 = v0[131];
  v16 = v0[128];
  v17 = v0[127];
  v18 = v0[126];
  v19 = v0[125];
  v20 = v0[124];
  v21 = v0[123];
  v22 = v0[120];
  v23 = v0[119];
  v26 = v0[118];
  v27 = v0[117];
  v28 = v0[116];
  v29 = v0[115];
  v30 = v0[114];
  v31 = v0[113];
  v32 = v0[110];
  v33 = v0[109];
  v34 = v0[106];
  v35 = v0[103];
  v36 = v0[102];
  v37 = v0[101];
  v38 = v0[100];
  v39 = v0[99];
  v40 = v0[98];
  v41 = v0[97];
  v42 = v0[96];
  v43 = v0[95];
  v44 = v0[92];
  v45 = v0[91];
  v46 = v0[88];
  v47 = v0[87];
  v48 = v0[85];
  v49 = v0[84];
  v50 = v0[83];
  v51 = v0[82];
  v52 = v0[79];
  v53 = v0[76];
  v55 = v0[75];
  v57 = v0[72];
  v59 = v0[69];
  v61 = v0[66];
  v63 = v0[63];
  v65 = v0[62];
  v67 = v0[61];
  v69 = v0[60];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100082ED8()
{
  v1 = v0[188];
  v2 = v0[133];

  v0[189] = sub_10009D004();

  return _swift_task_switch(sub_100082F4C, 0, 0);
}

uint64_t sub_100082F4C()
{
  v1 = *(v0 + 1496);
  (*(v0 + 1408))(*(v0 + 680), *(v0 + 456), *(v0 + 640));
  v2 = async function pointer to WidgetDataModel.queueForNextUpdate<A>(configuration:)[1];
  v3 = swift_task_alloc();
  *(v0 + 1520) = v3;
  v4 = sub_1000857AC(&qword_1000C29F8, &type metadata accessor for ToggleControlConfigurationIntent);
  *(v0 + 1528) = v4;
  *v3 = v0;
  v3[1] = sub_100083040;
  v5 = *(v0 + 1512);
  v6 = *(v0 + 680);
  v7 = *(v0 + 640);

  return WidgetDataModel.queueForNextUpdate<A>(configuration:)(v6, v7, v4);
}

uint64_t sub_100083040()
{
  v1 = *(*v0 + 1520);
  v2 = *(*v0 + 1512);
  v4 = *v0;

  return _swift_task_switch(sub_100083158, 0, 0);
}

uint64_t sub_100083158()
{
  v1 = v0[191];
  v60 = v0[187];
  v62 = v0[177];
  v58 = v0[176];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[80];
  v5 = v0[58];
  v6 = v0[59];
  v8 = v0[56];
  v7 = v0[57];
  v9 = _s5StateVMa();
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  (*(v6 + 56))(v8 + v9[5], 1, 1, v5);
  (*(v2 + 56))(v8 + v9[6], 1, 1, v3);
  v10 = (v8 + v9[8]);
  v10[3] = v4;
  v10[4] = v1;
  v11 = sub_100031E00(v10);
  v58(v11, v7, v4);
  v12 = v8 + v9[7];
  sub_10009CEA4();

  v13 = v0[132];
  v14 = v0[131];
  v15 = v0[128];
  v16 = v0[127];
  v17 = v0[126];
  v18 = v0[125];
  v19 = v0[124];
  v20 = v0[123];
  v21 = v0[120];
  v22 = v0[119];
  v25 = v0[118];
  v26 = v0[117];
  v27 = v0[116];
  v28 = v0[115];
  v29 = v0[114];
  v30 = v0[113];
  v31 = v0[110];
  v32 = v0[109];
  v33 = v0[106];
  v34 = v0[103];
  v35 = v0[102];
  v36 = v0[101];
  v37 = v0[100];
  v38 = v0[99];
  v39 = v0[98];
  v40 = v0[97];
  v41 = v0[96];
  v42 = v0[95];
  v43 = v0[92];
  v44 = v0[91];
  v45 = v0[88];
  v46 = v0[87];
  v47 = v0[85];
  v48 = v0[84];
  v49 = v0[83];
  v50 = v0[82];
  v51 = v0[79];
  v52 = v0[76];
  v53 = v0[75];
  v54 = v0[72];
  v55 = v0[69];
  v56 = v0[66];
  v57 = v0[63];
  v59 = v0[62];
  v61 = v0[61];
  v63 = v0[60];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000834F8()
{
  v115 = v0;
  v1 = v0[128];
  (*(v0[130] + 56))(v1, 1, 1, v0[129]);
  sub_1000160CC(v1, &qword_1000C1470, &qword_1000A1108);
  v2 = &NSObject__properties;
  if (qword_1000C0AE0 != -1)
  {
    swift_once();
  }

  v3 = v0[97];
  v4 = v0[84];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[57];
  v8 = qword_1000C8318;
  sub_10009D934();
  v9 = *(v5 + 16);
  v9(v4, v7, v6);
  v10 = sub_10009D904();
  v108 = sub_10009E824();
  v11 = os_log_type_enabled(v10, v108);
  v12 = v0[97];
  v13 = v0[94];
  v14 = v0[93];
  v15 = v0[84];
  v16 = v0[81];
  v17 = v0[80];
  v111 = v9;
  if (v11)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v114[0] = v19;
    *v18 = 136315138;
    sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
    v103 = v12;
    v105 = v14;
    v20 = sub_10009ED04();
    v22 = v21;
    (*(v16 + 8))(v15, v17);
    v23 = sub_10002AD68(v20, v22, v114);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v10, v108, "TileControl.State.build(from:) Missing configuration for intent %s", v18, 0xCu);
    sub_100015F44(v19);
    v2 = &NSObject__properties;

    v9 = v111;

    (*(v13 + 8))(v103, v105);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v24 = v0[58];
  v25 = v0[59];
  sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError);
  v26 = swift_allocError();
  (*(v25 + 104))(v27, enum case for HomeDataError.noSelectedAccessories(_:), v24);
  swift_willThrow();
  v0[177] = v26;
  v0[176] = v9;
  v28 = v0[62];
  v29 = v0[58];
  v0[52] = v26;
  swift_errorRetain();
  sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
  if (swift_dynamicCast())
  {
    v31 = v0[61];
    v30 = v0[62];
    v32 = v0[58];
    v33 = v0[59];

    (*(v33 + 32))(v31, v30, v32);
    if (*&v2[348] != -1)
    {
      swift_once();
    }

    v34 = v0[96];
    v35 = v0[83];
    v36 = v0[81];
    v37 = v0[80];
    v39 = v0[60];
    v38 = v0[61];
    v40 = v0[58];
    v41 = v0[59];
    v42 = v0[57];
    v43 = qword_1000C8318;
    sub_10009D934();
    v44 = *(v41 + 16);
    v0[178] = v44;
    v0[179] = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    log = v44;
    (v44)(v39, v38, v40);
    v0[180] = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v111(v35, v42, v37);
    v45 = sub_10009D904();
    v104 = sub_10009E824();
    v46 = os_log_type_enabled(v45, v104);
    v47 = v0[96];
    v48 = v0[94];
    v49 = v0[83];
    v50 = v0[81];
    v51 = v0[80];
    v109 = v51;
    v112 = v0[93];
    v53 = v0[59];
    v52 = v0[60];
    v54 = v0[58];
    if (v46)
    {
      v100 = v0[96];
      v55 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v114[0] = v99;
      *v55 = 138412546;
      swift_allocError();
      v106 = v48;
      (log)(v56, v52, v54);
      v57 = _swift_stdlib_bridgeErrorToNSError();
      loga = v45;
      v60 = *(v53 + 8);
      v59 = v53 + 8;
      v58 = v60;
      v60(v52, v54);
      *(v55 + 4) = v57;
      *v98 = v57;
      *(v55 + 12) = 2080;
      sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
      v61 = sub_10009ED04();
      v63 = v62;
      (*(v50 + 8))(v49, v109);
      v64 = sub_10002AD68(v61, v63, v114);

      *(v55 + 14) = v64;
      _os_log_impl(&_mh_execute_header, loga, v104, "TileControl.State.build(from:) Error %@ building snapshot for %s", v55, 0x16u);
      sub_1000160CC(v98, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v99);

      (*(v106 + 8))(v100, v112);
    }

    else
    {

      (*(v50 + 8))(v49, v109);
      v87 = *(v53 + 8);
      v59 = v53 + 8;
      v58 = v87;
      v87(v52, v54);
      (*(v48 + 8))(v47, v112);
    }

    v0[182] = v58;
    v0[181] = v59;
    v88 = v0[136];
    v89 = v0[134];
    v0[183] = sub_10009D1D4();
    v90 = sub_10009E714();
    v92 = v91;
    v93 = sub_10008286C;
  }

  else
  {
    v65 = v0[52];

    if (*&v2[348] != -1)
    {
      swift_once();
    }

    v66 = v0[95];
    v67 = v0[82];
    v68 = v0[81];
    v69 = v0[80];
    v70 = v0[57];
    v71 = qword_1000C8318;
    sub_10009D934();
    v0[187] = (v68 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v67, v70, v69);
    v72 = sub_10009D904();
    v73 = sub_10009E824();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v0[95];
    v76 = v0[94];
    v77 = v0[93];
    v78 = v0[82];
    v79 = v0[81];
    v80 = v0[80];
    if (v74)
    {
      v113 = v0[93];
      v81 = swift_slowAlloc();
      v107 = v73;
      v82 = swift_slowAlloc();
      v114[0] = v82;
      *v81 = 136315138;
      sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
      v83 = sub_10009ED04();
      v110 = v75;
      v85 = v84;
      (*(v79 + 8))(v78, v80);
      v86 = sub_10002AD68(v83, v85, v114);

      *(v81 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v72, v107, "TileControl.State.build(from:) Error building snapshot for %s", v81, 0xCu);
      sub_100015F44(v82);

      (*(v76 + 8))(v110, v113);
    }

    else
    {

      (*(v79 + 8))(v78, v80);
      (*(v76 + 8))(v75, v77);
    }

    v94 = v0[136];
    v95 = v0[134];
    v0[188] = sub_10009D1D4();
    v90 = sub_10009E714();
    v92 = v96;
    v93 = sub_100082ED8;
  }

  return _swift_task_switch(v93, v90, v92);
}

uint64_t sub_100083E58()
{
  v95 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 960);
  v5 = *(v0 + 944);
  v6 = *(v0 + 896);
  v7 = *(v0 + 888);

  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);
  (*(v2 + 8))(v1, v3);
  v9 = *(v0 + 1328);
  v10 = *(v0 + 1256);
  *(v0 + 1416) = v9;
  *(v0 + 1408) = v10;
  v11 = *(v0 + 496);
  v12 = *(v0 + 464);
  *(v0 + 416) = v9;
  swift_errorRetain();
  sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
  if (swift_dynamicCast())
  {
    v14 = *(v0 + 488);
    v13 = *(v0 + 496);
    v15 = *(v0 + 464);
    v16 = *(v0 + 472);

    (*(v16 + 32))(v14, v13, v15);
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 768);
    v91 = *(v0 + 664);
    v18 = *(v0 + 648);
    v19 = *(v0 + 640);
    v21 = *(v0 + 480);
    v20 = *(v0 + 488);
    v22 = *(v0 + 464);
    v23 = *(v0 + 472);
    v24 = *(v0 + 456);
    v25 = qword_1000C8318;
    sub_10009D934();
    v26 = *(v23 + 16);
    *(v0 + 1424) = v26;
    *(v0 + 1432) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v86 = v26;
    v26(v21, v20, v22);
    *(v0 + 1440) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v91, v24, v19);
    v27 = sub_10009D904();
    v87 = sub_10009E824();
    log = v27;
    v28 = os_log_type_enabled(v27, v87);
    v29 = *(v0 + 768);
    v30 = *(v0 + 752);
    v92 = *(v0 + 744);
    v31 = *(v0 + 664);
    v32 = *(v0 + 648);
    v33 = *(v0 + 640);
    v35 = *(v0 + 472);
    v34 = *(v0 + 480);
    v36 = *(v0 + 464);
    if (v28)
    {
      v85 = *(v0 + 752);
      v37 = swift_slowAlloc();
      v82 = v31;
      v38 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v94 = v84;
      *v37 = 138412546;
      sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError);
      swift_allocError();
      v83 = v29;
      v86(v39, v34, v36);
      v40 = _swift_stdlib_bridgeErrorToNSError();
      v43 = *(v35 + 8);
      v41 = v35 + 8;
      v42 = v43;
      v43(v34, v36);
      *(v37 + 4) = v40;
      *v38 = v40;
      v44 = v38;
      *(v37 + 12) = 2080;
      sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
      v45 = sub_10009ED04();
      v47 = v46;
      (*(v32 + 8))(v82, v33);
      v48 = sub_10002AD68(v45, v47, &v94);

      *(v37 + 14) = v48;
      _os_log_impl(&_mh_execute_header, log, v87, "TileControl.State.build(from:) Error %@ building snapshot for %s", v37, 0x16u);
      sub_1000160CC(v44, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v84);

      (*(v85 + 8))(v83, v92);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
      v71 = *(v35 + 8);
      v41 = v35 + 8;
      v42 = v71;
      v71(v34, v36);
      (*(v30 + 8))(v29, v92);
    }

    *(v0 + 1456) = v42;
    *(v0 + 1448) = v41;
    v72 = *(v0 + 1088);
    v73 = *(v0 + 1072);
    *(v0 + 1464) = sub_10009D1D4();
    v74 = sub_10009E714();
    v76 = v75;
    v77 = sub_10008286C;
  }

  else
  {
    v49 = *(v0 + 416);

    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v50 = *(v0 + 760);
    v51 = *(v0 + 656);
    v52 = *(v0 + 648);
    v53 = *(v0 + 640);
    v54 = *(v0 + 456);
    v55 = qword_1000C8318;
    sub_10009D934();
    *(v0 + 1496) = (v52 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v51, v54, v53);
    v56 = sub_10009D904();
    v57 = sub_10009E824();
    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v0 + 760);
    v60 = *(v0 + 752);
    v61 = *(v0 + 744);
    v62 = *(v0 + 656);
    v63 = *(v0 + 648);
    v64 = *(v0 + 640);
    if (v58)
    {
      v93 = *(v0 + 744);
      v65 = swift_slowAlloc();
      v88 = v57;
      v66 = swift_slowAlloc();
      v94 = v66;
      *v65 = 136315138;
      sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
      v67 = sub_10009ED04();
      loga = v59;
      v69 = v68;
      (*(v63 + 8))(v62, v64);
      v70 = sub_10002AD68(v67, v69, &v94);

      *(v65 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v56, v88, "TileControl.State.build(from:) Error building snapshot for %s", v65, 0xCu);
      sub_100015F44(v66);

      (*(v60 + 8))(loga, v93);
    }

    else
    {

      (*(v63 + 8))(v62, v64);
      (*(v60 + 8))(v59, v61);
    }

    v78 = *(v0 + 1088);
    v79 = *(v0 + 1072);
    *(v0 + 1504) = sub_10009D1D4();
    v74 = sub_10009E714();
    v76 = v80;
    v77 = sub_100082ED8;
  }

  return _swift_task_switch(v77, v74, v76);
}

uint64_t sub_1000845A8()
{
  v100 = v0;
  loga = *(v0 + 1344);
  v95 = *(v0 + 1352);
  v1 = *(v0 + 1336);
  v89 = *(v0 + 1056);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 960);
  v4 = *(v0 + 944);
  v5 = *(v0 + 896);
  v6 = *(v0 + 888);
  v7 = *(v0 + 736);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);

  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);
  (loga)(v89, v2);
  sub_100015F44((v0 + 16));
  v11 = *(v0 + 1400);
  v12 = *(v0 + 1256);
  *(v0 + 1416) = v11;
  *(v0 + 1408) = v12;
  v13 = *(v0 + 496);
  v14 = *(v0 + 464);
  *(v0 + 416) = v11;
  swift_errorRetain();
  sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 488);
    v15 = *(v0 + 496);
    v17 = *(v0 + 464);
    v18 = *(v0 + 472);

    (*(v18 + 32))(v16, v15, v17);
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 768);
    v96 = *(v0 + 664);
    v20 = *(v0 + 648);
    v21 = *(v0 + 640);
    v23 = *(v0 + 480);
    v22 = *(v0 + 488);
    v24 = *(v0 + 464);
    v25 = *(v0 + 472);
    v26 = *(v0 + 456);
    v27 = qword_1000C8318;
    sub_10009D934();
    v28 = *(v25 + 16);
    *(v0 + 1424) = v28;
    *(v0 + 1432) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v88 = v28;
    v28(v23, v22, v24);
    *(v0 + 1440) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v96, v26, v21);
    v29 = sub_10009D904();
    v90 = sub_10009E824();
    log = v29;
    v30 = os_log_type_enabled(v29, v90);
    v31 = *(v0 + 768);
    v32 = *(v0 + 752);
    v97 = *(v0 + 744);
    v33 = *(v0 + 664);
    v34 = *(v0 + 648);
    v35 = *(v0 + 640);
    v37 = *(v0 + 472);
    v36 = *(v0 + 480);
    v38 = *(v0 + 464);
    if (v30)
    {
      v87 = *(v0 + 752);
      v39 = swift_slowAlloc();
      v84 = v33;
      v40 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v99 = v86;
      *v39 = 138412546;
      sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError);
      swift_allocError();
      v85 = v31;
      v88(v41, v36, v38);
      v42 = _swift_stdlib_bridgeErrorToNSError();
      v45 = *(v37 + 8);
      v43 = v37 + 8;
      v44 = v45;
      v45(v36, v38);
      *(v39 + 4) = v42;
      *v40 = v42;
      v46 = v40;
      *(v39 + 12) = 2080;
      sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
      v47 = sub_10009ED04();
      v49 = v48;
      (*(v34 + 8))(v84, v35);
      v50 = sub_10002AD68(v47, v49, &v99);

      *(v39 + 14) = v50;
      _os_log_impl(&_mh_execute_header, log, v90, "TileControl.State.build(from:) Error %@ building snapshot for %s", v39, 0x16u);
      sub_1000160CC(v46, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v86);

      (*(v87 + 8))(v85, v97);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
      v73 = *(v37 + 8);
      v43 = v37 + 8;
      v44 = v73;
      v73(v36, v38);
      (*(v32 + 8))(v31, v97);
    }

    *(v0 + 1456) = v44;
    *(v0 + 1448) = v43;
    v74 = *(v0 + 1088);
    v75 = *(v0 + 1072);
    *(v0 + 1464) = sub_10009D1D4();
    v76 = sub_10009E714();
    v78 = v77;
    v79 = sub_10008286C;
  }

  else
  {
    v51 = *(v0 + 416);

    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v52 = *(v0 + 760);
    v53 = *(v0 + 656);
    v54 = *(v0 + 648);
    v55 = *(v0 + 640);
    v56 = *(v0 + 456);
    v57 = qword_1000C8318;
    sub_10009D934();
    *(v0 + 1496) = (v54 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v53, v56, v55);
    v58 = sub_10009D904();
    v59 = sub_10009E824();
    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 760);
    v62 = *(v0 + 752);
    v63 = *(v0 + 744);
    v64 = *(v0 + 656);
    v65 = *(v0 + 648);
    v66 = *(v0 + 640);
    if (v60)
    {
      v98 = *(v0 + 744);
      v67 = swift_slowAlloc();
      v91 = v59;
      v68 = swift_slowAlloc();
      v99 = v68;
      *v67 = 136315138;
      sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
      v69 = sub_10009ED04();
      logb = v61;
      v71 = v70;
      (*(v65 + 8))(v64, v66);
      v72 = sub_10002AD68(v69, v71, &v99);

      *(v67 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v58, v91, "TileControl.State.build(from:) Error building snapshot for %s", v67, 0xCu);
      sub_100015F44(v68);

      (*(v62 + 8))(logb, v98);
    }

    else
    {

      (*(v65 + 8))(v64, v66);
      (*(v62 + 8))(v61, v63);
    }

    v80 = *(v0 + 1088);
    v81 = *(v0 + 1072);
    *(v0 + 1504) = sub_10009D1D4();
    v76 = sub_10009E714();
    v78 = v82;
    v79 = sub_100082ED8;
  }

  return _swift_task_switch(v79, v76, v78);
}

uint64_t sub_100084D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10009D894();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009D924();
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C0AE0 != -1)
  {
    swift_once();
  }

  v13 = qword_1000C8318;
  sub_10009D934();
  v36 = *(v5 + 16);
  v37 = v5 + 16;
  v36(v8, a1, v4);
  v14 = sub_10009D904();
  v15 = sub_10009E844();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = v4;
    v17 = v16;
    v34 = swift_slowAlloc();
    v39 = v34;
    *v17 = 136315138;
    sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
    v18 = sub_10009ED04();
    v33 = v9;
    v19 = a1;
    v21 = v20;
    (*(v5 + 8))(v8, v38);
    v22 = sub_10002AD68(v18, v21, &v39);
    a1 = v19;

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "TileControl.StateProvider.previewValue(configuration: %s)", v17, 0xCu);
    sub_100015F44(v34);

    v4 = v38;

    (*(v35 + 8))(v12, v33);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v35 + 8))(v12, v9);
  }

  v23 = _s5StateVMa();
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  v24 = v23[5];
  v25 = sub_10009D964();
  (*(*(v25 - 8) + 56))(a2 + v24, 1, 1, v25);
  v26 = v23[6];
  v27 = sub_10009CF94();
  (*(*(v27 - 8) + 56))(a2 + v26, 1, 1, v27);
  v28 = (a2 + v23[8]);
  v28[3] = v4;
  v28[4] = sub_1000857AC(&qword_1000C29F8, &type metadata accessor for ToggleControlConfigurationIntent);
  v29 = sub_100031E00(v28);
  v36(v29, a1, v4);
  v30 = a2 + v23[7];
  return sub_10009CEA4();
}

uint64_t sub_100085170(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_10009D894();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_10009D924();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10008528C, 0, 0);
}

uint64_t sub_10008528C()
{
  v30 = v0;
  if (qword_1000C0AE0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = qword_1000C8318;
  sub_10009D934();
  (*(v3 + 16))(v2, v5, v4);
  v7 = sub_10009D904();
  v8 = sub_10009E844();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[6];
  v13 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  if (v9)
  {
    v28 = v0[7];
    v16 = swift_slowAlloc();
    v26 = v8;
    v17 = swift_slowAlloc();
    v29 = v17;
    *v16 = 136315138;
    sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent);
    v18 = sub_10009ED04();
    v27 = v10;
    v20 = v19;
    (*(v14 + 8))(v12, v15);
    v21 = sub_10002AD68(v18, v20, &v29);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v7, v26, "TileControl.StateProvider.currentValue(configuration: %s)", v16, 0xCu);
    sub_100015F44(v17);

    (*(v11 + 8))(v27, v28);
  }

  else
  {

    (*(v14 + 8))(v12, v15);
    (*(v11 + 8))(v10, v13);
  }

  v22 = swift_task_alloc();
  v0[10] = v22;
  *v22 = v0;
  v22[1] = sub_100085528;
  v23 = v0[2];
  v24 = v0[3];

  return sub_10007D850(v23, v24);
}

uint64_t sub_100085528()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 48);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10008565C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001EAAC;

  return sub_100085170(a1, a2);
}

unint64_t sub_1000856FC()
{
  result = qword_1000C2A20;
  if (!qword_1000C2A20)
  {
    sub_10000375C(&qword_1000C2A18, &qword_1000A3368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2A20);
  }

  return result;
}

unint64_t sub_100085760()
{
  result = qword_1000C1D48;
  if (!qword_1000C1D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C1D48);
  }

  return result;
}

uint64_t sub_1000857AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000857F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C29D0, &qword_1000A3340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085864(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7571536C6C616D73;
  if (v2 != 1)
  {
    v3 = 0x757153656772616CLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6C676E6174636572;
  }

  if (v2)
  {
    v5 = 0xEB00000000657261;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  v6 = 0x7571536C6C616D73;
  if (*a2 != 1)
  {
    v6 = 0x757153656772616CLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6C676E6174636572;
  }

  if (*a2)
  {
    v8 = 0xEB00000000657261;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10009ED34();
  }

  return v9 & 1;
}

Swift::Int sub_10008595C()
{
  v1 = *v0;
  sub_10009EDD4();
  sub_10009E624();

  return sub_10009EE04();
}

uint64_t sub_100085A14()
{
  *v0;
  *v0;
  sub_10009E624();
}

Swift::Int sub_100085AB8()
{
  v1 = *v0;
  sub_10009EDD4();
  sub_10009E624();

  return sub_10009EE04();
}

uint64_t sub_100085B6C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100088D08(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100085B9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x7571536C6C616D73;
  if (v2 != 1)
  {
    v4 = 0x757153656772616CLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C676E6174636572;
  }

  if (!v5)
  {
    v3 = 0xEB00000000657261;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_100085C78()
{
  result = qword_1000C2A40;
  if (!qword_1000C2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2A40);
  }

  return result;
}

uint64_t sub_100085CCC()
{
  v1 = v0;
  v2 = sub_10009DCB4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for AccessoryAndSceneEntity();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SingleTapTargetTileView(0);
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000890A8(v1, v8, type metadata accessor for AccessoryAndSceneEntity);
  v13 = type metadata accessor for TileView(0);
  v14 = (v1 + *(v13 + 28));
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v1 + *(v13 + 24));
  *v12 = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  v18 = v12 + v9[5];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = v9[6];
  *(v12 + v19) = swift_getKeyPath();
  sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  swift_storeEnumTagMultiPayload();
  v20 = v12 + v9[7];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  sub_1000890A8(v8, v12 + v9[8], type metadata accessor for AccessoryAndSceneEntity);
  v21 = (v12 + v9[11]);
  *v21 = v15;
  v21[1] = v16;
  *(v12 + v9[10]) = v17;
  sub_1000890A8(&v8[*(v5 + 32)], v12 + v9[9], type metadata accessor for WidgetTileInfo);
  sub_100089110(v8, type metadata accessor for AccessoryAndSceneEntity);
  sub_10009DCA4();
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_10009DC94(v32);
  v22 = v1 + *(v5 + 32);
  v23 = type metadata accessor for WidgetTileInfo();
  v24 = (v22 + *(v23 + 28));
  v25 = v24[1];
  if (v25)
  {
    v26 = *v24;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = v24[1];
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v33._countAndFlagsBits = v26;
  v33._object = v27;
  sub_10009DC84(v33);

  v34._countAndFlagsBits = 44;
  v34._object = 0xE100000000000000;
  sub_10009DC94(v34);
  sub_10009DC84(*(v22 + *(v23 + 24)));
  v35._countAndFlagsBits = 44;
  v35._object = 0xE100000000000000;
  sub_10009DC94(v35);
  v28._countAndFlagsBits = sub_10008CFDC();
  if (v28._object)
  {
    object = v28._object;
  }

  else
  {
    v28._countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v28._object = object;
  sub_10009DC84(v28);

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10009DC94(v36);
  sub_10009DCD4();
  sub_100089754(&qword_1000C2AE0, type metadata accessor for SingleTapTargetTileView);
  sub_10009E0C4();

  return sub_100089110(v12, type metadata accessor for SingleTapTargetTileView);
}

uint64_t sub_1000860A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v87 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v86 - v7;
  v9 = sub_10009CE24();
  v91 = *(v9 - 8);
  v10 = *(v91 + 64);
  __chkstk_darwin(v9);
  v94 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_100003714(&qword_1000C2BB0, &qword_1000A3610);
  v12 = *(*(v106 - 8) + 64);
  v13 = __chkstk_darwin(v106);
  v15 = (&v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v89 = &v86 - v16;
  v103 = sub_100003714(&qword_1000C2BB8, &qword_1000A3618);
  v17 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v105 = &v86 - v18;
  v104 = type metadata accessor for WidgetTileViewToggleStyle(0);
  v19 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v99 = (&v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v86 - v23;
  v93 = type metadata accessor for WidgetPredictionAnalyticsInfo();
  v92 = *(v93 - 8);
  v25 = *(v92 + 64);
  __chkstk_darwin(v93);
  v88 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for AccessoryAndSceneEntity();
  v27 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v100 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10009DC44();
  v86 = *(v29 - 8);
  v30 = *(v86 + 64);
  __chkstk_darwin(v29);
  v32 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100003714(&qword_1000C2BC0, &qword_1000A3628);
  v96 = *(v101 - 8);
  v33 = *(v96 + 64);
  __chkstk_darwin(v101);
  v95 = &v86 - v34;
  v102 = sub_100003714(&qword_1000C2BC8, &qword_1000A3630);
  v98 = *(v102 - 8);
  v35 = *(v98 + 64);
  __chkstk_darwin(v102);
  v97 = &v86 - v36;
  v37 = type metadata accessor for SingleTapTargetTileView(0);
  v38 = a1 + v37[9];
  v39 = type metadata accessor for WidgetTileInfo();
  if (*(v38 + *(v39 + 56)) != 1)
  {
    v48 = a1;
    v49 = a1 + v37[8];
    sub_1000259B8();
    v50 = v91;
    v51 = *(v91 + 48);
    if (v51(v8, 1, v9) == 1)
    {
      v52 = v87;
      sub_10009CE14();
      result = v51(v52, 1, v9);
      v54 = v94;
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      (*(v50 + 32))(v94, v52, v9);
      if (v51(v8, 1, v9) != 1)
      {
        sub_1000160CC(v8, &qword_1000C0FE0, &qword_1000A11A0);
      }
    }

    else
    {
      v54 = v94;
      (*(v50 + 32))(v94, v8, v9);
    }

    *v15 = swift_getKeyPath();
    sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
    swift_storeEnumTagMultiPayload();
    v74 = v106;
    v75 = v15 + *(v106 + 36);
    *v75 = swift_getKeyPath();
    v75[8] = 0;
    (*(v50 + 16))(v15 + *(v74 + 40), v54, v9);
    v76 = v15 + *(v74 + 44);
    sub_100086E18(v48);
    (*(v50 + 8))(v54, v9);
    v77 = v89;
    sub_10005B0FC(v15, v89, &qword_1000C2BB0, &qword_1000A3610);
    sub_10001E0A8(v77, v105, &qword_1000C2BB0, &qword_1000A3610);
    swift_storeEnumTagMultiPayload();
    v78 = sub_10001CDC8(&qword_1000C2BD0, &qword_1000C2BC0, &qword_1000A3628);
    v79 = sub_100089754(&qword_1000C1A20, type metadata accessor for WidgetTileViewToggleStyle);
    v108 = v101;
    v109 = v104;
    v110 = v78;
    v111 = v79;
    swift_getOpaqueTypeConformance2();
    sub_10001CDC8(&qword_1000C2BD8, &qword_1000C2BB0, &qword_1000A3610);
    sub_10009DD94();
    return sub_1000160CC(v77, &qword_1000C2BB0, &qword_1000A3610);
  }

  v40 = v39;
  v41 = a1 + v37[7];
  v42 = *v41;
  if (*(v41 + 8) != 1)
  {

    sub_10009E834();
    v43 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v42, 0);
    (*(v86 + 8))(v32, v29);
  }

  v44 = v92;
  v45 = a1 + v37[8];
  v46 = v100;
  sub_1000890A8(v45, v100, type metadata accessor for AccessoryAndSceneEntity);
  sub_10001E0A8(v45 + *(v90 + 24) + *(v40 + 76), v24, &qword_1000C0C28, &qword_1000A3620);
  v47 = v93;
  if ((*(v44 + 48))(v24, 1, v93) == 1)
  {
    sub_1000160CC(v24, &qword_1000C0C28, &qword_1000A3620);
    v58 = 0;
    v59 = 0;
  }

  else
  {
    (*(v44 + 32))(v88, v24, v47);
    v55 = sub_10009CCB4();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    sub_10009CCA4();
    sub_100089754(&qword_1000C1A48, type metadata accessor for WidgetPredictionAnalyticsInfo);
    v80 = sub_10009CC94();
    v82 = v81;

    v83 = sub_10009CE64(0);
    v85 = v84;
    sub_100033B34(v80, v82);
    (*(v44 + 8))(v88, v47);
    v59 = v85;
    v46 = v100;
    v58 = v83;
  }

  v108 = sub_100078634(v46, v58, v59);
  v109 = v60;
  __chkstk_darwin(v108);
  *(&v86 - 2) = a1;
  sub_100003714(&qword_1000C2BE0, &qword_1000A3638);
  sub_1000897D4();
  sub_1000598E8();
  v61 = v95;
  sub_10009E264();
  v62 = (a1 + v37[11]);
  v63 = *v62;
  v64 = v62[1];
  v65 = v104;
  v66 = v99;
  sub_1000890A8(v45, v99 + *(v104 + 20), type metadata accessor for AccessoryAndSceneEntity);
  *v66 = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  v67 = (v66 + *(v65 + 24));
  *v67 = v63;
  v67[1] = v64;
  v68 = sub_10001CDC8(&qword_1000C2BD0, &qword_1000C2BC0, &qword_1000A3628);
  v69 = sub_100089754(&qword_1000C1A20, type metadata accessor for WidgetTileViewToggleStyle);
  v70 = v97;
  v71 = v101;
  sub_10009E084();
  sub_100089110(v66, type metadata accessor for WidgetTileViewToggleStyle);
  (*(v96 + 8))(v61, v71);
  v72 = v98;
  v73 = v102;
  (*(v98 + 16))(v105, v70, v102);
  swift_storeEnumTagMultiPayload();
  v108 = v71;
  v109 = v65;
  v110 = v68;
  v111 = v69;
  swift_getOpaqueTypeConformance2();
  sub_10001CDC8(&qword_1000C2BD8, &qword_1000C2BB0, &qword_1000A3610);
  sub_10009DD94();
  return (*(v72 + 8))(v70, v73);
}

uint64_t sub_100086E18(uint64_t a1)
{
  v2 = type metadata accessor for SmallSquareTileView();
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003714(&qword_1000C2C00, &qword_1000A3640);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = type metadata accessor for RectangleTileView(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SingleTapTargetTileView(0);
  if (!*(a1 + v14[10]))
  {

    goto LABEL_5;
  }

  v32 = v5;
  v15 = sub_10009ED34();

  if (v15)
  {
LABEL_5:
    sub_1000890A8(a1 + v14[8], &v13[v10[7]], type metadata accessor for AccessoryAndSceneEntity);
    v24 = (a1 + v14[11]);
    v25 = *v24;
    v26 = v24[1];
    *&v13[v10[5]] = swift_getKeyPath();
    sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *v13 = swift_getKeyPath();
    v13[8] = 0;
    v28 = &v13[v10[6]];
    *v28 = KeyPath;
    v28[8] = 0;
    v29 = &v13[v10[8]];
    *v29 = v25;
    *(v29 + 1) = v26;
    sub_1000890A8(v13, v9, type metadata accessor for RectangleTileView);
    swift_storeEnumTagMultiPayload();
    sub_100089754(&qword_1000C2BF0, type metadata accessor for RectangleTileView);
    sub_100089754(&qword_1000C2BF8, type metadata accessor for SmallSquareTileView);
    sub_10009DD94();
    v22 = type metadata accessor for RectangleTileView;
    v23 = v13;
    return sub_100089110(v23, v22);
  }

  v16 = v32;
  sub_1000890A8(a1 + v14[8], &v32[v2[9]], type metadata accessor for AccessoryAndSceneEntity);
  v17 = (a1 + v14[11]);
  v18 = *v17;
  v19 = v17[1];
  v20 = swift_getKeyPath();
  *(v16 + v2[6]) = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  *(v16 + v2[7]) = swift_getKeyPath();
  sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  swift_storeEnumTagMultiPayload();
  *(v16 + v2[8]) = swift_getKeyPath();
  sub_100003714(&qword_1000C2C08, &qword_1000A3678);
  swift_storeEnumTagMultiPayload();
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(v16 + 16) = v20;
  *(v16 + 24) = 0;
  v21 = (v16 + v2[10]);
  *v21 = v18;
  v21[1] = v19;
  sub_1000890A8(v16, v9, type metadata accessor for SmallSquareTileView);
  swift_storeEnumTagMultiPayload();
  sub_100089754(&qword_1000C2BF0, type metadata accessor for RectangleTileView);
  sub_100089754(&qword_1000C2BF8, type metadata accessor for SmallSquareTileView);
  sub_10009DD94();
  v22 = type metadata accessor for SmallSquareTileView;
  v23 = v16;
  return sub_100089110(v23, v22);
}

uint64_t sub_100087364@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10009DC44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for RectangleTileView(0);
  sub_10001E0A8(v1 + *(v12 + 20), v11, &qword_1000C16D0, &qword_1000A15B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10009E3A4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10009E834();
    v16 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10008756C()
{
  v1 = sub_10009DC44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for RectangleTileView(0) + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_10009E834();
    v8 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1000876C4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10009E2F4();
  a1[1] = v3;
  v4 = sub_100003714(&qword_1000C2BA8, &unk_1000A3600);
  return sub_1000860A8(v1, a1 + *(v4 + 44));
}

uint64_t sub_100087710@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46[1] = a1;
  v3 = sub_100003714(&qword_1000C2CC0, &qword_1000A36F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v46 - v5;
  v7 = sub_100003714(&qword_1000C2CC8, &qword_1000A36F8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v46 - v9;
  v11 = sub_100003714(&qword_1000C2CD0, &qword_1000A3700);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v46 - v13;
  v15 = sub_100003714(&qword_1000C2CD8, &qword_1000A3708);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = v46 - v17;
  *v6 = sub_10009DC74();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v19 = sub_100003714(&qword_1000C2CE0, &unk_1000A3710);
  sub_100087AA0(v2, &v6[*(v19 + 44)]);
  v20 = sub_10009DEE4();
  v21 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v20)
  {
    v21 = sub_10009DEF4();
  }

  v22 = *(v2 + *(type metadata accessor for RectangleTileView(0) + 32) + 8);
  sub_10009D9E4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10005B0FC(v6, v10, &qword_1000C2CC0, &qword_1000A36F0);
  v31 = &v10[*(v7 + 36)];
  *v31 = v21;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = sub_10009DF04();
  v33 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v32)
  {
    v33 = sub_10009DEF4();
  }

  sub_10009D9E4();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10005B0FC(v10, v14, &qword_1000C2CC8, &qword_1000A36F8);
  v42 = &v14[*(v11 + 36)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  sub_10009E2F4();
  sub_10009DA74();
  sub_10005B0FC(v14, v18, &qword_1000C2CD0, &qword_1000A3700);
  v43 = &v18[*(v15 + 36)];
  v44 = v48;
  *v43 = v47;
  *(v43 + 1) = v44;
  *(v43 + 2) = v49;
  sub_100089CB8();
  sub_10009DFF4();
  return sub_1000160CC(v18, &qword_1000C2CD8, &qword_1000A3708);
}

uint64_t sub_100087AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v85 = sub_10009D494();
  v84 = *(v85 - 8);
  v3 = *(v84 + 64);
  __chkstk_darwin(v85);
  v5 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for WidgetTileInfo();
  v6 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v8 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009D9A4();
  v89 = *(v9 - 8);
  v90 = v9;
  v10 = *(v89 + 64);
  __chkstk_darwin(v9);
  v88 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100003714(&qword_1000C2168, &qword_1000A2330);
  v12 = *(*(v87 - 8) + 64);
  v13 = __chkstk_darwin(v87);
  v93 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v86 = v78 - v16;
  __chkstk_darwin(v15);
  v92 = v78 - v17;
  v18 = sub_100003714(&qword_1000C2D08, &qword_1000A3720);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v91 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v78 - v22;
  v24 = sub_10009DC44();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  if (*(a1 + 8) == 1)
  {
    if ((v29 & 1) == 0)
    {
LABEL_3:
      v30 = type metadata accessor for RectangleTileView(0);
      v31 = a1 + *(v30 + 28);
      v32 = type metadata accessor for AccessoryAndSceneEntity();
      v33 = v31 + *(v32 + 24);
      v34 = sub_10008CA68();
      goto LABEL_6;
    }
  }

  else
  {
    v35 = *a1;

    sub_10009E834();
    v36 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v29, 0);
    (*(v25 + 8))(v28, v24);
    if (v98 != 1)
    {
      goto LABEL_3;
    }
  }

  v30 = type metadata accessor for RectangleTileView(0);
  v37 = a1 + *(v30 + 28);
  v32 = type metadata accessor for AccessoryAndSceneEntity();
  v38 = v37 + *(v32 + 24);
  v34 = sub_10008D598();
LABEL_6:
  v78[1] = v34;
  *v23 = sub_10009DC74();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v39 = sub_100003714(&qword_1000C2D10, &qword_1000A3728);
  sub_100088298(a1, &v23[*(v39 + 44)]);
  sub_10009E2F4();
  sub_10009DA74();
  v82 = v98;
  v81 = v100;
  v80 = v102;
  v79 = v103;
  v97 = 1;
  v96 = v99;
  v95 = v101;
  type metadata accessor for RectangleTileView(0);
  v40 = a1 + *(v30 + 28);
  type metadata accessor for AccessoryAndSceneEntity();
  v41 = v40 + *(v32 + 24);
  sub_1000890A8(v41, v8, type metadata accessor for WidgetTileInfo);
  v42 = v83;
  v43 = *(v83 + 28);
  v44 = &v8[*(v83 + 24)];
  v45 = *v44;
  v46 = *(v44 + 1);
  v47 = *&v8[v43];
  v48 = *&v8[v43 + 8];

  sub_10009D484();
  sub_10009D474();
  (*(v84 + 8))(v5, v85);
  sub_100089110(v8, type metadata accessor for WidgetTileInfo);
  v49 = (v41 + *(v42 + 28));
  v50 = *v49;
  v51 = v49[1];

  sub_10009DC74();
  v52 = v88;
  sub_10009D9B4();
  LOBYTE(v45) = sub_10009DF14();
  v53 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v45)
  {
    v53 = sub_10009DEF4();
  }

  sub_10009D9E4();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v86;
  (*(v89 + 32))(v86, v52, v90);
  v63 = &v62[*(v87 + 36)];
  *v63 = v53;
  *(v63 + 1) = v55;
  *(v63 + 2) = v57;
  *(v63 + 3) = v59;
  *(v63 + 4) = v61;
  v63[40] = 0;
  v64 = v62;
  v65 = v92;
  sub_10005B0FC(v64, v92, &qword_1000C2168, &qword_1000A2330);
  v66 = v23;
  v67 = v91;
  sub_10001E0A8(v23, v91, &qword_1000C2D08, &qword_1000A3720);
  v68 = v97;
  v69 = v96;
  v70 = v95;
  v71 = v93;
  sub_10001E0A8(v65, v93, &qword_1000C2168, &qword_1000A2330);
  v72 = v94;
  sub_10001E0A8(v67, v94, &qword_1000C2D08, &qword_1000A3720);
  v73 = sub_100003714(&qword_1000C2D18, &qword_1000A3730);
  v74 = v72 + v73[12];
  *v74 = 0;
  *(v74 + 8) = v68;
  *(v74 + 16) = v82;
  *(v74 + 24) = v69;
  *(v74 + 32) = v81;
  *(v74 + 40) = v70;
  v75 = v79;
  *(v74 + 48) = v80;
  *(v74 + 56) = v75;
  sub_10001E0A8(v71, v72 + v73[16], &qword_1000C2168, &qword_1000A2330);
  v76 = v72 + v73[20];
  *v76 = 0;
  *(v76 + 8) = 0;
  sub_1000160CC(v65, &qword_1000C2168, &qword_1000A2330);
  sub_1000160CC(v66, &qword_1000C2D08, &qword_1000A3720);
  sub_1000160CC(v71, &qword_1000C2168, &qword_1000A2330);
  return sub_1000160CC(v67, &qword_1000C2D08, &qword_1000A3720);
}

uint64_t sub_100088298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v82 = sub_10009DD14();
  v86 = *(v82 - 8);
  v3 = v86[8];
  v4 = __chkstk_darwin(v82);
  v92 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v91 = &v79 - v6;
  v89 = sub_100003714(&qword_1000C2D20, &qword_1000A3738);
  v7 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v90 = &v79 - v8;
  v87 = sub_100003714(&qword_1000C2D28, &qword_1000A3740);
  v9 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v85 = &v79 - v10;
  v11 = sub_10009E3A4();
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  __chkstk_darwin(v11);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10009DC44();
  v81 = *(v15 - 8);
  v16 = *(v81 + 64);
  __chkstk_darwin(v15);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for TileIconView();
  v19 = *(*(v93 - 8) + 64);
  v20 = __chkstk_darwin(v93);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v79 - v23;
  v25 = a1;
  v26 = a1 + *(type metadata accessor for RectangleTileView(0) + 28);
  v27 = v26 + *(type metadata accessor for AccessoryAndSceneEntity() + 24);
  v28 = sub_10008CFDC();
  if (v29)
  {
    v30 = v29;
    v31 = v28;
    v80 = v28;
    sub_100087364(v14);
    sub_10008756C();
    v92 = sub_10001D53C(v14);
    (*(v83 + 8))(v14, v84);
    *&v105[0] = v31;
    *(&v105[0] + 1) = v30;
    sub_1000037A4();

    v91 = sub_10009DFE4();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    KeyPath = swift_getKeyPath();
    v39 = v35 & 1;
    LOBYTE(v96) = v35 & 1;
    v40 = swift_getKeyPath();
    LOBYTE(v105[0]) = 0;
    sub_10009DF34();
    v41 = sub_10009DF84();
    v42 = swift_getKeyPath();
    LOBYTE(v105[0]) = 1;
    v43 = swift_getKeyPath();
    *&v96 = v91;
    *(&v96 + 1) = v33;
    LOBYTE(v97) = v39;
    *(&v97 + 1) = v37;
    LOWORD(v98) = 256;
    *(&v98 + 1) = KeyPath;
    LOBYTE(v99) = 1;
    *(&v99 + 1) = v40;
    *&v100 = 1;
    BYTE8(v100) = 0;
    *&v101 = v42;
    *(&v101 + 1) = v41;
    *&v102 = 0;
    WORD4(v102) = 1;
    *&v103 = v43;
    *(&v103 + 1) = 0x3F847AE147AE147BLL;
    v104 = v92;
    v94 = v80;
    v95 = v30;

    sub_100003714(&qword_1000C2D38, &qword_1000A3748);
    sub_100089F64();
    sub_10009E024();
    v44 = v85;
    sub_10009E014();
    v105[6] = v102;
    v105[7] = v103;
    v106 = v104;
    v105[2] = v98;
    v105[3] = v99;
    v105[4] = v100;
    v105[5] = v101;
    v105[0] = v96;
    v105[1] = v97;
    sub_1000160CC(v105, &qword_1000C2D38, &qword_1000A3748);

    sub_10009E2F4();
    sub_10009DA74();
    v45 = (v44 + *(v87 + 36));
    v46 = v97;
    *v45 = v96;
    v45[1] = v46;
    v45[2] = v98;
    sub_10001E0A8(v44, v90, &qword_1000C2D28, &qword_1000A3740);
    swift_storeEnumTagMultiPayload();
    sub_100089E88();
    sub_100089754(&qword_1000C2210, type metadata accessor for TileIconView);
    sub_10009DD94();

    return sub_1000160CC(v44, &qword_1000C2D28, &qword_1000A3740);
  }

  v48 = v81;
  v85 = v24;
  v49 = *v25;
  if (*(v25 + 8) != 1)
  {
    v51 = v18;
    v52 = *v25;

    sub_10009E834();
    v53 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v49, 0);
    (*(v48 + 8))(v51, v15);
    if (v105[0])
    {
      goto LABEL_5;
    }

LABEL_7:
    v50 = 8;
    goto LABEL_8;
  }

  if ((v49 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v50 = 9;
LABEL_8:
  v54 = type metadata accessor for WidgetTileInfo();
  v55 = (v27 + v54[v50]);
  v57 = *v55;
  v56 = v55[1];

  v58 = v27 + v54[10];
  sub_10009D594();
  v59 = v27 + v54[11];
  sub_10009D594();
  if (*(v27 + v54[13]) == 1)
  {
    v60 = *(v27 + v54[12]);
  }

  else
  {
    v60 = sub_10009E174();
  }

  v61 = sub_10009E2F4();
  v63 = v62;
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v64 = v93;
  v65 = *(v93 + 20);
  *&v22[v65] = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  v66 = &v22[v64[6]];
  *v66 = swift_getKeyPath();
  v66[8] = 0;
  v67 = v64[7];
  *&v22[v67] = swift_getKeyPath();
  sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  swift_storeEnumTagMultiPayload();
  v68 = &v22[v64[8]];
  *v68 = v57;
  *(v68 + 1) = v56;
  v69 = v86[2];
  v70 = v82;
  v69(&v22[v64[9]], v91, v82);
  v71 = v64[10];
  v72 = v70;
  v69(&v22[v71], v92, v70);
  sub_10009E174();
  LOBYTE(v69) = sub_10009E134();

  if (v69)
  {
    v73 = sub_10009E1B4();

    v60 = v73;
  }

  v74 = v90;
  v75 = v86[1];
  v75(v92, v72);
  v75(v91, v72);
  v76 = v93;
  *&v22[*(v93 + 44)] = v60;
  *&v22[v76[12]] = 0x4043000000000000;
  *&v22[v76[13]] = 0x403A000000000000;
  v77 = &v22[v76[14]];
  *v77 = v61;
  v77[1] = v63;
  v78 = v85;
  sub_10006DF64(v22, v85);
  sub_1000890A8(v78, v74, type metadata accessor for TileIconView);
  swift_storeEnumTagMultiPayload();
  sub_100089E88();
  sub_100089754(&qword_1000C2210, type metadata accessor for TileIconView);
  sub_10009DD94();
  return sub_100089110(v78, type metadata accessor for TileIconView);
}

uint64_t sub_100088C40(uint64_t a1)
{
  v2 = sub_10009DCE4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10009DB24();
}

uint64_t sub_100088D08(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BB1A8;
  v6._object = a2;
  v4 = sub_10009EBE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100088D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryAndSceneEntity();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for WidgetTileInfo();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 3)
      {
        return v14 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100088E84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AccessoryAndSceneEntity();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for WidgetTileInfo();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100088FAC()
{
  type metadata accessor for AccessoryAndSceneEntity();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WidgetTileInfo();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000890A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100089110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100089184(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 > 1)
    {
      return (v11 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for AccessoryAndSceneEntity();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = type metadata accessor for WidgetTileInfo();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_100089368(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 8) = -a2;
    return result;
  }

  v13 = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for AccessoryAndSceneEntity();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = type metadata accessor for WidgetTileInfo();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_10008953C()
{
  sub_10006EA2C(319, &qword_1000C1818, &type metadata accessor for WidgetRenderingMode);
  if (v0 <= 0x3F)
  {
    sub_10006AAC4();
    if (v1 <= 0x3F)
    {
      sub_10006EA2C(319, &qword_1000C1810, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AccessoryAndSceneEntity();
        if (v3 <= 0x3F)
        {
          type metadata accessor for WidgetTileInfo();
          if (v4 <= 0x3F)
          {
            type metadata accessor for CGSize();
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

unint64_t sub_100089668()
{
  result = qword_1000C2B90;
  if (!qword_1000C2B90)
  {
    sub_10000375C(&qword_1000C2B98, &qword_1000A35A8);
    sub_100089754(&qword_1000C2AE0, type metadata accessor for SingleTapTargetTileView);
    sub_100089754(&qword_1000C2BA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2B90);
  }

  return result;
}

uint64_t sub_100089754(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000897D4()
{
  result = qword_1000C2BE8;
  if (!qword_1000C2BE8)
  {
    sub_10000375C(&qword_1000C2BE0, &qword_1000A3638);
    sub_100089754(&qword_1000C2BF0, type metadata accessor for RectangleTileView);
    sub_100089754(&qword_1000C2BF8, type metadata accessor for SmallSquareTileView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2BE8);
  }

  return result;
}

uint64_t sub_10008991C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AccessoryAndSceneEntity();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100089A58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AccessoryAndSceneEntity();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100089B84()
{
  sub_10006AAC4();
  if (v0 <= 0x3F)
  {
    sub_10006EA2C(319, &qword_1000C1818, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AccessoryAndSceneEntity();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100089CB8()
{
  result = qword_1000C2CE8;
  if (!qword_1000C2CE8)
  {
    sub_10000375C(&qword_1000C2CD8, &qword_1000A3708);
    sub_100089D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2CE8);
  }

  return result;
}

unint64_t sub_100089D44()
{
  result = qword_1000C2CF0;
  if (!qword_1000C2CF0)
  {
    sub_10000375C(&qword_1000C2CD0, &qword_1000A3700);
    sub_100089DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2CF0);
  }

  return result;
}

unint64_t sub_100089DD0()
{
  result = qword_1000C2CF8;
  if (!qword_1000C2CF8)
  {
    sub_10000375C(&qword_1000C2CC8, &qword_1000A36F8);
    sub_10001CDC8(&qword_1000C2D00, &qword_1000C2CC0, &qword_1000A36F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2CF8);
  }

  return result;
}

unint64_t sub_100089E88()
{
  result = qword_1000C2D30;
  if (!qword_1000C2D30)
  {
    sub_10000375C(&qword_1000C2D28, &qword_1000A3740);
    sub_10000375C(&qword_1000C2D38, &qword_1000A3748);
    sub_100089F64();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2D30);
  }

  return result;
}

unint64_t sub_100089F64()
{
  result = qword_1000C2D40;
  if (!qword_1000C2D40)
  {
    sub_10000375C(&qword_1000C2D38, &qword_1000A3748);
    sub_10008A01C();
    sub_10001CDC8(&qword_1000C22C8, &qword_1000C22D0, &qword_1000A25D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2D40);
  }

  return result;
}

unint64_t sub_10008A01C()
{
  result = qword_1000C2D48;
  if (!qword_1000C2D48)
  {
    sub_10000375C(&qword_1000C2D50, &qword_1000A3750);
    sub_10008A0D4();
    sub_10001CDC8(&qword_1000C2D68, &qword_1000C2D70, &unk_1000A3768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2D48);
  }

  return result;
}

unint64_t sub_10008A0D4()
{
  result = qword_1000C2D58;
  if (!qword_1000C2D58)
  {
    sub_10000375C(&qword_1000C2D60, &unk_1000A3758);
    sub_10006E274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2D58);
  }

  return result;
}

uint64_t sub_10008A178@<X0>(void *a1@<X8>)
{
  result = sub_10009DB54();
  *a1 = v3;
  return result;
}

uint64_t sub_10008A1CC()
{
  sub_10000375C(&qword_1000C2CD8, &qword_1000A3708);
  sub_100089CB8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10008A268(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10009E124();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = sub_10009E1E4();
  *a2 = result;
  return result;
}

uint64_t sub_10008A36C(uint64_t a1, uint64_t *a2)
{
  sub_10009E1B4();
  v3 = sub_10009E1A4();

  *a2 = v3;
  return result;
}

uint64_t sub_10008A3C0()
{
  sub_10009E174();
  sub_10008A40C();
  result = sub_10009E204();
  qword_1000C8310 = result;
  return result;
}

unint64_t sub_10008A40C()
{
  result = qword_1000C2D78;
  if (!qword_1000C2D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2D78);
  }

  return result;
}

uint64_t sub_10008A460()
{
  sub_10008A4C8();
  result = sub_10009E934();
  qword_1000C8318 = result;
  return result;
}

unint64_t sub_10008A4C8()
{
  result = qword_1000C2D80;
  if (!qword_1000C2D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C2D80);
  }

  return result;
}

uint64_t sub_10008A514(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006465746165;
  v3 = 0x7243746567646977;
  v4 = a1;
  if (a1 <= 2u)
  {
    v11 = 0x80000001000A3FD0;
    v12 = 0xD000000000000018;
    if (a1 == 1)
    {
      v12 = 0xD000000000000010;
    }

    else
    {
      v11 = 0x80000001000A3FF0;
    }

    if (a1)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0x7243746567646977;
    }

    if (v4)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xED00006465746165;
    }
  }

  else
  {
    v5 = 0x80000001000A4050;
    v6 = 0xD000000000000019;
    if (a1 != 5)
    {
      v6 = 0xD00000000000001BLL;
      v5 = 0x80000001000A4070;
    }

    v7 = 0x80000001000A4010;
    v8 = 0xD000000000000017;
    if (a1 != 3)
    {
      v8 = 0xD00000000000001DLL;
      v7 = 0x80000001000A4030;
    }

    if (a1 <= 4u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 4)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x80000001000A3FD0;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x80000001000A3FF0;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x80000001000A4050;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x80000001000A4070;
        if (v9 != 0xD00000000000001BLL)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 3)
    {
      v2 = 0x80000001000A4010;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0x80000001000A4030;
    v3 = 0xD00000000000001DLL;
  }

  if (v9 != v3)
  {
LABEL_40:
    v13 = sub_10009ED34();
    goto LABEL_41;
  }

LABEL_37:
  if (v10 != v2)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

Swift::Int sub_10008A744()
{
  sub_10009EDD4();
  sub_10009E624();

  return sub_10009EE04();
}

unint64_t sub_10008A88C(unsigned __int8 a1)
{
  v1 = 0xD000000000000021;
  v2 = 0xD00000000000002DLL;
  if (a1 != 5)
  {
    v2 = 0xD00000000000002FLL;
  }

  v3 = 0xD00000000000002BLL;
  if (a1 != 3)
  {
    v3 = 0xD000000000000031;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000032;
  if (a1 != 1)
  {
    v4 = 0xD00000000000002CLL;
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

uint64_t sub_10008A954()
{
  v1 = sub_10009CEC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  if (v8 == 1)
  {
    v12 = 0;
    LOBYTE(v46) = 2;
    LODWORD(v49) = 33686018;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v51 = 1;
LABEL_4:
    sub_10008C994(v6, v7, v8);
    v13 = &_swiftEmptyDictionarySingleton;
    goto LABEL_6;
  }

  v46 = *(v0 + 24);
  v47 = v7;
  v48 = v8;
  v49 = v9;
  v50 = v10;
  v12 = v8;
  v51 = v11;
  if (v6 == 2)
  {
    goto LABEL_4;
  }

  v14 = v6;
  v15 = v8;
  v16 = v7;
  sub_100033B88();
  sub_10008C994(v14, v16, v15);
  isa = sub_10009E8B4(v14 & 1).super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = &_swiftEmptyDictionarySingleton;
  sub_10008C10C(isa, 0x7373656363417369, 0xEB0000000079726FLL, isUniquelyReferenced_nonNull_native);
  v13 = v45;
  v12 = v48;
LABEL_6:
  if (v12)
  {
    v19 = objc_allocWithZone(NSString);
    sub_10008C9D8(&v46, &v45);
    v20 = sub_10009E5B4();
    sub_10008C9A8(&v46);
    v21 = [v19 initWithString:v20];

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v13;
    sub_10008C10C(v21, 0xD000000000000015, 0x80000001000A5550, v22);
    v13 = v45;
  }

  v23 = v49;
  if (v49 != 2)
  {
    sub_100033B88();
    v24 = sub_10009E8B4(v23 & 1).super.super.isa;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v13;
    sub_10008C10C(v24, 0x656E6563537369, 0xE700000000000000, v25);
    v13 = v45;
  }

  v26 = BYTE1(v49);
  if (BYTE1(v49) != 2)
  {
    sub_100033B88();
    v27 = sub_10009E8B4(v26 & 1).super.super.isa;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v13;
    sub_10008C10C(v27, 0x6168636165527369, 0xEB00000000656C62, v28);
    v13 = v45;
  }

  v29 = BYTE2(v49);
  if (BYTE2(v49) != 2)
  {
    sub_100033B88();
    v30 = sub_10009E8B4(v29 & 1).super.super.isa;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v13;
    sub_10008C10C(v30, 0x6176697463417369, 0xEB00000000646574, v31);
    v13 = v45;
  }

  v32 = BYTE3(v49);
  if (BYTE3(v49) != 2)
  {
    sub_100033B88();
    v33 = sub_10009E8B4(v32 & 1).super.super.isa;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v13;
    sub_10008C10C(v33, 0xD000000000000019, 0x80000001000A5530, v34);
    sub_10008C9A8(&v46);
    v13 = v45;
    if (v51)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  sub_10008C9A8(&v46);
  if ((v51 & 1) == 0)
  {
LABEL_18:
    v35 = v50;
    sub_100033B88();
    v36 = sub_10009E8C4(v35).super.super.isa;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v13;
    sub_10008C10C(v36, 0xD000000000000010, 0x80000001000A5080, v37);
    v13 = v45;
  }

LABEL_19:
  sub_100033B88();
  sub_10009CEB4();
  sub_10009CE94();
  v39 = v38;
  result = (*(v2 + 8))(v5, v1);
  v41 = v39 * 1000.0;
  if (COERCE__INT64(fabs(v39 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v41 < 9.22337204e18)
  {
    v42 = sub_10009E8C4(v41).super.super.isa;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v13;
    sub_10008C10C(v42, 0x6D617473656D6974, 0xE900000000000070, v43);
    return v45;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10008AE74()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_10005FAEC(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

__n128 sub_10008AEDC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10008AEF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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