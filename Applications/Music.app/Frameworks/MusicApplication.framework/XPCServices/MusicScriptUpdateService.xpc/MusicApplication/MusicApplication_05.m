uint64_t sub_10007B69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v6 = sub_1004BBA84();
  v3[5] = v6;
  v3[6] = *(v6 - 8);
  v3[7] = swift_task_alloc();
  v7 = sub_1004BBA44();
  v3[8] = v7;
  v3[9] = *(v7 - 8);
  v3[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[11] = v8;
  *v8 = v3;
  v8[1] = sub_10007B808;

  return MusicLibrary.remove(_:from:)(a2, a3);
}

uint64_t sub_10007B808()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10007B954, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10007B954()
{
  v37 = v0;
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v35 = v0[7];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = sub_1004B80B4();
  sub_100007084(v8, static Logger.actions);
  (*(v2 + 16))(v1, v7, v3);
  (*(v4 + 16))(v35, v6, v5);
  swift_errorRetain();
  v9 = sub_1004B8094();
  v10 = sub_1004BC984();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[8];
  v17 = v0[5];
  v16 = v0[6];
  if (v11)
  {
    v32 = v0[12];
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v18 = 136446722;
    v33 = v10;
    v19 = sub_1004BBA04();
    log = v9;
    v21 = v20;
    (*(v12 + 8))(v13, v15);
    v22 = sub_100012018(v19, v21, &v36);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = sub_1004BB964();
    v25 = v24;
    (*(v16 + 8))(v14, v17);
    v26 = sub_100012018(v23, v25, &v36);

    *(v18 + 14) = v26;
    *(v18 + 22) = 2082;
    v0[2] = v32;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v27 = sub_1004BBF04();
    v29 = sub_100012018(v27, v28, &v36);

    *(v18 + 24) = v29;
    _os_log_impl(&_mh_execute_header, log, v33, "Failed to remove entry=%{public}s from playlist=%{public}s with error=%{public}s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v12 + 8))(v13, v15);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_10007BC90(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_100003ABC(&qword_1006014F8);
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
  sub_100003ABC(&qword_100600DE0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10007BEA0, 0, 0);
}

uint64_t sub_10007BEA0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_10000F778(*(v0 + 96), v3, &qword_100601C50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 224), &qword_100601C50);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    sub_1000521DC(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = sub_10002731C();
    *(v0 + 264) = v7;
    v8 = sub_1004B6B04();
    *(v0 + 272) = v8;
    v9 = *(v8 - 8);
    v10 = *(v9 + 56);
    *(v0 + 280) = v10;
    *(v0 + 288) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v10(v6, 1, 1, v8);
    sub_100003ABC(&qword_100601E58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50C0;
    *(inited + 32) = sub_100026940();
    *(inited + 40) = v12;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_1004C4F70;
    *(inited + 72) = 2;
    *(v0 + 296) = sub_100029080(inited);
    *(v0 + 304) = v13;
    *(v0 + 312) = v14;
    *(v0 + 328) = v15;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1004BC474();
    *(v0 + 320) = sub_1004BC464();
    v17 = sub_1004BC3E4();

    return _swift_task_switch(sub_10007C198, v17, v16);
  }
}

uint64_t sub_10007C198()
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

  sub_10000F778(v3, v4, &qword_100600DE0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 9989;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0);
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
  sub_10000F778(v7, v72, &qword_1006014F8);
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

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));
    sub_100007214(v20, &qword_1006014F8);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));

    sub_10005BAA4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 152), &qword_1006014F8);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10005BAA4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    sub_100007214(*(v0 + 144), &qword_1006014F8);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    sub_10000F778(v36 + v14[6], *(v0 + 200), &qword_100600DE0);
    sub_10005BAA4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  sub_100025B04(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_100600DE0);
  sub_10000F778(v37, v38, &qword_1006014F8);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 136), &qword_1006014F8);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10005BAA4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10005BAA4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 120), &qword_1006014F8);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10005BAA4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10005BAA4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000521DC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
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
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_10005BAA4(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0);

  return _swift_task_switch(sub_10005AD8C, 0, 0);
}

uint64_t _s9MusicCore7ActionsO18RemoveFromPlaylistO7ContextV13menuItemTitleSSvg_0()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10007CB30()
{

  return swift_deallocObject();
}

uint64_t sub_10007CB68()
{
  v1 = sub_1004BBA84();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_10007CBF0()
{
  sub_1004BBA84();

  return sub_10007B4C4();
}

uint64_t sub_10007CC50()
{
  v1 = sub_1004BBA44();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1004BBA84();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_10007CDA0()
{
  v2 = *(sub_1004BBA44() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1004BBA84() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1000136EC;

  return sub_10007B69C(v7, v0 + v3, v0 + v6);
}

uint64_t sub_10007CED4()
{
  v1 = *(sub_100003ABC(&qword_100601C50) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1004BBA44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
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
      v11 = sub_1004B6B04();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_10007D19C()
{
  v2 = *(sub_100003ABC(&qword_100601C50) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1004BBA44() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001384C;

  return sub_10007BC90(v0 + v3, v0 + v6);
}

unint64_t sub_10007D2F8()
{
  result = qword_100602170;
  if (!qword_100602170)
  {
    sub_1004BB8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602170);
  }

  return result;
}

uint64_t sub_10007D360(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "gMusicTabsDictionary";
      v3 = 0xD000000000000025;
    }

    else
    {
      v4 = "countUniqueIdentifier";
      v3 = 0xD000000000000014;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000024;
    }

    else
    {
      v3 = 0xD00000000000001FLL;
    }

    if (v2)
    {
      v4 = "UserRequestedSubscriptionHidden";
    }

    else
    {
      v4 = "sharePlayTogether";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000025;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (a2 == 2)
    {
      v6 = "gMusicTabsDictionary";
    }

    else
    {
      v6 = "countUniqueIdentifier";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xD00000000000001FLL;
    }

    if (a2)
    {
      v6 = "UserRequestedSubscriptionHidden";
    }

    else
    {
      v6 = "sharePlayTogether";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1004BD9C4();
  }

  return v7 & 1;
}

uint64_t sub_10007D494(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x657469726F766166;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64656B696C736964;
    }

    else
    {
      v5 = 0x726F707075736E75;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000646574;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C61727475656ELL;
    }

    else
    {
      v5 = 0x657469726F766166;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x64656B696C736964;
  if (a2 != 2)
  {
    v8 = 0x726F707075736E75;
    v7 = 0xEB00000000646574;
  }

  if (a2)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004BD9C4();
  }

  return v11 & 1;
}

uint64_t sub_10007D5E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x7473696C79616C70;
  v5 = 0xE900000000000073;
  if (a1 != 5)
  {
    v4 = 0x73676E6F73;
    v5 = 0xE500000000000000;
  }

  v6 = 0x59726F466564616DLL;
  v7 = 0xEA0000000000756FLL;
  if (a1 != 3)
  {
    v6 = 0x646956636973756DLL;
    v7 = 0xEB00000000736F65;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x73747369747261;
  if (a1 != 1)
  {
    v9 = 0x74616C69706D6F63;
    v8 = 0xEC000000736E6F69;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x736D75626C61;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x73747369747261)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEC000000736E6F69;
        if (v10 != 0x74616C69706D6F63)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x736D75626C61)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x7473696C79616C70)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x73676E6F73)
      {
LABEL_39:
        v13 = sub_1004BD9C4();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEA0000000000756FLL;
    if (v10 != 0x59726F466564616DLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB00000000736F65;
    if (v10 != 0x646956636973756DLL)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_10007D83C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000726564724FLL;
  v3 = 0x7473696C79616C70;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656C746974;
    }

    else
    {
      v5 = 0x7473696C79616C70;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xED0000726564724FLL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE600000000000000;
    v5 = 0x747369747261;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6D75626C61;
    }

    else
    {
      v5 = 0x44657361656C6572;
    }

    if (v4 == 3)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEB00000000657461;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x747369747261;
  v9 = 0xE500000000000000;
  v10 = 0x6D75626C61;
  if (a2 != 3)
  {
    v10 = 0x44657361656C6572;
    v9 = 0xEB00000000657461;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1004BD9C4();
  }

  return v13 & 1;
}

uint64_t sub_10007D9C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "updateServerLandingPages";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "ribedPlaylistsDate";
      v4 = 0xD000000000000028;
    }

    else
    {
      v5 = "efreshServerLandingPages";
      v4 = 0xD000000000000027;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000032;
    }

    else
    {
      v4 = 0xD00000000000002FLL;
    }

    if (v3)
    {
      v5 = "efreshPinnedSubscribedPlaylists";
    }

    else
    {
      v5 = "updateServerLandingPages";
    }
  }

  if (a2 > 1u)
  {
    v2 = "ribedPlaylistsDate";
    v6 = "efreshServerLandingPages";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000028;
    }

    else
    {
      v8 = 0xD000000000000027;
    }
  }

  else
  {
    v6 = "efreshPinnedSubscribedPlaylists";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000032;
    }

    else
    {
      v8 = 0xD00000000000002FLL;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1004BD9C4();
  }

  return v10 & 1;
}

uint64_t sub_10007DAEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x686372616573;
  if (a1 != 5)
  {
    v5 = 0x6F65646976;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6573776F7262;
  if (a1 != 3)
  {
    v7 = 0x6F69646172;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x756F795F726F66;
  if (a1 != 1)
  {
    v9 = 0x6E5F6E657473696CLL;
    v8 = 0xEA0000000000776FLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x636973756D5F796DLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x756F795F726F66)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEA0000000000776FLL;
        if (v10 != 0x6E5F6E657473696CLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x636973756D5F796DLL)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x686372616573)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v12 = 0xE500000000000000;
    v13 = 1701079414;
  }

  else
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6573776F7262)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v12 = 0xE500000000000000;
    v13 = 1768186226;
  }

  if (v10 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
  {
LABEL_39:
    v14 = sub_1004BD9C4();
    goto LABEL_40;
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v14 = 1;
LABEL_40:

  return v14 & 1;
}

uint64_t sub_10007DCFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6564696365646E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6269726373627573;
    }

    else
    {
      v5 = 0x6275536563696F76;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000007265;
    }

    else
    {
      v6 = 0xEF72656269726373;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x63697373616C63;
    }

    else
    {
      v5 = 0x6564696365646E75;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0x6269726373627573;
  v8 = 0xEA00000000007265;
  if (a2 != 2)
  {
    v7 = 0x6275536563696F76;
    v8 = 0xEF72656269726373;
  }

  if (a2)
  {
    v3 = 0x63697373616C63;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004BD9C4();
  }

  return v11 & 1;
}

uint64_t sub_10007DE60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000007373;
  v5 = 0x6574656C706D6F63;
  if (a1 == 2)
  {
    v5 = 0x6572676F72506E69;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  v6 = 0xD00000000000001ELL;
  if (a1)
  {
    v6 = 0x6E776F6E6B6E75;
  }

  else
  {
    v3 = 0x80000001004FC1A0;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    v11 = a2 == 2;
    v10 = 0xEA00000000007373;
    v9 = 0xE900000000000064;
    if (a2 == 2)
    {
      v12 = 0x6572676F72506E69;
    }

    else
    {
      v12 = 0x6574656C706D6F63;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v10 = 0x80000001004FC1A0;
    v11 = a2 == 0;
    if (a2)
    {
      v12 = 0x6E776F6E6B6E75;
    }

    else
    {
      v12 = 0xD00000000000001ELL;
    }
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v7 == v12 && v8 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1004BD9C4();
  }

  return v14 & 1;
}

uint64_t sub_10007DFAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x736F65646976;
  if (a1 != 5)
  {
    v5 = 0x7473696C79616C70;
    v4 = 0xE900000000000073;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6F69646172;
  if (a1 != 3)
  {
    v7 = 0x686372616573;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6F4E6E657473696CLL;
  v9 = 0xE900000000000077;
  if (a1 != 1)
  {
    v8 = 0x6573776F7262;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x7972617262696CLL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE900000000000077;
        if (v10 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x6573776F7262)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x7972617262696CLL)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x736F65646976)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x7473696C79616C70)
      {
LABEL_39:
        v13 = sub_1004BD9C4();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6F69646172)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x686372616573)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_10007E1CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D75626C41;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7473696C79616C50;
    }

    else
    {
      v4 = 0x434174726F706552;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEE006E7265636E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x747369747241;
    }

    else
    {
      v4 = 0x6D75626C41;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x7473696C79616C50;
  if (a2 != 2)
  {
    v8 = 0x434174726F706552;
    v7 = 0xEE006E7265636E6FLL;
  }

  if (a2)
  {
    v2 = 0x747369747241;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004BD9C4();
  }

  return v11 & 1;
}

uint64_t sub_10007E31C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1819047270;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C6F686563616C70;
    }

    else
    {
      v4 = 0x73756F6976657270;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000726564;
    }

    else
    {
      v5 = 0xEF6E776F6853796CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C616974726170;
    }

    else
    {
      v4 = 1819047270;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x6C6F686563616C70;
  v8 = 0xEB00000000726564;
  if (a2 != 2)
  {
    v7 = 0x73756F6976657270;
    v8 = 0xEF6E776F6853796CLL;
  }

  if (a2)
  {
    v2 = 0x6C616974726170;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004BD9C4();
  }

  return v11 & 1;
}

uint64_t Actions.SortPlaylist.Context.currentSort.getter()
{
  if (*(v0 + 2))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + 1);
}

uint64_t Actions.SortPlaylist.Context.currentSort.setter(uint64_t result)
{
  *(v1 + 1) = result;
  *(v1 + 2) = BYTE1(result) & 1;
  return result;
}

uint64_t Actions.SortPlaylist.Context.playlistVariant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Actions.SortPlaylist.Context() + 24);

  return sub_10007E564(v3, a1);
}

uint64_t type metadata accessor for Actions.SortPlaylist.Context()
{
  result = qword_1006023C0;
  if (!qword_1006023C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007E564(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100602308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Actions.SortPlaylist.Context.playlistVariant.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Actions.SortPlaylist.Context() + 24);

  return sub_10007E618(a1, v3);
}

uint64_t sub_10007E618(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100602308);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Actions.SortPlaylist.Context.didSelectSort.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.SortPlaylist.Context() + 28));

  return v1;
}

uint64_t Actions.SortPlaylist.Context.didSelectSort.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.SortPlaylist.Context() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.SortPlaylist.Context.init(sortOption:currentSort:playlistVariant:didSelectSort:)@<X0>(char a1@<W0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v12 = type metadata accessor for Actions.SortPlaylist.Context();
  v13 = *(v12 + 24);
  v14 = sub_1004BB914();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  *a6 = a1;
  a6[1] = a2;
  a6[2] = HIBYTE(a2) & 1;
  result = sub_10007E618(a3, &a6[v13]);
  v16 = &a6[*(v12 + 28)];
  *v16 = a4;
  v16[1] = a5;
  return result;
}

int *static Actions.SortPlaylist.action(context:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Actions.SortPlaylist.Context();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  sub_10007EA0C(a1, &v18 - v9);
  v11 = *a1 + 14;
  sub_10007EA0C(a1, v8);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_10007ED68(v8, v13 + v12);
  sub_10007ED68(v10, a2);
  result = sub_100003ABC(&qword_100601DE0);
  *(a2 + result[9]) = v11;
  *(a2 + result[11]) = 0x4014000000000000;
  v15 = (a2 + result[10]);
  *v15 = variable initialization expression of _NSRange.NSRangeIterator.current;
  v15[1] = 0;
  v16 = (a2 + result[12]);
  *v16 = &unk_1004CA8C0;
  v16[1] = v13;
  v17 = (a2 + result[13]);
  *v17 = &unk_1004CA8C8;
  v17[1] = 0;
  return result;
}

uint64_t sub_10007EA0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.SortPlaylist.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007EA90()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  *(v0 + 52) = v2;
  if (sub_10007D83C(v2, v1[1]))
  {
    v3 = 0;
    v4 = *(v0 + 16);
    v5 = *(v4 + 2);
    v6 = 256;
  }

  else
  {
    v6 = 0;
    v5 = v2 < 4;
    v4 = *(v0 + 16);
    v3 = 256;
  }

  *(v0 + 53) = v5;
  *(v0 + 50) = v3;
  *(v0 + 48) = v6;
  v7 = (v4 + *(type metadata accessor for Actions.SortPlaylist.Context() + 28));
  *(v0 + 24) = *v7;
  *(v0 + 32) = v7[1];
  sub_1004BC474();
  *(v0 + 40) = sub_1004BC464();
  v9 = sub_1004BC3E4();

  return _swift_task_switch(sub_10007EB94, v9, v8);
}

uint64_t sub_10007EB94()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 52);
  if (*(v0 + 53))
  {
    v3 = (v0 + 50);
  }

  else
  {
    v3 = (v0 + 48);
  }

  v4 = *v3;

  v1(v4 | v2);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10007EC2C()
{
  v1 = type metadata accessor for Actions.SortPlaylist.Context();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 24);
  v4 = sub_1004BB914();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10007ED68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.SortPlaylist.Context();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007EDCC(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Actions.SortPlaylist.Context() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000136EC;

  return sub_10007EA70(a1, a2, v2 + v7);
}

uint64_t Actions.SortPlaylist.TrackListSort.init(option:isAscending:)(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFF00 | a1;
}

uint64_t Actions.SortPlaylist.Context.menuItemTitle.getter()
{
  v1 = *v0;
  v2 = &v0[*(type metadata accessor for Actions.SortPlaylist.Context() + 24)];

  return sub_10007EF10(v2, v1);
}

uint64_t sub_10007EF10(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1004B6E64();
  __chkstk_darwin(v4 - 8);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004BBE14();
  v36 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v34 = &v33 - v9;
  v10 = sub_1004BB914();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003ABC(&qword_100602438);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = sub_100003ABC(&qword_100602308);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v33 - v21;
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v24 = v35;
      v23 = v36;
      v25 = v34;
      sub_1004BBDA4();
      (*(v23 + 16))(v24, v25, v6);
      goto LABEL_17;
    }

    v25 = v34;
    goto LABEL_10;
  }

  if (!a2)
  {
    v33 = v6;
    (*(v11 + 104))(&v33 - v21, enum case for Playlist.Variant.favoriteSongs(_:), v10);
    (*(v11 + 56))(v22, 0, 1, v10);
    v26 = *(v14 + 48);
    sub_10007E564(a1, v16);
    sub_10007E564(v22, &v16[v26]);
    v27 = *(v11 + 48);
    if (v27(v16, 1, v10) == 1)
    {
      sub_100007214(v22, &qword_100602308);
      v28 = v27(&v16[v26], 1, v10);
      v6 = v33;
      v25 = v34;
      if (v28 == 1)
      {
        sub_100007214(v16, &qword_100602308);
        v23 = v36;
LABEL_15:
        sub_1004BBDA4();
        goto LABEL_16;
      }
    }

    else
    {
      sub_10007E564(v16, v20);
      if (v27(&v16[v26], 1, v10) != 1)
      {
        (*(v11 + 32))(v13, &v16[v26], v10);
        sub_10008196C();
        sub_1004BBD84();
        v29 = *(v11 + 8);
        v29(v13, v10);
        sub_100007214(v22, &qword_100602308);
        v29(v20, v10);
        sub_100007214(v16, &qword_100602308);
        v6 = v33;
        v25 = v34;
        v23 = v36;
        goto LABEL_15;
      }

      sub_100007214(v22, &qword_100602308);
      (*(v11 + 8))(v20, v10);
      v6 = v33;
      v25 = v34;
    }

    sub_100007214(v16, &qword_100602438);
    v23 = v36;
    goto LABEL_15;
  }

  v25 = v34;
LABEL_10:
  sub_1004BBDA4();
  v23 = v36;
LABEL_16:
  (*(v23 + 16))(v35, v25, v6);
LABEL_17:
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v30 = qword_100617118;
  sub_1004B6DF4();
  v31 = sub_1004BBED4();
  (*(v23 + 8))(v25, v6);
  return v31;
}

uint64_t Actions.SortPlaylist.Context.menuItemSubtitle.getter()
{
  v1 = 0xED0000726564724FLL;
  v2 = 0x7473696C79616C70;
  v3 = v0[1];
  v4 = *v0;
  v5 = 0xE600000000000000;
  v6 = 0x747369747261;
  v7 = 0xE500000000000000;
  v8 = 0x6D75626C61;
  if (v3 != 3)
  {
    v8 = 0x44657361656C6572;
    v7 = 0xEB00000000657461;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (!v0[1])
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xED0000726564724FLL;
  }

  if (v0[1] <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v0[1] <= 1u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  v13 = 0xE600000000000000;
  v14 = 0x747369747261;
  v15 = 0xE500000000000000;
  v16 = 0x6D75626C61;
  if (v4 != 3)
  {
    v16 = 0x44657361656C6572;
    v15 = 0xEB00000000657461;
  }

  if (v4 != 2)
  {
    v14 = v16;
    v13 = v15;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
    v1 = 0xE500000000000000;
  }

  if (*v0 <= 1u)
  {
    v17 = v2;
  }

  else
  {
    v17 = v14;
  }

  if (*v0 <= 1u)
  {
    v18 = v1;
  }

  else
  {
    v18 = v13;
  }

  if (v11 == v17 && v12 == v18)
  {

LABEL_29:
    v20 = type metadata accessor for Actions.SortPlaylist.Context();
    return sub_10007F700(&v0[*(v20 + 24)], v0[2], v4);
  }

  v19 = sub_1004BD9C4();

  if (v19)
  {
    goto LABEL_29;
  }

  return 0;
}

uint64_t sub_10007F700(uint64_t a1, int a2, unsigned __int8 a3)
{
  v41 = a1;
  v5 = sub_1004B6E64();
  __chkstk_darwin(v5 - 8);
  v43 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1004BBE14();
  v7 = *(v45 - 8);
  v8 = __chkstk_darwin(v45);
  v42 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = v39 - v10;
  v11 = sub_1004BB914();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003ABC(&qword_100602438);
  __chkstk_darwin(v15);
  v17 = v39 - v16;
  v18 = sub_100003ABC(&qword_100602308);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v39 - v22;
  v24 = a3;
  if (a3 - 1 < 3)
  {
    v25 = (v7 + 16);
    v26 = v44;
LABEL_12:
    sub_1004BBDA4();
    v32 = v45;
    (*v25)(v42, v26, v45);
    goto LABEL_16;
  }

  v27 = v41;
  v39[1] = a2;
  v40 = v7;
  if (v24)
  {
    v7 = v40;
    v25 = (v40 + 16);
    v26 = v44;
    goto LABEL_12;
  }

  (*(v12 + 104))(v39 - v22, enum case for Playlist.Variant.favoriteSongs(_:), v11);
  (*(v12 + 56))(v23, 0, 1, v11);
  v28 = *(v15 + 48);
  sub_10007E564(v27, v17);
  sub_10007E564(v23, &v17[v28]);
  v29 = *(v12 + 48);
  if (v29(v17, 1, v11) == 1)
  {
    sub_100007214(v23, &qword_100602308);
    v30 = v29(&v17[v28], 1, v11);
    v31 = v42;
    if (v30 == 1)
    {
      sub_100007214(v17, &qword_100602308);
      v26 = v44;
      v32 = v45;
      v7 = v40;
LABEL_14:
      v33 = (v7 + 16);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  sub_10007E564(v17, v21);
  if (v29(&v17[v28], 1, v11) == 1)
  {
    sub_100007214(v23, &qword_100602308);
    (*(v12 + 8))(v21, v11);
    v31 = v42;
LABEL_10:
    sub_100007214(v17, &qword_100602438);
    v26 = v44;
    v32 = v45;
    v7 = v40;
    goto LABEL_11;
  }

  (*(v12 + 32))(v14, &v17[v28], v11);
  sub_10008196C();
  v34 = sub_1004BBD84();
  v35 = *(v12 + 8);
  v35(v14, v11);
  sub_100007214(v23, &qword_100602308);
  v35(v21, v11);
  sub_100007214(v17, &qword_100602308);
  v26 = v44;
  v32 = v45;
  v7 = v40;
  v31 = v42;
  if (v34)
  {
    goto LABEL_14;
  }

LABEL_11:
  v33 = (v7 + 16);
LABEL_15:
  sub_1004BBDA4();
  (*v33)(v31, v26, v32);
LABEL_16:
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v36 = qword_100617118;
  sub_1004B6DF4();
  v37 = sub_1004BBED4();
  (*(v7 + 8))(v26, v32);
  return v37;
}

uint64_t Actions.SortPlaylist.Context.menuItemState.getter()
{
  v1 = 0xED0000726564724FLL;
  v2 = 0x7473696C79616C70;
  v3 = v0[1];
  v4 = *v0;
  v5 = 0xE600000000000000;
  v6 = 0x747369747261;
  v7 = 0xE500000000000000;
  v8 = 0x6D75626C61;
  if (v3 != 3)
  {
    v8 = 0x44657361656C6572;
    v7 = 0xEB00000000657461;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (!v0[1])
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xED0000726564724FLL;
  }

  if (v0[1] <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v0[1] <= 1u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  v13 = 0xE600000000000000;
  v14 = 0x747369747261;
  v15 = 0xE500000000000000;
  v16 = 0x6D75626C61;
  if (v4 != 3)
  {
    v16 = 0x44657361656C6572;
    v15 = 0xEB00000000657461;
  }

  if (v4 != 2)
  {
    v14 = v16;
    v13 = v15;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
    v1 = 0xE500000000000000;
  }

  if (*v0 <= 1u)
  {
    v17 = v2;
  }

  else
  {
    v17 = v14;
  }

  if (*v0 <= 1u)
  {
    v18 = v1;
  }

  else
  {
    v18 = v13;
  }

  if (v11 == v17 && v12 == v18)
  {

    return 1;
  }

  else
  {
    v20 = sub_1004BD9C4();

    return v20 & 1;
  }
}

uint64_t sub_10007FF20(uint64_t a1)
{
  v3 = *v1;
  if (sub_10007D83C(v1[1], *v1))
  {
    return sub_10007F700(&v1[*(a1 + 24)], v1[2], v3);
  }

  else
  {
    return 0;
  }
}

uint64_t Actions.SortPlaylist.TrackListSort.Option.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7473696C79616C70;
  v2 = 0x747369747261;
  v3 = 0x6D75626C61;
  if (a1 != 3)
  {
    v3 = 0x44657361656C6572;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x656C746974;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_100080088()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_100080174()
{
  sub_1004BBF84();
}

Swift::Int sub_10008024C()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_100080334@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7ActionsO12SortPlaylistO09TrackListD0V6OptionO8rawValueAISgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100080364(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000726564724FLL;
  v4 = 0x7473696C79616C70;
  v5 = 0xE600000000000000;
  v6 = 0x747369747261;
  v7 = 0xE500000000000000;
  v8 = 0x6D75626C61;
  if (v2 != 3)
  {
    v8 = 0x44657361656C6572;
    v7 = 0xEB00000000657461;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000804CC()
{
  if (*v0)
  {
    return 0x646E656373417369;
  }

  else
  {
    return 0x6E6F6974706FLL;
  }
}

uint64_t sub_10008050C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6974706FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1004BD9C4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E656373417369 && a2 == 0xEB00000000676E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004BD9C4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000805F4(uint64_t a1)
{
  v2 = sub_100080EA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100080630(uint64_t a1)
{
  v2 = sub_100080EA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Actions.SortPlaylist.TrackListSort.__derived_struct_equals(_:_:)(__int16 a1, __int16 a2)
{
  v3 = 0xED0000726564724FLL;
  v4 = 0x7473696C79616C70;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x656C746974;
    }

    else
    {
      v6 = 0x7473696C79616C70;
    }

    if (v5)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xED0000726564724FLL;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0xE600000000000000;
    v6 = 0x747369747261;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0x6D75626C61;
    }

    else
    {
      v6 = 0x44657361656C6572;
    }

    if (v5 == 3)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xEB00000000657461;
    }
  }

  v9 = 0xE600000000000000;
  v10 = 0x747369747261;
  v11 = 0xE500000000000000;
  v12 = 0x6D75626C61;
  if (a2 != 3)
  {
    v12 = 0x44657361656C6572;
    v11 = 0xEB00000000657461;
  }

  if (a2 != 2)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a2)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v10;
  }

  if (a2 <= 1u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v9;
  }

  if (v6 == v13 && v7 == v14)
  {
  }

  else
  {
    v15 = sub_1004BD9C4();

    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
}

uint64_t Actions.SortPlaylist.TrackListSort.encode(to:)(void *a1, char a2)
{
  v5 = sub_100003ABC(&qword_100602310);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100009178(a1, a1[3]);
  sub_100080EA4();
  sub_1004BDC44();
  v10[15] = a2;
  v10[14] = 0;
  sub_100080EF8();
  sub_1004BD894();
  if (!v2)
  {
    v10[13] = 1;
    sub_1004BD864();
  }

  return (*(v6 + 8))(v8, v5);
}

void Actions.SortPlaylist.TrackListSort.hash(into:)(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  sub_1004BBF84();

  sub_1004BDBC4(v2 & 1);
}

Swift::Int Actions.SortPlaylist.TrackListSort.hashValue.getter(__int16 a1)
{
  v1 = HIBYTE(a1);
  sub_1004BDBA4();
  sub_1004BBF84();

  sub_1004BDBC4(v1 & 1);
  return sub_1004BDBF4();
}

Swift::Int sub_100080BB4()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return Actions.SortPlaylist.TrackListSort.hashValue.getter(v1 | *v0);
}

void sub_100080BD0()
{
  v1 = *(v0 + 1);
  sub_1004BBF84();

  sub_1004BDBC4(v1);
}

Swift::Int sub_100080CB8()
{
  v1 = *(v0 + 1);
  sub_1004BDBA4();
  sub_1004BBF84();

  sub_1004BDBC4(v1);
  return sub_1004BDBF4();
}

uint64_t sub_100080DB8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100080F4C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_100080E1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_10007D83C(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t _s9MusicCore7ActionsO12SortPlaylistO09TrackListD0V6OptionO8rawValueAISgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A3DD8;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100080EA4()
{
  result = qword_100602318;
  if (!qword_100602318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602318);
  }

  return result;
}

unint64_t sub_100080EF8()
{
  result = qword_100602320;
  if (!qword_100602320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602320);
  }

  return result;
}

uint64_t sub_100080F4C(void *a1)
{
  v3 = sub_100003ABC(&qword_100602428);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  sub_100009178(a1, a1[3]);
  sub_100080EA4();
  sub_1004BDC34();
  if (v1)
  {
    return sub_100004C6C(a1);
  }

  v11[14] = 0;
  sub_100081918();
  sub_1004BD804();
  v7 = v11[15];
  v11[13] = 1;
  v8 = sub_1004BD7D4();
  (*(v4 + 8))(v6, v3);
  sub_100004C6C(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 | v7;
}

unint64_t sub_100081118()
{
  result = qword_100602348;
  if (!qword_100602348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602348);
  }

  return result;
}

unint64_t sub_100081170()
{
  result = qword_100602350;
  if (!qword_100602350)
  {
    sub_100003B68(&qword_100602358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602350);
  }

  return result;
}

unint64_t sub_1000811D8()
{
  result = qword_100602360;
  if (!qword_100602360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602360);
  }

  return result;
}

uint64_t sub_100081250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003ABC(&qword_100602308);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100081330(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003ABC(&qword_100602308);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_1000813F8()
{
  sub_100081494();
  if (v0 <= 0x3F)
  {
    sub_100020C70();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100081494()
{
  if (!qword_1006023D0)
  {
    sub_1004BB914();
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_1006023D0);
    }
  }
}

uint64_t _s12SortPlaylistO13TrackListSortVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s12SortPlaylistO13TrackListSortVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s12SortPlaylistO13TrackListSortV6OptionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

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

unint64_t sub_1000817C0()
{
  result = qword_100602408;
  if (!qword_100602408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602408);
  }

  return result;
}

unint64_t sub_100081818()
{
  result = qword_100602410;
  if (!qword_100602410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602410);
  }

  return result;
}

unint64_t sub_100081870()
{
  result = qword_100602418;
  if (!qword_100602418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602418);
  }

  return result;
}

unint64_t sub_1000818C4()
{
  result = qword_100602420;
  if (!qword_100602420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602420);
  }

  return result;
}

unint64_t sub_100081918()
{
  result = qword_100602430;
  if (!qword_100602430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602430);
  }

  return result;
}

unint64_t sub_10008196C()
{
  result = qword_100603550;
  if (!qword_100603550)
  {
    sub_1004BB914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603550);
  }

  return result;
}

uint64_t sub_100081A10(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 32) + **(a2 + 32));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10001384C;

  return v5();
}

uint64_t sub_100081AF8(uint64_t a1)
{
  v4 = (*(a1 + 48) + **(a1 + 48));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return v4();
}

uint64_t sub_100081C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_100003ABC(&qword_1006014F8);
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
  sub_100003ABC(&qword_100600DE0);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_100081E7C, 0, 0);
}

uint64_t sub_100081E7C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_10000F778(*(v0 + 96), v3, &qword_100601C50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 240), &qword_100601C50);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_100089B18(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = sub_1004B6B04();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100003ABC(&qword_100601E58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50C0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 3;
    *(v0 + 312) = sub_100029080(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1004BC474();
    *(v0 + 336) = sub_1004BC464();
    v18 = sub_1004BC3E4();

    return _swift_task_switch(sub_100082180, v18, v17);
  }
}

uint64_t sub_100082180()
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

  sub_10000F778(v3, v4, &qword_100600DE0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 14597;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0);
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
  sub_10000F778(v7, v72, &qword_1006014F8);
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

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));
    sub_100007214(v20, &qword_1006014F8);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));

    sub_10005BAA4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 168), &qword_1006014F8);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10005BAA4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_100007214(*(v0 + 160), &qword_1006014F8);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_10000F778(v36 + v14[6], *(v0 + 216), &qword_100600DE0);
    sub_10005BAA4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_100025B04(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_100600DE0);
  sub_10000F778(v37, v38, &qword_1006014F8);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 152), &qword_1006014F8);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10005BAA4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10005BAA4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 136), &qword_1006014F8);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10005BAA4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10005BAA4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100089B18(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
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
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_10005BAA4(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0);

  return _swift_task_switch(sub_100089B80, 0, 0);
}

uint64_t sub_10008293C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100003ABC(&qword_100601C50) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001384C;

  return sub_100081C68(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_100082B4C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  if (sub_1004BB164())
  {
    v8 = enum case for MusicPropertySource.library(_:);
    v9 = sub_1004BAB74();
    v17 = *(v9 - 8);
    (*(v17 + 104))(a4, v8, v9);
    v10 = *(v17 + 56);

    return v10(a4, 0, 1, v9);
  }

  else
  {
    v28 = a1(0);
    v29 = a2;
    sub_1000133B0(v27);
    sub_1004BB144();
    sub_100009178(v27, v28);
    a3();
    if (!v12)
    {
      goto LABEL_10;
    }

    if (qword_1005FFE10 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v26[4] = v22;
    v26[5] = v23;
    v26[6] = v24;
    v26[7] = v25;
    v26[0] = v18;
    v26[1] = v19;
    v26[2] = v20;
    v26[3] = v21;
    sub_100051DEC(v26);
    if (BYTE1(v26[0]) == 1)
    {
      v13 = enum case for MusicPropertySource.catalog(_:);
      v14 = sub_1004BAB74();
      v15 = *(v14 - 8);
      (*(v15 + 104))(a4, v13, v14);
      (*(v15 + 56))(a4, 0, 1, v14);
      return sub_100004C6C(v27);
    }

    else
    {
LABEL_10:
      sub_100004C6C(v27);
      v16 = sub_1004BAB74();
      return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
    }
  }
}

uint64_t MusicLibrary.ItemState.containerLoadingSource.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __chkstk_darwin(a1);
  if (sub_1004BB164())
  {
    v3 = enum case for MusicPropertySource.library(_:);
    v4 = sub_1004BAB74();
    v14 = *(v4 - 8);
    (*(v14 + 104))(a2, v3, v4);
    v5 = *(v14 + 56);

    return v5(a2, 0, 1, v4);
  }

  else
  {
    sub_1004BB144();
    sub_100003ABC(&qword_100601518);
    if (swift_dynamicCast())
    {
      sub_100013414(&v23, v31);
      v7 = v32;
      v8 = v33;
      sub_100009178(v31, v32);
      (*(v8 + 8))(v7, v8);
      if (v9)
      {

        if (qword_1005FFE10 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1004B85A4();

        v27 = v19;
        v28 = v20;
        v29 = v21;
        v30 = v22;
        v23 = v15;
        v24 = v16;
        v25 = v17;
        v26 = v18;
        sub_100051DEC(&v23);
        if (BYTE1(v23) == 1)
        {
          v10 = enum case for MusicPropertySource.catalog(_:);
          v11 = sub_1004BAB74();
          v12 = *(v11 - 8);
          (*(v12 + 104))(a2, v10, v11);
          (*(v12 + 56))(a2, 0, 1, v11);
          return sub_100004C6C(v31);
        }
      }

      sub_100004C6C(v31);
    }

    else
    {
      *&v25 = 0;
      v23 = 0u;
      v24 = 0u;
      sub_100007214(&v23, &unk_100606F20);
    }

    v13 = sub_1004BAB74();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t MusicVideo.supportsContainerNavigation(itemState:)()
{
  v0 = sub_100003ABC(&qword_100602440);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_100082B4C(&type metadata accessor for MusicVideo, &protocol witness table for MusicVideo, &MusicVideo.catalogID.getter, &v7 - v1);
  v3 = sub_1004BAB74();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_100007214(v2, &qword_100602440);
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_100083328();
  }

  return v5 & 1;
}

uint64_t sub_100083328()
{
  v0 = sub_100003ABC(&qword_100602590);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_100003ABC(&qword_100601E48);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_1004BB434();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BACE4();
  v10 = sub_100003ABC(&qword_100602598);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v2, 1, v10) == 1)
  {
    sub_100007214(v2, &qword_100602590);
    (*(v7 + 56))(v5, 1, 1, v6);
LABEL_4:
    sub_100007214(v5, &qword_100601E48);
    goto LABEL_5;
  }

  sub_10009F274(v5);
  (*(v11 + 8))(v2, v10);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  (*(v7 + 32))(v9, v5, v6);
  v14 = sub_1004BB394();
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
  v0 = sub_1004BB4D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004BAD04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_100602440);
  __chkstk_darwin(v8 - 8);
  v10 = v15 - v9;
  sub_100082B4C(&type metadata accessor for Track, &protocol witness table for Track, &Track.catalogID.getter, v15 - v9);
  v11 = sub_1004BAB74();
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  sub_100007214(v10, &qword_100602440);
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
      v13 = sub_100083328();
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

BOOL sub_10008390C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v7 = sub_100003ABC(&qword_100602440);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  sub_100082B4C(a2, a3, a4, &v13 - v8);
  v10 = sub_1004BAB74();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) != 1;
  sub_100007214(v9, &qword_100602440);
  return v11;
}

uint64_t Playlist.Entry.supportsContainerNavigation(itemState:)()
{
  v0 = sub_100003ABC(&qword_100602448);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_1004BAD04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_100602440);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  sub_100082B4C(&type metadata accessor for Playlist.Entry, &protocol witness table for Playlist.Entry, &Playlist.Entry.catalogID.getter, &v16 - v8);
  v10 = sub_1004BAB74();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_100007214(v9, &qword_100602440);
  if (v11 != 1)
  {
    sub_1004BBA24();
    v13 = sub_1004BBA14();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v2, 1, v13) == 1)
    {
      sub_100007214(v2, &qword_100602448);
    }

    else
    {
      if ((*(v14 + 88))(v2, v13) == enum case for Playlist.Entry.Item.musicVideo(_:))
      {
        (*(v14 + 96))(v2, v13);
        (*(v4 + 32))(v6, v2, v3);
        v12 = sub_100083328();
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
  v4 = sub_1004BB8E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Actions.GoToPlaylistFolderItem.Context();
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088B30(a1, v10);
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
  sub_100089B18(v10, a2, type metadata accessor for Actions.GoToPlaylistFolderItem.Context);
  result = sub_100003ABC(&qword_100602450);
  *(a2 + result[9]) = v11;
  *(a2 + result[11]) = 0x4014000000000000;
  v13 = (a2 + result[10]);
  *v13 = sub_100083F48;
  v13[1] = 0;
  v14 = (a2 + result[12]);
  *v14 = &unk_1004CACE8;
  v14[1] = 0;
  v15 = (a2 + result[13]);
  *v15 = &unk_1004CACF0;
  v15[1] = 0;
  return result;
}

uint64_t sub_100083FA4()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.GoToPlaylistFolderItem.Context() + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10005D520;

  return v5();
}

uint64_t sub_1000840C0()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.GoToPlaylistFolderItem.Context() + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10005DCBC;

  return v5();
}

int *Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *(sub_100003ABC(&qword_100601C50) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_100025B04(a7, v16 + v14, &qword_100601C50);
  sub_100013414(a1, v16 + v15);
  v17 = sub_1004BB8E4();
  (*(*(v17 - 8) + 32))(a8, a2, v17);
  result = type metadata accessor for Actions.GoToPlaylistFolderItem.Context();
  v19 = (a8 + result[5]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a8 + result[6]);
  *v20 = a5;
  v20[1] = a6;
  v21 = (a8 + result[7]);
  *v21 = &unk_1004CAD08;
  v21[1] = v16;
  return result;
}

uint64_t sub_10008434C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_100003ABC(&qword_1006014F8);
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
  sub_100003ABC(&qword_100600DE0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10008455C, 0, 0);
}

uint64_t sub_10008455C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_10000F778(*(v0 + 96), v3, &qword_100601C50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 224), &qword_100601C50);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 104);
    sub_100089B18(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    sub_100009178(v7, v8);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 264) = v9;
    v10 = sub_1004B6B04();
    *(v0 + 272) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 280) = v12;
    *(v0 + 288) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    sub_100003ABC(&qword_100601E58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50C0;
    v14 = v7[3];
    sub_100009178(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_1004C50E0;
    *(inited + 72) = 3;
    *(v0 + 296) = sub_100029080(inited);
    *(v0 + 304) = v16;
    *(v0 + 312) = v17;
    *(v0 + 328) = v18;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1004BC474();
    *(v0 + 320) = sub_1004BC464();
    v20 = sub_1004BC3E4();

    return _swift_task_switch(sub_100084894, v20, v19);
  }
}

uint64_t sub_100084894()
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

  sub_10000F778(v3, v4, &qword_100600DE0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 15365;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0);
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
  sub_10000F778(v7, v72, &qword_1006014F8);
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

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));
    sub_100007214(v20, &qword_1006014F8);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));

    sub_10005BAA4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 152), &qword_1006014F8);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10005BAA4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    sub_100007214(*(v0 + 144), &qword_1006014F8);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    sub_10000F778(v36 + v14[6], *(v0 + 200), &qword_100600DE0);
    sub_10005BAA4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  sub_100025B04(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_100600DE0);
  sub_10000F778(v37, v38, &qword_1006014F8);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 136), &qword_1006014F8);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10005BAA4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10005BAA4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 120), &qword_1006014F8);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10005BAA4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10005BAA4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100089B18(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
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
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_10005BAA4(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0);

  return _swift_task_switch(sub_10005AD8C, 0, 0);
}

uint64_t Actions.GoToPlaylistFolderItem.Context.menuItemTitle.getter()
{
  v1 = v0;
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_1004BB8E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v1, v10);
  v14 = (v4 + 16);
  if ((*(v11 + 88))(v13, v10) == enum case for Playlist.Folder.Item.folder(_:))
  {
    sub_1004BBDA4();
    (*v14)(v7, v9, v3);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v15 = qword_100617118;
    sub_1004B6DF4();
    v16 = sub_1004BBED4();
  }

  else
  {
    v21 = v4;
    sub_1004BBDA4();
    v17 = *v14;
    v22 = v3;
    v17(v7, v9, v3);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v18 = qword_100617118;
    sub_1004B6DF4();
    v16 = sub_1004BBED4();
    v4 = v21;
    v3 = v22;
  }

  (*(v4 + 8))(v9, v3);
  (*(v11 + 8))(v13, v10);
  return v16;
}

uint64_t sub_100085520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_100003ABC(&qword_1006014F8);
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
  sub_100003ABC(&qword_100600DE0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100085734, 0, 0);
}

uint64_t sub_100085734()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_10000F778(*(v0 + 72), v3, &qword_100601C50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 216), &qword_100601C50);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_100089B18(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_1004B6B04();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100003ABC(&qword_100601E58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_100029080(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_10005DC68(inited + 32);
    sub_1004BC474();
    *(v0 + 312) = sub_1004BC464();
    v18 = sub_1004BC3E4();

    return _swift_task_switch(sub_100085A20, v18, v17);
  }
}

uint64_t sub_100085A20()
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

  sub_10000F778(v3, v4, &qword_100600DE0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 15109;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0);
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
  sub_10000F778(v7, v72, &qword_1006014F8);
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

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));
    sub_100007214(v20, &qword_1006014F8);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));

    sub_10005BAA4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 144), &qword_1006014F8);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10005BAA4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_100007214(*(v0 + 136), &qword_1006014F8);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_10000F778(v36 + v14[6], *(v0 + 192), &qword_100600DE0);
    sub_10005BAA4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_100025B04(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_100600DE0);
  sub_10000F778(v37, v38, &qword_1006014F8);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 128), &qword_1006014F8);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10005BAA4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10005BAA4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 112), &qword_1006014F8);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10005BAA4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10005BAA4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100089B18(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
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
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_10005BAA4(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0);

  return _swift_task_switch(sub_100089B84, 0, 0);
}

uint64_t (*Actions.ShowSongCredits.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E6F666E69;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E6F666E69;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_100051CB8;
}

uint64_t sub_100086298()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*sub_10008647C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E6F666E69;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E6F666E69;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_1000524E8;
}

__n128 sub_100086564@<Q0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v16 = *a1;
  sub_10000F778(&v16, &v15, &unk_100606160);

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

uint64_t sub_100086658(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 32) + **(a2 + 32));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1000136EC;

  return v5();
}

uint64_t sub_100086784@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
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

uint64_t sub_100086868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *(sub_100003ABC(&qword_100601C50) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a10 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a10;
  *(v21 + 24) = a11;
  sub_100025B04(a8, v21 + v18, &qword_100601C50);
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

uint64_t sub_100086A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_100003ABC(&qword_1006014F8);
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
  sub_100003ABC(&qword_100600DE0);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_100086C14, 0, 0);
}

uint64_t sub_100086C14()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_10000F778(*(v0 + 96), v3, &qword_100601C50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 240), &qword_100601C50);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_100089B18(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = sub_1004B6B04();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100003ABC(&qword_100601E58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50C0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_1004C4F70;
    *(inited + 72) = 3;
    *(v0 + 312) = sub_100029080(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1004BC474();
    *(v0 + 336) = sub_1004BC464();
    v18 = sub_1004BC3E4();

    return _swift_task_switch(sub_100086F20, v18, v17);
  }
}

uint64_t sub_100086F20()
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

  sub_10000F778(v3, v4, &qword_100600DE0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 14853;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0);
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
  sub_10000F778(v7, v72, &qword_1006014F8);
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

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));
    sub_100007214(v20, &qword_1006014F8);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));

    sub_10005BAA4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 168), &qword_1006014F8);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10005BAA4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_100007214(*(v0 + 160), &qword_1006014F8);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_10000F778(v36 + v14[6], *(v0 + 216), &qword_100600DE0);
    sub_10005BAA4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_100025B04(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_100600DE0);
  sub_10000F778(v37, v38, &qword_1006014F8);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 152), &qword_1006014F8);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10005BAA4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10005BAA4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 136), &qword_1006014F8);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10005BAA4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10005BAA4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100089B18(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
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
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_10005BAA4(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0);

  return _swift_task_switch(sub_10005CDE4, 0, 0);
}

uint64_t sub_1000876F8()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100087948()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100087BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *(sub_100003ABC(&qword_100601C50) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a7 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  sub_100025B04(a6, v21 + v18, &qword_100601C50);
  result = (*(v19 + 32))(v21 + v20, a1, a7);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = a4;
  a9[3] = a5;
  a9[4] = a11;
  a9[5] = v21;
  return result;
}

uint64_t sub_100087D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_100003ABC(&qword_1006014F8);
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
  sub_100003ABC(&qword_100600DE0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100087F90, 0, 0);
}

uint64_t sub_100087F90()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_10000F778(*(v0 + 72), v3, &qword_100601C50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 216), &qword_100601C50);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_100089B18(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_1004B6B04();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100003ABC(&qword_100601E58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_100029080(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_10005DC68(inited + 32);
    sub_1004BC474();
    *(v0 + 312) = sub_1004BC464();
    v18 = sub_1004BC3E4();

    return _swift_task_switch(sub_10008827C, v18, v17);
  }
}

uint64_t sub_10008827C()
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

  sub_10000F778(v3, v4, &qword_100600DE0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 13061;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0);
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
  sub_10000F778(v7, v72, &qword_1006014F8);
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

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));
    sub_100007214(v20, &qword_1006014F8);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));

    sub_10005BAA4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 144), &qword_1006014F8);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10005BAA4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_100007214(*(v0 + 136), &qword_1006014F8);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_10000F778(v36 + v14[6], *(v0 + 192), &qword_100600DE0);
    sub_10005BAA4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_100025B04(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_100600DE0);
  sub_10000F778(v37, v38, &qword_1006014F8);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 128), &qword_1006014F8);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10005BAA4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10005BAA4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 112), &qword_1006014F8);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10005BAA4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10005BAA4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100089B18(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
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
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_10005BAA4(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0);

  return _swift_task_switch(sub_100064080, 0, 0);
}

id sub_100088A88()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  return v1;
}

uint64_t type metadata accessor for Actions.GoToPlaylistFolderItem.Context()
{
  result = qword_100602550;
  if (!qword_100602550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100088B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.GoToPlaylistFolderItem.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100088B94()
{
  v1 = *(sub_100003ABC(&qword_100601C50) - 8);
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
      v9 = sub_1004B6B04();
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

  sub_100004C6C(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_100088DF0()
{
  v2 = *(sub_100003ABC(&qword_100601C50) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001384C;

  return sub_10008434C(v0 + v3, v0 + v4);
}

uint64_t sub_100088EFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100003ABC(&qword_100601C50) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001384C;

  return sub_100085520(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_100089044()
{

  return swift_deallocObject();
}

uint64_t sub_10008907C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100003ABC(&qword_100601C50) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000136EC;

  return sub_100086A00(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_1000891C4()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100003ABC(&qword_100601C50) - 8);
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
      v11 = sub_1004B6B04();
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

uint64_t sub_100089484()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100003ABC(&qword_100601C50) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001384C;

  return sub_100087D7C(v0 + v5, v0 + v6, v2, v3);
}

uint64_t _s9MusicCore7ActionsO14ViewFullLyricsO7ContextV13menuItemTitleSSvg_0()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v9;
}

__n128 sub_1000897BC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100089804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004BB8E4();
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

uint64_t sub_1000898D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004BB8E4();
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

unint64_t sub_10008998C()
{
  result = sub_1004BB8E4();
  if (v1 <= 0x3F)
  {
    result = sub_100020C70();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100089A4C(uint64_t a1, int a2)
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

uint64_t sub_100089A98(uint64_t result, int a2, int a3)
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

uint64_t sub_100089B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  *(a2 + 56) = sub_10004B4C4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_1004CAEF8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_1004CAF00;
  *(a2 + 104) = 0;
}

uint64_t sub_100089C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 35;
  *(a2 + 56) = sub_10004B4C4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_1004CAEF8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_1004CAF00;
  *(a2 + 104) = 0;
}

uint64_t Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t (**a4)()@<X8>)
{
  v67 = a3;
  v68 = a4;
  v65 = a2;
  v69 = sub_1004BB434();
  v5 = *(v69 - 8);
  v6 = __chkstk_darwin(v69);
  v66 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v7;
  __chkstk_darwin(v6);
  v63 = &v55 - v8;
  v9 = sub_1004B6B04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003ABC(&qword_1006025A0);
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
  v24 = sub_1004BB3D4();
  if (v25)
  {
    static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(1, v24, v25, v12);

    (*(v10 + 32))(v22, v12, v9);
  }

  else
  {
    sub_10008A2E8();
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
  sub_10000F778(v22, v60, &qword_1006025A0);
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
  sub_100025B04(v31, v39 + v36, &qword_1006025A0);
  v40 = v62;
  sub_10000F778(v22, v62, &qword_1006025A0);
  v41 = (v34 + 16) & ~v34;
  v42 = swift_allocObject();
  sub_100025B04(v40, v42 + v41, &qword_1006025A0);
  sub_100048998(v65, v42 + ((v35 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
  v43 = v64;
  sub_100025B04(v22, v64, &qword_1006025A0);
  v44 = v66;
  v45 = v69;
  v46 = v56;
  v56(v66, v58, v69);
  v47 = *(sub_100003ABC(&qword_100601C50) - 8);
  v48 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v49 = (*(v47 + 64) + v34 + v48) & ~v34;
  v50 = (v70 + v32 + v49) & ~v32;
  v51 = swift_allocObject();
  sub_100025B04(v67, v51 + v48, &qword_100601C50);
  sub_100025B04(v43, v51 + v49, &qword_1006025A0);
  result = v46(v51 + v50, v44, v45);
  v53 = v68;
  v54 = v61;
  *v68 = sub_10008A660;
  v53[1] = v54;
  v53[2] = &unk_1004CAF18;
  v53[3] = v42;
  v53[4] = &unk_1004CAF28;
  v53[5] = v51;
  return result;
}

unint64_t sub_10008A2E8()
{
  result = qword_1006092A0;
  if (!qword_1006092A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006092A0);
  }

  return result;
}

unint64_t sub_10008A33C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003ABC(&qword_1006025A0);
  __chkstk_darwin(v3);
  v5 = (v8 - v4);
  if ((sub_1004BB3B4() & 1) == 0)
  {
    return 0xD000000000000021;
  }

  sub_10000F778(a2, v5, &qword_1006025A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    v9 = 0;
    v10 = 0xE000000000000000;
    sub_1004BD404(43);
    v11._countAndFlagsBits = 0xD000000000000028;
    v11._object = 0x80000001004FD630;
    sub_1004BC024(v11);
    v8[1] = v6;
    sub_100003ABC(&qword_100604C30);
    sub_1004BD5C4();
    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    sub_1004BC024(v12);

    return v9;
  }

  else
  {
    sub_100007214(v5, &qword_1006025A0);
    return 0;
  }
}

uint64_t sub_10008A4CC()
{
  v1 = sub_1004BB434();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100003ABC(&qword_1006025A0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_1004B6B04();
    (*(*(v7 - 8) + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

unint64_t sub_10008A660()
{
  v1 = *(sub_1004BB434() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_100003ABC(&qword_1006025A0) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10008A33C(v0 + v2, v5);
}

uint64_t sub_10008A738(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_100003ABC(&qword_1006025A0);
  v2[5] = swift_task_alloc();
  v3 = sub_1004B6B04();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_1004BC474();
  v2[9] = sub_1004BC464();
  v5 = sub_1004BC3E4();
  v2[10] = v5;
  v2[11] = v4;

  return _swift_task_switch(sub_10008A868, v5, v4);
}

uint64_t sub_10008A868()
{
  sub_10000F778(v0[2], v0[5], &qword_1006025A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[5];

    sub_100007214(v1, &qword_1006025A0);

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
    v5[1] = sub_10008A9E8;
    v6 = v0[8];

    return (sub_100290750)(v6, Strong);
  }
}

uint64_t sub_10008A9E8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  *(*v1 + 112) = v0;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_10008ABD8;
  }

  else
  {
    v6 = sub_10008AB3C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10008AB3C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10008ABD8()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10008AC74()
{
  v1 = *(sub_100003ABC(&qword_1006025A0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_1004B6B04();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = v0 + v3;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v3 + 48);
  if (v6 != 255)
  {
    sub_100048974(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008ADC4()
{
  v2 = *(sub_100003ABC(&qword_1006025A0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000136EC;

  return sub_10008A738(v0 + v3, v0 + v4);
}

uint64_t sub_10008AED0(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_100003ABC(&qword_1006014F8);
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
  v2[27] = sub_100003ABC(&qword_1006025A0);
  v2[28] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50);
  v2[32] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_10008B11C, 0, 0);
}

uint64_t sub_10008B11C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  sub_10000F778(*(v0 + 112), v3, &qword_100601C50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 256), &qword_100601C50);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 224);
    v7 = *(v0 + 120);
    sub_1000521DC(*(v0 + 256), *(v0 + 280), type metadata accessor for Actions.MetricsReportingContext);
    sub_10000F778(v7, v6, &qword_1006025A0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = *(v0 + 248);
    v10 = *(v0 + 224);
    if (EnumCaseMultiPayload == 1)
    {
      sub_100007214(*(v0 + 224), &qword_1006025A0);
      v11 = sub_1004B6B04();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    }

    else
    {
      v12 = sub_1004B6B04();
      v13 = *(v12 - 8);
      (*(v13 + 32))(v9, v10, v12);
      (*(v13 + 56))(v9, 0, 1, v12);
    }

    sub_100003ABC(&qword_100601E58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    *(v0 + 104) = sub_1004BB434();
    sub_100003ABC(&qword_100601630);
    v15 = sub_1004BBF04();
    v17 = v16;
    sub_100029474(1);
    v18 = sub_1004BD184();
    v20 = v19;

    v21 = sub_100029510(1uLL, v15, v17);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    *(v0 + 72) = v21;
    *(v0 + 80) = v23;
    *(v0 + 88) = v25;
    *(v0 + 96) = v27;
    sub_1000295C0();
    sub_1004BC004();

    *(inited + 32) = v18;
    *(inited + 40) = v20;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_100029080(inited);
    *(v0 + 296) = v28;
    *(v0 + 304) = v29;
    *(v0 + 320) = v30;
    swift_setDeallocating();
    sub_10005DC68(inited + 32);
    sub_1004BC474();
    *(v0 + 312) = sub_1004BC464();
    v32 = sub_1004BC3E4();

    return _swift_task_switch(sub_10008B58C, v32, v31);
  }
}

uint64_t sub_10008B58C()
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

  sub_10000F778(v3, v4, &qword_100600DE0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = 0xD000000000000014;
  *(v6 + 8) = 0x80000001004FD5E0;
  *(v6 + 16) = 7173;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0);
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
  sub_10000F778(v7, v74, &qword_1006014F8);
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

    sub_100024AE0(v77, v76);

    sub_100025A94(v20, v18, v19, v17, SBYTE1(v17));
    sub_100007214(v21, &qword_1006014F8);
    v22 = v11;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v25 = v11;
    v23 = *v21;
    v24 = v21[1];

    sub_100024AE0(v77, v76);

    sub_100025A94(v20, v18, v19, v17, SBYTE1(v17));

    sub_10005BAA4(v21, type metadata accessor for MetricsEvent.Page);
    v22 = v25;
  }

  v26 = *(v0 + 184);
  v27 = *(v0 + 168);
  v28 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v28 = v23;
  v28[1] = v24;
  sub_10000F778(v26, v27, &qword_1006014F8);
  v29 = v79(v27, 1, v15);
  v30 = *(v0 + 168);
  if (v29 == 1)
  {
    sub_100007214(*(v0 + 168), &qword_1006014F8);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);

    sub_10005BAA4(v30, type metadata accessor for MetricsEvent.Page);
  }

  v33 = *(v0 + 184);
  v34 = *(v0 + 160);
  v35 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v35 = v31;
  v35[1] = v32;
  sub_10000F778(v33, v34, &qword_1006014F8);
  v36 = v79(v34, 1, v15);
  v37 = *(v0 + 232);
  v38 = *(v0 + 160);
  if (v36 == 1)
  {
    sub_100007214(*(v0 + 160), &qword_1006014F8);
    v39 = sub_1004B6B04();
    (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  }

  else
  {
    sub_10000F778(v38 + v15[6], *(v0 + 232), &qword_100600DE0);
    sub_10005BAA4(v38, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 184);
  v41 = *(v0 + 152);
  sub_100025B04(*(v0 + 232), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_100600DE0);
  sub_10000F778(v40, v41, &qword_1006014F8);
  v42 = v79(v41, 1, v15);
  v43 = *(v0 + 152);
  if (v42 == 1)
  {
    sub_100007214(*(v0 + 152), &qword_1006014F8);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_10005BAA4(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 184);
  v46 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v44;
  sub_10000F778(v45, v46, &qword_1006014F8);
  v47 = v79(v46, 1, v15);
  v48 = *(v0 + 144);
  if (v47 == 1)
  {
    sub_100007214(v48, &qword_1006014F8);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_10005BAA4(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 184);
  v51 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v49;
  sub_10000F778(v50, v51, &qword_1006014F8);
  v52 = v79(v51, 1, v15);
  v53 = *(v0 + 136);
  if (v52 == 1)
  {
    sub_100007214(*(v0 + 136), &qword_1006014F8);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_10005BAA4(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 184);
  v58 = *(v0 + 128);
  v59 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_100025B04(v57, v58, &qword_1006014F8);
  v60 = v79(v58, 1, v15);
  v61 = *(v0 + 128);
  if (v60 == 1)
  {
    sub_100007214(v61, &qword_1006014F8);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_10005BAA4(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 200);
  v64 = *(v0 + 208);
  v65 = *(v0 + 192);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v22;
  sub_1000521DC(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
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
  sub_100052244(v69, v67, v66, v72, SBYTE1(v72));
  sub_10005BAA4(v71, type metadata accessor for MetricsEvent.Click);

  return _swift_task_switch(sub_10008BD60, 0, 0);
}

uint64_t sub_10008BD60()
{
  v1 = v0[35];
  sub_100007214(v0[31], &qword_100600DE0);
  sub_10005BAA4(v1, type metadata accessor for Actions.MetricsReportingContext);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10008BEC0()
{
  v1 = *(sub_100003ABC(&qword_100601C50) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_100003ABC(&qword_1006025A0);
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v7 = *(*(v4 - 8) + 64);
  v8 = sub_1004BB434();
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
      v16 = sub_1004B6B04();
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
    v19 = sub_1004B6B04();
    (*(*(v19 - 8) + 8))(v0 + v6, v19);
  }

  (*(v9 + 8))(v0 + ((v6 + v7 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t sub_10008C268()
{
  v2 = *(sub_100003ABC(&qword_100601C50) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_100003ABC(&qword_1006025A0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  sub_1004BB434();
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001384C;

  return sub_10008AED0(v0 + v3, v0 + v6);
}

uint64_t (*Actions.OpenInClassical.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "arrow.up.right");
  *(v0 + 31) = -18;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "arrow.up.right");
  *(v1 + 31) = -18;
  return sub_100051CB8;
}

uint64_t (*sub_10008C4B8())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "arrow.up.right");
  *(v0 + 31) = -18;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "arrow.up.right");
  *(v1 + 31) = -18;
  return sub_1000524E8;
}

uint64_t _s9MusicCore7ActionsO15OpenInClassicalO7ContextV13menuItemTitleSSvg_0()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10008C740()
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
  *(a2 + 64) = sub_10008C850;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_1004CAFA0;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_1004CAFA8;
  *(a2 + 112) = 0;
}

uint64_t sub_10008C878(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 24) + **(a2 + 24));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1000136EC;

  return v5();
}

uint64_t sub_10008C960(uint64_t a1)
{
  v4 = (*(a1 + 40) + **(a1 + 40));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return v4();
}

uint64_t sub_10008CA48@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + 64) = sub_10008C850;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_1004CAFA0;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_1004CAFA8;
  *(a2 + 112) = 0;
}

uint64_t (*Actions.ReportConcern.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001004FD660;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x80000001004FD660;
  return sub_100051CB8;
}

uint64_t (*sub_10008CBA4())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001004FD660;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x80000001004FD660;
  return sub_1000524E8;
}

uint64_t Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *(sub_100003ABC(&qword_100601C50) - 8);
  v17 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  result = sub_100025B04(a11, v19 + v17, &qword_100601C50);
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
  *(a9 + 40) = &unk_1004CAFB8;
  *(a9 + 48) = v19;
  return result;
}

uint64_t sub_10008CD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  sub_100003ABC(&qword_1006014F8);
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
  sub_100003ABC(&qword_100600DE0);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50);
  v5[31] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_10008CFB4, 0, 0);
}

uint64_t sub_10008CFB4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  sub_10000F778(*(v0 + 96), v3, &qword_100601C50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 248), &qword_100601C50);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 240);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    sub_1000521DC(*(v0 + 248), *(v0 + 272), type metadata accessor for Actions.MetricsReportingContext);
    v9 = sub_1004B6B04();
    *(v0 + 280) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 288) = v11;
    *(v0 + 296) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100003ABC(&qword_100601E58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50C0;
    *(inited + 32) = v8;
    *(inited + 40) = v7;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_1004C50F0;
    *(inited + 72) = 3;

    *(v0 + 304) = sub_100029080(inited);
    *(v0 + 312) = v13;
    *(v0 + 320) = v14;
    *(v0 + 336) = v15;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1004BC474();
    *(v0 + 328) = sub_1004BC464();
    v17 = sub_1004BC3E4();

    return _swift_task_switch(sub_10008D2A8, v17, v16);
  }
}

uint64_t sub_10008D2A8()
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

  sub_10000F778(v3, v4, &qword_100600DE0);
  v8 = *(v1 + v2[7]);
  v10 = *v1;
  v9 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8);
  v76 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v73;
  *(v6 + 8) = v74;
  *(v6 + 16) = 10501;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0);
  v75 = v9;
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  *v12 = v10;
  v12[1] = v9;
  v13 = v6 + v5[10];
  *v13 = v77;
  *(v13 + 16) = v79;
  *(v13 + 24) = v80;
  sub_10000F778(v7, v72, &qword_1006014F8);
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

    sub_100024AE0(v10, v9);
    v20 = v76;

    sub_100025A94(v18, v17, v16, v15, SBYTE1(v15));
    sub_100007214(v19, &qword_1006014F8);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v19;
    v22 = v19[1];

    sub_100024AE0(v10, v75);
    v20 = v76;

    sub_100025A94(v18, v17, v16, v15, SBYTE1(v15));

    sub_10005BAA4(v19, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 192);
  v24 = *(v0 + 176);
  v25 = (*(v0 + 208) + *(*(v0 + 200) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8);
  v26 = (v81)(v24, 1, v78);
  v27 = *(v0 + 176);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 176), &qword_1006014F8);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10005BAA4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 192);
  v31 = *(v0 + 168);
  v32 = (*(v0 + 208) + *(*(v0 + 200) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8);
  if ((v81)(v31, 1, v78) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 224);
    sub_100007214(*(v0 + 168), &qword_1006014F8);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 168);
    sub_10000F778(v36 + v78[6], *(v0 + 224), &qword_100600DE0);
    sub_10005BAA4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 192);
  v38 = *(v0 + 160);
  sub_100025B04(*(v0 + 224), *(v0 + 208) + *(*(v0 + 200) + 56), &qword_100600DE0);
  sub_10000F778(v37, v38, &qword_1006014F8);
  v39 = (v81)(v38, 1, v78);
  v40 = *(v0 + 160);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 160), &qword_1006014F8);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v78[7]);

    sub_10005BAA4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 192);
  v43 = *(v0 + 152);
  *(*(v0 + 208) + *(*(v0 + 200) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8);
  v44 = (v81)(v43, 1, v78);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v78[9]);
    sub_10005BAA4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 192);
  v48 = *(v0 + 144);
  *(*(v0 + 208) + *(*(v0 + 200) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8);
  v49 = (v81)(v48, 1, v78);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 144), &qword_1006014F8);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v78[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10005BAA4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 192);
  v55 = *(v0 + 136);
  v56 = (*(v0 + 208) + *(*(v0 + 200) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8);
  v57 = (v81)(v55, 1, v78);
  v58 = *(v0 + 136);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v78[11]);
    sub_10005BAA4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 208);
  v61 = *(v0 + 216);
  v62 = *(v0 + 200);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v20;
  sub_1000521DC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
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
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_10005BAA4(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0);

  return _swift_task_switch(sub_10008DA80, 0, 0);
}

uint64_t sub_10008DA80()
{
  sub_10005BAA4(*(v0 + 272), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s9MusicCore7ActionsO13ReportConcernO7ContextV13menuItemTitleSSvg_0()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10008DD98()
{

  return swift_deallocObject();
}

uint64_t sub_10008DDD0()
{
  v1 = *(sub_100003ABC(&qword_100601C50) - 8);
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
      v7 = sub_1004B6B04();
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

uint64_t sub_10008E044()
{
  v2 = *(sub_100003ABC(&qword_100601C50) - 8);
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
  v11[1] = sub_1000136EC;

  return sub_10008CD9C(v0 + v3, v7, v8, v9, v10);
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

    sub_1004B85A4();

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
              v39 = sub_1004BBE64();
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
  sub_10009EE34(a3, v22, type metadata accessor for Actions.PlaybackContext);
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
  sub_10009EF7C(v22, v52, type metadata accessor for Actions.PlaybackContext);
  v76 = *(v45 + 32);
  v54 = v53 + v48;
  v55 = v53;
  v82 = v53;
  v76(v54, v16, v42);
  v56 = v89;
  *(v55 + v49) = v89;
  v57 = v85;
  sub_10009EE34(v47, v85, v78);
  v58 = (v43 + 16) & ~v43;
  v59 = (v91 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  sub_10009EF7C(v57, v60 + v58, v74);
  *(v60 + v59) = v56;
  sub_100048998(v86, v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
  v61 = v87;
  v62 = v75;
  v63 = v76;
  v76(v87, v79, v75);
  v64 = *(sub_100003ABC(&qword_100601C50) - 8);
  v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v66 = (*(v64 + 64) + v46 + v65) & ~v46;
  v67 = &v80[v66] & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v69 = v92;
  *(v68 + 16) = v62;
  *(v68 + 24) = v69;
  sub_100025B04(v88, v68 + v65, &qword_100601C50);
  v63(v68 + v66, v61, v62);
  *(v68 + v67) = v56;
  sub_10004AF8C(v56);
  sub_10004AF8C(v56);
  sub_10004AF8C(v56);
  result = sub_10009EFE4(v81, type metadata accessor for Actions.PlaybackContext);
  v71 = v90;
  v72 = v83;
  v73 = v84;
  *v90 = v56;
  v71[1] = v73;
  v71[2] = v72;
  v71[3] = sub_10009A714;
  v71[4] = v82;
  v71[5] = &unk_1004CB080;
  v71[6] = v60;
  v71[7] = &unk_1004CB090;
  v71[8] = v68;
  return result;
}

__n128 static Actions.Queue.action(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10009C3FC(a1, v7);
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
  v17 = *(sub_100003ABC(&qword_100601C50) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a7 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  sub_100025B04(a6, v21 + v18, &qword_100601C50);
  result = (*(v19 + 32))(v21 + v20, a1, a7);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = &unk_1004C9EE8;
  a9[3] = v16;
  a9[4] = &unk_1004CB0A0;
  a9[5] = v21;
  return result;
}

uint64_t sub_10008EAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_100003ABC(&qword_1006014F8);
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
  sub_100003ABC(&qword_100600DE0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_10008ECCC, 0, 0);
}

uint64_t sub_10008ECCC()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_10000F778(*(v0 + 72), v3, &qword_100601C50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 216), &qword_100601C50);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_10009EF7C(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_1004B6B04();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100003ABC(&qword_100601E58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_100029080(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_10005DC68(inited + 32);
    sub_1004BC474();
    *(v0 + 312) = sub_1004BC464();
    v18 = sub_1004BC3E4();

    return _swift_task_switch(sub_10008EFB8, v18, v17);
  }
}

uint64_t sub_10008EFB8()
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

  sub_10000F778(v3, v4, &qword_100600DE0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 15621;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0);
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
  sub_10000F778(v7, v72, &qword_1006014F8);
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

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));
    sub_100007214(v20, &qword_1006014F8);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));

    sub_10009EFE4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 144), &qword_1006014F8);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10009EFE4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_100007214(*(v0 + 136), &qword_1006014F8);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_10000F778(v36 + v14[6], *(v0 + 192), &qword_100600DE0);
    sub_10009EFE4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_100025B04(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_100600DE0);
  sub_10000F778(v37, v38, &qword_1006014F8);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 128), &qword_1006014F8);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10009EFE4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10009EFE4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 112), &qword_1006014F8);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10009EFE4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10009EFE4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_10009EF7C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
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
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_10009EFE4(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0);

  return _swift_task_switch(sub_10008F76C, 0, 0);
}

uint64_t sub_10008F76C()
{
  sub_10009EFE4(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

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
  return sub_100051CB8;
}

uint64_t (*sub_10008F9D4())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E79616C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E79616C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_1000524E8;
}

uint64_t Actions.CreateStation.Context.init(playbackContext:presentationSource:metricsReportingContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v8 = type metadata accessor for Actions.PlaybackContext();
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003ABC(&qword_1006025E8);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  v14 = sub_1004B7644();
  *&v39 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*(v17 + v18))
  {
    sub_100007214(a3, &qword_100601C50);
    v28 = a2;
    goto LABEL_9;
  }

  *&v40 = a3;
  *&v41 = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85A4();

  v19 = v45;
  if (!v45 || (v20 = [v45 tracklist], v19, v21 = objc_msgSend(v20, "playingItem"), v20, !v21) || (v22 = objc_msgSend(v21, "metadataObject"), v21, !v22))
  {

    sub_100007214(v40, &qword_100601C50);
    v28 = v41;
LABEL_9:
    sub_10005BC00(v28);
    result = sub_10009EFE4(a1, type metadata accessor for Actions.PlaybackContext);
    goto LABEL_10;
  }

  v23 = [v22 innermostModelObject];

  v24 = v23;
  sub_1004B7634();
  v25 = v39;
  if ((*(v39 + 48))(v13, 1, v14) == 1)
  {

    sub_100007214(v40, &qword_100601C50);
    sub_10005BC00(v41);
    sub_10009EFE4(a1, type metadata accessor for Actions.PlaybackContext);
    v26 = &qword_1006025E8;
    v27 = v13;
  }

  else
  {
    (*(v25 + 32))(v16, v13, v14);
    sub_100090058(v16, &v45);

    (*(v25 + 8))(v16, v14);
    if (*(&v46 + 1))
    {
      sub_100013414(&v45, v42);
      v33 = v43;
      v34 = v44;
      v35 = sub_100009178(v42, v43);
      __chkstk_darwin(v35);
      v37 = &v39 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v37);
      sub_10009EE34(a1, v10, type metadata accessor for Actions.PlaybackContext);
      Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(v37, v10, v41, v40, v33, v34, &v45);
      v40 = v46;
      v41 = v45;
      v39 = v47;
      sub_10009EFE4(a1, type metadata accessor for Actions.PlaybackContext);
      result = sub_100004C6C(v42);
      v32 = v39;
      v31 = v40;
      v30 = v41;
      goto LABEL_11;
    }

    sub_100007214(v40, &qword_100601C50);
    sub_10005BC00(v41);
    sub_10009EFE4(a1, type metadata accessor for Actions.PlaybackContext);
    v26 = &qword_100606290;
    v27 = &v45;
  }

  result = sub_100007214(v27, v26);
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

uint64_t sub_100090058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004BB564();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BB384();
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004B7644();
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
    v17 = sub_1000133B0(a2);
    return (v16)(v17, v7, v4);
  }

  else if (v15 == enum case for GenericMusicItem.song(_:))
  {
    (*(v12 + 96))(v14, v11);
    v19 = *(v22 + 32);
    v19(v10, v14, v8);
    *(a2 + 24) = v8;
    *(a2 + 32) = &protocol witness table for Song;
    v20 = sub_1000133B0(a2);
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
  v10 = sub_100003ABC(&qword_100601C50);
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
  sub_10009EE34(a2, &v57 - v26, type metadata accessor for Actions.PlaybackContext);
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
  sub_10009EF7C(v27, v34, type metadata accessor for Actions.PlaybackContext);
  v60 = *(v77 + 32);
  v77 += 32;
  v60(v35 + v31, v57, a5);
  v36 = v64;
  v59(v64, v71, a5);
  sub_10009EF7C(v62, v72, type metadata accessor for Actions.PlaybackContext);
  sub_10000F778(v75, v73, &qword_100601C50);
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
  sub_10009EF7C(v72, v42 + v38, v58);
  sub_100025B04(v73, v42 + v40, &qword_100601C50);
  sub_100048998(v69, v42 + v41);
  v48 = v68;
  sub_100025B04(v75, v68, &qword_100601C50);
  v49 = v67;
  v47(v67, v71, v46);
  v50 = (v39 + 32) & ~v39;
  v51 = (v74 + v30 + v50) & ~v30;
  v52 = swift_allocObject();
  v53 = v76;
  *(v52 + 16) = v46;
  *(v52 + 24) = v53;
  sub_100025B04(v48, v52 + v50, &qword_100601C50);
  result = (v47)(v52 + v51, v49, v46);
  v55 = v70;
  v56 = v65;
  *v70 = sub_10009C908;
  v55[1] = v56;
  v55[2] = &unk_1004CB0D8;
  v55[3] = v42;
  v55[4] = &unk_1004CB0E8;
  v55[5] = v52;
  return result;
}

unint64_t sub_100090888(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v52 = sub_1004BB564();
  v49 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004BAD54();
  v54 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004BB384();
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
    sub_1004BD404(34);
    v78._countAndFlagsBits = 0xD000000000000020;
    v78._object = 0x80000001004FD7D0;
    sub_1004BC024(v78);
    sub_1004BD964();
    return v67;
  }

  v48 = v7;
  v25 = *(v17 + 16);
  v25(v21, a2, a3);

  sub_100003ABC(&qword_100601518);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v69 = 0;
    v67 = 0u;
    v68 = 0u;
    sub_100007214(&v67, &unk_100606F20);
LABEL_11:

    v31 = 13;
    return v31 | 0xD000000000000010;
  }

  v47 = v17;
  sub_100013414(&v67, v75);
  v26 = v76;
  v27 = v77;
  sub_100009178(v75, v76);
  (*(v27 + 8))(v26, v27);
  if (!v28)
  {
    sub_100004C6C(v75);
    goto LABEL_11;
  }

  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

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

  v32 = sub_1004BD9C4();

  if ((v32 & 1) == 0)
  {

    sub_100051DEC(&v67);
    sub_100004C6C(v75);
    v31 = 5;
    return v31 | 0xD000000000000010;
  }

LABEL_16:
  if (sub_1000FE42C(4, v69))
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
        v37 = sub_1004BCA94();
        v38 = *(v36 + 16);
        v39 = v50;
        v38(v50, v35, v34);
        sub_100003ABC(&qword_1006026B0);
        swift_allocObject();

        sub_10009D154(v39, v37, v24);

        __chkstk_darwin(v40);
        *(&v47 - 2) = v34;
        *(&v47 - 1) = &protocol witness table for Song;
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v47 - 2) = v34;
        *(&v47 - 1) = &protocol witness table for Song;
        swift_getKeyPath();
        v42 = v53;
        sub_1004B85A4();

        v43 = sub_1000911B8();

        sub_100051DEC(&v67);
        (*(v54 + 8))(v42, v48);
        (*(v56 + 8))(v55, v34);
        (*(v29 + 8))(v33, a3);
        sub_100004C6C(v75);
        return v43;
      }

      else
      {
        v45 = v51;
        v44 = v52;
        v46 = swift_dynamicCast();

        sub_100051DEC(&v67);
        if (v46)
        {
          (*(v49 + 8))(v45, v44);
          (*(v29 + 8))(v33, a3);
          sub_100004C6C(v75);
          return 0;
        }

        else
        {
          (*(v29 + 8))(v33, a3);
          sub_100004C6C(v75);
          return 0xD000000000000010;
        }
      }
    }

    else
    {

      sub_100051DEC(&v67);
      sub_100004C6C(v75);
      return 0xD000000000000017;
    }
  }

  else
  {

    sub_100051DEC(&v67);
    sub_100004C6C(v75);
    return 0xD000000000000016;
  }
}

uint64_t sub_1000911B8()
{
  v1 = v0;
  v2 = sub_1004BAD44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004BAD54();
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
    sub_1004BD5C4();
    v11 = v17;
    (*(v3 + 8))(v5, v2);
  }

  else if (v10 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    return 0;
  }

  else
  {
    if (qword_1005FFD38 != -1)
    {
      swift_once();
    }

    v12 = sub_1004B80B4();
    sub_100007084(v12, static Logger.actions);
    v13 = sub_1004B8094();
    v14 = sub_1004BC994();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unknown playability status", v15, 2u);
    }

    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1004BD5C4();
    v11 = v17;
    (*(v7 + 8))(v9, v6);
  }

  return v11;
}

uint64_t sub_1000914D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  sub_100003ABC(&qword_100602698);
  v5[70] = swift_task_alloc();
  v7 = sub_1004B8104();
  v5[71] = v7;
  v5[72] = *(v7 - 8);
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = type metadata accessor for Notice.Variant(0);
  v5[76] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50);
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  sub_100003ABC(&qword_100601E90);
  v5[81] = swift_task_alloc();
  v5[82] = *(a5 - 8);
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v8 = sub_1004BB384();
  v5[85] = v8;
  v5[86] = *(v8 - 8);
  v5[87] = swift_task_alloc();

  return _swift_task_switch(sub_100091814, 0, 0);
}

uint64_t sub_100091814()
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
    sub_100007214(v16, &qword_100601E90);
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

  sub_1004B85A4();

  v12 = *(v0 + 440);
  v13 = *(v0 + 696);
  if (!v12)
  {
LABEL_6:
    (*(*(v0 + 688) + 8))(v13, *(v0 + 680));
    goto LABEL_9;
  }

  sub_1004BCAB4();
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

  sub_1004B85A4();

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
    sub_100003ABC(&qword_1006026A0);
    if (swift_dynamicCast())
    {
      sub_100013414((v0 + 56), v0 + 16);
      sub_10001342C(v0 + 16, v0 + 96);
      sub_1004B80E4();
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
      sub_10000F778(v26 + *(v27 + 28), v0 + 176, &qword_100601C48);
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
      sub_10009EE34(v25, v23, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      sub_10009EE9C(v0 + 136, v28);
      *(v23 + v24[5]) = 2;
      *(v23 + v24[6]) = 1;
      sub_10000F778(v0 + 176, v0 + 256, &qword_100601C48);
      if (*(v0 + 280))
      {
        sub_100013414((v0 + 256), v0 + 216);
      }

      else
      {
        *(v0 + 424) = 0;
        sub_100003ABC(&qword_100602688);
        v51 = sub_1004BBF34();
        *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 216) = v51;
        *(v0 + 224) = v52;
        if (*(v0 + 280))
        {
          sub_100007214(v0 + 256, &qword_100601C48);
        }
      }

      v53 = *(v0 + 552);
      v54 = *(v0 + 544);
      v55 = *(v0 + 528);
      v56 = *(v0 + 520);
      v57 = *(v0 + 464);
      sub_10009EF0C(v0 + 216, v29);
      sub_100007214(v0 + 176, &qword_100601C48);
      sub_100007214(v0 + 136, &qword_100606290);
      sub_10009EFE4(v55, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      sub_10009EF7C(v54, v53, type metadata accessor for PlaybackIntentDescriptor);
      v58 = (v57 + *(v27 + 24));
      v59 = *v58;
      v60 = v58[1];
      v61 = v58[2];
      v62 = v58[3];
      sub_10009EE34(v53, v56, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v63 = *(v0 + 584);
        v64 = *(v0 + 576);
        v65 = *(v0 + 568);
        v95(v63, *(v0 + 520), v65);
        sub_10003F380(v59, v60, v61, v62);
        v66 = sub_1004B80D4();
        sub_1001F7864(v59, v60, v61, v62);
        sub_10003F3E0(v59, v60, v61, v62);

        (*(v64 + 8))(v63, v65);
      }

      else
      {
        v67 = **(v0 + 520);
        sub_10003F380(v59, v60, v61, v62);
        sub_1001F7864(v59, v60, v61, v62);
        sub_10003F3E0(v59, v60, v61, v62);
      }

      sub_10009EE34(*(v0 + 552), *(v0 + 512), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v68 = *(v0 + 584);
        v69 = *(v0 + 576);
        v70 = *(v0 + 568);
        v95(v68, *(v0 + 512), v70);
        v71 = sub_1004B80D4();
        (*(v69 + 8))(v68, v70);
      }

      else
      {
        v71 = **(v0 + 512);
      }

      v72 = *(v0 + 632);
      sub_10000F778(*(v0 + 472), v72, &qword_100601C50);
      v73 = type metadata accessor for Actions.MetricsReportingContext();
      v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
      v75 = *(v0 + 632);
      if (v74 == 1)
      {
        sub_100007214(*(v0 + 632), &qword_100601C50);
        v76 = 0;
      }

      else
      {
        v77 = *v75;
        v78 = v75[1];
        sub_100024AE0(*v75, v78);
        sub_10009EFE4(v75, type metadata accessor for Actions.MetricsReportingContext);
        if (v78 == 12)
        {
          v76 = 0;
        }

        else
        {
          MetricsEvent.Click.ActionContext.rawValue.getter(v77, v78);
          sub_100024B3C(v77, v78);
          v76 = sub_1004BBE24();
        }
      }

      v79 = *(v0 + 552);
      v80 = *(v0 + 504);
      [v71 setPlayActivityFeatureName:v76];

      sub_10009EE34(v79, v80, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v81 = *(v0 + 584);
        v82 = *(v0 + 576);
        v83 = *(v0 + 568);
        v95(v81, *(v0 + 504), v83);
        v84 = sub_1004B80D4();
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
      v85[1] = sub_100092B4C;
      v86 = *(v0 + 552);

      return PlaybackController.add(_:route:)(v86, 0);
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_100007214(v0 + 56, &qword_1006026A8);

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
  sub_10003F380(*v42, v44, v45, v46);
  sub_1001F7864(v43, v44, v45, v46);
  sub_10003F3E0(v43, v44, v45, v46);
  sub_10000F778(v39, v38, &qword_100601C50);
  v47 = type metadata accessor for Actions.MetricsReportingContext();
  v48 = (*(*(v47 - 8) + 48))(v38, 1, v47);
  v49 = *(v0 + 640);
  if (v48 == 1)
  {
    sub_100007214(*(v0 + 640), &qword_100601C50);
    v50 = 0;
  }

  else
  {
    v90 = *v49;
    v91 = v49[1];
    sub_100024AE0(*v49, v91);
    sub_10009EFE4(v49, type metadata accessor for Actions.MetricsReportingContext);
    if (v91 == 12)
    {
      v50 = 0;
    }

    else
    {
      MetricsEvent.Click.ActionContext.rawValue.getter(v90, v91);
      sub_100024B3C(v90, v91);
      v50 = sub_1004BBE24();
    }
  }

  v92 = *(v0 + 464);
  [v37 setPlayActivityFeatureName:v50];

  [v37 setPlayActivityRecommendationData:0];
  v93 = *(v41 + 28);
  v94 = swift_task_alloc();
  *(v0 + 720) = v94;
  *v94 = v0;
  v94[1] = sub_100092684;

  return PlaybackController.insert(_:location:issuer:)(v37, 0, v92 + v93);
}

uint64_t sub_100092684()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_100093028;
  }

  else
  {
    v2 = sub_100092798;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100092798()
{
  v1 = v0[78];
  v2 = v0[76];
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_10009EFE4(v2, type metadata accessor for Notice.Variant);
  sub_1004BC474();
  v0[92] = sub_1004BC464();
  v4 = sub_1004BC3E4();

  return _swift_task_switch(sub_10009286C, v4, v3);
}

uint64_t sub_10009286C()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100238978((v0 + 42));

    v3 = v0[45];
    v4 = v0[78];
    if (v3)
    {
      v5 = v0[46];
      sub_100009178(v0 + 42, v0[45]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_10009EFE4(v4, type metadata accessor for Notice);
      sub_100004C6C((v0 + 42));
    }

    else
    {
      sub_10009EFE4(v0[78], type metadata accessor for Notice);
      sub_100007214((v0 + 42), &qword_100601CE0);
    }
  }

  else
  {
    sub_10009EFE4(v0[78], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_1000929BC, 0, 0);
}

uint64_t sub_1000929BC()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100092B4C()
{
  *(*v1 + 752) = v0;

  if (v0)
  {
    v2 = sub_100093314;
  }

  else
  {
    v2 = sub_100092C60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100092C60()
{
  v1 = v0[77];
  v2 = v0[76];
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_10009EFE4(v2, type metadata accessor for Notice.Variant);
  sub_1004BC474();
  v0[95] = sub_1004BC464();
  v4 = sub_1004BC3E4();

  return _swift_task_switch(sub_100092D34, v4, v3);
}

uint64_t sub_100092D34()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100238978((v0 + 37));

    v3 = v0[40];
    v4 = v0[77];
    if (v3)
    {
      v5 = v0[41];
      sub_100009178(v0 + 37, v0[40]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_10009EFE4(v4, type metadata accessor for Notice);
      sub_100004C6C((v0 + 37));
    }

    else
    {
      sub_10009EFE4(v0[77], type metadata accessor for Notice);
      sub_100007214((v0 + 37), &qword_100601CE0);
    }
  }

  else
  {
    sub_10009EFE4(v0[77], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_100092E84, 0, 0);
}

uint64_t sub_100092E84()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  sub_10009EFE4(v0[69], type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v1, v3);
  sub_100004C6C((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_100093028()
{
  v17 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 728);
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v6 = sub_1004B80B4();
  sub_100007084(v6, static Logger.actions);
  swift_errorRetain();
  v7 = sub_1004B8094();
  v8 = sub_1004BC984();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    *(v0 + 432) = v5;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v11 = sub_1004BBF04();
    v13 = sub_100012018(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to Create Station with error=%{public}s", v9, 0xCu);
    sub_100004C6C(v10);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100093314()
{
  v16 = v0;
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  sub_10009EFE4(v0[69], type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v1, v3);
  sub_100004C6C((v0 + 2));
  v4 = v0[94];
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v5 = sub_1004B80B4();
  sub_100007084(v5, static Logger.actions);
  swift_errorRetain();
  v6 = sub_1004B8094();
  v7 = sub_1004BC984();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v0[54] = v4;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v10 = sub_1004BBF04();
    v12 = sub_100012018(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to Create Station with error=%{public}s", v8, 0xCu);
    sub_100004C6C(v9);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100093614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_100003ABC(&qword_1006014F8);
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
  sub_100003ABC(&qword_100600DE0);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_100093828, 0, 0);
}

uint64_t sub_100093828()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_10000F778(*(v0 + 96), v3, &qword_100601C50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 240), &qword_100601C50);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_10009EF7C(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = sub_1004B6B04();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100003ABC(&qword_100601E58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50C0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 4;
    *(v0 + 312) = sub_100029080(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1004BC474();
    *(v0 + 336) = sub_1004BC464();
    v18 = sub_1004BC3E4();

    return _swift_task_switch(sub_100093B2C, v18, v17);
  }
}

uint64_t sub_100093B2C()
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

  sub_10000F778(v3, v4, &qword_100600DE0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 3077;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0);
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
  sub_10000F778(v7, v72, &qword_1006014F8);
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

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));
    sub_100007214(v20, &qword_1006014F8);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));

    sub_10009EFE4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 168), &qword_1006014F8);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10009EFE4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_100007214(*(v0 + 160), &qword_1006014F8);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_10000F778(v36 + v14[6], *(v0 + 216), &qword_100600DE0);
    sub_10009EFE4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_100025B04(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_100600DE0);
  sub_10000F778(v37, v38, &qword_1006014F8);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 152), &qword_1006014F8);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10009EFE4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10009EFE4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 136), &qword_1006014F8);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10009EFE4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10009EFE4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_10009EF7C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
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
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_10009EFE4(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0);

  return _swift_task_switch(sub_1000942E4, 0, 0);
}

uint64_t sub_1000942E4()
{
  sub_10009EFE4(*(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Actions.CreateStation.Context.menuItemTitle.getter()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.CreateStation.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x80000001004FD6A0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x80000001004FD6A0;
  return sub_1000524E8;
}

uint64_t (*sub_1000946A4())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x80000001004FD6A0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x80000001004FD6A0;
  return sub_1000524E8;
}

double static Actions.Playback.action(context:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10009DE30(a1, v7);
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

uint64_t sub_1000947A8(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 24) + **(a2 + 24));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10001384C;

  return v5();
}

double sub_100094890@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v16[0] = *a1;
  v4 = *(a1 + 32);
  v16[1] = v3;
  v16[2] = v4;
  v17 = *(a1 + 48);
  sub_10009DE30(v16, v9);
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

uint64_t sub_10009493C(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 40) + **(a2 + 40));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10001384C;

  return v5();
}

uint64_t sub_100094A24(uint64_t a1)
{
  v4 = (*(a1 + 56) + **(a1 + 56));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return v4();
}

__n128 sub_100094B0C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v12 = *(a1 + 64);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  sub_10009C3FC(v11, v9);
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
  v21 = sub_100003ABC(&qword_1006025F0);
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

  v32 = sub_1004BAD54();
  v33 = *(*(v32 - 8) + 56);
  v73 = v28;
  v33(v28, v31, 1, v32);
  v76 = type metadata accessor for Actions.PlaybackContext;
  v68 = v20;
  sub_10009EE34(a2, v20, type metadata accessor for Actions.PlaybackContext);
  v67 = v26;
  sub_10000F778(v28, v26, &qword_1006025F0);
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
  sub_10009EF7C(v68, v43, type metadata accessor for Actions.PlaybackContext);
  sub_100025B04(v67, v44 + v39, &qword_1006025F0);
  v45 = *(v34 + 32);
  v91 = v34 + 32;
  v85 = v45;
  (v45)(v44 + ((v22 + v40 + v39) & ~v40), v87, v35);
  *(v44 + v66) = v90;
  v46 = v79;
  sub_100025B04(v73, v79, &qword_1006025F0);
  v47 = v80;
  v72(v80, v86, v35);
  sub_10009EE34(v88, v89, v76);
  v48 = (v38 + 32) & ~v38;
  v49 = (v70 + v48) & ~v40;
  v50 = (v69 + v36 + v49) & ~v36;
  v51 = (v74 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v92;
  *(v52 + 16) = v35;
  *(v52 + 24) = v53;
  sub_100025B04(v46, v52 + v48, &qword_1006025F0);
  v54 = v85;
  (v85)(v52 + v49, v47, v35);
  sub_10009EF7C(v89, v52 + v50, v75);
  v55 = v90;
  *(v52 + v51) = v90;
  v56 = v81;
  v54(v81, v86, v35);
  v57 = *(sub_100003ABC(&qword_100601C50) - 8);
  v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v59 = (*(v57 + 64) + v40 + v58) & ~v40;
  v60 = (v78 + v59) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v92;
  *(v61 + 16) = v35;
  *(v61 + 24) = v62;
  sub_100025B04(v82, v61 + v58, &qword_100601C50);
  (v85)(v61 + v59, v56, v35);
  *(v61 + v60) = v55;
  result = sub_10009EFE4(v88, type metadata accessor for Actions.PlaybackContext);
  v64 = v83;
  *v83 = v55;
  v64[1] = sub_10009E208;
  v64[2] = v77;
  v64[3] = &unk_1004CB100;
  v64[4] = v52;
  v64[5] = &unk_1004CB110;
  v64[6] = v61;
  return result;
}

unint64_t sub_1000952CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v94 = a4;
  v95 = a6;
  v98 = a2;
  v99 = a3;
  v8 = sub_1004BAD44();
  v87 = *(v8 - 8);
  v88 = v8;
  v9 = __chkstk_darwin(v8);
  v85 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v86 = &v84 - v12;
  __chkstk_darwin(v11);
  v90 = &v84 - v13;
  v14 = sub_1004B7994();
  v92 = *(v14 - 8);
  v93 = v14;
  __chkstk_darwin(v14);
  v91 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003ABC(&qword_100602678);
  v17 = __chkstk_darwin(v16 - 8);
  v96 = &v84 - v18;
  v100 = a5;
  v97 = *(a5 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v84 - v22;
  v24 = sub_100003ABC(&qword_1006025F0);
  __chkstk_darwin(v24 - 8);
  v26 = &v84 - v25;
  v27 = sub_1004BAD54();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v84 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v89 = &v84 - v32;
  __chkstk_darwin(v31);
  v34 = &v84 - v33;
  v35 = sub_100003ABC(&qword_100601C40);
  __chkstk_darwin(v35 - 8);
  v37 = &v84 - v36;
  v38 = type metadata accessor for Actions.PlaybackContext();
  sub_10000F778(a1 + *(v38 + 20), v37, &qword_100601C40);
  v39 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  LODWORD(a1) = (*(*(v39 - 8) + 48))(v37, 1, v39);
  sub_100007214(v37, &qword_100601C40);
  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  sub_10000F778(v98, v26, &qword_1006025F0);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_100007214(v26, &qword_1006025F0);
    v101 = 0;
    v102 = 0xE000000000000000;
    sub_1004BD404(37);

    v101 = 0xD000000000000023;
    v102 = 0x80000001004FD740;
    (*(v97 + 16))(v23, v99, v100);
    v103._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v103);

    return v101;
  }

  v41 = v28;
  v42 = *(v28 + 32);
  v43 = v34;
  v98 = v27;
  v42(v34, v26, v27);
  v45 = v99;
  v44 = v100;
  v46 = sub_100095D90(v99, v94, v100);
  (*(v97 + 16))(v21, v45, v44);
  v47 = sub_1004B79E4();
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
    sub_1004B79A4();
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
    sub_100007214(v48, &qword_100602678);
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
      if (qword_1005FFD38 != -1)
      {
        swift_once();
      }

      v79 = v41;
      v80 = sub_1004B80B4();
      sub_100007084(v80, static Logger.actions);
      v81 = sub_1004B8094();
      v82 = sub_1004BC994();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "Unknown playability status", v83, 2u);
      }

      v101 = 0;
      v102 = 0xE000000000000000;
      sub_1004BD404(18);

      v101 = 0xD000000000000010;
      v102 = 0x80000001004FD790;
      v64(v84, v43, v63);
      v105._countAndFlagsBits = sub_1004BBF04();
      sub_1004BC024(v105);

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
  sub_1004BD404(26);

  v101 = 0xD000000000000018;
  v102 = 0x80000001004FD7B0;
  v74 = v90;
  v71(v85, v90, v68);
  v104._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v104);

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