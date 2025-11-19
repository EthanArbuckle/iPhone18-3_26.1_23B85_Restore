uint64_t sub_1000014F0()
{
  v0 = sub_100005104();
  sub_100004C38(v0, qword_10000C440);
  sub_1000040C0(v0, qword_10000C440);
  return sub_1000050F4();
}

uint64_t sub_100001570(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74754F64656D6974;
    if (a1 == 2)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (a1)
    {
      v5 = 0x7463657078656E75;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x6B72616D6B6F6F62;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000016C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000726F727245;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = 0x8000000100005710;
    v12 = 0xD000000000000017;
    if (a1 != 2)
    {
      v12 = 0xD000000000000012;
      v11 = 0x8000000100005730;
    }

    v13 = 0x7463657078656E75;
    v14 = 0xEF726F7272456465;
    if (!a1)
    {
      v13 = 0x74754F64656D6974;
      v14 = 0xED0000726F727245;
    }

    if (a1 <= 1u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v3 <= 1)
    {
      v10 = v14;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v4 = 0x8000000100005790;
    v5 = 0x6B72616D6B6F6F62;
    v6 = 0xEF65766968637241;
    if (a1 != 7)
    {
      v5 = 0xD000000000000011;
      v6 = 0x80000001000057C0;
    }

    if (a1 == 6)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v4 = v6;
    }

    v7 = 0x8000000100005750;
    v8 = 0xD000000000000014;
    if (a1 != 4)
    {
      v8 = 0xD000000000000010;
      v7 = 0x8000000100005770;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x8000000100005710;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v2 = 0x8000000100005730;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v2 = 0xEF726F7272456465;
      if (v9 != 0x7463657078656E75)
      {
        goto LABEL_52;
      }
    }

    else if (v9 != 0x74754F64656D6974)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = "emptyBookmarkName";
    }

    else
    {
      if (a2 == 7)
      {
        v2 = 0xEF65766968637241;
        if (v9 != 0x6B72616D6B6F6F62)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = "bookmarkUnarchive";
    }

    v2 = (v15 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v2 = 0x8000000100005750;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v2 = 0x8000000100005770;
    if (v9 != 0xD000000000000010)
    {
LABEL_52:
      v16 = sub_1000051A4();
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v10 != v2)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

Swift::Int sub_1000019A8()
{
  v1 = *v0;
  sub_1000051F4();
  sub_1000019F8();
  return sub_100005204();
}

uint64_t sub_1000019F8()
{
  sub_100005124();
}

Swift::Int sub_100001B78()
{
  v1 = *v0;
  sub_1000051F4();
  sub_1000019F8();
  return sub_100005204();
}

uint64_t sub_100001BBC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000048E4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100001BEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100001570(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100001C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  v4 = sub_100004FB4();
  v3[29] = v4;
  v5 = *(v4 - 8);
  v3[30] = v5;
  v6 = *(v5 + 64) + 15;
  v3[31] = swift_task_alloc();
  v7 = sub_100005024();
  v3[32] = v7;
  v8 = *(v7 - 8);
  v3[33] = v8;
  v9 = *(v8 + 64) + 15;
  v3[34] = swift_task_alloc();
  v10 = sub_1000050D4();
  v3[35] = v10;
  v11 = *(v10 - 8);
  v3[36] = v11;
  v12 = *(v11 + 64) + 15;
  v3[37] = swift_task_alloc();
  v13 = sub_100004FC4();
  v3[38] = v13;
  v14 = *(v13 - 8);
  v3[39] = v14;
  v15 = *(v14 + 64) + 15;
  v3[40] = swift_task_alloc();
  v16 = *(*(sub_100004078(&qword_10000C010, &qword_100005578) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v17 = *(*(sub_100004078(&qword_10000C018, &qword_100005580) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v18 = sub_100005014();
  v3[43] = v18;
  v19 = *(v18 - 8);
  v3[44] = v19;
  v20 = *(v19 + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v21 = sub_100004FA4();
  v3[49] = v21;
  v22 = *(v21 - 8);
  v3[50] = v22;
  v23 = *(v22 + 64) + 15;
  v3[51] = swift_task_alloc();
  v24 = *(*(sub_100004078(&qword_10000C020, &qword_100005588) - 8) + 64) + 15;
  v3[52] = swift_task_alloc();
  v25 = sub_100004078(&qword_10000C028, &qword_100005590);
  v3[53] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return _swift_task_switch(sub_100001FCC, 0, 0);
}

uint64_t sub_100001FCC()
{
  v25 = v0;
  if (qword_10000C0B0 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_100005104();
  v0[56] = sub_1000040C0(v2, qword_10000C440);
  v3 = v1;
  v4 = sub_1000050E4();
  v5 = sub_100005144();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_1000050B4();
    v10 = sub_10000420C(v8, v9, &v24);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1000050C4();
    v13 = sub_10000420C(v11, v12, &v24);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "TaskId: %s, TaskName: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = v0[28];
  v0[18] = v0[27];
  v0[19] = v14;
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  v0[57] = v16;
  v17 = sub_100004024();
  v18 = sub_100004140(&qword_10000C030, &qword_10000C038);
  v19 = sub_100004140(&qword_10000C040, &qword_10000C048);
  *v16 = v0;
  v16[1] = sub_100002280;
  v20 = v0[52];
  v21 = v0[53];
  v22 = v0[26];

  return MLHostExtension.loadConfig<A>(context:)(v20, v22, &type metadata for SiriCoreMetricsWorker, v21, v17, v18, v19);
}

uint64_t sub_100002280()
{
  v1 = *(*v0 + 456);
  v3 = *v0;

  return _swift_task_switch(sub_10000237C, 0, 0);
}

uint64_t sub_10000237C()
{
  v86 = v0;
  v1 = *(v0 + 416);
  v2 = sub_100004078(&qword_10000C050, &qword_100005598);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 440);
  if (v4 == 1)
  {
    sub_100004B00(v1, &qword_10000C020, &qword_100005588);
    v6 = sub_100004FE4();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    v7 = *(v0 + 440);
    sub_1000050A4();
    (*(v3 + 8))(v1, v2);
  }

  v9 = *(v0 + 432);
  v8 = *(v0 + 440);
  sub_100004078(&qword_10000C058, &qword_1000055A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 16) = xmmword_100005490;
  *(inited + 40) = 0x80000001000057E0;
  sub_100004BC0(v8, v9, &qword_10000C028, &qword_100005590);
  v11 = sub_100004FE4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = *(v0 + 432);
  if (v13 == 1)
  {
    sub_100004B00(*(v0 + 432), &qword_10000C028, &qword_100005590);
    *(inited + 72) = &type metadata for UInt64;
  }

  else
  {
    v15 = *(v0 + 432);
    v16 = sub_100004FD4();
    v18 = v17;
    (*(v12 + 8))(v14, v11);
    *(inited + 72) = &type metadata for UInt64;
    if ((v18 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v16 = 120000;
LABEL_8:
  v19 = *(v0 + 408);
  v20 = *(v0 + 384);
  v21 = *(v0 + 344);
  v22 = *(v0 + 352);
  v23 = *(v0 + 208);
  *(inited + 48) = v16;
  sub_100004930(inited);
  swift_setDeallocating();
  sub_100004B00(inited + 32, &qword_10000C060, &qword_1000055A8);
  v24 = v23;
  sub_100004F94();
  *v20 = 0;
  *(v0 + 488) = enum case for LighthouseRuntimeProcessorResult.error(_:);
  v25 = *(v22 + 104);
  v25(v20);
  v26 = sub_100004F84();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *(v0 + 200) = sub_100004F74();
  v29 = sub_100004078(&qword_10000C078, &qword_1000055B8);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_100005004();
  *(v0 + 464) = v32;
  if (v32)
  {
    v33 = *(v0 + 400);
    v34 = *(v0 + 392);
    v35 = *(v0 + 328);
    (*(v33 + 16))(v35, *(v0 + 408), v34);
    (*(v33 + 56))(v35, 0, 1, v34);
    v36 = async function pointer to LighthouseRuntimeProcessor.processAsync(withContext:)[1];
    v37 = swift_task_alloc();
    *(v0 + 472) = v37;
    *v37 = v0;
    v37[1] = sub_100002E4C;
    v39 = *(v0 + 328);
    v38 = *(v0 + 336);

    return LighthouseRuntimeProcessor.processAsync(withContext:)(v38, v39);
  }

  else
  {
    v40 = *(v0 + 376);
    v41 = *(v0 + 344);
    (*(*(v0 + 352) + 56))(*(v0 + 336), 1, 1, v41);
    (v25)(v40, enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:), v41);
    (*(*(v0 + 352) + 40))(*(v0 + 384), *(v0 + 376), *(v0 + 344));
    v42 = *(v0 + 448);
    v43 = sub_1000050E4();
    v44 = sub_100005154();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = *(v0 + 384);
      v46 = *(v0 + 368);
      v47 = *(v0 + 344);
      v48 = *(v0 + 352);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v85 = v50;
      *v49 = 136315138;
      swift_beginAccess();
      (*(v48 + 16))(v46, v45, v47);
      v51 = sub_100005114();
      v53 = sub_10000420C(v51, v52, &v85);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v43, v44, "Lighthouse runtime process result: %s", v49, 0xCu);
      sub_100004AB4(v50);
    }

    v54 = *(v0 + 488);
    v55 = *(v0 + 384);
    v57 = *(v0 + 352);
    v56 = *(v0 + 360);
    v58 = *(v0 + 344);
    swift_beginAccess();
    (*(v57 + 16))(v56, v55, v58);
    v59 = (*(v57 + 88))(v56, v58);
    if (v59 == v54 || v59 != enum case for LighthouseRuntimeProcessorResult.success(_:) && v59 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:) && v59 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:))
    {
      (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
    }

    v60 = *(v0 + 440);
    v62 = *(v0 + 400);
    v61 = *(v0 + 408);
    v63 = *(v0 + 384);
    v64 = *(v0 + 392);
    v65 = *(v0 + 344);
    v66 = *(v0 + 352);
    v67 = objc_allocWithZone(sub_100005064());
    v84 = sub_100005054();
    (*(v62 + 8))(v61, v64);
    sub_100004B00(v60, &qword_10000C028, &qword_100005590);
    (*(v66 + 8))(v63, v65);
    v69 = *(v0 + 432);
    v68 = *(v0 + 440);
    v71 = *(v0 + 408);
    v70 = *(v0 + 416);
    v73 = *(v0 + 376);
    v72 = *(v0 + 384);
    v75 = *(v0 + 360);
    v74 = *(v0 + 368);
    v76 = *(v0 + 328);
    v77 = *(v0 + 336);
    v80 = *(v0 + 320);
    v81 = *(v0 + 296);
    v82 = *(v0 + 272);
    v83 = *(v0 + 248);

    v78 = *(v0 + 8);

    return v78(v84);
  }
}

uint64_t sub_100002E4C()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = *(v2 + 464);
  sub_100004B00(*(v2 + 328), &qword_10000C010, &qword_100005578);

  if (v0)
  {
    v6 = sub_100003368;
  }

  else
  {
    v6 = sub_100002FAC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100002FAC()
{
  v49 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 336);
  (*(v3 + 56))(v4, 0, 1, v2);
  (*(v3 + 32))(v1, v4, v2);
  (*(*(v0 + 352) + 40))(*(v0 + 384), *(v0 + 376), *(v0 + 344));
  v5 = *(v0 + 448);
  v6 = sub_1000050E4();
  v7 = sub_100005154();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 384);
    v9 = *(v0 + 368);
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v12 = 136315138;
    swift_beginAccess();
    (*(v11 + 16))(v9, v8, v10);
    v14 = sub_100005114();
    v16 = sub_10000420C(v14, v15, &v48);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Lighthouse runtime process result: %s", v12, 0xCu);
    sub_100004AB4(v13);
  }

  v17 = *(v0 + 488);
  v18 = *(v0 + 384);
  v20 = *(v0 + 352);
  v19 = *(v0 + 360);
  v21 = *(v0 + 344);
  swift_beginAccess();
  (*(v20 + 16))(v19, v18, v21);
  v22 = (*(v20 + 88))(v19, v21);
  if (v22 == v17 || v22 != enum case for LighthouseRuntimeProcessorResult.success(_:) && v22 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:) && v22 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:))
  {
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
  }

  v23 = *(v0 + 440);
  v25 = *(v0 + 400);
  v24 = *(v0 + 408);
  v27 = *(v0 + 384);
  v26 = *(v0 + 392);
  v28 = *(v0 + 344);
  v29 = *(v0 + 352);
  v30 = objc_allocWithZone(sub_100005064());
  v47 = sub_100005054();
  (*(v25 + 8))(v24, v26);
  sub_100004B00(v23, &qword_10000C028, &qword_100005590);
  (*(v29 + 8))(v27, v28);
  v32 = *(v0 + 432);
  v31 = *(v0 + 440);
  v34 = *(v0 + 408);
  v33 = *(v0 + 416);
  v36 = *(v0 + 376);
  v35 = *(v0 + 384);
  v38 = *(v0 + 360);
  v37 = *(v0 + 368);
  v39 = *(v0 + 328);
  v40 = *(v0 + 336);
  v43 = *(v0 + 320);
  v44 = *(v0 + 296);
  v45 = *(v0 + 272);
  v46 = *(v0 + 248);

  v41 = *(v0 + 8);

  return v41(v47);
}

uint64_t sub_100003368()
{
  v78 = v0;
  v1 = *(v0 + 480);
  *(v0 + 160) = v1;
  v2 = (v0 + 160);
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  swift_errorRetain();
  sub_100004078(&qword_10000C068, &qword_1000055B0);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 312) + 88))(*(v0 + 320), *(v0 + 304));
    if (v5 == enum case for LighthouseRuntimeError.missingDataRecords(_:))
    {

      v6 = *v2;

      v7 = 3;
      goto LABEL_22;
    }

    if (v5 == enum case for LighthouseRuntimeError.missingWorkerResult(_:))
    {

      v8 = *v2;

      v7 = 4;
      goto LABEL_22;
    }

    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
  }

  v9 = *(v0 + 296);
  v10 = *(v0 + 280);
  v11 = *(v0 + 160);

  *(v0 + 168) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v12 = (*(*(v0 + 288) + 88))(*(v0 + 296), *(v0 + 280));
    if (v12 == enum case for StreamBookmarkStoreError.emptyBookmarkName(_:))
    {

      v13 = *(v0 + 168);

      v7 = 6;
      goto LABEL_22;
    }

    if (v12 == enum case for StreamBookmarkStoreError.bookmarkArchive(_:))
    {

      v14 = *(v0 + 168);

      v7 = 7;
      goto LABEL_22;
    }

    if (v12 == enum case for StreamBookmarkStoreError.bookmarkUnarchive(_:))
    {

      v15 = *(v0 + 168);

      v7 = 8;
      goto LABEL_22;
    }

    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  }

  v16 = *(v0 + 168);

  *(v0 + 176) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    v17 = *(v0 + 176);

    v7 = 5;
  }

  else
  {
    v18 = *(v0 + 272);
    v19 = *(v0 + 256);
    v20 = *(v0 + 176);

    *(v0 + 184) = v1;
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v21 = *(v0 + 264);
      v22 = *(v0 + 272);
      v23 = *(v0 + 256);

      (*(v21 + 8))(v22, v23);
      v24 = *(v0 + 184);

      v7 = 2;
    }

    else
    {
      v25 = *(v0 + 248);
      v26 = *(v0 + 232);
      v27 = *(v0 + 184);

      *(v0 + 192) = v1;
      swift_errorRetain();
      if (swift_dynamicCast())
      {
        v28 = *(v0 + 240);
        v29 = *(v0 + 248);
        v30 = *(v0 + 232);

        (*(v28 + 8))(v29, v30);
        v31 = *(v0 + 192);

        v7 = 0;
      }

      else
      {
        v32 = *(v0 + 192);

        v7 = 1;
      }
    }
  }

LABEL_22:
  v33 = *(v0 + 448);
  v34 = sub_1000050E4();
  v35 = sub_100005154();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 384);
    v37 = *(v0 + 368);
    v74 = v7;
    v39 = *(v0 + 344);
    v38 = *(v0 + 352);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v77[0] = v41;
    *v40 = 136315138;
    swift_beginAccess();
    (*(v38 + 16))(v37, v36, v39);
    v7 = v74;
    v42 = sub_100005114();
    v44 = sub_10000420C(v42, v43, v77);

    *(v40 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "Lighthouse runtime process result: %s", v40, 0xCu);
    sub_100004AB4(v41);
  }

  v45 = *(v0 + 488);
  v46 = *(v0 + 384);
  v48 = *(v0 + 352);
  v47 = *(v0 + 360);
  v49 = *(v0 + 344);
  swift_beginAccess();
  (*(v48 + 16))(v47, v46, v49);
  v50 = (*(v48 + 88))(v47, v49);
  if (v50 == v45 || v50 != enum case for LighthouseRuntimeProcessorResult.success(_:) && v50 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:) && v50 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:))
  {
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
  }

  v51 = *(v0 + 440);
  v53 = *(v0 + 400);
  v52 = *(v0 + 408);
  v55 = *(v0 + 384);
  v54 = *(v0 + 392);
  v56 = *(v0 + 344);
  v57 = *(v0 + 352);
  v77[3] = &type metadata for SiriCoreMetricsWorkerError;
  v77[4] = sub_100004A60();
  LOBYTE(v77[0]) = v7;
  v58 = objc_allocWithZone(sub_100005064());
  v76 = sub_100005044();
  (*(v53 + 8))(v52, v54);
  sub_100004B00(v51, &qword_10000C028, &qword_100005590);
  (*(v57 + 8))(v55, v56);
  v60 = *(v0 + 432);
  v59 = *(v0 + 440);
  v62 = *(v0 + 408);
  v61 = *(v0 + 416);
  v64 = *(v0 + 376);
  v63 = *(v0 + 384);
  v66 = *(v0 + 360);
  v65 = *(v0 + 368);
  v67 = *(v0 + 328);
  v68 = *(v0 + 336);
  v71 = *(v0 + 320);
  v72 = *(v0 + 296);
  v73 = *(v0 + 272);
  v75 = *(v0 + 248);

  v69 = *(v0 + 8);

  return v69(v76);
}

uint64_t sub_1000039E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100004F70;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100003A94(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003B3C;

  return sub_100001C28(a1, v5, v4);
}

uint64_t sub_100003B3C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100003C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100003D1C;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100003D1C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003E10(uint64_t a1)
{
  v2 = sub_100004024();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003ED8();
  sub_100005034();
  return 0;
}

unint64_t sub_100003ED8()
{
  result = qword_10000C000;
  if (!qword_10000C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C000);
  }

  return result;
}

__n128 sub_100003F2C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003F38(uint64_t a1, int a2)
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

uint64_t sub_100003F80(uint64_t result, int a2, int a3)
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

unint64_t sub_100004024()
{
  result = qword_10000C008;
  if (!qword_10000C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C008);
  }

  return result;
}

uint64_t sub_100004078(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000040C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000040F8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004140(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000040F8(&qword_10000C028, &qword_100005590);
    sub_1000041C8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000041C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004FE4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000420C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000042D8(v11, 0, 0, 1, a1, a2);
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
    sub_100004B60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004AB4(v11);
  return v7;
}

unint64_t sub_1000042D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000043E4(a5, a6);
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
    result = sub_100005174();
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

char *sub_1000043E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004430(a1, a2);
  sub_100004560(&off_100008640);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004430(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000464C(v5, 0);
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

  result = sub_100005174();
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
        v10 = sub_100005134();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000464C(v10, 0);
        result = sub_100005164();
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

uint64_t sub_100004560(uint64_t result)
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

  result = sub_1000046C0(result, v12, 1, v3);
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

void *sub_10000464C(uint64_t a1, uint64_t a2)
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

  sub_100004078(&qword_10000C080, &qword_1000055C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000046C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004078(&qword_10000C080, &qword_1000055C0);
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

unint64_t sub_1000047B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000051F4();
  sub_100005124();
  v6 = sub_100005204();

  return sub_10000482C(a1, a2, v6);
}

unint64_t sub_10000482C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000051A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000048E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008548;
  v6._object = a2;
  v4 = sub_100005194(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100004930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004078(&qword_10000C088, &qword_1000055C8);
    v3 = sub_100005184();
    v4 = a1 + 32;

    while (1)
    {
      sub_100004BC0(v4, &v13, &qword_10000C060, &qword_1000055A8);
      v5 = v13;
      v6 = v14;
      result = sub_1000047B4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100004C28(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_100004A60()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

uint64_t sub_100004AB4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004B00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004078(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004B60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004BC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004078(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100004C28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_100004C38(uint64_t a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for SiriCoreMetricsWorkerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriCoreMetricsWorkerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100004E14()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100004E6C()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_100004EC4()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_100004F1C()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}