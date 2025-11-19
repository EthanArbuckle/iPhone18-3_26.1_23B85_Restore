uint64_t _s12SortPlaylistO13TrackListSortV6OptionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000A3834()
{
  result = qword_100636158;
  if (!qword_100636158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636158);
  }

  return result;
}

unint64_t sub_1000A388C()
{
  result = qword_100636160;
  if (!qword_100636160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636160);
  }

  return result;
}

unint64_t sub_1000A38E4()
{
  result = qword_100636168;
  if (!qword_100636168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636168);
  }

  return result;
}

unint64_t sub_1000A3938()
{
  result = qword_100636170;
  if (!qword_100636170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636170);
  }

  return result;
}

unint64_t sub_1000A398C()
{
  result = qword_100636180;
  if (!qword_100636180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636180);
  }

  return result;
}

unint64_t sub_1000A39E0()
{
  result = qword_1006372A0;
  if (!qword_1006372A0)
  {
    sub_1004DCEEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006372A0);
  }

  return result;
}

uint64_t sub_1000A3A84(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 32) + **(a2 + 32));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100035C88;

  return v5();
}

uint64_t sub_1000A3B6C(uint64_t a1)
{
  v4 = (*(a1 + 48) + **(a1 + 48));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return v4();
}

uint64_t sub_1000A3CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_100004CB8(&qword_100635248);
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
  sub_100004CB8(&qword_100634B30);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000A3EF0, 0, 0);
}

uint64_t sub_1000A3EF0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_1000108DC(*(v0 + 96), v3, &qword_1006359A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 240), &qword_1006359A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_1000ABB8C(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = sub_1004D809C();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100004CB8(&qword_100635BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1005126C0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 3;
    *(v0 + 312) = sub_10004B4B4(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1004DDA4C();
    *(v0 + 336) = sub_1004DDA3C();
    v18 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000A41F4, v18, v17);
  }
}

uint64_t sub_1000A41F4()
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
  *(v6 + 16) = 14597;
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
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
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

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 168), &qword_100635248);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10007DB18(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_10001074C(*(v0 + 160), &qword_100635248);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_1000108DC(v36 + v14[6], *(v0 + 216), &qword_100634B30);
    sub_10007DB18(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_100047F38(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_100634B30);
  sub_1000108DC(v37, v38, &qword_100635248);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 152), &qword_100635248);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10007DB18(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
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

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 136), &qword_100635248);
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

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
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

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000ABB8C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
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
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_10007DB18(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30);

  return _swift_task_switch(sub_1000ABBF4, 0, 0);
}

uint64_t sub_1000A49B0()
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

  return sub_1000A3CDC(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_1000A4BC0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  if (sub_1004DC73C())
  {
    v8 = enum case for MusicPropertySource.library(_:);
    v9 = sub_1004DC14C();
    v17 = *(v9 - 8);
    (*(v17 + 104))(a4, v8, v9);
    v10 = *(v17 + 56);

    return v10(a4, 0, 1, v9);
  }

  else
  {
    v28 = a1(0);
    v29 = a2;
    sub_1000357EC(v27);
    sub_1004DC71C();
    sub_100008C70(v27, v28);
    a3();
    if (!v12)
    {
      goto LABEL_10;
    }

    if (qword_100633B60 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v26[4] = v22;
    v26[5] = v23;
    v26[6] = v24;
    v26[7] = v25;
    v26[0] = v18;
    v26[1] = v19;
    v26[2] = v20;
    v26[3] = v21;
    sub_100073E60(v26);
    if (BYTE1(v26[0]) == 1)
    {
      v13 = enum case for MusicPropertySource.catalog(_:);
      v14 = sub_1004DC14C();
      v15 = *(v14 - 8);
      (*(v15 + 104))(a4, v13, v14);
      (*(v15 + 56))(a4, 0, 1, v14);
      return sub_100008D24(v27);
    }

    else
    {
LABEL_10:
      sub_100008D24(v27);
      v16 = sub_1004DC14C();
      return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
    }
  }
}

uint64_t MusicLibrary.ItemState.containerLoadingSource.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __chkstk_darwin(a1);
  if (sub_1004DC73C())
  {
    v3 = enum case for MusicPropertySource.library(_:);
    v4 = sub_1004DC14C();
    v14 = *(v4 - 8);
    (*(v14 + 104))(a2, v3, v4);
    v5 = *(v14 + 56);

    return v5(a2, 0, 1, v4);
  }

  else
  {
    sub_1004DC71C();
    sub_100004CB8(&qword_100635268);
    if (swift_dynamicCast())
    {
      sub_100035850(&v23, v31);
      v7 = v32;
      v8 = v33;
      sub_100008C70(v31, v32);
      (*(v8 + 8))(v7, v8);
      if (v9)
      {

        if (qword_100633B60 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1004D9B6C();

        v27 = v19;
        v28 = v20;
        v29 = v21;
        v30 = v22;
        v23 = v15;
        v24 = v16;
        v25 = v17;
        v26 = v18;
        sub_100073E60(&v23);
        if (BYTE1(v23) == 1)
        {
          v10 = enum case for MusicPropertySource.catalog(_:);
          v11 = sub_1004DC14C();
          v12 = *(v11 - 8);
          (*(v12 + 104))(a2, v10, v11);
          (*(v12 + 56))(a2, 0, 1, v11);
          return sub_100008D24(v31);
        }
      }

      sub_100008D24(v31);
    }

    else
    {
      *&v25 = 0;
      v23 = 0u;
      v24 = 0u;
      sub_10001074C(&v23, &unk_10063AC70);
    }

    v13 = sub_1004DC14C();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t MusicVideo.supportsContainerNavigation(itemState:)()
{
  v0 = sub_100004CB8(&qword_100636190);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_1000A4BC0(&type metadata accessor for MusicVideo, &protocol witness table for MusicVideo, &MusicVideo.catalogID.getter, &v7 - v1);
  v3 = sub_1004DC14C();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_10001074C(v2, &qword_100636190);
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1000A539C();
  }

  return v5 & 1;
}

uint64_t sub_1000A539C()
{
  v0 = sub_100004CB8(&qword_1006362E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_100004CB8(&qword_100635B98);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_1004DCA0C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DC2BC();
  v10 = sub_100004CB8(&qword_1006362E8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v2, 1, v10) == 1)
  {
    sub_10001074C(v2, &qword_1006362E0);
    (*(v7 + 56))(v5, 1, 1, v6);
LABEL_4:
    sub_10001074C(v5, &qword_100635B98);
    goto LABEL_5;
  }

  sub_1000C12E8(v5);
  (*(v11 + 8))(v2, v10);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  (*(v7 + 32))(v9, v5, v6);
  v14 = sub_1004DC96C();
  (*(v7 + 8))(v9, v6);
  if (v14 != 2)
  {
    v12 = v14 ^ 1;
    return v12 & 1;
  }

LABEL_5:
  v12 = 0;
  return v12 & 1;
}

uint64_t Track.supportsContainerNavigation(itemState:)()
{
  v0 = sub_1004DCAAC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DC2DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_100636190);
  __chkstk_darwin(v8 - 8);
  v10 = v15 - v9;
  sub_1000A4BC0(&type metadata accessor for Track, &protocol witness table for Track, &Track.catalogID.getter, v15 - v9);
  v11 = sub_1004DC14C();
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  sub_10001074C(v10, &qword_100636190);
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    (*(v1 + 16))(v3, v15[1], v0);
    if ((*(v1 + 88))(v3, v0) == enum case for Track.musicVideo(_:))
    {
      (*(v1 + 96))(v3, v0);
      (*(v5 + 32))(v7, v3, v4);
      v13 = sub_1000A539C();
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v13 = 1;
    }
  }

  return v13 & 1;
}

BOOL sub_1000A5980(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v7 = sub_100004CB8(&qword_100636190);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  sub_1000A4BC0(a2, a3, a4, &v13 - v8);
  v10 = sub_1004DC14C();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) != 1;
  sub_10001074C(v9, &qword_100636190);
  return v11;
}

uint64_t Playlist.Entry.supportsContainerNavigation(itemState:)()
{
  v0 = sub_100004CB8(&qword_100636198);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_1004DC2DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&qword_100636190);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  sub_1000A4BC0(&type metadata accessor for Playlist.Entry, &protocol witness table for Playlist.Entry, &Playlist.Entry.catalogID.getter, &v16 - v8);
  v10 = sub_1004DC14C();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_10001074C(v9, &qword_100636190);
  if (v11 != 1)
  {
    sub_1004DCFFC();
    v13 = sub_1004DCFEC();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v2, 1, v13) == 1)
    {
      sub_10001074C(v2, &qword_100636198);
    }

    else
    {
      if ((*(v14 + 88))(v2, v13) == enum case for Playlist.Entry.Item.musicVideo(_:))
      {
        (*(v14 + 96))(v2, v13);
        (*(v4 + 32))(v6, v2, v3);
        v12 = sub_1000A539C();
        (*(v4 + 8))(v6, v3);
        return v12 & 1;
      }

      (*(v14 + 8))(v2, v13);
    }

    v12 = 1;
    return v12 & 1;
  }

  v12 = 0;
  return v12 & 1;
}

int *static Actions.GoToPlaylistFolderItem.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004DCEBC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Actions.GoToPlaylistFolderItem.Context();
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AABA4(a1, v10);
  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) == enum case for Playlist.Folder.Item.folder(_:))
  {
    v11 = 29;
  }

  else
  {
    v11 = 28;
  }

  (*(v5 + 8))(v7, v4);
  sub_1000ABB8C(v10, a2, type metadata accessor for Actions.GoToPlaylistFolderItem.Context);
  result = sub_100004CB8(&qword_1006361A0);
  *(a2 + result[9]) = v11;
  *(a2 + result[11]) = 0x4014000000000000;
  v13 = (a2 + result[10]);
  *v13 = sub_1000A5FBC;
  v13[1] = 0;
  v14 = (a2 + result[12]);
  *v14 = &unk_100518388;
  v14[1] = 0;
  v15 = (a2 + result[13]);
  *v15 = &unk_100518390;
  v15[1] = 0;
  return result;
}

uint64_t sub_1000A6018()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.GoToPlaylistFolderItem.Context() + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10007F594;

  return v5();
}

uint64_t sub_1000A6134()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.GoToPlaylistFolderItem.Context() + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10007FD30;

  return v5();
}

int *Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_100047F38(a7, v16 + v14, &qword_1006359A0);
  sub_100035850(a1, v16 + v15);
  v17 = sub_1004DCEBC();
  (*(*(v17 - 8) + 32))(a8, a2, v17);
  result = type metadata accessor for Actions.GoToPlaylistFolderItem.Context();
  v19 = (a8 + result[5]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a8 + result[6]);
  *v20 = a5;
  v20[1] = a6;
  v21 = (a8 + result[7]);
  *v21 = &unk_1005183A8;
  v21[1] = v16;
  return result;
}

uint64_t sub_1000A63C0(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_100004CB8(&qword_100635248);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MetricsEvent.Click(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000A65D0, 0, 0);
}

uint64_t sub_1000A65D0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_1000108DC(*(v0 + 96), v3, &qword_1006359A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 224), &qword_1006359A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 104);
    sub_1000ABB8C(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    sub_100008C70(v7, v8);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 264) = v9;
    v10 = sub_1004D809C();
    *(v0 + 272) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 280) = v12;
    *(v0 + 288) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    sub_100004CB8(&qword_100635BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1005126C0;
    v14 = v7[3];
    sub_100008C70(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_1005127B0;
    *(inited + 72) = 3;
    *(v0 + 296) = sub_10004B4B4(inited);
    *(v0 + 304) = v16;
    *(v0 + 312) = v17;
    *(v0 + 328) = v18;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1004DDA4C();
    *(v0 + 320) = sub_1004DDA3C();
    v20 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000A6908, v20, v19);
  }
}

uint64_t sub_1000A6908()
{
  v80 = *(v0 + 328);
  v73 = *(v0 + 296);
  v76 = *(v0 + 264);
  v78 = *(v0 + 312);
  v74 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v72 = *(v0 + 160);

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
  *(v6 + 16) = 15365;
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
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);
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

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 152), &qword_100635248);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10007DB18(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    sub_10001074C(*(v0 + 144), &qword_100635248);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    sub_1000108DC(v36 + v14[6], *(v0 + 200), &qword_100634B30);
    sub_10007DB18(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  sub_100047F38(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_100634B30);
  sub_1000108DC(v37, v38, &qword_100635248);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 136), &qword_100635248);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10007DB18(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
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

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 120), &qword_100635248);
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

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
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

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000ABB8C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  v68 = *(v0 + 216);
  v69 = *(v0 + 192);
  v70 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_10007DB18(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30);

  return _swift_task_switch(sub_10007CE00, 0, 0);
}

uint64_t Actions.GoToPlaylistFolderItem.Context.menuItemTitle.getter()
{
  v1 = v0;
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_1004DCEBC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v1, v10);
  v14 = (v4 + 16);
  if ((*(v11 + 88))(v13, v10) == enum case for Playlist.Folder.Item.folder(_:))
  {
    sub_1004DD37C();
    (*v14)(v7, v9, v3);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v15 = qword_100671958;
    sub_1004D838C();
    v16 = sub_1004DD4AC();
  }

  else
  {
    v21 = v4;
    sub_1004DD37C();
    v17 = *v14;
    v22 = v3;
    v17(v7, v9, v3);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v18 = qword_100671958;
    sub_1004D838C();
    v16 = sub_1004DD4AC();
    v4 = v21;
    v3 = v22;
  }

  (*(v4 + 8))(v9, v3);
  (*(v11 + 8))(v13, v10);
  return v16;
}

uint64_t sub_1000A7594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(sub_1000A77A8, 0, 0);
}

uint64_t sub_1000A77A8()
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
    sub_1000ABB8C(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
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

    return _swift_task_switch(sub_1000A7A94, v18, v17);
  }
}

uint64_t sub_1000A7A94()
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
  *(v6 + 16) = 15109;
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

    sub_10007DB18(v20, type metadata accessor for MetricsEvent.Page);
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

    sub_10007DB18(v27, type metadata accessor for MetricsEvent.Page);
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
    sub_10007DB18(v36, type metadata accessor for MetricsEvent.Page);
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

    sub_10007DB18(v40, type metadata accessor for MetricsEvent.Page);
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
    sub_10007DB18(v45, type metadata accessor for MetricsEvent.Page);
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

    sub_10007DB18(v50, type metadata accessor for MetricsEvent.Page);
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
    sub_10007DB18(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000ABB8C(v60, v61, type metadata accessor for MetricsEvent.Click);
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
  sub_10007DB18(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30);

  return _swift_task_switch(sub_1000ABBF8, 0, 0);
}

uint64_t (*Actions.ShowSongCredits.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E6F666E69;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E6F666E69;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_100073BEC;
}

uint64_t sub_1000A830C()
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

uint64_t (*sub_1000A84F0())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E6F666E69;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E6F666E69;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_10007455C;
}

__n128 sub_1000A85D8@<Q0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v16 = *a1;
  sub_1000108DC(&v16, &v15, &unk_100639EB0);

  v12 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v12;
  result = a1[2];
  v14 = a1[3];
  *(a6 + 32) = result;
  *(a6 + 48) = v14;
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0x4014000000000000;
  *(a6 + 96) = a4;
  *(a6 + 104) = 0;
  *(a6 + 112) = a5;
  *(a6 + 120) = 0;
  return result;
}

uint64_t sub_1000A86CC(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 32) + **(a2 + 32));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100035B28;

  return v5();
}

uint64_t sub_1000A87F8@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 56);
  *a6 = *a1;
  *(a6 + 8) = v6;
  *(a6 + 16) = v7;
  *(a6 + 24) = *(a1 + 24);
  *(a6 + 40) = *(a1 + 40);
  *(a6 + 56) = v8;
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0x4014000000000000;
  *(a6 + 96) = a4;
  *(a6 + 104) = 0;
  *(a6 + 112) = a5;
  *(a6 + 120) = 0;
}

uint64_t sub_1000A88DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a10 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a10;
  *(v21 + 24) = a11;
  sub_100047F38(a8, v21 + v18, &qword_1006359A0);
  result = (*(v19 + 32))(v21 + v20, a1, a10);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = a4;
  a9[3] = a5;
  a9[4] = a6;
  a9[5] = a7;
  a9[6] = a13;
  a9[7] = v21;
  return result;
}

uint64_t sub_1000A8A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_100004CB8(&qword_100635248);
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
  sub_100004CB8(&qword_100634B30);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000A8C88, 0, 0);
}

uint64_t sub_1000A8C88()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_1000108DC(*(v0 + 96), v3, &qword_1006359A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 240), &qword_1006359A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_1000ABB8C(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = sub_1004D809C();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100004CB8(&qword_100635BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1005126C0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_1005127A0;
    *(inited + 72) = 3;
    *(v0 + 312) = sub_10004B4B4(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1004DDA4C();
    *(v0 + 336) = sub_1004DDA3C();
    v18 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000A8F94, v18, v17);
  }
}

uint64_t sub_1000A8F94()
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
  *(v6 + 16) = 14853;
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
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
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

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 168), &qword_100635248);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10007DB18(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_10001074C(*(v0 + 160), &qword_100635248);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_1000108DC(v36 + v14[6], *(v0 + 216), &qword_100634B30);
    sub_10007DB18(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_100047F38(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_100634B30);
  sub_1000108DC(v37, v38, &qword_100635248);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 152), &qword_100635248);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10007DB18(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
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

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 136), &qword_100635248);
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

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
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

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000ABB8C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
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
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_10007DB18(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30);

  return _swift_task_switch(sub_10007EE58, 0, 0);
}

uint64_t sub_1000A976C()
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

uint64_t sub_1000A99BC()
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

uint64_t sub_1000A9C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a7 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  sub_100047F38(a6, v21 + v18, &qword_1006359A0);
  result = (*(v19 + 32))(v21 + v20, a1, a7);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = a4;
  a9[3] = a5;
  a9[4] = a11;
  a9[5] = v21;
  return result;
}

uint64_t sub_1000A9DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(sub_1000AA004, 0, 0);
}

uint64_t sub_1000AA004()
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
    sub_1000ABB8C(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
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

    return _swift_task_switch(sub_1000AA2F0, v18, v17);
  }
}

uint64_t sub_1000AA2F0()
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
  *(v6 + 16) = 13061;
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

    sub_10007DB18(v20, type metadata accessor for MetricsEvent.Page);
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

    sub_10007DB18(v27, type metadata accessor for MetricsEvent.Page);
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
    sub_10007DB18(v36, type metadata accessor for MetricsEvent.Page);
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

    sub_10007DB18(v40, type metadata accessor for MetricsEvent.Page);
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
    sub_10007DB18(v45, type metadata accessor for MetricsEvent.Page);
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

    sub_10007DB18(v50, type metadata accessor for MetricsEvent.Page);
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
    sub_10007DB18(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000ABB8C(v60, v61, type metadata accessor for MetricsEvent.Click);
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
  sub_10007DB18(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30);

  return _swift_task_switch(sub_1000860F4, 0, 0);
}

id sub_1000AAAFC()
{
  v0 = sub_1004DD3FC();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  return v1;
}

uint64_t type metadata accessor for Actions.GoToPlaylistFolderItem.Context()
{
  result = qword_1006362A0;
  if (!qword_1006362A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AABA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.GoToPlaylistFolderItem.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AAC08()
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

uint64_t sub_1000AAE64()
{
  v2 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100035C88;

  return sub_1000A63C0(v0 + v3, v0 + v4);
}

uint64_t sub_1000AAF70()
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

  return sub_1000A7594(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_1000AB0B8()
{

  return swift_deallocObject();
}

uint64_t sub_1000AB0F0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100035B28;

  return sub_1000A8A74(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_1000AB238()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100004CB8(&qword_1006359A0) - 8);
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

uint64_t sub_1000AB4F8()
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

  return sub_1000A9DF0(v0 + v5, v0 + v6, v2, v3);
}

uint64_t _s9MusicCore7ActionsO14ViewFullLyricsO7ContextV13menuItemTitleSSvg_0()
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

__n128 sub_1000AB830(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000AB878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004DCEBC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000AB948(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004DCEBC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1000ABA00()
{
  result = sub_1004DCEBC();
  if (v1 <= 0x3F)
  {
    result = sub_1000430A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000ABAC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000ABB0C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1000ABB8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static Actions.OpenInClassical.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 35;
  *(a2 + 56) = sub_10006D3E4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100518598;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_1005185A0;
  *(a2 + 104) = 0;
}

uint64_t sub_1000ABCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 35;
  *(a2 + 56) = sub_10006D3E4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100518598;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_1005185A0;
  *(a2 + 104) = 0;
}

uint64_t Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t (**a4)()@<X8>)
{
  v67 = a3;
  v68 = a4;
  v65 = a2;
  v69 = sub_1004DCA0C();
  v5 = *(v69 - 8);
  v6 = __chkstk_darwin(v69);
  v66 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v7;
  __chkstk_darwin(v6);
  v63 = &v55 - v8;
  v9 = sub_1004D809C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004CB8(&qword_1006362F0);
  v61 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v64 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v62 = &v55 - v17;
  v18 = __chkstk_darwin(v16);
  v60 = &v55 - v19;
  v70 = v20;
  __chkstk_darwin(v18);
  v22 = (&v55 - v21);
  v23 = a1;
  v24 = sub_1004DC9AC();
  if (v25)
  {
    static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(1, v24, v25, v12);

    (*(v10 + 32))(v22, v12, v9);
  }

  else
  {
    sub_1000AC35C();
    v26 = swift_allocError();
    *v27 = 2;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = 2;
    swift_willThrow();
    *v22 = v26;
  }

  swift_storeEnumTagMultiPayload();
  v28 = *(v5 + 16);
  v29 = v63;
  v58 = v23;
  v30 = v69;
  v28(v63, v23, v69);
  v31 = v60;
  sub_1000108DC(v22, v60, &qword_1006362F0);
  v32 = *(v5 + 80);
  v33 = (v32 + 16) & ~v32;
  v34 = *(v61 + 80);
  v35 = v70;
  v36 = (v71 + v34 + v33) & ~v34;
  v55 = v34 | 7;
  v59 = v34 | 7 | v32;
  v37 = swift_allocObject();
  v56 = *(v5 + 32);
  v57 = v5 + 32;
  v38 = v37 + v33;
  v39 = v37;
  v61 = v37;
  v56(v38, v29, v30);
  sub_100047F38(v31, v39 + v36, &qword_1006362F0);
  v40 = v62;
  sub_1000108DC(v22, v62, &qword_1006362F0);
  v41 = (v34 + 16) & ~v34;
  v42 = swift_allocObject();
  sub_100047F38(v40, v42 + v41, &qword_1006362F0);
  sub_10006A8BC(v65, v42 + ((v35 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
  v43 = v64;
  sub_100047F38(v22, v64, &qword_1006362F0);
  v44 = v66;
  v45 = v69;
  v46 = v56;
  v56(v66, v58, v69);
  v47 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v48 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v49 = (*(v47 + 64) + v34 + v48) & ~v34;
  v50 = (v70 + v32 + v49) & ~v32;
  v51 = swift_allocObject();
  sub_100047F38(v67, v51 + v48, &qword_1006359A0);
  sub_100047F38(v43, v51 + v49, &qword_1006362F0);
  result = v46(v51 + v50, v44, v45);
  v53 = v68;
  v54 = v61;
  *v68 = sub_1000AC6D4;
  v53[1] = v54;
  v53[2] = &unk_1005185B8;
  v53[3] = v42;
  v53[4] = &unk_1005185C8;
  v53[5] = v51;
  return result;
}

unint64_t sub_1000AC35C()
{
  result = qword_10063CFF0;
  if (!qword_10063CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CFF0);
  }

  return result;
}

unint64_t sub_1000AC3B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004CB8(&qword_1006362F0);
  __chkstk_darwin(v3);
  v5 = (v8 - v4);
  if ((sub_1004DC98C() & 1) == 0)
  {
    return 0xD000000000000021;
  }

  sub_1000108DC(a2, v5, &qword_1006362F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    v9 = 0;
    v10 = 0xE000000000000000;
    sub_1004DEAAC(43);
    v11._countAndFlagsBits = 0xD000000000000028;
    v11._object = 0x80000001004EB1C0;
    sub_1004DD5FC(v11);
    v8[1] = v6;
    sub_100004CB8(&qword_100638980);
    sub_1004DEC6C();
    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    sub_1004DD5FC(v12);

    return v9;
  }

  else
  {
    sub_10001074C(v5, &qword_1006362F0);
    return 0;
  }
}

uint64_t sub_1000AC540()
{
  v1 = sub_1004DCA0C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100004CB8(&qword_1006362F0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_1004D809C();
    (*(*(v7 - 8) + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

unint64_t sub_1000AC6D4()
{
  v1 = *(sub_1004DCA0C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_100004CB8(&qword_1006362F0) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1000AC3B0(v0 + v2, v5);
}

uint64_t sub_1000AC7AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_100004CB8(&qword_1006362F0);
  v2[5] = swift_task_alloc();
  v3 = sub_1004D809C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_1004DDA4C();
  v2[9] = sub_1004DDA3C();
  v5 = sub_1004DD9BC();
  v2[10] = v5;
  v2[11] = v4;

  return _swift_task_switch(sub_1000AC8DC, v5, v4);
}

uint64_t sub_1000AC8DC()
{
  sub_1000108DC(v0[2], v0[5], &qword_1006362F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[5];

    sub_10001074C(v1, &qword_1006362F0);

    v2 = v0[1];

    return v2();
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[12] = Strong;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_1000ACA5C;
    v6 = v0[8];

    return (sub_1002B22F0)(v6, Strong);
  }
}

uint64_t sub_1000ACA5C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  *(*v1 + 112) = v0;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1000ACC4C;
  }

  else
  {
    v6 = sub_1000ACBB0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000ACBB0()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000ACC4C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000ACCE8()
{
  v1 = *(sub_100004CB8(&qword_1006362F0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_1004D809C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = v0 + v3;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v3 + 48);
  if (v6 != 255)
  {
    sub_10006A898(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000ACE38()
{
  v2 = *(sub_100004CB8(&qword_1006362F0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100035B28;

  return sub_1000AC7AC(v0 + v3, v0 + v4);
}

uint64_t sub_1000ACF44(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_100004CB8(&qword_100635248);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for MetricsEvent.Click(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = sub_100004CB8(&qword_1006362F0);
  v2[28] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  v2[32] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000AD190, 0, 0);
}

uint64_t sub_1000AD190()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  sub_1000108DC(*(v0 + 112), v3, &qword_1006359A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 256), &qword_1006359A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 224);
    v7 = *(v0 + 120);
    sub_100074250(*(v0 + 256), *(v0 + 280), type metadata accessor for Actions.MetricsReportingContext);
    sub_1000108DC(v7, v6, &qword_1006362F0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = *(v0 + 248);
    v10 = *(v0 + 224);
    if (EnumCaseMultiPayload == 1)
    {
      sub_10001074C(*(v0 + 224), &qword_1006362F0);
      v11 = sub_1004D809C();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    }

    else
    {
      v12 = sub_1004D809C();
      v13 = *(v12 - 8);
      (*(v13 + 32))(v9, v10, v12);
      (*(v13 + 56))(v9, 0, 1, v12);
    }

    sub_100004CB8(&qword_100635BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    *(v0 + 104) = sub_1004DCA0C();
    sub_100004CB8(&qword_100635380);
    v15 = sub_1004DD4DC();
    v17 = v16;
    sub_10004B8A8(1);
    v18 = sub_1004DE7DC();
    v20 = v19;

    v21 = sub_10004B944(1uLL, v15, v17);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    *(v0 + 72) = v21;
    *(v0 + 80) = v23;
    *(v0 + 88) = v25;
    *(v0 + 96) = v27;
    sub_10004B9F4();
    sub_1004DD5DC();

    *(inited + 32) = v18;
    *(inited + 40) = v20;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_10004B4B4(inited);
    *(v0 + 296) = v28;
    *(v0 + 304) = v29;
    *(v0 + 320) = v30;
    swift_setDeallocating();
    sub_10007FCDC(inited + 32);
    sub_1004DDA4C();
    *(v0 + 312) = sub_1004DDA3C();
    v32 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000AD600, v32, v31);
  }
}

uint64_t sub_1000AD600()
{
  v80 = *(v0 + 320);
  v78 = *(v0 + 304);
  v75 = *(v0 + 288);
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v74 = *(v0 + 176);

  sub_1000108DC(v3, v4, &qword_100634B30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = 0xD000000000000014;
  *(v6 + 8) = 0x80000001004EB170;
  *(v6 + 16) = 7173;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30);
  v76 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v77 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v75;
  *(v14 + 16) = v78;
  *(v14 + 24) = v80;
  sub_1000108DC(v7, v74, &qword_100635248);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v15 - 1) + 48);
  v16 = v79(v74, 1, v15);
  v17 = *(v0 + 320);
  v18 = *(v0 + 296);
  v19 = *(v0 + 304);
  v20 = *(v0 + 288);
  v21 = *(v0 + 176);
  if (v16 == 1)
  {

    sub_100046F14(v77, v76);

    sub_100047EC8(v20, v18, v19, v17, SBYTE1(v17));
    sub_10001074C(v21, &qword_100635248);
    v22 = v11;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v25 = v11;
    v23 = *v21;
    v24 = v21[1];

    sub_100046F14(v77, v76);

    sub_100047EC8(v20, v18, v19, v17, SBYTE1(v17));

    sub_10007DB18(v21, type metadata accessor for MetricsEvent.Page);
    v22 = v25;
  }

  v26 = *(v0 + 184);
  v27 = *(v0 + 168);
  v28 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v28 = v23;
  v28[1] = v24;
  sub_1000108DC(v26, v27, &qword_100635248);
  v29 = v79(v27, 1, v15);
  v30 = *(v0 + 168);
  if (v29 == 1)
  {
    sub_10001074C(*(v0 + 168), &qword_100635248);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);

    sub_10007DB18(v30, type metadata accessor for MetricsEvent.Page);
  }

  v33 = *(v0 + 184);
  v34 = *(v0 + 160);
  v35 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v35 = v31;
  v35[1] = v32;
  sub_1000108DC(v33, v34, &qword_100635248);
  v36 = v79(v34, 1, v15);
  v37 = *(v0 + 232);
  v38 = *(v0 + 160);
  if (v36 == 1)
  {
    sub_10001074C(*(v0 + 160), &qword_100635248);
    v39 = sub_1004D809C();
    (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  }

  else
  {
    sub_1000108DC(v38 + v15[6], *(v0 + 232), &qword_100634B30);
    sub_10007DB18(v38, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 184);
  v41 = *(v0 + 152);
  sub_100047F38(*(v0 + 232), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_100634B30);
  sub_1000108DC(v40, v41, &qword_100635248);
  v42 = v79(v41, 1, v15);
  v43 = *(v0 + 152);
  if (v42 == 1)
  {
    sub_10001074C(*(v0 + 152), &qword_100635248);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_10007DB18(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 184);
  v46 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v44;
  sub_1000108DC(v45, v46, &qword_100635248);
  v47 = v79(v46, 1, v15);
  v48 = *(v0 + 144);
  if (v47 == 1)
  {
    sub_10001074C(v48, &qword_100635248);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_10007DB18(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 184);
  v51 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v49;
  sub_1000108DC(v50, v51, &qword_100635248);
  v52 = v79(v51, 1, v15);
  v53 = *(v0 + 136);
  if (v52 == 1)
  {
    sub_10001074C(*(v0 + 136), &qword_100635248);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_10007DB18(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 184);
  v58 = *(v0 + 128);
  v59 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_100047F38(v57, v58, &qword_100635248);
  v60 = v79(v58, 1, v15);
  v61 = *(v0 + 128);
  if (v60 == 1)
  {
    sub_10001074C(v61, &qword_100635248);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_10007DB18(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 200);
  v64 = *(v0 + 208);
  v65 = *(v0 + 192);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v22;
  sub_100074250(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 296);
  v66 = *(v0 + 304);
  v68 = *(v0 + 280);
  v69 = *(v0 + 288);
  v70 = *(v0 + 264);
  v71 = *(v0 + 208);
  v72 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v71, *(v68 + *(v70 + 24)), *(v68 + *(v70 + 24) + 8), *(v68 + *(v70 + 36)), *(v68 + *(v70 + 36) + 8), *(v68 + *(v70 + 36) + 16));
  sub_1000742B8(v69, v67, v66, v72, SBYTE1(v72));
  sub_10007DB18(v71, type metadata accessor for MetricsEvent.Click);

  return _swift_task_switch(sub_1000ADDD4, 0, 0);
}

uint64_t sub_1000ADDD4()
{
  v1 = v0[35];
  sub_10001074C(v0[31], &qword_100634B30);
  sub_10007DB18(v1, type metadata accessor for Actions.MetricsReportingContext);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000ADF34()
{
  v1 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_100004CB8(&qword_1006362F0);
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v7 = *(*(v4 - 8) + 64);
  v8 = sub_1004DCA0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v0 + v2;
  v12 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v23 = v7;
    v24 = v8;
    if (*(v11 + 8) >= 0xDuLL)
    {
    }

    v13 = v11 + *(v12 + 20);
    v14 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 24);
      v16 = sub_1004D809C();
      v21 = *(v16 - 8);
      v22 = v15;
      v17 = v13 + v15;
      v18 = v16;
      if (!(*(v21 + 48))(v17, 1, v16))
      {
        (*(v21 + 8))(v13 + v22, v18);
      }
    }

    v7 = v23;
    v8 = v24;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v19 = sub_1004D809C();
    (*(*(v19 - 8) + 8))(v0 + v6, v19);
  }

  (*(v9 + 8))(v0 + ((v6 + v7 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t sub_1000AE2DC()
{
  v2 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_100004CB8(&qword_1006362F0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  sub_1004DCA0C();
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100035C88;

  return sub_1000ACF44(v0 + v3, v0 + v6);
}

uint64_t (*Actions.OpenInClassical.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "arrow.up.right");
  *(v0 + 31) = -18;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "arrow.up.right");
  *(v1 + 31) = -18;
  return sub_100073BEC;
}

uint64_t (*sub_1000AE52C())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "arrow.up.right");
  *(v0 + 31) = -18;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "arrow.up.right");
  *(v1 + 31) = -18;
  return sub_10007455C;
}

uint64_t _s9MusicCore7ActionsO15OpenInClassicalO7ContextV13menuItemTitleSSvg_0()
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

uint64_t sub_1000AE7B4()
{

  return swift_deallocObject();
}

uint64_t static Actions.ReportConcern.action(context:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 6);
  v4 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 2);
  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = sub_1000AE8C4;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_100518640;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_100518648;
  *(a2 + 112) = 0;
}

uint64_t sub_1000AE8EC(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 24) + **(a2 + 24));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100035B28;

  return v5();
}

uint64_t sub_1000AE9D4(uint64_t a1)
{
  v4 = (*(a1 + 40) + **(a1 + 40));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return v4();
}

uint64_t sub_1000AEABC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 6);
  *a2 = *a1;
  *(a2 + 8) = v3;
  v5 = *(a1 + 2);
  *(a2 + 16) = *(a1 + 1);
  *(a2 + 32) = v5;
  *(a2 + 48) = v4;
  *(a2 + 56) = v2;
  *(a2 + 64) = sub_1000AE8C4;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_100518640;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_100518648;
  *(a2 + 112) = 0;
}

uint64_t (*Actions.ReportConcern.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001004EB1F0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x80000001004EB1F0;
  return sub_100073BEC;
}

uint64_t (*sub_1000AEC18())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001004EB1F0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x80000001004EB1F0;
  return sub_10007455C;
}

uint64_t Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v17 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  result = sub_100047F38(a11, v19 + v17, &qword_1006359A0);
  v21 = (v19 + v18);
  *v21 = a1;
  v21[1] = a2;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = a3;
  v22[1] = a4;
  *a9 = a5;
  *(a9 + 8) = a6;
  *(a9 + 16) = a7;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  *(a9 + 40) = &unk_100518658;
  *(a9 + 48) = v19;
  return result;
}

uint64_t sub_1000AEE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  sub_100004CB8(&qword_100635248);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = type metadata accessor for MetricsEvent.Click(0);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  v5[31] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_1000AF028, 0, 0);
}

uint64_t sub_1000AF028()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  sub_1000108DC(*(v0 + 96), v3, &qword_1006359A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 248), &qword_1006359A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 240);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    sub_100074250(*(v0 + 248), *(v0 + 272), type metadata accessor for Actions.MetricsReportingContext);
    v9 = sub_1004D809C();
    *(v0 + 280) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 288) = v11;
    *(v0 + 296) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100004CB8(&qword_100635BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1005126C0;
    *(inited + 32) = v8;
    *(inited + 40) = v7;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_1005127C0;
    *(inited + 72) = 3;

    *(v0 + 304) = sub_10004B4B4(inited);
    *(v0 + 312) = v13;
    *(v0 + 320) = v14;
    *(v0 + 336) = v15;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1004DDA4C();
    *(v0 + 328) = sub_1004DDA3C();
    v17 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000AF31C, v17, v16);
  }
}

uint64_t sub_1000AF31C()
{
  v80 = *(v0 + 336);
  v79 = *(v0 + 320);
  v77 = *(v0 + 304);
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v74 = *(v0 + 112);
  v72 = *(v0 + 184);
  v73 = *(v0 + 104);

  sub_1000108DC(v3, v4, &qword_100634B30);
  v8 = *(v1 + v2[7]);
  v10 = *v1;
  v9 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248);
  v76 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v73;
  *(v6 + 8) = v74;
  *(v6 + 16) = 10501;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30);
  v75 = v9;
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  *v12 = v10;
  v12[1] = v9;
  v13 = v6 + v5[10];
  *v13 = v77;
  *(v13 + 16) = v79;
  *(v13 + 24) = v80;
  sub_1000108DC(v7, v72, &qword_100635248);
  v78 = type metadata accessor for MetricsEvent.Page(0);
  v81 = *(*(v78 - 1) + 48);
  v14 = v81(v72, 1);
  v15 = *(v0 + 336);
  v17 = *(v0 + 312);
  v16 = *(v0 + 320);
  v18 = *(v0 + 304);
  v19 = *(v0 + 184);
  if (v14 == 1)
  {

    sub_100046F14(v10, v9);
    v20 = v76;

    sub_100047EC8(v18, v17, v16, v15, SBYTE1(v15));
    sub_10001074C(v19, &qword_100635248);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v19;
    v22 = v19[1];

    sub_100046F14(v10, v75);
    v20 = v76;

    sub_100047EC8(v18, v17, v16, v15, SBYTE1(v15));

    sub_10007DB18(v19, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 192);
  v24 = *(v0 + 176);
  v25 = (*(v0 + 208) + *(*(v0 + 200) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248);
  v26 = (v81)(v24, 1, v78);
  v27 = *(v0 + 176);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 176), &qword_100635248);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10007DB18(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 192);
  v31 = *(v0 + 168);
  v32 = (*(v0 + 208) + *(*(v0 + 200) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248);
  if ((v81)(v31, 1, v78) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 224);
    sub_10001074C(*(v0 + 168), &qword_100635248);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 168);
    sub_1000108DC(v36 + v78[6], *(v0 + 224), &qword_100634B30);
    sub_10007DB18(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 192);
  v38 = *(v0 + 160);
  sub_100047F38(*(v0 + 224), *(v0 + 208) + *(*(v0 + 200) + 56), &qword_100634B30);
  sub_1000108DC(v37, v38, &qword_100635248);
  v39 = (v81)(v38, 1, v78);
  v40 = *(v0 + 160);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 160), &qword_100635248);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v78[7]);

    sub_10007DB18(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 192);
  v43 = *(v0 + 152);
  *(*(v0 + 208) + *(*(v0 + 200) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248);
  v44 = (v81)(v43, 1, v78);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    sub_10001074C(v45, &qword_100635248);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v78[9]);
    sub_10007DB18(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 192);
  v48 = *(v0 + 144);
  *(*(v0 + 208) + *(*(v0 + 200) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248);
  v49 = (v81)(v48, 1, v78);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 144), &qword_100635248);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v78[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10007DB18(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 192);
  v55 = *(v0 + 136);
  v56 = (*(v0 + 208) + *(*(v0 + 200) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248);
  v57 = (v81)(v55, 1, v78);
  v58 = *(v0 + 136);
  if (v57 == 1)
  {
    sub_10001074C(v58, &qword_100635248);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v78[11]);
    sub_10007DB18(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 208);
  v61 = *(v0 + 216);
  v62 = *(v0 + 200);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v20;
  sub_100074250(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 272);
  v67 = *(v0 + 256);
  v68 = *(v0 + 240);
  v69 = *(v0 + 216);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_10007DB18(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30);

  return _swift_task_switch(sub_1000AFAF4, 0, 0);
}

uint64_t sub_1000AFAF4()
{
  sub_10007DB18(*(v0 + 272), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s9MusicCore7ActionsO13ReportConcernO7ContextV13menuItemTitleSSvg_0()
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

uint64_t sub_1000AFE0C()
{

  return swift_deallocObject();
}

uint64_t sub_1000AFE44()
{
  v1 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    if (*(v2 + 8) >= 0xDuLL)
    {
    }

    v4 = v2 + *(v3 + 20);
    v5 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = sub_1004D809C();
      v8 = *(v7 - 8);
      v12 = v6;
      v9 = v4 + v6;
      v10 = v7;
      if (!(*(v8 + 48))(v9, 1, v7))
      {
        (*(v8 + 8))(v4 + v12, v10);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1000B00B8()
{
  v2 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100035B28;

  return sub_1000AEE10(v0 + v3, v7, v8, v9, v10);
}

uint64_t Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v92 = a7;
  v88 = a5;
  v86 = a4;
  v90 = a8;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(a1);
  v87 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v74 - v15;
  v17 = type metadata accessor for Actions.PlaybackContext();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17 - 8);
  v85 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v20;
  __chkstk_darwin(v19);
  v22 = &v74 - v21;
  v89 = a2;
  if (a2 != 3)
  {
    goto LABEL_19;
  }

  v23 = v16;
  v24 = *a3;
  v25 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v24 + v25))
  {
    v82 = v18;
    v80 = v22;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1004D9B6C();

    v26 = v93;
    v16 = v23;
    if (v93)
    {
      v27 = [v93 tracklist];

      v28 = [v27 insertCommand];
      v18 = v82;
      if (!v28 || (v29 = [v28 insertAfterLastSection], swift_unknownObjectRelease(), !v29))
      {
LABEL_12:
        v83 = 0;
        v84 = 0;
        v22 = v80;
        goto LABEL_20;
      }

      v30 = [v29 section];
      swift_unknownObjectRelease();
      v31 = [v30 metadataObject];

      if (v31)
      {
        v32 = [v31 flattenedGenericObject];

        v18 = v82;
        if (v32)
        {
          v33 = [v32 anyObject];

          if (v33)
          {
            objc_opt_self();
            v34 = swift_dynamicCastObjCClass();
            v22 = v80;
            if (v34)
            {
              v35 = [v34 title];
            }

            else
            {
              objc_opt_self();
              v36 = swift_dynamicCastObjCClass();
              if (!v36)
              {
LABEL_18:

LABEL_19:
                v83 = 0;
                v84 = 0;
                goto LABEL_20;
              }

              v35 = [v36 name];
            }

            v37 = v35;
            if (v37)
            {
              v38 = v37;
              v39 = sub_1004DD43C();
              v83 = v40;
              v84 = v39;

              v22 = v80;
              goto LABEL_20;
            }

            goto LABEL_18;
          }
        }

        goto LABEL_12;
      }
    }

    v83 = 0;
    v84 = 0;
    v22 = v80;
    v18 = v82;
    goto LABEL_20;
  }

  v83 = 0;
  v84 = 0;
  v16 = v23;
LABEL_20:
  v41 = v13;
  v78 = type metadata accessor for Actions.PlaybackContext;
  sub_1000C0EA8(a3, v22, type metadata accessor for Actions.PlaybackContext);
  (*(v12 + 16))(v16, a1, a6);
  v42 = a6;
  v43 = *(v18 + 80);
  v79 = a1;
  v44 = (v43 + 32) & ~v43;
  v77 = v43 | 7;
  v45 = v12;
  v46 = *(v12 + 80);
  v47 = a3;
  v81 = a3;
  v48 = (v91 + v46 + v44) & ~v46;
  v80 = (v41 + 7);
  v49 = (v41 + 7 + v48) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v75 = v42;
  v51 = v92;
  *(v50 + 16) = v42;
  *(v50 + 24) = v51;
  v74 = type metadata accessor for Actions.PlaybackContext;
  v52 = v50 + v44;
  v53 = v50;
  sub_1000C0FF0(v22, v52, type metadata accessor for Actions.PlaybackContext);
  v76 = *(v45 + 32);
  v54 = v53 + v48;
  v55 = v53;
  v82 = v53;
  v76(v54, v16, v42);
  v56 = v89;
  *(v55 + v49) = v89;
  v57 = v85;
  sub_1000C0EA8(v47, v85, v78);
  v58 = (v43 + 16) & ~v43;
  v59 = (v91 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  sub_1000C0FF0(v57, v60 + v58, v74);
  *(v60 + v59) = v56;
  sub_10006A8BC(v86, v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
  v61 = v87;
  v62 = v75;
  v63 = v76;
  v76(v87, v79, v75);
  v64 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v66 = (*(v64 + 64) + v46 + v65) & ~v46;
  v67 = &v80[v66] & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v69 = v92;
  *(v68 + 16) = v62;
  *(v68 + 24) = v69;
  sub_100047F38(v88, v68 + v65, &qword_1006359A0);
  v63(v68 + v66, v61, v62);
  *(v68 + v67) = v56;
  sub_10006CEB0(v56);
  sub_10006CEB0(v56);
  sub_10006CEB0(v56);
  result = sub_1000C1058(v81, type metadata accessor for Actions.PlaybackContext);
  v71 = v90;
  v72 = v83;
  v73 = v84;
  *v90 = v56;
  v71[1] = v73;
  v71[2] = v72;
  v71[3] = sub_1000BC788;
  v71[4] = v82;
  v71[5] = &unk_100518720;
  v71[6] = v60;
  v71[7] = &unk_100518730;
  v71[8] = v68;
  return result;
}

__n128 static Actions.Queue.action(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000BE470(a1, v7);
  v3 = v7[7];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 128) = v8;
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a7 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  sub_100047F38(a6, v21 + v18, &qword_1006359A0);
  result = (*(v19 + 32))(v21 + v20, a1, a7);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = &unk_100517588;
  a9[3] = v16;
  a9[4] = &unk_100518740;
  a9[5] = v21;
  return result;
}

uint64_t sub_1000B0B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(sub_1000B0D40, 0, 0);
}

uint64_t sub_1000B0D40()
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
    sub_1000C0FF0(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
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

    return _swift_task_switch(sub_1000B102C, v18, v17);
  }
}

uint64_t sub_1000B102C()
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
  *(v6 + 16) = 15621;
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

    sub_1000C1058(v20, type metadata accessor for MetricsEvent.Page);
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

    sub_1000C1058(v27, type metadata accessor for MetricsEvent.Page);
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
    sub_1000C1058(v36, type metadata accessor for MetricsEvent.Page);
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

    sub_1000C1058(v40, type metadata accessor for MetricsEvent.Page);
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
    sub_1000C1058(v45, type metadata accessor for MetricsEvent.Page);
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

    sub_1000C1058(v50, type metadata accessor for MetricsEvent.Page);
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
    sub_1000C1058(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000C0FF0(v60, v61, type metadata accessor for MetricsEvent.Click);
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
  sub_1000C1058(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30);

  return _swift_task_switch(sub_1000B17E0, 0, 0);
}

uint64_t sub_1000B17E0()
{
  sub_1000C1058(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*Actions.Preview.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E79616C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E79616C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_100073BEC;
}

uint64_t (*sub_1000B1A48())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E79616C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E79616C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_10007455C;
}

uint64_t Actions.CreateStation.Context.init(playbackContext:presentationSource:metricsReportingContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v8 = type metadata accessor for Actions.PlaybackContext();
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004CB8(&qword_100636338);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  v14 = sub_1004D8BFC();
  *&v39 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*(v17 + v18))
  {
    sub_10001074C(a3, &qword_1006359A0);
    v28 = a2;
    goto LABEL_9;
  }

  *&v40 = a3;
  *&v41 = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B6C();

  v19 = v45;
  if (!v45 || (v20 = [v45 tracklist], v19, v21 = objc_msgSend(v20, "playingItem"), v20, !v21) || (v22 = objc_msgSend(v21, "metadataObject"), v21, !v22))
  {

    sub_10001074C(v40, &qword_1006359A0);
    v28 = v41;
LABEL_9:
    sub_10007DC74(v28);
    result = sub_1000C1058(a1, type metadata accessor for Actions.PlaybackContext);
    goto LABEL_10;
  }

  v23 = [v22 innermostModelObject];

  v24 = v23;
  sub_1004D8BEC();
  v25 = v39;
  if ((*(v39 + 48))(v13, 1, v14) == 1)
  {

    sub_10001074C(v40, &qword_1006359A0);
    sub_10007DC74(v41);
    sub_1000C1058(a1, type metadata accessor for Actions.PlaybackContext);
    v26 = &qword_100636338;
    v27 = v13;
  }

  else
  {
    (*(v25 + 32))(v16, v13, v14);
    sub_1000B20CC(v16, &v45);

    (*(v25 + 8))(v16, v14);
    if (*(&v46 + 1))
    {
      sub_100035850(&v45, v42);
      v33 = v43;
      v34 = v44;
      v35 = sub_100008C70(v42, v43);
      __chkstk_darwin(v35);
      v37 = &v39 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v37);
      sub_1000C0EA8(a1, v10, type metadata accessor for Actions.PlaybackContext);
      Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(v37, v10, v41, v40, v33, v34, &v45);
      v40 = v46;
      v41 = v45;
      v39 = v47;
      sub_1000C1058(a1, type metadata accessor for Actions.PlaybackContext);
      result = sub_100008D24(v42);
      v32 = v39;
      v31 = v40;
      v30 = v41;
      goto LABEL_11;
    }

    sub_10001074C(v40, &qword_1006359A0);
    sub_10007DC74(v41);
    sub_1000C1058(a1, type metadata accessor for Actions.PlaybackContext);
    v26 = &qword_100639FE0;
    v27 = &v45;
  }

  result = sub_10001074C(v27, v26);
LABEL_10:
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
LABEL_11:
  *a4 = v30;
  a4[1] = v31;
  a4[2] = v32;
  return result;
}

uint64_t sub_1000B20CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004DCB3C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004DC95C();
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004D8BFC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v12 + 96))(v14, v11);
    v16 = *(v5 + 32);
    v16(v7, v14, v4);
    *(a2 + 24) = v4;
    *(a2 + 32) = &protocol witness table for Artist;
    v17 = sub_1000357EC(a2);
    return (v16)(v17, v7, v4);
  }

  else if (v15 == enum case for GenericMusicItem.song(_:))
  {
    (*(v12 + 96))(v14, v11);
    v19 = *(v22 + 32);
    v19(v10, v14, v8);
    *(a2 + 24) = v8;
    *(a2 + 32) = &protocol witness table for Song;
    v20 = sub_1000357EC(a2);
    return (v19)(v20, v10, v8);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v75 = a4;
  v76 = a6;
  v69 = a3;
  v70 = a7;
  v62 = a2;
  v71 = a1;
  v10 = sub_100004CB8(&qword_1006359A0);
  v66 = *(v10 - 8);
  v74 = *(v66 + 64);
  v11 = __chkstk_darwin(v10 - 8);
  v68 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v73 = &v57 - v14;
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v13);
  v67 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v64 = &v57 - v19;
  __chkstk_darwin(v18);
  v21 = &v57 - v20;
  v57 = &v57 - v20;
  v22 = type metadata accessor for Actions.PlaybackContext();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22 - 8);
  v72 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v57 - v26;
  sub_1000C0EA8(a2, &v57 - v26, type metadata accessor for Actions.PlaybackContext);
  v77 = v15;
  v59 = *(v15 + 16);
  v59(v21, a1, a5);
  v28 = *(v23 + 80);
  v29 = (v28 + 32) & ~v28;
  v30 = *(v15 + 80);
  v31 = (v24 + v30 + v29) & ~v30;
  v61 = v30 | v28 | 7;
  v63 = v16;
  v32 = swift_allocObject();
  v33 = v76;
  *(v32 + 16) = a5;
  *(v32 + 24) = v33;
  v34 = v32 + v29;
  v35 = v32;
  v65 = v32;
  v58 = type metadata accessor for Actions.PlaybackContext;
  sub_1000C0FF0(v27, v34, type metadata accessor for Actions.PlaybackContext);
  v60 = *(v77 + 32);
  v77 += 32;
  v60(v35 + v31, v57, a5);
  v36 = v64;
  v59(v64, v71, a5);
  sub_1000C0FF0(v62, v72, type metadata accessor for Actions.PlaybackContext);
  sub_1000108DC(v75, v73, &qword_1006359A0);
  v37 = (v30 + 32) & ~v30;
  v38 = (v16 + v28 + v37) & ~v28;
  v39 = *(v66 + 80);
  v40 = (v38 + v24 + v39) & ~v39;
  v41 = (v74 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v76;
  *(v42 + 16) = a5;
  *(v42 + 24) = v43;
  v44 = v36;
  v45 = a5;
  v46 = a5;
  v47 = v60;
  v60(v42 + v37, v44, v45);
  sub_1000C0FF0(v72, v42 + v38, v58);
  sub_100047F38(v73, v42 + v40, &qword_1006359A0);
  sub_10006A8BC(v69, v42 + v41);
  v48 = v68;
  sub_100047F38(v75, v68, &qword_1006359A0);
  v49 = v67;
  v47(v67, v71, v46);
  v50 = (v39 + 32) & ~v39;
  v51 = (v74 + v30 + v50) & ~v30;
  v52 = swift_allocObject();
  v53 = v76;
  *(v52 + 16) = v46;
  *(v52 + 24) = v53;
  sub_100047F38(v48, v52 + v50, &qword_1006359A0);
  result = (v47)(v52 + v51, v49, v46);
  v55 = v70;
  v56 = v65;
  *v70 = sub_1000BE97C;
  v55[1] = v56;
  v55[2] = &unk_100518778;
  v55[3] = v42;
  v55[4] = &unk_100518788;
  v55[5] = v52;
  return result;
}

unint64_t sub_1000B28FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v52 = sub_1004DCB3C();
  v49 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004DC32C();
  v54 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004DC95C();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = __chkstk_darwin(v9);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v55 = &v47 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v47 - v15;
  v17 = *(a3 - 8);
  v18 = __chkstk_darwin(v14);
  v58 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  v22 = *a1;
  v23 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v24 = *(v22 + v23);
  if (!v24)
  {
    *&v67 = 0;
    *(&v67 + 1) = 0xE000000000000000;
    sub_1004DEAAC(34);
    v78._countAndFlagsBits = 0xD000000000000020;
    v78._object = 0x80000001004EB360;
    sub_1004DD5FC(v78);
    sub_1004DF02C();
    return v67;
  }

  v48 = v7;
  v25 = *(v17 + 16);
  v25(v21, a2, a3);

  sub_100004CB8(&qword_100635268);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v69 = 0;
    v67 = 0u;
    v68 = 0u;
    sub_10001074C(&v67, &unk_10063AC70);
LABEL_11:

    v31 = 13;
    return v31 | 0xD000000000000010;
  }

  v47 = v17;
  sub_100035850(&v67, v75);
  v26 = v76;
  v27 = v77;
  sub_100008C70(v75, v76);
  (*(v27 + 8))(v26, v27);
  if (!v28)
  {
    sub_100008D24(v75);
    goto LABEL_11;
  }

  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v71 = v63;
  v72 = v64;
  v73 = v65;
  v74 = v66;
  v67 = v59;
  v68 = v60;
  v69 = v61;
  v70 = v62;
  if (v65 > 1u)
  {
    v29 = v47;
    if (v65 == 2)
    {

      goto LABEL_16;
    }
  }

  else
  {
    v29 = v47;
  }

  v32 = sub_1004DF08C();

  if ((v32 & 1) == 0)
  {

    sub_100073E60(&v67);
    sub_100008D24(v75);
    v31 = 5;
    return v31 | 0xD000000000000010;
  }

LABEL_16:
  if (sub_1001202D0(4, v69))
  {
    if (BYTE1(v67) == 1)
    {
      v33 = v58;
      v25(v58, a2, a3);
      v34 = v57;
      if (swift_dynamicCast())
      {
        v35 = v55;
        v36 = v56;
        (*(v56 + 32))(v55, v16, v34);
        v37 = sub_1004DE08C();
        v38 = *(v36 + 16);
        v39 = v50;
        v38(v50, v35, v34);
        sub_100004CB8(&qword_100636400);
        swift_allocObject();

        sub_1000BF1C8(v39, v37, v24);

        __chkstk_darwin(v40);
        *(&v47 - 2) = v34;
        *(&v47 - 1) = &protocol witness table for Song;
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v47 - 2) = v34;
        *(&v47 - 1) = &protocol witness table for Song;
        swift_getKeyPath();
        v42 = v53;
        sub_1004D9B6C();

        v43 = sub_1000B322C();

        sub_100073E60(&v67);
        (*(v54 + 8))(v42, v48);
        (*(v56 + 8))(v55, v34);
        (*(v29 + 8))(v33, a3);
        sub_100008D24(v75);
        return v43;
      }

      else
      {
        v45 = v51;
        v44 = v52;
        v46 = swift_dynamicCast();

        sub_100073E60(&v67);
        if (v46)
        {
          (*(v49 + 8))(v45, v44);
          (*(v29 + 8))(v33, a3);
          sub_100008D24(v75);
          return 0;
        }

        else
        {
          (*(v29 + 8))(v33, a3);
          sub_100008D24(v75);
          return 0xD000000000000010;
        }
      }
    }

    else
    {

      sub_100073E60(&v67);
      sub_100008D24(v75);
      return 0xD000000000000017;
    }
  }

  else
  {

    sub_100073E60(&v67);
    sub_100008D24(v75);
    return 0xD000000000000016;
  }
}

uint64_t sub_1000B322C()
{
  v1 = v0;
  v2 = sub_1004DC31C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DC32C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1004DEC6C();
    v11 = v17;
    (*(v3 + 8))(v5, v2);
  }

  else if (v10 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    return 0;
  }

  else
  {
    if (qword_100633A88 != -1)
    {
      swift_once();
    }

    v12 = sub_1004D966C();
    sub_100035430(v12, static Logger.actions);
    v13 = sub_1004D964C();
    v14 = sub_1004DDF8C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unknown playability status", v15, 2u);
    }

    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1004DEC6C();
    v11 = v17;
    (*(v7 + 8))(v9, v6);
  }

  return v11;
}

uint64_t sub_1000B354C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[60] = a4;
  v5[61] = a5;
  v5[58] = a2;
  v5[59] = a3;
  v5[57] = a1;
  v5[62] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = type metadata accessor for PlaybackIntentDescriptor(0);
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  sub_100004CB8(&qword_1006363E8);
  v5[70] = swift_task_alloc();
  v7 = sub_1004D96BC();
  v5[71] = v7;
  v5[72] = *(v7 - 8);
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = type metadata accessor for Notice.Variant(0);
  v5[76] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  sub_100004CB8(&qword_100635BE0);
  v5[81] = swift_task_alloc();
  v5[82] = *(a5 - 8);
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v8 = sub_1004DC95C();
  v5[85] = v8;
  v5[86] = *(v8 - 8);
  v5[87] = swift_task_alloc();

  return _swift_task_switch(sub_1000B3888, 0, 0);
}

uint64_t sub_1000B3888()
{
  v1 = *(v0 + 688);
  v2 = *(*(v0 + 656) + 16);
  v2(*(v0 + 672), *(v0 + 456), *(v0 + 488));
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if ((v3 & 1) == 0)
  {
    v16 = *(v0 + 648);
    v4(v16, 1, 1, *(v0 + 680));
    sub_10001074C(v16, &qword_100635BE0);
    goto LABEL_9;
  }

  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = *(v0 + 648);
  v9 = *(v0 + 464);
  v4(v8, 0, 1, v7);
  (*(v6 + 32))(v5, v8, v7);
  v10 = *v9;
  v11 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*(v10 + v11))
  {
    goto LABEL_8;
  }

  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B6C();

  v12 = *(v0 + 440);
  v13 = *(v0 + 696);
  if (!v12)
  {
LABEL_6:
    (*(*(v0 + 688) + 8))(v13, *(v0 + 680));
    goto LABEL_9;
  }

  sub_1004DE0AC();
  v15 = v14;

  if (v15)
  {
LABEL_5:
    v13 = *(v0 + 696);
    goto LABEL_6;
  }

  swift_beginAccess();
  if (!*(v10 + v11))
  {
LABEL_8:
    (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));
    swift_endAccess();
    goto LABEL_9;
  }

  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B6C();

  v30 = *(v0 + 448);
  if (!v30)
  {
    goto LABEL_5;
  }

  v31 = [*(v0 + 448) tracklist];

  v32 = [v31 playingItem];
  if (!v32)
  {
    goto LABEL_5;
  }

  v33 = [v32 metadataObject];

  if (!v33)
  {
    goto LABEL_5;
  }

  v34 = [v33 innermostModelObject];
  *(v0 + 704) = v34;

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    v87 = *(v0 + 696);
    v88 = *(v0 + 688);
    v89 = *(v0 + 680);

    (*(v88 + 8))(v87, v89);
    goto LABEL_9;
  }

  v36 = [objc_opt_self() radioPlaybackIntentFromSong:v35];
  *(v0 + 712) = v36;
  if (!v36)
  {
    (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));

LABEL_9:
    v2(*(v0 + 664), *(v0 + 456), *(v0 + 488));
    sub_100004CB8(&qword_1006363F0);
    if (swift_dynamicCast())
    {
      sub_100035850((v0 + 56), v0 + 16);
      sub_100035868(v0 + 16, v0 + 96);
      sub_1004D969C();
      v19 = *(v0 + 592);
      v20 = *(v0 + 576);
      v21 = *(v0 + 568);
      v22 = *(v0 + 560);
      v23 = *(v0 + 544);
      v24 = *(v0 + 536);
      v25 = *(v0 + 528);
      v26 = *(v0 + 464);
      (*(v20 + 56))(v22, 0, 1, v21);
      v95 = *(v20 + 32);
      v95(v19, v22, v21);
      (*(v20 + 16))(v25, v19, v21);
      swift_storeEnumTagMultiPayload();
      v27 = type metadata accessor for Actions.PlaybackContext();
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
      sub_1000108DC(v26 + *(v27 + 28), v0 + 176, &qword_100635998);
      v28 = v23 + v24[7];
      *(v28 + 32) = 0;
      *v28 = 0u;
      *(v28 + 16) = 0u;
      v29 = v23 + v24[8];
      *(v29 + 32) = 0;
      *v29 = 0u;
      *(v29 + 16) = 0u;
      *(v23 + v24[9]) = 0;
      *(v23 + v24[10]) = 0;
      *(v23 + v24[11]) = 0;
      sub_1000C0EA8(v25, v23, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      sub_1000C0F10(v0 + 136, v28);
      *(v23 + v24[5]) = 2;
      *(v23 + v24[6]) = 1;
      sub_1000108DC(v0 + 176, v0 + 256, &qword_100635998);
      if (*(v0 + 280))
      {
        sub_100035850((v0 + 256), v0 + 216);
      }

      else
      {
        *(v0 + 424) = 0;
        sub_100004CB8(&qword_1006363D8);
        v51 = sub_1004DD50C();
        *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 216) = v51;
        *(v0 + 224) = v52;
        if (*(v0 + 280))
        {
          sub_10001074C(v0 + 256, &qword_100635998);
        }
      }

      v53 = *(v0 + 552);
      v54 = *(v0 + 544);
      v55 = *(v0 + 528);
      v56 = *(v0 + 520);
      v57 = *(v0 + 464);
      sub_1000C0F80(v0 + 216, v29);
      sub_10001074C(v0 + 176, &qword_100635998);
      sub_10001074C(v0 + 136, &qword_100639FE0);
      sub_1000C1058(v55, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      sub_1000C0FF0(v54, v53, type metadata accessor for PlaybackIntentDescriptor);
      v58 = (v57 + *(v27 + 24));
      v59 = *v58;
      v60 = v58[1];
      v61 = v58[2];
      v62 = v58[3];
      sub_1000C0EA8(v53, v56, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v63 = *(v0 + 584);
        v64 = *(v0 + 576);
        v65 = *(v0 + 568);
        v95(v63, *(v0 + 520), v65);
        sub_100061320(v59, v60, v61, v62);
        v66 = sub_1004D968C();
        sub_100219684(v59, v60, v61, v62);
        sub_10006136C(v59, v60, v61, v62);

        (*(v64 + 8))(v63, v65);
      }

      else
      {
        v67 = **(v0 + 520);
        sub_100061320(v59, v60, v61, v62);
        sub_100219684(v59, v60, v61, v62);
        sub_10006136C(v59, v60, v61, v62);
      }

      sub_1000C0EA8(*(v0 + 552), *(v0 + 512), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v68 = *(v0 + 584);
        v69 = *(v0 + 576);
        v70 = *(v0 + 568);
        v95(v68, *(v0 + 512), v70);
        v71 = sub_1004D968C();
        (*(v69 + 8))(v68, v70);
      }

      else
      {
        v71 = **(v0 + 512);
      }

      v72 = *(v0 + 632);
      sub_1000108DC(*(v0 + 472), v72, &qword_1006359A0);
      v73 = type metadata accessor for Actions.MetricsReportingContext();
      v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
      v75 = *(v0 + 632);
      if (v74 == 1)
      {
        sub_10001074C(*(v0 + 632), &qword_1006359A0);
        v76 = 0;
      }

      else
      {
        v77 = *v75;
        v78 = v75[1];
        sub_100046F14(*v75, v78);
        sub_1000C1058(v75, type metadata accessor for Actions.MetricsReportingContext);
        if (v78 == 12)
        {
          v76 = 0;
        }

        else
        {
          MetricsEvent.Click.ActionContext.rawValue.getter(v77, v78);
          sub_100046F70(v77, v78);
          v76 = sub_1004DD3FC();
        }
      }

      v79 = *(v0 + 552);
      v80 = *(v0 + 504);
      [v71 setPlayActivityFeatureName:v76];

      sub_1000C0EA8(v79, v80, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v81 = *(v0 + 584);
        v82 = *(v0 + 576);
        v83 = *(v0 + 568);
        v95(v81, *(v0 + 504), v83);
        v84 = sub_1004D968C();
        (*(v82 + 8))(v81, v83);
      }

      else
      {
        v84 = **(v0 + 504);
      }

      [v84 setPlayActivityRecommendationData:0];

      v85 = swift_task_alloc();
      *(v0 + 744) = v85;
      *v85 = v0;
      v85[1] = sub_1000B4BC0;
      v86 = *(v0 + 552);

      return PlaybackController.add(_:route:)(v86, 0);
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_10001074C(v0 + 56, &qword_1006363F8);

      v17 = *(v0 + 8);

      return v17();
    }
  }

  v37 = v36;
  v38 = *(v0 + 640);
  v40 = *(v0 + 464);
  v39 = *(v0 + 472);
  v41 = type metadata accessor for Actions.PlaybackContext();
  v42 = (v40 + *(v41 + 24));
  v43 = *v42;
  v44 = v42[1];
  v45 = v42[2];
  v46 = v42[3];
  sub_100061320(*v42, v44, v45, v46);
  sub_100219684(v43, v44, v45, v46);
  sub_10006136C(v43, v44, v45, v46);
  sub_1000108DC(v39, v38, &qword_1006359A0);
  v47 = type metadata accessor for Actions.MetricsReportingContext();
  v48 = (*(*(v47 - 8) + 48))(v38, 1, v47);
  v49 = *(v0 + 640);
  if (v48 == 1)
  {
    sub_10001074C(*(v0 + 640), &qword_1006359A0);
    v50 = 0;
  }

  else
  {
    v90 = *v49;
    v91 = v49[1];
    sub_100046F14(*v49, v91);
    sub_1000C1058(v49, type metadata accessor for Actions.MetricsReportingContext);
    if (v91 == 12)
    {
      v50 = 0;
    }

    else
    {
      MetricsEvent.Click.ActionContext.rawValue.getter(v90, v91);
      sub_100046F70(v90, v91);
      v50 = sub_1004DD3FC();
    }
  }

  v92 = *(v0 + 464);
  [v37 setPlayActivityFeatureName:v50];

  [v37 setPlayActivityRecommendationData:0];
  v93 = *(v41 + 28);
  v94 = swift_task_alloc();
  *(v0 + 720) = v94;
  *v94 = v0;
  v94[1] = sub_1000B46F8;

  return PlaybackController.insert(_:location:issuer:)(v37, 0, v92 + v93);
}

uint64_t sub_1000B46F8()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_1000B509C;
  }

  else
  {
    v2 = sub_1000B480C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B480C()
{
  v1 = v0[78];
  v2 = v0[76];
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_1000C1058(v2, type metadata accessor for Notice.Variant);
  sub_1004DDA4C();
  v0[92] = sub_1004DDA3C();
  v4 = sub_1004DD9BC();

  return _swift_task_switch(sub_1000B48E0, v4, v3);
}

uint64_t sub_1000B48E0()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10025A524((v0 + 42));

    v3 = v0[45];
    v4 = v0[78];
    if (v3)
    {
      v5 = v0[46];
      sub_100008C70(v0 + 42, v0[45]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_1000C1058(v4, type metadata accessor for Notice);
      sub_100008D24((v0 + 42));
    }

    else
    {
      sub_1000C1058(v0[78], type metadata accessor for Notice);
      sub_10001074C((v0 + 42), &qword_100635A30);
    }
  }

  else
  {
    sub_1000C1058(v0[78], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_1000B4A30, 0, 0);
}

uint64_t sub_1000B4A30()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000B4BC0()
{
  *(*v1 + 752) = v0;

  if (v0)
  {
    v2 = sub_1000B5388;
  }

  else
  {
    v2 = sub_1000B4CD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B4CD4()
{
  v1 = v0[77];
  v2 = v0[76];
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_1000C1058(v2, type metadata accessor for Notice.Variant);
  sub_1004DDA4C();
  v0[95] = sub_1004DDA3C();
  v4 = sub_1004DD9BC();

  return _swift_task_switch(sub_1000B4DA8, v4, v3);
}

uint64_t sub_1000B4DA8()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10025A524((v0 + 37));

    v3 = v0[40];
    v4 = v0[77];
    if (v3)
    {
      v5 = v0[41];
      sub_100008C70(v0 + 37, v0[40]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_1000C1058(v4, type metadata accessor for Notice);
      sub_100008D24((v0 + 37));
    }

    else
    {
      sub_1000C1058(v0[77], type metadata accessor for Notice);
      sub_10001074C((v0 + 37), &qword_100635A30);
    }
  }

  else
  {
    sub_1000C1058(v0[77], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_1000B4EF8, 0, 0);
}

uint64_t sub_1000B4EF8()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  sub_1000C1058(v0[69], type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v1, v3);
  sub_100008D24((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000B509C()
{
  v17 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 728);
  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v6 = sub_1004D966C();
  sub_100035430(v6, static Logger.actions);
  swift_errorRetain();
  v7 = sub_1004D964C();
  v8 = sub_1004DDF7C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    *(v0 + 432) = v5;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v11 = sub_1004DD4DC();
    v13 = sub_1000343A8(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to Create Station with error=%{public}s", v9, 0xCu);
    sub_100008D24(v10);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000B5388()
{
  v16 = v0;
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  sub_1000C1058(v0[69], type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v1, v3);
  sub_100008D24((v0 + 2));
  v4 = v0[94];
  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v5 = sub_1004D966C();
  sub_100035430(v5, static Logger.actions);
  swift_errorRetain();
  v6 = sub_1004D964C();
  v7 = sub_1004DDF7C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v0[54] = v4;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v10 = sub_1004DD4DC();
    v12 = sub_1000343A8(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to Create Station with error=%{public}s", v8, 0xCu);
    sub_100008D24(v9);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000B5688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_100004CB8(&qword_100635248);
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
  sub_100004CB8(&qword_100634B30);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000B589C, 0, 0);
}

uint64_t sub_1000B589C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_1000108DC(*(v0 + 96), v3, &qword_1006359A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 240), &qword_1006359A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_1000C0FF0(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = sub_1004D809C();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100004CB8(&qword_100635BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1005126C0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 4;
    *(v0 + 312) = sub_10004B4B4(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1004DDA4C();
    *(v0 + 336) = sub_1004DDA3C();
    v18 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000B5BA0, v18, v17);
  }
}

uint64_t sub_1000B5BA0()
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
  *(v6 + 16) = 3077;
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
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
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

    sub_1000C1058(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 168), &qword_100635248);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1000C1058(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_10001074C(*(v0 + 160), &qword_100635248);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_1000108DC(v36 + v14[6], *(v0 + 216), &qword_100634B30);
    sub_1000C1058(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_100047F38(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_100634B30);
  sub_1000108DC(v37, v38, &qword_100635248);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 152), &qword_100635248);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1000C1058(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    sub_10001074C(v45, &qword_100635248);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1000C1058(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 136), &qword_100635248);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1000C1058(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    sub_10001074C(v58, &qword_100635248);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1000C1058(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000C0FF0(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
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
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_1000C1058(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30);

  return _swift_task_switch(sub_1000B6358, 0, 0);
}

uint64_t sub_1000B6358()
{
  sub_1000C1058(*(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Actions.CreateStation.Context.menuItemTitle.getter()
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

uint64_t (*Actions.CreateStation.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x80000001004EB230;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x80000001004EB230;
  return sub_10007455C;
}

uint64_t (*sub_1000B6718())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x80000001004EB230;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x80000001004EB230;
  return sub_10007455C;
}

double static Actions.Playback.action(context:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000BFEA4(a1, v7);
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

uint64_t sub_1000B681C(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 24) + **(a2 + 24));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100035C88;

  return v5();
}

double sub_1000B6904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v16[0] = *a1;
  v4 = *(a1 + 32);
  v16[1] = v3;
  v16[2] = v4;
  v17 = *(a1 + 48);
  sub_1000BFEA4(v16, v9);
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

uint64_t sub_1000B69B0(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 40) + **(a2 + 40));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100035C88;

  return v5();
}

uint64_t sub_1000B6A98(uint64_t a1)
{
  v4 = (*(a1 + 56) + **(a1 + 56));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return v4();
}

__n128 sub_1000B6B80@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v12 = *(a1 + 64);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  sub_1000BE470(v11, v9);
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
  v21 = sub_100004CB8(&qword_100636340);
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

  v32 = sub_1004DC32C();
  v33 = *(*(v32 - 8) + 56);
  v73 = v28;
  v33(v28, v31, 1, v32);
  v76 = type metadata accessor for Actions.PlaybackContext;
  v68 = v20;
  sub_1000C0EA8(a2, v20, type metadata accessor for Actions.PlaybackContext);
  v67 = v26;
  sub_1000108DC(v28, v26, &qword_100636340);
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
  sub_1000C0FF0(v68, v43, type metadata accessor for Actions.PlaybackContext);
  sub_100047F38(v67, v44 + v39, &qword_100636340);
  v45 = *(v34 + 32);
  v91 = v34 + 32;
  v85 = v45;
  (v45)(v44 + ((v22 + v40 + v39) & ~v40), v87, v35);
  *(v44 + v66) = v90;
  v46 = v79;
  sub_100047F38(v73, v79, &qword_100636340);
  v47 = v80;
  v72(v80, v86, v35);
  sub_1000C0EA8(v88, v89, v76);
  v48 = (v38 + 32) & ~v38;
  v49 = (v70 + v48) & ~v40;
  v50 = (v69 + v36 + v49) & ~v36;
  v51 = (v74 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v92;
  *(v52 + 16) = v35;
  *(v52 + 24) = v53;
  sub_100047F38(v46, v52 + v48, &qword_100636340);
  v54 = v85;
  (v85)(v52 + v49, v47, v35);
  sub_1000C0FF0(v89, v52 + v50, v75);
  v55 = v90;
  *(v52 + v51) = v90;
  v56 = v81;
  v54(v81, v86, v35);
  v57 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v59 = (*(v57 + 64) + v40 + v58) & ~v40;
  v60 = (v78 + v59) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v92;
  *(v61 + 16) = v35;
  *(v61 + 24) = v62;
  sub_100047F38(v82, v61 + v58, &qword_1006359A0);
  (v85)(v61 + v59, v56, v35);
  *(v61 + v60) = v55;
  result = sub_1000C1058(v88, type metadata accessor for Actions.PlaybackContext);
  v64 = v83;
  *v83 = v55;
  v64[1] = sub_1000C027C;
  v64[2] = v77;
  v64[3] = &unk_1005187A0;
  v64[4] = v52;
  v64[5] = &unk_1005187B0;
  v64[6] = v61;
  return result;
}

unint64_t sub_1000B7340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v94 = a4;
  v95 = a6;
  v98 = a2;
  v99 = a3;
  v8 = sub_1004DC31C();
  v87 = *(v8 - 8);
  v88 = v8;
  v9 = __chkstk_darwin(v8);
  v85 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v86 = &v84 - v12;
  __chkstk_darwin(v11);
  v90 = &v84 - v13;
  v14 = sub_1004D8F4C();
  v92 = *(v14 - 8);
  v93 = v14;
  __chkstk_darwin(v14);
  v91 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004CB8(&qword_1006363C8);
  v17 = __chkstk_darwin(v16 - 8);
  v96 = &v84 - v18;
  v100 = a5;
  v97 = *(a5 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v84 - v22;
  v24 = sub_100004CB8(&qword_100636340);
  __chkstk_darwin(v24 - 8);
  v26 = &v84 - v25;
  v27 = sub_1004DC32C();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v84 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v89 = &v84 - v32;
  __chkstk_darwin(v31);
  v34 = &v84 - v33;
  v35 = sub_100004CB8(&qword_100635990);
  __chkstk_darwin(v35 - 8);
  v37 = &v84 - v36;
  v38 = type metadata accessor for Actions.PlaybackContext();
  sub_1000108DC(a1 + *(v38 + 20), v37, &qword_100635990);
  v39 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  LODWORD(a1) = (*(*(v39 - 8) + 48))(v37, 1, v39);
  sub_10001074C(v37, &qword_100635990);
  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  sub_1000108DC(v98, v26, &qword_100636340);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_10001074C(v26, &qword_100636340);
    v101 = 0;
    v102 = 0xE000000000000000;
    sub_1004DEAAC(37);

    v101 = 0xD000000000000023;
    v102 = 0x80000001004EB2D0;
    (*(v97 + 16))(v23, v99, v100);
    v103._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v103);

    return v101;
  }

  v41 = v28;
  v42 = *(v28 + 32);
  v43 = v34;
  v98 = v27;
  v42(v34, v26, v27);
  v45 = v99;
  v44 = v100;
  v46 = sub_1000B7E04(v99, v94, v100);
  (*(v97 + 16))(v21, v45, v44);
  v47 = sub_1004D8F9C();
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
    sub_1004D8F5C();
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
    sub_10001074C(v48, &qword_1006363C8);
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
      if (qword_100633A88 != -1)
      {
        swift_once();
      }

      v79 = v41;
      v80 = sub_1004D966C();
      sub_100035430(v80, static Logger.actions);
      v81 = sub_1004D964C();
      v82 = sub_1004DDF8C();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "Unknown playability status", v83, 2u);
      }

      v101 = 0;
      v102 = 0xE000000000000000;
      sub_1004DEAAC(18);

      v101 = 0xD000000000000010;
      v102 = 0x80000001004EB320;
      v64(v84, v43, v63);
      v105._countAndFlagsBits = sub_1004DD4DC();
      sub_1004DD5FC(v105);

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
  sub_1004DEAAC(26);

  v101 = 0xD000000000000018;
  v102 = 0x80000001004EB340;
  v74 = v90;
  v71(v85, v90, v68);
  v104._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v104);

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

BOOL sub_1000B7E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v55 = a1;
  v4 = sub_1004D8F4C();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1004D8F9C();
  v41 = *(v46 - 8);
  v6 = __chkstk_darwin(v46);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = &v38 - v8;
  v49 = sub_1004DCD1C();
  v44 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1004DC95C();
  v47 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004DC2DC();
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004DD05C();
  v54 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004DCA0C();
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
      sub_1004D8F5C();
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

uint64_t sub_1000B8558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a5;
  v6[34] = a6;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  v8 = sub_1004D96BC();
  v6[35] = v8;
  v6[36] = *(v8 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = type metadata accessor for PlaybackIntentDescriptor(0);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  sub_100004CB8(&qword_100635990);
  v6[41] = swift_task_alloc();
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6[42] = v9;
  v6[43] = *(v9 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v10 = sub_1004D8F4C();
  v6[48] = v10;
  v6[49] = *(v10 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = *(a5 - 8);
  v6[52] = swift_task_alloc();
  sub_100004CB8(&qword_1006363C8);
  v6[53] = swift_task_alloc();
  v11 = sub_1004DC32C();
  v6[54] = v11;
  v6[55] = *(v11 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = sub_100004CB8(&qword_1006363D0);
  v6[58] = swift_task_alloc();
  sub_100004CB8(&qword_100636340);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return _swift_task_switch(sub_1000B88D8, 0, 0);
}

uint64_t sub_1000B88D8()
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
  sub_1000108DC(v6, v2, &qword_100636340);
  sub_1000108DC(v1, v2 + v7, &qword_100636340);
  v8 = *(v5 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    v9 = *(v0 + 432);
    sub_10001074C(*(v0 + 480), &qword_100636340);
    if (v8(v2 + v7, 1, v9) == 1)
    {
      sub_10001074C(*(v0 + 464), &qword_100636340);
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(v0 + 432);
    sub_1000108DC(*(v0 + 464), *(v0 + 472), &qword_100636340);
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
      sub_1000C1140(&qword_1006363E0, &type metadata accessor for MusicPlayer.PlayabilityStatus);
      v36 = sub_1004DD35C();
      v37 = *(v34 + 8);
      v37(v33, v35);
      sub_10001074C(v13, &qword_100636340);
      v37(v12, v35);
      sub_10001074C(v32, &qword_100636340);
      if (v36)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    v14 = *(v0 + 432);
    v15 = *(v0 + 440);
    sub_10001074C(*(v0 + 480), &qword_100636340);
    (*(v15 + 8))(v12, v14);
  }

  sub_10001074C(*(v0 + 464), &qword_1006363D0);
LABEL_7:
  v16 = *(*(v0 + 408) + 16);
  v16(*(v0 + 416), *(v0 + 240), *(v0 + 264));
  v17 = sub_1004D8F9C();
  v18 = swift_dynamicCast();
  v19 = *(*(v17 - 8) + 56);
  v20 = *(v0 + 424);
  if (!v18)
  {
    v19(*(v0 + 424), 1, 1, v17);
    sub_10001074C(v20, &qword_1006363C8);
LABEL_12:
    v29 = *(v0 + 264);
    v28 = *(v0 + 272);
    v30 = *(v0 + 240);
    *(v0 + 40) = v29;
    *(v0 + 48) = *(v28 + 8);
    v31 = sub_1000357EC((v0 + 16));
    v16(v31, v30, v29);
    *(v0 + 56) = 0;
    _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 16);
    sub_1000741FC(v0 + 16);
LABEL_16:

    v43 = *(v0 + 8);

    return v43();
  }

  v21 = *(v17 - 8);
  v23 = *(v0 + 392);
  v22 = *(v0 + 400);
  v24 = *(v0 + 384);
  v19(*(v0 + 424), 0, 1, v17);
  sub_1004D8F5C();
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
  sub_1000108DC(v41 + *(v42 + 20), v40, &qword_100635990);
  if ((*(v39 + 48))(v40, 1, v38) == 1)
  {
    sub_10001074C(*(v0 + 328), &qword_100635990);
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
  sub_1000C0FF0(*(v0 + 328), v46, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_1000C0EA8(v46, v47, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  *(v0 + 88) = v51;
  *(v0 + 96) = *(v50 + 8);
  v52 = sub_1000357EC((v0 + 64));
  (*(v45 + 16))(v52, v79, v51);
  sub_1000108DC(v80 + *(v42 + 28), v0 + 104, &qword_100635998);
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
  sub_1000C0EA8(v47, v49, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_1000C0EA8(v49, v81, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v56 = *(v0 + 360);
  if (EnumCaseMultiPayload == 1)
  {
    v58 = *(v0 + 288);
    v57 = *(v0 + 296);
    v59 = *(v0 + 280);
    v60 = *(v0 + 256);
    (*(v58 + 32))(v57, v56, v59);
    v61 = sub_1004D968C();
    [v61 setShuffleMode:v60];

    (*(v58 + 8))(v57, v59);
  }

  else
  {
    v62 = *v56;
    [*v56 setShuffleMode:*(v0 + 256)];
  }

  sub_1000C0EA8(*(v0 + 312), *(v0 + 352), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v63 = swift_getEnumCaseMultiPayload();
  v64 = *(v0 + 352);
  if (v63 == 1)
  {
    v66 = *(v0 + 288);
    v65 = *(v0 + 296);
    v67 = *(v0 + 280);
    (*(v66 + 32))(v65, v64, v67);
    v68 = sub_1004D968C();
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
  sub_1000C0F10(v0 + 64, v53);
  *(v70 + *(v71 + 20)) = 2;
  *(v70 + *(v71 + 24)) = 0;
  sub_1000108DC(v0 + 104, v0 + 184, &qword_100635998);
  if (*(v0 + 208))
  {
    sub_100035850((v0 + 184), v0 + 144);
  }

  else
  {
    *(v0 + 224) = 0;
    sub_100004CB8(&qword_1006363D8);
    v72 = sub_1004DD50C();
    *(v0 + 168) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 176) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 144) = v72;
    *(v0 + 152) = v73;
    if (*(v0 + 208))
    {
      sub_10001074C(v0 + 184, &qword_100635998);
    }
  }

  v74 = *(v0 + 368);
  v76 = *(v0 + 312);
  v75 = *(v0 + 320);
  sub_1000C0F80(v0 + 144, v54);
  sub_10001074C(v0 + 104, &qword_100635998);
  sub_1000C1058(v74, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_10001074C(v0 + 64, &qword_100639FE0);
  sub_1000C0FF0(v76, v75, type metadata accessor for PlaybackIntentDescriptor);
  v77 = swift_task_alloc();
  *(v0 + 488) = v77;
  *v77 = v0;
  v77[1] = sub_1000B92A8;
  v78 = *(v0 + 320);

  return PlaybackController.add(_:route:)(v78, 0);
}

uint64_t sub_1000B92A8()
{

  if (v0)
  {

    v1 = sub_1000C1290;
  }

  else
  {
    v1 = sub_1000B93C0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000B93C0()
{
  v1 = v0[47];
  sub_1000C1058(v0[40], type metadata accessor for PlaybackIntentDescriptor);
  sub_1000C1058(v1, type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000B9520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_100004CB8(&qword_100635248);
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
  sub_100004CB8(&qword_100634B30);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000B9738, 0, 0);
}

uint64_t sub_1000B9738()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_1000108DC(*(v0 + 72), v3, &qword_1006359A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 224), &qword_1006359A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 96);
    sub_1000C0FF0(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 264) = v8;
    v9 = sub_1004D809C();
    *(v0 + 272) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 280) = v11;
    *(v0 + 288) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100004CB8(&qword_100635BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 296) = sub_10004B4B4(inited);
    *(v0 + 304) = v14;
    *(v0 + 312) = v15;
    *(v0 + 328) = v16;
    swift_setDeallocating();
    sub_10007FCDC(inited + 32);
    sub_1004DDA4C();
    *(v0 + 320) = sub_1004DDA3C();
    v18 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000B9A28, v18, v17);
  }
}

uint64_t sub_1000B9A28()
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
  sub_1000108DC(v3, v4, &qword_100634B30);
  v10 = *(v1 + v2[7]);
  v11 = *v1;
  v12 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248);
  v84 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v13 = (v6 + v5[20]);
  *v13 = 0;
  v13[1] = 0;
  *v6 = v77;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v74;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30);
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
  sub_1000108DC(v7, v75, &qword_100635248);
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

    sub_100046F14(v78, v80);

    sub_100047EC8(v21, v19, v20, v18, SBYTE1(v18));
    sub_10001074C(v22, &qword_100635248);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_100046F14(v78, v80);

    sub_100047EC8(v21, v19, v20, v18, SBYTE1(v18));

    sub_1000C1058(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_1000108DC(v25, v26, &qword_100635248);
  v28 = v82(v26, 1, v16);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_10001074C(*(v0 + 152), &qword_100635248);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_1000C1058(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_1000108DC(v32, v33, &qword_100635248);
  if (v82(v33, 1, v16) == 1)
  {
    v35 = *(v0 + 280);
    v36 = *(v0 + 272);
    v37 = *(v0 + 200);
    sub_10001074C(*(v0 + 144), &qword_100635248);
    v35(v37, 1, 1, v36);
  }

  else
  {
    v38 = *(v0 + 144);
    sub_1000108DC(v38 + v16[6], *(v0 + 200), &qword_100634B30);
    sub_1000C1058(v38, type metadata accessor for MetricsEvent.Page);
  }

  v39 = *(v0 + 168);
  v40 = *(v0 + 136);
  sub_100047F38(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_100634B30);
  sub_1000108DC(v39, v40, &qword_100635248);
  v41 = v82(v40, 1, v16);
  v42 = *(v0 + 136);
  if (v41 == 1)
  {
    sub_10001074C(*(v0 + 136), &qword_100635248);
    v43 = 0;
  }

  else
  {
    v43 = *(v42 + v16[7]);

    sub_1000C1058(v42, type metadata accessor for MetricsEvent.Page);
  }

  v44 = *(v0 + 168);
  v45 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v43;
  sub_1000108DC(v44, v45, &qword_100635248);
  v46 = v82(v45, 1, v16);
  v47 = *(v0 + 128);
  if (v46 == 1)
  {
    sub_10001074C(v47, &qword_100635248);
    v48 = 1;
  }

  else
  {
    v48 = *(v47 + v16[9]);
    sub_1000C1058(v47, type metadata accessor for MetricsEvent.Page);
  }

  v49 = *(v0 + 168);
  v50 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v48;
  sub_1000108DC(v49, v50, &qword_100635248);
  v51 = v82(v50, 1, v16);
  v52 = *(v0 + 120);
  if (v51 == 1)
  {
    sub_10001074C(*(v0 + 120), &qword_100635248);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v55 = (v52 + v16[8]);
    v53 = *v55;
    v54 = v55[1];

    sub_1000C1058(v52, type metadata accessor for MetricsEvent.Page);
  }

  v56 = *(v0 + 168);
  v57 = *(v0 + 112);
  v58 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v58 = v53;
  v58[1] = v54;
  sub_100047F38(v56, v57, &qword_100635248);
  v59 = v82(v57, 1, v16);
  v60 = *(v0 + 112);
  if (v59 == 1)
  {
    sub_10001074C(v60, &qword_100635248);
    v61 = 2;
  }

  else
  {
    v61 = *(v60 + v16[11]);
    sub_1000C1058(v60, type metadata accessor for MetricsEvent.Page);
  }

  v62 = *(v0 + 184);
  v63 = *(v0 + 192);
  v64 = *(v0 + 176);
  *(v62 + *(v64 + 68)) = v61;
  *(v62 + *(v64 + 44)) = v84;
  sub_1000C0FF0(v62, v63, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
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
  sub_1000742B8(v67, v66, v65, v72, SBYTE1(v72));
  sub_1000C1058(v71, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v70, &qword_100634B30);

  return _swift_task_switch(sub_1000C128C, 0, 0);
}

uint64_t sub_1000BA200(uint64_t *a1, void (*a2)(char *, uint64_t, uint64_t), void *a3, uint64_t a4, uint64_t a5)
{
  v32[1] = a5;
  v37 = a2;
  v38 = a4;
  v36 = a3;
  v6 = sub_1004DC32C();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v33 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004D96BC();
  v32[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004CB8(&qword_100635990);
  __chkstk_darwin(v11 - 8);
  v13 = v32 - v12;
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = v32 - v19;
  v21 = type metadata accessor for Actions.PlaybackContext();
  sub_1000108DC(a1 + *(v21 + 20), v13, &qword_100635990);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_1000C0FF0(v13, v20, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v23 = *a1;
    v24 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
    swift_beginAccess();
    if (*(v23 + v24))
    {
      sub_1000C0EA8(v20, v18, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = v32[0];
        (*(v32[0] + 32))(v10, v18, v8);

        v26 = sub_1004D968C();
        (*(v25 + 8))(v10, v8);
      }

      else
      {
        v26 = *v18;
      }

      v27 = v36;
      sub_10006CEB0(v36);
      v28 = v26;
      v29 = sub_100214240(v28, v27);

      if (v29)
      {
        Player.state<A>(for:)(v37);
        v30 = v33;
        MusicItemState.playabilityStatus.getter();

        v22 = sub_1000B322C();

        sub_1000C1220(v27);
        (*(v34 + 8))(v30, v35);
LABEL_12:
        sub_1000C1058(v20, type metadata accessor for PlaybackIntentDescriptor.IntentType);
        return v22;
      }

      v40 = 0;
      v41 = 0xE000000000000000;
      sub_1004DEAAC(34);
      v43._countAndFlagsBits = 0xD000000000000020;
      v43._object = 0x80000001004EB4B0;
      sub_1004DD5FC(v43);
      v39 = v27;
      sub_1004DEC6C();

      sub_1000C1220(v27);
    }

    else
    {
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_1004DEAAC(39);
      v42._countAndFlagsBits = 0xD000000000000025;
      v42._object = 0x80000001004EB480;
      sub_1004DD5FC(v42);
      sub_1004DF02C();
    }

    v22 = v40;
    goto LABEL_12;
  }

  v22 = 0xD000000000000012;
  sub_10001074C(v13, &qword_100635990);
  return v22;
}

uint64_t sub_1000BA700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  type metadata accessor for Notice(0);
  v3[11] = swift_task_alloc();
  v4 = sub_1004D96BC();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_100004CB8(&qword_100635990);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000BA890, 0, 0);
}

uint64_t sub_1000BA890()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[8];
  v5 = type metadata accessor for Actions.PlaybackContext();
  sub_1000108DC(v4 + *(v5 + 20), v3, &qword_100635990);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(v0[15], &qword_100635990);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[18];
    v8 = v0[19];
    sub_1000C0FF0(v0[15], v8, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_1000C0EA8(v8, v9, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = v0[18];
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v0[13];
      v12 = v0[14];
      v14 = v0[12];
      (*(v13 + 32))(v12, v11, v14);
      v15 = sub_1004D968C();
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
    v18[1] = sub_1000BAAE0;
    v19 = v0[9];

    return PlaybackController.insert(_:location:issuer:)(v15, v19, v16 + v17);
  }
}

uint64_t sub_1000BAAE0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1000BAE9C;
  }

  else
  {

    v3 = sub_1000BABFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000BABFC()
{
  Player.InsertCommand.Location.notice.getter(*(v0 + 88));
  sub_1004DDA4C();
  *(v0 + 184) = sub_1004DDA3C();
  v2 = sub_1004DD9BC();

  return _swift_task_switch(sub_1000BAC9C, v2, v1);
}

uint64_t sub_1000BAC9C()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10025A524((v0 + 2));

    v3 = v0[5];
    v4 = v0[11];
    if (v3)
    {
      v5 = v0[6];
      sub_100008C70(v0 + 2, v0[5]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_1000C1058(v4, type metadata accessor for Notice);
      sub_100008D24((v0 + 2));
    }

    else
    {
      sub_1000C1058(v0[11], type metadata accessor for Notice);
      sub_10001074C((v0 + 2), &qword_100635A30);
    }
  }

  else
  {
    sub_1000C1058(v0[11], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_1000BADEC, 0, 0);
}

uint64_t sub_1000BADEC()
{
  sub_1000C1058(*(v0 + 152), type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BAE9C()
{
  v15 = v0;

  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, static Logger.actions);
  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

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
    sub_100004CB8(&qword_100638980);
    v9 = sub_1004DD4DC();
    v11 = sub_1000343A8(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to perform add to queue with error=%{public}s", v7, 0xCu);
    sub_100008D24(v8);
  }

  else
  {
  }

  sub_1000C1058(v6, type metadata accessor for PlaybackIntentDescriptor.IntentType);

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
  return sub_1000C1058(v4, type metadata accessor for Notice.Variant);
}

uint64_t sub_1000BB190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_100004CB8(&qword_100635248);
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
  sub_100004CB8(&qword_100634B30);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000BB3A8, 0, 0);
}

uint64_t sub_1000BB3A8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_1000108DC(*(v0 + 72), v3, &qword_1006359A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 224), &qword_1006359A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 88);
    sub_1000C0FF0(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v6);
    *(v0 + 264) = v8;
    if (v7 >= 4)
    {
      return sub_1004DECCC();
    }

    else
    {
      *(v0 + 330) = 0x20062122u >> (8 * v7);
      v9 = *(v0 + 216);
      v10 = *(v0 + 96);
      v11 = sub_1004D809C();
      *(v0 + 272) = v11;
      v12 = *(v11 - 8);
      v13 = *(v12 + 56);
      *(v0 + 280) = v13;
      *(v0 + 288) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v13(v9, 1, 1, v11);
      sub_100004CB8(&qword_100635BA8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100511DA0;
      *(inited + 32) = MusicItem.metricsContentType.getter(v10);
      *(inited + 40) = v15;
      *(inited + 48) = 0;
      *(v0 + 296) = sub_10004B4B4(inited);
      *(v0 + 304) = v16;
      *(v0 + 312) = v17;
      *(v0 + 328) = v18;
      swift_setDeallocating();
      sub_10007FCDC(inited + 32);
      sub_1004DDA4C();
      *(v0 + 320) = sub_1004DDA3C();
      v20 = sub_1004DD9BC();

      return _swift_task_switch(sub_1000BB728, v20, v19);
    }
  }
}

uint64_t sub_1000BB728()
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

  sub_1000108DC(v3, v4, &qword_100634B30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = v78;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v81;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30);
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
  sub_1000108DC(v7, v75, &qword_100635248);
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

    sub_100046F14(v82, v80);

    sub_100047EC8(v21, v19, v20, v18, SBYTE1(v18));
    sub_10001074C(v22, &qword_100635248);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_100046F14(v82, v80);

    sub_100047EC8(v21, v19, v20, v18, SBYTE1(v18));

    sub_1000C1058(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_1000108DC(v25, v26, &qword_100635248);
  v28 = v16(v26, 1, v15);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_10001074C(*(v0 + 152), &qword_100635248);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_1000C1058(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_1000108DC(v32, v33, &qword_100635248);
  if (v16(v33, 1, v15) == 1)
  {
    v35 = v16;
    v36 = *(v0 + 280);
    v37 = *(v0 + 272);
    v38 = *(v0 + 200);
    sub_10001074C(*(v0 + 144), &qword_100635248);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    sub_1000108DC(v39 + v15[6], *(v0 + 200), &qword_100634B30);
    sub_1000C1058(v39, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  sub_100047F38(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_100634B30);
  sub_1000108DC(v40, v41, &qword_100635248);
  v42 = v16(v41, 1, v15);
  v43 = *(v0 + 136);
  if (v42 == 1)
  {
    sub_10001074C(*(v0 + 136), &qword_100635248);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_1000C1058(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v44;
  sub_1000108DC(v45, v46, &qword_100635248);
  v47 = v16(v46, 1, v15);
  v48 = *(v0 + 128);
  if (v47 == 1)
  {
    sub_10001074C(v48, &qword_100635248);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_1000C1058(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v49;
  sub_1000108DC(v50, v51, &qword_100635248);
  v52 = v16(v51, 1, v15);
  v53 = *(v0 + 120);
  if (v52 == 1)
  {
    sub_10001074C(*(v0 + 120), &qword_100635248);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_1000C1058(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 168);
  v58 = *(v0 + 112);
  v59 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_100047F38(v57, v58, &qword_100635248);
  v60 = v16(v58, 1, v15);
  v61 = *(v0 + 112);
  if (v60 == 1)
  {
    sub_10001074C(v61, &qword_100635248);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_1000C1058(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  sub_1000C0FF0(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
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
  sub_1000742B8(v68, v67, v66, v73, SBYTE1(v73));
  sub_1000C1058(v72, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v71, &qword_100634B30);

  return _swift_task_switch(sub_1000BBF0C, 0, 0);
}

uint64_t sub_1000BBF0C()
{
  sub_1000C1058(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

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
  return sub_10007455C;
}

uint64_t (*sub_1000BC158())()
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
  return sub_10007455C;
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

  return sub_10007455C;
}

uint64_t (*sub_1000BC374())()
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

  return sub_10007455C;
}

uint64_t sub_1000BC44C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a1 = v3;
  return result;
}

uint64_t sub_1000BC4CC(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_1004D9B7C();
}

uint64_t sub_1000BC54C()
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
      v10 = sub_1004D96BC();
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
      sub_100010598(v11[2], v12);
    }
  }

  v13 = v7 + v2[7];
  if (*(v13 + 24))
  {
    sub_100008D24(v13);
  }

  (*(v4 + 8))(v0 + v5, v16);
  v14 = *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8));
  if (v14 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000BC788()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v6 = *(v0 + ((*(*(v1 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000BA200((v0 + v4), (v0 + v5), v6, v1, v2);
}

uint64_t sub_1000BC884()
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
      v7 = sub_1004D96BC();
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
      sub_100010598(v9[2], v10);
    }
  }

  v11 = v4 + v1[7];
  if (*(v11 + 24))
  {
    sub_100008D24(v11);
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
    sub_10006A898(*(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), v15);
  }

  if (*(v14 + 64))
  {
  }

  if (*(v14 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000BCA88()
{
  v2 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100035C88;

  return sub_1000BA700(v0 + v3, v6, v0 + v5);
}

uint64_t sub_1000BCB98()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100004CB8(&qword_1006359A0) - 8);
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
      v11 = sub_1004D809C();
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

uint64_t sub_1000BCE74()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100035C88;

  return sub_1000BB190(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t sub_1000BCFEC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000BD230();
  }

  return result;
}

uint64_t sub_1000BD044()
{
  v0 = sub_1004DC34C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = sub_1004DC37C();
    __chkstk_darwin(v8);
    v9 = sub_1004DC95C();
    *(&v11 - 2) = v9;
    *(&v11 - 1) = &protocol witness table for Song;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v11 - 2) = v9;
    *(&v11 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    (*(v1 + 16))(v4, v6, v0);
    sub_1004D9B7C();
    return (*(v1 + 8))(v6, v0);
  }

  return result;
}

uint64_t sub_1000BD230()
{
  v78 = sub_1004DC95C();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004DC31C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v72 - v7;
  v9 = sub_1004DC32C();
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

  sub_1004DC35C();

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
    v23 = sub_1004DC30C();
    v24 = *(v3 + 8);
    v74 = (v3 + 8);
    v75 = v2;
    v24(v6, v2);
    if ((v23 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), , sub_1004D9B6C(), , , , v83))
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

      sub_1004D9B7C();
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

      sub_1004D9B7C();
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

    sub_1004D9B6C();

    if (!v83 || (v83, swift_getKeyPath(), swift_getKeyPath(), , sub_1004D9B6C(), , , , (v83 & 1) != 0) || (, v32 = Player.supportsDelegation.getter(), , (v32 & 1) != 0))
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

      sub_1004D9B7C();
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
    sub_1004DC88C();
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

      sub_1004D9B7C();
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

    sub_1004D9B7C();
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

    sub_1004D9B7C();
    v52 = *(v81 + 8);
    v52(v47, v9);
    v52(v48, v9);
    return (v52)(v17, v9);
  }
}

uint64_t sub_1000BDE38()
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

uint64_t _s9MusicCore7ActionsO7PreviewO7ContextV13menuItemTitleSSvg_0()
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

uint64_t sub_1000BE270()
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

uint64_t sub_1000BE470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v11 = v3;
  if (v3 >= 4)
  {
    result = sub_1004DECCC();
    __break(1u);
  }

  else
  {
    v5 = 0x19171816u >> (8 * v3);
    v10 = *(a1 + 8);
    sub_1000C1230(&v11, v9);
    sub_1000108DC(&v10, v9, &unk_100639EB0);
    v6 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v6;
    *(a2 + 64) = *(a1 + 64);
    v7 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v7;
    *(a2 + 72) = v5;
    *(a2 + 80) = sub_1000B6988;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x4014000000000000;
    *(a2 + 104) = &unk_100518B18;
    *(a2 + 112) = 0;
    *(a2 + 120) = &unk_100518B20;
    *(a2 + 128) = 0;
  }

  return result;
}

uint64_t sub_1000BE5CC()
{

  return swift_deallocObject();
}

uint64_t sub_1000BE608()
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

  return sub_1000B0B2C(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_1000BE750()
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
      v9 = sub_1004D96BC();
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
      sub_100010598(v10[2], v11);
    }
  }

  v12 = v6 + v2[7];
  if (*(v12 + 24))
  {
    sub_100008D24(v12);
  }

  (*(v4 + 8))(v0 + ((v3 + v14 + v5) & ~v5), v1);

  return swift_deallocObject();
}

unint64_t sub_1000BE97C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_1000B28FC((v0 + v3), v4, v1);
}

uint64_t sub_1000BEA4C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Actions.PlaybackContext();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  v8 = *(sub_100004CB8(&qword_1006359A0) - 8);
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
      v14 = sub_1004D96BC();
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
      sub_100010598(v16[2], v17);
    }
  }

  v18 = v15 + 7;
  v19 = v11 + v5[7];
  if (*(v19 + 24))
  {
    sub_100008D24(v19);
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
      v26 = sub_1004D809C();
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
    sub_10006A898(*(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32), *(v28 + 40), v29);
  }

  if (*(v28 + 64))
  {
  }

  if (*(v28 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000BEEA8()
{
  v2 = *(v0 + 16);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100035B28;

  return sub_1000B354C(v0 + v3, v0 + v6, v0 + v9, v0 + v10, v2);
}

uint64_t sub_1000BF080()
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

  return sub_1000B5688(v0 + v5, v0 + v6, v2, v3);
}

char *sub_1000BF1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a3;
  v82 = a2;
  v83 = a1;
  v5 = sub_100004CB8(&qword_10063A4C0);
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v75 = &v60 - v6;
  v7 = sub_100004CB8(&qword_100636408);
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v78 = &v60 - v8;
  v9 = sub_100004CB8(&qword_100636410);
  __chkstk_darwin(v9 - 8);
  v81 = &v60 - v10;
  v69 = sub_100004CB8(&unk_10063A4B0);
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v60 - v11;
  v71 = sub_100004CB8(&unk_10063AD70);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v60 - v12;
  v72 = sub_100004CB8(&qword_100636418);
  v65 = *(v72 - 8);
  __chkstk_darwin(v72);
  v64 = &v60 - v13;
  v63 = sub_1004DC34C();
  v62 = *(v63 - 8);
  v14 = __chkstk_darwin(v63);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v60 - v17;
  v61 = sub_100004CB8(&qword_100636420);
  v19 = *(v61 - 1);
  __chkstk_darwin(v61);
  v21 = &v60 - v20;
  v22 = sub_1004DC32C();
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
  sub_1004D9B2C();
  (*(v23 + 8))(v28, v22);
  (*(v19 + 32))(&v4[v29], v21, v61);
  v30 = *(*v4 + 136);
  v31 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v32 = sub_1004DC33C();
  (*(*(v32 - 8) + 104))(v18, v31, v32);
  v33 = v62;
  v34 = v63;
  (*(v62 + 104))(v18, enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:), v63);
  v61 = *(v33 + 16);
  v61(v16, v18, v34);
  v35 = v64;
  sub_1004D9B2C();
  v62 = *(v33 + 8);
  (v62)(v18, v34);
  (*(v65 + 32))(&v4[v30], v35, v72);
  v36 = *(*v4 + 120);
  v37 = sub_1004DC95C();
  v72 = *(v37 - 8);
  (*(v72 + 16))(&v4[v36], v83, v37);
  v38 = v74;
  *(v4 + 2) = v82;
  *(v4 + 3) = v38;

  sub_1000BD230();
  sub_1004DC37C();
  v86 = v37;
  v87 = &protocol witness table for Song;
  swift_getKeyPath();
  v74 = v37;
  v84 = v37;
  v85 = &protocol witness table for Song;
  swift_getKeyPath();
  v61(v16, v18, v34);

  sub_1004D9B7C();
  (v62)(v18, v34);
  v39 = v67;
  sub_1004DC36C();
  sub_1000C10F4();
  v40 = sub_1004DE14C();
  v88 = v40;
  v41 = sub_1004DE12C();
  v42 = *(v41 - 8);
  v43 = v81;
  v65 = *(v42 + 56);
  v64 = (v42 + 56);
  (v65)(v81, 1, 1, v41);
  sub_100042B08(&qword_100636428, &unk_10063A4B0);
  v44 = sub_1000C1140(&qword_10063A440, sub_1000C10F4);
  v45 = v68;
  v46 = v43;
  v47 = v69;
  v63 = v44;
  sub_1004D9BDC();
  sub_10001074C(v46, &qword_100636410);

  (*(v70 + 8))(v39, v47);
  swift_allocObject();
  swift_weakInit();
  sub_100042B08(&unk_10063AD80, &unk_10063AD70);

  v48 = v71;
  sub_1004D9C0C();

  v49 = v66;
  (*(v73 + 8))(v45, v48);
  swift_beginAccess();
  sub_1004DD84C();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004DD8BC();
  }

  sub_1004DD90C();
  swift_endAccess();
  v50 = v75;
  v51 = v82;
  sub_1004DC38C();
  v52 = sub_1004DE14C();
  v88 = v52;
  v53 = v81;
  (v65)(v81, 1, 1, v41);
  sub_100042B08(&qword_100636430, &qword_10063A4C0);
  v54 = v77;
  v55 = v78;
  sub_1004D9BDC();
  sub_10001074C(v53, &qword_100636410);

  (*(v76 + 8))(v50, v54);
  v56 = swift_allocObject();
  swift_weakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v51;
  sub_100042B08(qword_10063AD90, &qword_100636408);

  v58 = v80;
  sub_1004D9C0C();

  (*(v79 + 8))(v55, v58);
  swift_beginAccess();
  sub_1004DD84C();
  if (*((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004DD8BC();
  }

  sub_1004DD90C();
  swift_endAccess();
  (*(v72 + 8))(v83, v74);
  return v4;
}

uint64_t sub_1000BFEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + 64) = sub_1000AE8C4;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_100518940;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_100518948;
  *(a2 + 112) = 0;
}

uint64_t sub_1000BFF5C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v3 + *(*(v2 - 1) + 64);
  v5 = *(sub_100004CB8(&qword_100636340) - 8);
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
      v12 = sub_1004D96BC();
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
      sub_100010598(v13[2], v14);
    }
  }

  v15 = (v4 + v6) & ~v6;
  v16 = v9 + v2[7];
  if (*(v16 + 24))
  {
    sub_100008D24(v16);
  }

  v17 = sub_1004DC32C();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v15, 1, v17))
  {
    (*(v18 + 8))(v0 + v15, v17);
  }

  (*(v7 + 8))(v0 + ((v15 + v20 + v8) & ~v8), v21);

  return swift_deallocObject();
}

unint64_t sub_1000C027C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_100004CB8(&qword_100636340) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v9 = *(v0 + ((*(*(v1 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000B7340(v0 + v4, v0 + v7, v0 + v8, v9, v1, v2);
}

uint64_t sub_1000C03E8()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100004CB8(&qword_100636340) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for Actions.PlaybackContext();
  v8 = (v5 + v6 + *(*(v7 - 1) + 80)) & ~*(*(v7 - 1) + 80);
  v9 = sub_1004DC32C();
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
      v14 = sub_1004D96BC();
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
      sub_100010598(v15[2], v16);
    }
  }

  v17 = v11 + v7[7];
  if (*(v17 + 24))
  {
    sub_100008D24(v17);
  }

  return swift_deallocObject();
}

uint64_t sub_1000C06FC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_100004CB8(&qword_100636340) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(*(v3 - 8) + 64);
  v8 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100035C88;

  return sub_1000B8558(v0 + v5, v0 + v6, v0 + v9, v10, v3, v2);
}

uint64_t sub_1000C08D8()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100004CB8(&qword_1006359A0) - 8);
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

uint64_t sub_1000C0BA4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_100004CB8(&qword_1006359A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100035C88;

  return sub_1000B9520(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t sub_1000C0D8C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000C0DA4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000C0DC8(uint64_t a1, int a2)
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

uint64_t sub_1000C0E10(uint64_t result, int a2, int a3)
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

uint64_t sub_1000C0E70()
{

  return swift_deallocObject();
}

uint64_t sub_1000C0EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C0F10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100639FE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C0F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100635998);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C0FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C1058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_1000C10D4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_1000C10F4()
{
  result = qword_1006372C0;
  if (!qword_1006372C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006372C0);
  }

  return result;
}

uint64_t sub_1000C1140(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C1188()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C11C8()
{

  return swift_deallocObject();
}

void sub_1000C1220(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_1000C1318@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  sub_100004CB8(a1);
  sub_1000DA8A0(a2, a1);
  sub_1004DDCFC();
  sub_1004DDD3C();
  if (v15[4] == v15[0])
  {
    v8 = a3(0);
    return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  }

  else
  {
    v10 = sub_1004DDE1C();
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

  sub_100036140(&v8, &v7);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  *(a2 + 64) = 4;
  *(a2 + 72) = sub_10006D3E4;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &unk_100518B30;
  *(a2 + 104) = 0;
  *(a2 + 112) = &unk_100518B38;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_1000C1654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + 72) = sub_10006D3E4;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &unk_100518B30;
  *(a2 + 104) = 0;
  *(a2 + 112) = &unk_100518B38;
  *(a2 + 120) = 0;
}

uint64_t (*Actions.Share.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x80000001004EB4E0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x80000001004EB4E0;
  return sub_100073BEC;
}

uint64_t sub_1000C17C0()
{

  return swift_deallocObject();
}

uint64_t (*Actions.Share.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x80000001004EB500;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x80000001004EB500;
  return sub_10007455C;
}

uint64_t (*sub_1000C1898())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x80000001004EB4E0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x80000001004EB4E0;
  return sub_10007455C;
}

uint64_t (*sub_1000C1938())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x80000001004EB500;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x80000001004EB500;
  return sub_10007455C;
}

uint64_t Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v45 = a6;
  v37 = a5;
  v40 = a4;
  v41 = a2;
  v42 = a3;
  v11 = sub_1004D83FC();
  __chkstk_darwin(v11 - 8);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DD3EC();
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = __chkstk_darwin(v13);
  v36 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v34 - v16;
  v18 = sub_100004CB8(&qword_1006359A0);
  v35 = *(v18 - 8);
  v19 = *(v35 + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v34 - v20;
  sub_100035868(a1, v47);
  v22 = swift_allocObject();
  sub_100035850(v47, v22 + 16);
  *(v22 + 56) = a2;
  *(v22 + 64) = a3;
  v23 = swift_allocObject();
  v24 = v37;
  v38 = v23;
  *(v23 + 16) = v40;
  *(v23 + 24) = v24;
  sub_1000108DC(v45, v21, &qword_1006359A0);
  v40 = a1;
  sub_100035868(a1, v46);
  v25 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v26 = (v19 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_100047F38(v21, v27 + v25, &qword_1006359A0);
  sub_100035850(v46, v27 + v26);

  sub_1004DD37C();
  (*(v43 + 16))();
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v28 = qword_100671958;
  sub_1004D838C();
  v29 = sub_1004DD4AC();
  v31 = v30;

  sub_10001074C(v45, &qword_1006359A0);
  sub_100008D24(v40);
  result = (*(v43 + 8))(v17, v44);
  *a7 = sub_1000C22C8;
  a7[1] = v22;
  v33 = v38;
  a7[2] = &unk_100518B50;
  a7[3] = v33;
  a7[4] = &unk_100518B60;
  a7[5] = v27;
  a7[6] = v29;
  a7[7] = v31;
  return result;
}

unint64_t sub_1000C1DD0(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v4 = sub_100004CB8(&qword_100634B30);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_1004DC3DC();
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004CB8(&qword_100636738);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  sub_100035868(a1, v39);
  sub_100004CB8(&qword_100636740);
  sub_100004CB8(&qword_100636748);
  if (swift_dynamicCast())
  {
    sub_100035850(v37, v40);
    sub_100008C70(v40, v40[3]);
    sub_1004D8C8C();
    sub_1004DC56C();
    (*(v25 + 8))(v9, v7);
    v14 = sub_1000C22D4();
    (*(v11 + 8))(v13, v10);
    sub_100008D24(v40);
    return v14;
  }

  memset(v37, 0, sizeof(v37));
  v38 = 0;
  sub_10001074C(v37, &qword_100636750);
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
  if ((BYTE1(v36[0]) & 1) == 0)
  {
    return 0xD000000000000010;
  }

  v16 = a1[3];
  v17 = a1[4];
  sub_100008C70(a1, v16);
  (*(v17 + 16))(v16, v17);
  v18 = sub_1004D809C();
  v19 = (*(*(v18 - 8) + 48))(v6, 1, v18);
  sub_10001074C(v6, &qword_100634B30);
  if (v19 != 1)
  {
    return 0;
  }

  sub_100035868(a1, &v27);
  sub_100004CB8(&qword_100635268);
  if (swift_dynamicCast())
  {
    v20 = *(&v29 + 1);
    v21 = v30;
    sub_100008C70(&v28, *(&v29 + 1));
    (*(v21 + 8))(v20, v21);
    v23 = v22;
    sub_100008D24(&v28);
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
    sub_10001074C(&v28, &unk_10063AC70);
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_1000C2280()
{
  sub_100008D24(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_1000C22D4()
{
  v1 = sub_1004DC3CC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v27 = &v24 - v6;
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = sub_100004CB8(&qword_100636738);
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
        sub_1004DEAAC(17);

        v28 = 0x206E776F6E6B6E55;
        v29 = 0xEF206E6F73616572;
        v18(v25, v8, v1);
        v31._countAndFlagsBits = sub_1004DD4DC();
        sub_1004DD5FC(v31);

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
    sub_1004DEAAC(27);

    v28 = 0xD000000000000019;
    v29 = 0x80000001004EB750;
    v16(v13, v26, v9);
    v30._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v30);

    v21 = v28;
    (*(v10 + 8))(v15, v9);
    return v21;
  }

  return 0;
}

uint64_t sub_1000C2778(int *a1)
{
  v1[2] = sub_1004DDA4C();
  v1[3] = sub_1004DDA3C();
  v5 = (a1 + *a1);
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_100053114;

  return v5();
}

uint64_t sub_1000C2888()
{

  return swift_deallocObject();
}

uint64_t sub_1000C28C0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_1000C2778(v2);
}

uint64_t sub_1000C2958(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(sub_1000C2B68, 0, 0);
}