uint64_t sub_100149460()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_100149E04;
  }

  else
  {
    v2 = sub_100149574;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100149574()
{
  v1 = v0[78];
  v2 = v0[76];
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_100155DC0(v2, type metadata accessor for Notice.Variant);
  sub_100572F08();
  v0[92] = sub_100572EF8();
  v4 = sub_100572E78();

  return _swift_task_switch(sub_100149648, v4, v3);
}

uint64_t sub_100149648()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1002EECF0((v0 + 42));

    v3 = v0[45];
    v4 = v0[78];
    if (v3)
    {
      v5 = v0[46];
      sub_10000C8CC(v0 + 42, v0[45]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_100155DC0(v4, type metadata accessor for Notice);
      sub_100010474((v0 + 42));
    }

    else
    {
      sub_100155DC0(v0[78], type metadata accessor for Notice);
      sub_10001036C((v0 + 42), &qword_1006E6C10);
    }
  }

  else
  {
    sub_100155DC0(v0[78], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_100149798, 0, 0);
}

uint64_t sub_100149798()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100149928()
{
  *(*v1 + 752) = v0;

  if (v0)
  {
    v2 = sub_10014A0F0;
  }

  else
  {
    v2 = sub_100149A3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100149A3C()
{
  v1 = v0[77];
  v2 = v0[76];
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_100155DC0(v2, type metadata accessor for Notice.Variant);
  sub_100572F08();
  v0[95] = sub_100572EF8();
  v4 = sub_100572E78();

  return _swift_task_switch(sub_100149B10, v4, v3);
}

uint64_t sub_100149B10()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1002EECF0((v0 + 37));

    v3 = v0[40];
    v4 = v0[77];
    if (v3)
    {
      v5 = v0[41];
      sub_10000C8CC(v0 + 37, v0[40]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_100155DC0(v4, type metadata accessor for Notice);
      sub_100010474((v0 + 37));
    }

    else
    {
      sub_100155DC0(v0[77], type metadata accessor for Notice);
      sub_10001036C((v0 + 37), &qword_1006E6C10);
    }
  }

  else
  {
    sub_100155DC0(v0[77], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_100149C60, 0, 0);
}

uint64_t sub_100149C60()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  sub_100155DC0(v0[69], type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v1, v3);
  sub_100010474((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_100149E04()
{
  v17 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 728);
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v6 = sub_10056DF88();
  sub_10000C49C(v6, static Logger.actions);
  swift_errorRetain();
  v7 = sub_10056DF68();
  v8 = sub_100573428();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    *(v0 + 432) = v5;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v11 = sub_100572978();
    v13 = sub_1000C9784(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to Create Station with error=%{public}s", v9, 0xCu);
    sub_100010474(v10);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10014A0F0()
{
  v16 = v0;
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  sub_100155DC0(v0[69], type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v1, v3);
  sub_100010474((v0 + 2));
  v4 = v0[94];
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v5 = sub_10056DF88();
  sub_10000C49C(v5, static Logger.actions);
  swift_errorRetain();
  v6 = sub_10056DF68();
  v7 = sub_100573428();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v0[54] = v4;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v10 = sub_100572978();
    v12 = sub_1000C9784(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to Create Station with error=%{public}s", v8, 0xCu);
    sub_100010474(v9);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10014A3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_100009DCC(&qword_1006E6428);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_10014A604, 0, 0);
}

uint64_t sub_10014A604()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_10000CC8C(*(v0 + 96), v3, &qword_1006E6B80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 240), &qword_1006E6B80);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_100155D58(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = sub_10056C8A8();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100009DCC(&qword_1006E6D88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B500;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 4;
    *(v0 + 312) = sub_1000E0568(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_100572F08();
    *(v0 + 336) = sub_100572EF8();
    v18 = sub_100572E78();

    return _swift_task_switch(sub_10014A908, v18, v17);
  }
}

uint64_t sub_10014A908()
{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

  sub_10000CC8C(v3, v4, &qword_1006E5D10);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 3077;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10);
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
  sub_10000CC8C(v7, v72, &qword_1006E6428);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
  if (v15 == 1)
  {

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001036C(v20, &qword_1006E6428);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));

    sub_100155DC0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000CC8C(v23, v24, &qword_1006E6428);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_10001036C(*(v0 + 168), &qword_1006E6428);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_100155DC0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000CC8C(v30, v31, &qword_1006E6428);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_10001036C(*(v0 + 160), &qword_1006E6428);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_10000CC8C(v36 + v14[6], *(v0 + 216), &qword_1006E5D10);
    sub_100155DC0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_100019B40(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_1006E5D10);
  sub_10000CC8C(v37, v38, &qword_1006E6428);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_10001036C(*(v0 + 152), &qword_1006E6428);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_100155DC0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_10000CC8C(v42, v43, &qword_1006E6428);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    sub_10001036C(v45, &qword_1006E6428);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_100155DC0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_10001036C(*(v0 + 136), &qword_1006E6428);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_100155DC0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100019B40(v54, v55, &qword_1006E6428);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    sub_10001036C(v58, &qword_1006E6428);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_100155DC0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100155D58(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100109184(v65, v64, v63, v70, SBYTE1(v70));
  sub_100155DC0(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v68, &qword_1006E5D10);

  return _swift_task_switch(sub_10014B0C0, 0, 0);
}

uint64_t sub_10014B0C0()
{
  sub_100155DC0(*(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Actions.CreateStation.Context.menuItemTitle.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.CreateStation.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x80000001005ADAA0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x80000001005ADAA0;
  return sub_100109428;
}

uint64_t (*sub_10014B480())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x80000001005ADAA0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x80000001005ADAA0;
  return sub_100109428;
}

double static Actions.Playback.action(context:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100154C0C(a1, v7);
  v3 = v11;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *(a2 + 96) = v12;
  *(a2 + 112) = v13;
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_10014B584(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 24) + **(a2 + 24));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1000116F0;

  return v5();
}

double sub_10014B66C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v16[0] = *a1;
  v4 = *(a1 + 32);
  v16[1] = v3;
  v16[2] = v4;
  v17 = *(a1 + 48);
  sub_100154C0C(v16, v9);
  v5 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v5;
  *(a2 + 96) = v14;
  *(a2 + 112) = v15;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_10014B718(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 40) + **(a2 + 40));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1000116F0;

  return v5();
}

uint64_t sub_10014B800(uint64_t a1)
{
  v4 = (*(a1 + 56) + **(a1 + 56));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return v4();
}

__n128 sub_10014B8E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v12 = *(a1 + 64);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  sub_1001531D8(v11, v9);
  v5 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v5;
  *(a2 + 128) = v10;
  v6 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v6;
  v7 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v7;
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v82 = a4;
  v83 = a7;
  v90 = a3;
  v84 = a5;
  v91 = *(a5 - 8);
  v92 = a6;
  v9 = __chkstk_darwin(a1);
  v81 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v80 = &v65 - v12;
  v14 = v13;
  __chkstk_darwin(v11);
  v87 = &v65 - v15;
  v16 = type metadata accessor for Actions.PlaybackContext();
  v88 = *(v16 - 8);
  v17 = v88[8];
  v18 = __chkstk_darwin(v16 - 8);
  v89 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  v21 = sub_100009DCC(&qword_1006E7520);
  v85 = *(v21 - 8);
  v22 = v85[8];
  v23 = __chkstk_darwin(v21 - 8);
  v79 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v65 - v25;
  __chkstk_darwin(v24);
  v28 = &v65 - v27;
  v29 = *a2;
  v30 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v29 + v30))
  {

    Player.state<A>(for:)(a1);

    MusicItemState.playabilityStatus.getter();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = sub_100571418();
  v33 = *(*(v32 - 8) + 56);
  v73 = v28;
  v33(v28, v31, 1, v32);
  v76 = type metadata accessor for Actions.PlaybackContext;
  v68 = v20;
  sub_100155C10(a2, v20, type metadata accessor for Actions.PlaybackContext);
  v67 = v26;
  sub_10000CC8C(v28, v26, &qword_1006E7520);
  v34 = v91;
  v72 = *(v91 + 16);
  v35 = v84;
  v72(v87, a1, v84);
  v36 = *(v88 + 80);
  v86 = a1;
  v37 = (v36 + 32) & ~v36;
  v38 = *(v85 + 80);
  v88 = a2;
  v39 = (v17 + v38 + v37) & ~v38;
  v74 = v17;
  v40 = *(v34 + 80);
  v70 = v22 + v40;
  v71 = v40 | v36 | v38;
  v78 = v14 + 7;
  v69 = v14;
  v66 = (v14 + 7 + ((v22 + v40 + v39) & ~v40)) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v92;
  *(v41 + 16) = v35;
  *(v41 + 24) = v42;
  v75 = type metadata accessor for Actions.PlaybackContext;
  v43 = v41 + v37;
  v44 = v41;
  v77 = v41;
  sub_100155D58(v68, v43, type metadata accessor for Actions.PlaybackContext);
  sub_100019B40(v67, v44 + v39, &qword_1006E7520);
  v45 = *(v34 + 32);
  v91 = v34 + 32;
  v85 = v45;
  (v45)(v44 + ((v22 + v40 + v39) & ~v40), v87, v35);
  *(v44 + v66) = v90;
  v46 = v79;
  sub_100019B40(v73, v79, &qword_1006E7520);
  v47 = v80;
  v72(v80, v86, v35);
  sub_100155C10(v88, v89, v76);
  v48 = (v38 + 32) & ~v38;
  v49 = (v70 + v48) & ~v40;
  v50 = (v69 + v36 + v49) & ~v36;
  v51 = (v74 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v92;
  *(v52 + 16) = v35;
  *(v52 + 24) = v53;
  sub_100019B40(v46, v52 + v48, &qword_1006E7520);
  v54 = v85;
  (v85)(v52 + v49, v47, v35);
  sub_100155D58(v89, v52 + v50, v75);
  v55 = v90;
  *(v52 + v51) = v90;
  v56 = v81;
  v54(v81, v86, v35);
  v57 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v59 = (*(v57 + 64) + v40 + v58) & ~v40;
  v60 = (v78 + v59) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v92;
  *(v61 + 16) = v35;
  *(v61 + 24) = v62;
  sub_100019B40(v82, v61 + v58, &qword_1006E6B80);
  (v85)(v61 + v59, v56, v35);
  *(v61 + v60) = v55;
  result = sub_100155DC0(v88, type metadata accessor for Actions.PlaybackContext);
  v64 = v83;
  *v83 = v55;
  v64[1] = sub_100154FE4;
  v64[2] = v77;
  v64[3] = &unk_100588450;
  v64[4] = v52;
  v64[5] = &unk_100588460;
  v64[6] = v61;
  return result;
}

unint64_t sub_10014C0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v94 = a4;
  v95 = a6;
  v98 = a2;
  v99 = a3;
  v8 = sub_1005713F8();
  v87 = *(v8 - 8);
  v88 = v8;
  v9 = __chkstk_darwin(v8);
  v85 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v86 = &v84 - v12;
  __chkstk_darwin(v11);
  v90 = &v84 - v13;
  v14 = sub_10056D818();
  v92 = *(v14 - 8);
  v93 = v14;
  __chkstk_darwin(v14);
  v91 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100009DCC(&qword_1006E75A8);
  v17 = __chkstk_darwin(v16 - 8);
  v96 = &v84 - v18;
  v100 = a5;
  v97 = *(a5 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v84 - v22;
  v24 = sub_100009DCC(&qword_1006E7520);
  __chkstk_darwin(v24 - 8);
  v26 = &v84 - v25;
  v27 = sub_100571418();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v84 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v89 = &v84 - v32;
  __chkstk_darwin(v31);
  v34 = &v84 - v33;
  v35 = sub_100009DCC(&qword_1006E6B70);
  __chkstk_darwin(v35 - 8);
  v37 = &v84 - v36;
  v38 = type metadata accessor for Actions.PlaybackContext();
  sub_10000CC8C(a1 + *(v38 + 20), v37, &qword_1006E6B70);
  v39 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  LODWORD(a1) = (*(*(v39 - 8) + 48))(v37, 1, v39);
  sub_10001036C(v37, &qword_1006E6B70);
  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  sub_10000CC8C(v98, v26, &qword_1006E7520);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_10001036C(v26, &qword_1006E7520);
    v101 = 0;
    v102 = 0xE000000000000000;
    sub_100573ED8(37);

    v101 = 0xD000000000000023;
    v102 = 0x80000001005ADB40;
    (*(v97 + 16))(v23, v99, v100);
    v103._countAndFlagsBits = sub_100572978();
    sub_100572A98(v103);

    return v101;
  }

  v41 = v28;
  v42 = *(v28 + 32);
  v43 = v34;
  v98 = v27;
  v42(v34, v26, v27);
  v45 = v99;
  v44 = v100;
  v46 = sub_10014CB6C(v99, v94, v100);
  (*(v97 + 16))(v21, v45, v44);
  v47 = sub_10056D888();
  v48 = v96;
  v49 = swift_dynamicCast();
  v50 = *(*(v47 - 8) + 56);
  if (v49)
  {
    v51 = *(v47 - 8);
    v50(v48, 0, 1, v47);
    v52 = v48;
    v100 = v43;
    v53 = v91;
    sub_10056D828();
    v54 = v92;
    v55 = v46;
    v56 = v93;
    v57 = v41;
    v58 = (*(v92 + 88))(v53, v93);
    v59 = enum case for MusicPin.Item.artist(_:);
    v60 = v53;
    v43 = v100;
    v61 = v56;
    v46 = v55;
    (*(v54 + 8))(v60, v61);
    (*(v51 + 8))(v52, v47);
    v62 = v58 == v59;
    v41 = v57;
    if (v62)
    {
      (*(v57 + 8))(v43, v98);
      return 0;
    }
  }

  else
  {
    v50(v48, 1, 1, v47);
    sub_10001036C(v48, &qword_1006E75A8);
  }

  v63 = v98;
  if (!v46)
  {
    (*(v41 + 8))(v43, v98);
    return 0xD000000000000010;
  }

  v64 = *(v41 + 16);
  v65 = v89;
  v64(v89, v43, v98);
  v66 = (*(v41 + 88))(v65, v63);
  if (v66 != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    if (v66 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
    {
      if (qword_1006E4C68 != -1)
      {
        swift_once();
      }

      v79 = v41;
      v80 = sub_10056DF88();
      sub_10000C49C(v80, static Logger.actions);
      v81 = sub_10056DF68();
      v82 = sub_100573438();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "Unknown playability status", v83, 2u);
      }

      v101 = 0;
      v102 = 0xE000000000000000;
      sub_100573ED8(18);

      v101 = 0xD000000000000010;
      v102 = 0x80000001005ADB90;
      v64(v84, v43, v63);
      v105._countAndFlagsBits = sub_100572978();
      sub_100572A98(v105);

      v75 = v101;
      v76 = *(v79 + 8);
      v76(v43, v63);
      v77 = v65;
      v78 = v63;
      goto LABEL_25;
    }

    (*(v41 + 8))(v43, v63);
    return 0;
  }

  v67 = v41;
  (*(v41 + 96))(v65, v63);
  v69 = v87;
  v68 = v88;
  v70 = v90;
  (*(v87 + 32))(v90, v65, v88);
  v71 = *(v69 + 16);
  v72 = v86;
  v71(v86, v70, v68);
  v73 = (*(v69 + 88))(v72, v68);
  if (v73 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:) || v73 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
  {
    (*(v69 + 8))(v90, v68);
    (*(v41 + 8))(v43, v63);
    return 0;
  }

  v101 = 0;
  v102 = 0xE000000000000000;
  sub_100573ED8(26);

  v101 = 0xD000000000000018;
  v102 = 0x80000001005ADBB0;
  v74 = v90;
  v71(v85, v90, v68);
  v104._countAndFlagsBits = sub_100572978();
  sub_100572A98(v104);

  v75 = v101;
  v76 = *(v69 + 8);
  v76(v74, v68);
  (*(v67 + 8))(v43, v63);
  v77 = v72;
  v78 = v68;
LABEL_25:
  v76(v77, v78);
  return v75;
}

BOOL sub_10014CB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v55 = a1;
  v4 = sub_10056D818();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10056D888();
  v41 = *(v46 - 8);
  v6 = __chkstk_darwin(v46);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = &v38 - v8;
  v49 = sub_100571F08();
  v44 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100571A68();
  v47 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005713A8();
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005722D8();
  v54 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100571B78();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a3 - 8);
  __chkstk_darwin(v19);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, v55, a3);
  if (swift_dynamicCast())
  {
    (*(v18 + 8))(v21, v17);
LABEL_5:
    (*(v22 + 8))(v24, a3);
    return 1;
  }

  if (swift_dynamicCast())
  {
    (*(v54 + 8))(v16, v14);
    goto LABEL_5;
  }

  if (!swift_dynamicCast())
  {
    v27 = v51;
    v26 = v52;
    if (swift_dynamicCast())
    {
      v28 = v47;
LABEL_12:
      (*(v28 + 8))(v27, v26);
      goto LABEL_13;
    }

    v27 = v48;
    v26 = v49;
    if (swift_dynamicCast())
    {
      v28 = v44;
      goto LABEL_12;
    }

    v29 = v45;
    v30 = v46;
    if (swift_dynamicCast())
    {
      v32 = v40;
      v31 = v41;
      (*(v41 + 32))(v40, v29, v30);
      v33 = v39;
      sub_10056D828();
      v35 = v42;
      v34 = v43;
      v36 = (*(v42 + 88))(v33, v43);
      if (v36 == enum case for MusicPin.Item.album(_:) || v36 == enum case for MusicPin.Item.artist(_:))
      {
        goto LABEL_21;
      }

      if (v36 == enum case for MusicPin.Item.musicVideo(_:))
      {
LABEL_19:
        (*(v35 + 8))(v33, v34);
        v37 = v53 == 0;
        (*(v31 + 8))(v32, v30);
        (*(v22 + 8))(v24, a3);
        return v37;
      }

      if (v36 == enum case for MusicPin.Item.playlist(_:))
      {
LABEL_21:
        (*(v35 + 8))(v33, v34);
        (*(v31 + 8))(v32, v30);
        goto LABEL_5;
      }

      if (v36 == enum case for MusicPin.Item.song(_:))
      {
        goto LABEL_19;
      }

      (*(v35 + 8))(v33, v34);
      (*(v31 + 8))(v32, v30);
    }

    (*(v22 + 8))(v24, a3);
    return 0;
  }

  (*(v50 + 8))(v13, v11);
LABEL_13:
  (*(v22 + 8))(v24, a3);
  return v53 == 0;
}

uint64_t sub_10014D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a5;
  v6[34] = a6;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  v8 = sub_10056DFD8();
  v6[35] = v8;
  v6[36] = *(v8 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = type metadata accessor for PlaybackIntentDescriptor(0);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B70);
  v6[41] = swift_task_alloc();
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6[42] = v9;
  v6[43] = *(v9 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v10 = sub_10056D818();
  v6[48] = v10;
  v6[49] = *(v10 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = *(a5 - 8);
  v6[52] = swift_task_alloc();
  sub_100009DCC(&qword_1006E75A8);
  v6[53] = swift_task_alloc();
  v11 = sub_100571418();
  v6[54] = v11;
  v6[55] = *(v11 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = sub_100009DCC(&qword_1006E75B0);
  v6[58] = swift_task_alloc();
  sub_100009DCC(&qword_1006E7520);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return _swift_task_switch(sub_10014D640, 0, 0);
}

uint64_t sub_10014D640()
{
  v1 = *(v0 + 480);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);
  v6 = *(v0 + 232);
  (*(v5 + 104))(v1, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v7 = *(v3 + 48);
  sub_10000CC8C(v6, v2, &qword_1006E7520);
  sub_10000CC8C(v1, v2 + v7, &qword_1006E7520);
  v8 = *(v5 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    v9 = *(v0 + 432);
    sub_10001036C(*(v0 + 480), &qword_1006E7520);
    if (v8(v2 + v7, 1, v9) == 1)
    {
      sub_10001036C(*(v0 + 464), &qword_1006E7520);
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(v0 + 432);
    sub_10000CC8C(*(v0 + 464), *(v0 + 472), &qword_1006E7520);
    v11 = v8(v2 + v7, 1, v10);
    v12 = *(v0 + 472);
    v13 = *(v0 + 480);
    if (v11 != 1)
    {
      v32 = *(v0 + 464);
      v34 = *(v0 + 440);
      v33 = *(v0 + 448);
      v35 = *(v0 + 432);
      (*(v34 + 32))(v33, v2 + v7, v35);
      sub_100155EA8(&qword_1006E75C0, &type metadata accessor for MusicPlayer.PlayabilityStatus);
      v36 = sub_1005727E8();
      v37 = *(v34 + 8);
      v37(v33, v35);
      sub_10001036C(v13, &qword_1006E7520);
      v37(v12, v35);
      sub_10001036C(v32, &qword_1006E7520);
      if (v36)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    v14 = *(v0 + 432);
    v15 = *(v0 + 440);
    sub_10001036C(*(v0 + 480), &qword_1006E7520);
    (*(v15 + 8))(v12, v14);
  }

  sub_10001036C(*(v0 + 464), &qword_1006E75B0);
LABEL_7:
  v16 = *(*(v0 + 408) + 16);
  v16(*(v0 + 416), *(v0 + 240), *(v0 + 264));
  v17 = sub_10056D888();
  v18 = swift_dynamicCast();
  v19 = *(*(v17 - 8) + 56);
  v20 = *(v0 + 424);
  if (!v18)
  {
    v19(*(v0 + 424), 1, 1, v17);
    sub_10001036C(v20, &qword_1006E75A8);
LABEL_12:
    v29 = *(v0 + 264);
    v28 = *(v0 + 272);
    v30 = *(v0 + 240);
    *(v0 + 40) = v29;
    *(v0 + 48) = *(v28 + 8);
    v31 = sub_10002AB7C((v0 + 16));
    v16(v31, v30, v29);
    *(v0 + 56) = 0;
    _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 16);
    sub_1001090C8(v0 + 16);
LABEL_16:

    v43 = *(v0 + 8);

    return v43();
  }

  v21 = *(v17 - 8);
  v23 = *(v0 + 392);
  v22 = *(v0 + 400);
  v24 = *(v0 + 384);
  v19(*(v0 + 424), 0, 1, v17);
  sub_10056D828();
  v82 = v16;
  v25 = (*(v23 + 88))(v22, v24);
  v26 = enum case for MusicPin.Item.artist(_:);
  (*(v23 + 8))(v22, v24);
  (*(v21 + 8))(v20, v17);
  v27 = v25 == v26;
  v16 = v82;
  if (!v27)
  {
    goto LABEL_12;
  }

LABEL_14:
  v38 = *(v0 + 336);
  v39 = *(v0 + 344);
  v40 = *(v0 + 328);
  v41 = *(v0 + 248);
  v42 = type metadata accessor for Actions.PlaybackContext();
  sub_10000CC8C(v41 + *(v42 + 20), v40, &qword_1006E6B70);
  if ((*(v39 + 48))(v40, 1, v38) == 1)
  {
    sub_10001036C(*(v0 + 328), &qword_1006E6B70);
    goto LABEL_16;
  }

  v45 = *(v0 + 408);
  v47 = *(v0 + 368);
  v46 = *(v0 + 376);
  v81 = *(v0 + 360);
  v48 = *(v0 + 304);
  v49 = *(v0 + 312);
  v51 = *(v0 + 264);
  v50 = *(v0 + 272);
  v79 = *(v0 + 240);
  v80 = *(v0 + 248);
  sub_100155D58(*(v0 + 328), v46, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_100155C10(v46, v47, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  *(v0 + 88) = v51;
  *(v0 + 96) = *(v50 + 8);
  v52 = sub_10002AB7C((v0 + 64));
  (*(v45 + 16))(v52, v79, v51);
  sub_10000CC8C(v80 + *(v42 + 28), v0 + 104, &qword_1006E6B78);
  v53 = v49 + v48[7];
  *(v53 + 32) = 0;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  v54 = v49 + v48[8];
  *(v54 + 32) = 0;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *(v49 + v48[9]) = 0;
  *(v49 + v48[10]) = 0;
  *(v49 + v48[11]) = 0;
  sub_100155C10(v47, v49, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_100155C10(v49, v81, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v56 = *(v0 + 360);
  if (EnumCaseMultiPayload == 1)
  {
    v58 = *(v0 + 288);
    v57 = *(v0 + 296);
    v59 = *(v0 + 280);
    v60 = *(v0 + 256);
    (*(v58 + 32))(v57, v56, v59);
    v61 = sub_10056DFA8();
    [v61 setShuffleMode:v60];

    (*(v58 + 8))(v57, v59);
  }

  else
  {
    v62 = *v56;
    [*v56 setShuffleMode:*(v0 + 256)];
  }

  sub_100155C10(*(v0 + 312), *(v0 + 352), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v63 = swift_getEnumCaseMultiPayload();
  v64 = *(v0 + 352);
  if (v63 == 1)
  {
    v66 = *(v0 + 288);
    v65 = *(v0 + 296);
    v67 = *(v0 + 280);
    (*(v66 + 32))(v65, v64, v67);
    v68 = sub_10056DFA8();
    [v68 setRepeatMode:0];

    (*(v66 + 8))(v65, v67);
  }

  else
  {
    v69 = *v64;
    [*v64 setRepeatMode:0];
  }

  v71 = *(v0 + 304);
  v70 = *(v0 + 312);
  sub_100155C78(v0 + 64, v53);
  *(v70 + *(v71 + 20)) = 2;
  *(v70 + *(v71 + 24)) = 0;
  sub_10000CC8C(v0 + 104, v0 + 184, &qword_1006E6B78);
  if (*(v0 + 208))
  {
    sub_10002EA74((v0 + 184), v0 + 144);
  }

  else
  {
    *(v0 + 224) = 0;
    sub_100009DCC(&qword_1006E75B8);
    v72 = sub_1005729A8();
    *(v0 + 168) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 176) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 144) = v72;
    *(v0 + 152) = v73;
    if (*(v0 + 208))
    {
      sub_10001036C(v0 + 184, &qword_1006E6B78);
    }
  }

  v74 = *(v0 + 368);
  v76 = *(v0 + 312);
  v75 = *(v0 + 320);
  sub_100155CE8(v0 + 144, v54);
  sub_10001036C(v0 + 104, &qword_1006E6B78);
  sub_100155DC0(v74, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_10001036C(v0 + 64, &qword_1006EB1C0);
  sub_100155D58(v76, v75, type metadata accessor for PlaybackIntentDescriptor);
  v77 = swift_task_alloc();
  *(v0 + 488) = v77;
  *v77 = v0;
  v77[1] = sub_10014E010;
  v78 = *(v0 + 320);

  return PlaybackController.add(_:route:)(v78, 0);
}

uint64_t sub_10014E010()
{

  if (v0)
  {

    v1 = sub_100155FF8;
  }

  else
  {
    v1 = sub_10014E128;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10014E128()
{
  v1 = v0[47];
  sub_100155DC0(v0[40], type metadata accessor for PlaybackIntentDescriptor);
  sub_100155DC0(v1, type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10014E288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_100009DCC(&qword_1006E6428);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_10014E4A0, 0, 0);
}

uint64_t sub_10014E4A0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_10000CC8C(*(v0 + 72), v3, &qword_1006E6B80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 224), &qword_1006E6B80);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 96);
    sub_100155D58(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 264) = v8;
    v9 = sub_10056C8A8();
    *(v0 + 272) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 280) = v11;
    *(v0 + 288) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100009DCC(&qword_1006E6D88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 296) = sub_1000E0568(inited);
    *(v0 + 304) = v14;
    *(v0 + 312) = v15;
    *(v0 + 328) = v16;
    swift_setDeallocating();
    sub_100114BA8(inited + 32);
    sub_100572F08();
    *(v0 + 320) = sub_100572EF8();
    v18 = sub_100572E78();

    return _swift_task_switch(sub_10014E790, v18, v17);
  }
}

uint64_t sub_10014E790()
{
  v83 = *(v0 + 328);
  v76 = *(v0 + 296);
  v79 = *(v0 + 264);
  v81 = *(v0 + 312);
  v77 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);
  v8 = *(v0 + 88);

  if (v8)
  {
    v9 = 53;
  }

  else
  {
    v9 = 31;
  }

  v74 = v9;
  sub_10000CC8C(v3, v4, &qword_1006E5D10);
  v10 = *(v1 + v2[7]);
  v11 = *v1;
  v12 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428);
  v84 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v13 = (v6 + v5[20]);
  *v13 = 0;
  v13[1] = 0;
  *v6 = v77;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v74;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10);
  *(v6 + v5[8]) = v10;
  v14 = (v6 + v5[9]);
  v78 = v11;
  v80 = v12;
  *v14 = v11;
  v14[1] = v12;
  v15 = v6 + v5[10];
  *v15 = v76;
  *(v15 + 16) = v81;
  *(v15 + 24) = v83;
  sub_10000CC8C(v7, v75, &qword_1006E6428);
  v16 = type metadata accessor for MetricsEvent.Page(0);
  v82 = *(*(v16 - 1) + 48);
  v17 = v82(v75, 1, v16);
  v18 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 160);
  if (v17 == 1)
  {

    sub_1000DC030(v78, v80);

    sub_1000DCFE4(v21, v19, v20, v18, SBYTE1(v18));
    sub_10001036C(v22, &qword_1006E6428);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_1000DC030(v78, v80);

    sub_1000DCFE4(v21, v19, v20, v18, SBYTE1(v18));

    sub_100155DC0(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_10000CC8C(v25, v26, &qword_1006E6428);
  v28 = v82(v26, 1, v16);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_10001036C(*(v0 + 152), &qword_1006E6428);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_100155DC0(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_10000CC8C(v32, v33, &qword_1006E6428);
  if (v82(v33, 1, v16) == 1)
  {
    v35 = *(v0 + 280);
    v36 = *(v0 + 272);
    v37 = *(v0 + 200);
    sub_10001036C(*(v0 + 144), &qword_1006E6428);
    v35(v37, 1, 1, v36);
  }

  else
  {
    v38 = *(v0 + 144);
    sub_10000CC8C(v38 + v16[6], *(v0 + 200), &qword_1006E5D10);
    sub_100155DC0(v38, type metadata accessor for MetricsEvent.Page);
  }

  v39 = *(v0 + 168);
  v40 = *(v0 + 136);
  sub_100019B40(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_1006E5D10);
  sub_10000CC8C(v39, v40, &qword_1006E6428);
  v41 = v82(v40, 1, v16);
  v42 = *(v0 + 136);
  if (v41 == 1)
  {
    sub_10001036C(*(v0 + 136), &qword_1006E6428);
    v43 = 0;
  }

  else
  {
    v43 = *(v42 + v16[7]);

    sub_100155DC0(v42, type metadata accessor for MetricsEvent.Page);
  }

  v44 = *(v0 + 168);
  v45 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v43;
  sub_10000CC8C(v44, v45, &qword_1006E6428);
  v46 = v82(v45, 1, v16);
  v47 = *(v0 + 128);
  if (v46 == 1)
  {
    sub_10001036C(v47, &qword_1006E6428);
    v48 = 1;
  }

  else
  {
    v48 = *(v47 + v16[9]);
    sub_100155DC0(v47, type metadata accessor for MetricsEvent.Page);
  }

  v49 = *(v0 + 168);
  v50 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v48;
  sub_10000CC8C(v49, v50, &qword_1006E6428);
  v51 = v82(v50, 1, v16);
  v52 = *(v0 + 120);
  if (v51 == 1)
  {
    sub_10001036C(*(v0 + 120), &qword_1006E6428);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v55 = (v52 + v16[8]);
    v53 = *v55;
    v54 = v55[1];

    sub_100155DC0(v52, type metadata accessor for MetricsEvent.Page);
  }

  v56 = *(v0 + 168);
  v57 = *(v0 + 112);
  v58 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v58 = v53;
  v58[1] = v54;
  sub_100019B40(v56, v57, &qword_1006E6428);
  v59 = v82(v57, 1, v16);
  v60 = *(v0 + 112);
  if (v59 == 1)
  {
    sub_10001036C(v60, &qword_1006E6428);
    v61 = 2;
  }

  else
  {
    v61 = *(v60 + v16[11]);
    sub_100155DC0(v60, type metadata accessor for MetricsEvent.Page);
  }

  v62 = *(v0 + 184);
  v63 = *(v0 + 192);
  v64 = *(v0 + 176);
  *(v62 + *(v64 + 68)) = v61;
  *(v62 + *(v64 + 44)) = v84;
  sub_100155D58(v62, v63, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v66 = *(v0 + 304);
  v65 = *(v0 + 312);
  v67 = *(v0 + 296);
  v68 = *(v0 + 248);
  v69 = *(v0 + 232);
  v70 = *(v0 + 216);
  v71 = *(v0 + 192);
  v72 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v71, *(v68 + *(v69 + 24)), *(v68 + *(v69 + 24) + 8), *(v68 + *(v69 + 36)), *(v68 + *(v69 + 36) + 8), *(v68 + *(v69 + 36) + 16));
  sub_100109184(v67, v66, v65, v72, SBYTE1(v72));
  sub_100155DC0(v71, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v70, &qword_1006E5D10);

  return _swift_task_switch(sub_100155FF4, 0, 0);
}

uint64_t sub_10014EF68(uint64_t *a1, void (*a2)(char *, uint64_t, uint64_t), void *a3, uint64_t a4, uint64_t a5)
{
  v32[1] = a5;
  v37 = a2;
  v38 = a4;
  v36 = a3;
  v6 = sub_100571418();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v33 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10056DFD8();
  v32[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009DCC(&qword_1006E6B70);
  __chkstk_darwin(v11 - 8);
  v13 = v32 - v12;
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = v32 - v19;
  v21 = type metadata accessor for Actions.PlaybackContext();
  sub_10000CC8C(a1 + *(v21 + 20), v13, &qword_1006E6B70);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_100155D58(v13, v20, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v23 = *a1;
    v24 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
    swift_beginAccess();
    if (*(v23 + v24))
    {
      sub_100155C10(v20, v18, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = v32[0];
        (*(v32[0] + 32))(v10, v18, v8);

        v26 = sub_10056DFA8();
        (*(v25 + 8))(v10, v8);
      }

      else
      {
        v26 = *v18;
      }

      v27 = v36;
      sub_100101FC4(v36);
      v28 = v26;
      v29 = sub_1002A8978(v28, v27);

      if (v29)
      {
        Player.state<A>(for:)(v37);
        v30 = v33;
        MusicItemState.playabilityStatus.getter();

        v22 = sub_100147F94();

        sub_100155F88(v27);
        (*(v34 + 8))(v30, v35);
LABEL_12:
        sub_100155DC0(v20, type metadata accessor for PlaybackIntentDescriptor.IntentType);
        return v22;
      }

      v40 = 0;
      v41 = 0xE000000000000000;
      sub_100573ED8(34);
      v43._countAndFlagsBits = 0xD000000000000020;
      v43._object = 0x80000001005ADD20;
      sub_100572A98(v43);
      v39 = v27;
      sub_100574098();

      sub_100155F88(v27);
    }

    else
    {
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_100573ED8(39);
      v42._countAndFlagsBits = 0xD000000000000025;
      v42._object = 0x80000001005ADCF0;
      sub_100572A98(v42);
      sub_100574438();
    }

    v22 = v40;
    goto LABEL_12;
  }

  v22 = 0xD000000000000012;
  sub_10001036C(v13, &qword_1006E6B70);
  return v22;
}

uint64_t sub_10014F468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  type metadata accessor for Notice(0);
  v3[11] = swift_task_alloc();
  v4 = sub_10056DFD8();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B70);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10014F5F8, 0, 0);
}

uint64_t sub_10014F5F8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[8];
  v5 = type metadata accessor for Actions.PlaybackContext();
  sub_10000CC8C(v4 + *(v5 + 20), v3, &qword_1006E6B70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(v0[15], &qword_1006E6B70);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[18];
    v8 = v0[19];
    sub_100155D58(v0[15], v8, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_100155C10(v8, v9, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = v0[18];
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v0[13];
      v12 = v0[14];
      v14 = v0[12];
      (*(v13 + 32))(v12, v11, v14);
      v15 = sub_10056DFA8();
      (*(v13 + 8))(v12, v14);
    }

    else
    {
      v15 = *v11;
    }

    v0[20] = v15;
    v16 = v0[8];
    v17 = *(v5 + 28);
    v18 = swift_task_alloc();
    v0[21] = v18;
    *v18 = v0;
    v18[1] = sub_10014F848;
    v19 = v0[9];

    return PlaybackController.insert(_:location:issuer:)(v15, v19, v16 + v17);
  }
}

uint64_t sub_10014F848()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_10014FC04;
  }

  else
  {

    v3 = sub_10014F964;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10014F964()
{
  Player.InsertCommand.Location.notice.getter(*(v0 + 88));
  sub_100572F08();
  *(v0 + 184) = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_10014FA04, v2, v1);
}

uint64_t sub_10014FA04()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1002EECF0((v0 + 2));

    v3 = v0[5];
    v4 = v0[11];
    if (v3)
    {
      v5 = v0[6];
      sub_10000C8CC(v0 + 2, v0[5]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_100155DC0(v4, type metadata accessor for Notice);
      sub_100010474((v0 + 2));
    }

    else
    {
      sub_100155DC0(v0[11], type metadata accessor for Notice);
      sub_10001036C((v0 + 2), &qword_1006E6C10);
    }
  }

  else
  {
    sub_100155DC0(v0[11], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_10014FB54, 0, 0);
}

uint64_t sub_10014FB54()
{
  sub_100155DC0(*(v0 + 152), type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014FC04()
{
  v15 = v0;

  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, static Logger.actions);
  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    *(v0 + 56) = v5;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v9 = sub_100572978();
    v11 = sub_1000C9784(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to perform add to queue with error=%{public}s", v7, 0xCu);
    sub_100010474(v8);
  }

  else
  {
  }

  sub_100155DC0(v6, type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t Player.InsertCommand.Location.notice.getter@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Notice.Variant(0);
  __chkstk_darwin(v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v4, a1);
  return sub_100155DC0(v4, type metadata accessor for Notice.Variant);
}

uint64_t sub_10014FEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_100009DCC(&qword_1006E6428);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_100150110, 0, 0);
}

uint64_t sub_100150110()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_10000CC8C(*(v0 + 72), v3, &qword_1006E6B80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 224), &qword_1006E6B80);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 88);
    sub_100155D58(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v6);
    *(v0 + 264) = v8;
    if (v7 >= 4)
    {
      return sub_1005740F8();
    }

    else
    {
      *(v0 + 330) = 0x20062122u >> (8 * v7);
      v9 = *(v0 + 216);
      v10 = *(v0 + 96);
      v11 = sub_10056C8A8();
      *(v0 + 272) = v11;
      v12 = *(v11 - 8);
      v13 = *(v12 + 56);
      *(v0 + 280) = v13;
      *(v0 + 288) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v13(v9, 1, 1, v11);
      sub_100009DCC(&qword_1006E6D88);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057B510;
      *(inited + 32) = MusicItem.metricsContentType.getter(v10);
      *(inited + 40) = v15;
      *(inited + 48) = 0;
      *(v0 + 296) = sub_1000E0568(inited);
      *(v0 + 304) = v16;
      *(v0 + 312) = v17;
      *(v0 + 328) = v18;
      swift_setDeallocating();
      sub_100114BA8(inited + 32);
      sub_100572F08();
      *(v0 + 320) = sub_100572EF8();
      v20 = sub_100572E78();

      return _swift_task_switch(sub_100150490, v20, v19);
    }
  }
}

uint64_t sub_100150490()
{
  v83 = *(v0 + 328);
  v76 = *(v0 + 296);
  v81 = *(v0 + 330);
  v79 = *(v0 + 264);
  v77 = *(v0 + 312);
  v78 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);

  sub_10000CC8C(v3, v4, &qword_1006E5D10);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = v78;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v81;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10);
  v80 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v82 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v76;
  *(v14 + 16) = v77;
  *(v14 + 24) = v83;
  sub_10000CC8C(v7, v75, &qword_1006E6428);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = *(*(v15 - 1) + 48);
  v17 = v16(v75, 1, v15);
  v18 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 160);
  v84 = v11;
  if (v17 == 1)
  {

    sub_1000DC030(v82, v80);

    sub_1000DCFE4(v21, v19, v20, v18, SBYTE1(v18));
    sub_10001036C(v22, &qword_1006E6428);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_1000DC030(v82, v80);

    sub_1000DCFE4(v21, v19, v20, v18, SBYTE1(v18));

    sub_100155DC0(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_10000CC8C(v25, v26, &qword_1006E6428);
  v28 = v16(v26, 1, v15);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_10001036C(*(v0 + 152), &qword_1006E6428);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_100155DC0(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_10000CC8C(v32, v33, &qword_1006E6428);
  if (v16(v33, 1, v15) == 1)
  {
    v35 = v16;
    v36 = *(v0 + 280);
    v37 = *(v0 + 272);
    v38 = *(v0 + 200);
    sub_10001036C(*(v0 + 144), &qword_1006E6428);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    sub_10000CC8C(v39 + v15[6], *(v0 + 200), &qword_1006E5D10);
    sub_100155DC0(v39, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  sub_100019B40(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_1006E5D10);
  sub_10000CC8C(v40, v41, &qword_1006E6428);
  v42 = v16(v41, 1, v15);
  v43 = *(v0 + 136);
  if (v42 == 1)
  {
    sub_10001036C(*(v0 + 136), &qword_1006E6428);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_100155DC0(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v44;
  sub_10000CC8C(v45, v46, &qword_1006E6428);
  v47 = v16(v46, 1, v15);
  v48 = *(v0 + 128);
  if (v47 == 1)
  {
    sub_10001036C(v48, &qword_1006E6428);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_100155DC0(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v49;
  sub_10000CC8C(v50, v51, &qword_1006E6428);
  v52 = v16(v51, 1, v15);
  v53 = *(v0 + 120);
  if (v52 == 1)
  {
    sub_10001036C(*(v0 + 120), &qword_1006E6428);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_100155DC0(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 168);
  v58 = *(v0 + 112);
  v59 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_100019B40(v57, v58, &qword_1006E6428);
  v60 = v16(v58, 1, v15);
  v61 = *(v0 + 112);
  if (v60 == 1)
  {
    sub_10001036C(v61, &qword_1006E6428);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_100155DC0(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  sub_100155D58(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 304);
  v66 = *(v0 + 312);
  v68 = *(v0 + 296);
  v69 = *(v0 + 248);
  v70 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = *(v0 + 192);
  v73 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v72, *(v69 + *(v70 + 24)), *(v69 + *(v70 + 24) + 8), *(v69 + *(v70 + 36)), *(v69 + *(v70 + 36) + 8), *(v69 + *(v70 + 36) + 16));
  sub_100109184(v68, v67, v66, v73, SBYTE1(v73));
  sub_100155DC0(v72, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v71, &qword_1006E5D10);

  return _swift_task_switch(sub_100150C74, 0, 0);
}

uint64_t sub_100150C74()
{
  sub_100155DC0(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*Actions.Playback.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return sub_100109428;
}

uint64_t (*sub_100150EC0())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return sub_100109428;
}

uint64_t Actions.Queue.Context.menuItemSubtitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t (*Actions.Queue.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "badge.plus.radiowaves.right";
  }

  else
  {
    v2 = "nd.arrowtriangle.forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return sub_100109428;
}

uint64_t (*sub_1001510DC())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "badge.plus.radiowaves.right";
  }

  else
  {
    v2 = "nd.arrowtriangle.forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return sub_100109428;
}

uint64_t sub_1001511B4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a1 = v3;
  return result;
}

uint64_t sub_100151234(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_10056E488();
}

uint64_t sub_1001512B4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v16 = v1;
  v4 = *(v1 - 8);
  v5 = (v3 + *(*(v2 - 1) + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64) + v5 + 7;
  v7 = v0 + v3;

  v8 = v2[5];
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v9 - 8) + 48))(v7 + v8, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_10056DFD8();
      (*(*(v10 - 8) + 8))(v7 + v8, v10);
    }

    else
    {
    }
  }

  v11 = (v7 + v2[6]);
  if (v11[1])
  {

    v12 = v11[3];
    if (v12 >> 60 != 15)
    {
      sub_10008246C(v11[2], v12);
    }
  }

  v13 = v7 + v2[7];
  if (*(v13 + 24))
  {
    sub_100010474(v13);
  }

  (*(v4 + 8))(v0 + v5, v16);
  v14 = *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8));
  if (v14 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001514F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v6 = *(v0 + ((*(*(v1 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10014EF68((v0 + v4), (v0 + v5), v6, v1, v2);
}

uint64_t sub_1001515EC()
{
  v1 = type metadata accessor for Actions.PlaybackContext();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64) + v2 + 7;
  v4 = v0 + v2;

  v5 = v1[5];
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v6 - 8) + 48))(v4 + v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_10056DFD8();
      (*(*(v7 - 8) + 8))(v4 + v5, v7);
    }

    else
    {
    }
  }

  v8 = v3 & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v1[6]);
  if (v9[1])
  {

    v10 = v9[3];
    if (v10 >> 60 != 15)
    {
      sub_10008246C(v9[2], v10);
    }
  }

  v11 = v4 + v1[7];
  if (*(v11 + 24))
  {
    sub_100010474(v11);
  }

  v12 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v8);
  if (v13 >= 4)
  {
  }

  v14 = v0 + v12;
  swift_unknownObjectWeakDestroy();
  v15 = *(v0 + v12 + 48);
  if (v15 != 255)
  {
    sub_1000FF9AC(*(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), v15);
  }

  if (*(v14 + 64))
  {
  }

  if (*(v14 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001517F0()
{
  v2 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000116F0;

  return sub_10014F468(v0 + v3, v6, v0 + v5);
}

uint64_t sub_100151900()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v3;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v17 = v1;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v16 = *(v10 + 24);
      v11 = sub_10056C8A8();
      v14 = *(v11 - 8);
      v15 = v11;
      if (!(*(v14 + 48))(v9 + v16, 1))
      {
        (*(v14 + 8))(v9 + v16, v15);
      }
    }

    v1 = v17;
  }

  (*(v4 + 8))(v0 + v5, v1);
  v12 = *(v0 + v6);
  if (v12 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100151BDC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1000116F0;

  return sub_10014FEF8(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t sub_100151D54()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100151F98();
  }

  return result;
}

uint64_t sub_100151DAC()
{
  v0 = sub_100571438();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = sub_100571468();
    __chkstk_darwin(v8);
    v9 = sub_100571A68();
    *(&v11 - 2) = v9;
    *(&v11 - 1) = &protocol witness table for Song;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v11 - 2) = v9;
    *(&v11 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    (*(v1 + 16))(v4, v6, v0);
    sub_10056E488();
    return (*(v1 + 8))(v6, v0);
  }

  return result;
}

uint64_t sub_100151F98()
{
  v78 = sub_100571A68();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005713F8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v72 - v7;
  v9 = sub_100571418();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v77 = &v72 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v72 - v16;
  __chkstk_darwin(v15);
  v19 = &v72 - v18;
  v82 = v0;

  sub_100571448();

  v20 = *(v10 + 16);
  v80 = v19;
  v76 = v10 + 16;
  v20(v17, v19, v9);
  v81 = v10;
  v21 = (*(v10 + 88))(v17, v9);
  v22 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  if (v21 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v81 + 96))(v17, v9);
    (*(v3 + 32))(v8, v17, v2);
    (*(v3 + 104))(v6, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v2);
    v73 = v8;
    v23 = sub_1005713E8();
    v24 = *(v3 + 8);
    v74 = (v3 + 8);
    v75 = v2;
    v24(v6, v2);
    if ((v23 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), , sub_10056E478(), , , , v83))
    {

      v25 = v81;
      v26 = v77;
      v27 = (*(v81 + 104))(v77, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v9);
      __chkstk_darwin(v27);
      v28 = v78;
      *(&v72 - 2) = v78;
      *(&v72 - 1) = &protocol witness table for Song;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v72 - 2) = v28;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v20(v79, v26, v9);

      sub_10056E488();
      v30 = *(v25 + 8);
      v30(v26, v9);
      v24(v73, v75);
    }

    else
    {
      v41 = v77;
      v42 = (v20)(v77, v80, v9);
      __chkstk_darwin(v42);
      v43 = v81;
      v72 = v24;
      v44 = v78;
      *(&v72 - 2) = v78;
      *(&v72 - 1) = &protocol witness table for Song;
      v45 = swift_getKeyPath();
      __chkstk_darwin(v45);
      *(&v72 - 2) = v44;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v20(v79, v41, v9);

      sub_10056E488();
      v30 = *(v43 + 8);
      v30(v41, v9);
      v72(v73, v75);
    }

    return (v30)(v80, v9);
  }

  v31 = v21;
  if (v21 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10056E478();

    if (!v83 || (v83, swift_getKeyPath(), swift_getKeyPath(), , sub_10056E478(), , , , (v83 & 1) != 0) || (, v32 = Player.supportsDelegation.getter(), , (v32 & 1) != 0))
    {
      v33 = v77;
      v34 = v80;
      v35 = (v20)(v77, v80, v9);
      __chkstk_darwin(v35);
      v36 = v20;
      v37 = v78;
      *(&v72 - 2) = v78;
      *(&v72 - 1) = &protocol witness table for Song;
      v38 = swift_getKeyPath();
      __chkstk_darwin(v38);
      *(&v72 - 2) = v37;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v36(v79, v33, v9);

      sub_10056E488();
      v39 = *(v81 + 8);
      v39(v33, v9);
      return (v39)(v34, v9);
    }

    v53 = v82;
    v54 = *(*v82 + 120);
    swift_beginAccess();
    v56 = v74;
    v55 = v75;
    v57 = v53 + v54;
    v58 = v78;
    (*(v75 + 16))(v74, v57, v78);
    sub_100571998();
    v60 = v59;
    (*(v55 + 8))(v56, v58);
    if (!v60)
    {
      v67 = v77;
      (*(v3 + 104))(v77, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:), v2);
      v68 = v81;
      v69 = (*(v81 + 104))(v67, v22, v9);
      __chkstk_darwin(v69);
      *(&v72 - 2) = v58;
      *(&v72 - 1) = &protocol witness table for Song;
      v70 = swift_getKeyPath();
      __chkstk_darwin(v70);
      *(&v72 - 2) = v71;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v20(v79, v67, v9);

      sub_10056E488();
      v30 = *(v68 + 8);
      v30(v67, v9);
      return (v30)(v80, v9);
    }

    v61 = v81;
    v62 = v77;
    v63 = (*(v81 + 104))(v77, v31, v9);
    __chkstk_darwin(v63);
    *(&v72 - 2) = v58;
    *(&v72 - 1) = &protocol witness table for Song;
    v64 = swift_getKeyPath();
    __chkstk_darwin(v64);
    *(&v72 - 2) = v65;
    *(&v72 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v20(v79, v62, v9);

    sub_10056E488();
    v66 = *(v61 + 8);
    v66(v62, v9);
    return (v66)(v80, v9);
  }

  else
  {
    v46 = v20;
    v47 = v77;
    v48 = v80;
    v49 = v46(v77, v80, v9);
    __chkstk_darwin(v49);
    v50 = v78;
    *(&v72 - 2) = v78;
    *(&v72 - 1) = &protocol witness table for Song;
    v51 = swift_getKeyPath();
    __chkstk_darwin(v51);
    *(&v72 - 2) = v50;
    *(&v72 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v46(v79, v47, v9);

    sub_10056E488();
    v52 = *(v81 + 8);
    v52(v47, v9);
    v52(v48, v9);
    return (v52)(v17, v9);
  }
}

uint64_t sub_100152BA0()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t _s9MusicCore7ActionsO7PreviewO7ContextV13menuItemTitleSSvg_0()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100152FD8()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_1001531D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v11 = v3;
  if (v3 >= 4)
  {
    result = sub_1005740F8();
    __break(1u);
  }

  else
  {
    v5 = 0x19171816u >> (8 * v3);
    v10 = *(a1 + 8);
    sub_100155F98(&v11, v9);
    sub_10000CC8C(&v10, v9, &unk_1006EB090);
    v6 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v6;
    *(a2 + 64) = *(a1 + 64);
    v7 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v7;
    *(a2 + 72) = v5;
    *(a2 + 80) = sub_10014B6F0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x4014000000000000;
    *(a2 + 104) = &unk_1005887C8;
    *(a2 + 112) = 0;
    *(a2 + 120) = &unk_1005887D0;
    *(a2 + 128) = 0;
  }

  return result;
}

uint64_t sub_100153334()
{

  return swift_deallocObject();
}

uint64_t sub_100153370()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000116F0;

  return sub_100145894(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_1001534B8()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext();
  v14 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v3;

  v7 = v2[5];
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v3 + v7, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_10056DFD8();
      (*(*(v9 - 8) + 8))(v6 + v7, v9);
    }

    else
    {
    }
  }

  v10 = (v6 + v2[6]);
  if (v10[1])
  {

    v11 = v10[3];
    if (v11 >> 60 != 15)
    {
      sub_10008246C(v10[2], v11);
    }
  }

  v12 = v6 + v2[7];
  if (*(v12 + 24))
  {
    sub_100010474(v12);
  }

  (*(v4 + 8))(v0 + ((v3 + v14 + v5) & ~v5), v1);

  return swift_deallocObject();
}

unint64_t sub_1001536E4()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_100147664((v0 + v3), v4, v1);
}

uint64_t sub_1001537B4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Actions.PlaybackContext();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  v8 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v11 = v0 + v6;

  v12 = v5[5];
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v6 + v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_10056DFD8();
      (*(*(v14 - 8) + 8))(v11 + v12, v14);
    }

    else
    {
    }
  }

  v15 = v10 + v9;
  v16 = (v11 + v5[6]);
  if (v16[1])
  {

    v17 = v16[3];
    if (v17 >> 60 != 15)
    {
      sub_10008246C(v16[2], v17);
    }
  }

  v18 = v15 + 7;
  v19 = v11 + v5[7];
  if (*(v19 + 24))
  {
    sub_100010474(v19);
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFF8;
  v21 = v0 + v9;
  v22 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v22 - 8) + 48))(v0 + v9, 1, v22))
  {
    if (*(v21 + 8) >= 0xDuLL)
    {
    }

    v23 = v21 + *(v22 + 20);
    v24 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
    {

      v25 = *(v24 + 24);
      v26 = sub_10056C8A8();
      v27 = *(v26 - 8);
      v31 = v26;
      if (!(*(v27 + 48))(v23 + v25, 1))
      {
        (*(v27 + 8))(v23 + v25, v31);
      }
    }
  }

  v28 = v0 + v20;
  swift_unknownObjectWeakDestroy();
  v29 = *(v0 + v20 + 48);
  if (v29 != 255)
  {
    sub_1000FF9AC(*(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32), *(v28 + 40), v29);
  }

  if (*(v28 + 64))
  {
  }

  if (*(v28 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100153C10()
{
  v2 = *(v0 + 16);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10000CB98;

  return sub_1001482B4(v0 + v3, v0 + v6, v0 + v9, v0 + v10, v2);
}

uint64_t sub_100153DE8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000116F0;

  return sub_10014A3F0(v0 + v5, v0 + v6, v2, v3);
}

char *sub_100153F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a3;
  v82 = a2;
  v83 = a1;
  v5 = sub_100009DCC(&qword_1006EB6A0);
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v75 = &v60 - v6;
  v7 = sub_100009DCC(&qword_1006E75E8);
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v78 = &v60 - v8;
  v9 = sub_100009DCC(&qword_1006E75F0);
  __chkstk_darwin(v9 - 8);
  v81 = &v60 - v10;
  v69 = sub_100009DCC(&unk_1006EB690);
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v60 - v11;
  v71 = sub_100009DCC(&unk_1006EBF50);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v60 - v12;
  v72 = sub_100009DCC(&qword_1006E75F8);
  v65 = *(v72 - 8);
  __chkstk_darwin(v72);
  v64 = &v60 - v13;
  v63 = sub_100571438();
  v62 = *(v63 - 8);
  v14 = __chkstk_darwin(v63);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v60 - v17;
  v61 = sub_100009DCC(&qword_1006E7600);
  v19 = *(v61 - 1);
  __chkstk_darwin(v61);
  v21 = &v60 - v20;
  v22 = sub_100571418();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v60 - v27;
  *(v4 + 4) = _swiftEmptyArrayStorage;
  v66 = v4 + 32;
  v29 = *(*v4 + 128);
  (*(v23 + 104))(&v60 - v27, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v22);
  (*(v23 + 16))(v26, v28, v22);
  sub_10056E438();
  (*(v23 + 8))(v28, v22);
  (*(v19 + 32))(&v4[v29], v21, v61);
  v30 = *(*v4 + 136);
  v31 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v32 = sub_100571428();
  (*(*(v32 - 8) + 104))(v18, v31, v32);
  v33 = v62;
  v34 = v63;
  (*(v62 + 104))(v18, enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:), v63);
  v61 = *(v33 + 16);
  v61(v16, v18, v34);
  v35 = v64;
  sub_10056E438();
  v62 = *(v33 + 8);
  (v62)(v18, v34);
  (*(v65 + 32))(&v4[v30], v35, v72);
  v36 = *(*v4 + 120);
  v37 = sub_100571A68();
  v72 = *(v37 - 8);
  (*(v72 + 16))(&v4[v36], v83, v37);
  v38 = v74;
  *(v4 + 2) = v82;
  *(v4 + 3) = v38;

  sub_100151F98();
  sub_100571468();
  v86 = v37;
  v87 = &protocol witness table for Song;
  swift_getKeyPath();
  v74 = v37;
  v84 = v37;
  v85 = &protocol witness table for Song;
  swift_getKeyPath();
  v61(v16, v18, v34);

  sub_10056E488();
  (v62)(v18, v34);
  v39 = v67;
  sub_100571458();
  sub_100155E5C();
  v40 = sub_1005735E8();
  v88 = v40;
  v41 = sub_1005735C8();
  v42 = *(v41 - 8);
  v43 = v81;
  v65 = *(v42 + 56);
  v64 = (v42 + 56);
  (v65)(v81, 1, 1, v41);
  sub_100010BC0(&qword_1006E7608, &unk_1006EB690);
  v44 = sub_100155EA8(&qword_1006EB620, sub_100155E5C);
  v45 = v68;
  v46 = v43;
  v47 = v69;
  v63 = v44;
  sub_10056E4E8();
  sub_10001036C(v46, &qword_1006E75F0);

  (*(v70 + 8))(v39, v47);
  swift_allocObject();
  swift_weakInit();
  sub_100010BC0(&unk_1006EBF60, &unk_1006EBF50);

  v48 = v71;
  sub_10056E518();

  v49 = v66;
  (*(v73 + 8))(v45, v48);
  swift_beginAccess();
  sub_100572CE8();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
  swift_endAccess();
  v50 = v75;
  v51 = v82;
  sub_100571478();
  v52 = sub_1005735E8();
  v88 = v52;
  v53 = v81;
  (v65)(v81, 1, 1, v41);
  sub_100010BC0(&qword_1006E7610, &qword_1006EB6A0);
  v54 = v77;
  v55 = v78;
  sub_10056E4E8();
  sub_10001036C(v53, &qword_1006E75F0);

  (*(v76 + 8))(v50, v54);
  v56 = swift_allocObject();
  swift_weakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v51;
  sub_100010BC0(qword_1006EBF70, &qword_1006E75E8);

  v58 = v80;
  sub_10056E518();

  (*(v79 + 8))(v55, v58);
  swift_beginAccess();
  sub_100572CE8();
  if (*((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
  swift_endAccess();
  (*(v72 + 8))(v83, v74);
  return v4;
}

uint64_t sub_100154C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v2 = 6;
  }

  else
  {
    v2 = 5;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = sub_10014362C;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_1005885F0;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_1005885F8;
  *(a2 + 112) = 0;
}

uint64_t sub_100154CC4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v3 + *(*(v2 - 1) + 64);
  v5 = *(sub_100009DCC(&qword_1006E7520) - 8);
  v6 = *(v5 + 80);
  v20 = *(v5 + 64);
  v21 = v1;
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = v0 + v3;

  v10 = v2[5];
  v11 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v11 - 8) + 48))(v9 + v10, 1, v11))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = sub_10056DFD8();
      (*(*(v12 - 8) + 8))(v9 + v10, v12);
    }

    else
    {
    }
  }

  v13 = (v9 + v2[6]);
  if (v13[1])
  {

    v14 = v13[3];
    if (v14 >> 60 != 15)
    {
      sub_10008246C(v13[2], v14);
    }
  }

  v15 = (v4 + v6) & ~v6;
  v16 = v9 + v2[7];
  if (*(v16 + 24))
  {
    sub_100010474(v16);
  }

  v17 = sub_100571418();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v15, 1, v17))
  {
    (*(v18 + 8))(v0 + v15, v17);
  }

  (*(v7 + 8))(v0 + ((v15 + v20 + v8) & ~v8), v21);

  return swift_deallocObject();
}

unint64_t sub_100154FE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_100009DCC(&qword_1006E7520) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v9 = *(v0 + ((*(*(v1 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10014C0A8(v0 + v4, v0 + v7, v0 + v8, v9, v1, v2);
}

uint64_t sub_100155150()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100009DCC(&qword_1006E7520) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for Actions.PlaybackContext();
  v8 = (v5 + v6 + *(*(v7 - 1) + 80)) & ~*(*(v7 - 1) + 80);
  v9 = sub_100571418();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  (*(v4 + 8))(v0 + v5, v1);
  v11 = v0 + v8;

  v12 = v7[5];
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v8 + v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_10056DFD8();
      (*(*(v14 - 8) + 8))(v11 + v12, v14);
    }

    else
    {
    }
  }

  v15 = (v11 + v7[6]);
  if (v15[1])
  {

    v16 = v15[3];
    if (v16 >> 60 != 15)
    {
      sub_10008246C(v15[2], v16);
    }
  }

  v17 = v11 + v7[7];
  if (*(v17 + 24))
  {
    sub_100010474(v17);
  }

  return swift_deallocObject();
}

uint64_t sub_100155464()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_100009DCC(&qword_1006E7520) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(*(v3 - 8) + 64);
  v8 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1000116F0;

  return sub_10014D2C0(v0 + v5, v0 + v6, v0 + v9, v10, v3, v2);
}

uint64_t sub_100155640()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
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
      v11 = sub_10056C8A8();
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

uint64_t sub_10015590C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1000116F0;

  return sub_10014E288(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t sub_100155AF4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100155B0C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100155B30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100155B78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100155BD8()
{

  return swift_deallocObject();
}

uint64_t sub_100155C10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100155C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EB1C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100155CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E6B78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100155D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100155DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_100155E3C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_100155E5C()
{
  result = qword_1006E84A0;
  if (!qword_1006E84A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006E84A0);
  }

  return result;
}

uint64_t sub_100155EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100155EF0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100155F30()
{

  return swift_deallocObject();
}

void sub_100155F88(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_100156080@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  sub_100009DCC(a1);
  sub_100063478(a2, a1);
  sub_1005731B8();
  sub_100573208();
  if (v15[4] == v15[0])
  {
    v8 = a3(0);
    return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  }

  else
  {
    v10 = sub_1005732E8();
    v12 = v11;
    v13 = a3(0);
    v14 = *(v13 - 8);
    (*(v14 + 16))(a4, v12, v13);
    v10(v15, 0);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }
}

uint64_t Actions.Share.Context.menuItemTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Actions.Share.Context.menuItemTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

__n128 static Actions.Share.action(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 + 48);

  sub_1000CB298(&v8, &v7);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  *(a2 + 64) = 4;
  *(a2 + 72) = sub_1001024FC;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &unk_1005887E0;
  *(a2 + 104) = 0;
  *(a2 + 112) = &unk_1005887E8;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_1001563BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v3;
  *(a2 + 48) = v2;
  *(a2 + 56) = v4;
  *(a2 + 64) = 4;
  *(a2 + 72) = sub_1001024FC;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &unk_1005887E0;
  *(a2 + 104) = 0;
  *(a2 + 112) = &unk_1005887E8;
  *(a2 + 120) = 0;
}

uint64_t (*Actions.Share.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x80000001005ADD50;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x80000001005ADD50;
  return sub_100108BF8;
}

uint64_t sub_100156528()
{

  return swift_deallocObject();
}

uint64_t (*Actions.Share.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x80000001005ADD70;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x80000001005ADD70;
  return sub_100109428;
}

uint64_t (*sub_100156600())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x80000001005ADD50;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x80000001005ADD50;
  return sub_100109428;
}

uint64_t (*sub_1001566A0())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x80000001005ADD70;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x80000001005ADD70;
  return sub_100109428;
}

uint64_t Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v45 = a6;
  v37 = a5;
  v40 = a4;
  v41 = a2;
  v42 = a3;
  v11 = sub_10056CC38();
  __chkstk_darwin(v11 - 8);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100572888();
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = __chkstk_darwin(v13);
  v36 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v34 - v16;
  v18 = sub_100009DCC(&qword_1006E6B80);
  v35 = *(v18 - 8);
  v19 = *(v35 + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v34 - v20;
  sub_10002EA8C(a1, v47);
  v22 = swift_allocObject();
  sub_10002EA74(v47, v22 + 16);
  *(v22 + 56) = a2;
  *(v22 + 64) = a3;
  v23 = swift_allocObject();
  v24 = v37;
  v38 = v23;
  *(v23 + 16) = v40;
  *(v23 + 24) = v24;
  sub_10000CC8C(v45, v21, &qword_1006E6B80);
  v40 = a1;
  sub_10002EA8C(a1, v46);
  v25 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v26 = (v19 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_100019B40(v21, v27 + v25, &qword_1006E6B80);
  sub_10002EA74(v46, v27 + v26);

  sub_100572818();
  (*(v43 + 16))();
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v28 = qword_1006FC3B8;
  sub_10056CBC8();
  v29 = sub_100572948();
  v31 = v30;

  sub_10001036C(v45, &qword_1006E6B80);
  sub_100010474(v40);
  result = (*(v43 + 8))(v17, v44);
  *a7 = sub_100157030;
  a7[1] = v22;
  v33 = v38;
  a7[2] = &unk_100588800;
  a7[3] = v33;
  a7[4] = &unk_100588810;
  a7[5] = v27;
  a7[6] = v29;
  a7[7] = v31;
  return result;
}

unint64_t sub_100156B38(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v4 = sub_100009DCC(&qword_1006E5D10);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_1005714C8();
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009DCC(&qword_1006E7918);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  sub_10002EA8C(a1, v39);
  sub_100009DCC(&qword_1006E7920);
  sub_100009DCC(&qword_1006E7928);
  if (swift_dynamicCast())
  {
    sub_10002EA74(v37, v40);
    sub_10000C8CC(v40, v40[3]);
    sub_10056D4E8();
    sub_100571658();
    (*(v25 + 8))(v9, v7);
    v14 = sub_10015703C();
    (*(v11 + 8))(v13, v10);
    sub_100010474(v40);
    return v14;
  }

  memset(v37, 0, sizeof(v37));
  v38 = 0;
  sub_10001036C(v37, &qword_1006E7930);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v36[4] = v32;
  v36[5] = v33;
  v36[6] = v34;
  v36[7] = v35;
  v36[0] = v28;
  v36[1] = v29;
  v36[2] = v30;
  v36[3] = v31;
  sub_100108D2C(v36);
  if ((BYTE1(v36[0]) & 1) == 0)
  {
    return 0xD000000000000010;
  }

  v16 = a1[3];
  v17 = a1[4];
  sub_10000C8CC(a1, v16);
  (*(v17 + 16))(v16, v17);
  v18 = sub_10056C8A8();
  v19 = (*(*(v18 - 8) + 48))(v6, 1, v18);
  sub_10001036C(v6, &qword_1006E5D10);
  if (v19 != 1)
  {
    return 0;
  }

  sub_10002EA8C(a1, &v27);
  sub_100009DCC(&qword_1006E6448);
  if (swift_dynamicCast())
  {
    v20 = *(&v29 + 1);
    v21 = v30;
    sub_10000C8CC(&v28, *(&v29 + 1));
    (*(v21 + 8))(v20, v21);
    v23 = v22;
    sub_100010474(&v28);
    if (v23)
    {

      return 0;
    }
  }

  else
  {
    *&v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_10001036C(&v28, &unk_1006EBE50);
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_100156FE8()
{
  sub_100010474(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_10015703C()
{
  v1 = sub_1005714B8();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v27 = &v24 - v6;
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = sub_100009DCC(&qword_1006E7918);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = *(v10 + 16);
  v26 = v0;
  v16(&v24 - v14, v0, v9);
  v17 = (*(v10 + 88))(v15, v9);
  if (v17 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v15, v9);
    (*(v2 + 32))(v8, v15, v1);
    v18 = *(v2 + 16);
    v19 = v27;
    v18(v27, v8, v1);
    v20 = (*(v2 + 88))(v19, v1);
    if (v20 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedType(_:))
    {
      v21 = 0xD000000000000010;
LABEL_8:
      (*(v2 + 8))(v8, v1);
      return v21;
    }

    if (v20 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedItem(_:))
    {
      v21 = 0xD000000000000010;
      goto LABEL_8;
    }

    if (v20 != enum case for MusicLibrary.ShareAction.UnsupportedReason.canBecomeShareableOncePublic(_:))
    {
      if (v20 != enum case for MusicLibrary.ShareAction.UnsupportedReason.networkRequired(_:))
      {
        v28 = 0;
        v29 = 0xE000000000000000;
        sub_100573ED8(17);

        v28 = 0x206E776F6E6B6E55;
        v29 = 0xEF206E6F73616572;
        v18(v25, v8, v1);
        v31._countAndFlagsBits = sub_100572978();
        sub_100572A98(v31);

        v21 = v28;
        v23 = *(v2 + 8);
        v23(v8, v1);
        v23(v27, v1);
        return v21;
      }

      v21 = 0xD000000000000010;
      goto LABEL_8;
    }

    (*(v2 + 8))(v8, v1);
  }

  else if (v17 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_100573ED8(27);

    v28 = 0xD000000000000019;
    v29 = 0x80000001005ADFC0;
    v16(v13, v26, v9);
    v30._countAndFlagsBits = sub_100572978();
    sub_100572A98(v30);

    v21 = v28;
    (*(v10 + 8))(v15, v9);
    return v21;
  }

  return 0;
}

uint64_t sub_1001574E0(int *a1)
{
  v1[2] = sub_100572F08();
  v1[3] = sub_100572EF8();
  v5 = (a1 + *a1);
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1000E7F10;

  return v5();
}

uint64_t sub_1001575F0()
{

  return swift_deallocObject();
}

uint64_t sub_100157628()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_1001574E0(v2);
}

uint64_t sub_1001576C0(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_100009DCC(&qword_1006E6428);
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
  sub_100009DCC(&qword_1006E5D10);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1001578D0, 0, 0);
}

uint64_t sub_1001578D0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_10000CC8C(*(v0 + 72), v3, &qword_1006E6B80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 200), &qword_1006E6B80);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    sub_10010911C(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    sub_10000C8CC(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = sub_10056C8A8();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    sub_100009DCC(&qword_1006E6D88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    v14 = v7[3];
    sub_10000C8CC(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = sub_1000E0568(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    sub_100114BA8(inited + 32);
    sub_100572F08();
    *(v0 + 296) = sub_100572EF8();
    v20 = sub_100572E78();

    return _swift_task_switch(sub_100157BE8, v20, v19);
  }
}

uint64_t sub_100157BE8()
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

  sub_10000CC8C(v3, v4, &qword_1006E5D10);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 12293;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10);
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
  sub_10000CC8C(v7, v72, &qword_1006E6428);
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

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001036C(v20, &qword_1006E6428);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));

    sub_1001129E4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000CC8C(v23, v24, &qword_1006E6428);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    sub_10001036C(*(v0 + 128), &qword_1006E6428);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1001129E4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000CC8C(v30, v31, &qword_1006E6428);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    sub_10001036C(*(v0 + 120), &qword_1006E6428);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    sub_10000CC8C(v36 + v14[6], *(v0 + 176), &qword_1006E5D10);
    sub_1001129E4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  sub_100019B40(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &qword_1006E5D10);
  sub_10000CC8C(v37, v38, &qword_1006E6428);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    sub_10001036C(*(v0 + 112), &qword_1006E6428);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1001129E4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  sub_10000CC8C(v42, v43, &qword_1006E6428);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    sub_10001036C(v45, &qword_1006E6428);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1001129E4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    sub_10001036C(*(v0 + 96), &qword_1006E6428);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1001129E4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100019B40(v54, v55, &qword_1006E6428);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    sub_10001036C(v58, &qword_1006E6428);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1001129E4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_10010911C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
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
  sub_100109184(v65, v64, v63, v70, SBYTE1(v70));
  sub_1001129E4(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v68, &qword_1006E5D10);

  return _swift_task_switch(sub_10016F53C, 0, 0);
}

uint64_t sub_1001583A0()
{
  v2 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000116F0;

  return sub_1001576C0(v0 + v3, v0 + v4);
}

uint64_t static Actions.ShareLyrics.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 34;
  *(a2 + 56) = sub_1001024FC;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100588818;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100588820;
  *(a2 + 104) = 0;
}

uint64_t sub_100158554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 34;
  *(a2 + 56) = sub_1001024FC;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100588818;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100588820;
  *(a2 + 104) = 0;
}

uint64_t Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v15 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_100019B40(a6, v17 + v15, &qword_1006E6B80);
  result = sub_10002EA74(a1, v17 + v16);
  *a7 = a2;
  a7[1] = a3;
  a7[2] = a4;
  a7[3] = a5;
  a7[4] = &unk_100588830;
  a7[5] = v17;
  return result;
}

uint64_t sub_100158730(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_100009DCC(&qword_1006E6428);
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
  sub_100009DCC(&qword_1006E5D10);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_100158940, 0, 0);
}

uint64_t sub_100158940()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_10000CC8C(*(v0 + 72), v3, &qword_1006E6B80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 200), &qword_1006E6B80);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    sub_10010911C(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    sub_10000C8CC(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = sub_10056C8A8();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    sub_100009DCC(&qword_1006E6D88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    v14 = v7[3];
    sub_10000C8CC(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = sub_1000E0568(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    sub_100114BA8(inited + 32);
    sub_100572F08();
    *(v0 + 296) = sub_100572EF8();
    v20 = sub_100572E78();

    return _swift_task_switch(sub_100158C58, v20, v19);
  }
}

uint64_t sub_100158C58()
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

  sub_10000CC8C(v3, v4, &qword_1006E5D10);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 12805;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10);
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
  sub_10000CC8C(v7, v72, &qword_1006E6428);
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

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001036C(v20, &qword_1006E6428);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));

    sub_1001129E4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000CC8C(v23, v24, &qword_1006E6428);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    sub_10001036C(*(v0 + 128), &qword_1006E6428);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1001129E4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000CC8C(v30, v31, &qword_1006E6428);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    sub_10001036C(*(v0 + 120), &qword_1006E6428);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    sub_10000CC8C(v36 + v14[6], *(v0 + 176), &qword_1006E5D10);
    sub_1001129E4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  sub_100019B40(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &qword_1006E5D10);
  sub_10000CC8C(v37, v38, &qword_1006E6428);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    sub_10001036C(*(v0 + 112), &qword_1006E6428);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1001129E4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  sub_10000CC8C(v42, v43, &qword_1006E6428);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    sub_10001036C(v45, &qword_1006E6428);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1001129E4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    sub_10001036C(*(v0 + 96), &qword_1006E6428);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1001129E4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100019B40(v54, v55, &qword_1006E6428);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    sub_10001036C(v58, &qword_1006E6428);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1001129E4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_10010911C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
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
  sub_100109184(v65, v64, v63, v70, SBYTE1(v70));
  sub_1001129E4(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v68, &qword_1006E5D10);

  return _swift_task_switch(sub_10015940C, 0, 0);
}

uint64_t sub_10015940C()
{
  sub_1001129E4(*(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100159544()
{
  v1 = *(sub_100009DCC(&qword_1006E6B80) - 8);
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
      v9 = sub_10056C8A8();
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

  sub_100010474(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1001597A0()
{
  v2 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000CB98;

  return sub_100158730(v0 + v3, v0 + v4);
}

uint64_t Actions.ShareLyrics.Context.menuItemTitle.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

id sub_100159AC4()
{
  v0 = sub_100572898();
  v1 = [objc_opt_self() imageNamed:v0];

  return v1;
}

uint64_t ShareableMusicItem.failureMessage.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t ShareableMusicItem.shareURL.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100159D34, 0, 0);
}

uint64_t sub_100159D34()
{
  (*(v0[4] + 16))(v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100159DA8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100009DCC(&qword_1006E5D10);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100159E44, 0, 0);
}

uint64_t sub_100159E44()
{
  v1 = *(v0 + 24);
  v2 = **(v0 + 16);
  v3 = sub_10056C8A8();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v7 = 0;
  if (v5 != 1)
  {
    v8 = *(v0 + 24);
    sub_10056C7E8(v6);
    v7 = v9;
    (*(v4 + 8))(v8, v3);
  }

  [v2 setOriginalURL:v7];

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100159F9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10015A038, 0, 0);
}

uint64_t sub_10015A038()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_100571E68();
  v3 = sub_10056C8A8();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_10056C7E8(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10015A160(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10015A1FC, 0, 0);
}

uint64_t sub_10015A1FC()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_10056D988();
  v3 = sub_10056C8A8();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_10056C7E8(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10015A324(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10015A3C0, 0, 0);
}

uint64_t sub_10015A3C0()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_100571B88();
  v3 = sub_10056C8A8();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_10056C7E8(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10015A4E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10015A584, 0, 0);
}

uint64_t sub_10015A584()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_1005722E8();
  v3 = sub_10056C8A8();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_10056C7E8(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10015A6AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10015A748, 0, 0);
}

uint64_t sub_10015A748()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_1005718A8();
  v3 = sub_10056C8A8();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_10056C7E8(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10015A870(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10015A90C, 0, 0);
}

uint64_t sub_10015A90C()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_10056D9C8();
  v3 = sub_10056C8A8();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_10056C7E8(v5);
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
  sub_100009DCC(&qword_1006E5D10);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_10015AAD4, 0, 0);
}

uint64_t sub_10015AAD4()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = **(v0 + 16);
  v7 = (*(v1 + 24) + **(v1 + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_10015ABEC;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return v7(v3, v4, v5);
}

uint64_t sub_10015ABEC()
{

  return _swift_task_switch(sub_10015ACE8, 0, 0);
}

uint64_t sub_10015ACE8()
{
  v1 = *(v0 + 48);
  v2 = sub_10056C8A8();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 0;
  }

  else
  {
    sub_10056C7E8(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  [*(v0 + 56) setOriginalURL:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t Album.failureMessage.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Album.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100009DCC(&qword_1006E74C8);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6D78);
  v2[9] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E7630);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E7638);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10015B1F8, 0, 0);
}

uint64_t sub_10015B1F8()
{
  v1 = v0[16];
  sub_100571B38();
  v2 = sub_10056C8A8();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(v0[16], &qword_1006E5D10);
    v4 = sub_100571AC8();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_100571B78();
      sub_10016F414(&qword_1006E6DF0, &type metadata accessor for Album);

      sub_1005710E8();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_10015B498;
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

uint64_t sub_10015B498()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10015B7F8;
  }

  else
  {

    v2 = sub_10015B5B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015B5B4()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1005711F8();
  sub_100156080(&qword_1006E74C8, &qword_1006E7910, &type metadata accessor for Album, v2);
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
    sub_10001036C(v12, &qword_1006E6D78);
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
    sub_100571B38();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10015B7F8()
{
  v21 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E7618);

  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

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
    v7 = sub_1005713B8();
    v9 = v8;

    v10 = sub_1000C9784(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for album catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001036C(v5, &qword_1006E7640);

    sub_100010474(v6);

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
  v3 = sub_10056D8F8();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_10056D918();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[12] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E74C8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6D78);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = sub_100009DCC(&qword_1006E7630);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = sub_100009DCC(&qword_1006E7638);
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_10015BDCC, 0, 0);
}

uint64_t sub_10015BDCC()
{
  v1 = sub_100571AC8();
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
        *(v0 + 240) = sub_100571B78();
        sub_10016F414(&qword_1006E6DF0, &type metadata accessor for Album);

        sub_1005710E8();
        sub_100009DCC(&qword_1006E8B80);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_10057B4F0;
        sub_100009DCC(&qword_1006E6DE8);
        *(v9 + 32) = sub_100570CF8();
        sub_1005710D8();
        v10 = swift_task_alloc();
        *(v0 + 248) = v10;
        *v10 = v0;
        v10[1] = sub_10015C07C;
        v11 = *(v0 + 168);
        v12 = *(v0 + 176);

        return MusicCatalogResourceRequest.response()(v11, v12);
      }
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10015C07C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_10015C6FC;
  }

  else
  {

    v2 = sub_10015C198;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015C198()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  sub_1005711F8();
  sub_100156080(&qword_1006E74C8, &qword_1006E7910, &type metadata accessor for Album, v2);
  (*(v5 + 8))(v4, v6);
  sub_10000CC8C(v2, v3, &qword_1006E6D78);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 96);
    sub_10001036C(*(v0 + 136), &qword_1006E6D78);
    v10 = sub_10056C8A8();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 136);
    v14 = *(v0 + 96);
    sub_100571B38();
    (*(v7 + 8))(v13, v12);
    v15 = sub_10056C8A8();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 96);
      sub_10056C7E8(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 240);
  v21 = *(v0 + 144);
  v22 = *(v0 + 128);
  [*(v0 + 216) setOriginalURL:v11];

  sub_10000CC8C(v21, v22, &qword_1006E6D78);
  if (v8(v22, 1, v20) == 1)
  {
    sub_10001036C(*(v0 + 128), &qword_1006E6D78);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 128);
    v26 = sub_100571AB8();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v0 + 80);
        v29 = *(v0 + 56);
        sub_1000CC614(0, v27, 0);
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
          sub_10056D908();
          v36 = sub_10056D8E8();
          v38 = v37;
          (*v53)(v33, v35);
          (*v52)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_1000CC614((v39 > 1), v40 + 1, 1);
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

      isa = sub_100572D08().super.isa;
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

  sub_10001036C(v49, &qword_1006E6D78);
  (*(v48 + 8))(v46, v47);
  (*(v43 + 8))(v44, v45);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_10015C6FC()
{
  v22 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E7618);

  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

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
    v7 = sub_1005713B8();
    v9 = v8;

    v10 = sub_1000C9784(v7, v9, &v21);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL and offers for album catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001036C(v5, &qword_1006E7640);

    sub_100010474(v6);

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

uint64_t sub_10015C9F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return Album.shareURL.getter(a1);
}

uint64_t sub_10015CAA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return Album.augmentMetadata(_:)(a1);
}

uint64_t Artist.failureMessage.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Artist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100009DCC(&qword_1006E7648);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100009DCC(&qword_1006E7650);
  v2[9] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E7658);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E7660);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10015CF2C, 0, 0);
}

uint64_t sub_10015CF2C()
{
  v1 = v0[16];
  sub_100571CD8();
  v2 = sub_10056C8A8();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(v0[16], &qword_1006E5D10);
    v4 = sub_100571CB8();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_100571CF8();
      sub_10016F414(&qword_1006E7668, &type metadata accessor for Artist);

      sub_1005710E8();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_10015D1CC;
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

uint64_t sub_10015D1CC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10015D52C;
  }

  else
  {

    v2 = sub_10015D2E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015D2E8()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1005711F8();
  sub_100156080(&qword_1006E7648, &qword_1006E7908, &type metadata accessor for Artist, v2);
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
    sub_10001036C(v12, &qword_1006E7650);
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
    sub_100571CD8();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10015D52C()
{
  v21 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E7618);

  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

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
    v7 = sub_1005713B8();
    v9 = v8;

    v10 = sub_1000C9784(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for artist catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001036C(v5, &qword_1006E7640);

    sub_100010474(v6);

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

uint64_t sub_10015D810(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return Artist.shareURL.getter(a1);
}

uint64_t sub_10015D8C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10015D95C, 0, 0);
}

uint64_t sub_10015D95C()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10015D9FC;
  v2 = *(v0 + 32);

  return Artist.shareURL.getter(v2);
}

uint64_t sub_10015D9FC()
{

  return _swift_task_switch(sub_10016F55C, 0, 0);
}

uint64_t Composer.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10056C8A8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Composer.failureMessage.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10015DD68()
{
  v1 = *(v0 + 16);
  v2 = sub_10056C8A8();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10015DE1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_100159DA8(a1);
}

uint64_t Curator.failureMessage.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10015E0AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10015E0CC, 0, 0);
}

uint64_t sub_10015E0CC()
{
  sub_100571E68();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015E144(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_100159F9C(a1);
}

uint64_t sub_10015E1F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10015E214, 0, 0);
}

uint64_t sub_10015E214()
{
  sub_10056D988();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015E28C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_10015A160(a1);
}

uint64_t Genre.failureMessage.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10015E51C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10015E53C, 0, 0);
}

uint64_t sub_10015E53C()
{
  sub_100571B88();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015E5B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_10015A324(a1);
}

uint64_t MusicMovie.failureMessage.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t MusicMovie.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100009DCC(&qword_1006E7670);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100009DCC(&qword_1006E7678);
  v2[9] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E7680);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E7688);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10015EA4C, 0, 0);
}

uint64_t sub_10015EA4C()
{
  v1 = v0[16];
  sub_10056D8A8();
  v2 = sub_10056C8A8();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(v0[16], &qword_1006E5D10);
    v4 = sub_10056D8C8();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_10056D8D8();
      sub_10016F414(&qword_1006E7690, &type metadata accessor for MusicMovie);
      sub_10016F414(&qword_1006E7698, &type metadata accessor for MusicMovie);

      sub_1005710E8();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_10015ED20;
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

uint64_t sub_10015ED20()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10015F080;
  }

  else
  {

    v2 = sub_10015EE3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015EE3C()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1005711F8();
  sub_100156080(&qword_1006E7670, &qword_1006E7900, &type metadata accessor for MusicMovie, v2);
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
    sub_10001036C(v12, &qword_1006E7678);
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
    sub_10056D8A8();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10015F080()
{
  v21 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E7618);

  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

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
    v7 = sub_1005713B8();
    v9 = v8;

    v10 = sub_1000C9784(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for music movie catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001036C(v5, &qword_1006E7640);

    sub_100010474(v6);

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

uint64_t sub_10015F364(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return MusicMovie.shareURL.getter(a1);
}

uint64_t sub_10015F414(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10015F4B0, 0, 0);
}

uint64_t sub_10015F4B0()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10015D9FC;
  v2 = *(v0 + 32);

  return MusicMovie.shareURL.getter(v2);
}

uint64_t MusicVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100009DCC(&qword_1006E76A0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6DB8);
  v2[9] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E76A8);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E76B0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10015F760, 0, 0);
}

uint64_t sub_10015F760()
{
  v1 = v0[16];
  sub_100571378();
  v2 = sub_10056C8A8();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(v0[16], &qword_1006E5D10);
    v4 = sub_100571348();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1005713A8();
      sub_10016F414(&qword_1006E76B8, &type metadata accessor for MusicVideo);

      sub_1005710E8();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_10015FA00;
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

uint64_t sub_10015FA00()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10015FD60;
  }

  else
  {

    v2 = sub_10015FB1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015FB1C()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1005711F8();
  sub_100156080(&qword_1006E76A0, &qword_1006E78F8, &type metadata accessor for MusicVideo, v2);
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
    sub_10001036C(v12, &qword_1006E6DB8);
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
    sub_100571378();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10015FD60()
{
  v21 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E7618);

  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

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
    v7 = sub_1005713B8();
    v9 = v8;

    v10 = sub_1000C9784(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for music video catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001036C(v5, &qword_1006E7640);

    sub_100010474(v6);

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

uint64_t sub_10016005C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return MusicVideo.shareURL.getter(a1);
}

uint64_t sub_1001600F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100160190, 0, 0);
}

uint64_t sub_100160190()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10015D9FC;
  v2 = *(v0 + 32);

  return MusicVideo.shareURL.getter(v2);
}

uint64_t Playlist.failureMessage.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Playlist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100009DCC(&qword_1006E76C0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100009DCC(&qword_1006E8BE0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E76C8);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E76D0);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10016062C, 0, 0);
}

uint64_t sub_10016062C()
{
  v1 = v0[17];
  sub_1005721B8();
  v2 = sub_10056C8A8();
  v0[18] = v2;
  v3 = *(v2 - 8);
  v0[19] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(v0[17], &qword_1006E5D10);
    v4 = sub_100572158();
    v0[20] = v4;
    v0[21] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[22] = sub_1005722D8();
      sub_10016F414(&qword_1006E76D8, &type metadata accessor for Playlist);

      sub_1005710E8();
      v8 = swift_task_alloc();
      v0[23] = v8;
      *v8 = v0;
      v8[1] = sub_100160940;
      v9 = v0[13];
      v10 = v0[14];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    else
    {
      v13 = swift_task_alloc();
      v0[25] = v13;
      *v13 = v0;
      v13[1] = sub_100160CAC;
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

uint64_t sub_100160940()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100160F28;
  }

  else
  {

    v2 = sub_100160A5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100160A5C()
{
  v1 = v0[22];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1005711F8();
  sub_100156080(&qword_1006E76C0, &qword_1006E78F0, &type metadata accessor for Playlist, v2);
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
    sub_10001036C(v12, &qword_1006E8BE0);
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
    sub_1005721B8();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100160CAC()
{

  return _swift_task_switch(sub_100160DA8, 0, 0);
}

uint64_t sub_100160DA8()
{
  v1 = v0[9];
  v2 = sub_1005722D8();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[4];
    sub_10001036C(v1, &qword_1006E8BE0);
    (*(v5 + 56))(v6, 1, 1, v4);
  }

  else
  {
    sub_1005721B8();
    (*(v3 + 8))(v1, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100160F28()
{
  v21 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E7618);

  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

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
    v7 = sub_1005713B8();
    v9 = v8;

    v10 = sub_1000C9784(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for playlist catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001036C(v5, &qword_1006E7640);

    sub_100010474(v6);

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
  v3 = sub_1005722D8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E76E0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E76E8);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  sub_100009DCC(&qword_1006E76F0);
  v2[14] = swift_task_alloc();
  v6 = sub_100009DCC(&qword_1006E8C10);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100161444, 0, 0);
}

uint64_t sub_100161444()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = sub_100571E88();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_10056D7B8();
  sub_10001036C(v1, &qword_1006E76F0);
  (*(v3 + 104))(v2, enum case for MusicLibraryPlaylistRequest.CompletionPolicy.afterCloudLibraryChanges<A>(_:), v4);
  sub_10056D7A8();
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1001615C0;
  v7 = v0[10];

  return MusicLibraryPlaylistRequest.response<>()(v7);
}

uint64_t sub_1001615C0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1001617F4;
  }

  else
  {
    v2 = sub_1001616D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001616D4()
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
  sub_10056D7F8();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(v8 + 56))(v9, 0, 1, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001617F4()
{
  v30 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_10056DF88();
  sub_10000C49C(v5, qword_1006E7618);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = sub_10056DF68();
  v7 = sub_100573428();

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
    sub_10016F414(&qword_1006E8B60, &type metadata accessor for Playlist);
    v27 = v12;
    v28 = v10;
    v17 = sub_100574408();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_1000C9784(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v0[2] = v9;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v21 = sub_100572978();
    v23 = sub_1000C9784(v21, v22, &v29);

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

uint64_t sub_100161B3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return Playlist.shareURL.getter(a1);
}

uint64_t sub_100161BEC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100161C88, 0, 0);
}

uint64_t sub_100161C88()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10015D9FC;
  v2 = *(v0 + 32);

  return Playlist.shareURL.getter(v2);
}

uint64_t sub_100161D34(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100161D54, 0, 0);
}

uint64_t sub_100161D54()
{
  sub_1005722E8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100161DB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_10015A4E8(a1);
}

uint64_t RecordLabel.failureMessage.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100162044(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100162064, 0, 0);
}

uint64_t sub_100162064()
{
  sub_1005718A8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001620DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_10015A6AC(a1);
}

uint64_t SocialProfile.failureMessage.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10016236C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10016238C, 0, 0);
}

uint64_t sub_10016238C()
{
  sub_10056D9C8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100162404(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_10015A870(a1);
}

uint64_t Song.failureMessage.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Song.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100009DCC(&qword_1006E76F8);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6DC0);
  v2[9] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E7700);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E7708);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10016289C, 0, 0);
}

uint64_t sub_10016289C()
{
  v1 = v0[16];
  sub_100571A18();
  v2 = sub_10056C8A8();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(v0[16], &qword_1006E5D10);
    v4 = sub_100571998();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_100571A68();
      sub_10016F414(&qword_1006E7710, &type metadata accessor for Song);

      sub_1005710E8();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_100162B3C;
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

uint64_t sub_100162B3C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100162E9C;
  }

  else
  {

    v2 = sub_100162C58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100162C58()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1005711F8();
  sub_100156080(&qword_1006E76F8, &qword_1006E78E8, &type metadata accessor for Song, v2);
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
    sub_10001036C(v12, &qword_1006E6DC0);
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
    sub_100571A18();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100162E9C()
{
  v21 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E7618);

  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

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
    v7 = sub_1005713B8();
    v9 = v8;

    v10 = sub_1000C9784(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for song catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001036C(v5, &qword_1006E7640);

    sub_100010474(v6);

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

uint64_t sub_100163194@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000C8CC(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t Song.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1005718F8();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_10056D8F8();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_10056D918();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = sub_100009DCC(&qword_1006E76F8);
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6DC0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = sub_100009DCC(&qword_1006E7700);
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v8 = sub_100009DCC(&qword_1006E7708);
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_10016353C, 0, 0);
}

uint64_t sub_10016353C()
{
  v1 = sub_100571998();
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
        *(v0 + 280) = sub_100571A68();
        sub_10016F414(&qword_1006E7710, &type metadata accessor for Song);

        sub_1005710E8();
        sub_100009DCC(&qword_1006E8B80);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_10057B4F0;
        sub_100009DCC(&qword_1006E7718);
        *(v9 + 32) = sub_100570CE8();
        sub_1005710D8();
        v10 = swift_task_alloc();
        *(v0 + 288) = v10;
        *v10 = v0;
        v10[1] = sub_100163820;
        v11 = *(v0 + 208);
        v12 = *(v0 + 216);

        return MusicCatalogResourceRequest.response()(v11, v12);
      }
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100163820()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1001640CC;
  }

  else
  {

    v2 = sub_10016393C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016393C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  v3 = *(v0 + 176);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  sub_1005711F8();
  sub_100156080(&qword_1006E76F8, &qword_1006E78E8, &type metadata accessor for Song, v2);
  (*(v5 + 8))(v4, v6);
  sub_10000CC8C(v2, v3, &qword_1006E6DC0);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 128);
    sub_10001036C(*(v0 + 176), &qword_1006E6DC0);
    v10 = sub_10056C8A8();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 280);
    v13 = *(v0 + 176);
    v14 = *(v0 + 128);
    sub_100571A18();
    (*(v7 + 8))(v13, v12);
    v15 = sub_10056C8A8();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 128);
      sub_10056C7E8(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 280);
  v21 = *(v0 + 184);
  v22 = *(v0 + 168);
  [*(v0 + 256) setOriginalURL:v11];

  sub_10000CC8C(v21, v22, &qword_1006E6DC0);
  if (v8(v22, 1, v20) == 1)
  {
    sub_10001036C(*(v0 + 168), &qword_1006E6DC0);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 168);
    v26 = sub_100571988();
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
        sub_1000CC614(0, v27, 0);
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
          sub_10056D908();
          v36 = sub_10056D8E8();
          v38 = v37;
          (*v74)(v33, v35);
          (*v73)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_1000CC614((v39 > 1), v40 + 1, 1);
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

      isa = sub_100572D08().super.isa;
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

  sub_10000CC8C(v43, v44, &qword_1006E6DC0);
  if (v8(v44, 1, v42) == 1)
  {
    sub_10001036C(*(v0 + 160), &qword_1006E6DC0);
LABEL_24:
    v58 = *(v0 + 120);
    v59 = sub_10056C8A8();
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    v55 = 0;
    goto LABEL_25;
  }

  v45 = *(v0 + 280);
  v46 = *(v0 + 160);
  v47 = sub_1005719E8();
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

  sub_1005718E8();
  (*(v50 + 8))(v49, v51);
  v52 = sub_10056C8A8();
  v53 = *(v52 - 8);
  v55 = 0;
  if ((*(v53 + 48))(v48, 1, v52) != 1)
  {
    v56 = *(v0 + 120);
    sub_10056C7E8(v54);
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

  sub_10001036C(v67, &qword_1006E6DC0);
  (*(v66 + 8))(v64, v65);
  (*(v61 + 8))(v62, v63);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1001640CC()
{
  v22 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E7618);

  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

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
    v7 = sub_1005713B8();
    v9 = v8;

    v10 = sub_1000C9784(v7, v9, &v21);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL and offers for song catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001036C(v5, &qword_1006E7640);

    sub_100010474(v6);

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

uint64_t sub_1001643F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return Song.shareURL.getter(a1);
}

uint64_t sub_1001644A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return Song.augmentMetadata(_:)(a1);
}

uint64_t Station.failureMessage.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Station.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100009DCC(&qword_1006E7720);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100009DCC(&unk_1006EB0A0);
  v2[9] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E7728);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E7730);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100164928, 0, 0);
}

uint64_t sub_100164928()
{
  v1 = v0[16];
  sub_100571ED8();
  v2 = sub_10056C8A8();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(v0[16], &qword_1006E5D10);
    v4 = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
    v6 = v5;
    v0[19] = v4;
    v0[20] = v5;
    swift_getKeyPath();
    v0[2] = v4;
    v0[3] = v6;
    v0[21] = sub_100571F08();
    sub_10016F414(&qword_1006E7738, &type metadata accessor for Station);

    sub_1005710E8();
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_100164BAC;
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

uint64_t sub_100164BAC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100164F0C;
  }

  else
  {

    v2 = sub_100164CC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100164CC8()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1005711F8();
  sub_100156080(&qword_1006E7720, &qword_1006E78E0, &type metadata accessor for Station, v2);
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
    sub_10001036C(v12, &unk_1006EB0A0);
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
    sub_100571ED8();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100164F0C()
{
  v21 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E7618);

  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

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
    v7 = sub_1005713B8();
    v9 = v8;

    v10 = sub_1000C9784(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for station catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001036C(v5, &qword_1006E7640);

    sub_100010474(v6);

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

uint64_t sub_1001651F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return Station.shareURL.getter(a1);
}

uint64_t sub_1001652A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10016533C, 0, 0);
}

uint64_t sub_10016533C()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10015D9FC;
  v2 = *(v0 + 32);

  return Station.shareURL.getter(v2);
}

uint64_t Track.failureMessage.getter()
{
  v1 = sub_10056CC38();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v17[-v7];
  v9 = sub_100571C48();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v12, v0, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for Track.song(_:) || v13 == enum case for Track.musicVideo(_:))
  {
    (*(v10 + 8))(v12, v9);
    sub_100572818();
    (*(v3 + 16))(v6, v8, v2);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v14 = qword_1006FC3B8;
    sub_10056CBC8();
    v15 = sub_100572948();
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
  v3 = sub_100571A68();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1005713A8();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_100571C48();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10016589C, 0, 0);
}

uint64_t sub_10016589C()
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
    v9[1] = sub_100165CD8;
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
    v16[1] = sub_100165B44;
    v17 = v0[2];

    return MusicVideo.shareURL.getter(v17);
  }

  else
  {
    v18 = v0[2];
    v19 = sub_10056C8A8();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    (*(v0[11] + 8))(v0[12], v0[10]);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100165B44()
{

  return _swift_task_switch(sub_100165C40, 0, 0);
}

uint64_t sub_100165C40()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100165CD8()
{

  return _swift_task_switch(sub_100165DD4, 0, 0);
}

uint64_t sub_100165DD4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100165E74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return Track.shareURL.getter(a1);
}

uint64_t sub_100165F10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100165FAC, 0, 0);
}

uint64_t sub_100165FAC()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10015D9FC;
  v2 = *(v0 + 32);

  return Track.shareURL.getter(v2);
}

uint64_t TVEpisode.failureMessage.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVEpisode.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100009DCC(&qword_1006E7740);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100009DCC(&qword_1006E7748);
  v2[9] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E7750);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E7758);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10016643C, 0, 0);
}

uint64_t sub_10016643C()
{
  v1 = v0[16];
  sub_10056DB98();
  v2 = sub_10056C8A8();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(v0[16], &qword_1006E5D10);
    v4 = sub_10056DBB8();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_10056DBC8();
      sub_10016F414(&qword_1006E7760, &type metadata accessor for TVEpisode);
      sub_10016F414(&qword_1006E7768, &type metadata accessor for TVEpisode);

      sub_1005710E8();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_100166710;
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

uint64_t sub_100166710()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100166A70;
  }

  else
  {

    v2 = sub_10016682C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016682C()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1005711F8();
  sub_100156080(&qword_1006E7740, &qword_1006E78D8, &type metadata accessor for TVEpisode, v2);
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
    sub_10001036C(v12, &qword_1006E7748);
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
    sub_10056DB98();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100166A70()
{
  v21 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E7618);

  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

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
    v7 = sub_1005713B8();
    v9 = v8;

    v10 = sub_1000C9784(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVEpisode catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001036C(v5, &qword_1006E7640);

    sub_100010474(v6);

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

uint64_t sub_100166D54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return TVEpisode.shareURL.getter(a1);
}

uint64_t sub_100166E04(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100166EA0, 0, 0);
}

uint64_t sub_100166EA0()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10015D9FC;
  v2 = *(v0 + 32);

  return TVEpisode.shareURL.getter(v2);
}

uint64_t TVSeason.failureMessage.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVSeason.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100009DCC(&qword_1006E7770);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100009DCC(&qword_1006E7778);
  v2[9] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E7780);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E7788);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100167330, 0, 0);
}

uint64_t sub_100167330()
{
  v1 = v0[16];
  sub_10056DB38();
  v2 = sub_10056C8A8();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(v0[16], &qword_1006E5D10);
    v4 = sub_10056DB58();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_10056DB68();
      sub_10016F414(&qword_1006E7790, &type metadata accessor for TVSeason);
      sub_10016F414(&qword_1006E7798, &type metadata accessor for TVSeason);

      sub_1005710E8();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_100167604;
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

uint64_t sub_100167604()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100167964;
  }

  else
  {

    v2 = sub_100167720;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100167720()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1005711F8();
  sub_100156080(&qword_1006E7770, &qword_1006E78D0, &type metadata accessor for TVSeason, v2);
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
    sub_10001036C(v12, &qword_1006E7778);
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
    sub_10056DB38();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100167964()
{
  v21 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E7618);

  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

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
    v7 = sub_1005713B8();
    v9 = v8;

    v10 = sub_1000C9784(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVSeason catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001036C(v5, &qword_1006E7640);

    sub_100010474(v6);

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

uint64_t sub_100167C48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return TVSeason.shareURL.getter(a1);
}

uint64_t sub_100167CF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100167D94, 0, 0);
}

uint64_t sub_100167D94()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10015D9FC;
  v2 = *(v0 + 32);

  return TVSeason.shareURL.getter(v2);
}

uint64_t sub_100167E3C()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVShow.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100009DCC(&qword_1006E77A0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100009DCC(&qword_1006E77A8);
  v2[9] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E77B0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E77B8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100168228, 0, 0);
}

uint64_t sub_100168228()
{
  v1 = v0[16];
  sub_10056DAD8();
  v2 = sub_10056C8A8();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(v0[16], &qword_1006E5D10);
    v4 = sub_10056DAF8();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_10056DB08();
      sub_10016F414(&qword_1006E77C0, &type metadata accessor for TVShow);
      sub_10016F414(&qword_1006E77C8, &type metadata accessor for TVShow);

      sub_1005710E8();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1001684FC;
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

uint64_t sub_1001684FC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10016885C;
  }

  else
  {

    v2 = sub_100168618;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100168618()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1005711F8();
  sub_100156080(&qword_1006E77A0, &qword_1006E78C8, &type metadata accessor for TVShow, v2);
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
    sub_10001036C(v12, &qword_1006E77A8);
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
    sub_10056DAD8();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10016885C()
{
  v21 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E7618);

  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

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
    v7 = sub_1005713B8();
    v9 = v8;

    v10 = sub_1000C9784(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVShow catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001036C(v5, &qword_1006E7640);

    sub_100010474(v6);

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

uint64_t sub_100168B40(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return TVShow.shareURL.getter(a1);
}

uint64_t sub_100168BF0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100168C8C, 0, 0);
}

uint64_t sub_100168C8C()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10015D9FC;
  v2 = *(v0 + 32);

  return TVShow.shareURL.getter(v2);
}

uint64_t UploadedAudio.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100009DCC(&qword_1006E77D0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100009DCC(&qword_1006E77D8);
  v2[9] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E77E0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E77E8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100168F3C, 0, 0);
}

uint64_t sub_100168F3C()
{
  v1 = v0[16];
  _s16MusicKitInternal13UploadedAudioV0A4CoreE3url10Foundation3URLVSgvg_0();
  v2 = sub_10056C8A8();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(v0[16], &qword_1006E5D10);
    v4 = sub_10056DA28();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_10056DA38();
      sub_10016F414(&qword_1006E77F0, &type metadata accessor for UploadedAudio);
      sub_10016F414(&qword_1006E77F8, &type metadata accessor for UploadedAudio);

      sub_1005710E8();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_100169210;
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

uint64_t sub_100169210()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100169570;
  }

  else
  {

    v2 = sub_10016932C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016932C()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1005711F8();
  sub_100156080(&qword_1006E77D0, &qword_1006E78C0, &type metadata accessor for UploadedAudio, v2);
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
    sub_10001036C(v12, &qword_1006E77D8);
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

uint64_t sub_100169570()
{
  v21 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E7618);

  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

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
    v7 = sub_1005713B8();
    v9 = v8;

    v10 = sub_1000C9784(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for uploaded audio catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001036C(v5, &qword_1006E7640);

    sub_100010474(v6);

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

uint64_t sub_100169854(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return UploadedAudio.shareURL.getter(a1);
}

uint64_t sub_1001698EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100169988, 0, 0);
}

uint64_t sub_100169988()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10015D9FC;
  v2 = *(v0 + 32);

  return UploadedAudio.shareURL.getter(v2);
}

uint64_t sub_100169A30()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t UploadedVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100009DCC(&qword_1006E7800);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100009DCC(&qword_1006E7808);
  v2[9] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E7810);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E7818);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100169E1C, 0, 0);
}

uint64_t sub_100169E1C()
{
  v1 = v0[16];
  _s16MusicKitInternal13UploadedVideoV0A4CoreE3url10Foundation3URLVSgvg_0();
  v2 = sub_10056C8A8();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(v0[16], &qword_1006E5D10);
    v4 = sub_10056DA78();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_10056DA88();
      sub_10016F414(&qword_1006E7820, &type metadata accessor for UploadedVideo);
      sub_10016F414(&qword_1006E7828, &type metadata accessor for UploadedVideo);

      sub_1005710E8();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_10016A0F0;
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

uint64_t sub_10016A0F0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10016A450;
  }

  else
  {

    v2 = sub_10016A20C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016A20C()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1005711F8();
  sub_100156080(&qword_1006E7800, &qword_1006E78B8, &type metadata accessor for UploadedVideo, v2);
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
    sub_10001036C(v12, &qword_1006E7808);
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

uint64_t sub_10016A450()
{
  v21 = v0;
  if (qword_1006E4C80 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E7618);

  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

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
    v7 = sub_1005713B8();
    v9 = v8;

    v10 = sub_1000C9784(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for uploaded video catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_10001036C(v5, &qword_1006E7640);

    sub_100010474(v6);

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

uint64_t sub_10016A734(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return UploadedVideo.shareURL.getter(a1);
}

uint64_t sub_10016A7E4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10016A880, 0, 0);
}

uint64_t sub_10016A880()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10015D9FC;
  v2 = *(v0 + 32);

  return UploadedVideo.shareURL.getter(v2);
}

uint64_t GenericMusicItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v54 = sub_10056DA88();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10056DA38();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10056DB08();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10056DB68();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10056DBC8();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100571F08();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100571A68();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10056D9E8();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1005718C8();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100572308();
  v80 = *(v10 - 8);
  v81 = v10;
  __chkstk_darwin(v10);
  v79 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005722D8();
  v83 = *(v12 - 8);
  v84 = v12;
  __chkstk_darwin(v12);
  v82 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005713A8();
  v86 = *(v14 - 8);
  v87 = v14;
  __chkstk_darwin(v14);
  v85 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10056D8D8();
  v89 = *(v16 - 8);
  v90 = v16;
  __chkstk_darwin(v16);
  v88 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100571BA8();
  v92 = *(v18 - 8);
  v93 = v18;
  __chkstk_darwin(v18);
  v91 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10056D9A8();
  v95 = *(v20 - 8);
  v96 = v20;
  __chkstk_darwin(v20);
  v94 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100571E88();
  v97 = *(v22 - 8);
  v98 = v22;
  __chkstk_darwin(v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100571CF8();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100571B78();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10056D438();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v36, v99, v33);
  v37 = (*(v34 + 88))(v36, v33);
  if (v37 == enum case for GenericMusicItem.album(_:))
  {
    (*(v34 + 96))(v36, v33);
    (*(v30 + 32))(v32, v36, v29);
    sub_100571B38();
    return (*(v30 + 8))(v32, v29);
  }

  v39 = v100;
  if (v37 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v34 + 96))(v36, v33);
    (*(v26 + 32))(v28, v36, v25);
    sub_100571CD8();
    return (*(v26 + 8))(v28, v25);
  }

  if (v37 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v34 + 8))(v36, v33);
    v40 = sub_10056C8A8();
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
    sub_100571E68();
    return (*(v44 + 8))(v24, v43);
  }

  if (v37 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v94;
    v46 = v95;
    v47 = v96;
    (*(v95 + 32))(v94, v36, v96);
    sub_10056D988();
  }

  else if (v37 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v91;
    v46 = v92;
    v47 = v93;
    (*(v92 + 32))(v91, v36, v93);
    sub_100571B88();
  }

  else if (v37 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v88;
    v46 = v89;
    v47 = v90;
    (*(v89 + 32))(v88, v36, v90);
    sub_10056D8A8();
  }

  else if (v37 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v85;
    v46 = v86;
    v47 = v87;
    (*(v86 + 32))(v85, v36, v87);
    sub_100571378();
  }

  else if (v37 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v82;
    v46 = v83;
    v47 = v84;
    (*(v83 + 32))(v82, v36, v84);
    sub_1005721B8();
  }

  else
  {
    if (v37 == enum case for GenericMusicItem.playlistFolder(_:))
    {
LABEL_8:
      (*(v34 + 8))(v36, v33);
      v42 = sub_10056C8A8();
      return (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
    }

    if (v37 == enum case for GenericMusicItem.radioShow(_:))
    {
      (*(v34 + 96))(v36, v33);
      v46 = v80;
      v47 = v81;
      v45 = v79;
      (*(v80 + 32))(v79, v36, v81);
      sub_1005722E8();
    }

    else if (v37 == enum case for GenericMusicItem.recordLabel(_:))
    {
      (*(v34 + 96))(v36, v33);
      v46 = v77;
      v45 = v76;
      v47 = v78;
      (*(v77 + 32))(v76, v36, v78);
      sub_1005718A8();
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
          sub_100571A18();
        }

        else if (v37 == enum case for GenericMusicItem.station(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v68;
          v49 = v67;
          v50 = v69;
          (*(v68 + 32))(v67, v36, v69);
          sub_100571ED8();
        }

        else if (v37 == enum case for GenericMusicItem.tvEpisode(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v65;
          v49 = v64;
          v50 = v66;
          (*(v65 + 32))(v64, v36, v66);
          sub_10056DB98();
        }

        else if (v37 == enum case for GenericMusicItem.tvSeason(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v62;
          v49 = v61;
          v50 = v63;
          (*(v62 + 32))(v61, v36, v63);
          sub_10056DB38();
        }

        else if (v37 == enum case for GenericMusicItem.tvShow(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v59;
          v49 = v58;
          v50 = v60;
          (*(v59 + 32))(v58, v36, v60);
          sub_10056DAD8();
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
              v51 = sub_10056C8A8();
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
      sub_10056D9C8();
    }
  }

  return (*(v46 + 8))(v45, v47);
}