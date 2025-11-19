uint64_t sub_1000015C0()
{
  v0 = sub_100006954();
  sub_100006314(v0, qword_10000C930);
  sub_100004FA4(v0, qword_10000C930);
  return sub_100006944();
}

Swift::Int sub_100001648()
{
  sub_100006B64();
  sub_100006B74(0);
  return sub_100006B84();
}

Swift::Int sub_1000016B4()
{
  sub_100006B64();
  sub_100006B74(0);
  return sub_100006B84();
}

uint64_t sub_100001710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7552646C756F6873 && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100006B04();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000017B8(uint64_t a1)
{
  v2 = sub_100004F50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000017F4(uint64_t a1)
{
  v2 = sub_100004F50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001830@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_100004924(&qword_10000C0D8, &qword_1000071B0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_100004F0C(a1, a1[3]);
  sub_100004F50();
  sub_100006BC4();
  if (v2)
  {
    return sub_100005874(a1);
  }

  v11 = sub_100006AD4();
  (*(v6 + 8))(v9, v5);
  result = sub_100005874(a1);
  *a2 = v11 & 1;
  return result;
}

uint64_t sub_100001994(void *a1)
{
  v3 = sub_100004924(&qword_10000C0E0, &qword_1000071B8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_100004F0C(a1, a1[3]);
  sub_100004F50();
  sub_100006BD4();
  sub_100006AE4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100001ACC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7075727265746E69;
  }

  else
  {
    v4 = 0x656C6C65636E6163;
  }

  if (v3)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xEB00000000646574;
  }

  if (*a2)
  {
    v6 = 0x7075727265746E69;
  }

  else
  {
    v6 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v7 = 0xEB00000000646574;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100006B04();
  }

  return v9 & 1;
}

Swift::Int sub_100001B80()
{
  v1 = *v0;
  sub_100006B64();
  sub_100006994();

  return sub_100006B84();
}

uint64_t sub_100001C10()
{
  *v0;
  sub_100006994();
}

Swift::Int sub_100001C8C()
{
  v1 = *v0;
  sub_100006B64();
  sub_100006994();

  return sub_100006B84();
}

uint64_t sub_100001D18@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008720;
  v8._object = v3;
  v5 = sub_100006AC4(v4, v8);

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

void sub_100001D78(uint64_t *a1@<X8>)
{
  v2 = 0x656C6C65636E6163;
  if (*v1)
  {
    v2 = 0x7075727265746E69;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEB00000000646574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100001DD4(uint64_t a1)
{
  v2[2] = v1;
  v4 = *(*(sub_100004924(&qword_10000C0F0, &qword_1000071D0) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v2[3] = v5;
  v6 = sub_100004924(&qword_10000C010, &unk_100007010);
  v2[4] = v6;
  v7 = *(v6 - 8);
  v2[5] = v7;
  v8 = *(v7 + 64) + 15;
  v2[6] = swift_task_alloc();
  v9 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v10 = swift_task_alloc();
  v2[7] = v10;
  v11 = type metadata accessor for QuartzWorker();
  v12 = sub_1000055A4(&qword_10000C0B0, type metadata accessor for QuartzWorker);
  v13 = sub_100004AD0();
  v14 = sub_100004B24();
  *v10 = v2;
  v10[1] = sub_100001F9C;

  return MLHostExtension.loadConfig<A>(context:)(v5, a1, v11, &type metadata for QuartzWorkerConfig, v12, v13, v14);
}

uint64_t sub_100001F9C()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_100002098, 0, 0);
}

uint64_t sub_100002098()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    (*(v2 + 16))(*(v0 + 48), *(v0 + 16), v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100005778(*(v0 + 24), &qword_10000C0F0, &qword_1000071D0);
    }
  }

  else
  {
    (*(v2 + 32))(*(v0 + 48), v3, v1);
  }

  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  sub_1000068F4();
  if ((*(v0 + 64) & 1) == 0)
  {
    if (qword_10000C160 != -1)
    {
      swift_once();
    }

    v7 = sub_100006954();
    sub_100004FA4(v7, qword_10000C930);
    v8 = sub_100006934();
    v9 = sub_100006A14();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Config doesn't have shouldRun set, exiting early", v10, 2u);
    }
  }

  v12 = *(v0 + 40);
  v11 = *(v0 + 48);
  v14 = *(v0 + 24);
  v13 = *(v0 + 32);
  v15 = objc_allocWithZone(sub_1000068B4());
  v16 = sub_1000068A4();
  (*(v12 + 8))(v11, v13);

  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_1000022DC(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_100006854();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v6 = sub_1000067E4();
  v2[18] = v6;
  v7 = *(v6 - 8);
  v2[19] = v7;
  v2[20] = *(v7 + 64);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v8 = sub_100006804();
  v2[23] = v8;
  v9 = *(v8 - 8);
  v2[24] = v9;
  v10 = *(v9 + 64) + 15;
  v2[25] = swift_task_alloc();
  v11 = sub_100004924(&qword_10000C0E8, &qword_1000071C8);
  v2[26] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v13 = sub_100006834();
  v2[28] = v13;
  v14 = *(v13 - 8);
  v2[29] = v14;
  v15 = *(v14 + 64) + 15;
  v2[30] = swift_task_alloc();
  v16 = sub_1000067D4();
  v2[31] = v16;
  v17 = *(v16 - 8);
  v2[32] = v17;
  v18 = *(v17 + 64) + 15;
  v2[33] = swift_task_alloc();
  v19 = sub_1000067A4();
  v2[34] = v19;
  v20 = *(v19 - 8);
  v2[35] = v20;
  v21 = *(v20 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v22 = *(*(sub_100004924(&qword_10000C0F0, &qword_1000071D0) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v23 = sub_100004924(&qword_10000C010, &unk_100007010);
  v2[40] = v23;
  v24 = *(v23 - 8);
  v2[41] = v24;
  v25 = *(v24 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return _swift_task_switch(sub_10000267C, 0, 0);
}

uint64_t sub_10000267C()
{
  if (qword_10000C160 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_100006954();
  v0[44] = sub_100004FA4(v2, qword_10000C930);
  v3 = v1;
  v4 = sub_100006934();
  v5 = sub_100006A14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100005778(v8, &qword_10000C0F8, &qword_1000071D8);
  }

  v10 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v11 = swift_task_alloc();
  v0[45] = v11;
  v12 = type metadata accessor for QuartzWorker();
  v13 = sub_1000055A4(&qword_10000C0B0, type metadata accessor for QuartzWorker);
  v14 = sub_100004AD0();
  v15 = sub_100004B24();
  *v11 = v0;
  v11[1] = sub_1000028A8;
  v16 = v0[39];
  v17 = v0[13];
  v18 = v0[14];

  return MLHostExtension.loadConfig<A>(context:)(v16, v17, v12, &type metadata for QuartzWorkerConfig, v13, v14, v15);
}

uint64_t sub_1000028A8()
{
  v1 = *(*v0 + 360);
  v3 = *v0;

  return _swift_task_switch(sub_1000029A4, 0, 0);
}

uint64_t sub_1000029A4()
{
  v77 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = *(v0 + 344);
  if (v5 == 1)
  {
    v7 = *(v2 + 16);
    v7(v6, *(v0 + 112), v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100005778(*(v0 + 312), &qword_10000C0F0, &qword_1000071D0);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
    v7 = *(v2 + 16);
  }

  v8 = *(v0 + 352);
  v7(*(v0 + 336), *(v0 + 344), *(v0 + 320));
  v9 = sub_100006934();
  v10 = sub_100006A14();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 328);
  v12 = *(v0 + 336);
  v14 = *(v0 + 320);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v76[0] = v73;
    *v15 = 136315138;
    sub_10000582C(&qword_10000C110, &qword_10000C010, &unk_100007010);
    v16 = sub_100006AF4();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_100004FDC(v16, v18, v76);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Configuration: %s", v15, 0xCu);
    sub_100005874(v73);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
  }

  *(v0 + 368) = v19;
  v21 = sub_1000069C4();
  v22 = *(v0 + 352);
  if (v21)
  {
    v23 = *(v0 + 104);
    v24 = sub_100006934();
    v25 = sub_100006A14();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 104);
      v27 = swift_slowAlloc();
      v76[0] = swift_slowAlloc();
      *v27 = 136315394;
      v28 = sub_100006914();
      v30 = sub_100004FDC(v28, v29, v76);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      v31 = sub_100006924();
      v33 = sub_100004FDC(v31, v32, v76);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "TaskId: %s, TaskName: %s: asked to stop!", v27, 0x16u);
      swift_arrayDestroy();
    }

    v34 = *(v0 + 344);
    v35 = *(v0 + 320);
    v36 = *(v0 + 328);
    v76[3] = &type metadata for QuartzWorkerError;
    v76[4] = sub_1000057D8();
    LOBYTE(v76[0]) = 0;
    v37 = objc_allocWithZone(sub_1000068B4());
    v74 = sub_100006894();
    v19(v34, v35);
    v39 = *(v0 + 336);
    v38 = *(v0 + 344);
    v41 = *(v0 + 304);
    v40 = *(v0 + 312);
    v43 = *(v0 + 288);
    v42 = *(v0 + 296);
    v44 = *(v0 + 264);
    v45 = *(v0 + 240);
    v46 = *(v0 + 216);
    v47 = *(v0 + 200);
    v70 = *(v0 + 176);
    v71 = *(v0 + 168);
    v72 = *(v0 + 136);

    v48 = *(v0 + 8);

    return v48(v74);
  }

  else
  {
    v50 = sub_100006934();
    v51 = sub_100006A14();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Setting up for analysis", v52, 2u);
    }

    v75 = *(v0 + 352);
    v54 = *(v0 + 296);
    v53 = *(v0 + 304);
    v56 = *(v0 + 280);
    v55 = *(v0 + 288);
    v58 = *(v0 + 264);
    v57 = *(v0 + 272);
    v60 = *(v0 + 248);
    v59 = *(v0 + 256);

    sub_1000067C4();
    sub_100006784();
    sub_1000067B4();
    v61 = *(v56 + 8);
    *(v0 + 376) = v61;
    *(v0 + 384) = (v56 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v61(v54, v57);
    (*(v59 + 8))(v58, v60);
    sub_100006794();
    v62 = sub_100006934();
    v63 = sub_100006A14();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Starting analysis command", v64, 2u);
    }

    v65 = async function pointer to runAnalysisCommand(startDate:endDate:)[1];
    v66 = swift_task_alloc();
    *(v0 + 392) = v66;
    *v66 = v0;
    v66[1] = sub_100003024;
    v67 = *(v0 + 304);
    v68 = *(v0 + 288);
    v69 = *(v0 + 240);

    return runAnalysisCommand(startDate:endDate:)(v69, v68, v67);
  }
}

uint64_t sub_100003024()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_1000036F4;
  }

  else
  {
    v3 = sub_100003138;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100003138()
{
  v1 = v0[30];
  v2 = sub_100006824();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[16];
    sub_100005584(0, v3, 0);
    v6 = *(v4 + 16);
    v5 = v4 + 16;
    v7 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v66 = *(v5 + 56);
    v69 = v6;
    do
    {
      v8 = v0[17];
      v9 = v0[15];
      v69(v8, v7, v9);
      v10 = sub_100006844();
      v12 = v11;
      (*(v5 - 8))(v8, v9);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_100005584((v13 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v12;
      v7 += v66;
      --v3;
    }

    while (v3);
  }

  v16 = v0[30];
  v17 = v0[26];
  v18 = v0[27];
  v19 = v0[24];
  v20 = v0[25];
  v21 = v0[23];
  sub_100006814();
  (*(v19 + 16))(v18, v20, v21);
  v22 = *(v17 + 36);
  v23 = sub_1000055A4(&qword_10000C100, &type metadata accessor for DataFrame.Rows);
  sub_1000069D4();
  (*(v19 + 8))(v20, v21);
  v24 = v23;
  sub_1000069E4();
  if (*(v18 + v22) != v0[12])
  {
    v67 = v22;
    v70 = v18;
    v25 = v0[19];
    do
    {
      v27 = v0[22];
      v26 = v0[23];
      v61 = v0[21];
      v62 = v0[20];
      v28 = v0[18];
      v64 = v0[27];
      v29 = sub_100006A04();
      (*(v25 + 16))(v27);
      v29(v0 + 8, 0);
      sub_1000069F4();
      v63 = sub_100006984();
      v30 = v24;
      v31 = *(v25 + 32);
      v31(v61, v27, v28);
      v32 = (*(v25 + 80) + 24) & ~*(v25 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = _swiftEmptyArrayStorage;
      v31(v33 + v32, v61, v28);
      v24 = v30;
      v0[6] = sub_1000056B0;
      v0[7] = v33;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100003F30;
      v0[5] = &unk_100008840;
      v34 = _Block_copy(v0 + 2);
      v35 = v0[7];

      AnalyticsSendEventLazy();
      _Block_release(v34);

      sub_1000069E4();
    }

    while (*(v70 + v67) != v0[12]);
  }

  v37 = v0[29];
  v36 = v0[30];
  v39 = v0[27];
  v38 = v0[28];

  sub_100005778(v39, &qword_10000C0E8, &qword_1000071C8);
  (*(v37 + 8))(v36, v38);
  v41 = v0[47];
  v40 = v0[48];
  v71 = v0[46];
  v42 = v0[43];
  v43 = v0[40];
  v44 = v0[41];
  v45 = v0[38];
  v46 = v0[36];
  v47 = v0[34];
  v48 = objc_allocWithZone(sub_1000068B4());
  v73 = sub_1000068A4();
  v41(v46, v47);
  v41(v45, v47);
  v71(v42, v43);
  v50 = v0[42];
  v49 = v0[43];
  v52 = v0[38];
  v51 = v0[39];
  v54 = v0[36];
  v53 = v0[37];
  v55 = v0[33];
  v56 = v0[30];
  v57 = v0[27];
  v58 = v0[25];
  v65 = v0[22];
  v68 = v0[21];
  v72 = v0[17];

  v59 = v0[1];

  return v59(v73);
}

uint64_t sub_1000036F4()
{
  v1 = v0[50];
  v2 = v0[44];
  swift_errorRetain();
  v3 = sub_100006934();
  v4 = sub_100006A24();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[50];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Got an error from runAnalysisCommand: %@", v7, 0xCu);
    sub_100005778(v8, &qword_10000C0F8, &qword_1000071D8);
  }

  else
  {
  }

  v11 = v0[47];
  v10 = v0[48];
  v33 = v0[46];
  v12 = v0[43];
  v13 = v0[40];
  v14 = v0[41];
  v15 = v0[38];
  v16 = v0[36];
  v17 = v0[34];
  v18 = objc_allocWithZone(sub_1000068B4());
  v35 = sub_1000068A4();
  v11(v16, v17);
  v11(v15, v17);
  v33(v12, v13);
  v20 = v0[42];
  v19 = v0[43];
  v22 = v0[38];
  v21 = v0[39];
  v24 = v0[36];
  v23 = v0[37];
  v25 = v0[33];
  v26 = v0[30];
  v27 = v0[27];
  v28 = v0[25];
  v31 = v0[22];
  v32 = v0[21];
  v34 = v0[17];

  v29 = v0[1];

  return v29(v35);
}

uint64_t sub_10000396C(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1000067A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v9 = a2[1];
  v11 = v10 == 1702125924 && v9 == 0xE400000000000000;
  if (v11 || (sub_100006B04() & 1) != 0)
  {
    result = sub_1000067F4();
    if (v19)
    {
      sub_100005B84(&v18, v20);
      swift_dynamicCast();
      v13 = sub_100006874();
      (*(v5 + 8))(v8, v4);
      return sub_100003BB0([objc_allocWithZone(NSNumber) initWithInteger:v13], 1702125924, 0xE400000000000000);
    }

    __break(1u);
    goto LABEL_12;
  }

  result = sub_1000067F4();
  if (!v19)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_100005B84(&v18, v20);
  sub_100005B94(0, &qword_10000C130, NSNumber_ptr);
  swift_dynamicCast();
  v14 = v17[1];
  v15 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17[0] = *a1;
  sub_100006030(v14, v10, v9, isUniquelyReferenced_nonNull_native);

  *a1 = v17[0];
  return result;
}

uint64_t sub_100003BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100006030(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100005A54(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1000061A8();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_100005E80(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_100003CA8(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      a2(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

void sub_100003D50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004924(&qword_10000C128, &qword_1000071E8);
    v2 = sub_100006AA4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_100005A54(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

Class sub_100003F30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100005B94(0, &qword_10000C120, NSObject_ptr);
    v5.super.isa = sub_100006964().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_100003FCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100006780;

  return sub_100001DD4(a1);
}

uint64_t sub_100004060(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000040F4;

  return sub_1000022DC(a1);
}

uint64_t sub_1000040F4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000041F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1000042D4;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000042D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000043C8(uint64_t a1)
{
  v2 = sub_1000055A4(&qword_10000C0B0, type metadata accessor for QuartzWorker);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100004444()
{
  sub_100004AD0();
  sub_100004B24();
  return sub_1000068E4();
}

uint64_t sub_100004498(char a1)
{
  v2 = sub_100006BB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v24 + 1) = &type metadata for QuartzWorkerConfig;
  LOBYTE(v23) = a1;
  sub_100006B94();
  v7 = sub_100006BA4();
  (*(v3 + 8))(v6, v2);
  v19[1] = v7;
  sub_100006A64();
  sub_100006AB4();
  if (*(&v25 + 1))
  {
    v8 = _swiftEmptyArrayStorage;
    do
    {
      v22[0] = v23;
      v22[1] = v24;
      v22[2] = v25;
      v9._object = *(&v23 + 1);
      if (*(&v23 + 1))
      {
        v9._countAndFlagsBits = *&v22[0];
        v20 = 0;
        v21 = 0xE000000000000000;
        sub_1000069A4(v9);
        v26._countAndFlagsBits = 8250;
        v26._object = 0xE200000000000000;
        sub_1000069A4(v26);
        sub_100006A74();
        v10 = v20;
        v11 = v21;
        sub_100005778(v22, &qword_10000C0C8, &qword_1000071A0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100004DFC(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_100004DFC((v12 > 1), v13 + 1, 1, v8);
        }

        *(v8 + 2) = v13 + 1;
        v14 = &v8[16 * v13];
        *(v14 + 4) = v10;
        *(v14 + 5) = v11;
      }

      else
      {
        sub_100005778(v22, &qword_10000C0C8, &qword_1000071A0);
      }

      sub_100006AB4();
    }

    while (*(&v25 + 1));
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  *&v23 = 0xD000000000000013;
  *(&v23 + 1) = 0x8000000100007450;
  *&v22[0] = v8;
  sub_100004924(&qword_10000C0B8, &qword_100007198);
  sub_10000582C(&qword_10000C0C0, &qword_10000C0B8, &qword_100007198);
  v15 = sub_100006974();
  v17 = v16;

  v27._countAndFlagsBits = v15;
  v27._object = v17;
  sub_1000069A4(v27);

  v28._countAndFlagsBits = 41;
  v28._object = 0xE100000000000000;
  sub_1000069A4(v28);
  return v23;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for QuartzWorker();
  sub_1000055A4(&qword_10000C008, type metadata accessor for QuartzWorker);
  sub_100006884();
  return 0;
}

uint64_t type metadata accessor for QuartzWorker()
{
  result = qword_10000C168;
  if (!qword_10000C168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000048AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004924(&qword_10000C010, &unk_100007010);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100004924(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004980(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004924(&qword_10000C010, &unk_100007010);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000049FC()
{
  sub_100004A68();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100004A68()
{
  if (!qword_10000C070)
  {
    sub_100004AD0();
    sub_100004B24();
    v0 = sub_100006904();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C070);
    }
  }
}

unint64_t sub_100004AD0()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100004B24()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuartzWorkerConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QuartzWorkerConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100004DB4(uint64_t *a1, uint64_t *a2)
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

char *sub_100004DFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004924(&qword_10000C0D0, &qword_1000071A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100004F0C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004F50()
{
  result = qword_10000C400[0];
  if (!qword_10000C400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C400);
  }

  return result;
}

uint64_t sub_100004FA4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004FDC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000050A8(v11, 0, 0, 1, a1, a2);
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
    sub_1000058C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005874(v11);
  return v7;
}

unint64_t sub_1000050A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000051B4(a5, a6);
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
    result = sub_100006A54();
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

void *sub_1000051B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005200(a1, a2);
  sub_100005330(&off_100008770);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_100005200(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000541C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100006A54();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000069B4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000541C(v10, 0);
        result = sub_100006A44();
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

uint64_t sub_100005330(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100005490(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000541C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100004924(&qword_10000C118, &qword_1000071E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005490(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004924(&qword_10000C118, &qword_1000071E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100005584(char *a1, int64_t a2, char a3)
{
  result = sub_100005948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000055A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000055EC()
{
  v1 = sub_1000067E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000056B0()
{
  v1 = *(sub_1000067E4() - 8);
  v2 = *(v0 + 16);
  v7[2] = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = sub_100003CA8(&_swiftEmptyDictionarySingleton, sub_10000591C, v7, v2);
  sub_100003D50(v3);
  v5 = v4;

  return v5;
}

uint64_t sub_100005760(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005778(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004924(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000057D8()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

uint64_t sub_10000582C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004DB4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005874(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000058C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_100005948(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004924(&qword_10000C0D0, &qword_1000071A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100005A54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100006B64();
  sub_100006994();
  v6 = sub_100006B84();

  return sub_100005ACC(a1, a2, v6);
}

unint64_t sub_100005ACC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100006B04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_100005B84(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005B94(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100005BDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004924(&qword_10000C138, &qword_1000071F0);
  v39 = a2;
  result = sub_100006A94();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_100006B64();
      sub_100006994();
      result = sub_100006B84();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100005E80(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100006A34() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_100006B64();

      sub_100006994();
      v13 = sub_100006B84();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100006030(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005A54(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100005BDC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100005A54(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_100006B14();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_1000061A8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_1000061A8()
{
  v1 = v0;
  sub_100004924(&qword_10000C138, &qword_1000071F0);
  v2 = *v0;
  v3 = sub_100006A84();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t *sub_100006314(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for QuartzWorkerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for QuartzWorkerConfig.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for QuartzWorkerConfig.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_10000651C()
{
  result = qword_10000C510[0];
  if (!qword_10000C510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C510);
  }

  return result;
}

unint64_t sub_100006574()
{
  result = qword_10000C140;
  if (!qword_10000C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C140);
  }

  return result;
}

unint64_t sub_1000065CC()
{
  result = qword_10000C148;
  if (!qword_10000C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C148);
  }

  return result;
}

unint64_t sub_100006624()
{
  result = qword_10000C150;
  if (!qword_10000C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C150);
  }

  return result;
}

unint64_t sub_10000667C()
{
  result = qword_10000C158;
  if (!qword_10000C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C158);
  }

  return result;
}

unint64_t sub_1000066D4()
{
  result = qword_10000C8A0;
  if (!qword_10000C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C8A0);
  }

  return result;
}

unint64_t sub_10000672C()
{
  result = qword_10000C8A8[0];
  if (!qword_10000C8A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C8A8);
  }

  return result;
}