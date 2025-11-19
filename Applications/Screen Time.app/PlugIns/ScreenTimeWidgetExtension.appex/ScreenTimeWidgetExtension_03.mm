uint64_t sub_100045488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for MostUsedItemsPlaceholderView(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v8 = (v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (v66 - v9);
  v11 = sub_1000027D4(&qword_10005EF90, &qword_10004CDE0);
  v12 = *(*(v11 - 8) + 64);
  v13 = v11 - 8;
  v67 = v11 - 8;
  v14 = __chkstk_darwin(v11 - 8);
  v72 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v66 - v16;
  v18 = sub_1000027D4(&qword_10005EF98, &qword_10004CDE8);
  v19 = *(*(v18 - 8) + 64);
  v20 = v18 - 8;
  v21 = __chkstk_darwin(v18 - 8);
  v74 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v73 = v66 - v24;
  v25 = __chkstk_darwin(v23);
  v70 = v66 - v26;
  v27 = __chkstk_darwin(v25);
  v71 = v66 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = v66 - v30;
  __chkstk_darwin(v29);
  v69 = v66 - v32;
  v33 = *(a1 + *(type metadata accessor for UsageTimelineEntry() + 56));
  v68 = v33;
  v66[1] = a1;
  *v10 = swift_getKeyPath();
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  swift_storeEnumTagMultiPayload();
  *(v10 + v4[7]) = 2;
  *(v10 + v4[8]) = 3;
  *(v10 + v4[9]) = v33;
  sub_100049B68();
  sub_100049598();
  sub_100046E50(v10, v17, type metadata accessor for MostUsedItemsPlaceholderView);
  v34 = &v17[*(v13 + 44)];
  v35 = v81;
  *(v34 + 4) = v80;
  *(v34 + 5) = v35;
  *(v34 + 6) = v82;
  v36 = v77;
  *v34 = v76;
  *(v34 + 1) = v36;
  v37 = v79;
  *(v34 + 2) = v78;
  *(v34 + 3) = v37;
  v38 = sub_100049B68();
  v40 = v39;
  v41 = sub_100042A20();
  sub_100004DF8(v17, v31, &qword_10005EF90, &qword_10004CDE0);
  v42 = v20;
  v43 = &v31[*(v20 + 44)];
  *v43 = v41;
  v43[1] = v38;
  v43[2] = v40;
  v44 = v69;
  sub_100004DF8(v31, v69, &qword_10005EF98, &qword_10004CDE8);
  *v8 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v8 + v4[7]) = 2;
  *(v8 + v4[8]) = 2;
  *(v8 + v4[9]) = v68;
  sub_100049B68();
  sub_100049598();
  v45 = v72;
  sub_100046E50(v8, v72, type metadata accessor for MostUsedItemsPlaceholderView);
  v46 = (v45 + *(v67 + 44));
  v47 = v88;
  v46[4] = v87;
  v46[5] = v47;
  v46[6] = v89;
  v48 = v84;
  *v46 = v83;
  v46[1] = v48;
  v49 = v86;
  v46[2] = v85;
  v46[3] = v49;
  v50 = sub_100049B68();
  v52 = v51;
  v53 = sub_100042A20();
  v54 = v45;
  v55 = v70;
  sub_100004DF8(v54, v70, &qword_10005EF90, &qword_10004CDE0);
  v56 = (v55 + *(v42 + 44));
  *v56 = v53;
  v56[1] = v50;
  v56[2] = v52;
  v57 = v55;
  v58 = v71;
  sub_100004DF8(v57, v71, &qword_10005EF98, &qword_10004CDE8);
  v59 = v73;
  sub_1000055FC(v44, v73, &qword_10005EF98, &qword_10004CDE8);
  v60 = v58;
  v61 = v58;
  v62 = v74;
  sub_1000055FC(v60, v74, &qword_10005EF98, &qword_10004CDE8);
  v63 = v75;
  sub_1000055FC(v59, v75, &qword_10005EF98, &qword_10004CDE8);
  v64 = sub_1000027D4(&qword_10005EFA0, &qword_10004CE20);
  sub_1000055FC(v62, v63 + *(v64 + 48), &qword_10005EF98, &qword_10004CDE8);
  sub_100005664(v61, &qword_10005EF98, &qword_10004CDE8);
  sub_100005664(v44, &qword_10005EF98, &qword_10004CDE8);
  sub_100005664(v62, &qword_10005EF98, &qword_10004CDE8);
  return sub_100005664(v59, &qword_10005EF98, &qword_10004CDE8);
}

uint64_t sub_100045A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = type metadata accessor for MostUsedItemsLarge(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v64 - v10);
  v74 = sub_1000027D4(&qword_10005EFA8, &qword_10004CE28);
  v12 = *(*(v74 - 8) + 64);
  v13 = __chkstk_darwin(v74);
  v68 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v64 - v15;
  v66 = sub_1000027D4(&qword_10005EFB0, &qword_10004CE30);
  v17 = *(*(v66 - 8) + 64);
  v18 = __chkstk_darwin(v66);
  v71 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v70 = &v64 - v21;
  v22 = __chkstk_darwin(v20);
  v65 = &v64 - v23;
  v24 = __chkstk_darwin(v22);
  v69 = &v64 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v64 - v27;
  __chkstk_darwin(v26);
  v67 = &v64 - v29;
  v30 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  if (v30 >= 7)
  {
    sub_100046BE8(a1, a1 + 32, 0, 0xDuLL);
    v31 = v63;
  }

  else
  {

    v31 = a1;
  }

  *v11 = swift_getKeyPath();
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v5 + 20)) = v31;
  *(v11 + *(v5 + 24)) = 2;
  sub_100049B78();
  sub_100049598();
  sub_100046E50(v11, v16, type metadata accessor for MostUsedItemsLarge);
  v32 = &v16[*(v74 + 36)];
  v33 = v80;
  *(v32 + 4) = v79;
  *(v32 + 5) = v33;
  *(v32 + 6) = v81;
  v34 = v76;
  *v32 = v75;
  *(v32 + 1) = v34;
  v35 = v78;
  *(v32 + 2) = v77;
  *(v32 + 3) = v35;
  v36 = sub_100049B68();
  v38 = v37;
  v72 = a2;
  v39 = sub_100042A20();
  sub_100004DF8(v16, v28, &qword_10005EFA8, &qword_10004CE28);
  v40 = v66;
  v41 = &v28[*(v66 + 36)];
  *v41 = v39;
  v41[1] = v36;
  v41[2] = v38;
  v42 = v67;
  sub_100004DF8(v28, v67, &qword_10005EFB0, &qword_10004CE30);

  if (v30 >= 5)
  {
    sub_100046BE8(a1, a1 + 32, 0, 9uLL);
    v44 = v43;

    a1 = v44;
  }

  *v9 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v5 + 20)) = a1;
  *(v9 + *(v5 + 24)) = 2;
  sub_100049B78();
  sub_100049598();
  v45 = v68;
  sub_100046E50(v9, v68, type metadata accessor for MostUsedItemsLarge);
  v46 = (v45 + *(v74 + 36));
  v47 = v87;
  v46[4] = v86;
  v46[5] = v47;
  v46[6] = v88;
  v48 = v83;
  *v46 = v82;
  v46[1] = v48;
  v49 = v85;
  v46[2] = v84;
  v46[3] = v49;
  v50 = sub_100049B68();
  v52 = v51;
  v53 = sub_100042A20();
  v54 = v45;
  v55 = v65;
  sub_100004DF8(v54, v65, &qword_10005EFA8, &qword_10004CE28);
  v56 = (v55 + *(v40 + 36));
  *v56 = v53;
  v56[1] = v50;
  v56[2] = v52;
  v57 = v69;
  sub_100004DF8(v55, v69, &qword_10005EFB0, &qword_10004CE30);
  v58 = v70;
  sub_1000055FC(v42, v70, &qword_10005EFB0, &qword_10004CE30);
  v59 = v71;
  sub_1000055FC(v57, v71, &qword_10005EFB0, &qword_10004CE30);
  v60 = v73;
  sub_1000055FC(v58, v73, &qword_10005EFB0, &qword_10004CE30);
  v61 = sub_1000027D4(&qword_10005EFB8, &qword_10004CE38);
  sub_1000055FC(v59, v60 + *(v61 + 48), &qword_10005EFB0, &qword_10004CE30);
  sub_100005664(v57, &qword_10005EFB0, &qword_10004CE30);
  sub_100005664(v42, &qword_10005EFB0, &qword_10004CE30);
  sub_100005664(v59, &qword_10005EFB0, &qword_10004CE30);
  return sub_100005664(v58, &qword_10005EFB0, &qword_10004CE30);
}

uint64_t sub_100046114@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = type metadata accessor for UsageTimelineEntry();
  v13 = *(a1 + *(v3 + 56));
  v4 = *(a1 + *(v3 + 28)) * 0.3;
  sub_100049B68();
  sub_100049598();
  *(&v48[6] + 7) = *&v48[21];
  *(&v48[8] + 7) = *&v48[23];
  *(&v48[10] + 7) = *&v48[25];
  *(&v48[12] + 7) = v49;
  *(v48 + 7) = *&v48[15];
  *(&v48[2] + 7) = *&v48[17];
  *(&v48[4] + 7) = *&v48[19];
  v5 = sub_100049B68();
  v14 = v6;
  v7 = sub_100042A20();
  sub_100049B68();
  sub_100049598();
  *&v47[55] = v53;
  *&v47[71] = v54;
  *&v47[87] = v55;
  *&v47[103] = v56;
  *&v47[7] = v50;
  *&v47[23] = v51;
  *&v47[39] = v52;
  v8 = sub_100049B68();
  v10 = v9;
  v11 = sub_100042A20();
  *v17 = 4;
  v17[8] = v13;
  *&v17[73] = *&v48[8];
  *&v17[89] = *&v48[10];
  *&v17[105] = *&v48[12];
  *&v17[9] = *v48;
  *&v17[25] = *&v48[2];
  *&v17[41] = *&v48[4];
  *&v17[57] = *&v48[6];
  *&v17[120] = *(&v49 + 1);
  *&v18 = v7;
  *(&v18 + 1) = v5;
  __src[0] = *v17;
  __src[1] = *&v17[16];
  __src[4] = *&v17[64];
  __src[5] = *&v17[80];
  __src[2] = *&v17[32];
  __src[3] = *&v17[48];
  __src[6] = *&v17[96];
  __src[7] = *&v17[112];
  __src[8] = v18;
  *v20 = 3;
  v20[8] = v13;
  *&v20[73] = *&v47[64];
  *&v20[89] = *&v47[80];
  *&v20[105] = *&v47[96];
  *&v20[9] = *v47;
  *&v20[25] = *&v47[16];
  *&v20[41] = *&v47[32];
  *&v20[57] = *&v47[48];
  *&v20[120] = *(&v56 + 1);
  *&v21 = v11;
  *(&v21 + 1) = v8;
  *(&__src[16] + 8) = *&v20[112];
  *(&__src[17] + 8) = v21;
  *(&__src[10] + 8) = *&v20[16];
  *(&__src[9] + 8) = *v20;
  *(&__src[14] + 8) = *&v20[80];
  *(&__src[13] + 8) = *&v20[64];
  *(&__src[12] + 8) = *&v20[48];
  *(&__src[11] + 8) = *&v20[32];
  v19 = v14;
  v22 = v10;
  *&__src[9] = v14;
  *(&__src[18] + 1) = v10;
  *(&__src[15] + 8) = *&v20[96];
  memcpy(a2, __src, 0x130uLL);
  v29 = *&v47[64];
  v30 = *&v47[80];
  *v31 = *&v47[96];
  v25 = *v47;
  v26 = *&v47[16];
  v27 = *&v47[32];
  v23 = 3;
  v24 = v13;
  v28 = *&v47[48];
  *&v31[15] = *&v47[111];
  v32 = v11;
  v33 = v8;
  v34 = v10;
  sub_1000055FC(v17, &v35, &qword_10005EEF0, &unk_10004CD48);
  sub_1000055FC(v20, &v35, &qword_10005EEF0, &unk_10004CD48);
  sub_100005664(&v23, &qword_10005EEF0, &unk_10004CD48);
  v35 = 4;
  v36 = v13;
  v41 = *&v48[8];
  v42 = *&v48[10];
  *v43 = *&v48[12];
  v37 = *v48;
  v38 = *&v48[2];
  v39 = *&v48[4];
  v40 = *&v48[6];
  *&v43[15] = *(&v48[13] + 7);
  v44 = v7;
  v45 = v5;
  v46 = v14;
  return sub_100005664(&v35, &qword_10005EEF0, &unk_10004CD48);
}

uint64_t sub_1000465C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v5 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  if (v5 >= 5)
  {
    sub_100046BE8(v4, v4 + 32, 0, 9uLL);
    v6 = v19;
  }

  else
  {

    v6 = v4;
  }

  v7 = *(a2 + *(type metadata accessor for UsageTimelineEntry() + 28)) * 0.3;
  sub_100049B68();
  sub_100049598();
  v8 = sub_100049B68();
  v10 = v9;
  v11 = sub_100042A20();

  if (v5 >= 4)
  {
    sub_100046BE8(v4, v4 + 32, 0, 7uLL);
    v13 = v12;

    v4 = v13;
  }

  sub_100049B68();
  sub_100049598();
  v14 = sub_100049B68();
  v16 = v15;
  v17 = sub_100042A20();
  *&v29[104] = v61;
  *&v29[88] = v60;
  *&v29[72] = v59;
  *&v29[56] = v58;
  *&v29[8] = v55;
  *&v29[24] = v56;
  *&v29[40] = v57;
  *v29 = v6;
  *&v29[120] = v11;
  __src[6] = *&v29[96];
  __src[7] = *&v29[112];
  __src[2] = *&v29[32];
  __src[3] = *&v29[48];
  __src[4] = *&v29[64];
  __src[5] = *&v29[80];
  __src[0] = *v29;
  __src[1] = *&v29[16];
  *&v31[8] = v22;
  *&v31[24] = v23;
  *&v31[104] = v28;
  *&v31[88] = v27;
  *&v31[72] = v26;
  *&v31[56] = v25;
  *&v31[40] = v24;
  *v31 = v4;
  *&v31[120] = v17;
  *&v32 = v14;
  *(&v32 + 1) = v16;
  __src[12] = *&v31[48];
  __src[13] = *&v31[64];
  __src[10] = *&v31[16];
  __src[11] = *&v31[32];
  __src[16] = *&v31[112];
  __src[17] = v32;
  *&v30 = v8;
  *(&v30 + 1) = v10;
  __src[14] = *&v31[80];
  __src[15] = *&v31[96];
  __src[8] = v30;
  __src[9] = *v31;
  memcpy(a3, __src, 0x120uLL);
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v33 = v4;
  v41 = v17;
  v42 = v14;
  v43 = v16;
  sub_1000055FC(v29, &v44, &qword_10005EEF8, &qword_10004CD58);
  sub_1000055FC(v31, &v44, &qword_10005EEF8, &qword_10004CD58);
  sub_100005664(&v33, &qword_10005EEF8, &qword_10004CD58);
  v48 = v58;
  v49 = v59;
  v50 = v60;
  v51 = v61;
  v45 = v55;
  v46 = v56;
  v47 = v57;
  v44 = v6;
  v52 = v11;
  v53 = v8;
  v54 = v10;
  return sub_100005664(&v44, &qword_10005EEF8, &qword_10004CD58);
}

unint64_t sub_1000469D0()
{
  result = qword_10005DE08;
  if (!qword_10005DE08)
  {
    sub_100049CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE08);
  }

  return result;
}

double sub_100046A28(uint64_t a1)
{
  result = 0.0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 352) = -256;
  return result;
}

unint64_t sub_100046A70()
{
  result = qword_10005EEB8;
  if (!qword_10005EEB8)
  {
    sub_100003634(&qword_10005EEA8, &qword_10004CD20);
    sub_100005708(&qword_10005EEC0, &qword_10005EEC8, &qword_10004CD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EEB8);
  }

  return result;
}

unint64_t sub_100046B28()
{
  result = qword_10005EED0;
  if (!qword_10005EED0)
  {
    sub_100003634(&qword_10005EEB0, &qword_10004CD28);
    sub_100005708(&qword_10005EED8, &qword_10005EEE0, &qword_10004CD38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EED0);
  }

  return result;
}

void sub_100046BE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000027D4(&qword_10005E1F8, &unk_10004CD60);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

unint64_t sub_100046CD8()
{
  result = qword_10005EF68;
  if (!qword_10005EF68)
  {
    sub_100003634(&qword_10005EF20, &qword_10004CD90);
    sub_100005708(&qword_10005EF70, &qword_10005EF18, &qword_10004CD88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EF68);
  }

  return result;
}

unint64_t sub_100046D90()
{
  result = qword_10005EF78;
  if (!qword_10005EF78)
  {
    sub_100003634(&qword_10005EF08, &qword_10004CD78);
    sub_100005708(&qword_10005EF80, &qword_10005EF00, &qword_10004CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EF78);
  }

  return result;
}

uint64_t sub_100046E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100046EB8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100046EC4()
{
  result = qword_10005EFE8;
  if (!qword_10005EFE8)
  {
    sub_100003634(&qword_10005EFD8, &qword_10004CE58);
    sub_100005708(&qword_10005EFF0, &qword_10005EFC0, &qword_10004CE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EFE8);
  }

  return result;
}

uint64_t sub_100046F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenTimeWidgetGraph();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046FE0(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_100046FF8(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_100046FF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_100047034(uint64_t a1)
{
  v2 = type metadata accessor for ScreenTimeWidgetGraph();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100047090(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1000470A8(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1000470A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

unint64_t sub_1000470E4()
{
  result = qword_10005F000;
  if (!qword_10005F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F000);
  }

  return result;
}

unint64_t sub_100047138()
{
  result = qword_10005F008;
  if (!qword_10005F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F008);
  }

  return result;
}

uint64_t sub_10004718C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10004719C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100049678();
  *a1 = result;
  return result;
}

uint64_t sub_1000471C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100049678();
  *a1 = result;
  return result;
}

uint64_t sub_1000471F4(uint64_t *a1)
{
  v1 = *a1;

  return sub_100049688();
}

uint64_t sub_100047220(uint64_t *a1)
{
  v1 = *a1;

  return sub_100049688();
}

unint64_t sub_10004724C()
{
  result = qword_10005F030;
  if (!qword_10005F030)
  {
    sub_100003634(&qword_10005F028, &qword_10004CEC0);
    sub_100047304();
    sub_100005708(&qword_10005F040, &qword_10005F048, &qword_10004CEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F030);
  }

  return result;
}

unint64_t sub_100047304()
{
  result = qword_10005F038;
  if (!qword_10005F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F038);
  }

  return result;
}

uint64_t sub_100047358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100047364()
{
  sub_100003634(&qword_10005EE60, &qword_10004CCD8);
  sub_100005708(&qword_10005EE70, &qword_10005EE60, &qword_10004CCD8);
  return swift_getOpaqueTypeConformance2();
}

id STSelectUserIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STSelectUserIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STSelectUserIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id STUser.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id STSelectUserIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id STSelectUserIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100049DF8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id STSelectUserIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_100049DF8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for STSelectUserIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id STSelectUserIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100049DF8();

  v8 = sub_100049DF8();

  if (a5)
  {
    v9.super.isa = sub_100049D98().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id STSelectUserIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100049DF8();

  v8 = sub_100049DF8();

  if (a5)
  {
    v9.super.isa = sub_100049D98().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for STSelectUserIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

Swift::Int sub_100047A64()
{
  v1 = *v0;
  sub_10004A418();
  sub_10004A428(v1);
  return sub_10004A448();
}

Swift::Int sub_100047AD8()
{
  v1 = *v0;
  sub_10004A418();
  sub_10004A428(v1);
  return sub_10004A448();
}

unint64_t sub_100047B1C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100048204(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t STSelectUserIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *STSelectUserIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *STSelectUserIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id STSelectUserIntentResponse.init()()
{
  *&v0[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STSelectUserIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id STSelectUserIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id STSelectUserIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id STSelectUserIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100047FB0(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for STSelectUserIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id STSelectUserIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_100049D98().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id STSelectUserIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_100049D98().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_1000481CC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100048204(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10004823C()
{
  result = qword_10005F060;
  if (!qword_10005F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F060);
  }

  return result;
}

uint64_t sub_100048290@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STSelectUserIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000482E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STSelectUserIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id STUser.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_100049DF8();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_100049DF8();

  if (a6)
  {
    v10 = sub_100049DF8();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id STUser.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_100049DF8();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_100049DF8();

  if (a6)
  {
    v10 = sub_100049DF8();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for STUser();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id STUser.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STUser();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static STUserResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___STUserResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static STUserResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_100048874();

    sub_10004A2B8();
  }

  else
  {

    sub_10004A3A8();
    sub_100048874();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100048874();
  isa = sub_100049F48().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___STUserResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_100048874()
{
  result = qword_10005F0E0;
  if (!qword_10005F0E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005F0E0);
  }

  return result;
}

id static STUserResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___STUserResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id STUserResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_100049D98().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id STUserResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_100049D98().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for STUserResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_100048E00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}