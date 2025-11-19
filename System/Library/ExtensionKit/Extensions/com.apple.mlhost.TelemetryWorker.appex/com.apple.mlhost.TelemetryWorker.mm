uint64_t sub_1000012F0()
{
  v0 = sub_100008CF4();
  sub_100008248(v0, qword_100010720);
  sub_100007D54(v0, qword_100010720);
  return sub_100008CE4();
}

uint64_t sub_100001374(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D4572656764656CLL;
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
    v5 = 0xEB00000000797470;
  }

  if (*a2)
  {
    v6 = 0x6D4572656764656CLL;
  }

  else
  {
    v6 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v7 = 0xEB00000000797470;
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
    v9 = sub_100008DF4();
  }

  return v9 & 1;
}

uint64_t sub_100001428(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684107116;
    }

    else
    {
      v4 = 0x7472617473;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x737365636F7270;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x64616F6C7075;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x64656873696E6966;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684107116;
    }

    else
    {
      v9 = 0x7472617473;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x64616F6C7075;
    if (a2 != 3)
    {
      v6 = 0x64656873696E6966;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x737365636F7270;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_100008DF4();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

Swift::Int sub_100001598()
{
  v1 = *v0;
  sub_100008E44();
  sub_100008D34();

  return sub_100008E54();
}

uint64_t sub_100001628()
{
  *v0;
  sub_100008D34();
}

Swift::Int sub_1000016A4()
{
  v1 = *v0;
  sub_100008E44();
  sub_100008D34();

  return sub_100008E54();
}

uint64_t sub_100001730@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10000C798;
  v8._object = v3;
  v5 = sub_100008DE4(v4, v8);

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

void sub_100001790(uint64_t *a1@<X8>)
{
  v2 = 0x656C6C65636E6163;
  if (*v1)
  {
    v2 = 0x6D4572656764656CLL;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEB00000000797470;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1000017F8()
{
  v1 = *v0;
  sub_100008E44();
  sub_100008D34();

  return sub_100008E54();
}

uint64_t sub_1000018CC()
{
  *v0;
  *v0;
  *v0;
  sub_100008D34();
}

Swift::Int sub_10000198C()
{
  v1 = *v0;
  sub_100008E44();
  sub_100008D34();

  return sub_100008E54();
}

uint64_t sub_100001A5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000069A8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100001A8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  v5 = 0xE700000000000000;
  v6 = 0x737365636F7270;
  v7 = 0xE600000000000000;
  v8 = 0x64616F6C7075;
  if (v2 != 3)
  {
    v8 = 0x64656873696E6966;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684107116;
    v3 = 0xE400000000000000;
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

uint64_t sub_100001B2C(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_100008BD4();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v2[28] = *(v4 + 64);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v5 = sub_100008BF4();
  v2[32] = v5;
  v6 = *(v5 - 8);
  v2[33] = v6;
  v7 = *(v6 + 64) + 15;
  v2[34] = swift_task_alloc();
  v8 = sub_100008C14();
  v2[35] = v8;
  v9 = *(v8 - 8);
  v2[36] = v9;
  v2[37] = *(v9 + 64);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v10 = sub_100008AB4();
  v2[40] = v10;
  v11 = *(v10 - 8);
  v2[41] = v11;
  v12 = *(v11 + 64) + 15;
  v2[42] = swift_task_alloc();
  v13 = sub_100008BB4();
  v2[43] = v13;
  v14 = *(v13 - 8);
  v2[44] = v14;
  v15 = *(v14 + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v16 = sub_1000088D4();
  v2[47] = v16;
  v17 = *(v16 - 8);
  v2[48] = v17;
  v18 = *(v17 + 64) + 15;
  v2[49] = swift_task_alloc();
  v19 = *(*(sub_100007D0C(&qword_100010068, &qword_100009388) - 8) + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v20 = sub_100008C74();
  v2[52] = v20;
  v21 = *(v20 - 8);
  v2[53] = v21;
  v22 = *(v21 + 64) + 15;
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v23 = sub_100008904();
  v2[57] = v23;
  v24 = *(v23 - 8);
  v2[58] = v24;
  v25 = *(v24 + 64) + 15;
  v2[59] = swift_task_alloc();

  return _swift_task_switch(sub_100001F0C, 0, 0);
}

uint64_t sub_100001F0C()
{
  if (qword_100010110 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = sub_100008CF4();
  *(v0 + 480) = sub_100007D54(v2, qword_100010720);
  v3 = v1;
  v4 = sub_100008CD4();
  v5 = sub_100008D84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100008188(v8, &qword_100010090, &qword_100009390);
  }

  v11 = *(v0 + 464);
  v10 = *(v0 + 472);
  v12 = *(v0 + 456);

  sub_1000088F4();
  *(v0 + 488) = sub_1000088E4();
  *(v0 + 496) = v13;
  (*(v11 + 8))(v10, v12);
  sub_100008964();
  *(v0 + 504) = sub_100008954();
  *(v0 + 736) = 0;
  sub_100007D8C();
  v15 = sub_100008D54();
  *(v0 + 512) = v15;
  *(v0 + 520) = v14;

  return _swift_task_switch(sub_100002104, v15, v14);
}

uint64_t sub_100002104()
{
  v1 = v0[63];
  v2 = v0[24];
  v0[66] = sub_100007DE4();
  sub_100008944();

  return _swift_task_switch(sub_10000218C, 0, 0);
}

uint64_t sub_10000218C()
{
  v1 = *(v0 + 200);
  *(v0 + 536) = *v1;
  *(v0 + 544) = v1[1];
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = sub_100008D24();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    v5 = *(v0 + 200);
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = sub_100008D24();
    [v4 doubleForKey:v8];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = *(v0 + 480);
  v13 = *(v0 + 440);
  v12 = *(v0 + 448);
  v15 = *(v0 + 424);
  v14 = *(v0 + 432);
  v16 = *(v0 + 416);
  sub_100008C64();
  v17 = *(v15 + 16);
  v17(v13, v12, v16);
  v17(v14, v12, v16);
  v18 = sub_100008CD4();
  v19 = sub_100008D84();
  v20 = os_log_type_enabled(v18, v19);
  v22 = *(v0 + 432);
  v21 = *(v0 + 440);
  v23 = *(v0 + 416);
  v24 = *(v0 + 424);
  if (v20)
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    sub_100008C34();
    v27 = v26;
    v28 = *(v24 + 8);
    v28(v21, v23);
    *(v25 + 4) = v27;
    *(v25 + 12) = 2048;
    sub_100008C24();
    v30 = v29;
    v28(v22, v23);
    *(v25 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "TelemetryWorker: startTimestamp: %f -- endTimestamp: %f", v25, 0x16u);
  }

  else
  {

    v28 = *(v24 + 8);
    v28(v22, v23);
    v28(v21, v23);
  }

  *(v0 + 552) = v28;
  v31 = *(v0 + 448);
  sub_100008C24();
  if (v32 <= v10)
  {
    v35 = *(v0 + 496);
    v36 = *(v0 + 480);

    v37 = sub_100008CD4();
    v38 = sub_100008DA4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v37, v38, "TelemetryWorker has processed already up to %f. Skipping execution.", v39, 0xCu);
    }

    v40 = *(v0 + 504);
    v41 = *(v0 + 448);
    v42 = *(v0 + 416);
    v43 = *(v0 + 424);

    v44 = objc_allocWithZone(sub_100008994());
    v63 = sub_100008984();

    v28(v41, v42);
    v45 = *(v0 + 472);
    v47 = *(v0 + 440);
    v46 = *(v0 + 448);
    v48 = *(v0 + 432);
    v50 = *(v0 + 400);
    v49 = *(v0 + 408);
    v51 = *(v0 + 392);
    v52 = *(v0 + 360);
    v53 = *(v0 + 368);
    v54 = *(v0 + 336);
    v57 = *(v0 + 312);
    v58 = *(v0 + 304);
    v59 = *(v0 + 272);
    v60 = *(v0 + 248);
    v61 = *(v0 + 240);
    v62 = *(v0 + 232);

    v55 = *(v0 + 8);

    return v55(v63);
  }

  else
  {
    *(v0 + 737) = 1;
    v33 = *(v0 + 520);
    v34 = *(v0 + 512);

    return _swift_task_switch(sub_1000025D8, v34, v33);
  }
}

uint64_t sub_1000025D8()
{
  v1 = v0[66];
  v2 = v0[63];
  v3 = v0[24];
  sub_100008944();

  return _swift_task_switch(sub_100002654, 0, 0);
}

uint64_t sub_100002654()
{
  v1 = v0[56];
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[47];
  sub_100008C54();
  sub_1000088B4();
  (*(v5 + 8))(v4, v6);
  v7 = *(v5 + 56);
  v0[70] = v7;
  v0[71] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v2, 0, 1, v6);
  sub_100008C44();
  v7(v3, 0, 1, v6);
  v8 = v0[65];
  v9 = v0[64];

  return _swift_task_switch(sub_100002774, v9, v8);
}

uint64_t sub_100002774()
{
  v1 = v0[63];
  v3 = v0[50];
  v2 = v0[51];
  v0[72] = sub_100008934();
  sub_100008188(v3, &qword_100010068, &qword_100009388);
  sub_100008188(v2, &qword_100010068, &qword_100009388);

  return _swift_task_switch(sub_100002824, 0, 0);
}

uint64_t sub_100002824()
{
  if (*(*(v0 + 576) + 16))
  {
    v1 = *(v0 + 480);
    v2 = sub_100008CD4();
    v3 = sub_100008D84();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Processing 24-hour analytics aggregation", v4, 2u);
    }

    *(v0 + 738) = 2;
    v5 = *(v0 + 520);
    v6 = *(v0 + 512);

    return _swift_task_switch(sub_100002B0C, v6, v5);
  }

  else
  {
    v7 = *(v0 + 496);
    v8 = *(v0 + 480);

    v9 = sub_100008CD4();
    v10 = sub_100008DA4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "No events in ledger.", v11, 2u);
    }

    v12 = *(v0 + 552);
    v13 = *(v0 + 504);
    v14 = *(v0 + 448);
    v15 = *(v0 + 416);
    v16 = *(v0 + 424);

    sub_100007E38();
    v17 = objc_allocWithZone(sub_100008994());
    v36 = sub_100008974();

    v12(v14, v15);
    v18 = *(v0 + 472);
    v20 = *(v0 + 440);
    v19 = *(v0 + 448);
    v21 = *(v0 + 432);
    v23 = *(v0 + 400);
    v22 = *(v0 + 408);
    v24 = *(v0 + 392);
    v25 = *(v0 + 360);
    v26 = *(v0 + 368);
    v27 = *(v0 + 336);
    v30 = *(v0 + 312);
    v31 = *(v0 + 304);
    v32 = *(v0 + 272);
    v33 = *(v0 + 248);
    v34 = *(v0 + 240);
    v35 = *(v0 + 232);

    v28 = *(v0 + 8);

    return v28(v36);
  }
}

uint64_t sub_100002B0C()
{
  v1 = v0[66];
  v2 = v0[63];
  v3 = v0[24];
  sub_100008944();

  return _swift_task_switch(sub_100002B88, 0, 0);
}

uint64_t sub_100002B88()
{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[46];
  v4 = v0[41];
  v5 = v0[42];
  v6 = v0[40];
  v7 = enum case for BucketInterval.day(_:);
  v8 = *(v4 + 104);
  v0[73] = v8;
  v0[74] = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v5, v7, v6);

  sub_100008B94();
  sub_100008BA4();
  sub_100008B84();
  v9 = async function pointer to processTaskTelemetry(telemetryConfig:telemetryRange:allEvents:)[1];
  v10 = swift_task_alloc();
  v0[75] = v10;
  *v10 = v0;
  v10[1] = sub_100002CA8;
  v11 = v0[72];
  v12 = v0[56];
  v13 = v0[46];

  return processTaskTelemetry(telemetryConfig:telemetryRange:allEvents:)(v13, v12, v11);
}

uint64_t sub_100002CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[14] = v4;
  v6[15] = a1;
  v6[16] = a2;
  v6[17] = a3;
  v6[18] = a4;
  v7 = v5[75];
  v9 = *v4;
  v6[76] = a2;

  return _swift_task_switch(sub_100002DB4, 0, 0);
}

uint64_t sub_100002DB4()
{
  v48 = v0;
  if (*(v0 + 608))
  {
    v1 = *(v0 + 120);
    *(v0 + 616) = vextq_s8(*(v0 + 136), *(v0 + 136), 8uLL);
    *(v0 + 632) = v1;
    *(v0 + 739) = 3;
    v2 = *(v0 + 520);
    v3 = *(v0 + 512);

    return _swift_task_switch(sub_1000030E8, v3, v2);
  }

  else
  {
    v4 = *(v0 + 576);
    v5 = *(v0 + 496);
    v6 = *(v0 + 480);
    v7 = *(v0 + 192);

    v8 = v7;
    v9 = sub_100008CD4();
    v10 = sub_100008D84();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 192);
      v12 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = sub_100008CA4();
      v15 = sub_100006400(v13, v14, &v47);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = sub_100008CB4();
      v18 = sub_100006400(v16, v17, &v47);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "TaskId: %s, TaskName: %s: asked to stop!", v12, 0x16u);
      swift_arrayDestroy();
    }

    v19 = *(v0 + 552);
    v20 = *(v0 + 504);
    v21 = *(v0 + 448);
    v22 = *(v0 + 416);
    v23 = *(v0 + 424);
    v24 = *(v0 + 368);
    v25 = *(v0 + 344);
    v26 = *(v0 + 352);
    v27 = objc_allocWithZone(sub_100008994());
    v46 = sub_100008984();

    (*(v26 + 8))(v24, v25);
    v19(v21, v22);
    v28 = *(v0 + 472);
    v30 = *(v0 + 440);
    v29 = *(v0 + 448);
    v31 = *(v0 + 432);
    v33 = *(v0 + 400);
    v32 = *(v0 + 408);
    v34 = *(v0 + 392);
    v35 = *(v0 + 360);
    v36 = *(v0 + 368);
    v37 = *(v0 + 336);
    v40 = *(v0 + 312);
    v41 = *(v0 + 304);
    v42 = *(v0 + 272);
    v43 = *(v0 + 248);
    v44 = *(v0 + 240);
    v45 = *(v0 + 232);

    v38 = *(v0 + 8);

    return v38(v46);
  }
}

uint64_t sub_1000030E8()
{
  v1 = v0[66];
  v2 = v0[63];
  v3 = v0[24];
  sub_100008944();

  return _swift_task_switch(sub_100003164, 0, 0);
}

uint64_t sub_100003164()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 480);
  v5 = *(v0 + 200);
  v6 = *(v5 + 40);
  *(v0 + 640) = v6;
  v7 = *(v5 + 32);
  *(v0 + 648) = v7;

  sub_1000069F4(v3, v1, v2, v7, v6);

  v8 = sub_100008CD4();
  v9 = sub_100008D84();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Processing 7-day analytics aggregation", v10, 2u);
  }

  *(v0 + 740) = 2;
  v11 = *(v0 + 520);
  v12 = *(v0 + 512);

  return _swift_task_switch(sub_1000032B4, v12, v11);
}

uint64_t sub_1000032B4()
{
  v1 = v0[66];
  v2 = v0[63];
  v3 = v0[24];
  sub_100008944();

  return _swift_task_switch(sub_100003330, 0, 0);
}

uint64_t sub_100003330()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v4 = *(v0 + 360);
  (*(v0 + 584))(*(v0 + 336), enum case for BucketInterval.week(_:), *(v0 + 320));
  sub_100008B84();
  v5 = async function pointer to processTaskTelemetry(telemetryConfig:telemetryRange:allEvents:)[1];
  v6 = swift_task_alloc();
  *(v0 + 656) = v6;
  *v6 = v0;
  v6[1] = sub_100003420;
  v7 = *(v0 + 576);
  v8 = *(v0 + 448);
  v9 = *(v0 + 360);

  return processTaskTelemetry(telemetryConfig:telemetryRange:allEvents:)(v9, v8, v7);
}

uint64_t sub_100003420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[19] = v4;
  v6[20] = a1;
  v6[21] = a2;
  v6[22] = a3;
  v6[23] = a4;
  v7 = v5[82];
  v8 = v5[72];
  v10 = *v4;
  v6[83] = a2;

  return _swift_task_switch(sub_100003548, 0, 0);
}

uint64_t sub_100003548()
{
  v51 = v0;
  if (*(v0 + 664))
  {
    v1 = *(v0 + 176);
    *(v0 + 672) = *(v0 + 184);
    *(v0 + 680) = v1;
    *(v0 + 741) = 3;
    v2 = *(v0 + 520);
    v3 = *(v0 + 512);

    return _swift_task_switch(sub_100003898, v3, v2);
  }

  else
  {
    v4 = *(v0 + 624);
    v5 = *(v0 + 616);
    v6 = *(v0 + 608);
    v7 = *(v0 + 480);
    v8 = *(v0 + 192);

    v9 = v8;
    v10 = sub_100008CD4();
    v11 = sub_100008D84();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 192);
      v13 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v13 = 136315394;
      v14 = sub_100008CA4();
      v16 = sub_100006400(v14, v15, &v50);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v17 = sub_100008CB4();
      v19 = sub_100006400(v17, v18, &v50);

      *(v13 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "TaskId: %s, TaskName: %s: asked to stop!", v13, 0x16u);
      swift_arrayDestroy();
    }

    v47 = *(v0 + 552);
    v20 = *(v0 + 504);
    v21 = *(v0 + 448);
    v22 = *(v0 + 416);
    v23 = *(v0 + 424);
    v25 = *(v0 + 360);
    v24 = *(v0 + 368);
    v26 = *(v0 + 344);
    v27 = *(v0 + 352);
    v28 = objc_allocWithZone(sub_100008994());
    v49 = sub_100008984();

    v29 = *(v27 + 8);
    v29(v25, v26);
    v29(v24, v26);
    v47(v21, v22);
    v30 = *(v0 + 472);
    v32 = *(v0 + 440);
    v31 = *(v0 + 448);
    v33 = *(v0 + 432);
    v35 = *(v0 + 400);
    v34 = *(v0 + 408);
    v36 = *(v0 + 392);
    v37 = *(v0 + 360);
    v38 = *(v0 + 368);
    v39 = *(v0 + 336);
    v42 = *(v0 + 312);
    v43 = *(v0 + 304);
    v44 = *(v0 + 272);
    v45 = *(v0 + 248);
    v46 = *(v0 + 240);
    v48 = *(v0 + 232);

    v40 = *(v0 + 8);

    return v40(v49);
  }
}

uint64_t sub_100003898()
{
  v1 = v0[66];
  v2 = v0[63];
  v3 = v0[24];
  sub_100008944();

  return _swift_task_switch(sub_100003914, 0, 0);
}

uint64_t sub_100003914()
{
  v1 = *(v0 + 480);
  sub_1000069F4(*(v0 + 664), *(v0 + 680), *(v0 + 672), *(v0 + 648), *(v0 + 640));

  v2 = sub_100008CD4();
  v3 = sub_100008D84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Processing custom telemetry", v4, 2u);
  }

  *(v0 + 742) = 2;
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);

  return _swift_task_switch(sub_100003A30, v6, v5);
}

uint64_t sub_100003A30()
{
  v1 = v0[66];
  v2 = v0[63];
  v3 = v0[24];
  sub_100008944();

  return _swift_task_switch(sub_100003AAC, 0, 0);
}

uint64_t sub_100003AAC()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[56];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[47];
  sub_100008C54();
  v2(v4, 0, 1, v6);
  sub_100008C44();
  v2(v5, 0, 1, v6);
  v7 = v0[65];
  v8 = v0[64];

  return _swift_task_switch(sub_100003B68, v8, v7);
}

uint64_t sub_100003B68()
{
  v1 = v0[63];
  v3 = v0[50];
  v2 = v0[51];
  v0[86] = sub_100008924();
  sub_100008188(v3, &qword_100010068, &qword_100009388);
  sub_100008188(v2, &qword_100010068, &qword_100009388);

  return _swift_task_switch(sub_100003C20, 0, 0);
}

uint64_t sub_100003C20()
{
  v1 = v0[86];
  v2 = v0[60];

  v3 = sub_100008CD4();
  v4 = sub_100008D94();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[86];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Custom Events: %ld", v7, 0xCu);
  }

  else
  {
    v8 = v0[86];
  }

  v9 = async function pointer to processCustomTelemetry(customTelemetryEvents:bucketRange:)[1];
  v10 = swift_task_alloc();
  v0[87] = v10;
  *v10 = v0;
  v10[1] = sub_100003D64;
  v11 = v0[86];
  v12 = v0[56];

  return processCustomTelemetry(customTelemetryEvents:bucketRange:)(v11, v12);
}

uint64_t sub_100003D64(uint64_t a1)
{
  v2 = *(*v1 + 696);
  v3 = *(*v1 + 688);
  v5 = *v1;
  *(*v1 + 704) = a1;

  return _swift_task_switch(sub_100003E84, 0, 0);
}

uint64_t sub_100003E84()
{
  v50 = v0;
  if (*(v0 + 704))
  {
    *(v0 + 743) = 3;
    v1 = *(v0 + 520);
    v2 = *(v0 + 512);

    return _swift_task_switch(sub_1000041C8, v2, v1);
  }

  else
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    v5 = *(v0 + 608);
    v6 = *(v0 + 480);
    v7 = *(v0 + 192);

    v8 = v7;
    v9 = sub_100008CD4();
    v10 = sub_100008D84();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 192);
      v12 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = sub_100008CA4();
      v15 = sub_100006400(v13, v14, &v49);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = sub_100008CB4();
      v18 = sub_100006400(v16, v17, &v49);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "TaskId: %s, TaskName: %s: asked to stop!", v12, 0x16u);
      swift_arrayDestroy();
    }

    v46 = *(v0 + 552);
    v19 = *(v0 + 504);
    v20 = *(v0 + 448);
    v21 = *(v0 + 416);
    v22 = *(v0 + 424);
    v24 = *(v0 + 360);
    v23 = *(v0 + 368);
    v25 = *(v0 + 344);
    v26 = *(v0 + 352);
    v27 = objc_allocWithZone(sub_100008994());
    v48 = sub_100008984();

    v28 = *(v26 + 8);
    v28(v24, v25);
    v28(v23, v25);
    v46(v20, v21);
    v29 = *(v0 + 472);
    v31 = *(v0 + 440);
    v30 = *(v0 + 448);
    v32 = *(v0 + 432);
    v34 = *(v0 + 400);
    v33 = *(v0 + 408);
    v35 = *(v0 + 392);
    v36 = *(v0 + 360);
    v37 = *(v0 + 368);
    v38 = *(v0 + 336);
    v41 = *(v0 + 312);
    v42 = *(v0 + 304);
    v43 = *(v0 + 272);
    v44 = *(v0 + 248);
    v45 = *(v0 + 240);
    v47 = *(v0 + 232);

    v39 = *(v0 + 8);

    return v39(v48);
  }
}

uint64_t sub_1000041C8()
{
  v1 = v0[66];
  v2 = v0[63];
  v3 = v0[24];
  sub_100008944();

  return _swift_task_switch(sub_100004244, 0, 0);
}

uint64_t sub_100004244()
{
  v42 = v0;
  v1 = v0[88];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[36];
    v39 = v0[37];
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = *(v3 + 64);
    v7 = v1 + ((v6 + 32) & ~v6);
    v8 = v0[33];
    v36 = (v8 + 8);
    v37 = (v8 + 104);
    v35 = *(v3 + 56);
    v34 = enum case for CoreAnalyticsEvents.customEventTelemetry(_:);
    v33 = (v6 + 16) & ~v6;
    v32 = (v3 + 16);
    v31 = (v3 - 8);
    v38 = v5;
    do
    {
      v40 = v2;
      v24 = v0[60];
      v4(v0[39], v7, v0[35]);
      sub_100008C04();
      v25 = sub_100008CD4();
      v26 = sub_100008D94();
      if (os_log_type_enabled(v25, v26))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v41 = v10;
        *v9 = 136315138;
        sub_100008140(0, &qword_100010088, NSObject_ptr);
        v11 = sub_100008D14();
        v13 = v12;

        v14 = sub_100006400(v11, v13, &v41);

        *(v9 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v25, v26, "CUSTOM EVENT: %s", v9, 0xCu);
        sub_100007F2C(v10);
      }

      else
      {
      }

      v15 = v0[38];
      v16 = v0[39];
      v17 = v0[34];
      v18 = v0[35];
      v19 = v0[32];
      (*v37)(v17, v34, v19);
      sub_100008BE4();
      (*v36)(v17, v19);
      v20 = sub_100008D24();

      v4 = v38;
      v38(v15, v16, v18);
      v21 = swift_allocObject();
      (*v32)(v21 + v33, v15, v18);
      v0[6] = sub_100007EA4;
      v0[7] = v21;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1000054E8;
      v0[5] = &unk_10000C980;
      v22 = _Block_copy(v0 + 2);
      v23 = v0[7];

      AnalyticsSendEventLazy();
      _Block_release(v22);

      (*v31)(v16, v18);
      v7 += v35;
      v2 = v40 - 1;
    }

    while (v40 != 1);
    v27 = v0[88];
  }

  *(v0 + 744) = 2;
  v28 = v0[65];
  v29 = v0[64];

  return _swift_task_switch(sub_100004628, v29, v28);
}

uint64_t sub_100004628()
{
  v1 = v0[66];
  v2 = v0[63];
  v3 = v0[24];
  sub_100008944();

  return _swift_task_switch(sub_1000046A4, 0, 0);
}

uint64_t sub_1000046A4()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[56];
  v6 = sub_100008AC4();
  v0[89] = v6;
  v7 = async function pointer to processDediscoEvents(dediscoEventMap:telemetryRange:dailyTelemetryResults:)[1];

  v8 = swift_task_alloc();
  v0[90] = v8;
  *v8 = v0;
  v8[1] = sub_100004798;
  v9 = v0[56];
  v10.n128_u64[0] = v1;

  return processDediscoEvents(dediscoEventMap:telemetryRange:dailyTelemetryResults:)(v6, v9, v4, v2, v3, v10);
}

uint64_t sub_100004798(uint64_t a1)
{
  v2 = *(*v1 + 720);
  v3 = *(*v1 + 712);
  v4 = *(*v1 + 624);
  v5 = *(*v1 + 616);
  v6 = *(*v1 + 608);
  v8 = *v1;
  *(*v1 + 728) = a1;

  return _swift_task_switch(sub_100004914, 0, 0);
}

uint64_t sub_100004914()
{
  v50 = v0;
  if (*(v0 + 728))
  {
    *(v0 + 745) = 3;
    v1 = *(v0 + 520);
    v2 = *(v0 + 512);

    return _swift_task_switch(sub_100004C58, v2, v1);
  }

  else
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    v5 = *(v0 + 608);
    v6 = *(v0 + 480);
    v7 = *(v0 + 192);

    v8 = v7;
    v9 = sub_100008CD4();
    v10 = sub_100008D84();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 192);
      v12 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = sub_100008CA4();
      v15 = sub_100006400(v13, v14, &v49);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = sub_100008CB4();
      v18 = sub_100006400(v16, v17, &v49);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "TaskId: %s, TaskName: %s: asked to stop!", v12, 0x16u);
      swift_arrayDestroy();
    }

    v46 = *(v0 + 552);
    v19 = *(v0 + 504);
    v20 = *(v0 + 448);
    v21 = *(v0 + 416);
    v22 = *(v0 + 424);
    v24 = *(v0 + 360);
    v23 = *(v0 + 368);
    v25 = *(v0 + 344);
    v26 = *(v0 + 352);
    v27 = objc_allocWithZone(sub_100008994());
    v48 = sub_100008984();

    v28 = *(v26 + 8);
    v28(v24, v25);
    v28(v23, v25);
    v46(v20, v21);
    v29 = *(v0 + 472);
    v31 = *(v0 + 440);
    v30 = *(v0 + 448);
    v32 = *(v0 + 432);
    v34 = *(v0 + 400);
    v33 = *(v0 + 408);
    v35 = *(v0 + 392);
    v36 = *(v0 + 360);
    v37 = *(v0 + 368);
    v38 = *(v0 + 336);
    v41 = *(v0 + 312);
    v42 = *(v0 + 304);
    v43 = *(v0 + 272);
    v44 = *(v0 + 248);
    v45 = *(v0 + 240);
    v47 = *(v0 + 232);

    v39 = *(v0 + 8);

    return v39(v48);
  }
}

uint64_t sub_100004C58()
{
  v1 = v0[66];
  v2 = v0[63];
  v3 = v0[24];
  sub_100008944();

  return _swift_task_switch(sub_100004CD4, 0, 0);
}

uint64_t sub_100004CD4()
{
  v75 = v0;
  if (os_variant_has_internal_content())
  {
    v1 = v0[91];
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[27];
      v71 = v0[28];
      v6 = *(v3 + 16);
      v5 = v3 + 16;
      v4 = v6;
      v7 = *(v5 + 64);
      v8 = v1 + ((v7 + 32) & ~v7);
      v9 = (v5 - 8);
      v10 = v0[33];
      v69 = (v10 + 104);
      v68 = *(v5 + 56);
      v67 = enum case for CoreAnalyticsEvents.dediscoTelemetry(_:);
      v65 = (v7 + 16) & ~v7;
      v66 = (v10 + 8);
      v70 = v6;
      do
      {
        v26 = v0[60];
        v28 = v0[30];
        v27 = v0[31];
        v29 = v0[26];
        v73 = v8;
        v4(v27);
        (v4)(v28, v27, v29);
        v30 = sub_100008CD4();
        v31 = sub_100008D84();
        v32 = os_log_type_enabled(v30, v31);
        v33 = v0[30];
        v34 = v0[26];
        if (v32)
        {
          v64 = v2;
          v11 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v74 = v63;
          *v11 = 136315138;
          sub_100008BC4();
          sub_100008140(0, &qword_100010088, NSObject_ptr);
          v12 = sub_100008D14();
          v14 = v13;

          v72 = *v9;
          (*v9)(v33, v34);
          v15 = sub_100006400(v12, v14, &v74);

          *(v11 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v30, v31, "DeDisco Result: %s", v11, 0xCu);
          sub_100007F2C(v63);

          v2 = v64;
        }

        else
        {

          v72 = *v9;
          (*v9)(v33, v34);
        }

        v16 = v0[34];
        v18 = v0[31];
        v17 = v0[32];
        v19 = v0[29];
        v20 = v0[26];
        (*v69)(v16, v67, v17);
        sub_100008BE4();
        (*v66)(v16, v17);
        v21 = sub_100008D24();

        v70(v19, v18, v20);
        v22 = swift_allocObject();
        (*(v5 + 16))(v22 + v65, v19, v20);
        v0[12] = sub_100007F00;
        v0[13] = v22;
        v0[8] = _NSConcreteStackBlock;
        v0[9] = 1107296256;
        v0[10] = sub_1000054E8;
        v0[11] = &unk_10000C9D0;
        v23 = _Block_copy(v0 + 8);
        v24 = v0[13];

        AnalyticsSendEventLazy();
        v25 = v23;
        v4 = v70;
        _Block_release(v25);

        v72(v18, v20);
        v8 = v73 + v68;
        --v2;
        v9 = (v5 - 8);
      }

      while (v2);
    }
  }

  v35 = v0[91];
  v36 = v0[68];
  v37 = v0[67];

  v38 = objc_allocWithZone(NSUserDefaults);
  v39 = sub_100008D24();
  v40 = [v38 initWithSuiteName:v39];

  v41 = v0[78];
  v42 = v0[77];
  v43 = v0[76];
  if (v40)
  {
    v44 = v0[60];
    v45 = v0[76];

    v46 = sub_100008CD4();
    v47 = sub_100008D84();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v0[79];
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      *(v49 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v46, v47, "Marking lastProcessedTimestamp: %f", v49, 0xCu);
    }

    v50 = v0[79];
    v51 = v0[78];
    v52 = v0[77];
    v53 = v0[76];
    v54 = v0[25];

    isa = sub_100008D64().super.super.isa;
    v56 = *(v54 + 16);
    v57 = *(v54 + 24);
    v58 = sub_100008D24();
    [v40 setValue:isa forKey:v58];
  }

  else
  {
    v59 = v0[77];
  }

  *(v0 + 746) = 4;
  v60 = v0[65];
  v61 = v0[64];

  return _swift_task_switch(sub_1000052B0, v61, v60);
}

uint64_t sub_1000052B0()
{
  v1 = v0[66];
  v2 = v0[63];
  v3 = v0[24];
  sub_100008944();

  return _swift_task_switch(sub_10000532C, 0, 0);
}

uint64_t sub_10000532C()
{
  v28 = v0[69];
  v1 = v0[63];
  v2 = v0[56];
  v3 = v0[52];
  v4 = v0[53];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[43];
  v8 = v0[44];
  v9 = objc_allocWithZone(sub_100008994());
  v30 = sub_100008984();

  v10 = *(v8 + 8);
  v10(v6, v7);
  v10(v5, v7);
  v28(v2, v3);
  v11 = v0[59];
  v13 = v0[55];
  v12 = v0[56];
  v14 = v0[54];
  v16 = v0[50];
  v15 = v0[51];
  v17 = v0[49];
  v18 = v0[45];
  v19 = v0[46];
  v20 = v0[42];
  v23 = v0[39];
  v24 = v0[38];
  v25 = v0[34];
  v26 = v0[31];
  v27 = v0[30];
  v29 = v0[29];

  v21 = v0[1];

  return v21(v30);
}

Class sub_1000054E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100008140(0, &qword_100010088, NSObject_ptr);
    v5.super.isa = sub_100008D04().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

id sub_100005584(uint64_t a1)
{
  v2 = sub_1000088D4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin();
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (sub_100007D0C(&qword_1000100A8, &qword_100009398) - 8);
  v8 = (*(*v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v40 - v9;
  v51 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100008140(0, &qword_1000100B0, NSNumber_ptr);
  isa = sub_100008DB4(1).super.super.isa;
  sub_1000089C4();
  v11 = v3[2];
  v11(v6, v10, v2);
  sub_100008188(v10, &qword_1000100A8, &qword_100009398);
  v49 = sub_1000088C4().super.isa;
  v12 = v3[1];
  v12(v6, v2);
  sub_1000089C4();
  v11(v6, &v10[v7[11]], v2);
  sub_100008188(v10, &qword_1000100A8, &qword_100009398);
  v47 = sub_1000088C4().super.isa;
  v12(v6, v2);
  sub_100008A74();
  v46 = sub_100008D24();

  sub_100008A84();
  v13 = sub_100008D24();

  sub_100008A34();
  v48 = sub_1000088C4().super.isa;
  v12(v6, v2);
  sub_100008A04();
  v14 = sub_100008D74().super.super.isa;
  sub_1000089D4();
  v15 = sub_100008D74().super.super.isa;
  sub_1000089E4();
  v16 = sub_100008D74().super.super.isa;
  v41 = v16;
  sub_100008A44();
  v17 = sub_100008D64().super.super.isa;
  v42 = v17;
  sub_100008A14();
  v18 = sub_100008D64().super.super.isa;
  v43 = v18;
  sub_100008A64();
  v19 = sub_100008D64().super.super.isa;
  v44 = v19;
  sub_100008A24();
  v20 = sub_100008D64().super.super.isa;
  v45 = v20;
  sub_100008A24();
  v21 = sub_100008D64().super.super.isa;
  v39 = v20;
  v37 = v18;
  v38 = v19;
  v35 = v16;
  v36 = v17;
  v33 = v14;
  v34 = v15;
  v22 = v15;
  v23 = v14;
  v24 = isa;
  v25 = v49;
  v26 = v46;
  v27 = v47;
  v28 = v13;
  v29 = v13;
  v30 = v48;
  v51 = [v51 initWithVersion:isa bucketStart:v49 bucketEnd:v47 taskName:v46 taskState:v29 latestEventTimestamp:v48 countCompleted:v33 countFailed:v34 countDeferred:v35 dailyExecutionLatency:v36 crossExecutionDelay:v37 executionCompletionTime:v38 executionFailureTime:v39 executionDeferralTime:v21];

  v31 = sub_100008A94();
  (*(*(v31 - 8) + 8))(a1, v31);
  return v51;
}

id sub_100005954(uint64_t a1)
{
  v2 = sub_1000088D4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (sub_100007D0C(&qword_1000100A8, &qword_100009398) - 8);
  v8 = (*(*v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v24 - v9;
  v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100008140(0, &qword_1000100B0, NSNumber_ptr);
  isa = sub_100008DB4(1).super.super.isa;
  sub_100008AE4();
  v11 = v3[2];
  v11(v6, v10, v2);
  sub_100008188(v10, &qword_1000100A8, &qword_100009398);
  v25 = sub_1000088C4().super.isa;
  v12 = v3[1];
  v12(v6, v2);
  sub_100008AE4();
  v11(v6, &v10[v7[11]], v2);
  sub_100008188(v10, &qword_1000100A8, &qword_100009398);
  v13 = sub_1000088C4().super.isa;
  v12(v6, v2);
  sub_100008AD4();
  v14 = sub_100008D74().super.super.isa;
  sub_100008B34();
  v15 = sub_100008D74().super.super.isa;
  sub_100008B04();
  v16 = sub_100008D74().super.super.isa;
  sub_100008AF4();
  v17 = sub_100008D74().super.super.isa;
  sub_100008B14();
  v18 = sub_100008D74().super.super.isa;
  v19 = isa;
  v20 = v25;
  v21 = [v27 initWithVersion:isa bucketStart:v25 bucketEnd:v13 tasksCount:v14 tasksRun:v15 tasksDeferred:v16 tasksFailed:v17 tasksCompleted:v18];

  v22 = sub_100008B44();
  (*(*(v22 - 8) + 8))(a1, v22);
  return v21;
}

uint64_t sub_100005C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100005CE8;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100005CE8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100005DE4(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_100005E8C;

  return sub_100001B2C(a1);
}

uint64_t sub_100005E8C(uint64_t a1)
{
  v3 = *(*v1 + 64);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100005F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_10000606C;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_10000606C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100006160(uint64_t a1)
{
  v2 = sub_1000063AC();

  return MLHostExtension.configuration.getter(a1, v2);
}

double sub_1000061AC@<D0>(_OWORD *a1@<X8>)
{
  sub_100007B78(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100006248();
  sub_100008914();
  return 0;
}

unint64_t sub_100006248()
{
  result = qword_100010058;
  if (!qword_100010058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010058);
  }

  return result;
}

__n128 sub_10000629C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000062B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000062F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000063AC()
{
  result = qword_100010060;
  if (!qword_100010060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010060);
  }

  return result;
}

uint64_t sub_100006400(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000064CC(v11, 0, 0, 1, a1, a2);
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
    sub_1000081E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007F2C(v11);
  return v7;
}

unint64_t sub_1000064CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000065D8(a5, a6);
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
    result = sub_100008DD4();
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

char *sub_1000065D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100006624(a1, a2);
  sub_100006754(&off_10000C8A8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100006624(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100006840(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100008DD4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100008D44();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100006840(v10, 0);
        result = sub_100008DC4();
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

uint64_t sub_100006754(uint64_t result)
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

  result = sub_1000068B4(result, v12, 1, v3);
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

void *sub_100006840(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100007D0C(&qword_1000100B8, &qword_1000093A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000068B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007D0C(&qword_1000100B8, &qword_1000093A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_1000069A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C7E8;
  v6._object = a2;
  v4 = sub_100008DE4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

void sub_1000069F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v148 = a5;
  v121 = a3;
  v120 = a2;
  v153 = sub_1000089B4();
  v119 = *(v153 - 8);
  v7 = *(v119 + 64);
  v8 = (__chkstk_darwin)();
  v156 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = v9;
  __chkstk_darwin(v8);
  v149 = &v118 - v10;
  v11 = sub_100008B44();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v146 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v15;
  __chkstk_darwin(v14);
  v145 = (&v118 - v16);
  v126 = sub_100008AB4();
  v17 = *(v126 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v126);
  v125 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_100008BF4();
  v151 = *(v158 - 8);
  v20 = *(v151 + 64);
  __chkstk_darwin(v158);
  v157 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100008A94();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v143 = (&v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __chkstk_darwin(v25);
  v29 = (&v118 - v28);
  v144 = v30;
  __chkstk_darwin(v27);
  v142 = &v118 - v32;
  v33 = *(a1 + 16);
  if (v33)
  {
    v140 = sub_100008140(0, &qword_100010098, BMLighthouseTaskTelemetry_ptr);
    v36 = *(v23 + 16);
    v35 = v23 + 16;
    v34 = v36;
    v37 = *(v35 + 64);
    v38 = a1 + ((v37 + 32) & ~v37);
    v138 = (v151 + 104);
    v137 = (v151 + 8);
    v136 = *(v35 + 56);
    v139 = v37;
    v135 = ((v37 + 16) & ~v37);
    LODWORD(v134) = enum case for CoreAnalyticsEvents.taskStatusTelemetry(_:);
    *&v133 = v35 + 16;
    v132 = &v161;
    v131 = (v35 - 8);
    v123 = (v17 + 8);
    *&v39 = 136315394;
    v122 = v39;
    *&v141 = v11;
    v155 = v12;
    v124 = a4;
    v152 = v36;
    do
    {
      v154 = v33;
      v53 = v142;
      (v34)(v142, v38, v22);
      v54 = sub_100005584(v53);
      [a4 sendEvent:v54];

      v56 = v157;
      v55 = v158;
      (*v138)(v157, v134, v158);
      sub_100008BE4();
      v57 = v56;
      v34 = v152;
      (*v137)(v57, v55);
      v58 = sub_100008D24();

      (v34)(v53, v38, v22);
      v59 = v135;
      v60 = swift_allocObject();
      (*v133)(v59 + v60, v53, v22);
      v163 = sub_100007F90;
      v164 = v60;
      aBlock = _NSConcreteStackBlock;
      v160 = 1107296256;
      v161 = sub_1000054E8;
      v162 = &unk_10000CA20;
      v61 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v61);

      if (qword_100010110 != -1)
      {
        swift_once();
      }

      v62 = sub_100008CF4();
      sub_100007D54(v62, qword_100010720);
      (v34)(v29, v38, v22);
      v63 = v143;
      (v34)(v143, v38, v22);
      v64 = sub_100008CD4();
      v65 = sub_100008D94();
      if (os_log_type_enabled(v64, v65))
      {
        v40 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        aBlock = v130;
        *v40 = v122;
        v41 = v125;
        v129 = v64;
        sub_1000089F4();
        v42 = sub_100008AA4();
        v128 = v65;
        v44 = v43;
        (*v123)(v41, v126);
        v127 = *v131;
        v127(v29, v22);
        v45 = sub_100006400(v42, v44, &aBlock);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2080;
        sub_100008A54();
        sub_100008140(0, &qword_100010088, NSObject_ptr);
        v46 = sub_100008D14();
        v47 = v29;
        v48 = v35;
        v50 = v49;

        v127(v63, v22);
        v51 = sub_100006400(v46, v50, &aBlock);
        v35 = v48;
        v29 = v47;
        v34 = v152;

        *(v40 + 14) = v51;
        v52 = v129;
        _os_log_impl(&_mh_execute_header, v129, v128, "%s Output: %s", v40, 0x16u);
        swift_arrayDestroy();

        a4 = v124;
      }

      else
      {

        v66 = *v131;
        (*v131)(v63, v22);
        v66(v29, v22);
      }

      v12 = v155;
      v38 += v136;
      v33 = v154 - 1;
      v11 = v141;
    }

    while (v154 != 1);
  }

  v67 = v120;
  v68 = *(v120 + 16);
  v69 = v153;
  v70 = v156;
  if (v68)
  {
    v144 = sub_100008140(0, &qword_1000100A0, BMLighthouseDeviceTelemetry_ptr);
    v73 = v12[2];
    v72 = (v12 + 2);
    v71 = v73;
    v74 = v72[64];
    v75 = v67 + ((v74 + 32) & ~v74);
    v142 = (v151 + 104);
    v140 = (v151 + 8);
    v139 = *(v72 + 7);
    v143 = v74;
    v138 = ((v74 + 16) & ~v74);
    LODWORD(v137) = enum case for CoreAnalyticsEvents.deviceStatusTelemetry(_:);
    v136 = (v72 + 16);
    v135 = &v161;
    v134 = (v72 - 8);
    *&v76 = 136315138;
    v133 = v76;
    v155 = v72;
    v152 = v73;
    do
    {
      v154 = v68;
      v83 = v145;
      (v71)(v145, v75, v11);
      v84 = sub_100005954(v83);
      [v148 sendEvent:v84];

      v86 = v157;
      v85 = v158;
      (*v142)(v157, v137, v158);
      sub_100008BE4();
      v87 = v86;
      v71 = v152;
      (*v140)(v87, v85);
      v88 = sub_100008D24();

      (v71)(v83, v75, v11);
      v89 = v138;
      v90 = swift_allocObject();
      (*v136)(&v89[v90], v83, v11);
      v163 = sub_1000080A8;
      v164 = v90;
      aBlock = _NSConcreteStackBlock;
      v160 = 1107296256;
      v161 = sub_1000054E8;
      v162 = &unk_10000CAC0;
      v91 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v91);

      if (qword_100010110 != -1)
      {
        swift_once();
      }

      v92 = sub_100008CF4();
      sub_100007D54(v92, qword_100010720);
      v93 = v146;
      (v71)(v146, v75, v11);
      v94 = sub_100008CD4();
      v95 = sub_100008D94();
      if (os_log_type_enabled(v94, v95))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        aBlock = v78;
        *v77 = v133;
        sub_100008B24();
        sub_100008140(0, &qword_100010088, NSObject_ptr);
        v79 = sub_100008D14();
        v81 = v80;

        (*v134)(v93, v11);
        v82 = sub_100006400(v79, v81, &aBlock);
        v70 = v156;
        v69 = v153;

        *(v77 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v94, v95, "Device Telemetry Output: %s", v77, 0xCu);
        sub_100007F2C(v78);

        v71 = v152;
      }

      else
      {

        (*v134)(v93, v11);
      }

      v75 += v139;
      v68 = v154 - 1;
    }

    while (v154 != 1);
  }

  v96 = *(v121 + 16);
  if (v96)
  {
    v97 = *(v119 + 80);
    v98 = v121 + ((v97 + 32) & ~v97);
    v99 = *(v151 + 104);
    v151 += 104;
    v154 = (v151 - 96);
    v155 = v99;
    v152 = (v119 + 16);
    v100 = *(v119 + 72);
    v146 = v97;
    v147 = (v97 + 16) & ~v97;
    v148 = v100;
    v145 = (v119 + 32);
    LODWORD(v144) = enum case for CoreAnalyticsEvents.pushTaskTelemetry(_:);
    v143 = &v161;
    v142 = (v119 + 8);
    *&v31 = 136315138;
    v141 = v31;
    do
    {
      v108 = v157;
      v107 = v158;
      (v155)(v157, v144, v158);
      sub_100008BE4();
      (*v154)(v108, v107);
      v109 = sub_100008D24();

      v110 = *v152;
      v111 = v149;
      (*v152)(v149, v98, v69);
      v112 = v147;
      v113 = swift_allocObject();
      (*v145)(v113 + v112, v111, v69);
      v163 = sub_100007FD4;
      v164 = v113;
      aBlock = _NSConcreteStackBlock;
      v160 = 1107296256;
      v161 = sub_1000054E8;
      v162 = &unk_10000CA70;
      v114 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v114);

      if (qword_100010110 != -1)
      {
        swift_once();
      }

      v115 = sub_100008CF4();
      sub_100007D54(v115, qword_100010720);
      v110(v70, v98, v69);
      v116 = sub_100008CD4();
      v117 = sub_100008D94();
      if (os_log_type_enabled(v116, v117))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        aBlock = v102;
        *v101 = v141;
        sub_1000089A4();
        sub_100008140(0, &qword_100010088, NSObject_ptr);
        v103 = sub_100008D14();
        v105 = v104;

        (*v142)(v156, v153);
        v106 = sub_100006400(v103, v105, &aBlock);

        *(v101 + 4) = v106;
        _os_log_impl(&_mh_execute_header, v116, v117, "Push Telemetry Output: %s", v101, 0xCu);
        sub_100007F2C(v102);

        v70 = v156;
        v69 = v153;
      }

      else
      {

        (*v142)(v70, v69);
      }

      v98 += v148;
      --v96;
    }

    while (v96);
  }
}

void sub_100007B78(void *a1@<X8>)
{
  v2 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v3 = [v2 Ledger];
  swift_unknownObjectRelease();
  v4 = [v3 TaskTelemetry];
  swift_unknownObjectRelease();
  v5 = [v4 source];

  v6 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v7 = [v6 Ledger];
  swift_unknownObjectRelease();
  v8 = [v7 DeviceTelemetry];
  swift_unknownObjectRelease();
  v9 = [v8 source];

  *a1 = 0xD000000000000010;
  a1[1] = 0x8000000100009620;
  a1[2] = 0xD000000000000017;
  a1[3] = 0x8000000100009640;
  a1[4] = v5;
  a1[5] = v9;
}

uint64_t sub_100007D0C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100007D54(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100007D8C()
{
  result = qword_100010070;
  if (!qword_100010070)
  {
    sub_100008964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010070);
  }

  return result;
}

unint64_t sub_100007DE4()
{
  result = qword_100010078;
  if (!qword_100010078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010078);
  }

  return result;
}

unint64_t sub_100007E38()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

uint64_t sub_100007ED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007F2C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100008018(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100008140(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100008188(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100007D0C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000081E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100008248(uint64_t a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for TelemetryError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TelemetryError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TelemetryStates(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TelemetryStates(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100008580()
{
  result = qword_1000100C0;
  if (!qword_1000100C0)
  {
    sub_1000085E4(&qword_1000100C8, &qword_1000093C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C0);
  }

  return result;
}

uint64_t sub_1000085E4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100008630()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

unint64_t sub_100008688()
{
  result = qword_1000100D8;
  if (!qword_1000100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D8);
  }

  return result;
}

unint64_t sub_1000086E0()
{
  result = qword_1000100E0;
  if (!qword_1000100E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E0);
  }

  return result;
}

unint64_t sub_100008738()
{
  result = qword_1000100E8;
  if (!qword_1000100E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E8);
  }

  return result;
}

unint64_t sub_100008790()
{
  result = qword_1000100F0;
  if (!qword_1000100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F0);
  }

  return result;
}

unint64_t sub_1000087E8()
{
  result = qword_1000100F8;
  if (!qword_1000100F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F8);
  }

  return result;
}

unint64_t sub_100008840()
{
  result = qword_100010100;
  if (!qword_100010100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010100);
  }

  return result;
}