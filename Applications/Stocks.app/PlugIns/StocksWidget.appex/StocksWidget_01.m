uint64_t sub_10001C96C()
{
  v1[505] = v0;
  if (v0)
  {
    v2 = sub_10001DB08;
  }

  else
  {
    v2 = sub_10001C9A4;
  }

  return _swift_task_switch(v2, v1[497], v1[498]);
}

uint64_t sub_10001C9A4()
{
  v38 = v0;
  v1 = *(v0 + 3952);
  v2 = *(v0 + 3944);
  v3 = *(v0 + 3928);
  v4 = *(v0 + 3576);
  v5 = *(*(v0 + 3936) + 16);
  v5(v1, *(v0 + 3960), v3);
  v5(v2, v1, v3);
  v6 = sub_1000DA350();
  v7 = sub_1000DBDD0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 3944);
  v10 = *(v0 + 3936);
  v11 = *(v0 + 3928);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = v13;
    *v12 = 134218242;
    v14 = sub_1000D9680();
    (*(v10 + 8))(v9, v11);
    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v15 = sub_1000848C8(*(v0 + 3392), *(v0 + 3400), &v37);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetched priceChangeDisplay=%ld, id=%s", v12, 0x16u);
    sub_100006D0C(v13);
  }

  else
  {
    (*(v10 + 8))(*(v0 + 3944), *(v0 + 3928));
  }

  v16 = *(v0 + 3576);
  v17 = sub_1000DA350();
  v18 = sub_1000DBDD0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v19 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v21 = sub_1000848C8(*(v0 + 3376), *(v0 + 3384), &v37);

    *(v19 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v17, v18, "Successfully created timeline entry, id=%s", v19, 0xCu);
    sub_100006D0C(v20);
  }

  v22 = *(v0 + 2036);
  v23 = *(v0 + 3952);
  v24 = *(v0 + 3936);
  v25 = *(v0 + 3928);
  v35 = *(v0 + 3912);
  v36 = *(v0 + 4024);
  v33 = *(v0 + 3896);
  v34 = *(v0 + 3888);
  v26 = *(v0 + 3776);
  v27 = *(v0 + 3704);
  v28 = *(v0 + 3640);
  v29 = *(v0 + 3552);
  v30 = type metadata accessor for DetailTimelineEntry();
  sub_10002337C(v28, v29 + v30[5], type metadata accessor for DetailContentViewModel);
  sub_10002337C(v26 + v22, v29 + v30[6], sub_100023704);
  (*(v24 + 16))(v29 + v30[7], v23, v25);
  sub_1000D9080();
  (*(v24 + 8))(v23, v25);
  sub_100024BE4(v28, type metadata accessor for DetailContentViewModel);
  sub_100024BE4(v27, sub_100023660);
  v36(v35, v34);
  sub_100024BE4(v26, type metadata accessor for WidgetStock);
  *(v29 + v30[8]) = 0;
  *(v29 + v30[9]) = 0;
  v31 = *(v0 + 3848);

  return _swift_asyncLet_finish(v0 + 656, v31, sub_10001CE18, v0 + 2160);
}

uint64_t sub_10001CEAC()
{
  v1 = v0[496];

  sub_100006D0C(v0 + 325);
  sub_100006D0C(v0 + 295);
  sub_100006D0C(v0 + 265);
  sub_100006D0C(v0 + 365);
  v2 = v0[501];
  v3 = v0[500];
  v4 = v0[499];
  v5 = v0[495];
  v6 = v0[494];
  v7 = v0[493];
  v8 = v0[490];
  v9 = v0[489];
  v10 = v0[488];
  v13 = v0[485];
  v14 = v0[484];
  v15 = v0[481];
  v16 = v0[479];
  v17 = v0[476];
  v18 = v0[472];
  v19 = v0[471];
  v20 = v0[470];
  v21 = v0[469];
  v22 = v0[468];
  v23 = v0[466];
  v24 = v0[463];
  v25 = v0[462];
  v26 = v0[461];
  v27 = v0[460];
  v28 = v0[459];
  v29 = v0[456];
  v30 = v0[455];
  v31 = v0[453];
  v32 = v0[452];
  v33 = v0[451];
  v34 = v0[448];
  sub_100006D0C(v0 + 400);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10001D1A8()
{
  v54 = v0;
  v1 = v0[502];
  v2 = v0[496];
  v3 = v0[447];

  swift_errorRetain();
  v4 = sub_1000DA350();
  v5 = sub_1000DBDB0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v6 = 136315394;
    swift_getErrorValue();
    v7 = v0[414];
    v8 = v0[415];
    v9 = v0[416];
    v10 = sub_1000DC3B0();
    v12 = sub_1000848C8(v10, v11, v53);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v13 = sub_1000848C8(v0[420], v0[421], v53);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to create timeline entry, error=%s, id=%s ", v6, 0x16u);
    swift_arrayDestroy();
  }

  v14 = v0[451];
  v15 = v0[450];
  v16 = v0[446];
  v17 = sub_1000DB7C0();
  sub_1000DB7B0();
  v18 = v0[451];
  v19 = v0[449];
  sub_100058718(v18, (v17 & 1) == 0, v0[444]);

  (*(v15 + 8))(v18, v19);
  sub_100006D0C(v0 + 325);
  sub_100006D0C(v0 + 295);
  sub_100006D0C(v0 + 265);
  sub_100006D0C(v0 + 365);
  v20 = v0[501];
  v21 = v0[500];
  v22 = v0[499];
  v23 = v0[495];
  v24 = v0[494];
  v25 = v0[493];
  v26 = v0[490];
  v27 = v0[489];
  v28 = v0[488];
  v31 = v0[485];
  v32 = v0[484];
  v33 = v0[481];
  v34 = v0[479];
  v35 = v0[476];
  v36 = v0[472];
  v37 = v0[471];
  v38 = v0[470];
  v39 = v0[469];
  v40 = v0[468];
  v41 = v0[466];
  v42 = v0[463];
  v43 = v0[462];
  v44 = v0[461];
  v45 = v0[460];
  v46 = v0[459];
  v47 = v0[456];
  v48 = v0[455];
  v49 = v0[453];
  v50 = v0[452];
  v51 = v0[451];
  v52 = v0[448];
  sub_100006D0C(v0 + 400);

  v29 = v0[1];

  return v29();
}

uint64_t sub_10001D5BC()
{
  v1 = *(v0 + 3776);
  v2 = *(v0 + 3896) + 8;
  (*(v0 + 4024))(*(v0 + 3912), *(v0 + 3888));
  sub_100024BE4(v1, type metadata accessor for WidgetStock);
  v3 = *(v0 + 3848);

  return _swift_asyncLet_finish(v0 + 656, v3, sub_10001D660, v0 + 2800);
}

uint64_t sub_10001D6F4()
{
  v54 = v0;
  v1 = v0[504];
  v2 = v0[496];
  v3 = v0[447];

  swift_errorRetain();
  v4 = sub_1000DA350();
  v5 = sub_1000DBDB0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v6 = 136315394;
    swift_getErrorValue();
    v7 = v0[414];
    v8 = v0[415];
    v9 = v0[416];
    v10 = sub_1000DC3B0();
    v12 = sub_1000848C8(v10, v11, v53);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v13 = sub_1000848C8(v0[420], v0[421], v53);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to create timeline entry, error=%s, id=%s ", v6, 0x16u);
    swift_arrayDestroy();
  }

  v14 = v0[451];
  v15 = v0[450];
  v16 = v0[446];
  v17 = sub_1000DB7C0();
  sub_1000DB7B0();
  v18 = v0[451];
  v19 = v0[449];
  sub_100058718(v18, (v17 & 1) == 0, v0[444]);

  (*(v15 + 8))(v18, v19);
  sub_100006D0C(v0 + 325);
  sub_100006D0C(v0 + 295);
  sub_100006D0C(v0 + 265);
  sub_100006D0C(v0 + 365);
  v20 = v0[501];
  v21 = v0[500];
  v22 = v0[499];
  v23 = v0[495];
  v24 = v0[494];
  v25 = v0[493];
  v26 = v0[490];
  v27 = v0[489];
  v28 = v0[488];
  v31 = v0[485];
  v32 = v0[484];
  v33 = v0[481];
  v34 = v0[479];
  v35 = v0[476];
  v36 = v0[472];
  v37 = v0[471];
  v38 = v0[470];
  v39 = v0[469];
  v40 = v0[468];
  v41 = v0[466];
  v42 = v0[463];
  v43 = v0[462];
  v44 = v0[461];
  v45 = v0[460];
  v46 = v0[459];
  v47 = v0[456];
  v48 = v0[455];
  v49 = v0[453];
  v50 = v0[452];
  v51 = v0[451];
  v52 = v0[448];
  sub_100006D0C(v0 + 400);

  v29 = v0[1];

  return v29();
}

uint64_t sub_10001DB08()
{
  v38 = v0;
  v1 = *(v0 + 4040);
  v2 = *(v0 + 3576);
  swift_errorRetain();
  v3 = sub_1000DA350();
  v4 = sub_1000DBDB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 4040);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = *(v0 + 3336);
    v9 = *(v0 + 3344);
    v10 = *(v0 + 3352);
    v11 = sub_1000DC3B0();
    v13 = sub_1000848C8(v11, v12, &v37);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch price change display, falling back to default, error=%s", v6, 0xCu);
    sub_100006D0C(v7);
  }

  v14 = *(v0 + 4040);
  v15 = *(v0 + 3952);
  sub_1000D9C70();

  v16 = *(v0 + 3576);
  v17 = sub_1000DA350();
  v18 = sub_1000DBDD0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v19 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v21 = sub_1000848C8(*(v0 + 3376), *(v0 + 3384), &v37);

    *(v19 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v17, v18, "Successfully created timeline entry, id=%s", v19, 0xCu);
    sub_100006D0C(v20);
  }

  v22 = *(v0 + 2036);
  v23 = *(v0 + 3952);
  v24 = *(v0 + 3936);
  v25 = *(v0 + 3928);
  v35 = *(v0 + 3912);
  v36 = *(v0 + 4024);
  v33 = *(v0 + 3896);
  v34 = *(v0 + 3888);
  v26 = *(v0 + 3776);
  v27 = *(v0 + 3704);
  v28 = *(v0 + 3640);
  v29 = *(v0 + 3552);
  v30 = type metadata accessor for DetailTimelineEntry();
  sub_10002337C(v28, v29 + v30[5], type metadata accessor for DetailContentViewModel);
  sub_10002337C(v26 + v22, v29 + v30[6], sub_100023704);
  (*(v24 + 16))(v29 + v30[7], v23, v25);
  sub_1000D9080();
  (*(v24 + 8))(v23, v25);
  sub_100024BE4(v28, type metadata accessor for DetailContentViewModel);
  sub_100024BE4(v27, sub_100023660);
  v36(v35, v34);
  sub_100024BE4(v26, type metadata accessor for WidgetStock);
  *(v29 + v30[8]) = 0;
  *(v29 + v30[9]) = 0;
  v31 = *(v0 + 3848);

  return _swift_asyncLet_finish(v0 + 656, v31, sub_10001CE18, v0 + 2160);
}

uint64_t sub_10001DEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_1000D95E0();
  v4[26] = v5;
  v6 = *(v5 - 8);
  v4[27] = v6;
  v7 = *(v6 + 64) + 15;
  v4[28] = swift_task_alloc();
  sub_1000235CC();
  v4[29] = v8;
  v9 = *(v8 - 8);
  v4[30] = v9;
  v10 = *(v9 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v11 = sub_1000D9450();
  v4[33] = v11;
  v12 = *(v11 - 8);
  v4[34] = v12;
  v13 = *(v12 + 64) + 15;
  v4[35] = swift_task_alloc();
  sub_100023660(0);
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v16 = sub_1000D9090();
  v4[37] = v16;
  v17 = *(v16 - 8);
  v4[38] = v17;
  v18 = *(v17 + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v19 = sub_1000DB760();
  v4[42] = v19;
  v20 = *(v19 - 8);
  v4[43] = v20;
  v21 = *(v20 + 64) + 15;
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  sub_100023704(0);
  v23 = *(v22 - 8);
  v4[46] = v23;
  v24 = *(v23 + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v25 = type metadata accessor for DetailTimelineEntry();
  v4[49] = v25;
  v26 = *(v25 - 8);
  v4[50] = v26;
  v27 = *(v26 + 64) + 15;
  v4[51] = swift_task_alloc();
  sub_1000DBC20();
  v4[52] = sub_1000DBC10();
  v29 = sub_1000DBBE0();
  v4[53] = v29;
  v4[54] = v28;

  return _swift_task_switch(sub_10001E26C, v29, v28);
}

uint64_t sub_10001E26C()
{
  v1 = v0[25];
  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DetailTimelineProvider::timeline(for:in:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[55] = v5;
  *v5 = v0;
  v5[1] = sub_10001E380;
  v6 = v0[51];
  v7 = v0[24];
  v8 = v0[25];
  v9 = v0[23];

  return sub_1000186A4(v6, v9, v7);
}

uint64_t sub_10001E380()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v6 = *v0;

  v3 = *(v1 + 432);
  v4 = *(v1 + 424);

  return _swift_task_switch(sub_10001E4A0, v4, v3);
}

uint64_t sub_10001E4A0()
{
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(&unk_100128FD8, v0 + 56);
  v1 = *(v0 + 88);
  sub_100006C7C((v0 + 56), *(v0 + 80));
  sub_100002A50(0, &unk_1001168C0);
  result = sub_1000D9F00();
  if (!*(v0 + 120))
  {
    __break(1u);
    goto LABEL_26;
  }

  v3 = *(v0 + 408);
  v4 = *(v0 + 392);
  sub_100023738((v0 + 96), v0 + 16);
  sub_100006D0C((v0 + 56));
  if ((*(v3 + *(v4 + 36)) & 1) == 0)
  {
    v19 = *(v0 + 408);
    v20 = *(v0 + 384);
    v21 = *(v0 + 392);
    v23 = *(v0 + 368);
    v22 = *(v0 + 376);
    v24 = *(v0 + 264);
    v25 = *(v0 + 272);
    sub_10002510C(0, &qword_1001152D8, sub_100023704, &type metadata accessor for _ContiguousArrayStorage);
    v26 = *(v23 + 72);
    v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v28 = swift_allocObject();
    sub_10002337C(v19 + *(v21 + 24), v28 + v27, sub_100023704);
    sub_10002337C(v28 + v27, v20, sub_100023704);
    sub_100024B14(v20, v22, sub_100023704);
    if ((*(v25 + 48))(v22, 1, v24) == 1)
    {
      sub_100024BE4(*(v0 + 376), sub_100023704);
      v29 = _swiftEmptyArrayStorage;
    }

    else
    {
      v30 = *(*(v0 + 272) + 32);
      v30(*(v0 + 280), *(v0 + 376), *(v0 + 264));
      v29 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_10007B860(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      if (v32 >= v31 >> 1)
      {
        v29 = sub_10007B860(v31 > 1, v32 + 1, 1, v29);
      }

      v34 = *(v0 + 272);
      v33 = *(v0 + 280);
      v35 = *(v0 + 264);
      *(v29 + 2) = v32 + 1;
      v30(&v29[((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v32], v33, v35);
    }

    v36 = *(v0 + 408);
    v37 = *(v0 + 392);
    v38 = *(v0 + 328);
    v39 = *(v0 + 288);
    swift_setDeallocating();
    sub_100024BE4(v28 + v27, sub_100023704);
    swift_deallocClassInstance();
    v97 = sub_100006C7C((v0 + 16), *(v0 + 40));
    sub_1000D9050();
    v40 = *(v37 + 20);
    v41 = type metadata accessor for DetailContentViewModel(0);
    sub_10002337C(v36 + *(v41 + 44) + v40, v39, sub_100023660);
    sub_100023694(0);
    v43 = v42;
    v44 = *(v42 - 8);
    v45 = (*(v44 + 48))(v39, 1, v42);
    v46 = *(v0 + 288);
    v100 = v29;
    if (v45 == 1)
    {
      sub_100024BE4(v46, sub_100023660);
      v47 = 0;
    }

    else
    {
      v47 = sub_1000DA1E0();
      (*(v44 + 8))(v46, v43);
    }

    v48 = *(v0 + 400);
    v49 = *(v0 + 352);
    v50 = *(v0 + 360);
    v51 = *(v0 + 344);
    v87 = *(v0 + 408);
    v89 = *(v0 + 336);
    v52 = *(v0 + 328);
    v53 = *(v0 + 296);
    v54 = *(v0 + 304);
    v91 = *(v0 + 256);
    v94 = *(v0 + 392);
    v55 = *v97;
    sub_1000C884C(v52, v100, v47, v50);
    (*(v54 + 8))(v52, v53);
    sub_10002510C(0, &qword_1001152E0, type metadata accessor for DetailTimelineEntry, &type metadata accessor for _ContiguousArrayStorage);
    v56 = *(v48 + 80);
    v57 = *(v48 + 72);
    v58 = (v56 + 32) & ~v56;
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1000DDD30;
    sub_10002337C(v87, v59 + v58, type metadata accessor for DetailTimelineEntry);
    (*(v51 + 16))(v49, v50, v89);
    sub_100025364(&qword_100115298, type metadata accessor for DetailTimelineEntry);
    sub_1000DB810();
    sub_100006E20(&unk_100128FD8, v0 + 136);
    v60 = *(v0 + 168);
    sub_100006C7C((v0 + 136), *(v0 + 160));
    type metadata accessor for DemoTimelineManager();
    result = sub_1000D9EF0();
    if (result)
    {
      v61 = *(v0 + 416);

      sub_100006D0C((v0 + 136));
      sub_1000D9D00();
      sub_100025364(&qword_1001152E8, type metadata accessor for DemoTimelineManager);
      sub_1000D9D50();

      if (*(v0 + 448) == 1)
      {
        v62 = *(v0 + 408);
        v63 = *(v0 + 392);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1000DDD30;
        sub_10002337C(v62, v64 + v58, type metadata accessor for DetailTimelineEntry);
        sub_10003B200(v64);
        swift_setDeallocating();
        v65 = *(v64 + 16);
        swift_arrayDestroy();
        swift_deallocClassInstance();
      }

      sub_1000D9D20();
      sub_1000D9D50();

      v66 = *(v0 + 408);
      v67 = *(v0 + 360);
      v68 = *(v0 + 336);
      v69 = *(v0 + 344);
      if (*(v0 + 449) == 1)
      {
        v70 = *(v0 + 248);
        v71 = *(v0 + 256);
        v73 = *(v0 + 232);
        v72 = *(v0 + 240);
        sub_10003BE44(v70);

        (*(v72 + 8))(v71, v73);
        (*(v69 + 8))(v67, v68);
        sub_100024BE4(v66, type metadata accessor for DetailTimelineEntry);
        v74 = *(v72 + 32);
        v74(v71, v70, v73);
        v74(*(v0 + 176), *(v0 + 256), *(v0 + 232));
      }

      else
      {
        v75 = *(v0 + 240);

        (*(v69 + 8))(v67, v68);
        sub_100024BE4(v66, type metadata accessor for DetailTimelineEntry);
        (*(v75 + 32))(*(v0 + 176), *(v0 + 256), *(v0 + 232));
      }

      goto LABEL_22;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  v5 = *(v0 + 408);
  v6 = *(v0 + 400);
  v99 = *(v0 + 392);
  v86 = v5;
  v88 = *(v0 + 352);
  v7 = *(v0 + 312);
  v8 = *(v0 + 320);
  v9 = *(v0 + 304);
  v10 = *(v0 + 216);
  v11 = *(v0 + 224);
  v90 = *(v0 + 296);
  v93 = *(v0 + 208);
  v96 = *(v0 + 176);

  sub_10002510C(0, &qword_1001152E0, type metadata accessor for DetailTimelineEntry, &type metadata accessor for _ContiguousArrayStorage);
  v12 = *(v6 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000DDD30;
  sub_10002337C(v5, v14 + v13, type metadata accessor for DetailTimelineEntry);
  v15 = sub_100006C7C((v0 + 16), *(v0 + 40));
  sub_1000D9050();
  v16 = *(*v15 + 48);
  sub_100006C7C((*v15 + 16), *(*v15 + 40));
  sub_1000D98B0();
  v17 = sub_1000D9540();
  sub_1000D95C0();
  sub_1000D9030();
  static TimelineReloadPolicy.after(_:jitteredUpTo:)(v17);
  v18 = *(v9 + 8);
  v18(v7, v90);
  (*(v10 + 8))(v11, v93);
  v18(v8, v90);
  sub_100025364(&qword_100115298, type metadata accessor for DetailTimelineEntry);
  sub_1000DB810();
  sub_100024BE4(v86, type metadata accessor for DetailTimelineEntry);
LABEL_22:
  v76 = *(v0 + 408);
  v78 = *(v0 + 376);
  v77 = *(v0 + 384);
  v80 = *(v0 + 352);
  v79 = *(v0 + 360);
  v82 = *(v0 + 320);
  v81 = *(v0 + 328);
  v83 = *(v0 + 312);
  v84 = *(v0 + 288);
  v92 = *(v0 + 280);
  v95 = *(v0 + 256);
  v98 = *(v0 + 248);
  v101 = *(v0 + 224);
  sub_100006D0C((v0 + 16));

  v85 = *(v0 + 8);

  return v85();
}

uint64_t sub_10001EEFC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000ECF4;

  return sub_10001EF9C(a1, a2);
}

uint64_t sub_10001EF9C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1000D9CC0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10001F05C, 0, 0);
}

uint64_t sub_10001F05C()
{
  v1 = v0[4];
  v2 = v1[4];
  sub_100006C7C(v1, v1[3]);
  v0[8] = sub_1000D9750();
  v3 = async function pointer to Promise.resolveAsync()[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_10001F128;

  return Promise.resolveAsync()(v0 + 2);
}

uint64_t sub_10001F128()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10001F31C;
  }

  else
  {
    v5 = *(v2 + 64);
    v6 = *(v2 + 16);

    v4 = sub_10001F250;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001F250()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = v3[4];
  sub_100006C7C(v3, v3[3]);
  sub_1000D9720();
  sub_1000D9C90();
  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10001F31C()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_10001F388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001F440;

  return sub_10001F538(a1, a2, a3, a4);
}

uint64_t sub_10001F440()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001F538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_10002510C(0, &qword_100115360, &type metadata accessor for TimeZone, &type metadata accessor for Optional);
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  sub_10002510C(0, &qword_100114D80, &type metadata accessor for URL, &type metadata accessor for Optional);
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  sub_100023750(0);
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v11 = sub_1000D9EC0();
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();
  v14 = sub_1000D9090();
  v4[14] = v14;
  v15 = *(v14 - 8);
  v4[15] = v15;
  v16 = *(v15 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v17 = sub_1000D9EB0();
  v4[18] = v17;
  v18 = *(v17 - 8);
  v4[19] = v18;
  v19 = *(v18 + 64) + 15;
  v4[20] = swift_task_alloc();
  sub_100024B7C(0);
  v21 = *(*(v20 - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v22 = sub_1000D95E0();
  v4[22] = v22;
  v23 = *(v22 - 8);
  v4[23] = v23;
  v24 = *(v23 + 64) + 15;
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10001F838, 0, 0);
}

uint64_t sub_10001F838()
{
  v1 = v0[3];
  v3 = v1[3];
  v2 = v1[4];
  sub_100006C7C(v1, v3);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_10001F8F4;
  v5 = v0[24];

  return sub_100002128(v5, v3, v2);
}

uint64_t sub_10001F8F4()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10001FA4C, 0, 0);
}

uint64_t sub_10001FA4C()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[13];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v6[3];
  v20 = v6[4];
  sub_100006C7C(v6, v8);
  v9 = *v7;
  v10 = v7[1];
  *v2 = 0x4014000000000000;
  (*(v1 + 104))(v2, enum case for CachePolicy.maxAge(_:), v3);
  sub_1000D9080();
  v11 = enum case for NetworkProxy.none(_:);
  v12 = sub_1000D9EC0();
  (*(*(v12 - 8) + 104))(v5, v11, v12);
  v13 = async function pointer to QuoteDetailManagerType.fetchQuoteDetail(for:cachePolicy:earliestBeginDate:networkProxy:)[1];
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_10001FBC4;
  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[17];
  v18 = v0[13];

  return QuoteDetailManagerType.fetchQuoteDetail(for:cachePolicy:earliestBeginDate:networkProxy:)(v15, v9, v10, v16, v17, v18, v8, v20);
}

uint64_t sub_10001FBC4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;

  v15 = v2[20];
  v5 = v2[19];
  v14 = v2[18];
  v6 = v2[17];
  v7 = v2[15];
  v8 = v2[14];
  v9 = v2[13];
  v10 = v2[12];
  v11 = v2[11];
  if (v0)
  {

    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v15, v14);
    v12 = sub_10001FFC4;
  }

  else
  {
    (*(v10 + 8))(v2[13], v2[11]);
    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v15, v14);
    v12 = sub_10001FE44;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10001FE44()
{
  v1 = v0[21];
  v2 = v0[2];
  v3 = sub_1000D93C0();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = v0[24];
  v6 = v0[20];
  v7 = v0[21];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[13];
  v12 = v0[9];
  v11 = v0[10];
  v14 = v0[7];
  v13 = v0[8];
  v17 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10001FFC4()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v25 = v0[6];
  v26 = v0[16];
  v28 = v1;
  v29 = v0[2];
  v27 = sub_1000D93C0();
  v8 = *(v27 - 8);
  (*(v8 + 56))(v1, 1, 1, v27);
  v9 = *(v2 + 56);
  v9(v4, 1, 1, v3);
  v9(v5, 1, 1, v3);
  v10 = sub_1000D8F30();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 1, 1, v10);
  v11(v6, 1, 1, v10);
  v12 = sub_1000D92D0();
  (*(*(v12 - 8) + 56))(v25, 1, 1, v12);
  sub_1000D9080();
  sub_1000D9310();
  if ((*(v8 + 48))(v28, 1, v27) != 1)
  {
    sub_100024BE4(v0[21], sub_100024B7C);
  }

  v13 = v0[24];
  v14 = v0[20];
  v15 = v0[21];
  v17 = v0[16];
  v16 = v0[17];
  v18 = v0[13];
  v20 = v0[9];
  v19 = v0[10];
  v22 = v0[7];
  v21 = v0[8];
  v30 = v0[6];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000202F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(type metadata accessor for WidgetStock() - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100020388, 0, 0);
}

uint64_t sub_100020388()
{
  v1 = *(v0 + 32);
  v2 = sub_100006C7C(*(v0 + 24), *(*(v0 + 24) + 24));
  v4 = *v1;
  v3 = v1[1];
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_100020454;
  v7 = *(v0 + 56);

  return sub_100020908(v7, v4, v3);
}

uint64_t sub_100020454()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10002075C;
  }

  else
  {
    sub_100023954();
    *(v2 + 88) = *(v5 + 48);
    v4 = sub_100020578;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100020578()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  sub_10002337C(*(v0 + 56), v2, type metadata accessor for WidgetStock);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_100020644;
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);

  return sub_100020D38(v2 + v1, v6, v4, v5);
}

uint64_t sub_100020644()
{
  v2 = *(*v1 + 80);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_100020840;
  }

  else
  {
    v3 = sub_1000207C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002075C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1000207C0()
{
  sub_100024BE4(*(v0 + 56), type metadata accessor for WidgetStock);
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100020840()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  sub_100024BE4(*(v0 + 56), type metadata accessor for WidgetStock);
  sub_100023694(0);
  (*(*(v3 - 8) + 56))(v2 + v1, 1, 1, v3);
  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100020908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10002092C, 0, 0);
}

uint64_t sub_10002092C()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_100024A74(0, &qword_100115350);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_1000DDD30;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100020A14;
  v5 = v0[5];

  return sub_1000AD530(v3);
}

uint64_t sub_100020A14(uint64_t a1)
{
  v3 = *(*v2 + 56);
  v4 = *(*v2 + 48);
  v5 = *v2;
  *(v5 + 64) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100020B68, 0, 0);
  }
}

void sub_100020B68()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = v0[8];
      v6 = v0[3];
      v5 = v0[4];
      v7 = v0[2];
      v8 = *(type metadata accessor for WidgetStock() - 8);
      sub_10002337C(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v3, v7, type metadata accessor for WidgetStock);
      if (sub_1000D9B20() == v6 && v9 == v5)
      {
        v16 = v0[8];

LABEL_14:

        v15 = v0[1];
        goto LABEL_15;
      }

      v11 = v0[3];
      v12 = v0[4];
      v13 = sub_1000DC360();

      if (v13)
      {
        v17 = v0[8];
        goto LABEL_14;
      }

      ++v3;
      sub_100024BE4(v0[2], type metadata accessor for WidgetStock);
      if (v2 == v3)
      {
        v14 = v0[8];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    sub_100024AC0();
    swift_allocError();
    swift_willThrow();
    v15 = v0[1];
LABEL_15:

    v15();
  }
}

uint64_t sub_100020D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = *(type metadata accessor for HeadlineViewModel(0) - 8);
  v5[31] = v6;
  v7 = *(v6 + 64) + 15;
  v5[32] = swift_task_alloc();
  v8 = sub_1000DB720();
  v5[33] = v8;
  v9 = *(v8 - 8);
  v5[34] = v9;
  v10 = *(v9 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  sub_1000DBC20();
  v5[37] = sub_1000DBC10();
  v12 = sub_1000DBBE0();
  v5[38] = v12;
  v5[39] = v11;

  return _swift_task_switch(sub_100020E98, v12, v11);
}

uint64_t sub_100020E98()
{
  v29 = v0;
  v1 = *(v0 + 240);
  if (sub_100022B1C(*(v0 + 216), *(v0 + 224), *(v0 + 232)))
  {
    if (qword_1001141A8 != -1)
    {
      swift_once();
    }

    sub_100006E20(&unk_100128FD8, v0 + 56);
    v2 = *(v0 + 88);
    sub_100006C7C((v0 + 56), *(v0 + 80));
    sub_100002A50(0, &qword_100115348);
    result = sub_1000D9F00();
    if (*(v0 + 120))
    {
      v5 = *(v0 + 280);
      v4 = *(v0 + 288);
      v6 = *(v0 + 264);
      v7 = *(v0 + 272);
      v8 = *(v0 + 224);
      sub_100023738((v0 + 96), v0 + 16);
      sub_100006D0C((v0 + 56));
      sub_1000DB7B0();
      (*(v7 + 16))(v5, v4, v6);
      v9 = (*(v7 + 88))(v5, v6);
      v10 = 0;
      v11 = 1;
      if (v9 != enum case for WidgetFamily.systemSmall(_:) && v9 != enum case for WidgetFamily.systemMedium(_:))
      {
        if (v9 == enum case for WidgetFamily.systemLarge(_:))
        {
          v10 = 1;
          v11 = 4;
        }

        else
        {
          v11 = 0;
          v10 = 0;
          if (v9 != enum case for WidgetFamily.accessoryCircular(_:) && v9 != enum case for WidgetFamily.accessoryRectangular(_:) && v9 != enum case for WidgetFamily.accessoryInline(_:))
          {
            return sub_1000DC0D0();
          }
        }
      }

      *(v0 + 320) = v11;
      *(v0 + 352) = v10;
      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
      v12 = *sub_100006C7C((v0 + 16), *(v0 + 40));
      v13 = swift_task_alloc();
      *(v0 + 328) = v13;
      *v13 = v0;
      v13[1] = sub_100021314;
      v14 = *(v0 + 232);

      return sub_1000075D8(v14, v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = *(v0 + 296);
    v16 = *(v0 + 240);

    v17 = sub_1000DA350();
    v18 = sub_1000DBDD0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v21 = sub_1000848C8(*(v0 + 136), *(v0 + 144), &v28);

      *(v19 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Skipping news fetch due to configuration or context. id=%s", v19, 0xCu);
      sub_100006D0C(v20);
    }

    v22 = *(v0 + 208);
    sub_100023694(0);
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    v25 = *(v0 + 280);
    v24 = *(v0 + 288);
    v26 = *(v0 + 256);

    v27 = *(v0 + 8);

    return v27();
  }

  return result;
}

uint64_t sub_100021314(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v7 = *(v3 + 312);
  v8 = *(v3 + 304);
  if (v1)
  {
    v9 = sub_1000218D0;
  }

  else
  {
    v9 = sub_100021458;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100021458()
{
  v30 = v1;
  v4 = *(v1 + 352);
  v5 = *(v1 + 296);

  v6 = *(v1 + 336);
  if (v4 == 1)
  {
    v7 = *(v6 + 16);
    if (v7 >= *(v1 + 320))
    {
      v28 = *(v1 + 336);
      v8 = 0;
      v6 = *(v1 + 248);
      v9 = *(v1 + 256);
      while (1)
      {
        if (v7 == v8)
        {
          v6 = *(v1 + 336);
          goto LABEL_16;
        }

        if (v8 >= *(v28 + 16))
        {
          break;
        }

        v2 = *(v1 + 256);
        v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v11 = *(v6 + 72);
        sub_10002337C(*(v1 + 336) + v10 + v11 * v8++, v2, type metadata accessor for HeadlineViewModel);
        v3 = *(v9 + 104);
        v0 = *(v9 + 112);
        sub_100024A30(v3);
        sub_100024BE4(v2, type metadata accessor for HeadlineViewModel);
        if (v3 != 1)
        {
          v12 = *(v1 + 240);
          sub_100010190(v3);
          v13 = sub_1000DA350();
          v14 = sub_1000DBDD0();
          if (!os_log_type_enabled(v13, v14))
          {

            v6 = v28;
            goto LABEL_12;
          }

          v2 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v29 = v8;
          *v2 = 136315138;
          v6 = v28;
          if (qword_1001140B8 != -1)
          {
            goto LABEL_27;
          }

          while (2)
          {
            sub_1000DC4C0();
            v15 = sub_1000848C8(*(v1 + 184), *(v1 + 192), &v29);

            *(v2 + 4) = v15;
            _os_log_impl(&_mh_execute_header, v13, v14, "Dropping headline because some have thumbnails. id=%s", v2, 0xCu);
            sub_100006D0C(v8);

LABEL_12:
            if (*(v6 + 16))
            {
              v16 = *(v1 + 336);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v6 = *(v1 + 336);
              if (isUniquelyReferenced_nonNull_native)
              {
                v18 = *(v6 + 16);
                if (v18)
                {
                  goto LABEL_15;
                }

LABEL_26:
                __break(1u);
LABEL_27:
                swift_once();
                continue;
              }
            }

            else
            {
              __break(1u);
            }

            break;
          }

          v6 = sub_1000242FC(v6);
          v18 = *(v6 + 16);
          if (v18)
          {
LABEL_15:
            v19 = v18 - 1;
            sub_100024BE4(v6 + v10 + (v18 - 1) * v11, type metadata accessor for HeadlineViewModel);
            *(v6 + 16) = v19;
            goto LABEL_16;
          }

          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_23:
      swift_once();
      goto LABEL_18;
    }
  }

LABEL_16:
  v20 = *(v1 + 240);

  v0 = sub_1000DA350();
  LOBYTE(v3) = sub_1000DBDD0();
  if (!os_log_type_enabled(v0, v3))
  {
    goto LABEL_19;
  }

  v2 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v29 = v8;
  *v2 = 134218242;
  *(v2 + 4) = *(v6 + 16);
  *(v2 + 12) = 2080;
  if (qword_1001140B8 != -1)
  {
    goto LABEL_23;
  }

LABEL_18:
  sub_1000DC4C0();
  v21 = sub_1000848C8(*(v1 + 152), *(v1 + 160), &v29);

  *(v2 + 14) = v21;
  _os_log_impl(&_mh_execute_header, v0, v3, "Attempting to create NonEmpty headlines with %ld headlines. id=%s", v2, 0x16u);
  sub_100006D0C(v8);

LABEL_19:

  v22 = *(v1 + 208);
  *(v1 + 200) = v6;
  sub_1000236D0(0);
  sub_100025364(&qword_1001152D0, sub_1000236D0);
  sub_1000DA240();
  sub_100006D0C((v1 + 16));
  v24 = *(v1 + 280);
  v23 = *(v1 + 288);
  v25 = *(v1 + 256);

  v26 = *(v1 + 8);

  return v26();
}

uint64_t sub_1000218D0()
{
  v26 = v0;
  v1 = v0[43];
  v2 = v0[37];
  v3 = v0[30];

  swift_errorRetain();
  v4 = sub_1000DA350();
  v5 = sub_1000DBDD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[43];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v7 = 138412546;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v11 = sub_1000848C8(v0[21], v0[22], &v25);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetching headlines failed with error=%@, id=%s", v7, 0x16u);
    sub_100024BE4(v8, sub_1000249FC);

    sub_100006D0C(v9);
  }

  v12 = v0[43];

  v13 = v0[30];

  v14 = sub_1000DA350();
  v15 = sub_1000DBDD0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 134218242;
    *(v16 + 4) = _swiftEmptyArrayStorage[2];
    *(v16 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v18 = sub_1000848C8(v0[19], v0[20], &v25);

    *(v16 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "Attempting to create NonEmpty headlines with %ld headlines. id=%s", v16, 0x16u);
    sub_100006D0C(v17);
  }

  v19 = v0[26];
  v0[25] = _swiftEmptyArrayStorage;
  sub_1000236D0(0);
  sub_100025364(&qword_1001152D0, sub_1000236D0);
  sub_1000DA240();
  sub_100006D0C(v0 + 2);
  v21 = v0[35];
  v20 = v0[36];
  v22 = v0[32];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100021C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v11 = *(*(type metadata accessor for DetailTimelineEntry() - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v8[4] = v12;
  v13 = swift_task_alloc();
  v8[5] = v13;
  *v13 = v8;
  v13[1] = sub_100021D68;

  return sub_1000186A4(v12, a7, a8);
}

uint64_t sub_100021D68()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_100021E64, 0, 0);
}

uint64_t sub_100021E64()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(v1);
  sub_100024BE4(v1, type metadata accessor for DetailTimelineEntry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100021EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10002317C(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002337C(a3, v12, sub_10002317C);
  v13 = sub_1000DBC40();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100024BE4(v12, sub_10002317C);
  }

  else
  {
    sub_1000DBC30();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000DBBE0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1000DB9E0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100024BE4(a3, sub_10002317C);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100024BE4(a3, sub_10002317C);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000221FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v46 = a6;
  v47 = a7;
  v41 = a4;
  v42 = a2;
  v45 = a3;
  v39 = sub_1000DB7D0();
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v39);
  v43 = v12;
  v49 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000D9970();
  v13 = *(v44 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v44);
  v40 = v15;
  v48 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DetailTimelineProvider(0);
  v37 = *(v16 - 8);
  v17 = *(v37 + 64);
  __chkstk_darwin(v16 - 8);
  v38 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002317C(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000DA350();
  v23 = sub_1000DBDD0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, a5, v24, 2u);
  }

  v25 = sub_1000DBC40();
  v26 = *(*(v25 - 8) + 56);
  v36 = v21;
  v26(v21, 1, 1, v25);
  v27 = v38;
  sub_10002337C(v7, v38, type metadata accessor for DetailTimelineProvider);
  v28 = v44;
  (*(v13 + 16))(v48, a1, v44);
  v29 = v39;
  (*(v10 + 16))(v49, v42, v39);
  v30 = (*(v37 + 80) + 48) & ~*(v37 + 80);
  v31 = (v17 + *(v13 + 80) + v30) & ~*(v13 + 80);
  v32 = (v40 + *(v10 + 80) + v31) & ~*(v10 + 80);
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  v34 = v41;
  *(v33 + 4) = v45;
  *(v33 + 5) = v34;
  sub_100024B14(v27, &v33[v30], type metadata accessor for DetailTimelineProvider);
  (*(v13 + 32))(&v33[v31], v48, v28);
  (*(v10 + 32))(&v33[v32], v49, v29);

  sub_100021EF4(0, 0, v36, v47, v33);
}

uint64_t sub_100022614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  sub_1000235CC();
  v8[4] = v11;
  v12 = *(v11 - 8);
  v8[5] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v8[6] = v14;
  v15 = swift_task_alloc();
  v8[7] = v15;
  *v15 = v8;
  v15[1] = sub_10002272C;

  return sub_10001DEE8(v14, a7, a8);
}

uint64_t sub_10002272C()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_100022828, 0, 0);
}

uint64_t sub_100022828()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000228C0@<X0>(uint64_t a1@<X8>)
{
  sub_100024BB0(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9950();
  v6 = sub_1000D9870();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  sub_100024BE4(v5, sub_100024BB0);
  v8 = sub_1000DA350();
  v9 = sub_1000DBDD0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v12 = sub_1000848C8(v14[1], v14[2], &v15);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Missing newsDisplayConfiguration on intent, id=%s", v10, 0xCu);
    sub_100006D0C(v11);
  }

  return (*(v7 + 104))(a1, enum case for NewsDisplayConfiguration.afterHours(_:), v6);
}

uint64_t sub_100022B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000D9480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023704(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000D9870();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DetailTimelineProvider.Configuration(0);
  (*(v15 + 16))(v18, a1 + *(v19 + 20), v14);
  v20 = (*(v15 + 88))(v18, v14);
  if (v20 == enum case for NewsDisplayConfiguration.afterHours(_:))
  {
    v21 = type metadata accessor for WidgetStock();
    sub_10002337C(a3 + *(v21 + 20), v13, sub_100023704);
    v22 = sub_1000D9450();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v13, 1, v22) != 1)
    {
      sub_1000D93F0();
      (*(v23 + 8))(v13, v22);
      v24 = sub_1000D9460();
      (*(v6 + 8))(v9, v5);
      return v24 & 1;
    }

    sub_100024BE4(v13, sub_100023704);
    goto LABEL_5;
  }

  if (v20 == enum case for NewsDisplayConfiguration.always(_:))
  {
LABEL_5:
    v24 = 1;
    return v24 & 1;
  }

  if (v20 != enum case for NewsDisplayConfiguration.never(_:))
  {
    (*(v15 + 8))(v18, v14);
  }

  v24 = 0;
  return v24 & 1;
}

uint64_t sub_100022E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001079C;

  return sub_1000186A4(a1, a2, a3);
}

uint64_t sub_100022EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001079C;

  return sub_10001DEE8(a1, a2, a3);
}

uint64_t sub_100023014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000ECF4;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_1000230C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001079C;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_1000231B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DetailTimelineProvider(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000D9970() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1000DB7D0() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10000ECF4;

  return sub_100022614(a1, v13, v14, v15, v16, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_10002337C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000233E4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000253B4;

  return v7(a1);
}

uint64_t sub_1000234DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001079C;

  return sub_1000233E4(a1, v5);
}

uint64_t sub_100023594()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1000235CC()
{
  if (!qword_1001152B0)
  {
    type metadata accessor for DetailTimelineEntry();
    sub_100025364(&qword_100115298, type metadata accessor for DetailTimelineEntry);
    v0 = sub_1000DB820();
    if (!v1)
    {
      atomic_store(v0, &qword_1001152B0);
    }
  }
}

uint64_t sub_100023738(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000237B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001079C;

  return sub_100019030(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100023880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001079C;

  return sub_10001930C(a1, v4, v5, v6);
}

void sub_100023954()
{
  if (!qword_100115318)
  {
    type metadata accessor for WidgetStock();
    sub_100023660(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100115318);
    }
  }
}

uint64_t sub_1000239C4()
{
  sub_100006D0C((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000239FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001079C;

  return sub_10001EEFC(a1, v1 + 16);
}

uint64_t sub_100023A98()
{
  v1 = (type metadata accessor for DetailTimelineProvider.Configuration(0) - 8);
  v2 = (*(*v1 + 80) + 96) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  sub_100006D0C((v0 + 16));
  sub_100006D0C((v0 + 56));
  v4 = *(v0 + v2 + 8);

  v5 = v1[7];
  v6 = sub_1000D9870();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_100023B90(uint64_t a1)
{
  v4 = *(type metadata accessor for DetailTimelineProvider.Configuration(0) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000ECF4;

  return sub_10001F388(a1, v1 + 16, v1 + 56, v1 + v5);
}

uint64_t sub_100023C74()
{
  v1 = (type metadata accessor for DetailTimelineProvider.Configuration(0) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(type metadata accessor for DetailTimelineProvider(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = sub_1000DB7D0();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  sub_100006D0C((v0 + 16));
  v11 = v0 + v2;
  v12 = *(v11 + 8);

  v13 = v1[7];
  v14 = sub_1000D9870();
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  v15 = sub_1000DA370();
  (*(*(v15 - 8) + 8))(v0 + v5, v15);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_100023E84(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DetailTimelineProvider.Configuration(0) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DetailTimelineProvider(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1000DB7D0() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10001079C;

  return sub_1000202F0(a1, v1 + 16, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_100024028@<X0>(unsigned __int8 *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_100095C40(a1, v2[3], a2);
}

void sub_10002404C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_100024A74(0, &qword_100115340);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
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

void sub_100024138(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10002510C(0, &qword_100115378, type metadata accessor for WidgetStock, &type metadata accessor for _ContiguousArrayStorage);
      v7 = *(type metadata accessor for WidgetStock() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for WidgetStock() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_100024310()
{
  sub_100024A40(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(*v0 + 16);
  if (v6)
  {
    v8 = v0[1];
    v7 = v0[2];
    v10 = v0[3];
    v9 = v0[4];
    v11 = 0;
    v12 = *(sub_1000D9C30() - 8);
    v13 = v5 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    while (1)
    {
      v8(v13);
      v15 = v10(v4);
      sub_100024BE4(v4, sub_100024A40);
      if (v15)
      {
        break;
      }

      ++v11;
      v13 += v14;
      if (v6 == v11)
      {
        return v6;
      }
    }

    return v11;
  }

  return v6;
}

void sub_100024468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  sub_100024A40(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    if (!a2)
    {
      return;
    }

    goto LABEL_6;
  }

  v10 = -a2;
  if (__OFSUB__(0, a2))
  {
LABEL_25:
    __break(1u);
    return;
  }

  if (v10 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_6:
  if (a1 == v23)
  {
    return;
  }

  v11 = *v3;
  v25 = v3[1];
  v13 = v3[2];
  v12 = v3[3];
  v14 = v3[4];
  v15 = (a2 > 0) | (a2 >> 63);
  v16 = v11;
  v17 = *(v11 + 16);
  v18 = 1;
  v22 = v10;
  while (2)
  {
    v24 = v18;
    while (1)
    {
      v19 = a1 + v15;
      if (__OFADD__(a1, v15))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v19 == v17)
      {
        break;
      }

      if (v19 >= v17)
      {
        goto LABEL_21;
      }

      v20 = *(sub_1000D9C30() - 8);
      v25(v16 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v19);
      v21 = v12(v9);
      sub_100024BE4(v9, sub_100024A40);
      a1 += v15;
      if (v21)
      {
        a1 = v19;
        goto LABEL_15;
      }
    }

    a1 = v17;
LABEL_15:
    if (v24 == v22)
    {
      return;
    }

    if (v24 >= v22)
    {
      goto LABEL_22;
    }

    v18 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (a1 != v23)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_100024678(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v9 = sub_1000D9B40();
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WidgetStock();
  v29 = *(v13 - 8);
  v14 = *(v29 + 64);
  __chkstk_darwin(v13 - 8);
  v36 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a5 >> 1;
  v34 = a4;
  v16 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = _swiftEmptyArrayStorage;
  if (!v16)
  {
    return v17;
  }

  v37 = _swiftEmptyArrayStorage;
  sub_10007BC0C(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v17 = v37;
    v27 = v35 + 16;
    v28 = (v35 + 8);
    v26 = v12;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if ((v34 + v18) >= v33 || v18 >= v16)
      {
        goto LABEL_14;
      }

      (*(v35 + 16))(v12, v32 + *(v35 + 72) * (v34 + v18), v9);
      v30(v12);
      if (v6)
      {
        goto LABEL_17;
      }

      v6 = 0;
      v20 = v12;
      v21 = v9;
      (*v28)(v20, v9);
      v37 = v17;
      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        sub_10007BC0C(v22 > 1, v23 + 1, 1);
        v17 = v37;
      }

      v17[2] = v23 + 1;
      sub_100024B14(v36, v17 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23, type metadata accessor for WidgetStock);
      ++v18;
      v9 = v21;
      v12 = v26;
      if (v19 == v16)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  (*v28)(v12, v9);

  __break(1u);
  return result;
}

uint64_t sub_100024964(uint64_t a1, uint64_t a2)
{
  sub_10002510C(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100024A30(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_100024A74(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000DC330();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_100024AC0()
{
  result = qword_100115358;
  if (!qword_100115358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115358);
  }

  return result;
}

uint64_t sub_100024B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100024BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100024C44()
{
  v1 = *(type metadata accessor for DetailTimelineProvider(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1000D9970();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_1000DB7D0();
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v15 = *(v9 + 64);
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = *(v0 + 40);

  v13 = sub_1000DA370();
  (*(*(v13 - 8) + 8))(v0 + v2, v13);
  (*(v5 + 8))(v0 + v6, v4);
  (*(v9 + 8))(v0 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_100024E40(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DetailTimelineProvider(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000D9970() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1000DB7D0() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10001079C;

  return sub_100021C80(a1, v13, v14, v15, v16, v1 + v6, v1 + v9, v1 + v12);
}

void sub_100025044(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100025364(a4, a5);
    v8 = sub_1000DA220();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10002510C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100025184(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000D9870();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100025244(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000D9870();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000252E8()
{
  result = sub_1000D9870();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100025364(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1000253B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000253C4(uint64_t a1, int a2)
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

uint64_t sub_1000253E4(uint64_t result, int a2, int a3)
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

uint64_t sub_100025420()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100025468(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000254B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100025508()
{
  result = qword_1001154B0;
  if (!qword_1001154B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001154B0);
  }

  return result;
}

uint64_t sub_10002555C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a5;
  v25 = a6;
  v10 = sub_1000DA830();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_1000284C8(qword_100115428);
  result = sub_1000DBD30();
  v14 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1000DBB90();
  if (!result)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (v14 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_10;
  }

  v15 = v14 / result;
  if (v14 / result <= a2)
  {
    v15 = a2;
  }

  v23 = v15;
  v28 = a3;
  sub_1000DBBB0();
  swift_getWitnessTable();
  sub_1000DBA70();

  v28 = v29;
  sub_1000DC0F0();
  swift_getWitnessTable();
  sub_1000DBA80();

  v22 = v27;
  v26 = v27;
  (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  v18 = v10;
  v19 = a4;
  v20 = v24;
  *(v17 + 24) = v24;
  (*(v11 + 32))(v17 + v16, &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  *(v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = sub_1000288C8;
  v21[5] = v17;
  sub_1000DBF70();
  swift_getWitnessTable();
  sub_1000DC150();
}

uint64_t sub_100025880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000DA830();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  result = (*(v13 + 16))(v10, a3, v7, v12);
  if ((a1 * a4) >> 64 == (a1 * a4) >> 63)
  {
    sub_1000284C8(qword_100115428);
    sub_1000DBD50();
    return sub_100018248(a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000259D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a3;

  sub_10002555C(a1, a2, a3, a4, a5, &v32);
  v10 = sub_1000DBBB0();
  WitnessTable = swift_getWitnessTable();
  sub_1000DC0F0();
  sub_1000DA830();
  swift_getWitnessTable();
  v12 = sub_1000DC0B0();
  v13 = swift_getWitnessTable();
  sub_1000DC390();

  v33 = v37;
  v32 = v36;
  v34 = v38;
  v26 = a4;
  v27 = a5;
  v21 = a4;
  v22 = a5;
  v23 = sub_100028AEC;
  v24 = &v25;
  v28 = v10;
  v29 = v12;
  v30 = WitnessTable;
  v31 = v13;
  v14 = sub_1000DBFB0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getWitnessTable();
  v18 = sub_100025C58(sub_100028B20, v20, v14, AssociatedTypeWitness, &type metadata for Never, v16, &protocol witness table for Never, v17);

  return v18;
}

uint64_t sub_100025C58(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v50 = &v49 - v16;
  v53 = a5;
  v51 = *(a5 - 8);
  v17 = *(v51 + 64);
  __chkstk_darwin(v18);
  v63 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v64 = &v49 - v21;
  v22 = sub_1000DBE80();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  __chkstk_darwin(v22);
  v57 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v49 - v26;
  v28 = *(*(a4 - 1) + 64);
  __chkstk_darwin(v29);
  v56 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v62 = *(a3 - 1);
  v32 = *(v62 + 8);
  __chkstk_darwin(v33);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  __chkstk_darwin(v69);
  v38 = &v49 - v37;
  v39 = sub_1000DBA60();
  v70 = sub_1000DC090();
  v65 = sub_1000DC0A0();
  sub_1000DC040(v39);
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_1000DBA40();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1000DBE90();
      result = (*v41)(v27, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v27, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v27, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v27, AssociatedTypeWitness);
      sub_1000DC080();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_1000DBE90();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_1000DC080();
      sub_1000DBE90();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_10002634C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;

  result = sub_1000259D8(a2, a3, a4, a5, a6);
  *a1 = result;
  return result;
}

uint64_t sub_1000263C4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  result = sub_1000DBB90();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v48 = a3;
    v49 = a4;
    v50 = a6;
    v21 = *&a1;
    v52 = a2;
    if ((a2 & 1) == 0)
    {
      v21 = (*&a1 - (result - 1) * a9) / sub_1000DBB90();
    }

    v47 = v21;
    v51 = a1;
    sub_10002555C(a5, a7, a8, a10, a11, &v57);
    v62 = a8;
    sub_1000DBBB0();
    swift_getWitnessTable();
    sub_1000DBCB0();
    v60 = v61;
    swift_getWitnessTable();
    sub_1000DC0F0();
    sub_1000DA830();
    swift_getWitnessTable();
    v22 = sub_1000DC0B0();
    sub_100028708();
    v24 = v23;
    WitnessTable = swift_getWitnessTable();
    v26 = sub_100028760();
    sub_1000DC390();

    v46 = v63;
    v57 = v63;
    v58 = v64;
    v59 = v65;
    __chkstk_darwin(v27);
    v41[6] = a10;
    v41[7] = a11;
    *&v41[8] = a9;
    v41[9] = v28;
    v41[10] = a8;
    *&v41[11] = v47;
    v42 = v52 & 1;
    v43 = v48;
    v44 = v49 & 1;
    v45 = v50;
    __chkstk_darwin(v29);
    v41[2] = sub_100028A3C;
    v41[3] = v30;
    v53 = v22;
    v54 = v24;
    v55 = WitnessTable;
    v56 = v26;
    v31 = sub_1000DBFB0();
    v32 = swift_getWitnessTable();
    v34 = sub_100025C58(sub_100028A8C, v41, v31, &type metadata for Double, &type metadata for Never, v32, &protocol witness table for Never, v33);

    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = *(v34 + 32);
      v37 = v35 - 1;
      if (v37)
      {
        v38 = (v34 + 40);
        do
        {
          v39 = *v38++;
          v40 = v39;
          if (v36 < v39)
          {
            v36 = v40;
          }

          --v37;
        }

        while (v37);
      }
    }
  }

  return result;
}

double sub_100026810(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t *a9, uint64_t a10)
{
  v24[0] = a1;
  v24[1] = a7;
  v13 = *(a10 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(a1);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000DBBC0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1000DBBB0();
  sub_1000DBB60();
  sub_100027EE0(a2, *a9);
  v18 = *a9;
  if (_swift_isClassOrObjCExistentialType())
  {
    v19 = v18 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v19 = v18;
  }

  v20 = v19 + ((*(*(AssociatedTypeWitness - 8) + 80) + 32) & ~*(*(AssociatedTypeWitness - 8) + 80)) + *(*(AssociatedTypeWitness - 8) + 72) * a2;
  v26 = a6 & 1;
  v25 = a8 & 1;
  sub_1000DB4B0();
  v22 = v21;
  (*(v13 + 8))(v16, a10);
  return v22;
}

uint64_t sub_1000269F4(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  *&v71 = a7;
  v66 = a3;
  v67 = a6;
  v56 = a4;
  v21 = *(a14 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(a1);
  v65 = &v55[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_1000DA830();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v64 = &v55[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10002864C(0, &qword_1001154F0, sub_1000286A0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v55[-v30];
  result = sub_1000DBB90();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = *&a1;
    if (a2)
    {
      v33 = 10.0;
    }

    v34 = (v33 - (result - 1) * a13) / result;
    v60 = v34;
    v61 = a15;
    sub_10002555C(a5, v71, a8, a14, a15, &v81);
    v58 = v21;
    v71 = v81;
    v75 = v81;
    v76 = v82;
    v62 = a14;
    v63 = a8;
    v80 = a8;
    sub_1000DBBB0();
    swift_getWitnessTable();
    sub_1000DBCB0();
    v78 = v79;
    swift_getWitnessTable();
    sub_1000DC0F0();
    swift_getWitnessTable();
    v35 = sub_1000DC0B0();
    sub_100028708();
    v37 = v36;
    WitnessTable = swift_getWitnessTable();
    v39 = sub_100028760();
    sub_1000DC390();

    v75 = v72;
    v76 = *&v73[0];
    v77 = *(v73 + 8);
    v70 = v37;
    *&v71 = v35;
    *&v81 = v35;
    *(&v81 + 1) = v37;
    v68 = v39;
    v69 = WitnessTable;
    *&v82 = WitnessTable;
    *(&v82 + 1) = v39;
    sub_1000DBFB0();
    sub_1000DBF80();
    ++v58;
    v59 = (v25 + 32);
    v57 = (v25 + 8);
    v40 = v34 + a13;
    v56 &= 1u;
    v41 = v62;
    while (1)
    {
      *&v72 = v71;
      *(&v72 + 1) = v70;
      *&v73[0] = v69;
      *(&v73[0] + 1) = v68;
      v42 = sub_1000DBFA0();
      sub_1000DBF90();
      sub_1000286A0();
      v44 = v43;
      if ((*(*(v43 - 8) + 48))(v31, 1, v43) == 1)
      {
        break;
      }

      v45 = *&v31[*(v44 + 48)];
      v46 = v64;
      (*v59)(v64, v31, v24);
      v47 = v24;
      v48 = v65;
      sub_1000DBBC0();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      sub_1000DBBB0();
      v50 = v67;
      sub_1000DBB60();
      v51 = *v50;
      sub_100027EE0(v45, v51);
      if (_swift_isClassOrObjCExistentialType())
      {
        v52 = v51 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v52 = v51;
      }

      v53 = v52 + ((*(*(AssociatedTypeWitness - 8) + 80) + 32) & ~*(*(AssociatedTypeWitness - 8) + 80)) + *(*(AssociatedTypeWitness - 8) + 72) * v45;
      LOBYTE(v72) = 0;
      LOBYTE(v75) = v56;
      sub_1000DB4C0();
      v54 = v48;
      v24 = v47;
      (*v58)(v54, v41);
      (*v57)(v46, v47);
      a9 = v40 + a9;
    }

    v73[1] = v83;
    v73[2] = v84;
    v74 = v85;
    v72 = v81;
    v73[0] = v82;
    return (*(*(v42 - 8) + 8))(&v72, v42);
  }

  return result;
}

uint64_t sub_10002701C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  result = sub_1000259D8(a1, v3[1], v3[2], *(a2 + 16), *(a2 + 24));
  *a3 = result;
  return result;
}

uint64_t (*sub_1000271B0(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000DA670();
  return sub_100028C28;
}

uint64_t sub_10002723C(void (**a1)(char *), int a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, uint64_t a12, void (**a13)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (**a14)(char *, char *, uint64_t))
{
  v87 = a14;
  v83 = a13;
  LODWORD(v78) = a4;
  *&v84 = a3;
  LODWORD(v77) = a2;
  v79 = a1;
  sub_100027DF0();
  v73 = v21;
  v82 = *(v21 - 8);
  v22 = *(v82 + 64);
  __chkstk_darwin(v21);
  v24 = (&v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = sub_1000DA7F0();
  v81 = *(v89 - 8);
  v25 = *(v81 + 64);
  __chkstk_darwin(v89);
  v88 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v80 = &v71 - v28;
  sub_10002864C(0, &qword_1001154C8, sub_100027DF0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v86 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v85 = &v71 - v33;
  v71 = &protocol conformance descriptor for LayoutSubviews;
  sub_100027E5C(0, &qword_1001154D0, &qword_1001154D8, &protocol conformance descriptor for LayoutSubviews, &type metadata accessor for EnumeratedSequence);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v71 - v36;
  sub_100027E5C(0, &qword_1001154E0, &qword_1001154D8, &protocol conformance descriptor for LayoutSubviews, &type metadata accessor for EnumeratedSequence.Iterator);
  v39 = *(v38 - 8);
  v72 = v38 - 8;
  v40 = *(v39 + 64);
  __chkstk_darwin(v38 - 8);
  v42 = &v71 - v41;
  v43 = sub_1000DA830();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v43);
  v48 = &v71 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v44 + 16);
  v49(v48, a5, v43, v46);
  v50 = LOBYTE(v77) & 1;
  LOBYTE(v92) = LOBYTE(v77) & 1;
  LOBYTE(v91[0]) = v78 & 1;
  v77 = a10;
  sub_10002801C(v83, v87, *&v79, v50, v84, v78 & 1, v48, &v92, a10, a11);
  v74 = a6;
  v95.origin.x = a6;
  v75 = a7;
  v95.origin.y = a7;
  v76 = a8;
  v95.size.width = a8;
  v51 = a9;
  v95.size.height = a9;
  v96 = CGRectStandardize(v95);
  x = v96.origin.x;
  y = v96.origin.y;
  (v49)(v37, a5, v43);
  v54 = v73;
  (*(v44 + 32))(v48, v37, v43);
  sub_1000284C8(&qword_1001154D8);
  sub_1000DBA40();
  v78 = *(v72 + 44);
  *&v42[v78] = 0;
  sub_100027E5C(0, &qword_1001154E8, qword_100115428, &protocol conformance descriptor for LayoutSubviews, &type metadata accessor for IndexingIterator);
  v56 = *(v55 + 36);
  sub_1000284C8(qword_100115428);
  v84 = 0.0;
  v79 = (v81 + 16);
  v87 = (v81 + 32);
  v83 = (v82 + 56);
  v82 += 48;
  v81 += 8;
  while (1)
  {
    sub_1000DBD10();
    if (*&v42[v56] == v91[0])
    {
      v57 = 1;
      v58 = v86;
    }

    else
    {
      v59 = sub_1000DBD70();
      v60 = v80;
      v61 = v89;
      (*v79)(v80);
      v59(v91, 0);
      sub_1000DBD20();
      v62 = *(v54 + 48);
      v63 = v84;
      *v24 = v84;
      result = (*v87)(v24 + v62, v60, v61);
      if (__OFADD__(*&v63, 1))
      {
        goto LABEL_16;
      }

      *&v84 = *&v63 + 1;
      *&v42[v78] = *&v63 + 1;
      v58 = v86;
      sub_10002850C(v24, v86);
      v57 = 0;
    }

    (*v83)(v58, v57, 1, v54);
    v65 = v58;
    v66 = v85;
    sub_100028570(v65, v85);
    if ((*v82)(v66, 1, v54) == 1)
    {
      return sub_1000285F0(v42, &qword_1001154E0, &qword_1001154D8, &protocol conformance descriptor for LayoutSubviews, &type metadata accessor for EnumeratedSequence.Iterator);
    }

    v67 = *v66;
    (*v87)(v88, &v66[*(v54 + 48)], v89);
    v68 = v93;
    v69 = v94;
    v98.origin.x = x;
    v98.origin.y = y;
    v98.size.width = v93;
    v98.size.height = v94;
    CGRectGetMidX(v98);
    v99.origin.x = x;
    v99.origin.y = y;
    v99.size.width = v68;
    v99.size.height = v69;
    CGRectGetMidY(v99);
    sub_1000DB6A0();
    LOBYTE(v91[0]) = 0;
    v90 = 0;
    result = sub_1000DA7D0();
    v70 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v92)
    {
      if (v92 == -1)
      {
        goto LABEL_2;
      }

      v70 %= v92;
    }

    if (v70)
    {
      (*v81)(v88, v89);
      y = y + v69 + a11;
    }

    else
    {
LABEL_2:
      v97.origin.x = v74;
      v97.origin.y = v75;
      v97.size.width = v76;
      v97.size.height = v51;
      y = CGRectGetMinY(v97);
      (*v81)(v88, v89);
      x = x + v68 + v77;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

double sub_100027B3C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = sub_1000DA830();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *v5;
  v17 = *(v5 + 1);
  v18 = v5[2];
  v19 = *(v5 + 3);
  (*(v20 + 16))(v15, a5, v13);
  LOBYTE(v23[0]) = a2 & 1;
  v22[0] = a4 & 1;
  sub_10002801C(v16, v18, *&a1, a2 & 1, *&a3, a4 & 1, v15, v23, v17, v19);
  return v23[3];
}

uint64_t (*sub_100027CA4(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000DA670();
  return sub_100027D2C;
}

void sub_100027D30(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_100027D9C()
{
  result = qword_1001154B8;
  if (!qword_1001154B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001154B8);
  }

  return result;
}

void sub_100027DF0()
{
  if (!qword_1001154C0)
  {
    sub_1000DA7F0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001154C0);
    }
  }
}

void sub_100027E5C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = sub_1000DA830();
    v10 = sub_1000284C8(a3);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_100027EE0(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100027F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000DA830();
  sub_1000284C8(qword_100115428);
  sub_1000DBCC0();
  sub_1000DBD10();
  result = sub_1000DBD00();
  if (!a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_11;
  }

  v6 = result % a2 > 0;
  if (__OFADD__(result / a2, v6))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (result / a2 + v6 <= a3)
  {
    return a3;
  }

  else
  {
    return result / a2 + v6;
  }
}

uint64_t sub_10002801C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, int a4@<W3>, double a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, double *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v54 = a6;
  v57 = a5;
  v58 = *&a2;
  v59 = a4;
  v55 = a8;
  v15 = sub_1000DA7F0();
  v50 = *(v15 - 8);
  v16 = *(v50 + 64);
  __chkstk_darwin(v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000DA830();
  v20 = *(v19 - 8);
  v21 = v20[8];
  __chkstk_darwin(v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100027E5C(0, &qword_1001154E8, qword_100115428, &protocol conformance descriptor for LayoutSubviews, &type metadata accessor for IndexingIterator);
  v25 = v24;
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v28 = &v50 - v27;
  v56 = a7;
  result = sub_100027F34(a7, a1, *&v58);
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (__OFSUB__(result, 1))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v30 = (a1 - 1) * a9;
  v31 = (result - 1) * a10;
  v32 = a1;
  if (v59)
  {
    v33 = a3;
  }

  else
  {
    v33 = (a3 - v30) / a1;
  }

  v34 = v57;
  v52 = result;
  v35 = result;
  v36 = v54;
  if ((v54 & 1) == 0)
  {
    v34 = (v57 - v31) / result;
  }

  v57 = v34;
  v58 = v33;
  v37 = v20[2];
  v37(v23, v56, v19);
  v37(v28, v23, v19);
  v38 = *(v25 + 36);
  sub_1000284C8(qword_100115428);
  sub_1000DBCC0();
  v39 = v20[1];
  v53 = v20 + 1;
  v51 = v39;
  v39(v23, v19);
  sub_1000DBD10();
  v40 = 0.0;
  v41 = 0.0;
  if (*&v28[v38] != v61[0])
  {
    v42 = (v50 + 16);
    v43 = (v50 + 8);
    do
    {
      v44 = sub_1000DBD70();
      (*v42)(v18);
      v44(v61, 0);
      sub_1000DBD20();
      LOBYTE(v61[0]) = v59 & 1;
      v60 = v36 & 1;
      sub_1000DA7C0();
      v46 = v45;
      v48 = v47;
      (*v43)(v18, v15);
      if (v41 <= v46)
      {
        v41 = v46;
      }

      if (v40 <= v48)
      {
        v40 = v48;
      }

      sub_1000DBD10();
    }

    while (*&v28[v38] != v61[0]);
  }

  v51(v56, v19);
  result = sub_1000285F0(v28, &qword_1001154E8, qword_100115428, &protocol conformance descriptor for LayoutSubviews, &type metadata accessor for IndexingIterator);
  v49 = v55;
  *v55 = v52;
  v49[1] = v41;
  v49[2] = v40;
  v49[3] = v30 + v41 * v32;
  v49[4] = v31 + v40 * v35;
  return result;
}

uint64_t sub_1000284C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA830();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002850C(uint64_t a1, uint64_t a2)
{
  sub_100027DF0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028570(uint64_t a1, uint64_t a2)
{
  sub_10002864C(0, &qword_1001154C8, sub_100027DF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000285F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_100027E5C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_10002864C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DBE80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000286A0()
{
  if (!qword_1001154F8)
  {
    sub_1000DA830();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001154F8);
    }
  }
}

void sub_100028708()
{
  if (!qword_100115500)
  {
    v0 = sub_1000DBD80();
    if (!v1)
    {
      atomic_store(v0, &qword_100115500);
    }
  }
}

unint64_t sub_100028760()
{
  result = qword_100115508;
  if (!qword_100115508)
  {
    sub_100028708();
    sub_1000287E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115508);
  }

  return result;
}

unint64_t sub_1000287E0()
{
  result = qword_100115510[0];
  if (!qword_100115510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100115510);
  }

  return result;
}

uint64_t sub_100028834()
{
  v1 = sub_1000DA830();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000288C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_1000DA830() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100025880(a1, a2, v2 + v8, v9);
}

uint64_t sub_100028990()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1000289C8(char *a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(v6, &a1[*(TupleTypeMetadata2 + 48)]);
}

double sub_100028A3C(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 32);
  v5 = *(v2 + 24);
  return sub_100026810(a1, a2, *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 16));
}

void sub_100028A8C(uint64_t a1@<X0>, double *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_1000286A0();
  *a2 = v6(a1, *(a1 + *(v7 + 48)));
}

uint64_t sub_100028AEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000DB4D0();
}

uint64_t sub_100028B20(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  sub_1000DA830();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_100028BCC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_100028C50()
{
  result = sub_100028D64(3);
  qword_100128DB0 = result;
  return result;
}

id sub_100028C84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(NSNumberFormatter) init];
  [v5 setNumberStyle:1];
  [v5 setMinimumFractionDigits:a2];
  [v5 setMaximumFractionDigits:a2];
  result = [v5 setMinimumIntegerDigits:1];
  *a3 = v5;
  return result;
}

id sub_100028D1C()
{
  result = sub_100028D64(2);
  qword_100128DC0 = result;
  return result;
}

id sub_100028D40()
{
  result = sub_100028D64(0);
  qword_100128DC8 = result;
  return result;
}

id sub_100028D64(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSNumberFormatter) init];
  [v2 setNumberStyle:1];
  [v2 setMinimumFractionDigits:a1];
  [v2 setMaximumFractionDigits:a1];
  [v2 setMinimumIntegerDigits:1];
  v3 = sub_1000DB910();
  [v2 setPositivePrefix:v3];

  v4 = sub_1000DB910();
  [v2 setNegativePrefix:v4];

  return v2;
}

uint64_t sub_100028E40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, double a6)
{
  v94 = a2;
  v89 = a1;
  sub_100029D48(0, &qword_100115648, &type metadata accessor for Locale.Region, &type metadata accessor for Optional);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v90 = &v80 - v12;
  v92 = sub_1000D91A0();
  v91 = *(v92 - 8);
  v13 = *(v91 + 64);
  __chkstk_darwin(v92);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v80 - v17;
  v19 = sub_1000D91C0();
  v20 = *(v19 - 8);
  v21 = v20[8];
  __chkstk_darwin(v19);
  v88 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v80 - v24;
  __chkstk_darwin(v26);
  v28 = &v80 - v27;
  sub_100029D48(0, &qword_100115650, &type metadata accessor for Locale.LanguageCode, &type metadata accessor for Optional);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v80 - v31;
  v33 = sub_10002999C(a5, a3, a4, a6);
  v34 = v33;
  if ((a5 & 2) == 0 || !v94)
  {
    v42 = v33;
    goto LABEL_9;
  }

  v35 = v20[2];
  v84 = OBJC_IVAR____TtC12StocksWidget14PriceFormatter_locale;
  v85 = v35;
  v35(v28, &v93[OBJC_IVAR____TtC12StocksWidget14PriceFormatter_locale], v19);
  v83 = v34;
  sub_1000D91B0();
  v37 = v20[1];
  v36 = (v20 + 1);
  v86 = v19;
  v87 = v37;
  v37(v28, v19);
  sub_1000D9180();
  v91 = *(v91 + 8);
  (v91)(v18, v92);
  v38 = sub_1000D9120();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v32, 1, v38) != 1)
  {
    v81 = sub_1000D9100();
    v82 = v43;
    (*(v39 + 8))(v32, v38);
    v44 = v86;
    v85(v25, &v93[v84], v86);
    sub_1000D91B0();
    v87(v25, v44);
    v32 = v90;
    sub_1000D9190();
    (v91)(v15, v92);
    v45 = sub_1000D9160();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v32, 1, v45) == 1)
    {

      v40 = &qword_100115648;
      v41 = &type metadata accessor for Locale.Region;
      goto LABEL_8;
    }

    v93 = v36;
    v51 = sub_1000D9150();
    v52 = v32;
    v53 = v51;
    v55 = v54;
    (*(v46 + 8))(v52, v45);
    sub_100029D48(0, &qword_100115658, sub_100029CEC, &type metadata accessor for _ContiguousArrayStorage);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000DE440;
    *(inited + 32) = sub_1000DB950();
    v57 = v89;
    *(inited + 40) = v58;
    *(inited + 48) = v57;
    v59 = v94;
    *(inited + 56) = v94;
    *(inited + 64) = sub_1000DB950();
    *(inited + 72) = v60;
    v61 = v82;
    *(inited + 80) = v81;
    *(inited + 88) = v61;
    *(inited + 96) = sub_1000DB950();
    *(inited + 104) = v62;
    *(inited + 112) = v53;
    *(inited + 120) = v55;

    sub_100033B48(inited);
    swift_setDeallocating();
    sub_100029CEC();
    swift_arrayDestroy();
    sub_1000D90E0();

    v63 = v88;
    sub_1000D90F0();
    isa = sub_1000D9130().super.isa;
    v65 = v83;
    [v83 setLocale:isa];

    if (v57 == 7356999 && v59 == 0xE300000000000000 || (sub_1000DC360() & 1) != 0)
    {
      [v65 setNumberStyle:1];
      v66 = [objc_allocWithZone(NSNumber) initWithDouble:a6];
      v67 = [v65 stringFromNumber:v66];

      if (v67)
      {
        v68 = sub_1000DB950();
        v70 = v69;

        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v72 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        v79._countAndFlagsBits = 0x80000001000E8360;
        v95._countAndFlagsBits = 0x402520704247;
        v95._object = 0xE600000000000000;
        v96.value._countAndFlagsBits = 0;
        v96.value._object = 0;
        v73.super.isa = v72;
        v97._countAndFlagsBits = 0;
        v97._object = 0xE000000000000000;
        sub_1000D8E50(v95, v96, v73, v97, v79);

        sub_100029D48(0, &qword_1001145E0, sub_100029DAC, &type metadata accessor for _ContiguousArrayStorage);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_1000DDD30;
        *(v74 + 56) = &type metadata for String;
        *(v74 + 64) = sub_100002AAC();
        *(v74 + 32) = v68;
        *(v74 + 40) = v70;
        v49 = sub_1000DB980();

        v75 = v63;
        v76 = v44;
LABEL_21:
        v87(v75, v76);
        return v49;
      }
    }

    else
    {
      [v65 setNumberStyle:2];
      v77 = [objc_allocWithZone(NSNumber) initWithDouble:a6];
      v78 = [v65 stringFromNumber:v77];

      if (v78)
      {
        v49 = sub_1000DB950();

        v75 = v63;
        v76 = v44;
        goto LABEL_21;
      }
    }

    v87(v63, v44);

    return 0;
  }

  v40 = &qword_100115650;
  v41 = &type metadata accessor for Locale.LanguageCode;
LABEL_8:
  sub_100029C7C(v32, v40, v41);
LABEL_9:
  [v34 setNumberStyle:1];
  v47 = [objc_allocWithZone(NSNumber) initWithDouble:a6];
  v48 = [v34 stringFromNumber:v47];

  if (!v48)
  {

    return 0;
  }

  v49 = sub_1000DB950();

  return v49;
}

uint64_t sub_10002981C()
{
  v1 = OBJC_IVAR____TtC12StocksWidget14PriceFormatter_locale;
  v2 = sub_1000D91C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PriceFormatter()
{
  result = qword_1001155C0;
  if (!qword_1001155C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002990C()
{
  result = sub_1000D91C0();
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

uint64_t sub_10002999C(char a1, uint64_t a2, char a3, double a4)
{
  v5 = fabs(a4);
  if (a4 != 0.0 && v5 < 5.0 && (a1 & 1) == 0)
  {
    if (a3)
    {
      if (qword_100114060 != -1)
      {
        swift_once();
      }

      v10 = &qword_100128DA8;
    }

    else
    {
      if (qword_100114068 != -1)
      {
        swift_once();
      }

      v10 = &qword_100128DB0;
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (!a2)
        {
          goto LABEL_17;
        }

        goto LABEL_38;
      }

      if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v5 < 9.22337204e18)
        {
          if (v5 < 1)
          {
LABEL_17:
            if (qword_100114058 != -1)
            {
              swift_once();
            }

            v10 = &qword_100128DA0;
            return *v10;
          }

          v9 = log10(v5);
          if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v9 > -9.22337204e18)
            {
              if (v9 < 9.22337204e18)
              {
                if (v9 < a2)
                {
                  goto LABEL_17;
                }

LABEL_38:
                if (qword_100114070 == -1)
                {
LABEL_39:
                  v10 = &qword_100128DB8;
                  return *v10;
                }

LABEL_47:
                swift_once();
                goto LABEL_39;
              }

              goto LABEL_52;
            }

            goto LABEL_50;
          }

          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        goto LABEL_45;
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_44;
    }

    if (v5 >= 9.22337204e18)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v5 >= 1)
    {
      v12 = log10(v5);
      if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_49;
      }

      if (v12 <= -9.22337204e18)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v12 >= 9.22337204e18)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (v12 >= a2)
      {
        if (qword_100114080 == -1)
        {
LABEL_41:
          v10 = &qword_100128DC8;
          return *v10;
        }

LABEL_54:
        swift_once();
        goto LABEL_41;
      }
    }

    if (qword_100114078 != -1)
    {
      swift_once();
    }

    v10 = &qword_100128DC0;
  }

  return *v10;
}

uint64_t sub_100029C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_100029D48(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100029CEC()
{
  if (!qword_100115660)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100115660);
    }
  }
}

void sub_100029D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100029DAC()
{
  result = qword_1001145E8;
  if (!qword_1001145E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1001145E8);
  }

  return result;
}

uint64_t sub_100029E24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_10002AE54(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100029F18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10002AE54(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata accessor for MediumDetailContentView()
{
  result = qword_1001156C0;
  if (!qword_1001156C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002A038()
{
  sub_10002AB88(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10002AB88(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10002AE54(319, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10002AB88(319, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10002A1C4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10002ABD8();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v52 = *(a1 + 80);
  v11 = *a1;
  v12 = a1[2];
  v13 = a1[3];
  *&v49 = a1[1];
  *(&v49 + 1) = v12;
  v14 = a1[5];
  v50 = a1[4];
  v51 = v11;
  v47 = v14;
  v48 = v13;
  v15 = a1[6];
  v45 = a1[7];
  v46 = v15;
  v16 = a1[8];
  v41 = a1[9];
  v42 = v16;
  v17 = *(a1 + 13);
  v53[0] = *(a1 + 11);
  v53[1] = v17;
  v54[0] = *(a1 + 15);
  *(v54 + 9) = *(a1 + 129);
  v18 = *(a1 + 13);
  v55 = *(a1 + 11);
  v56 = v18;
  v57[0] = *(a1 + 15);
  *(v57 + 9) = *(a1 + 129);
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 1;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;

  v20 = v15;
  v21 = v45;
  v23 = v41;
  v22 = v42;
  sub_10002B054(v20, v45, v42, v41);
  sub_10002B068(v53, v64);
  *v10 = sub_1000DAC80();
  *(v10 + 1) = 0x4040000000000000;
  v10[16] = 0;
  sub_10002B0C4();
  sub_10002A564(a1, &v10[*(v24 + 44)]);
  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 40) = 1;
  v27 = &v10[*(v5 + 44)];
  *v27 = v25;
  v27[1] = sub_10002B5D4;
  v27[2] = v26;
  v28 = v44;
  sub_10002B338(v10, v44, sub_10002ABD8);
  LOBYTE(v58[0]) = v52;
  *(&v58[0] + 1) = v51;
  v58[1] = v49;
  *&v59 = v48;
  *(&v59 + 1) = v50;
  *&v60 = v47;
  *(&v60 + 1) = v46;
  *&v61 = v21;
  *(&v61 + 1) = v22;
  *&v62[0] = v23;
  *(v62 + 8) = v55;
  *(&v62[1] + 8) = v56;
  *(&v62[2] + 8) = v57[0];
  *(&v62[3] + 1) = *(v57 + 9);
  v29 = KeyPath;
  *(&v62[4] + 1) = KeyPath;
  *&v63 = sub_10002B050;
  *(&v63 + 1) = v19;
  v30 = v49;
  *a2 = v58[0];
  a2[1] = v30;
  v31 = v59;
  v32 = v60;
  v33 = v62[0];
  a2[4] = v61;
  a2[5] = v33;
  a2[2] = v31;
  a2[3] = v32;
  v34 = v62[1];
  v35 = v62[2];
  v36 = v63;
  a2[9] = v62[4];
  a2[10] = v36;
  v37 = v62[3];
  a2[7] = v35;
  a2[8] = v37;
  a2[6] = v34;
  sub_10002AB08();
  sub_10002B338(v28, a2 + *(v38 + 48), sub_10002ABD8);
  sub_10002B15C(v58, v64);
  sub_10002B430(v10, sub_10002ABD8);
  sub_10002B430(v28, sub_10002ABD8);
  v74 = v55;
  v64[0] = v52;
  v65 = v51;
  v66 = v49;
  v67 = v48;
  v68 = v50;
  v69 = v47;
  v70 = v46;
  v71 = v45;
  v72 = v22;
  v73 = v23;
  v75 = v56;
  v76[0] = v57[0];
  *(v76 + 9) = *(v57 + 9);
  v77 = v29;
  v78 = sub_10002B050;
  v79 = v19;
  return sub_10002B1D0(v64);
}

uint64_t sub_10002A564@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for RegularSparklineView(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = sub_1000DAD10();
  v22 = 1;
  sub_10002A83C(a1, &v34);
  v26 = *&v35[32];
  v27 = *&v35[48];
  v28 = *&v35[64];
  v29 = *&v35[80];
  v23 = v34;
  v24 = *v35;
  v25 = *&v35[16];
  v30[0] = v34;
  v30[1] = *v35;
  v30[2] = *&v35[16];
  v30[3] = *&v35[32];
  v30[4] = *&v35[48];
  v30[5] = *&v35[64];
  v31 = *&v35[80];
  sub_10002B23C(&v23, &v32, &qword_100115770, sub_10002AEB8, &type metadata accessor for TupleView);
  sub_10002B2AC(v30);
  *(&v21[3] + 7) = v26;
  *(&v21[4] + 7) = v27;
  *(&v21[5] + 7) = v28;
  *(v21 + 7) = v23;
  *(&v21[1] + 7) = v24;
  *(&v21[6] + 7) = v29;
  *(&v21[2] + 7) = v25;
  v12 = v22;
  v13 = type metadata accessor for MediumDetailContentView();
  sub_10002B23C(a1 + *(v13 + 36), v10, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  sub_10002B338(v10, v7, type metadata accessor for RegularSparklineView);
  v32 = v11;
  LOBYTE(v33[0]) = v12;
  *(&v33[1] + 1) = v21[1];
  *(v33 + 1) = v21[0];
  *(&v33[5] + 1) = v21[5];
  *(&v33[4] + 1) = v21[4];
  *(&v33[3] + 1) = v21[3];
  v33[6] = *(&v21[5] + 15);
  *(&v33[2] + 1) = v21[2];
  v14 = v33[2];
  a2[2] = v33[1];
  a2[3] = v14;
  v15 = v33[6];
  a2[6] = v33[5];
  a2[7] = v15;
  v16 = v33[4];
  a2[4] = v33[3];
  a2[5] = v16;
  v17 = v33[0];
  *a2 = v32;
  a2[1] = v17;
  sub_10002AD18();
  sub_10002B338(v7, a2 + *(v18 + 48), type metadata accessor for RegularSparklineView);
  sub_10002B3A0(&v32, &v34);
  sub_10002B430(v10, type metadata accessor for RegularSparklineView);
  sub_10002B430(v7, type metadata accessor for RegularSparklineView);
  *&v35[49] = v21[3];
  *&v35[65] = v21[4];
  *&v35[81] = v21[5];
  *&v35[96] = *(&v21[5] + 15);
  *&v35[1] = v21[0];
  *&v35[17] = v21[1];
  v34 = v11;
  v35[0] = v12;
  *&v35[33] = v21[2];
  return sub_10002B490(&v34);
}

uint64_t sub_10002A83C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MediumDetailContentView();
  v5 = *(a1 + *(v4 + 40));
  if (*(v5 + 16) <= 3uLL)
  {
    v7 = *(a1 + *(v4 + 40));
  }

  else
  {
    sub_10002404C(*(a1 + *(v4 + 40)), v5 + 32, 0, 7uLL);
    v5 = v6;
  }

  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 1;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = a1[9];
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = 1;
  *a2 = v5;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = sub_10002B5D4;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0x4010000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 64) = v12;
  *(a2 + 72) = v13;
  *(a2 + 80) = v14;
  *(a2 + 88) = sub_10002B5D4;
  *(a2 + 96) = v15;
  sub_10002B054(v10, v11, v12, v13);

  sub_10002B054(v10, v11, v12, v13);

  sub_10002B52C(v10, v11, v12, v13);
}

uint64_t sub_10002AA28@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000DAD10();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  sub_10002AA70();
  return sub_10002A1C4(v1, (a1 + *(v3 + 44)));
}

void sub_10002AA70()
{
  if (!qword_100115720)
  {
    sub_10002AE54(255, &qword_100115728, sub_10002AB08, &type metadata accessor for TupleView);
    v0 = sub_1000DA800();
    if (!v1)
    {
      atomic_store(v0, &qword_100115720);
    }
  }
}

void sub_10002AB08()
{
  if (!qword_100115730)
  {
    sub_10002AF50(255, &qword_100115738);
    sub_10002ABD8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100115730);
    }
  }
}

void sub_10002AB88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10002ABD8()
{
  if (!qword_100115748)
  {
    sub_10002AC64();
    sub_10002AB88(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115748);
    }
  }
}

void sub_10002AC64()
{
  if (!qword_100115750)
  {
    sub_10002AE54(255, &qword_100115758, sub_10002AD18, &type metadata accessor for TupleView);
    sub_10002AFD4(&qword_100115798, &qword_100115758, sub_10002AD18);
    v0 = sub_1000DB4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100115750);
    }
  }
}

void sub_10002AD18()
{
  if (!qword_100115760)
  {
    sub_10002ADB4(255, &qword_100115768, &qword_100115770, sub_10002AEB8, &qword_100115790);
    type metadata accessor for RegularSparklineView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100115760);
    }
  }
}

void sub_10002ADB4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_10002AE54(255, a3, a4, &type metadata accessor for TupleView);
    sub_10002AFD4(a5, a3, a4);
    v9 = sub_1000DB540();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10002AE54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10002AEB8()
{
  if (!qword_100115778)
  {
    sub_10002AF50(255, &qword_100115780);
    sub_10002AF50(255, &qword_100115788);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100115778);
    }
  }
}

void sub_10002AF50(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_10002AB88(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v3 = sub_1000DA930();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10002AFD4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_10002AE54(255, a2, a3, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002B054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

void sub_10002B0C4()
{
  if (!qword_1001157A0)
  {
    sub_10002AE54(255, &qword_100115758, sub_10002AD18, &type metadata accessor for TupleView);
    v0 = sub_1000DA800();
    if (!v1)
    {
      atomic_store(v0, &qword_1001157A0);
    }
  }
}

uint64_t sub_10002B15C(uint64_t a1, uint64_t a2)
{
  sub_10002AF50(0, &qword_100115738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B1D0(uint64_t a1)
{
  sub_10002AF50(0, &qword_100115738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002B23C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_10002AE54(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_10002B2AC(uint64_t a1)
{
  sub_10002AE54(0, &qword_100115770, sub_10002AEB8, &type metadata accessor for TupleView);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002B338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002B3A0(uint64_t a1, uint64_t a2)
{
  sub_10002ADB4(0, &qword_100115768, &qword_100115770, sub_10002AEB8, &qword_100115790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002B490(uint64_t a1)
{
  sub_10002ADB4(0, &qword_100115768, &qword_100115770, sub_10002AEB8, &qword_100115790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002B52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

unint64_t sub_10002B544()
{
  result = qword_1001157A8;
  if (!qword_1001157A8)
  {
    sub_10002ADB4(255, &qword_1001157B0, &qword_100115728, sub_10002AB08, &qword_1001157B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001157A8);
  }

  return result;
}

uint64_t sub_10002B5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_10002B770(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
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
      sub_10002B770(0, &qword_1001157F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void sub_10002B770(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10002B7E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_10002B770(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
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
      sub_10002B770(0, &qword_1001157F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t type metadata accessor for SymbolTrendView()
{
  result = qword_100115850;
  if (!qword_100115850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002B9B8()
{
  sub_10002D8F8(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10002B770(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10002B770(319, &qword_1001157F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10002D8F8(319, &unk_100115860, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10002BB38(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1000DB140();
    sub_10002F820(&qword_100115A18, &type metadata accessor for Text.Layout);
    sub_1000DBCC0();
    sub_1000DBD10();
    sub_1000DBCF0();
    if (v4)
    {
      sub_1000DBD10();
    }

    else
    {
      v6 = v3;
    }

    result = sub_1000DBD10();
    if (v5 >= v6)
    {
      sub_1000DBD60();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002BC88@<X0>(uint64_t a1@<X8>)
{
  sub_1000DA830();
  sub_10002F820(qword_100115428, &type metadata accessor for LayoutSubviews);
  sub_1000DBCC0();
  sub_1000DBD10();
  if (v9[4] == v9[0])
  {
    v2 = sub_1000DA7F0();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_1000DBD70();
    v6 = v5;
    v7 = sub_1000DA7F0();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_10002BE20@<X0>(uint64_t a1@<X8>)
{
  sub_1000DB140();
  sub_10002F820(&qword_100115A18, &type metadata accessor for Text.Layout);
  sub_1000DBCC0();
  sub_1000DBD10();
  if (v9[4] == v9[0])
  {
    v2 = sub_1000DB130();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_1000DBD70();
    v6 = v5;
    v7 = sub_1000DB130();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_10002BFB8()
{
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(&unk_100128FD8, v3);
  sub_100006C7C(v3, v3[3]);
  sub_10002F2F8();
  result = sub_1000D9F00();
  if (v2)
  {
    sub_100023738(&v1, &unk_1001157C0);
    return sub_100006D0C(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002C078()
{
  v1 = sub_1000DAC10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for SymbolTrendView() + 32);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1000DBDC0();
    v8 = sub_1000DAED0();
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();
    sub_10002F3F0(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_10002C1D0()
{
  v1 = sub_1000DAC10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B770(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v26 - v8);
  v10 = sub_1000DB720();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v18 = type metadata accessor for SymbolTrendView();
  sub_10002F35C(v0 + *(v18 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v11 + 32);
    v19(v17, v9, v10);
  }

  else
  {
    v20 = *v9;
    sub_1000DBDC0();
    v21 = sub_1000DAED0();
    v27 = v1;
    v22 = v21;
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v27);
    v19 = *(v11 + 32);
  }

  v19(v14, v17, v10);
  v23 = (*(v11 + 88))(v14, v10);
  v24 = 1;
  if (v23 != enum case for WidgetFamily.accessoryCircular(_:) && v23 != enum case for WidgetFamily.accessoryRectangular(_:) && v23 != enum case for WidgetFamily.accessoryInline(_:))
  {
    (*(v11 + 8))(v14, v10);
    v24 = sub_10002C078() ^ 1;
  }

  return v24 & 1;
}

uint64_t sub_10002C510@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v161 = a2;
  v3 = sub_1000DA890();
  v142 = *(v3 - 8);
  v143 = v3;
  v4 = *(v142 + 64);
  __chkstk_darwin(v3);
  v141 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002DBD0(0, &qword_100115950, sub_10002DC5C, sub_10002DF4C);
  v159 = v6;
  v145 = *(v6 - 8);
  v7 = *(v145 + 64);
  __chkstk_darwin(v6);
  v144 = &v138 - v8;
  sub_10002DADC();
  v160 = v9;
  v147 = *(v9 - 8);
  v10 = *(v147 + 64);
  __chkstk_darwin(v9);
  v146 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E300(0, &qword_1001159D8, &type metadata accessor for _ConditionalContent.Storage);
  v154 = v12;
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v157 = &v138 - v14;
  sub_10002DBD0(0, &qword_100115900, sub_10002D7E0, sub_10002D948);
  v156 = v15;
  v140 = *(v15 - 8);
  v16 = *(v140 + 64);
  __chkstk_darwin(v15);
  v139 = &v138 - v17;
  sub_10002E300(0, &qword_1001158F8, &type metadata accessor for _ConditionalContent);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v158 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v155 = &v138 - v22;
  v149 = sub_1000DB6F0();
  v23 = *(v149 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v149);
  v26 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v138 - v28;
  sub_10002D6E4();
  v31 = v30;
  v32 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v34 = (&v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002D664();
  v148 = v35;
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v152 = &v138 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002D5E4();
  v151 = v38;
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v153 = &v138 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v150 = &v138 - v42;
  __chkstk_darwin(v43);
  v162 = &v138 - v44;
  *a1;
  v45 = sub_1000DB3C0();
  v46 = (v34 + *(v31 + 36));
  sub_10002B770(0, &qword_1001158D0, &type metadata accessor for Image.Scale, &type metadata accessor for _EnvironmentKeyWritingModifier);
  v48 = *(v47 + 28);
  v49 = enum case for Image.Scale.small(_:);
  v50 = sub_1000DB410();
  v51 = v46 + v48;
  v52 = a1;
  (*(*(v50 - 8) + 104))(v51, v49, v50);
  *v46 = swift_getKeyPath();
  *v34 = v45;
  v53 = &a1[*(type metadata accessor for SymbolTrendView() + 28)];
  sub_10004C514(v29);
  sub_1000DB6E0();
  LOBYTE(v53) = sub_1000DB6D0();
  v54 = *(v23 + 8);
  v55 = v149;
  v54(v26, v149);
  v54(v29, v55);
  if (v53)
  {
    v56 = sub_10002D30C();
  }

  else
  {
    v56 = sub_1000DB360();
  }

  v57 = v56;
  KeyPath = swift_getKeyPath();
  v59 = v152;
  sub_10002F064(v34, v152, sub_10002D6E4);
  v60 = (v59 + *(v148 + 36));
  *v60 = KeyPath;
  v60[1] = v57;
  if (sub_10002C1D0())
  {
    v61 = sub_1000DB090();
  }

  else
  {
    sub_1000DB080();
    sub_1000DAFE0();
    v61 = sub_1000DB010();
  }

  v62 = swift_getKeyPath();
  v63 = v150;
  sub_10002F064(v59, v150, sub_10002D664);
  v64 = (v63 + *(v151 + 36));
  *v64 = v62;
  v64[1] = v61;
  sub_10002F064(v63, v162, sub_10002D5E4);
  if (sub_10002C1D0())
  {
    v65 = v52[2];
    *&v175 = v52[1];
    *(&v175 + 1) = v65;
    sub_100017740();

    v66 = sub_1000DB170();
    v68 = v67;
    v70 = v69;
    sub_1000DB090();
    v71 = sub_1000DB100();
    v73 = v72;
    v75 = v74;
    v77 = v76;

    sub_100017794(v66, v68, v70 & 1);

    v78 = swift_getKeyPath();
    v79 = swift_getKeyPath();
    LOBYTE(v175) = v75 & 1;
    LOBYTE(v163) = 0;
    v80 = swift_getKeyPath();
    *&v163 = v71;
    *(&v163 + 1) = v73;
    LOBYTE(v164) = v75 & 1;
    *(&v164 + 1) = v77;
    *&v165 = v78;
    *(&v165 + 1) = 1;
    LOBYTE(v166) = 0;
    *(&v166 + 1) = v79;
    *&v167 = 0x3FEB333333333333;
    *(&v167 + 1) = v80;
    LOBYTE(v168) = 1;
    sub_10002D7E0();
    v82 = v81;
    v83 = sub_10002D948();
    v84 = v139;
    sub_1000DB1F0();
    v177 = v165;
    v178 = v166;
    v179 = v167;
    LOBYTE(v180) = v168;
    v175 = v163;
    v176 = v164;
    sub_10002F238(&v175, sub_10002D7E0);
    v85 = v140;
    v86 = v156;
    (*(v140 + 16))(v157, v84, v156);
    swift_storeEnumTagMultiPayload();
    *&v163 = v82;
    *(&v163 + 1) = v83;
    swift_getOpaqueTypeConformance2();
    sub_10002DC5C();
    v88 = v87;
    v89 = sub_10002DF4C();
    *&v163 = v88;
    *(&v163 + 1) = v89;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v163 = v159;
    *(&v163 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v91 = v155;
    sub_1000DAD90();
    (*(v85 + 8))(v84, v86);
  }

  else
  {
    v92 = v52;
    v93 = v52[3];
    v94 = v92[4];
    *&v175 = v93;
    *(&v175 + 1) = v94;
    sub_100017740();

    v95 = sub_1000DB170();
    v151 = v96;
    v152 = v95;
    v98 = v97;
    v150 = v99;
    v101 = v92[1];
    v100 = v92[2];
    if (v101 == v93 && v100 == v94 || (v102 = v92[1], v103 = v92[2], (sub_1000DC360() & 1) != 0))
    {
      v149 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
    }

    else
    {
      *&v175 = v101;
      *(&v175 + 1) = v100;

      v149 = sub_1000DB170();
      v104 = v107;
      v106 = v108;
      v105 = v109 & 1;
    }

    v174 = v98 & 1;
    v110 = swift_getKeyPath();
    v111 = v174;
    v186 = 0;
    sub_1000DB080();
    v112 = sub_1000DAF80();

    v113 = swift_getKeyPath();
    v114 = swift_getKeyPath();
    v187 = 0;
    v115 = sub_1000DB360();
    v116 = swift_getKeyPath();
    *&v163 = v152;
    *(&v163 + 1) = v151;
    LOBYTE(v164) = v111;
    *(&v164 + 1) = v150;
    *&v165 = v149;
    *(&v165 + 1) = v104;
    *&v166 = v105;
    *(&v166 + 1) = v106;
    *&v167 = 0;
    *(&v167 + 1) = v110;
    v168 = 0uLL;
    *&v169 = 0;
    BYTE8(v169) = 0;
    *&v170 = v113;
    *(&v170 + 1) = v112;
    *&v171 = v114;
    *(&v171 + 1) = 1;
    LOBYTE(v172) = 0;
    *(&v172 + 1) = v116;
    v173 = v115;
    v118 = v141;
    v117 = v142;
    v119 = v143;
    (*(v142 + 104))(v141, enum case for DynamicTypeSize.large(_:), v143);
    sub_10002DC5C();
    v121 = v120;
    v122 = sub_10002DF4C();
    v123 = v144;
    sub_1000DB260();
    (*(v117 + 8))(v118, v119);
    v183 = v171;
    v184 = v172;
    v185 = v173;
    v179 = v167;
    v180 = v168;
    v181 = v169;
    v182 = v170;
    v175 = v163;
    v176 = v164;
    v177 = v165;
    v178 = v166;
    sub_10002F238(&v175, sub_10002DC5C);
    *&v163 = v121;
    *(&v163 + 1) = v122;
    v124 = swift_getOpaqueTypeConformance2();
    v125 = v146;
    v126 = v159;
    sub_1000DB1F0();
    (*(v145 + 8))(v123, v126);
    v127 = v147;
    v128 = v160;
    (*(v147 + 16))(v157, v125, v160);
    swift_storeEnumTagMultiPayload();
    sub_10002D7E0();
    v130 = v129;
    v131 = sub_10002D948();
    *&v163 = v130;
    *(&v163 + 1) = v131;
    swift_getOpaqueTypeConformance2();
    *&v163 = v126;
    *(&v163 + 1) = v124;
    swift_getOpaqueTypeConformance2();
    v91 = v155;
    sub_1000DAD90();
    (*(v127 + 8))(v125, v128);
  }

  v132 = v162;
  v133 = v153;
  sub_10002F0DC(v162, v153);
  v134 = v158;
  sub_10002F140(v91, v158);
  v135 = v161;
  sub_10002F0DC(v133, v161);
  sub_10002D558();
  sub_10002F140(v134, v135 + *(v136 + 48));
  sub_10002F1C0(v91);
  sub_10002F238(v132, sub_10002D5E4);
  sub_10002F1C0(v134);
  return sub_10002F238(v133, sub_10002D5E4);
}

uint64_t sub_10002D30C()
{
  v1 = *v0;
  if (v1 == 2)
  {
    if (qword_100114088 != -1)
    {
      swift_once();
    }

    v2 = qword_1001157D8;
    v3 = unk_1001157E0;
    sub_100006C7C(qword_1001157C0, qword_1001157D8);
    (*(*(v3 + 16) + 448))(v2);
  }

  else if (v1)
  {
    if (qword_100114088 != -1)
    {
      swift_once();
    }

    v4 = qword_1001157D8;
    v5 = unk_1001157E0;
    sub_100006C7C(qword_1001157C0, qword_1001157D8);
    (*(v5 + 64))(v4, v5);
  }

  else
  {
    if (qword_100114088 != -1)
    {
      swift_once();
    }

    v6 = qword_1001157D8;
    v7 = unk_1001157E0;
    sub_100006C7C(qword_1001157C0, qword_1001157D8);
    (*(v7 + 56))(v6, v7);
  }

  return sub_1000DB390();
}

uint64_t sub_10002D478@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000DAC50();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  sub_10002D4C0();
  return sub_10002C510(v1, a1 + *(v3 + 44));
}

void sub_10002D4C0()
{
  if (!qword_1001158A0)
  {
    sub_10002B770(255, &qword_1001158A8, sub_10002D558, &type metadata accessor for TupleView);
    v0 = sub_1000DA800();
    if (!v1)
    {
      atomic_store(v0, &qword_1001158A0);
    }
  }
}

void sub_10002D558()
{
  if (!qword_1001158B0)
  {
    sub_10002D5E4();
    sub_10002E300(255, &qword_1001158F8, &type metadata accessor for _ConditionalContent);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001158B0);
    }
  }
}

void sub_10002D5E4()
{
  if (!qword_1001158B8)
  {
    sub_10002D664();
    sub_10002D774(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_1001158B8);
    }
  }
}

void sub_10002D664()
{
  if (!qword_1001158C0)
  {
    sub_10002D6E4();
    sub_10002D774(255, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_1001158C0);
    }
  }
}

void sub_10002D6E4()
{
  if (!qword_1001158C8)
  {
    sub_10002B770(255, &qword_1001158D0, &type metadata accessor for Image.Scale, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_1001158C8);
    }
  }
}

void sub_10002D774(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_10002D8F8(255, a3, a4, &type metadata accessor for Optional);
    v5 = sub_1000DAEA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10002D7E0()
{
  if (!qword_100115908)
  {
    sub_10002D86C();
    sub_10002D8F8(255, &qword_100115920, &type metadata for Bool, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115908);
    }
  }
}

void sub_10002D86C()
{
  if (!qword_100115910)
  {
    sub_100017444();
    sub_10002D8F8(255, &qword_100115918, &type metadata for CGFloat, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115910);
    }
  }
}

void sub_10002D8F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10002D948()
{
  result = qword_100115928;
  if (!qword_100115928)
  {
    sub_10002D7E0();
    sub_10002D9E0();
    sub_10002DA78(&qword_100115940, &qword_100115920, &type metadata for Bool);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115928);
  }

  return result;
}

unint64_t sub_10002D9E0()
{
  result = qword_100115930;
  if (!qword_100115930)
  {
    sub_10002D86C();
    sub_1000177AC();
    sub_10002DA78(&qword_100115938, &qword_100115918, &type metadata for CGFloat);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115930);
  }

  return result;
}

uint64_t sub_10002DA78(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002D8F8(255, a2, a3, &type metadata accessor for _EnvironmentKeyWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10002DADC()
{
  if (!qword_100115948)
  {
    sub_10002DBD0(255, &qword_100115950, sub_10002DC5C, sub_10002DF4C);
    sub_10002DC5C();
    sub_10002DF4C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100115948);
    }
  }
}

void sub_10002DBD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_10002DC5C()
{
  if (!qword_100115958)
  {
    sub_10002DCDC();
    sub_10002D774(255, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115958);
    }
  }
}

void sub_10002DCDC()
{
  if (!qword_100115960)
  {
    sub_10002DD5C();
    sub_10002D774(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115960);
    }
  }
}

void sub_10002DD5C()
{
  if (!qword_100115968)
  {
    sub_10002DDDC();
    sub_10002D774(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115968);
    }
  }
}

void sub_10002DDDC()
{
  if (!qword_100115970)
  {
    sub_10002DE3C();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115970);
    }
  }
}

void sub_10002DE3C()
{
  if (!qword_100115978)
  {
    sub_10002DE9C();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115978);
    }
  }
}

void sub_10002DE9C()
{
  if (!qword_100115980)
  {
    sub_10002DEF8();
    v0 = sub_1000DAE20();
    if (!v1)
    {
      atomic_store(v0, &qword_100115980);
    }
  }
}

unint64_t sub_10002DEF8()
{
  result = qword_100115988;
  if (!qword_100115988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115988);
  }

  return result;
}

unint64_t sub_10002DF4C()
{
  result = qword_100115990;
  if (!qword_100115990)
  {
    sub_10002DC5C();
    sub_10002DFEC();
    sub_10002E2B0(&qword_1001159D0, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115990);
  }

  return result;
}

unint64_t sub_10002DFEC()
{
  result = qword_100115998;
  if (!qword_100115998)
  {
    sub_10002DCDC();
    sub_10002E08C();
    sub_10002E2B0(&qword_100115200, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115998);
  }

  return result;
}

unint64_t sub_10002E08C()
{
  result = qword_1001159A0;
  if (!qword_1001159A0)
  {
    sub_10002DD5C();
    sub_10002E12C();
    sub_10002E2B0(&qword_1001159C8, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001159A0);
  }

  return result;
}

unint64_t sub_10002E12C()
{
  result = qword_1001159A8;
  if (!qword_1001159A8)
  {
    sub_10002DDDC();
    sub_10002E1AC();
    sub_10002E25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001159A8);
  }

  return result;
}

unint64_t sub_10002E1AC()
{
  result = qword_1001159B0;
  if (!qword_1001159B0)
  {
    sub_10002DE3C();
    sub_10002F820(&qword_1001159B8, sub_10002DE9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001159B0);
  }

  return result;
}

unint64_t sub_10002E25C()
{
  result = qword_1001159C0;
  if (!qword_1001159C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001159C0);
  }

  return result;
}

uint64_t sub_10002E2B0(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10002D774(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10002E300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_10002DBD0(255, &qword_100115900, sub_10002D7E0, sub_10002D948);
    v7 = v6;
    sub_10002DADC();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10002E3B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a5;
  v93 = a3;
  v90 = a2;
  v95 = a1;
  sub_10002F69C(0, &qword_100115A10, &type metadata accessor for IndexingIterator);
  v89 = v8;
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v74 - v10;
  v83 = sub_1000DA910();
  v82 = *(v83 - 8);
  v12 = *(v82 + 64);
  __chkstk_darwin(v83);
  v81 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = &v74 - v15;
  v79 = sub_1000DAC10();
  v78 = *(v79 - 8);
  v16 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1000DA8C0();
  v85 = *(v86 - 8);
  v18 = *(v85 + 64);
  __chkstk_darwin(v86);
  v84 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000DB140();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002F69C(0, &qword_100115A20, &type metadata accessor for Slice);
  v76 = v25;
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v74 - v27);
  sub_10002B770(0, qword_100115A28, &type metadata accessor for Text.Layout.Line, &type metadata accessor for Optional);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v87 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v74 - v33;
  v91 = sub_1000DB130();
  v88 = *(v91 - 8);
  v35 = *(v88 + 64);
  __chkstk_darwin(v91);
  v37 = &v74 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v38);
  v41 = &v74 - v40;
  v94 = a6;
  if (!a6)
  {
    goto LABEL_7;
  }

  sub_1000178C0(v93, a4, v92 & 1);

  if ((sub_1000DB110() & 1) == 0)
  {
    v44 = v92 & 1;
    v45 = v93;
    v46 = a4;
LABEL_6:
    sub_100017794(v45, v46, v44);

    goto LABEL_7;
  }

  v75 = a4;
  sub_10002BE20(v34);
  v42 = v88;
  v43 = v91;
  if ((*(v88 + 48))(v34, 1, v91) != 1)
  {
    (*(v42 + 32))(v41, v34, v43);
    (*(v21 + 16))(v24, v95, v20);
    v55 = v43;
    sub_10002BB38(1);
    v56 = *v28;
    v57 = v28[1];
    if (*v28 == *&v57)
    {
      sub_10002F7C4(v28, &qword_100115A20, &type metadata accessor for Slice);
      v58 = v87;
      (*(v42 + 56))(v87, 1, 1, v43);
      sub_10002F738(v58);
      v59 = *v90;
      v60 = v84;
      sub_1000DA8F0();
      v61 = v41;
      sub_1000DB120();
      v114.width = v96;
      v114.height = v97 + v98;
      sub_1000DA8B0(v114);
      v62 = v77;
      sub_1000DA8A0();
      v63 = v80;
      sub_1000DAA80();
      (*(v78 + 8))(v62, v79);
      v64 = v82;
      v65 = v81;
      v66 = v83;
      (*(v82 + 104))(v81, enum case for LayoutDirection.rightToLeft(_:), v83);
      LOBYTE(v58) = sub_1000DA900();
      v67 = *(v64 + 8);
      v67(v65, v66);
      v67(v63, v66);
      sub_1000DB120();
      if (v58)
      {
        v115.origin.x = v99;
        v115.size.width = v101;
        v115.origin.y = v100 - v102;
        v115.size.height = v102 + v103;
        CGRectGetMinX(v115);
        sub_1000DB120();
      }

      else
      {
        v116.origin.x = v104;
        v116.size.width = v106;
        v116.origin.y = v105 - v107;
        v116.size.height = v107 + v108;
        CGRectGetMinX(v116);
      }

      v72 = v86;
      v73 = v85;
      sub_1000DB120();
      v117.origin.x = v109;
      v117.size.width = v111;
      v117.origin.y = v110 - v112;
      v117.size.height = v112 + v113;
      CGRectGetMinY(v117);
      sub_1000DA8D0();
      sub_100017794(v93, v75, v92 & 1);

      (*(v73 + 8))(v60, v72);
      return (*(v42 + 8))(v61, v91);
    }

    v104 = *v28;
    v109 = v56;
    v110 = v57;
    v68 = *(v76 + 40);
    sub_10002F820(&qword_100115A18, &type metadata accessor for Text.Layout);
    sub_1000DBCD0();
    v69 = sub_1000DBD70();
    v70 = v88;
    v71 = v87;
    (*(v88 + 16))(v87);
    v69(&v109, 0);
    sub_10002F7C4(v28, &qword_100115A20, &type metadata accessor for Slice);
    (*(v70 + 56))(v71, 0, 1, v55);
    sub_10002F738(v71);
    (*(v70 + 8))(v41, v55);
    v44 = v92 & 1;
    v45 = v93;
    v46 = v75;
    goto LABEL_6;
  }

  sub_100017794(v93, v75, v92 & 1);

  sub_10002F738(v34);
LABEL_7:
  (*(v21 + 16))(v11, v95, v20, v39);
  v47 = *(v89 + 36);
  sub_10002F820(&qword_100115A18, &type metadata accessor for Text.Layout);
  sub_1000DBCC0();
  sub_1000DBD10();
  v48 = v91;
  v49 = v90;
  if (*&v11[v47] != *&v109)
  {
    v50 = (v88 + 16);
    v51 = (v88 + 8);
    do
    {
      v52 = sub_1000DBD70();
      (*v50)(v37);
      v52(&v109, 0);
      sub_1000DBD20();
      v53 = *v49;
      sub_1000DA8E0();
      (*v51)(v37, v48);
      sub_1000DBD10();
    }

    while (*&v11[v47] != *&v109);
  }

  return sub_10002F7C4(v11, &qword_100115A10, &type metadata accessor for IndexingIterator);
}

void (*sub_10002EFC4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1000DA670();
  return sub_100027D30;
}

uint64_t sub_10002F064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002F0DC(uint64_t a1, uint64_t a2)
{
  sub_10002D5E4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F140(uint64_t a1, uint64_t a2)
{
  sub_10002E300(0, &qword_1001158F8, &type metadata accessor for _ConditionalContent);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F1C0(uint64_t a1)
{
  sub_10002E300(0, &qword_1001158F8, &type metadata accessor for _ConditionalContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002F2A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DAAA0();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10002F2F8()
{
  result = qword_1001159E0;
  if (!qword_1001159E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1001159E0);
  }

  return result;
}

uint64_t sub_10002F35C(uint64_t a1, uint64_t a2)
{
  sub_10002B770(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F3F0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10002F408(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10002F420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10002F47C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_10002F528()
{
  if (!qword_1001159F8)
  {
    sub_10002B770(255, &qword_1001158A8, sub_10002D558, &type metadata accessor for TupleView);
    sub_10002F5BC();
    v0 = sub_1000DB4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1001159F8);
    }
  }
}

unint64_t sub_10002F5BC()
{
  result = qword_100115A00;
  if (!qword_100115A00)
  {
    sub_10002B770(255, &qword_1001158A8, sub_10002D558, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115A00);
  }

  return result;
}

unint64_t sub_10002F648()
{
  result = qword_100115A08;
  if (!qword_100115A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115A08);
  }

  return result;
}

void sub_10002F69C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000DB140();
    v7 = sub_10002F820(&qword_100115A18, &type metadata accessor for Text.Layout);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10002F738(uint64_t a1)
{
  sub_10002B770(0, qword_100115A28, &type metadata accessor for Text.Layout.Line, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F7C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_10002F69C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10002F820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002F8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v57 = sub_1000DA370();
  v55 = *(v57 - 8);
  v5 = *(v55 + 64);
  __chkstk_darwin(v57);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for OverviewTimelineProvider();
  v8 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v58 = v54 - v9;
  v10 = type metadata accessor for OverviewWidgetView();
  v11 = *(a2 + 8);
  v12 = sub_100031C90(&qword_100115AB0, type metadata accessor for OverviewWidgetView);
  v71 = a1;
  v72 = v10;
  v56 = v10;
  v73 = v11;
  v74 = v12;
  v54[1] = v12;
  v13 = sub_1000DB780();
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  __chkstk_darwin(v13);
  v16 = v54 - v15;
  WitnessTable = swift_getWitnessTable();
  v71 = v13;
  v72 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = *(OpaqueTypeMetadata2 - 8);
  v19 = *(v62 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v21 = v54 - v20;
  v71 = v13;
  v72 = WitnessTable;
  v54[2] = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = OpaqueTypeMetadata2;
  v72 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeMetadata2();
  v68 = *(v23 - 8);
  v24 = *(v68 + 64);
  __chkstk_darwin(v23);
  v66 = v54 - v25;
  v71 = OpaqueTypeMetadata2;
  v72 = OpaqueTypeConformance2;
  v59 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v69 = v23;
  v71 = v23;
  v72 = v26;
  v64 = v26;
  v67 = swift_getOpaqueTypeMetadata2();
  v65 = *(v67 - 8);
  v27 = *(v65 + 64);
  __chkstk_darwin(v67);
  v63 = v54 - v28;
  if (qword_100114098 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_100015294(v57, qword_100128DF0);
  (*(v55 + 16))(v7, v30, v29);
  sub_10008A2C8(v7, v58);
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  *(v31 + 24) = a2;
  swift_getWitnessTable();
  sub_1000DB770();
  sub_1000DACD0();
  v32 = sub_1000DB160();
  v34 = v33;
  v36 = v35;
  sub_1000DAD50();
  sub_100017794(v32, v34, v36 & 1);

  (*(v61 + 8))(v16, v13);
  sub_1000DACD0();
  v37 = sub_1000DB160();
  v39 = v38;
  LOBYTE(v34) = v40;
  v41 = v66;
  sub_1000DAD30();
  sub_100017794(v37, v39, v34 & 1);

  (*(v62 + 8))(v21, OpaqueTypeMetadata2);
  sub_100032730(0, &qword_100115AB8, &type metadata accessor for WidgetFamily, &type metadata accessor for _ContiguousArrayStorage);
  v42 = sub_1000DB720();
  v43 = *(v42 - 8);
  v44 = *(v43 + 72);
  v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1000DFB00;
  v47 = v46 + v45;
  v48 = *(v43 + 104);
  v48(v47, enum case for WidgetFamily.systemSmall(_:), v42);
  v48(v47 + v44, enum case for WidgetFamily.systemMedium(_:), v42);
  v48(v47 + 2 * v44, enum case for WidgetFamily.systemLarge(_:), v42);
  v48(v47 + 3 * v44, enum case for WidgetFamily.accessoryRectangular(_:), v42);
  v50 = v63;
  v49 = v64;
  v51 = v69;
  sub_1000DAD40();

  (*(v68 + 8))(v41, v51);
  v71 = v51;
  v72 = v49;
  swift_getOpaqueTypeConformance2();
  v52 = v67;
  sub_1000DAD60();
  return (*(v65 + 8))(v50, v52);
}

uint64_t sub_100030144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100032580(a1, a2, type metadata accessor for OverviewTimelineEntry);
  v3 = *(type metadata accessor for OverviewWidgetView() + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_100032730(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for OverviewWidgetView()
{
  result = qword_100115B18;
  if (!qword_100115B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100030248@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_1000DA890();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000DAE80();
  v46 = *(v47 - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin(v47);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000318E8();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031E08();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031E68(0);
  v19 = v18;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031EE4();
  v45 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030784(v2, v12);
  sub_1000DB600();
  sub_1000DA9A0();
  sub_10003238C(v12, v17, sub_1000318E8);
  v28 = &v17[*(v14 + 44)];
  v29 = v61;
  *(v28 + 4) = v60;
  *(v28 + 5) = v29;
  *(v28 + 6) = v62;
  v30 = v57;
  *v28 = v56;
  *(v28 + 1) = v30;
  v31 = v59;
  *(v28 + 2) = v58;
  *(v28 + 3) = v31;
  KeyPath = swift_getKeyPath();
  v33 = &v22[*(v19 + 36)];
  sub_100031EB0(0);
  v35 = *(v34 + 28);
  v36 = enum case for ColorScheme.dark(_:);
  v37 = sub_1000DA6B0();
  (*(*(v37 - 8) + 104))(v33 + v35, v36, v37);
  *v33 = KeyPath;
  sub_10003238C(v17, v22, sub_100031E08);
  sub_1000DAE70();
  sub_1000DB600();
  v38 = sub_100031F84();
  v44 = sub_100032330();
  sub_1000DB290();
  (*(v46 + 8))(v8, v47);
  sub_100032800(v22, sub_100031E68);
  v40 = v49;
  v39 = v50;
  v41 = v48;
  (*(v49 + 104))(v48, enum case for DynamicTypeSize.large(_:), v50);
  v52 = v19;
  v53 = &type metadata for TodayBackgroundView;
  v54 = v38;
  v55 = v44;
  swift_getOpaqueTypeConformance2();
  v42 = v45;
  sub_1000DB260();
  (*(v40 + 8))(v41, v39);
  return (*(v24 + 8))(v27, v42);
}

uint64_t sub_100030784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_1000DA980();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WatchlistOverviewContentView(0);
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100031D20();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  __chkstk_darwin(v11);
  v63 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031CD8(0);
  v70 = v14;
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v62 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v68 = &v60 - v18;
  v61 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  v19 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031B30(0, &qword_100115C30, sub_100031984, sub_100031CD8, &type metadata accessor for _ConditionalContent.Storage);
  v23 = v22;
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v26 = &v60 - v25;
  v27 = type metadata accessor for OverviewTimelineEntry();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100032580(a1, v30, type metadata accessor for OverviewTimelineEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = v23;
    sub_1000323F4(0);
    v32 = v30[*(v31 + 80)];
    sub_10003251C(&v30[*(v31 + 48)], v21);
    sub_100032580(v21, v10 + v7[7], type metadata accessor for WatchlistOverviewContentViewModel);
    *v10 = swift_getKeyPath();
    sub_100032730(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
    swift_storeEnumTagMultiPayload();
    v33 = v10 + v7[5];
    *v33 = swift_getKeyPath();
    v33[8] = 0;
    v34 = v10 + v7[6];
    *v34 = swift_getKeyPath();
    *(v34 + 1) = 0;
    *(v34 + 2) = 0;
    *(v34 + 3) = 0;
    v34[32] = 0;
    if (v32 == 1)
    {
      v35 = v6;
      sub_1000DA970();
      v36 = v70;
      v37 = v65;
    }

    else
    {
      *&v84[0] = _swiftEmptyArrayStorage;
      sub_100031C90(&qword_100115C40, &type metadata accessor for RedactionReasons);
      sub_1000326FC(0);
      sub_100031C90(&qword_100115C50, sub_1000326FC);
      v37 = v65;
      sub_1000DBEE0();
      v35 = v6;
      v36 = v70;
    }

    sub_100031C90(&qword_100115BB8, type metadata accessor for WatchlistOverviewContentView);
    v49 = v63;
    sub_1000DB2F0();
    (*(v64 + 8))(v35, v37);
    sub_100032860(v10, type metadata accessor for WatchlistOverviewContentView);
    v50 = *(v61 + 28);
    KeyPath = swift_getKeyPath();
    v52 = v62;
    v53 = &v62[*(v36 + 36)];
    sub_100031DD4(0);
    v55 = *(v54 + 28);
    v56 = sub_1000D9690();
    (*(*(v56 - 8) + 16))(v53 + v55, &v21[v50], v56);
    *v53 = KeyPath;
    (*(v66 + 32))(v52, v49, v67);
    v57 = v68;
    sub_10003238C(v52, v68, sub_100031CD8);
    sub_10003279C(v57, v26);
    swift_storeEnumTagMultiPayload();
    sub_100031984();
    sub_100031C90(&qword_100115C08, sub_100031984);
    sub_100032220();
    sub_1000DAD90();
    sub_100032800(v57, sub_100031CD8);
    sub_100032860(v21, type metadata accessor for WatchlistOverviewContentViewModel);
  }

  else
  {
    sub_1000328C0();
    v39 = &v30[*(v38 + 48)];
    v41 = *v39;
    v40 = *(v39 + 1);
    v42 = &v30[*(v38 + 64)];
    v44 = *v42;
    v43 = *(v42 + 1);
    v68 = sub_1000DAD00();
    v78 = 1;
    sub_100031080(v43, &v72);
    v81 = v74;
    v82 = v75;
    v83[0] = v76[0];
    *(v83 + 9) = *(v76 + 9);
    v79 = v72;
    v80 = v73;
    *(v85 + 9) = *(v76 + 9);
    v84[2] = v74;
    v84[3] = v75;
    v85[0] = v76[0];
    v84[0] = v72;
    v84[1] = v73;
    sub_100032580(&v79, &v71, sub_100031A18);
    sub_100032860(v84, sub_100031A18);

    *(&v77[1] + 7) = v80;
    *(v77 + 7) = v79;
    v77[5] = *(v83 + 9);
    *(&v77[4] + 7) = v83[0];
    *(&v77[3] + 7) = v82;
    *(&v77[2] + 7) = v81;
    v45 = v77[3];
    *(v26 + 49) = v77[2];
    *(v26 + 65) = v45;
    v46 = v77[5];
    *(v26 + 81) = v77[4];
    *(v26 + 97) = v46;
    v47 = v77[1];
    *(v26 + 17) = v77[0];
    v48 = v78;
    *v26 = v68;
    *(v26 + 1) = 0;
    v26[16] = v48;
    *(v26 + 33) = v47;
    swift_storeEnumTagMultiPayload();
    sub_100031984();
    sub_100031C90(&qword_100115C08, sub_100031984);
    sub_100032220();
    sub_1000DAD90();
  }

  v58 = sub_1000D9090();
  return (*(*(v58 - 8) + 8))(v30, v58);
}

uint64_t sub_100031080@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_100017740();

  v3 = sub_1000DB170();
  v5 = v4;
  v7 = v6;
  sub_1000DAF70();
  v8 = sub_1000DB100();
  v10 = v9;
  v12 = v11;

  sub_100017794(v3, v5, v7 & 1);

  sub_1000DAFB0();
  v13 = sub_1000DB0D0();
  v45 = v14;
  v46 = v15;
  v41 = v16;
  sub_100017794(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v43 = sub_1000DADD0();
  if (a1)
  {

    v17 = sub_1000DB170();
    v19 = v18;
    v21 = v20;
    sub_1000DAF60();
    v22 = sub_1000DB100();
    v39 = v13;
    v24 = v23;
    v26 = v25;

    sub_100017794(v17, v19, v21 & 1);

    sub_1000DADE0();
    v27 = sub_1000DB0E0();
    v29 = v28;
    LOBYTE(v17) = v30;
    v32 = v31;
    v33 = v26 & 1;
    v13 = v39;
    sub_100017794(v22, v24, v33);

    v34 = swift_getKeyPath();
    v35 = v17 & 1;
    v36 = v27;
    a1 = v29;
    sub_1000178C0(v27, v29, v17 & 1);
    v40 = v32;

    v37 = 1;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v40 = 0;
    v34 = 0;
    v37 = 0;
  }

  sub_1000178C0(v13, v45, v41 & 1);

  sub_100032A60(v36, a1, v35, v40);
  sub_100032AB0(v36, a1, v35, v40);
  *a2 = v13;
  *(a2 + 8) = v45;
  *(a2 + 16) = v41 & 1;
  *(a2 + 24) = v46;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 44) = v43;
  *(a2 + 48) = v36;
  *(a2 + 56) = a1;
  *(a2 + 64) = v35;
  *(a2 + 72) = v40;
  *(a2 + 80) = v34;
  *(a2 + 88) = v37;
  sub_100032AB0(v36, a1, v35, v40);
  sub_100017794(v13, v45, v41 & 1);
}

uint64_t sub_1000313F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_100030144(a1, a2);
}

uint64_t sub_100031414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OverviewTimelineEntry();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_100032730(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100031548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OverviewTimelineEntry();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_100032730(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void sub_100031674()
{
  type metadata accessor for OverviewTimelineEntry();
  if (v0 <= 0x3F)
  {
    sub_100032730(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100031728(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for OverviewWidgetView();
  v4 = *(v2 + 8);
  sub_100031C90(&qword_100115AB0, type metadata accessor for OverviewWidgetView);
  sub_1000DB780();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_1000318E8()
{
  if (!qword_100115B50)
  {
    sub_100031B30(255, &qword_100115B58, sub_100031984, sub_100031CD8, &type metadata accessor for _ConditionalContent);
    v0 = sub_1000DB3A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100115B50);
    }
  }
}

void sub_100031984()
{
  if (!qword_100115B60)
  {
    sub_100031A18(255);
    sub_100031C90(&qword_100115BA0, sub_100031A18);
    v0 = sub_1000DB540();
    if (!v1)
    {
      atomic_store(v0, &qword_100115B60);
    }
  }
}

void sub_100031A4C()
{
  if (!qword_100115B70)
  {
    sub_100031B30(255, &qword_100115B78, sub_100031BB4, sub_100031C38, &type metadata accessor for ModifiedContent);
    sub_100032730(255, &qword_100115B98, sub_100031BB4, &type metadata accessor for Optional);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100115B70);
    }
  }
}

void sub_100031B30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_100031BB4()
{
  if (!qword_100115B80)
  {
    sub_100032968(255, &qword_100115B88, &type metadata for TextAlignment, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115B80);
    }
  }
}

void sub_100031C38()
{
  if (!qword_100115B90)
  {
    v0 = sub_1000DAE00();
    if (!v1)
    {
      atomic_store(v0, &qword_100115B90);
    }
  }
}

uint64_t sub_100031C90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100031D20()
{
  if (!qword_100115BB0)
  {
    type metadata accessor for WatchlistOverviewContentView(255);
    sub_100031C90(&qword_100115BB8, type metadata accessor for WatchlistOverviewContentView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100115BB0);
    }
  }
}

void sub_100031E08()
{
  if (!qword_100115BC8)
  {
    sub_1000318E8();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115BC8);
    }
  }
}

void sub_100031EE4()
{
  if (!qword_100115BE0)
  {
    sub_100031E68(255);
    sub_100031F84();
    sub_100032330();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100115BE0);
    }
  }
}

unint64_t sub_100031F84()
{
  result = qword_100115BE8;
  if (!qword_100115BE8)
  {
    sub_100031E68(255);
    sub_100032034();
    sub_100031C90(&qword_100115C20, sub_100031EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115BE8);
  }

  return result;
}

unint64_t sub_100032034()
{
  result = qword_100115BF0;
  if (!qword_100115BF0)
  {
    sub_100031E08();
    sub_1000320B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115BF0);
  }

  return result;
}

unint64_t sub_1000320B4()
{
  result = qword_100115BF8;
  if (!qword_100115BF8)
  {
    sub_1000318E8();
    sub_10003212C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115BF8);
  }

  return result;
}

unint64_t sub_10003212C()
{
  result = qword_100115C00;
  if (!qword_100115C00)
  {
    sub_100031B30(255, &qword_100115B58, sub_100031984, sub_100031CD8, &type metadata accessor for _ConditionalContent);
    sub_100031C90(&qword_100115C08, sub_100031984);
    sub_100032220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115C00);
  }

  return result;
}

unint64_t sub_100032220()
{
  result = qword_100115C10;
  if (!qword_100115C10)
  {
    sub_100031CD8(255);
    type metadata accessor for WatchlistOverviewContentView(255);
    sub_100031C90(&qword_100115BB8, type metadata accessor for WatchlistOverviewContentView);
    swift_getOpaqueTypeConformance2();
    sub_100031C90(&qword_100115C18, sub_100031DD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115C10);
  }

  return result;
}

unint64_t sub_100032330()
{
  result = qword_100115C28;
  if (!qword_100115C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115C28);
  }

  return result;
}

uint64_t sub_10003238C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000323F4(uint64_t a1)
{
  if (!qword_100115C38)
  {
    __chkstk_darwin(a1);
    sub_1000D9090();
    type metadata accessor for WatchlistOverviewContentViewModel(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100115C38);
    }
  }
}

uint64_t sub_10003251C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000325E8()
{
  sub_1000DAB90();
  sub_100031C90(&qword_100115C68, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_1000DAC20();
  return v1;
}

uint64_t sub_100032664@<X0>(_BYTE *a1@<X8>)
{
  sub_1000DAB90();
  sub_100031C90(&qword_100115C68, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_1000DAC20();
  *a1 = v3;
  return result;
}

void sub_100032730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10003279C(uint64_t a1, uint64_t a2)
{
  sub_100031CD8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032800(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100032860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000328C0()
{
  if (!qword_100115C58)
  {
    sub_1000D9090();
    sub_100032968(255, &qword_100115C60, &type metadata for String, &type metadata accessor for Optional);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100115C58);
    }
  }
}

void sub_100032968(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000329B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DAB30();
  *a1 = result;
  return result;
}

uint64_t sub_1000329E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DAB30();
  *a1 = result;
  return result;
}

uint64_t sub_100032A60(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000178C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100032AB0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100017794(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100032B00()
{
  sub_100031EE4();
  sub_100031E68(255);
  sub_100031F84();
  sub_100032330();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100032BA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100032BC4, 0, 0);
}

uint64_t sub_100032BC4()
{
  v1 = *sub_100006C7C((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_100032C64;

  return sub_10005A770();
}

uint64_t sub_100032C64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_100032DB0, 0, 0);
  }
}

uint64_t sub_100032DD4(id *a1, uint64_t a2)
{
  v3 = [*a1 derivedPersonalizationData];
  if (!v3)
  {
    sub_100033C60(_swiftEmptyArrayStorage, &qword_100115D50, &qword_100115D48, NTPBPersonalizationAggregate_ptr);
    v4 = objc_allocWithZone(FCDerivedPersonalizationData);
    sub_100033ED8(0, &qword_100115D48, NTPBPersonalizationAggregate_ptr);
    isa = sub_1000DB830().super.isa;

    v3 = [v4 initWithAggregates:isa scoringType:0 decayRate:0.0];
  }

  sub_1000DA2E0();
  [objc_allocWithZone(FCReadonlyPersonalizationAggregateStore) initWithGenerator:v3];
  sub_100006E20(a2 + 56, v9);
  swift_unknownObjectRetain();
  v6 = sub_1000DA2D0();

  v7 = *(a2 + 96);
  *(a2 + 96) = v6;
  return swift_unknownObjectRelease();
}

unint64_t sub_100032F48(unint64_t a1)
{
  if (!*(v1 + 96))
  {
    return sub_100033C60(_swiftEmptyArrayStorage, &qword_100115D28, &qword_100115D30, FCFeedPersonalizedItemScoreProfile_ptr);
  }

  if (a1 >> 62)
  {
    sub_100033DC0(0, &qword_100115D20, &protocolRef_FCFeedPersonalizingItem);
    swift_unknownObjectRetain();

    sub_1000DC0E0();
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
    swift_unknownObjectRetain();

    sub_1000DC370();
    sub_100033DC0(0, &qword_100115D20, &protocolRef_FCFeedPersonalizingItem);
    if (!swift_dynamicCastMetatype())
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        v7 = (v3 + 32);
        do
        {
          v8 = *v7;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          ++v7;
          --v6;
        }

        while (v6);
      }
    }
  }

  swift_getObjectType();
  v4 = sub_1000DBE00();
  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_1000330D0()
{
  sub_100006D0C(v0 + 2);
  sub_100006D0C(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10003313C()
{
  v1 = *v0;
  sub_100033D58();

  sub_1000DA120();

  v2 = sub_1000DA100();
  v3 = sub_1000DA130();

  return v3;
}

unint64_t sub_100033210(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000DC420();
  sub_1000DB9F0();
  v6 = sub_1000DC460();

  return sub_100033450(a1, a2, v6);
}

unint64_t sub_100033288(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000D9B40();
  sub_1000349D8(&qword_100115DC0, &type metadata accessor for Stock);
  v5 = sub_1000DB870();

  return sub_100033508(a1, v5);
}

unint64_t sub_100033320(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1000DB950();
  sub_1000DC420();
  sub_1000DB9F0();
  v4 = sub_1000DC460();

  return sub_1000336C8(a1, v4);
}

unint64_t sub_1000333B0(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000DC420();
  sub_1000DB9F0();

  v5 = sub_1000DC460();

  return sub_1000337CC(a1 & 1, v5);
}

unint64_t sub_100033450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000DC360())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100033508(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1000D9B40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      sub_1000349D8(&qword_100115DC8, &type metadata accessor for Stock);
      v17 = sub_1000DB8D0();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1000336C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000DB950();
      v9 = v8;
      if (v7 == sub_1000DB950() && v9 == v10)
      {
        break;
      }

      v12 = sub_1000DC360();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000337CC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x79636176697270;
    }

    else
    {
      v6 = 1953460082;
    }

    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x79636176697270 : 1953460082;
      v9 = *(*(v2 + 48) + v4) ? 0xE700000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1000DC360();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100033928(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100034754(0, &qword_100115D68);
    v3 = sub_1000DC130();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100033210(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100033A50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100034038(0, a2, a3);
    v5 = sub_1000DC130();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100033210(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100033B48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100034754(0, &qword_100115DB8);
    v3 = sub_1000DC130();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100033210(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100033C60(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100033F20(0, a2, a3, a4);
    v6 = sub_1000DC130();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      v11 = v10;
      result = sub_100033210(v8, v9);
      if (v13)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v6[6] + 16 * result);
      *v14 = v8;
      v14[1] = v9;
      *(v6[7] + 8 * result) = v11;
      v15 = v6[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v6[2] = v17;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100033D58()
{
  if (!qword_100115D38)
  {
    sub_100033DC0(255, &qword_100115D40, &protocolRef_FCTodayPrivateData);
    v0 = sub_1000DA170();
    if (!v1)
    {
      atomic_store(v0, &qword_100115D38);
    }
  }
}

uint64_t sub_100033DC0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100033E20(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000ECF4;

  return sub_100032BA4(a1, v1);
}

uint64_t sub_100033ED8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100033F20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100033ED8(255, a3, a4);
    v5 = sub_1000DC140();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100034038(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DC140();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10003409C()
{
  if (!qword_100115D60)
  {
    sub_1000D9C30();
    v0 = sub_1000DBBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100115D60);
    }
  }
}

unint64_t sub_1000340F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003492C();
    v3 = sub_1000DC130();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100033320(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000341D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000347AC();
    v3 = sub_1000DC130();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003484C(v4, &v11);
      v5 = v11;
      result = sub_100033320(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10003491C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100034300()
{
  result = qword_100115D90;
  if (!qword_100115D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115D90);
  }

  return result;
}

unint64_t sub_100034380(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void))
{
  v28 = a5;
  v29 = a2;
  sub_100034564(0, a2, a3);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v13 = &v28 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_100034678(0, a4, a3);
    v15 = sub_1000DC130();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_1000346E8(v17, v13, v29, a3);
      v19 = *v13;
      result = sub_1000333B0(*v13);
      if (v21)
      {
        break;
      }

      v22 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v15[6] + result) = v19;
      v23 = v15[7];
      v24 = v28(0);
      result = (*(*(v24 - 8) + 32))(v23 + *(*(v24 - 8) + 72) * v22, &v13[v16], v24);
      v25 = v15[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_10;
      }

      v15[2] = v27;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100034564(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1000345C8()
{
  if (!qword_100115DA0)
  {
    sub_100034624();
    v0 = sub_1000D8B90();
    if (!v1)
    {
      atomic_store(v0, &qword_100115DA0);
    }
  }
}

unint64_t sub_100034624()
{
  result = qword_100115DA8;
  if (!qword_100115DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115DA8);
  }

  return result;
}

void sub_100034678(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100034300();
    v4 = sub_1000DC140();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000346E8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_100034564(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_100034754(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000DC140();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1000347AC()
{
  if (!qword_100115DD0)
  {
    type metadata accessor for AttributeName(255);
    sub_1000349D8(&qword_100114688, type metadata accessor for AttributeName);
    v0 = sub_1000DC140();
    if (!v1)
    {
      atomic_store(v0, &qword_100115DD0);
    }
  }
}

uint64_t sub_10003484C(uint64_t a1, uint64_t a2)
{
  sub_1000348B0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000348B0()
{
  if (!qword_100115DE0)
  {
    type metadata accessor for AttributeName(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100115DE0);
    }
  }
}

_OWORD *sub_10003491C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_10003492C()
{
  if (!qword_100115DE8)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_1000349D8(&unk_100115DF0, type metadata accessor for TraitKey);
    v0 = sub_1000DC140();
    if (!v1)
    {
      atomic_store(v0, &qword_100115DE8);
    }
  }
}

uint64_t sub_1000349D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100034ADC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000DA370();
  sub_1000152CC(v3, a2);
  sub_100015294(v3, a2);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    sub_1000DB950();
  }

  return sub_1000DA360();
}

uint64_t sub_100034BC4()
{
  sub_100034C20();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1000DC4B0();
  qword_100128E50 = result;
  return result;
}

void sub_100034C20()
{
  if (!qword_100115E00)
  {
    v0 = sub_1000DC4E0();
    if (!v1)
    {
      atomic_store(v0, &qword_100115E00);
    }
  }
}

uint64_t sub_100034C70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100034CB8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100034D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_100036488(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100034E0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    sub_100036488(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata accessor for StockPriceView()
{
  result = qword_100115E60;
  if (!qword_100115E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100034F2C()
{
  sub_100036018(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100036488(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100036018(319, &unk_100115860, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100035BE8(319, &qword_1001141F8, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for SettingProperty);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000350A8()
{
  v1 = sub_1000DAC10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for StockPriceView() + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1000DBDC0();
    v8 = sub_1000DAED0();
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();
    sub_10002F3F0(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_100035200@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v85 = sub_1000DA9F0();
  v83 = *(v85 - 8);
  v3 = *(v83 + 64);
  __chkstk_darwin(v85);
  v80 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v81 = &v69 - v6;
  v86 = sub_1000DAA00();
  v84 = *(v86 - 8);
  v7 = *(v84 + 64);
  __chkstk_darwin(v86);
  v82 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1000DA890();
  v73 = *(v78 - 8);
  v9 = *(v73 + 64);
  __chkstk_darwin(v78);
  v72 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000DB720();
  v70 = *(v11 - 8);
  v12 = *(v70 + 64);
  __chkstk_darwin(v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  sub_100035A24();
  v77 = v18;
  v76 = *(v18 - 8);
  v19 = *(v76 + 64);
  __chkstk_darwin(v18);
  v75 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035F98();
  v74 = v21;
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v79 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v25 = v1[1];
  v27 = v1[2];
  v26 = v1[3];
  v28 = type metadata accessor for StockPriceView();
  v29 = *(v1 + *(v28 + 32));
  v88 = v24;
  v30 = v24;
  v31 = v25;
  v32 = v25;
  v33 = v26;
  sub_10002B054(v30, v32, v27, v26);
  sub_1000D9DA0();
  if (v95 == 1)
  {
    v34 = v2 + *(v28 + 24);
    sub_10004C4D4(v17);
    v35 = v70;
    (*(v70 + 32))(v14, v17, v11);
    v36 = (*(v35 + 88))(v14, v11);
    v37 = 0;
    if (v36 != enum case for WidgetFamily.accessoryCircular(_:) && v36 != enum case for WidgetFamily.accessoryRectangular(_:) && v36 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v35 + 8))(v14, v11);
      v37 = sub_1000350A8();
    }
  }

  else
  {
    v37 = 0;
  }

  *&v89 = v88;
  v71 = v31;
  *(&v89 + 1) = v31;
  *&v90 = v27;
  *(&v90 + 1) = v33;
  LOBYTE(v95) = v37 & 1;
  *(&v95 + 1) = 0;
  *&v96 = 0;
  BYTE8(v96) = 0;
  v97 = xmmword_1000DFDC0;
  *&v98 = 0xA300000000000000;
  *(&v98 + 1) = 9666786;
  *&v99 = 0xA300000000000000;
  *(&v99 + 1) = 9666786;
  *&v100 = 0xA300000000000000;
  sub_100036068();
  sub_100036144();
  sub_10003619C();
  v38 = sub_1000DB150();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  KeyPath = swift_getKeyPath();
  v46 = v42 & 1;
  v102 = v42 & 1;
  v101 = 0;
  v47 = sub_1000DADD0();
  v48 = v2[4];
  v49 = swift_getKeyPath();
  *&v89 = v38;
  *(&v89 + 1) = v40;
  LOBYTE(v90) = v46;
  *(&v90 + 1) = v44;
  *&v91 = 0;
  *(&v91 + 1) = KeyPath;
  v92 = 0uLL;
  *&v93 = 0;
  BYTE8(v93) = 0;
  HIDWORD(v93) = v47;
  *&v94 = v49;
  *(&v94 + 1) = v48;
  v50 = v73;
  v51 = v72;
  v52 = v78;
  (*(v73 + 104))(v72, enum case for DynamicTypeSize.large(_:), v78);
  sub_100035AA8();
  sub_100035CA8();

  v53 = v75;
  sub_1000DB260();
  (*(v50 + 8))(v51, v52);
  v97 = v91;
  v98 = v92;
  v99 = v93;
  v100 = v94;
  v95 = v89;
  v96 = v90;
  sub_100036364(&v95);
  v54 = swift_getKeyPath();
  v55 = v79;
  (*(v76 + 32))(v79, v53, v77);
  v56 = v55 + *(v74 + 36);
  *v56 = v54;
  *(v56 + 8) = 1;
  *(v56 + 16) = 0;
  v57 = v80;
  sub_1000DA9E0();
  v58 = v81;
  sub_1000DA9D0();
  v59 = *(v83 + 8);
  v60 = v57;
  v61 = v85;
  v59(v60, v85);
  v62 = v82;
  sub_1000DA9C0();
  v59(v58, v61);
  v63 = swift_getKeyPath();
  sub_1000363F0();
  v65 = v87;
  v66 = (v87 + *(v64 + 36));
  sub_100036488(0, &qword_100115F20, &type metadata accessor for ContentTransition, &type metadata accessor for _EnvironmentKeyWritingModifier);
  (*(v84 + 32))(v66 + *(v67 + 28), v62, v86);
  *v66 = v63;
  return sub_1000364EC(v55, v65);
}

void sub_100035A24()
{
  if (!qword_100115EA8)
  {
    sub_100035AA8();
    sub_100035CA8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100115EA8);
    }
  }
}

void sub_100035AA8()
{
  if (!qword_100115EB0)
  {
    sub_100035B28();
    sub_100035C3C(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115EB0);
    }
  }
}

void sub_100035B28()
{
  if (!qword_100115EB8)
  {
    sub_100035BE8(255, &qword_100115EC0, &type metadata for Text, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for ModifiedContent);
    sub_100035BE8(255, &qword_100115B90, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle, &type metadata accessor for _ForegroundStyleModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115EB8);
    }
  }
}

void sub_100035BE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_100035C3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_100036018(255, a3, a4, &type metadata accessor for Optional);
    v5 = sub_1000DAEA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100035CA8()
{
  result = qword_100115EC8;
  if (!qword_100115EC8)
  {
    sub_100035AA8();
    sub_100035D8C(&qword_100115ED0, sub_100035B28, sub_100035E18, sub_100035EC4);
    sub_100035F48(&qword_1001159C8, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115EC8);
  }

  return result;
}

uint64_t sub_100035D8C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100035E18()
{
  result = qword_100115ED8;
  if (!qword_100115ED8)
  {
    sub_100035BE8(255, &qword_100115EC0, &type metadata for Text, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for ModifiedContent);
    sub_10002E25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115ED8);
  }

  return result;
}

unint64_t sub_100035EC4()
{
  result = qword_100115EE0;
  if (!qword_100115EE0)
  {
    sub_100035BE8(255, &qword_100115B90, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle, &type metadata accessor for _ForegroundStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115EE0);
  }

  return result;
}

uint64_t sub_100035F48(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100035C3C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100035F98()
{
  if (!qword_100115EE8)
  {
    sub_100035A24();
    sub_100035C3C(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115EE8);
    }
  }
}

void sub_100036018(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100036068()
{
  if (!qword_100115EF0)
  {
    sub_1000360F0();
    v0 = type metadata accessor for NilPlaceholderFormatStyle();
    if (!v1)
    {
      atomic_store(v0, &qword_100115EF0);
    }
  }
}

unint64_t sub_1000360F0()
{
  result = qword_100115EF8;
  if (!qword_100115EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115EF8);
  }

  return result;
}

unint64_t sub_100036144()
{
  result = qword_100115F00;
  if (!qword_100115F00)
  {
    sub_100036068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F00);
  }

  return result;
}

unint64_t sub_10003619C()
{
  result = qword_100115F08;
  if (!qword_100115F08)
  {
    sub_100036018(255, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
    sub_100036238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F08);
  }

  return result;
}

unint64_t sub_100036238()
{
  result = qword_100115F10;
  if (!qword_100115F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F10);
  }

  return result;
}

uint64_t sub_100036294(uint64_t a1)
{
  v2 = sub_1000DAA00();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1000DAAF0();
}

uint64_t sub_100036364(uint64_t a1)
{
  sub_100035AA8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000363F0()
{
  if (!qword_100115F18)
  {
    sub_100035F98();
    sub_100036488(255, &qword_100115F20, &type metadata accessor for ContentTransition, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115F18);
    }
  }
}

void sub_100036488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000364EC(uint64_t a1, uint64_t a2)
{
  sub_100035F98();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000365AC()
{
  result = qword_100115F30;
  if (!qword_100115F30)
  {
    sub_100035F98();
    sub_100035AA8();
    sub_100035CA8();
    swift_getOpaqueTypeConformance2();
    sub_100035F48(&qword_100115200, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F30);
  }

  return result;
}

unint64_t sub_10003667C()
{
  result = qword_100115F38;
  if (!qword_100115F38)
  {
    sub_100036488(255, &qword_100115F20, &type metadata accessor for ContentTransition, &type metadata accessor for _EnvironmentKeyWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F38);
  }

  return result;
}

uint64_t sub_10003676C(uint64_t a1, uint64_t a2)
{
  sub_100038310(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003681C(uint64_t a1, uint64_t a2)
{
  sub_100038310(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000368DC()
{
  sub_100038310(319, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

double sub_1000369DC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v69 = type metadata accessor for PreparedSparkline(0);
  v70 = *(v69 - 8);
  v3 = *(v70 + 64);
  __chkstk_darwin(v69);
  v77 = (&v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_1000DB310();
  v5 = *(v67 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v67);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038310(0, &qword_1001160F0, &type metadata accessor for Font.Design, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v67 - v11;
  sub_100038310(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v67 - v18;
  v20 = type metadata accessor for SparklineView(0);
  v21 = *(*(v20 - 1) + 64);
  __chkstk_darwin(v20);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v68 = &v67 - v25;
  sub_10003822C();
  v76 = v26;
  v74 = *(v26 - 8);
  v27 = *(v74 + 64);
  __chkstk_darwin(v26);
  v72 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038594();
  v75 = v29;
  v73 = *(v29 - 8);
  v30 = *(v73 + 64);
  __chkstk_darwin(v29);
  v71 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024964(v2, v19);
  sub_1000DA6D0();
  sub_1000DA6D0();
  v32 = v20[11];
  *&v23[v32] = swift_getKeyPath();
  sub_100038310(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v33 = v20[12];
  sub_1000DAFD0();
  v34 = sub_1000DAFA0();
  (*(*(v34 - 8) + 56))(v12, 1, 1, v34);
  v35 = sub_1000DB000();
  sub_100038374(v12, &qword_1001160F0, &type metadata accessor for Font.Design);
  *&v23[v33] = v35;
  v36 = v20[13];
  v37 = enum case for Color.RGBColorSpace.sRGB(_:);
  v38 = *(v5 + 104);
  v39 = v67;
  v38(v8, enum case for Color.RGBColorSpace.sRGB(_:), v67);
  *&v23[v36] = sub_1000DB380();
  v40 = &v23[v20[14]];
  sub_1000DA6D0();
  v41 = v86;
  *v40 = v85;
  *(v40 + 1) = v41;
  *(v40 + 4) = v87;
  v42 = v20[15];
  v38(v8, v37, v39);
  v43 = v69;
  *&v23[v42] = sub_1000DB380();
  v44 = v70;
  sub_100024964(v19, v16);
  v45 = *(v44 + 48);
  if (v45(v16, 1, v43) == 1)
  {
    v46 = v77;
    sub_10006F6C4(v77);
    sub_100038374(v19, &qword_100114B60, type metadata accessor for PreparedSparkline);
    v47 = v45(v16, 1, v43) == 1;
    v48 = v46;
    if (!v47)
    {
      sub_100038374(v16, &qword_100114B60, type metadata accessor for PreparedSparkline);
      v48 = v46;
    }
  }

  else
  {
    sub_100038374(v19, &qword_100114B60, type metadata accessor for PreparedSparkline);
    v49 = v16;
    v50 = v77;
    sub_1000383E4(v49, v77, type metadata accessor for PreparedSparkline);
    v48 = v50;
  }

  sub_1000383E4(v48, v23, type metadata accessor for PreparedSparkline);
  v51 = &v23[v20[5]];
  v52 = v80;
  *v51 = v79;
  *(v51 + 1) = v52;
  *(v51 + 4) = v81;
  v53 = &v23[v20[6]];
  v54 = v83;
  *v53 = v82;
  *(v53 + 1) = v54;
  *(v53 + 4) = v84;
  *&v23[v20[7]] = 0x3FF0000000000000;
  v23[v20[8]] = 0;
  v55 = &v23[v20[9]];
  *v55 = 0;
  v55[8] = 3;
  v23[v20[10]] = 1;
  v56 = v68;
  sub_1000383E4(v23, v68, type metadata accessor for SparklineView);
  v57 = sub_1000382B0();
  v58 = v72;
  sub_1000DB190();
  sub_10003844C(v56);
  *&v88 = v20;
  *(&v88 + 1) = v57;
  swift_getOpaqueTypeConformance2();
  v59 = v71;
  v60 = v76;
  sub_1000DB1B0();
  (*(v74 + 8))(v58, v60);
  sub_1000DB600();
  sub_1000DA7A0();
  v61 = v78;
  (*(v73 + 32))(v78, v59, v75);
  sub_100038650();
  v63 = (v61 + *(v62 + 36));
  result = *&v88;
  v65 = v89;
  v66 = v90;
  *v63 = v88;
  v63[1] = v65;
  v63[2] = v66;
  return result;
}

uint64_t sub_1000372B4@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v68 = a2;
  v69 = a3;
  v67 = a1;
  v70 = a4;
  v61 = type metadata accessor for PreparedSparkline(0);
  v62 = *(v61 - 8);
  v5 = *(v62 + 64);
  __chkstk_darwin(v61);
  v66 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_1000DB310();
  v7 = *(v59 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v59);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038310(0, &qword_1001160F0, &type metadata accessor for Font.Design, &type metadata accessor for Optional);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v58 - v13;
  sub_100038310(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = type metadata accessor for SparklineView(0);
  v23 = *(*(v22 - 1) + 64);
  __chkstk_darwin(v22);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v60 = &v58 - v27;
  sub_10003822C();
  v65 = v28;
  v64 = *(v28 - 8);
  v29 = *(v64 + 64);
  __chkstk_darwin(v28);
  v63 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024964(v4, v21);
  sub_1000DA6D0();
  sub_1000DA6D0();
  v31 = v22[11];
  *&v25[v31] = swift_getKeyPath();
  sub_100038310(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v32 = v22[12];
  sub_1000DAFD0();
  v33 = sub_1000DAFA0();
  (*(*(v33 - 8) + 56))(v14, 1, 1, v33);
  v34 = sub_1000DB000();
  sub_100038374(v14, &qword_1001160F0, &type metadata accessor for Font.Design);
  *&v25[v32] = v34;
  v35 = v22[13];
  v36 = enum case for Color.RGBColorSpace.sRGB(_:);
  v37 = *(v7 + 104);
  v38 = v59;
  v37(v10, enum case for Color.RGBColorSpace.sRGB(_:), v59);
  *&v25[v35] = sub_1000DB380();
  v39 = &v25[v22[14]];
  sub_1000DA6D0();
  v40 = v80;
  *v39 = v79;
  *(v39 + 1) = v40;
  *(v39 + 4) = v81;
  v41 = v22[15];
  v37(v10, v36, v38);
  v42 = v61;
  *&v25[v41] = sub_1000DB380();
  v43 = v62;
  sub_100024964(v21, v18);
  v44 = *(v43 + 48);
  if (v44(v18, 1, v42) == 1)
  {
    v45 = v66;
    sub_10006F6C4(v66);
    sub_100038374(v21, &qword_100114B60, type metadata accessor for PreparedSparkline);
    v46 = v44(v18, 1, v42);
    v47 = v45;
    if (v46 != 1)
    {
      sub_100038374(v18, &qword_100114B60, type metadata accessor for PreparedSparkline);
    }
  }

  else
  {
    sub_100038374(v21, &qword_100114B60, type metadata accessor for PreparedSparkline);
    v47 = v66;
    sub_1000383E4(v18, v66, type metadata accessor for PreparedSparkline);
  }

  sub_1000383E4(v47, v25, type metadata accessor for PreparedSparkline);
  v48 = &v25[v22[5]];
  v49 = v74;
  *v48 = v73;
  *(v48 + 1) = v49;
  *(v48 + 4) = v75;
  v50 = &v25[v22[6]];
  v51 = v77;
  *v50 = v76;
  *(v50 + 1) = v51;
  *(v50 + 4) = v78;
  *&v25[v22[7]] = 0x3FD999999999999ALL;
  v25[v22[8]] = v67;
  v52 = &v25[v22[9]];
  *v52 = 0;
  v52[8] = 3;
  v25[v22[10]] = v68;
  v53 = v60;
  sub_1000383E4(v25, v60, type metadata accessor for SparklineView);
  v54 = sub_1000382B0();
  v55 = v63;
  sub_1000DB190();
  sub_10003844C(v53);
  v71 = v22;
  v72 = v54;
  swift_getOpaqueTypeConformance2();
  v56 = v65;
  sub_1000DB1B0();
  return (*(v64 + 8))(v55, v56);
}

uint64_t sub_100037A78@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v59 = type metadata accessor for PreparedSparkline(0);
  v58 = *(v59 - 8);
  v2 = *(v58 + 64);
  __chkstk_darwin(v59);
  v63 = (&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_1000DB310();
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v56);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038310(0, &qword_1001160F0, &type metadata accessor for Font.Design, &type metadata accessor for Optional);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v55 - v10;
  sub_100038310(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  v19 = type metadata accessor for SparklineView(0);
  v20 = *(*(v19 - 1) + 64);
  __chkstk_darwin(v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v57 = &v55 - v24;
  sub_10003822C();
  v61 = *(v25 - 8);
  v62 = v25;
  v26 = *(v61 + 64);
  __chkstk_darwin(v25);
  v60 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024964(v1, v18);
  sub_1000DA6D0();
  sub_1000DA6D0();
  v28 = v19[11];
  *&v22[v28] = swift_getKeyPath();
  sub_100038310(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v29 = v19[12];
  sub_1000DAFD0();
  v30 = sub_1000DAFA0();
  (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
  v31 = sub_1000DB000();
  sub_100038374(v11, &qword_1001160F0, &type metadata accessor for Font.Design);
  *&v22[v29] = v31;
  v32 = v19[13];
  v33 = enum case for Color.RGBColorSpace.sRGB(_:);
  v34 = *(v4 + 104);
  v35 = v56;
  v34(v7, enum case for Color.RGBColorSpace.sRGB(_:), v56);
  *&v22[v32] = sub_1000DB380();
  v36 = &v22[v19[14]];
  sub_1000DA6D0();
  v37 = v74;
  *v36 = v73;
  *(v36 + 1) = v37;
  *(v36 + 4) = v75;
  v38 = v19[15];
  v34(v7, v33, v35);
  v39 = v58;
  v40 = v59;
  *&v22[v38] = sub_1000DB380();
  sub_100024964(v18, v15);
  v41 = *(v39 + 48);
  if (v41(v15, 1, v40) == 1)
  {
    v42 = v63;
    sub_10006F6C4(v63);
    sub_100038374(v18, &qword_100114B60, type metadata accessor for PreparedSparkline);
    v43 = v41(v15, 1, v40);
    v44 = v42;
    if (v43 != 1)
    {
      sub_100038374(v15, &qword_100114B60, type metadata accessor for PreparedSparkline);
    }
  }

  else
  {
    sub_100038374(v18, &qword_100114B60, type metadata accessor for PreparedSparkline);
    v44 = v63;
    sub_1000383E4(v15, v63, type metadata accessor for PreparedSparkline);
  }

  sub_1000383E4(v44, v22, type metadata accessor for PreparedSparkline);
  v45 = &v22[v19[5]];
  v46 = v68;
  *v45 = v67;
  *(v45 + 1) = v46;
  *(v45 + 4) = v69;
  v47 = &v22[v19[6]];
  v48 = v71;
  *v47 = v70;
  *(v47 + 1) = v48;
  *(v47 + 4) = v72;
  *&v22[v19[7]] = 0x3FD999999999999ALL;
  v22[v19[8]] = 1;
  v49 = &v22[v19[9]];
  *v49 = 0;
  v49[8] = 3;
  v22[v19[10]] = 0;
  v50 = v57;
  sub_1000383E4(v22, v57, type metadata accessor for SparklineView);
  v51 = sub_1000382B0();
  v52 = v60;
  sub_1000DB190();
  sub_10003844C(v50);
  v65 = v19;
  v66 = v51;
  swift_getOpaqueTypeConformance2();
  v53 = v62;
  sub_1000DB1B0();
  return (*(v61 + 8))(v52, v53);
}