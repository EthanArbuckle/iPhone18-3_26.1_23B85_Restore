uint64_t sub_1000C2B68()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_1000108DC(*(v0 + 72), v3, &qword_1006359A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 200), &qword_1006359A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    sub_100074250(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    sub_100008C70(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = sub_1004D809C();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    sub_100004CB8(&qword_100635BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    v14 = v7[3];
    sub_100008C70(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = sub_10004B4B4(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    sub_10007FCDC(inited + 32);
    sub_1004DDA4C();
    *(v0 + 296) = sub_1004DDA3C();
    v20 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000C2E80, v20, v19);
  }
}

uint64_t sub_1000C2E80()
{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

  sub_1000108DC(v3, v4, &qword_100634B30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 12293;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000108DC(v7, v72, &qword_100635248);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
  if (v15 == 1)
  {

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001074C(v20, &qword_100635248);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));

    sub_10007DB18(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 128), &qword_100635248);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10007DB18(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    sub_10001074C(*(v0 + 120), &qword_100635248);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    sub_1000108DC(v36 + v14[6], *(v0 + 176), &qword_100634B30);
    sub_10007DB18(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  sub_100047F38(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &qword_100634B30);
  sub_1000108DC(v37, v38, &qword_100635248);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 112), &qword_100635248);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10007DB18(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    sub_10001074C(v45, &qword_100635248);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10007DB18(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 96), &qword_100635248);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10007DB18(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    sub_10001074C(v58, &qword_100635248);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10007DB18(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100074250(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_10007DB18(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30);

  return _swift_task_switch(sub_1000DA8FC, 0, 0);
}

uint64_t sub_1000C3638()
{
  v2 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100035C88;

  return sub_1000C2958(v0 + v3, v0 + v4);
}

uint64_t static Actions.ShareLyrics.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 34;
  *(a2 + 56) = sub_10006D3E4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100518B68;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100518B70;
  *(a2 + 104) = 0;
}

uint64_t sub_1000C37EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 34;
  *(a2 + 56) = sub_10006D3E4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100518B68;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100518B70;
  *(a2 + 104) = 0;
}

uint64_t Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v15 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_100047F38(a6, v17 + v15, &qword_1006359A0);
  result = sub_100035850(a1, v17 + v16);
  *a7 = a2;
  a7[1] = a3;
  a7[2] = a4;
  a7[3] = a5;
  a7[4] = &unk_100518B80;
  a7[5] = v17;
  return result;
}

uint64_t sub_1000C39C8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_100004CB8(&qword_100635248);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MetricsEvent.Click(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000C3BD8, 0, 0);
}

uint64_t sub_1000C3BD8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_1000108DC(*(v0 + 72), v3, &qword_1006359A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 200), &qword_1006359A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    sub_100074250(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    sub_100008C70(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = sub_1004D809C();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    sub_100004CB8(&qword_100635BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    v14 = v7[3];
    sub_100008C70(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = sub_10004B4B4(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    sub_10007FCDC(inited + 32);
    sub_1004DDA4C();
    *(v0 + 296) = sub_1004DDA3C();
    v20 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000C3EF0, v20, v19);
  }
}

uint64_t sub_1000C3EF0()
{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

  sub_1000108DC(v3, v4, &qword_100634B30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 12805;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000108DC(v7, v72, &qword_100635248);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
  if (v15 == 1)
  {

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001074C(v20, &qword_100635248);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));

    sub_10007DB18(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 128), &qword_100635248);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10007DB18(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    sub_10001074C(*(v0 + 120), &qword_100635248);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    sub_1000108DC(v36 + v14[6], *(v0 + 176), &qword_100634B30);
    sub_10007DB18(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  sub_100047F38(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &qword_100634B30);
  sub_1000108DC(v37, v38, &qword_100635248);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 112), &qword_100635248);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10007DB18(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    sub_10001074C(v45, &qword_100635248);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10007DB18(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 96), &qword_100635248);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10007DB18(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    sub_10001074C(v58, &qword_100635248);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10007DB18(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100074250(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_10007DB18(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30);

  return _swift_task_switch(sub_1000C46A4, 0, 0);
}

uint64_t sub_1000C46A4()
{
  sub_10007DB18(*(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C47DC()
{
  v1 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    if (*(v4 + 8) >= 0xDuLL)
    {
    }

    v6 = v4 + *(v5 + 20);
    v7 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 24);
      v9 = sub_1004D809C();
      v10 = *(v9 - 8);
      v14 = v8;
      v11 = v6 + v8;
      v12 = v9;
      if (!(*(v10 + 48))(v11, 1, v9))
      {
        (*(v10 + 8))(v6 + v14, v12);
      }
    }
  }

  sub_100008D24(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1000C4A38()
{
  v2 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100035B28;

  return sub_1000C39C8(v0 + v3, v0 + v4);
}

uint64_t Actions.ShareLyrics.Context.menuItemTitle.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

id sub_1000C4D5C()
{
  v0 = sub_1004DD3FC();
  v1 = [objc_opt_self() imageNamed:v0];

  return v1;
}

uint64_t ShareableMusicItem.failureMessage.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t ShareableMusicItem.shareURL.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1000C4FCC, 0, 0);
}

uint64_t sub_1000C4FCC()
{
  (*(v0[4] + 16))(v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000C5040(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100004CB8(&qword_100634B30);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000C50DC, 0, 0);
}

uint64_t sub_1000C50DC()
{
  v1 = *(v0 + 24);
  v2 = **(v0 + 16);
  v3 = sub_1004D809C();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v7 = 0;
  if (v5 != 1)
  {
    v8 = *(v0 + 24);
    sub_1004D7FDC(v6);
    v7 = v9;
    (*(v4 + 8))(v8, v3);
  }

  [v2 setOriginalURL:v7];

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000C5234(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000C52D0, 0, 0);
}

uint64_t sub_1000C52D0()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_1004DCCAC();
  v3 = sub_1004D809C();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_1004D7FDC(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000C53F8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000C5494, 0, 0);
}

uint64_t sub_1000C5494()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_1004D906C();
  v3 = sub_1004D809C();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_1004D7FDC(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000C55BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000C5658, 0, 0);
}

uint64_t sub_1000C5658()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_1004DCA1C();
  v3 = sub_1004D809C();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_1004D7FDC(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000C5780(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000C581C, 0, 0);
}

uint64_t sub_1000C581C()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_1004DD06C();
  v3 = sub_1004D809C();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_1004D7FDC(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000C5944(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000C59E0, 0, 0);
}

uint64_t sub_1000C59E0()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_1004DC7BC();
  v3 = sub_1004D809C();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_1004D7FDC(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000C5B08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000C5BA4, 0, 0);
}

uint64_t sub_1000C5BA4()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_1004D90AC();
  v3 = sub_1004D809C();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_1004D7FDC(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t ShareableMusicItem.augmentMetadata(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100004CB8(&qword_100634B30);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000C5D6C, 0, 0);
}

uint64_t sub_1000C5D6C()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = **(v0 + 16);
  v7 = (*(v1 + 24) + **(v1 + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1000C5E84;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return v7(v3, v4, v5);
}

uint64_t sub_1000C5E84()
{

  return _swift_task_switch(sub_1000C5F80, 0, 0);
}

uint64_t sub_1000C5F80()
{
  v1 = *(v0 + 48);
  v2 = sub_1004D809C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 0;
  }

  else
  {
    sub_1004D7FDC(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  [*(v0 + 56) setOriginalURL:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t Album.failureMessage.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Album.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100004CB8(&qword_1006362E8);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100004CB8(&qword_100635B98);
  v2[9] = swift_task_alloc();
  v4 = sub_100004CB8(&qword_100636450);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_100636458);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000C6490, 0, 0);
}

uint64_t sub_1000C6490()
{
  v1 = v0[16];
  sub_1004DC9DC();
  v2 = sub_1004D809C();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001074C(v0[16], &qword_100634B30);
    v4 = sub_1004DC9AC();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004DCA0C();
      sub_1000DA780(&qword_100635C10, &type metadata accessor for Album);

      sub_1004DC1AC();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000C6730;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000C6730()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000C6A90;
  }

  else
  {

    v2 = sub_1000C684C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C684C()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004DC1DC();
  sub_1000C1318(&qword_1006362E8, &qword_100636730, &type metadata accessor for Album, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_10001074C(v12, &qword_100635B98);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004DC9DC();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000C6A90()
{
  v21 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100636438);

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_1004DC2EC();
    v9 = v8;

    v10 = sub_1000343A8(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for album catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001074C(v5, &qword_100636460);

    sub_100008D24(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t Album.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1004D900C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_1004D902C();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[12] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_1006362E8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100004CB8(&qword_100635B98);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = sub_100004CB8(&qword_100636450);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = sub_100004CB8(&qword_100636458);
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000C7064, 0, 0);
}

uint64_t sub_1000C7064()
{
  v1 = sub_1004DC9AC();
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = **(v0 + 32);
    *(v0 + 216) = v5;
    v6 = [v5 specialization];
    *(v0 + 224) = v6;
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      *(v0 + 232) = v8;
      if (v8)
      {
        swift_getKeyPath();
        *(v0 + 16) = v3;
        *(v0 + 24) = v4;
        *(v0 + 240) = sub_1004DCA0C();
        sub_1000DA780(&qword_100635C10, &type metadata accessor for Album);

        sub_1004DC1AC();
        sub_100004CB8(&qword_1006379A0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_100511AB0;
        sub_100004CB8(&qword_100635C08);
        *(v9 + 32) = sub_1004DBFCC();
        sub_1004DC19C();
        v10 = swift_task_alloc();
        *(v0 + 248) = v10;
        *v10 = v0;
        v10[1] = sub_1000C7314;
        v11 = *(v0 + 168);
        v12 = *(v0 + 176);

        return MusicCatalogResourceRequest.response()(v11, v12);
      }
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000C7314()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1000C7994;
  }

  else
  {

    v2 = sub_1000C7430;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C7430()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  sub_1004DC1DC();
  sub_1000C1318(&qword_1006362E8, &qword_100636730, &type metadata accessor for Album, v2);
  (*(v5 + 8))(v4, v6);
  sub_1000108DC(v2, v3, &qword_100635B98);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 96);
    sub_10001074C(*(v0 + 136), &qword_100635B98);
    v10 = sub_1004D809C();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 136);
    v14 = *(v0 + 96);
    sub_1004DC9DC();
    (*(v7 + 8))(v13, v12);
    v15 = sub_1004D809C();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 96);
      sub_1004D7FDC(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 240);
  v21 = *(v0 + 144);
  v22 = *(v0 + 128);
  [*(v0 + 216) setOriginalURL:v11];

  sub_1000108DC(v21, v22, &qword_100635B98);
  if (v8(v22, 1, v20) == 1)
  {
    sub_10001074C(*(v0 + 128), &qword_100635B98);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 128);
    v26 = sub_1004DC99C();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v0 + 80);
        v29 = *(v0 + 56);
        sub_1000374EC(0, v27, 0);
        v30 = *(v28 + 16);
        v28 += 16;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v54 = *(v28 + 56);
        v55 = v30;
        v56 = v0;
        v52 = (v28 - 8);
        v53 = (v29 + 8);
        do
        {
          v32 = *(v0 + 88);
          v33 = *(v0 + 64);
          v34 = *(v0 + 72);
          v35 = *(v0 + 48);
          v55(v32, v31, v34);
          sub_1004D901C();
          v36 = sub_1004D8FFC();
          v38 = v37;
          (*v53)(v33, v35);
          (*v52)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_1000374EC((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
          v31 += v54;
          --v27;
          v0 = v56;
        }

        while (v27);
      }

      isa = sub_1004DD85C().super.isa;
    }

    else
    {
      isa = 0;
    }
  }

  v42 = *(v0 + 224);
  v43 = *(v0 + 184);
  v44 = *(v0 + 192);
  v46 = *(v0 + 168);
  v45 = *(v0 + 176);
  v47 = *(v0 + 152);
  v48 = *(v0 + 160);
  v49 = *(v0 + 144);
  [*(v0 + 232) setOffers:isa];

  sub_10001074C(v49, &qword_100635B98);
  (*(v48 + 8))(v46, v47);
  (*(v43 + 8))(v44, v45);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1000C7994()
{
  v22 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100636438);

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = *(v0 + 224);
    v18 = *(v0 + 184);
    v19 = *(v0 + 176);
    v20 = *(v0 + 192);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v4 = 136446466;
    v7 = sub_1004DC2EC();
    v9 = v8;

    v10 = sub_1000343A8(v7, v9, &v21);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL and offers for album catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001074C(v5, &qword_100636460);

    sub_100008D24(v6);

    (*(v18 + 8))(v20, v19);
  }

  else
  {
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000C7C90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return Album.shareURL.getter(a1);
}

uint64_t sub_1000C7D40(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return Album.augmentMetadata(_:)(a1);
}

uint64_t Artist.failureMessage.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Artist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100004CB8(&qword_100636468);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100004CB8(&qword_100636470);
  v2[9] = swift_task_alloc();
  v4 = sub_100004CB8(&qword_100636478);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_100636480);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000C81C4, 0, 0);
}

uint64_t sub_1000C81C4()
{
  v1 = v0[16];
  sub_1004DCB1C();
  v2 = sub_1004D809C();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001074C(v0[16], &qword_100634B30);
    v4 = sub_1004DCB0C();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004DCB3C();
      sub_1000DA780(&qword_100636488, &type metadata accessor for Artist);

      sub_1004DC1AC();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000C8464;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000C8464()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000C87C4;
  }

  else
  {

    v2 = sub_1000C8580;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C8580()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004DC1DC();
  sub_1000C1318(&qword_100636468, &qword_100636728, &type metadata accessor for Artist, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_10001074C(v12, &qword_100636470);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004DCB1C();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000C87C4()
{
  v21 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100636438);

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_1004DC2EC();
    v9 = v8;

    v10 = sub_1000343A8(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for artist catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001074C(v5, &qword_100636460);

    sub_100008D24(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000C8AA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return Artist.shareURL.getter(a1);
}

uint64_t sub_1000C8B58(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8BF4, 0, 0);
}

uint64_t sub_1000C8BF4()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000C8C94;
  v2 = *(v0 + 32);

  return Artist.shareURL.getter(v2);
}

uint64_t sub_1000C8C94()
{

  return _swift_task_switch(sub_1000DA91C, 0, 0);
}

uint64_t Composer.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D809C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Composer.failureMessage.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_1000C9000()
{
  v1 = *(v0 + 16);
  v2 = sub_1004D809C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000C90B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_1000C5040(a1);
}

uint64_t Curator.failureMessage.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_1000C9344(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000C9364, 0, 0);
}

uint64_t sub_1000C9364()
{
  sub_1004DCCAC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C93DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_1000C5234(a1);
}

uint64_t sub_1000C948C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000C94AC, 0, 0);
}

uint64_t sub_1000C94AC()
{
  sub_1004D906C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C9524(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_1000C53F8(a1);
}

uint64_t Genre.failureMessage.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_1000C97B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000C97D4, 0, 0);
}

uint64_t sub_1000C97D4()
{
  sub_1004DCA1C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C984C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_1000C55BC(a1);
}

uint64_t MusicMovie.failureMessage.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t MusicMovie.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100004CB8(&qword_100636490);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100004CB8(&qword_100636498);
  v2[9] = swift_task_alloc();
  v4 = sub_100004CB8(&qword_1006364A0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_1006364A8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000C9CE4, 0, 0);
}

uint64_t sub_1000C9CE4()
{
  v1 = v0[16];
  sub_1004D8FBC();
  v2 = sub_1004D809C();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001074C(v0[16], &qword_100634B30);
    v4 = sub_1004D8FDC();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004D8FEC();
      sub_1000DA780(&qword_1006364B0, &type metadata accessor for MusicMovie);
      sub_1000DA780(&qword_1006364B8, &type metadata accessor for MusicMovie);

      sub_1004DC1AC();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000C9FB8;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000C9FB8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000CA318;
  }

  else
  {

    v2 = sub_1000CA0D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CA0D4()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004DC1DC();
  sub_1000C1318(&qword_100636490, &qword_100636720, &type metadata accessor for MusicMovie, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_10001074C(v12, &qword_100636498);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004D8FBC();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000CA318()
{
  v21 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100636438);

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_1004DC2EC();
    v9 = v8;

    v10 = sub_1000343A8(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for music movie catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001074C(v5, &qword_100636460);

    sub_100008D24(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000CA5FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return MusicMovie.shareURL.getter(a1);
}

uint64_t sub_1000CA6AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000CA748, 0, 0);
}

uint64_t sub_1000CA748()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000C8C94;
  v2 = *(v0 + 32);

  return MusicMovie.shareURL.getter(v2);
}

uint64_t MusicVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100004CB8(&qword_1006364C0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100004CB8(&qword_100635BD8);
  v2[9] = swift_task_alloc();
  v4 = sub_100004CB8(&qword_1006364C8);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_1006364D0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000CA9F8, 0, 0);
}

uint64_t sub_1000CA9F8()
{
  v1 = v0[16];
  sub_1004DC2AC();
  v2 = sub_1004D809C();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001074C(v0[16], &qword_100634B30);
    v4 = sub_1004DC28C();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004DC2DC();
      sub_1000DA780(&qword_1006364D8, &type metadata accessor for MusicVideo);

      sub_1004DC1AC();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000CAC98;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000CAC98()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000CAFF8;
  }

  else
  {

    v2 = sub_1000CADB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CADB4()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004DC1DC();
  sub_1000C1318(&qword_1006364C0, &qword_100636718, &type metadata accessor for MusicVideo, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_10001074C(v12, &qword_100635BD8);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004DC2AC();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000CAFF8()
{
  v21 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100636438);

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_1004DC2EC();
    v9 = v8;

    v10 = sub_1000343A8(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for music video catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001074C(v5, &qword_100636460);

    sub_100008D24(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000CB2F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return MusicVideo.shareURL.getter(a1);
}

uint64_t sub_1000CB38C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000CB428, 0, 0);
}

uint64_t sub_1000CB428()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000C8C94;
  v2 = *(v0 + 32);

  return MusicVideo.shareURL.getter(v2);
}

uint64_t Playlist.failureMessage.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Playlist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100004CB8(&qword_1006364E0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100004CB8(&qword_100637A00);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_100004CB8(&qword_1006364E8);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_1006364F0);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000CB8C4, 0, 0);
}

uint64_t sub_1000CB8C4()
{
  v1 = v0[17];
  sub_1004DCF5C();
  v2 = sub_1004D809C();
  v0[18] = v2;
  v3 = *(v2 - 8);
  v0[19] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001074C(v0[17], &qword_100634B30);
    v4 = sub_1004DCF1C();
    v0[20] = v4;
    v0[21] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[22] = sub_1004DD05C();
      sub_1000DA780(&qword_1006364F8, &type metadata accessor for Playlist);

      sub_1004DC1AC();
      v8 = swift_task_alloc();
      v0[23] = v8;
      *v8 = v0;
      v8[1] = sub_1000CBBD8;
      v9 = v0[13];
      v10 = v0[14];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    else
    {
      v13 = swift_task_alloc();
      v0[25] = v13;
      *v13 = v0;
      v13[1] = sub_1000CBF44;
      v14 = v0[9];

      return Playlist.publish()(v14);
    }
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[17], v2);
    (*(v3 + 56))(v11, 0, 1, v2);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1000CBBD8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1000CC1C0;
  }

  else
  {

    v2 = sub_1000CBCF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CBCF4()
{
  v1 = v0[22];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004DC1DC();
  sub_1000C1318(&qword_1006364E0, &qword_100636710, &type metadata accessor for Playlist, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[18];
    v8 = v0[19];
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[4];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v10 + 8))(v9, v11);
    sub_10001074C(v12, &qword_100637A00);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[22];
    v16 = v0[15];
    v15 = v0[16];
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[11];
    v20 = v0[12];
    v21 = v0[10];
    sub_1004DCF5C();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000CBF44()
{

  return _swift_task_switch(sub_1000CC040, 0, 0);
}

uint64_t sub_1000CC040()
{
  v1 = v0[9];
  v2 = sub_1004DD05C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[4];
    sub_10001074C(v1, &qword_100637A00);
    (*(v5 + 56))(v6, 1, 1, v4);
  }

  else
  {
    sub_1004DCF5C();
    (*(v3 + 8))(v1, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000CC1C0()
{
  v21 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100636438);

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[15];
    v18 = v0[14];
    v19 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_1004DC2EC();
    v9 = v8;

    v10 = sub_1000343A8(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for playlist catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001074C(v5, &qword_100636460);

    sub_100008D24(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[19] + 56))(v0[4], 1, 1, v0[18]);

  v15 = v0[1];

  return v15();
}

uint64_t Playlist.publish()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1004DD05C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_100004CB8(&qword_100636500);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_100636508);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  sub_100004CB8(&qword_100636510);
  v2[14] = swift_task_alloc();
  v6 = sub_100004CB8(&qword_100637A30);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000CC6DC, 0, 0);
}

uint64_t sub_1000CC6DC()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = sub_1004DCCCC();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1004D8EFC();
  sub_10001074C(v1, &qword_100636510);
  (*(v3 + 104))(v2, enum case for MusicLibraryPlaylistRequest.CompletionPolicy.afterCloudLibraryChanges<A>(_:), v4);
  sub_1004D8EEC();
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1000CC858;
  v7 = v0[10];

  return MusicLibraryPlaylistRequest.response<>()(v7);
}

uint64_t sub_1000CC858()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1000CCA8C;
  }

  else
  {
    v2 = sub_1000CC96C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CC96C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  sub_1004D8F3C();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(v8 + 56))(v9, 0, 1, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000CCA8C()
{
  v30 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_1004D966C();
  sub_100035430(v5, qword_100636438);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = sub_1004D964C();
  v7 = sub_1004DDF7C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  if (v8)
  {
    v26 = v7;
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v16 = 136446466;
    sub_1000DA780(&qword_100637980, &type metadata accessor for Playlist);
    v27 = v12;
    v28 = v10;
    v17 = sub_1004DEFFC();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_1000343A8(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v0[2] = v9;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v21 = sub_1004DD4DC();
    v23 = sub_1000343A8(v21, v22, &v29);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v6, v26, "Failed to make playlist=%{public}s public with error=%{public}s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v28, v27);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  (*(v0[6] + 56))(v0[3], 1, 1, v0[5]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_1000CCDD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return Playlist.shareURL.getter(a1);
}

uint64_t sub_1000CCE84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000CCF20, 0, 0);
}

uint64_t sub_1000CCF20()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000C8C94;
  v2 = *(v0 + 32);

  return Playlist.shareURL.getter(v2);
}

uint64_t sub_1000CCFCC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000CCFEC, 0, 0);
}

uint64_t sub_1000CCFEC()
{
  sub_1004DD06C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CD04C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_1000C5780(a1);
}

uint64_t RecordLabel.failureMessage.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_1000CD2DC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000CD2FC, 0, 0);
}

uint64_t sub_1000CD2FC()
{
  sub_1004DC7BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CD374(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_1000C5944(a1);
}

uint64_t SocialProfile.failureMessage.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_1000CD604(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000CD624, 0, 0);
}

uint64_t sub_1000CD624()
{
  sub_1004D90AC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CD69C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_1000C5B08(a1);
}

uint64_t Song.failureMessage.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Song.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100004CB8(&qword_100636518);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100004CB8(&qword_100635BE0);
  v2[9] = swift_task_alloc();
  v4 = sub_100004CB8(&qword_100636520);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_100636528);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000CDB34, 0, 0);
}

uint64_t sub_1000CDB34()
{
  v1 = v0[16];
  sub_1004DC90C();
  v2 = sub_1004D809C();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001074C(v0[16], &qword_100634B30);
    v4 = sub_1004DC88C();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004DC95C();
      sub_1000DA780(&qword_100636530, &type metadata accessor for Song);

      sub_1004DC1AC();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000CDDD4;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000CDDD4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000CE134;
  }

  else
  {

    v2 = sub_1000CDEF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CDEF0()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004DC1DC();
  sub_1000C1318(&qword_100636518, &qword_100636708, &type metadata accessor for Song, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_10001074C(v12, &qword_100635BE0);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004DC90C();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000CE134()
{
  v21 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100636438);

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_1004DC2EC();
    v9 = v8;

    v10 = sub_1000343A8(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for song catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001074C(v5, &qword_100636460);

    sub_100008D24(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000CE42C@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_100008C70(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t Song.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1004DC80C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_1004D900C();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_1004D902C();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = sub_100004CB8(&qword_100636518);
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  sub_100004CB8(&qword_100635BE0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = sub_100004CB8(&qword_100636520);
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v8 = sub_100004CB8(&qword_100636528);
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000CE7D4, 0, 0);
}

uint64_t sub_1000CE7D4()
{
  v1 = sub_1004DC88C();
  *(v0 + 240) = v1;
  *(v0 + 248) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = **(v0 + 32);
    *(v0 + 256) = v5;
    v6 = [v5 specialization];
    *(v0 + 264) = v6;
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      *(v0 + 272) = v8;
      if (v8)
      {
        swift_getKeyPath();
        *(v0 + 16) = v3;
        *(v0 + 24) = v4;
        *(v0 + 280) = sub_1004DC95C();
        sub_1000DA780(&qword_100636530, &type metadata accessor for Song);

        sub_1004DC1AC();
        sub_100004CB8(&qword_1006379A0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_100511AB0;
        sub_100004CB8(&qword_100636538);
        *(v9 + 32) = sub_1004DBFBC();
        sub_1004DC19C();
        v10 = swift_task_alloc();
        *(v0 + 288) = v10;
        *v10 = v0;
        v10[1] = sub_1000CEAB8;
        v11 = *(v0 + 208);
        v12 = *(v0 + 216);

        return MusicCatalogResourceRequest.response()(v11, v12);
      }
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000CEAB8()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1000CF364;
  }

  else
  {

    v2 = sub_1000CEBD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CEBD4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  v3 = *(v0 + 176);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  sub_1004DC1DC();
  sub_1000C1318(&qword_100636518, &qword_100636708, &type metadata accessor for Song, v2);
  (*(v5 + 8))(v4, v6);
  sub_1000108DC(v2, v3, &qword_100635BE0);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 128);
    sub_10001074C(*(v0 + 176), &qword_100635BE0);
    v10 = sub_1004D809C();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 280);
    v13 = *(v0 + 176);
    v14 = *(v0 + 128);
    sub_1004DC90C();
    (*(v7 + 8))(v13, v12);
    v15 = sub_1004D809C();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 128);
      sub_1004D7FDC(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 280);
  v21 = *(v0 + 184);
  v22 = *(v0 + 168);
  [*(v0 + 256) setOriginalURL:v11];

  sub_1000108DC(v21, v22, &qword_100635BE0);
  if (v8(v22, 1, v20) == 1)
  {
    sub_10001074C(*(v0 + 168), &qword_100635BE0);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 168);
    v26 = sub_1004DC87C();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v71 = v8;
        v72 = v7;
        v28 = *(v0 + 104);
        v29 = *(v0 + 80);
        sub_1000374EC(0, v27, 0);
        v30 = *(v28 + 16);
        v28 += 16;
        v70 = v26;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v75 = *(v28 + 56);
        v76 = v30;
        v77 = v0;
        v73 = (v28 - 8);
        v74 = (v29 + 8);
        do
        {
          v32 = *(v0 + 112);
          v33 = *(v0 + 88);
          v34 = *(v0 + 96);
          v35 = *(v0 + 72);
          v76(v32, v31, v34);
          sub_1004D901C();
          v36 = sub_1004D8FFC();
          v38 = v37;
          (*v74)(v33, v35);
          (*v73)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_1000374EC((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
          v31 += v75;
          --v27;
          v0 = v77;
        }

        while (v27);

        v7 = v72;
        v8 = v71;
      }

      else
      {
      }

      isa = sub_1004DD85C().super.isa;
    }

    else
    {
      isa = 0;
    }
  }

  v42 = *(v0 + 280);
  v43 = *(v0 + 184);
  v44 = *(v0 + 160);
  [*(v0 + 272) setOffers:{isa, v70}];

  sub_1000108DC(v43, v44, &qword_100635BE0);
  if (v8(v44, 1, v42) == 1)
  {
    sub_10001074C(*(v0 + 160), &qword_100635BE0);
LABEL_24:
    v58 = *(v0 + 120);
    v59 = sub_1004D809C();
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    v55 = 0;
    goto LABEL_25;
  }

  v45 = *(v0 + 280);
  v46 = *(v0 + 160);
  v47 = sub_1004DC8DC();
  (*(v7 + 8))(v46, v45);
  if (!v47)
  {
    goto LABEL_24;
  }

  if (!*(v47 + 16))
  {

    goto LABEL_24;
  }

  v48 = *(v0 + 120);
  v50 = *(v0 + 56);
  v49 = *(v0 + 64);
  v51 = *(v0 + 48);
  (*(v50 + 16))(v49, v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v51);

  sub_1004DC7FC();
  (*(v50 + 8))(v49, v51);
  v52 = sub_1004D809C();
  v53 = *(v52 - 8);
  v55 = 0;
  if ((*(v53 + 48))(v48, 1, v52) != 1)
  {
    v56 = *(v0 + 120);
    sub_1004D7FDC(v54);
    v55 = v57;
    (*(v53 + 8))(v56, v52);
  }

LABEL_25:
  v60 = *(v0 + 264);
  v61 = *(v0 + 224);
  v62 = *(v0 + 232);
  v64 = *(v0 + 208);
  v63 = *(v0 + 216);
  v65 = *(v0 + 192);
  v66 = *(v0 + 200);
  v67 = *(v0 + 184);
  [*(v0 + 272) setPreviewURL:v55];

  sub_10001074C(v67, &qword_100635BE0);
  (*(v66 + 8))(v64, v65);
  (*(v61 + 8))(v62, v63);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1000CF364()
{
  v22 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100636438);

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = *(v0 + 264);
    v18 = *(v0 + 224);
    v19 = *(v0 + 216);
    v20 = *(v0 + 232);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v4 = 136446466;
    v7 = sub_1004DC2EC();
    v9 = v8;

    v10 = sub_1000343A8(v7, v9, &v21);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL and offers for song catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001074C(v5, &qword_100636460);

    sub_100008D24(v6);

    (*(v18 + 8))(v20, v19);
  }

  else
  {
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v14 = *(v0 + 216);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000CF688(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return Song.shareURL.getter(a1);
}

uint64_t sub_1000CF738(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return Song.augmentMetadata(_:)(a1);
}

uint64_t Station.failureMessage.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Station.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100004CB8(&qword_100636540);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100004CB8(&unk_100639EC0);
  v2[9] = swift_task_alloc();
  v4 = sub_100004CB8(&qword_100636548);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_100636550);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000CFBC0, 0, 0);
}

uint64_t sub_1000CFBC0()
{
  v1 = v0[16];
  sub_1004DCCFC();
  v2 = sub_1004D809C();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001074C(v0[16], &qword_100634B30);
    v4 = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
    v6 = v5;
    v0[19] = v4;
    v0[20] = v5;
    swift_getKeyPath();
    v0[2] = v4;
    v0[3] = v6;
    v0[21] = sub_1004DCD1C();
    sub_1000DA780(&qword_100636558, &type metadata accessor for Station);

    sub_1004DC1AC();
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_1000CFE44;
    v8 = v0[12];
    v9 = v0[13];

    return MusicCatalogResourceRequest.response()(v8, v9);
  }

  else
  {
    v10 = v0[4];
    (*(v3 + 32))(v10, v0[16], v2);
    (*(v3 + 56))(v10, 0, 1, v2);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1000CFE44()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000D01A4;
  }

  else
  {

    v2 = sub_1000CFF60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CFF60()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004DC1DC();
  sub_1000C1318(&qword_100636540, &qword_100636700, &type metadata accessor for Station, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_10001074C(v12, &unk_100639EC0);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004DCCFC();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000D01A4()
{
  v21 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100636438);

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_1004DC2EC();
    v9 = v8;

    v10 = sub_1000343A8(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for station catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001074C(v5, &qword_100636460);

    sub_100008D24(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000D0488(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return Station.shareURL.getter(a1);
}

uint64_t sub_1000D0538(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000D05D4, 0, 0);
}

uint64_t sub_1000D05D4()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000C8C94;
  v2 = *(v0 + 32);

  return Station.shareURL.getter(v2);
}

uint64_t Track.failureMessage.getter()
{
  v1 = sub_1004D83FC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1004DD3EC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v17[-v7];
  v9 = sub_1004DCAAC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v12, v0, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for Track.song(_:) || v13 == enum case for Track.musicVideo(_:))
  {
    (*(v10 + 8))(v12, v9);
    sub_1004DD37C();
    (*(v3 + 16))(v6, v8, v2);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v14 = qword_100671958;
    sub_1004D838C();
    v15 = sub_1004DD4AC();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v15 = Track.failureMessage.getter();
    (*(v10 + 8))(v12, v9);
  }

  return v15;
}

uint64_t Track.shareURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1004DC95C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1004DC2DC();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1004DCAAC();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000D0B34, 0, 0);
}

uint64_t sub_1000D0B34()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for Track.song(_:))
  {
    v5 = v0[12];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    (*(v0[11] + 96))(v5, v0[10]);
    (*(v7 + 32))(v6, v5, v8);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_1000D0F70;
    v10 = v0[2];

    return Song.shareURL.getter(v10);
  }

  else if (v4 == enum case for Track.musicVideo(_:))
  {
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[7];
    v15 = v0[8];
    (*(v0[11] + 96))(v12, v0[10]);
    (*(v15 + 32))(v13, v12, v14);
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_1000D0DDC;
    v17 = v0[2];

    return MusicVideo.shareURL.getter(v17);
  }

  else
  {
    v18 = v0[2];
    v19 = sub_1004D809C();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    (*(v0[11] + 8))(v0[12], v0[10]);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1000D0DDC()
{

  return _swift_task_switch(sub_1000D0ED8, 0, 0);
}

uint64_t sub_1000D0ED8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D0F70()
{

  return _swift_task_switch(sub_1000D106C, 0, 0);
}

uint64_t sub_1000D106C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D110C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return Track.shareURL.getter(a1);
}

uint64_t sub_1000D11A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000D1244, 0, 0);
}

uint64_t sub_1000D1244()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000C8C94;
  v2 = *(v0 + 32);

  return Track.shareURL.getter(v2);
}

uint64_t TVEpisode.failureMessage.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVEpisode.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100004CB8(&qword_100636560);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100004CB8(&qword_100636568);
  v2[9] = swift_task_alloc();
  v4 = sub_100004CB8(&qword_100636570);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_100636578);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000D16D4, 0, 0);
}

uint64_t sub_1000D16D4()
{
  v1 = v0[16];
  sub_1004D927C();
  v2 = sub_1004D809C();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001074C(v0[16], &qword_100634B30);
    v4 = sub_1004D929C();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004D92AC();
      sub_1000DA780(&qword_100636580, &type metadata accessor for TVEpisode);
      sub_1000DA780(&qword_100636588, &type metadata accessor for TVEpisode);

      sub_1004DC1AC();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000D19A8;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D19A8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000D1D08;
  }

  else
  {

    v2 = sub_1000D1AC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D1AC4()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004DC1DC();
  sub_1000C1318(&qword_100636560, &qword_1006366F8, &type metadata accessor for TVEpisode, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_10001074C(v12, &qword_100636568);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004D927C();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000D1D08()
{
  v21 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100636438);

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_1004DC2EC();
    v9 = v8;

    v10 = sub_1000343A8(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVEpisode catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001074C(v5, &qword_100636460);

    sub_100008D24(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000D1FEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return TVEpisode.shareURL.getter(a1);
}

uint64_t sub_1000D209C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000D2138, 0, 0);
}

uint64_t sub_1000D2138()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000C8C94;
  v2 = *(v0 + 32);

  return TVEpisode.shareURL.getter(v2);
}

uint64_t TVSeason.failureMessage.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVSeason.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100004CB8(&qword_100636590);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100004CB8(&qword_100636598);
  v2[9] = swift_task_alloc();
  v4 = sub_100004CB8(&qword_1006365A0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_1006365A8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000D25C8, 0, 0);
}

uint64_t sub_1000D25C8()
{
  v1 = v0[16];
  sub_1004D921C();
  v2 = sub_1004D809C();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001074C(v0[16], &qword_100634B30);
    v4 = sub_1004D923C();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004D924C();
      sub_1000DA780(&qword_1006365B0, &type metadata accessor for TVSeason);
      sub_1000DA780(&qword_1006365B8, &type metadata accessor for TVSeason);

      sub_1004DC1AC();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000D289C;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D289C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000D2BFC;
  }

  else
  {

    v2 = sub_1000D29B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D29B8()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004DC1DC();
  sub_1000C1318(&qword_100636590, &qword_1006366F0, &type metadata accessor for TVSeason, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_10001074C(v12, &qword_100636598);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004D921C();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000D2BFC()
{
  v21 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100636438);

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_1004DC2EC();
    v9 = v8;

    v10 = sub_1000343A8(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVSeason catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001074C(v5, &qword_100636460);

    sub_100008D24(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000D2EE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return TVSeason.shareURL.getter(a1);
}

uint64_t sub_1000D2F90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000D302C, 0, 0);
}

uint64_t sub_1000D302C()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000C8C94;
  v2 = *(v0 + 32);

  return TVSeason.shareURL.getter(v2);
}

uint64_t sub_1000D30D4()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVShow.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100004CB8(&qword_1006365C0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100004CB8(&qword_1006365C8);
  v2[9] = swift_task_alloc();
  v4 = sub_100004CB8(&qword_1006365D0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_1006365D8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000D34C0, 0, 0);
}

uint64_t sub_1000D34C0()
{
  v1 = v0[16];
  sub_1004D91BC();
  v2 = sub_1004D809C();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001074C(v0[16], &qword_100634B30);
    v4 = sub_1004D91DC();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004D91EC();
      sub_1000DA780(&qword_1006365E0, &type metadata accessor for TVShow);
      sub_1000DA780(&qword_1006365E8, &type metadata accessor for TVShow);

      sub_1004DC1AC();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000D3794;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D3794()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000D3AF4;
  }

  else
  {

    v2 = sub_1000D38B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D38B0()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004DC1DC();
  sub_1000C1318(&qword_1006365C0, &qword_1006366E8, &type metadata accessor for TVShow, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_10001074C(v12, &qword_1006365C8);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004D91BC();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000D3AF4()
{
  v21 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100636438);

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_1004DC2EC();
    v9 = v8;

    v10 = sub_1000343A8(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVShow catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001074C(v5, &qword_100636460);

    sub_100008D24(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000D3DD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return TVShow.shareURL.getter(a1);
}

uint64_t sub_1000D3E88(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000D3F24, 0, 0);
}

uint64_t sub_1000D3F24()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000C8C94;
  v2 = *(v0 + 32);

  return TVShow.shareURL.getter(v2);
}

uint64_t UploadedAudio.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100004CB8(&qword_1006365F0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100004CB8(&qword_1006365F8);
  v2[9] = swift_task_alloc();
  v4 = sub_100004CB8(&qword_100636600);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_100636608);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000D41D4, 0, 0);
}

uint64_t sub_1000D41D4()
{
  v1 = v0[16];
  _s16MusicKitInternal13UploadedAudioV0A4CoreE3url10Foundation3URLVSgvg_0();
  v2 = sub_1004D809C();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001074C(v0[16], &qword_100634B30);
    v4 = sub_1004D910C();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004D911C();
      sub_1000DA780(&qword_100636610, &type metadata accessor for UploadedAudio);
      sub_1000DA780(&qword_100636618, &type metadata accessor for UploadedAudio);

      sub_1004DC1AC();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000D44A8;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D44A8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000D4808;
  }

  else
  {

    v2 = sub_1000D45C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D45C4()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004DC1DC();
  sub_1000C1318(&qword_1006365F0, &qword_1006366E0, &type metadata accessor for UploadedAudio, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_10001074C(v12, &qword_1006365F8);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    _s16MusicKitInternal13UploadedAudioV0A4CoreE3url10Foundation3URLVSgvg_0();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000D4808()
{
  v21 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100636438);

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_1004DC2EC();
    v9 = v8;

    v10 = sub_1000343A8(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for uploaded audio catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001074C(v5, &qword_100636460);

    sub_100008D24(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000D4AEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return UploadedAudio.shareURL.getter(a1);
}

uint64_t sub_1000D4B84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000D4C20, 0, 0);
}

uint64_t sub_1000D4C20()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000C8C94;
  v2 = *(v0 + 32);

  return UploadedAudio.shareURL.getter(v2);
}

uint64_t sub_1000D4CC8()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t UploadedVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100004CB8(&qword_100636620);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100004CB8(&qword_100636628);
  v2[9] = swift_task_alloc();
  v4 = sub_100004CB8(&qword_100636630);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_100636638);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000D50B4, 0, 0);
}

uint64_t sub_1000D50B4()
{
  v1 = v0[16];
  _s16MusicKitInternal13UploadedVideoV0A4CoreE3url10Foundation3URLVSgvg_0();
  v2 = sub_1004D809C();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001074C(v0[16], &qword_100634B30);
    v4 = sub_1004D915C();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004D916C();
      sub_1000DA780(&qword_100636640, &type metadata accessor for UploadedVideo);
      sub_1000DA780(&qword_100636648, &type metadata accessor for UploadedVideo);

      sub_1004DC1AC();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000D5388;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D5388()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000D56E8;
  }

  else
  {

    v2 = sub_1000D54A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D54A4()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004DC1DC();
  sub_1000C1318(&qword_100636620, &qword_1006366D8, &type metadata accessor for UploadedVideo, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_10001074C(v12, &qword_100636628);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    _s16MusicKitInternal13UploadedVideoV0A4CoreE3url10Foundation3URLVSgvg_0();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000D56E8()
{
  v21 = v0;
  if (qword_100633AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100636438);

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_1004DC2EC();
    v9 = v8;

    v10 = sub_1000343A8(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for uploaded video catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001074C(v5, &qword_100636460);

    sub_100008D24(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000D59CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return UploadedVideo.shareURL.getter(a1);
}

uint64_t sub_1000D5A7C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000D5B18, 0, 0);
}

uint64_t sub_1000D5B18()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000C8C94;
  v2 = *(v0 + 32);

  return UploadedVideo.shareURL.getter(v2);
}

uint64_t GenericMusicItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v54 = sub_1004D916C();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1004D911C();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1004D91EC();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1004D924C();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1004D92AC();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1004DCD1C();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1004DC95C();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1004D90CC();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1004DC7DC();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DD08C();
  v80 = *(v10 - 8);
  v81 = v10;
  __chkstk_darwin(v10);
  v79 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004DD05C();
  v83 = *(v12 - 8);
  v84 = v12;
  __chkstk_darwin(v12);
  v82 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004DC2DC();
  v86 = *(v14 - 8);
  v87 = v14;
  __chkstk_darwin(v14);
  v85 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004D8FEC();
  v89 = *(v16 - 8);
  v90 = v16;
  __chkstk_darwin(v16);
  v88 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004DCA3C();
  v92 = *(v18 - 8);
  v93 = v18;
  __chkstk_darwin(v18);
  v91 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004D908C();
  v95 = *(v20 - 8);
  v96 = v20;
  __chkstk_darwin(v20);
  v94 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004DCCCC();
  v97 = *(v22 - 8);
  v98 = v22;
  __chkstk_darwin(v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1004DCB3C();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1004DCA0C();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1004D8BFC();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v36, v99, v33);
  v37 = (*(v34 + 88))(v36, v33);
  if (v37 == enum case for GenericMusicItem.album(_:))
  {
    (*(v34 + 96))(v36, v33);
    (*(v30 + 32))(v32, v36, v29);
    sub_1004DC9DC();
    return (*(v30 + 8))(v32, v29);
  }

  v39 = v100;
  if (v37 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v34 + 96))(v36, v33);
    (*(v26 + 32))(v28, v36, v25);
    sub_1004DCB1C();
    return (*(v26 + 8))(v28, v25);
  }

  if (v37 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v34 + 8))(v36, v33);
    v40 = sub_1004D809C();
    return (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
  }

  v41 = v100;
  if (v37 == enum case for GenericMusicItem.creditArtist(_:))
  {
    goto LABEL_8;
  }

  if (v37 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v34 + 96))(v36, v33);
    v44 = v97;
    v43 = v98;
    (*(v97 + 32))(v24, v36, v98);
    sub_1004DCCAC();
    return (*(v44 + 8))(v24, v43);
  }

  if (v37 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v94;
    v46 = v95;
    v47 = v96;
    (*(v95 + 32))(v94, v36, v96);
    sub_1004D906C();
  }

  else if (v37 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v91;
    v46 = v92;
    v47 = v93;
    (*(v92 + 32))(v91, v36, v93);
    sub_1004DCA1C();
  }

  else if (v37 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v88;
    v46 = v89;
    v47 = v90;
    (*(v89 + 32))(v88, v36, v90);
    sub_1004D8FBC();
  }

  else if (v37 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v85;
    v46 = v86;
    v47 = v87;
    (*(v86 + 32))(v85, v36, v87);
    sub_1004DC2AC();
  }

  else if (v37 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v82;
    v46 = v83;
    v47 = v84;
    (*(v83 + 32))(v82, v36, v84);
    sub_1004DCF5C();
  }

  else
  {
    if (v37 == enum case for GenericMusicItem.playlistFolder(_:))
    {
LABEL_8:
      (*(v34 + 8))(v36, v33);
      v42 = sub_1004D809C();
      return (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
    }

    if (v37 == enum case for GenericMusicItem.radioShow(_:))
    {
      (*(v34 + 96))(v36, v33);
      v46 = v80;
      v47 = v81;
      v45 = v79;
      (*(v80 + 32))(v79, v36, v81);
      sub_1004DD06C();
    }

    else if (v37 == enum case for GenericMusicItem.recordLabel(_:))
    {
      (*(v34 + 96))(v36, v33);
      v46 = v77;
      v45 = v76;
      v47 = v78;
      (*(v77 + 32))(v76, v36, v78);
      sub_1004DC7BC();
    }

    else
    {
      if (v37 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v37 == enum case for GenericMusicItem.song(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v71;
          v49 = v70;
          v50 = v72;
          (*(v71 + 32))(v70, v36, v72);
          sub_1004DC90C();
        }

        else if (v37 == enum case for GenericMusicItem.station(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v68;
          v49 = v67;
          v50 = v69;
          (*(v68 + 32))(v67, v36, v69);
          sub_1004DCCFC();
        }

        else if (v37 == enum case for GenericMusicItem.tvEpisode(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v65;
          v49 = v64;
          v50 = v66;
          (*(v65 + 32))(v64, v36, v66);
          sub_1004D927C();
        }

        else if (v37 == enum case for GenericMusicItem.tvSeason(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v62;
          v49 = v61;
          v50 = v63;
          (*(v62 + 32))(v61, v36, v63);
          sub_1004D921C();
        }

        else if (v37 == enum case for GenericMusicItem.tvShow(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v59;
          v49 = v58;
          v50 = v60;
          (*(v59 + 32))(v58, v36, v60);
          sub_1004D91BC();
        }

        else if (v37 == enum case for GenericMusicItem.uploadedAudio(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v56;
          v49 = v55;
          v50 = v57;
          (*(v56 + 32))(v55, v36, v57);
          _s16MusicKitInternal13UploadedAudioV0A4CoreE3url10Foundation3URLVSgvg_0();
        }

        else
        {
          if (v37 != enum case for GenericMusicItem.uploadedVideo(_:))
          {
            v41 = v100;
            if (v37 != enum case for GenericMusicItem.other(_:))
            {
              v51 = sub_1004D809C();
              (*(*(v51 - 8) + 56))(v39, 1, 1, v51);
              return (*(v34 + 8))(v36, v33);
            }

            goto LABEL_8;
          }

          (*(v34 + 96))(v36, v33);
          v48 = v53;
          v49 = v52;
          v50 = v54;
          (*(v53 + 32))(v52, v36, v54);
          _s16MusicKitInternal13UploadedVideoV0A4CoreE3url10Foundation3URLVSgvg_0();
        }

        return (*(v48 + 8))(v49, v50);
      }

      (*(v34 + 96))(v36, v33);
      v46 = v74;
      v45 = v73;
      v47 = v75;
      (*(v74 + 32))(v73, v36, v75);
      sub_1004D90AC();
    }
  }

  return (*(v46 + 8))(v45, v47);
}

uint64_t GenericMusicItem.shareURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1004D916C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1004D911C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1004D91EC();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_1004D924C();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = sub_1004D92AC();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v8 = sub_1004DC95C();
  v2[19] = v8;
  v2[20] = *(v8 - 8);
  v2[21] = swift_task_alloc();
  v9 = sub_1004DD05C();
  v2[22] = v9;
  v2[23] = *(v9 - 8);
  v2[24] = swift_task_alloc();
  v10 = sub_1004DC2DC();
  v2[25] = v10;
  v2[26] = *(v10 - 8);
  v2[27] = swift_task_alloc();
  v11 = sub_1004D8FEC();
  v2[28] = v11;
  v2[29] = *(v11 - 8);
  v2[30] = swift_task_alloc();
  v12 = sub_1004DCB3C();
  v2[31] = v12;
  v2[32] = *(v12 - 8);
  v2[33] = swift_task_alloc();
  v13 = sub_1004DCA0C();
  v2[34] = v13;
  v2[35] = *(v13 - 8);
  v2[36] = swift_task_alloc();
  v14 = sub_1004D8BFC();
  v2[37] = v14;
  v2[38] = *(v14 - 8);
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_1000D7390, 0, 0);
}

uint64_t sub_1000D7390()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for GenericMusicItem.album(_:))
  {
    v5 = v0[39];
    v6 = v0[36];
    v7 = v0[34];
    v8 = v0[35];
    (*(v0[38] + 96))(v5, v0[37]);
    (*(v8 + 32))(v6, v5, v7);
    v9 = swift_task_alloc();
    v0[40] = v9;
    *v9 = v0;
    v9[1] = sub_1000D7F74;
    v10 = v0[2];

    return Album.shareURL.getter(v10);
  }

  if (v4 == enum case for GenericMusicItem.artist(_:))
  {
    v12 = v0[39];
    v14 = v0[32];
    v13 = v0[33];
    v15 = v0[31];
    (*(v0[38] + 96))(v12, v0[37]);
    (*(v14 + 32))(v13, v12, v15);
    v16 = swift_task_alloc();
    v0[41] = v16;
    *v16 = v0;
    v16[1] = sub_1000D8190;
    v17 = v0[2];

    return Artist.shareURL.getter(v17);
  }

  if (v4 == enum case for GenericMusicItem.composer(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.creditArtist(_:))
  {
LABEL_12:
    v19 = v0[2];
    (*(v0[38] + 8))(v0[39], v0[37]);
    v20 = sub_1004D809C();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    goto LABEL_13;
  }

  if (v4 == enum case for GenericMusicItem.curator(_:) || v4 == enum case for GenericMusicItem.editorialItem(_:) || v4 == enum case for GenericMusicItem.genre(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.musicMovie(_:))
  {
    v24 = v0[39];
    v26 = v0[29];
    v25 = v0[30];
    v27 = v0[28];
    (*(v0[38] + 96))(v24, v0[37]);
    (*(v26 + 32))(v25, v24, v27);
    v28 = swift_task_alloc();
    v0[42] = v28;
    *v28 = v0;
    v28[1] = sub_1000D83AC;
    v29 = v0[2];

    return MusicMovie.shareURL.getter(v29);
  }

  if (v4 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v30 = v0[39];
    v32 = v0[26];
    v31 = v0[27];
    v33 = v0[25];
    (*(v0[38] + 96))(v30, v0[37]);
    (*(v32 + 32))(v31, v30, v33);
    v34 = swift_task_alloc();
    v0[43] = v34;
    *v34 = v0;
    v34[1] = sub_1000D85C8;
    v35 = v0[2];

    return MusicVideo.shareURL.getter(v35);
  }

  if (v4 == enum case for GenericMusicItem.playlist(_:))
  {
    v36 = v0[39];
    v38 = v0[23];
    v37 = v0[24];
    v39 = v0[22];
    (*(v0[38] + 96))(v36, v0[37]);
    (*(v38 + 32))(v37, v36, v39);
    v40 = swift_task_alloc();
    v0[44] = v40;
    *v40 = v0;
    v40[1] = sub_1000D87E4;
    v41 = v0[2];

    return Playlist.shareURL.getter(v41);
  }

  if (v4 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    goto LABEL_12;
  }

  if (v4 == enum case for GenericMusicItem.radioShow(_:) || v4 == enum case for GenericMusicItem.recordLabel(_:) || v4 == enum case for GenericMusicItem.socialProfile(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.song(_:))
  {
    v42 = v0[39];
    v44 = v0[20];
    v43 = v0[21];
    v45 = v0[19];
    (*(v0[38] + 96))(v42, v0[37]);
    (*(v44 + 32))(v43, v42, v45);
    v46 = swift_task_alloc();
    v0[45] = v46;
    *v46 = v0;
    v46[1] = sub_1000D8A00;
    v47 = v0[2];

    return Song.shareURL.getter(v47);
  }

  if (v4 == enum case for GenericMusicItem.station(_:))
  {
LABEL_10:
    v18 = v0[2];
    (*(v0[38] + 8))(v0[39], v0[37]);
    GenericMusicItem.url.getter(v18);
LABEL_13:

    v21 = v0[1];

    return v21();
  }

  if (v4 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    v48 = v0[39];
    v50 = v0[17];
    v49 = v0[18];
    v51 = v0[16];
    (*(v0[38] + 96))(v48, v0[37]);
    (*(v50 + 32))(v49, v48, v51);
    v52 = swift_task_alloc();
    v0[46] = v52;
    *v52 = v0;
    v52[1] = sub_1000D8C1C;
    v53 = v0[2];

    return TVEpisode.shareURL.getter(v53);
  }

  else if (v4 == enum case for GenericMusicItem.tvSeason(_:))
  {
    v54 = v0[39];
    v56 = v0[14];
    v55 = v0[15];
    v57 = v0[13];
    (*(v0[38] + 96))(v54, v0[37]);
    (*(v56 + 32))(v55, v54, v57);
    v58 = swift_task_alloc();
    v0[47] = v58;
    *v58 = v0;
    v58[1] = sub_1000D8E38;
    v59 = v0[2];

    return TVSeason.shareURL.getter(v59);
  }

  else if (v4 == enum case for GenericMusicItem.tvShow(_:))
  {
    v60 = v0[39];
    v62 = v0[11];
    v61 = v0[12];
    v63 = v0[10];
    (*(v0[38] + 96))(v60, v0[37]);
    (*(v62 + 32))(v61, v60, v63);
    v64 = swift_task_alloc();
    v0[48] = v64;
    *v64 = v0;
    v64[1] = sub_1000D9054;
    v65 = v0[2];

    return TVShow.shareURL.getter(v65);
  }

  else if (v4 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    v66 = v0[39];
    v68 = v0[8];
    v67 = v0[9];
    v69 = v0[7];
    (*(v0[38] + 96))(v66, v0[37]);
    (*(v68 + 32))(v67, v66, v69);
    v70 = swift_task_alloc();
    v0[49] = v70;
    *v70 = v0;
    v70[1] = sub_1000D9270;
    v71 = v0[2];

    return UploadedAudio.shareURL.getter(v71);
  }

  else
  {
    if (v4 != enum case for GenericMusicItem.uploadedVideo(_:))
    {
      if (v4 != enum case for GenericMusicItem.other(_:))
      {
        v79 = v0[38];
        v78 = v0[39];
        v80 = v0[37];
        GenericMusicItem.url.getter(v0[2]);
        (*(v79 + 8))(v78, v80);
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v72 = v0[39];
    v74 = v0[5];
    v73 = v0[6];
    v75 = v0[4];
    (*(v0[38] + 96))(v72, v0[37]);
    (*(v74 + 32))(v73, v72, v75);
    v76 = swift_task_alloc();
    v0[50] = v76;
    *v76 = v0;
    v76[1] = sub_1000D948C;
    v77 = v0[2];

    return UploadedVideo.shareURL.getter(v77);
  }
}

uint64_t sub_1000D7F74()
{

  return _swift_task_switch(sub_1000D8070, 0, 0);
}

uint64_t sub_1000D8070()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D8190()
{

  return _swift_task_switch(sub_1000D828C, 0, 0);
}

uint64_t sub_1000D828C()
{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D83AC()
{

  return _swift_task_switch(sub_1000D84A8, 0, 0);
}

uint64_t sub_1000D84A8()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D85C8()
{

  return _swift_task_switch(sub_1000D86C4, 0, 0);
}

uint64_t sub_1000D86C4()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D87E4()
{

  return _swift_task_switch(sub_1000D88E0, 0, 0);
}

uint64_t sub_1000D88E0()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D8A00()
{

  return _swift_task_switch(sub_1000D8AFC, 0, 0);
}

uint64_t sub_1000D8AFC()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D8C1C()
{

  return _swift_task_switch(sub_1000D8D18, 0, 0);
}

uint64_t sub_1000D8D18()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D8E38()
{

  return _swift_task_switch(sub_1000D8F34, 0, 0);
}

uint64_t sub_1000D8F34()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D9054()
{

  return _swift_task_switch(sub_1000D9150, 0, 0);
}

uint64_t sub_1000D9150()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D9270()
{

  return _swift_task_switch(sub_1000D936C, 0, 0);
}

uint64_t sub_1000D936C()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D948C()
{

  return _swift_task_switch(sub_1000D9588, 0, 0);
}

uint64_t sub_1000D9588()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t GenericMusicItem.failureMessage.getter()
{
  v1 = sub_1004D83FC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1004DD3EC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v17[-v7];
  v9 = sub_1004D8BFC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v12, v0, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for GenericMusicItem.album(_:) || v13 == enum case for GenericMusicItem.artist(_:) || v13 == enum case for GenericMusicItem.composer(_:) || v13 == enum case for GenericMusicItem.curator(_:) || v13 == enum case for GenericMusicItem.genre(_:) || v13 == enum case for GenericMusicItem.musicMovie(_:) || v13 == enum case for GenericMusicItem.musicVideo(_:) || v13 == enum case for GenericMusicItem.playlist(_:) || v13 == enum case for GenericMusicItem.radioShow(_:) || v13 == enum case for GenericMusicItem.recordLabel(_:) || v13 == enum case for GenericMusicItem.socialProfile(_:) || v13 == enum case for GenericMusicItem.song(_:) || v13 == enum case for GenericMusicItem.station(_:) || v13 == enum case for GenericMusicItem.tvEpisode(_:) || v13 == enum case for GenericMusicItem.tvSeason(_:) || v13 == enum case for GenericMusicItem.tvShow(_:) || v13 == enum case for GenericMusicItem.uploadedAudio(_:) || v13 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v10 + 8))(v12, v9);
    sub_1004DD37C();
    (*(v3 + 16))(v6, v8, v2);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v14 = qword_100671958;
    sub_1004D838C();
    v15 = sub_1004DD4AC();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v15 = GenericMusicItem.failureMessage.getter();
    (*(v10 + 8))(v12, v9);
  }

  return v15;
}

uint64_t sub_1000D9D6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035B28;

  return GenericMusicItem.shareURL.getter(a1);
}

uint64_t sub_1000D9E08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_100634B30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000D9EA4, 0, 0);
}

uint64_t sub_1000D9EA4()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000D9F44;
  v2 = *(v0 + 32);

  return GenericMusicItem.shareURL.getter(v2);
}

uint64_t sub_1000D9F44()
{

  return _swift_task_switch(sub_1000DA040, 0, 0);
}

uint64_t sub_1000DA040()
{
  v1 = *(v0 + 32);
  v2 = sub_1004D809C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 0;
  }

  else
  {
    sub_1004D7FDC(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  [*(v0 + 40) setOriginalURL:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000DA164()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100636438);
  sub_100035430(v0, qword_100636438);
  return sub_1004D965C();
}

uint64_t sub_1000DA1DC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1000DA23C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_1000DA3B8@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_100008C70(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1000DA410(uint64_t a1)
{
  result = sub_1000DA780(&qword_100636690, &type metadata accessor for Composer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DA468(uint64_t a1)
{
  result = sub_1000DA780(&qword_100636698, &type metadata accessor for EditorialItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DA4C0(uint64_t a1)
{
  result = sub_1000DA780(&qword_1006366A0, &type metadata accessor for MusicMovie);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DA518(uint64_t a1)
{
  result = sub_1000DA780(&qword_1006366A8, &type metadata accessor for SocialProfile);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DA570(uint64_t a1)
{
  result = sub_1000DA780(&qword_1006366B0, &type metadata accessor for TVEpisode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DA5C8(uint64_t a1)
{
  result = sub_1000DA780(&qword_1006366B8, &type metadata accessor for TVSeason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DA620(uint64_t a1)
{
  result = sub_1000DA780(&qword_1006366C0, &type metadata accessor for TVShow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DA678(uint64_t a1)
{
  result = sub_1000DA780(&qword_1006366C8, &type metadata accessor for UploadedAudio);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DA6D0(uint64_t a1)
{
  result = sub_1000DA780(&qword_1006366D0, &type metadata accessor for UploadedVideo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DA728(uint64_t a1)
{
  result = sub_1000DA780(&unk_100639ED0, &type metadata accessor for GenericMusicItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DA780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DA7D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1000DA820(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DA8A0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10, uint64_t a11)
{
  v53 = a7;
  v54 = a8;
  v55 = a6;
  v56 = a9;
  v50 = a5;
  v48 = a4;
  v52 = a3;
  v12 = *(a10 - 8);
  v13 = v12;
  v58 = a1;
  v59 = v12;
  v14 = *(v12 + 64);
  v57 = a11;
  v15 = __chkstk_darwin(a1);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v42 - v17;
  v49 = v14;
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v43 = *(v13 + 16);
  v43(&v42 - v19);
  v46 = *(v13 + 80);
  v21 = (v46 + 40) & ~v46;
  v22 = v21 + v14;
  v44 = v46 | 7;
  v23 = swift_allocObject();
  v51 = v23;
  *(v23 + 2) = a10;
  *(v23 + 3) = a11;
  v45 = a2;
  *(v23 + 4) = a2;
  v24 = *(v59 + 32);
  v59 += 32;
  v24(v23 + v21, v20, a10);
  (v43)(v18, v58, a10);
  v25 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v57;
  *(v27 + 2) = a10;
  *(v27 + 3) = v28;
  *(v27 + 4) = a2;
  v24(v27 + v21, v18, a10);
  v29 = v27 + v25;
  v30 = v48;
  v31 = v48[1];
  *v29 = *v48;
  *(v29 + 1) = v31;
  *(v29 + 4) = *(v30 + 4);
  sub_100047F38(v50, v27 + v26, &qword_100636758);
  sub_100035850(v52, v27 + ((v26 + 103) & 0xFFFFFFFFFFFFFFF8));
  v32 = v47;
  v24(v47, v58, a10);
  v33 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v34 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v35 = (*(v33 + 64) + v46 + v34) & ~v46;
  v36 = swift_allocObject();
  v37 = v57;
  *(v36 + 2) = a10;
  *(v36 + 3) = v37;
  v38 = v54;
  *(v36 + 4) = v53;
  *(v36 + 5) = v38;
  sub_100047F38(v55, v36 + v34, &qword_1006359A0);
  v24(v36 + v35, v32, a10);

  v40 = v56;
  v41 = v51;
  *v56 = sub_1000DBA4C;
  v40[1] = v41;
  v40[2] = &unk_1005195A8;
  v40[3] = v27;
  v40[4] = &unk_1005195B8;
  v40[5] = v36;
  return result;
}

uint64_t Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10, uint64_t a11)
{
  v53 = a7;
  v54 = a8;
  v55 = a6;
  v56 = a9;
  v50 = a5;
  v48 = a4;
  v52 = a3;
  v12 = *(a10 - 8);
  v13 = v12;
  v58 = a1;
  v59 = v12;
  v14 = *(v12 + 64);
  v57 = a11;
  v15 = __chkstk_darwin(a1);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v42 - v17;
  v49 = v14;
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v43 = *(v13 + 16);
  v43(&v42 - v19);
  v46 = *(v13 + 80);
  v21 = (v46 + 40) & ~v46;
  v22 = v21 + v14;
  v44 = v46 | 7;
  v23 = swift_allocObject();
  v51 = v23;
  *(v23 + 2) = a10;
  *(v23 + 3) = a11;
  v45 = a2;
  *(v23 + 4) = a2;
  v24 = *(v59 + 32);
  v59 += 32;
  v24(v23 + v21, v20, a10);
  (v43)(v18, v58, a10);
  v25 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v57;
  *(v27 + 2) = a10;
  *(v27 + 3) = v28;
  *(v27 + 4) = a2;
  v24(v27 + v21, v18, a10);
  v29 = v27 + v25;
  v30 = v48;
  v31 = v48[1];
  *v29 = *v48;
  *(v29 + 1) = v31;
  *(v29 + 4) = *(v30 + 4);
  sub_100047F38(v50, v27 + v26, &qword_100636758);
  sub_100035850(v52, v27 + ((v26 + 103) & 0xFFFFFFFFFFFFFFF8));
  v32 = v47;
  v24(v47, v58, a10);
  v33 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v34 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v35 = (*(v33 + 64) + v46 + v34) & ~v46;
  v36 = swift_allocObject();
  v37 = v57;
  *(v36 + 2) = a10;
  *(v36 + 3) = v37;
  v38 = v54;
  *(v36 + 4) = v53;
  *(v36 + 5) = v38;
  sub_100047F38(v55, v36 + v34, &qword_1006359A0);
  v24(v36 + v35, v32, a10);

  v40 = v56;
  v41 = v51;
  *v56 = sub_1000DE768;
  v40[1] = v41;
  v40[2] = &unk_1005195D8;
  v40[3] = v27;
  v40[4] = &unk_1005195E8;
  v40[5] = v36;
  return result;
}

uint64_t Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)()@<X8>)
{
  v49 = a4;
  v50 = a7;
  v47 = a3;
  v51 = a1;
  v10 = *(a5 - 8);
  v11 = __chkstk_darwin(a1);
  v45 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v41 = v39 - v14;
  v16 = v15;
  v46 = v15;
  __chkstk_darwin(v13);
  v18 = v39 - v17;
  v40 = *(v10 + 16);
  v40(v39 - v17);
  v44 = *(v10 + 80);
  v19 = (v44 + 40) & ~v44;
  v20 = swift_allocObject();
  v48 = v20;
  *(v20 + 2) = a5;
  *(v20 + 3) = a6;
  v42 = a6;
  v43 = a2;
  v21 = a2;
  *(v20 + 4) = a2;
  v22 = *(v10 + 32);
  v39[1] = v10 + 32;
  v22(v20 + v19, v18, a5);
  v23 = v41;
  (v40)(v41, v51, a5);
  v24 = swift_allocObject();
  *(v24 + 2) = a5;
  *(v24 + 3) = a6;
  *(v24 + 4) = v21;
  v25 = v23;
  v26 = v22;
  v22(v24 + v19, v25, a5);
  v27 = v24 + ((v19 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  v28 = v47;
  v29 = v47[1];
  *v27 = *v47;
  *(v27 + 1) = v29;
  *(v27 + 4) = *(v28 + 4);
  v30 = v45;
  v22(v45, v51, a5);
  v31 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = (*(v31 + 64) + v44 + v32) & ~v44;
  v34 = swift_allocObject();
  v35 = v42;
  *(v34 + 16) = a5;
  *(v34 + 24) = v35;
  sub_100047F38(v49, v34 + v32, &qword_1006359A0);
  v26(v34 + v33, v30, a5);

  v37 = v50;
  v38 = v48;
  *v50 = sub_1000E2084;
  v37[1] = v38;
  v37[2] = &unk_100519608;
  v37[3] = v24;
  v37[4] = &unk_100519618;
  v37[5] = v34;
  return result;
}

uint64_t Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t (**a6)()@<X8>)
{
  v42 = a3;
  v43 = a6;
  v39 = a2;
  v35 = a1;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(a1);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v37 = &v33 - v13;
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  sub_10001074C(v16, &qword_100635A30);
  v36 = *(v9 + 16);
  v36(v15, a1, a4);
  v38 = *(v9 + 80);
  v17 = (v38 + 40) & ~v38;
  v18 = swift_allocObject();
  v40 = v18;
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  v19 = v39;
  *(v18 + 4) = v39;
  v34 = *(v9 + 32);
  v44 = v9 + 32;
  v34(v18 + v17, v15, a4);
  v20 = v37;
  v21 = v35;
  v36(v37, v35, a4);
  v22 = swift_allocObject();
  *(v22 + 2) = a4;
  *(v22 + 3) = a5;
  *(v22 + 4) = v19;
  v23 = v20;
  v24 = v34;
  v34(v22 + v17, v23, a4);
  v25 = v41;
  v24(v41, v21, a4);
  v26 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = (*(v26 + 64) + v38 + v27) & ~v38;
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  sub_100047F38(v42, v29 + v27, &qword_1006359A0);
  v24((v29 + v28), v25, a4);

  v31 = v43;
  v32 = v40;
  *v43 = sub_1000E3E14;
  v31[1] = v32;
  v31[2] = &unk_100519638;
  v31[3] = v22;
  v31[4] = &unk_100519648;
  v31[5] = v29;
  return result;
}

uint64_t sub_1000DB88C()
{
  v0 = sub_1004DC50C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004CB8(&qword_1006367F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_1004D8CDC();
  sub_1004DC56C();
  (*(v1 + 8))(v3, v0);
  v8 = sub_1000DBA64();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_1000DBA64()
{
  v1 = sub_1004DC4FC();
  v26 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - v5;
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = sub_100004CB8(&qword_1006367F8);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v24 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = *(v10 + 16);
  v25 = v0;
  v15(&v23 - v13, v0, v9);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v16 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v35[0] = 0;
      *(&v35[0] + 1) = 0xE000000000000000;
      sub_1004DEAAC(27);

      *&v35[0] = 0xD000000000000019;
      *(&v35[0] + 1) = 0x80000001004EB750;
      v15(v24, v25, v9);
      v36._countAndFlagsBits = sub_1004DD4DC();
      sub_1004DD5FC(v36);

      v20 = *&v35[0];
      (*(v10 + 8))(v14, v9);
      return v20;
    }

    return 0;
  }

  (*(v10 + 96))(v14, v9);
  v17 = v26;
  (*(v26 + 32))(v8, v14, v1);
  v18 = *(v17 + 16);
  v18(v6, v8, v1);
  v19 = (*(v17 + 88))(v6, v1);
  if (v19 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.alreadyFavorited(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD000000000000011;
    }

    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cannotFavoriteWhenDisliked(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD00000000000001DLL;
    }

    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.subscriptionRequired(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD000000000000018;
    }

    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      if (qword_100633B60 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B6C();

      v35[4] = v31;
      v35[5] = v32;
      v35[6] = v33;
      v35[7] = v34;
      v35[0] = v27;
      v35[1] = v28;
      v35[2] = v29;
      v35[3] = v30;
      sub_100073E60(v35);
      if ((WORD4(v35[0]) & 0x100) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0xD000000000000016;
      }

      goto LABEL_35;
    }

    if (v19 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.sharedLibrary(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0x6C20646572616853;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryInitialImport(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD00000000000001CLL;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.libraryAddIneligibleContent(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000013;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.invalidContentType(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000014;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.networkRequired(_:))
      {
        v20 = 0xD000000000000010;
      }

      else
      {
        if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.subscriptionAccountLinkingRequired(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0xD000000000000025;
        }

        v20 = 0x206E776F6E6B6E55;
        if (v19 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.unknown(_:))
        {
          *&v35[0] = 0;
          *(&v35[0] + 1) = 0xE000000000000000;
          sub_1004DEAAC(17);

          *&v35[0] = 0x206E776F6E6B6E55;
          *(&v35[0] + 1) = 0xEF206E6F73616572;
          v18(v23, v8, v1);
          v37._countAndFlagsBits = sub_1004DD4DC();
          sub_1004DD5FC(v37);

          v20 = *&v35[0];
          v22 = *(v17 + 8);
          v22(v8, v1);
          v22(v6, v1);
          return v20;
        }
      }

LABEL_35:
      (*(v17 + 8))(v8, v1);
      return v20;
    }

    (*(v17 + 8))(v8, v1);
    return 0;
  }

  v20 = 0xD000000000000010;
  (*(v17 + 8))(v8, v1);
  return v20;
}

uint64_t sub_1000DC2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = sub_1004DC4FC();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = sub_1004DC50C();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = sub_100004CB8(&qword_1006367F8);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(sub_1000DC480, 0, 0);
}

uint64_t sub_1000DC480()
{
  v1 = v0[68];
  v2 = v0[66];
  v36 = v0[65];
  v37 = v0[67];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  sub_1004D8CDC();
  sub_1004DC56C();
  (*(v3 + 8))(v4, v5);
  (*(v2 + 16))(v37, v1, v36);
  v6 = (*(v2 + 88))(v37, v36);
  if (v6 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v7 = v0[67];
    v9 = v0[58];
    v8 = v0[59];
    v10 = v0[56];
    v11 = v0[57];
    (*(v0[66] + 96))(v7, v0[65]);
    (*(v11 + 32))(v8, v7, v10);
    (*(v11 + 16))(v9, v8, v10);
    v12 = (*(v11 + 88))(v9, v10);
    if (v12 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      sub_1000108DC(v0[52], (v0 + 14), &qword_100636758);
      if (v0[22] != 1)
      {
        sub_10006A8BC((v0 + 14), (v0 + 2));
        v0[81] = sub_1004DDA4C();
        v0[82] = sub_1004DDA3C();
        v32 = sub_1004DD9BC();
        v28 = v33;
        v0[83] = v32;
        v0[84] = v33;
        v26 = sub_1000DD13C;
        v27 = v32;
        goto LABEL_14;
      }

      v13 = v0[53];
      sub_10001074C((v0 + 14), &qword_100636758);
      v14 = v13[3];
      v0[76] = v14;
      v0[77] = v13[4];
      v0[78] = sub_100008C70(v13, v14);
      sub_1004DDA4C();
      v0[79] = sub_1004DDA3C();
      v15 = sub_1004DD9BC();
      v17 = v16;
      v18 = sub_1000DCF08;
LABEL_11:
      v26 = v18;
      v27 = v15;
      v28 = v17;
LABEL_14:

      return _swift_task_switch(v26, v27, v28);
    }

    if (v12 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      v23 = v0[53];
      v24 = v23[3];
      v0[88] = v24;
      v0[89] = v23[4];
      v0[90] = sub_100008C70(v23, v24);
      sub_1004DDA4C();
      v0[91] = sub_1004DDA3C();
      v15 = sub_1004DD9BC();
      v17 = v25;
      v18 = sub_1000DD418;
      goto LABEL_11;
    }

    v29 = v0 + 59;
    v30 = v0 + 57;
    v31 = v0 + 56;
    (*(v0[57] + 8))(v0[58], v0[56]);
    goto LABEL_18;
  }

  if (v6 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v29 = v0 + 67;
    v30 = v0 + 66;
    v31 = v0 + 65;
LABEL_18:
    (*(*v30 + 8))(*v29, *v31);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v34 = v0[1];

    return v34();
  }

  v19 = swift_task_alloc();
  v0[69] = v19;
  *v19 = v0;
  v19[1] = sub_1000DC948;
  v20 = v0[54];
  v21 = v0[55];
  v22 = v0[50];

  return MusicLibrary.favorite<A>(_:)(v22, v20, v21);
}

uint64_t sub_1000DC948()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1000E5DAC;
  }

  else
  {
    v2 = sub_1000DCA5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DCA5C()
{
  sub_1000108DC(v0[51], (v0 + 44), &qword_100635A30);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = sub_100008C70(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    sub_1004DDA4C();
    v0[74] = sub_1004DDA3C();
    v3 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000DCBE0, v3, v2);
  }

  else
  {
    sub_10001074C((v0 + 44), &qword_100635A30);
    v4 = swift_task_alloc();
    v0[75] = v4;
    *v4 = v0;
    v4[1] = sub_1000DCD40;
    v5 = v0[52];

    return sub_1002ADEC0(v5);
  }
}

uint64_t sub_1000DCBE0()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  sub_10025A468(v3, 0, v2, v1);
  sub_1000E5CE0(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_1000DCC90, 0, 0);
}

uint64_t sub_1000DCC90()
{
  sub_100008D24(v0 + 352);
  v1 = swift_task_alloc();
  *(v0 + 600) = v1;
  *v1 = v0;
  v1[1] = sub_1000DCD40;
  v2 = *(v0 + 416);

  return sub_1002ADEC0(v2);
}

uint64_t sub_1000DCD40()
{

  return _swift_task_switch(sub_1000DCE3C, 0, 0);
}

uint64_t sub_1000DCE3C()
{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000DCF08()
{
  v6 = v0[77];

  sub_100137B00(5u, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[80] = v1;
  *v1 = v0;
  v1[1] = sub_1000DD038;
  v2 = v0[77];
  v3 = v0[76];

  return v5(v0 + 35, v3, v2);
}

uint64_t sub_1000DD038()
{
  v1 = *v0;

  sub_100074384(v1 + 280);

  return _swift_task_switch(sub_1000E5DB0, 0, 0);
}

uint64_t sub_1000DD13C()
{
  v1 = sub_1004DDA3C();
  v0[85] = v1;
  v2 = swift_task_alloc();
  v0[86] = v2;
  *(v2 + 16) = 5;
  *(v2 + 24) = v0 + 2;
  *(v2 + 32) = 0;
  v3 = swift_task_alloc();
  v0[87] = v3;
  *v3 = v0;
  v3[1] = sub_1000DD250;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 93, v1, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004EA4A0, sub_1000E5DD0, v2, &type metadata for Bool);
}

uint64_t sub_1000DD250()
{
  v1 = *v0;

  v2 = *(v1 + 672);
  v3 = *(v1 + 664);

  return _swift_task_switch(sub_1000DD3B0, v3, v2);
}

uint64_t sub_1000DD3B0()
{

  return _swift_task_switch(sub_1000E5DD4, 0, 0);
}

uint64_t sub_1000DD418()
{
  v6 = v0[89];

  sub_1001362BC(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[92] = v1;
  *v1 = v0;
  v1[1] = sub_1000DD548;
  v2 = v0[89];
  v3 = v0[88];

  return v5(v0 + 26, v3, v2);
}

uint64_t sub_1000DD548()
{
  v1 = *v0;

  sub_100074384(v1 + 208);

  return _swift_task_switch(sub_1000E5DB0, 0, 0);
}

uint64_t sub_1000DD64C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100035C88;

  return sub_1000DC2A8(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t sub_1000DD77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_100004CB8(&qword_100635248);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD994, 0, 0);
}

uint64_t sub_1000DD994()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(2);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_1000108DC(*(v0 + 88), v4, &qword_1006359A0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10001074C(*(v0 + 232), &qword_1006359A0);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_100074250(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = sub_1004D809C();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    sub_100004CB8(&qword_100635BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_10004B4B4(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_10007FCDC(inited + 32);
    sub_1004DDA4C();
    *(v0 + 328) = sub_1004DDA3C();
    v19 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000DDCA0, v19, v18);
  }
}

uint64_t sub_1000DDCA0()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_1000108DC(v3, v4, &qword_100634B30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 5637;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000108DC(v7, v72, &qword_100635248);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001074C(v20, &qword_100635248);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));

    sub_1000E5CE0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 160), &qword_100635248);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1000E5CE0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_10001074C(*(v0 + 152), &qword_100635248);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_1000108DC(v36 + v14[6], *(v0 + 208), &qword_100634B30);
    sub_1000E5CE0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_100047F38(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_100634B30);
  sub_1000108DC(v37, v38, &qword_100635248);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 144), &qword_100635248);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1000E5CE0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_10001074C(v45, &qword_100635248);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1000E5CE0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 128), &qword_100635248);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1000E5CE0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_10001074C(v58, &qword_100635248);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1000E5CE0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100074250(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_1000E5CE0(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30);

  return _swift_task_switch(sub_1000E5D48, 0, 0);
}

uint64_t sub_1000DE454()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100035C88;

  return sub_1000DD77C(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t sub_1000DE5AC()
{
  v0 = sub_1004DC5AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004CB8(&qword_1006367F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_1004D8C4C();
  sub_1004DC56C();
  (*(v1 + 8))(v3, v0);
  v8 = sub_1000DE780();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_1000DE780()
{
  v1 = sub_1004DC59C();
  v27 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v24 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - v5;
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = sub_100004CB8(&qword_1006367F0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v25 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = *(v10 + 16);
  v26 = v0;
  v15(&v24 - v13, v0, v9);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v16 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v36[0] = 0;
      *(&v36[0] + 1) = 0xE000000000000000;
      sub_1004DEAAC(27);

      *&v36[0] = 0xD000000000000019;
      *(&v36[0] + 1) = 0x80000001004EB750;
      v15(v25, v26, v9);
      v37._countAndFlagsBits = sub_1004DD4DC();
      sub_1004DD5FC(v37);

      v21 = *&v36[0];
      (*(v10 + 8))(v14, v9);
      return v21;
    }

    return 0;
  }

  (*(v10 + 96))(v14, v9);
  v17 = v27;
  (*(v27 + 32))(v8, v14, v1);
  v18 = *(v17 + 16);
  v18(v6, v8, v1);
  v19 = (*(v17 + 88))(v6, v1);
  v20 = v8;
  if (v19 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.notFavorited(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0x6F76614620746F4ELL;
    }

    if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.subscriptionRequired(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD000000000000018;
    }

    if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      if (qword_100633B60 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B6C();

      v36[4] = v32;
      v36[5] = v33;
      v36[6] = v34;
      v36[7] = v35;
      v36[0] = v28;
      v36[1] = v29;
      v36[2] = v30;
      v36[3] = v31;
      sub_100073E60(v36);
      if ((WORD4(v36[0]) & 0x100) != 0)
      {
        v21 = 0;
      }

      else
      {
        v21 = 0xD000000000000016;
      }

      goto LABEL_31;
    }

    if (v19 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.sharedLibrary(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0x6C20646572616853;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryInitialImport(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD00000000000001CLL;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.libraryAddIneligibleContent(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000013;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.invalidContentType(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000014;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.subscriptionAccountLinkingRequired(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000025;
      }

      v21 = 0x206E776F6E6B6E55;
      if (v19 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.unknown(_:))
      {
        *&v36[0] = 0;
        *(&v36[0] + 1) = 0xE000000000000000;
        sub_1004DEAAC(17);

        *&v36[0] = 0x206E776F6E6B6E55;
        *(&v36[0] + 1) = 0xEF206E6F73616572;
        v18(v24, v20, v1);
        v38._countAndFlagsBits = sub_1004DD4DC();
        sub_1004DD5FC(v38);

        v21 = *&v36[0];
        v23 = *(v17 + 8);
        v23(v20, v1);
        v23(v6, v1);
        return v21;
      }

LABEL_31:
      (*(v17 + 8))(v20, v1);
      return v21;
    }

    (*(v17 + 8))(v8, v1);
    return 0;
  }

  v21 = 0xD000000000000010;
  (*(v17 + 8))(v20, v1);
  return v21;
}

uint64_t sub_1000DEF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = sub_1004DC59C();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = sub_1004DC5AC();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = sub_100004CB8(&qword_1006367F0);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(sub_1000DF128, 0, 0);
}

uint64_t sub_1000DF128()
{
  v1 = v0[68];
  v2 = v0[66];
  v36 = v0[65];
  v37 = v0[67];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  sub_1004D8C4C();
  sub_1004DC56C();
  (*(v3 + 8))(v4, v5);
  (*(v2 + 16))(v37, v1, v36);
  v6 = (*(v2 + 88))(v37, v36);
  if (v6 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v7 = v0[67];
    v9 = v0[58];
    v8 = v0[59];
    v10 = v0[56];
    v11 = v0[57];
    (*(v0[66] + 96))(v7, v0[65]);
    (*(v11 + 32))(v8, v7, v10);
    (*(v11 + 16))(v9, v8, v10);
    v12 = (*(v11 + 88))(v9, v10);
    if (v12 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      sub_1000108DC(v0[52], (v0 + 14), &qword_100636758);
      if (v0[22] != 1)
      {
        sub_10006A8BC((v0 + 14), (v0 + 2));
        v0[80] = sub_1004DDA4C();
        v0[81] = sub_1004DDA3C();
        v32 = sub_1004DD9BC();
        v28 = v33;
        v0[82] = v32;
        v0[83] = v33;
        v26 = sub_1000DFC64;
        v27 = v32;
        goto LABEL_14;
      }

      v13 = v0[53];
      sub_10001074C((v0 + 14), &qword_100636758);
      v14 = v13[3];
      v0[75] = v14;
      v0[76] = v13[4];
      v0[77] = sub_100008C70(v13, v14);
      sub_1004DDA4C();
      v0[78] = sub_1004DDA3C();
      v15 = sub_1004DD9BC();
      v17 = v16;
      v18 = sub_1000DFA30;
LABEL_11:
      v26 = v18;
      v27 = v15;
      v28 = v17;
LABEL_14:

      return _swift_task_switch(v26, v27, v28);
    }

    if (v12 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      v23 = v0[53];
      v24 = v23[3];
      v0[87] = v24;
      v0[88] = v23[4];
      v0[89] = sub_100008C70(v23, v24);
      sub_1004DDA4C();
      v0[90] = sub_1004DDA3C();
      v15 = sub_1004DD9BC();
      v17 = v25;
      v18 = sub_1000E002C;
      goto LABEL_11;
    }

    v29 = v0 + 59;
    v30 = v0 + 57;
    v31 = v0 + 56;
    (*(v0[57] + 8))(v0[58], v0[56]);
    goto LABEL_18;
  }

  if (v6 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v29 = v0 + 67;
    v30 = v0 + 66;
    v31 = v0 + 65;
LABEL_18:
    (*(*v30 + 8))(*v29, *v31);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v34 = v0[1];

    return v34();
  }

  v19 = swift_task_alloc();
  v0[69] = v19;
  *v19 = v0;
  v19[1] = sub_1000DF5F0;
  v20 = v0[54];
  v21 = v0[55];
  v22 = v0[50];

  return MusicLibrary.undoFavorite<A>(_:)(v22, v20, v21);
}

uint64_t sub_1000DF5F0()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1000E0344;
  }

  else
  {
    v2 = sub_1000DF704;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DF704()
{
  sub_1000108DC(v0[51], (v0 + 44), &qword_100635A30);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = sub_100008C70(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    sub_1004DDA4C();
    v0[74] = sub_1004DDA3C();
    v3 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000DF8AC, v3, v2);
  }

  else
  {
    sub_10001074C((v0 + 44), &qword_100635A30);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000DF8AC()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  sub_10025A468(v3, 0, v2, v1);
  sub_1000E5CE0(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_1000DF95C, 0, 0);
}

uint64_t sub_1000DF95C()
{
  sub_100008D24((v0 + 44));
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000DFA30()
{
  v6 = v0[76];

  sub_100137B00(5u, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[79] = v1;
  *v1 = v0;
  v1[1] = sub_1000DFB60;
  v2 = v0[76];
  v3 = v0[75];

  return v5(v0 + 35, v3, v2);
}

uint64_t sub_1000DFB60()
{
  v1 = *v0;

  sub_100074384(v1 + 280);

  return _swift_task_switch(sub_1000E5DB0, 0, 0);
}

uint64_t sub_1000DFC64()
{
  v1 = sub_1004DDA3C();
  v0[84] = v1;
  v2 = swift_task_alloc();
  v0[85] = v2;
  *(v2 + 16) = 5;
  *(v2 + 24) = v0 + 2;
  *(v2 + 32) = 0;
  v3 = swift_task_alloc();
  v0[86] = v3;
  *v3 = v0;
  v3[1] = sub_1000DFD78;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 92, v1, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004EA4A0, sub_1000744E4, v2, &type metadata for Bool);
}

uint64_t sub_1000DFD78()
{
  v1 = *v0;

  v2 = *(v1 + 664);
  v3 = *(v1 + 656);

  return _swift_task_switch(sub_1000DFED8, v3, v2);
}

uint64_t sub_1000DFED8()
{

  return _swift_task_switch(sub_1000DFF40, 0, 0);
}

uint64_t sub_1000DFF40()
{
  sub_10007DC74((v0 + 2));
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000E002C()
{
  v6 = v0[88];

  sub_1001362BC(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[91] = v1;
  *v1 = v0;
  v1[1] = sub_1000E015C;
  v2 = v0[88];
  v3 = v0[87];

  return v5(v0 + 26, v3, v2);
}

uint64_t sub_1000E015C()
{
  v1 = *v0;

  sub_100074384(v1 + 208);

  return _swift_task_switch(sub_1000E0260, 0, 0);
}

uint64_t sub_1000E0260()
{
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000E0344()
{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000E0414()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 24))
  {
    sub_100008D24(v0 + v4);
  }

  v6 = v0 + v5;
  if (*(v0 + v5 + 64) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v7 = *(v6 + 48);
    if (v7 != 255)
    {
      sub_10006A898(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
    }

    if (*(v6 + 64))
    {
    }

    if (*(v6 + 80))
    {
    }
  }

  sub_100008D24(v0 + ((v5 + 103) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1000E0560()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100035C88;

  return sub_1000DEF50(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t sub_1000E0690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_100004CB8(&qword_100635248);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000E08A8, 0, 0);
}

uint64_t sub_1000E08A8()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(3);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_1000108DC(*(v0 + 88), v4, &qword_1006359A0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10001074C(*(v0 + 232), &qword_1006359A0);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_100074250(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = sub_1004D809C();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    sub_100004CB8(&qword_100635BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_10004B4B4(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_10007FCDC(inited + 32);
    sub_1004DDA4C();
    *(v0 + 328) = sub_1004DDA3C();
    v19 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000E0BB4, v19, v18);
  }
}

uint64_t sub_1000E0BB4()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_1000108DC(v3, v4, &qword_100634B30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 5893;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000108DC(v7, v72, &qword_100635248);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001074C(v20, &qword_100635248);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));

    sub_1000E5CE0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 160), &qword_100635248);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1000E5CE0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_10001074C(*(v0 + 152), &qword_100635248);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_1000108DC(v36 + v14[6], *(v0 + 208), &qword_100634B30);
    sub_1000E5CE0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_100047F38(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_100634B30);
  sub_1000108DC(v37, v38, &qword_100635248);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 144), &qword_100635248);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1000E5CE0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_10001074C(v45, &qword_100635248);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1000E5CE0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 128), &qword_100635248);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1000E5CE0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_10001074C(v58, &qword_100635248);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1000E5CE0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100074250(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_1000E5CE0(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30);

  return _swift_task_switch(sub_1000E1368, 0, 0);
}

uint64_t sub_1000E1368()
{
  sub_1000E5CE0(*(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E14A4()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  if (*(v0 + 32))
  {
  }

  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = sub_1004D809C();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_1000E1774()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100035C88;

  return sub_1000E0690(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t (*Actions.Favorite.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1918989427;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1918989427;
  *(v1 + 24) = 0xE400000000000000;
  return sub_100073BEC;
}

uint64_t (*Actions.Favorite.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69662E72617473;
  *(v0 + 24) = 0xE90000000000006CLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69662E72617473;
  *(v1 + 24) = 0xE90000000000006CLL;
  return sub_10007455C;
}

uint64_t (*sub_1000E1A30())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1918989427;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1918989427;
  *(v1 + 24) = 0xE400000000000000;
  return sub_10007455C;
}

uint64_t (*sub_1000E1AC4())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69662E72617473;
  *(v0 + 24) = 0xE90000000000006CLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69662E72617473;
  *(v1 + 24) = 0xE90000000000006CLL;
  return sub_10007455C;
}

uint64_t (*Actions.UndoFavorite.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEA00000000006873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEA00000000006873;
  return sub_10007455C;
}

uint64_t (*Actions.UndoFavorite.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEF6C6C69662E6873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEF6C6C69662E6873;
  return sub_10007455C;
}

uint64_t (*sub_1000E1CF8())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEA00000000006873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEA00000000006873;
  return sub_10007455C;
}

uint64_t (*sub_1000E1D98())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEF6C6C69662E6873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEF6C6C69662E6873;
  return sub_10007455C;
}

uint64_t sub_1000E1EC8()
{
  v0 = sub_1004DC46C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004CB8(&qword_1006367E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_1004D8CBC();
  sub_1004DC56C();
  (*(v1 + 8))(v3, v0);
  v8 = sub_1000E209C();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_1000E209C()
{
  v1 = v0;
  v2 = sub_1004DC45C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_1006367E8);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = *(v7 + 16);
  v13(&v17 - v11, v1, v6);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v7 + 96))(v12, v6);
    (*(v3 + 32))(v5, v12, v2);
    v15 = sub_1000E3910(v5);
    (*(v3 + 8))(v5, v2);
  }

  else if (v14 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1004DEAAC(27);

    v17 = 0xD000000000000019;
    v18 = 0x80000001004EB750;
    v13(v10, v1, v6);
    v19._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v19);

    v15 = v17;
    (*(v7 + 8))(v12, v6);
  }

  return v15;
}

uint64_t sub_1000E2364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a3;
  v5[8] = type metadata accessor for Notice.Variant(0);
  v5[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[10] = v9;
  *v9 = v5;
  v9[1] = sub_1000E2450;

  return MusicLibrary.new_dislike<A>(_:)(a2, a4, a5);
}

uint64_t sub_1000E2450()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1000E259C, 0, 0);
  }
}

uint64_t sub_1000E259C()
{
  sub_1000108DC(v0[7], (v0 + 2), &qword_100635A30);
  v1 = v0[5];
  v0[11] = v1;
  if (v1)
  {
    v0[12] = v0[6];
    v0[13] = sub_100008C70(v0 + 2, v1);
    swift_storeEnumTagMultiPayload();
    sub_1004DDA4C();
    v0[14] = sub_1004DDA3C();
    v3 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000E26D4, v3, v2);
  }

  else
  {
    sub_10001074C((v0 + 2), &qword_100635A30);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000E26D4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];

  sub_10025A468(v3, 0, v2, v1);
  sub_1000E5CE0(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_1000E277C, 0, 0);
}

uint64_t sub_1000E277C()
{
  sub_100008D24(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E27E8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 24))
  {
    sub_100008D24(v0 + v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1000E28C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100035B28;

  return sub_1000E2364(v6, v0 + v4, v0 + v5, v2, v3);
}

uint64_t sub_1000E29D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_100004CB8(&qword_100635248);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000E2BE4, 0, 0);
}

uint64_t sub_1000E2BE4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1000108DC(*(v0 + 72), v3, &qword_1006359A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 216), &qword_1006359A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_100074250(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_1004D809C();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100004CB8(&qword_100635BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_10004B4B4(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_10007FCDC(inited + 32);
    sub_1004DDA4C();
    *(v0 + 312) = sub_1004DDA3C();
    v18 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000E2ED8, v18, v17);
  }
}

uint64_t sub_1000E2ED8()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_1000108DC(v3, v4, &qword_100634B30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 6149;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000108DC(v7, v72, &qword_100635248);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001074C(v20, &qword_100635248);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));

    sub_1000E5CE0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 144), &qword_100635248);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1000E5CE0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_10001074C(*(v0 + 136), &qword_100635248);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_1000108DC(v36 + v14[6], *(v0 + 192), &qword_100634B30);
    sub_1000E5CE0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_100047F38(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_100634B30);
  sub_1000108DC(v37, v38, &qword_100635248);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 128), &qword_100635248);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1000E5CE0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_10001074C(v45, &qword_100635248);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1000E5CE0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 112), &qword_100635248);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1000E5CE0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_10001074C(v58, &qword_100635248);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1000E5CE0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100074250(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_1000E5CE0(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30);

  return _swift_task_switch(sub_1000E368C, 0, 0);
}

uint64_t sub_1000E368C()
{
  sub_1000E5CE0(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E37C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100035C88;

  return sub_1000E29D0(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_1000E3910(uint64_t a1)
{
  v2 = sub_1004DC45C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *(v3 + 16);
  v9(&v14 - v7, a1, v2);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.unsupportedType(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.alreadyDisliked(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cannotDislikeWhenFavorited(_:))
  {
    v12 = 13;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cannotDislikeWhenLiked(_:))
  {
LABEL_8:
    v12 = 9;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.subscriptionRequired(_:))
  {
    v12 = 5;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cloudLibraryRequired(_:))
  {
    return 0xD000000000000016;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.networkRequired(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.sharedLibrary(_:))
  {
    return 0x6C20646572616853;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cloudLibraryInitialImport(_:))
  {
    goto LABEL_8;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1004DEAAC(17);

  v14 = 0x206E776F6E6B6E55;
  v15 = 0xEF206E6F73616572;
  v9(v6, a1, v2);
  v16._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v16);

  v13 = v14;
  (*(v3 + 8))(v8, v2);
  return v13;
}

uint64_t sub_1000E3C58()
{
  v0 = sub_1004DC58C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004CB8(&qword_1006367E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_1004D8C3C();
  sub_1004DC56C();
  (*(v1 + 8))(v3, v0);
  v8 = sub_1000E3E74();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_1000E3E74()
{
  v1 = sub_1004DC57C();
  v20 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = sub_100004CB8(&qword_1006367E0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  v14 = *(v8 + 16);
  v19 = v0;
  v14(&v19 - v12, v0, v7);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    v16 = v20;
    (*(v20 + 32))(v6, v13, v1);
    (*(v16 + 16))(v4, v6, v1);
    v17 = sub_1004DD4DC();
    (*(v16 + 8))(v6, v1);
  }

  else if (v15 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1004DEAAC(27);

    v21 = 0xD000000000000019;
    v22 = 0x80000001004EB750;
    v14(v11, v19, v7);
    v23._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v23);

    v17 = v21;
    (*(v8 + 8))(v13, v7);
  }

  return v17;
}

uint64_t sub_1000E4184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100035C88;

  return MusicLibrary.new_undoDislike<A>(_:)(a2, a3, a4);
}

uint64_t sub_1000E423C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000E42F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = v0[4];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100035C88;

  return sub_1000E4184(v5, v0 + v4, v2, v3);
}

uint64_t sub_1000E43DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_100004CB8(&qword_100635248);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000E45F0, 0, 0);
}

uint64_t sub_1000E45F0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1000108DC(*(v0 + 72), v3, &qword_1006359A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 216), &qword_1006359A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_100074250(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_1004D809C();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100004CB8(&qword_100635BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_10004B4B4(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_10007FCDC(inited + 32);
    sub_1004DDA4C();
    *(v0 + 312) = sub_1004DDA3C();
    v18 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000E48E4, v18, v17);
  }
}

uint64_t sub_1000E48E4()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_1000108DC(v3, v4, &qword_100634B30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 6405;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000108DC(v7, v72, &qword_100635248);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001074C(v20, &qword_100635248);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));

    sub_1000E5CE0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 144), &qword_100635248);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1000E5CE0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_10001074C(*(v0 + 136), &qword_100635248);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_1000108DC(v36 + v14[6], *(v0 + 192), &qword_100634B30);
    sub_1000E5CE0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_100047F38(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_100634B30);
  sub_1000108DC(v37, v38, &qword_100635248);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 128), &qword_100635248);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1000E5CE0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_10001074C(v45, &qword_100635248);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1000E5CE0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 112), &qword_100635248);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1000E5CE0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_10001074C(v58, &qword_100635248);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1000E5CE0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100074250(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_1000E5CE0(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30);

  return _swift_task_switch(sub_1000E5D4C, 0, 0);
}

uint64_t sub_1000E5098()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100035C88;

  return sub_1000E43DC(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_1000E5200()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.SuggestLess.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7568742E646E6168;
  *(v0 + 24) = 0xEF6E776F6473626DLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7568742E646E6168;
  *(v1 + 24) = 0xEF6E776F6473626DLL;
  return sub_10007455C;
}

uint64_t sub_1000E54A8()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*sub_1000E5688())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7568742E646E6168;
  *(v0 + 24) = 0xEF6E776F6473626DLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7568742E646E6168;
  *(v1 + 24) = 0xEF6E776F6473626DLL;
  return sub_10007455C;
}

uint64_t (*Actions.UndoSuggestLess.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000015;
  *(v0 + 24) = 0x80000001004EB770;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000015;
  *(v1 + 24) = 0x80000001004EB770;
  return sub_10007455C;
}

uint64_t (*sub_1000E57D4())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000015;
  *(v0 + 24) = 0x80000001004EB770;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000015;
  *(v1 + 24) = 0x80000001004EB770;
  return sub_10007455C;
}

uint64_t _s9MusicCore7ActionsO15UndoSuggestLessO7ContextV13menuItemTitleSSvg_0()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t _s9MusicCore7ActionsO12UndoFavoriteO7ContextV25menuItemCompactStyleTitleSSSgvg_0()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_1000E5CA8()
{

  return swift_deallocObject();
}

uint64_t sub_1000E5CE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t (*Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v31 = a8;
  v32 = a3;
  v29 = a7;
  v30 = a2;
  v33 = a4;
  v34 = a5;
  v28 = a1;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(a1);
  v27 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  (*(v11 + 16))(&v27 - v14);
  v16 = *(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a6;
  *(v17 + 3) = a7;
  v18 = v31;
  *(v17 + 4) = v31;
  *(v17 + 5) = a2;
  v19 = *(v11 + 32);
  v19(&v17[(v16 + 48) & ~v16], v15, a6);
  v19(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28, a6);
  v20 = (v16 + 56) & ~v16;
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 2) = a6;
  *(v22 + 3) = v23;
  v25 = v32;
  v24 = v33;
  *(v22 + 4) = v18;
  *(v22 + 5) = v25;
  *(v22 + 6) = v24;
  v19(&v22[v20], v27, a6);
  *&v22[v21] = v30;
  sub_10006A8BC(v34, &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8]);

  return sub_1000E6874;
}

uint64_t static Actions.RateSong.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 38;
  *(a5 + 40) = sub_10006D3E4;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0x4014000000000000;
  *(a5 + 64) = &unk_1005197D0;
  *(a5 + 72) = 0;
  *(a5 + 80) = &unk_1005197D8;
  *(a5 + 88) = 0;
}

uint64_t sub_1000E6088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
  *(a2 + 32) = 38;
  *(a2 + 40) = sub_10006D3E4;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x4014000000000000;
  *(a2 + 64) = &unk_1005197D0;
  *(a2 + 72) = 0;
  *(a2 + 80) = &unk_1005197D8;
  *(a2 + 88) = 0;
}

uint64_t Actions.RateSong.Context.menuItemTitle.getter()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.RateSong.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x80000001004EB930;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000017;
  *(v1 + 24) = 0x80000001004EB930;
  return sub_100073BEC;
}

uint64_t (*sub_1000E63A4())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x80000001004EB930;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000017;
  *(v1 + 24) = 0x80000001004EB930;
  return sub_10007455C;
}

unint64_t sub_1000E6444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = a2;
  v22[3] = a3;
  v5 = sub_1004DC6BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004CB8(&qword_100635B38);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - v11;
  sub_1004DC7AC();
  sub_1004DC79C();
  v13 = sub_1004DC5EC();

  if ((v13 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  v22[1] = a4;
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = sub_1004DD3FC();
  v16 = [v14 BOOLForKey:v15];

  if (!v16)
  {
    return 0xD000000000000018;
  }

  sub_1004D8C6C();
  sub_1004DC56C();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 88))(v12, v9) == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v12, v9);
    v17 = sub_1004DC6AC();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 88))(v12, v17);
    v20 = enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:);
    (*(v18 + 8))(v12, v17);
    if (v19 == v20)
    {
      return 0;
    }
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  return 0xD000000000000011;
}