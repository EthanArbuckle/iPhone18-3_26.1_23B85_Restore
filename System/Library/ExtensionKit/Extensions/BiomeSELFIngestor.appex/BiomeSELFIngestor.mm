uint64_t sub_1000012B0()
{
  v0 = sub_10000758C();
  sub_100007378(v0, qword_1000100E8);
  sub_1000052F4(v0, qword_1000100E8);
  return sub_10000757C();
}

uint64_t BiomeSELFIngestorExtension.ingest(dataPool:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_1000052AC(&qword_100010008, &qword_100007A18) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_1000052AC(&qword_100010010, &qword_100007A20);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = sub_1000073DC();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  v9 = *(*(sub_1000052AC(&qword_100010018, &qword_100007A28) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v10 = sub_1000052AC(&qword_100010020, &qword_100007A30);
  v1[14] = v10;
  v11 = *(v10 - 8);
  v1[15] = v11;
  v12 = *(v11 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v13 = sub_10000759C();
  v1[19] = v13;
  v14 = *(v13 - 8);
  v1[20] = v14;
  v15 = *(v14 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v16 = sub_10000747C();
  v1[23] = v16;
  v17 = *(v16 - 8);
  v1[24] = v17;
  v18 = *(v17 + 64) + 15;
  v1[25] = swift_task_alloc();
  v19 = *(*(sub_1000052AC(&qword_100010028, &qword_100007A38) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v20 = sub_10000754C();
  v1[28] = v20;
  v21 = *(v20 - 8);
  v1[29] = v21;
  v22 = *(v21 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v23 = *(*(sub_1000052AC(&qword_100010030, &qword_100007A40) - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v24 = sub_10000742C();
  v1[34] = v24;
  v25 = *(v24 - 8);
  v1[35] = v25;
  v26 = *(v25 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v27 = sub_10000744C();
  v1[38] = v27;
  v28 = *(v27 - 8);
  v1[39] = v28;
  v29 = *(v28 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();

  return _swift_task_switch(sub_100001804, 0, 0);
}

uint64_t sub_100001804()
{
  if (qword_1000100E0 != -1)
  {
    swift_once();
  }

  v1 = sub_10000758C();
  *(v0 + 352) = sub_1000052F4(v1, qword_1000100E8);
  v2 = sub_10000756C();
  v3 = sub_10000763C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "INGESTING!", v4, 2u);
  }

  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_1000075EC();
  v7 = [v5 initWithSuiteName:v6];
  *(v0 + 360) = v7;

  if (v7)
  {
    v8 = *(v0 + 344);
    v78 = *(v0 + 336);
    v103 = *(v0 + 312);
    v75 = *(v0 + 304);
    v9 = *(v0 + 296);
    v10 = *(v0 + 280);
    v93 = *(v0 + 272);
    v11 = *(v0 + 264);
    v71 = *(v0 + 248);
    v100 = *(v0 + 232);
    v95 = *(v0 + 224);
    v65 = *(v0 + 200);
    v72 = *(v0 + 216);
    v73 = *(v0 + 192);
    v69 = *(v0 + 184);
    v74 = *(v0 + 176);
    v12 = *(v0 + 160);
    v13 = *(v0 + 152);
    v14 = *(v0 + 120);
    v15 = sub_10000740C();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    *(v0 + 368) = sub_1000073FC();
    sub_10000743C();
    sub_1000052AC(&qword_100010038, &qword_100007A48);
    v63 = v14;
    *(v0 + 376) = *(v14 + 72);
    *(v0 + 664) = *(v14 + 80);
    *(v0 + 384) = swift_allocObject();
    *v9 = 0xD000000000000020;
    v9[1] = 0x8000000100007D50;
    v81 = enum case for IngestStreamId.swift(_:);
    v18 = *(v10 + 104);
    v97 = v18;
    *(v0 + 392) = v18;
    *(v0 + 400) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v18(v9);
    sub_1000075AC();
    v19 = *(v12 + 56);
    *(v0 + 408) = v19;
    *(v0 + 416) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v87 = v19;
    v19(v11, 0, 1, v13);
    v91 = enum case for EventPath.root(_:);
    v83 = *(v100 + 104);
    v83(v71);
    v89 = *(v103 + 16);
    *(v0 + 424) = v89;
    *(v0 + 432) = (v103 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v89(v78, v8, v75);
    v20 = sub_1000074EC();
    *(v0 + 440) = v20;
    v85 = v20;
    v62 = *(v20 - 8);
    v21 = *(v62 + 56);
    *(v0 + 448) = v21;
    *(v0 + 456) = (v62 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v21(v72, 1, 1, v20);
    sub_100006F58(0, &qword_100010040, SISchemaTopLevelUnionType_ptr);
    v70 = v11;
    sub_10000745C();
    *v9 = 0xD000000000000027;
    v9[1] = 0x8000000100007D80;
    v97(v9, v81, v93);
    sub_1000075AC();
    v87(v11, 0, 1, v13);
    (v83)(v71, v91, v95);
    v89(v78, v8, v75);
    v21(v72, 1, 1, v85);
    sub_1000052AC(&qword_100010048, &qword_100007A50);
    v22 = *(sub_10000749C() - 8);
    v68 = *(v22 + 72);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_1000079E0;
    v66 = enum case for RequestLinkConfig.Direction.targetComponent(_:);
    v67 = *(v73 + 104);
    v67(v65);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    sub_10000745C();
    *v9 = 0xD000000000000028;
    v9[1] = 0x8000000100007DB0;
    v97(v9, v81, v93);
    sub_1000075AC();
    v87(v70, 0, 1, v13);
    (v83)(v71, v91, v95);
    v89(v78, v8, v75);
    v21(v72, 1, 1, v85);
    *(swift_allocObject() + 16) = xmmword_1000079E0;
    sub_1000075BC();
    sub_1000075BC();
    sub_10000746C();
    sub_10000745C();
    *v9 = 0xD000000000000029;
    v9[1] = 0x8000000100007DE0;
    v97(v9, v81, v93);
    sub_1000075AC();
    v87(v70, 0, 1, v13);
    (v83)(v71, v91, v95);
    v89(v78, v8, v75);
    v21(v72, 1, 1, v85);
    *(swift_allocObject() + 16) = xmmword_1000079F0;
    (v67)(v65, v66, v69);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    v64 = enum case for RequestLinkConfig.Direction.sourceComponent(_:);
    v67(v65);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    sub_10000745C();
    *v9 = 0xD000000000000023;
    v9[1] = 0x8000000100007E10;
    v97(v9, v81, v93);
    sub_1000075AC();
    v87(v70, 0, 1, v13);
    (v83)(v71, v91, v95);
    v89(v78, v8, v75);
    v21(v72, 1, 1, v85);
    *(swift_allocObject() + 16) = xmmword_1000079F0;
    (v67)(v65, v64, v69);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    (v67)(v65, v64, v69);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    sub_10000745C();
    *v9 = 0xD000000000000024;
    v9[1] = 0x8000000100007E40;
    v97(v9, v81, v93);
    sub_1000075AC();
    v87(v70, 0, 1, v13);
    (v83)(v71, v91, v95);
    v89(v78, v8, v75);
    v21(v72, 1, 1, v85);
    *(swift_allocObject() + 16) = xmmword_1000079E0;
    (v67)(v65, v66, v69);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    sub_10000745C();
    *v9 = 0xD000000000000022;
    v9[1] = 0x8000000100007E70;
    v97(v9, v81, v93);
    sub_1000075AC();
    v87(v70, 0, 1, v13);
    (v83)(v71, v91, v95);
    v89(v78, v8, v75);
    v21(v72, 1, 1, v85);
    *(swift_allocObject() + 16) = xmmword_1000079F0;
    (v67)(v65, v64, v69);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    (v67)(v65, v64, v69);
    sub_1000075AC();
    sub_1000075AC();
    sub_10000748C();
    v24 = v9;
    sub_10000745C();
    *v9 = 0xD000000000000023;
    v9[1] = 0x8000000100007EA0;
    v97(v9, v81, v93);
    sub_1000075AC();
    v87(v70, 0, 1, v13);
    (v83)(v71, v91, v95);
    v89(v78, v8, v75);
    sub_1000052AC(&qword_100010050, &qword_100007A58);
    v25 = *(v12 + 72);
    v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1000079E0;
    sub_1000075AC();
    v28 = sub_100006D88(v27);
    swift_setDeallocating();
    (*(v12 + 8))(v27 + v26, v13);
    swift_deallocClassInstance();
    *v72 = v28;
    (*(v62 + 104))(v72, enum case for MessageFilteringPolicy.denylist(_:), v85);
    v21(v72, 0, 1, v85);
    sub_10000745C();
    *v24 = 0xD000000000000028;
    v24[1] = 0x8000000100007ED0;
    v97(v24, v81, v93);
    sub_1000075BC();
    v87(v70, 0, 1, v13);
    (v83)(v71, v91, v95);
    v89(v78, v8, v75);
    v21(v72, 1, 1, v85);
    *(swift_allocObject() + 16) = xmmword_1000079E0;
    sub_1000075BC();
    sub_1000075BC();
    sub_10000746C();
    sub_10000745C();
    v29 = *(v63 + 16);
    *(v0 + 464) = v29;
    *(v0 + 472) = 0;
    v30 = *(v0 + 384);
    v101 = *(v0 + 360);
    v104 = *(v0 + 368);
    v31 = *(v0 + 136);
    v32 = *(v0 + 144);
    v33 = *(v0 + 112);
    v34 = *(v0 + 96);
    v98 = *(v0 + 104);
    v35 = *(v0 + 80);
    v36 = *(v0 + 88);
    v37 = *(v0 + 16);
    v38 = *(v0 + 120) + 16;
    v39 = (*(v0 + 664) + 32) & ~*(v0 + 664);
    *(v0 + 480) = &_swiftEmptyArrayStorage;
    *(v0 + 488) = v38 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v32, v30 + v39, v33);
    v40 = *(v36 + 16);
    *(v0 + 496) = v40;
    *(v0 + 504) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v40(v34, v37, v35);
    v29(v31, v32, v33);
    *(v0 + 512) = sub_100006FA0(&qword_100010058, &qword_100010020, &qword_100007A30);
    sub_100006FA0(&qword_100010060, &qword_100010020, &qword_100007A30);
    sub_1000074DC();
    v29(v31, v32, v33);
    v41 = sub_1000052AC(&qword_100010068, &qword_100007A60);
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    v44 = v101;

    *(v0 + 520) = sub_1000074FC();
    v45 = *(&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + 1);
    v105 = (&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest());
    v46 = swift_task_alloc();
    *(v0 + 528) = v46;
    *v46 = v0;
    v46[1] = sub_100003098;

    return v105();
  }

  else
  {
    v48 = sub_10000756C();
    v49 = sub_10000762C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed to initialize user defaults", v50, 2u);
    }

    v52 = *(v0 + 336);
    v51 = *(v0 + 344);
    v54 = *(v0 + 320);
    v53 = *(v0 + 328);
    v55 = *(v0 + 288);
    v56 = *(v0 + 296);
    v58 = *(v0 + 256);
    v57 = *(v0 + 264);
    v60 = *(v0 + 240);
    v59 = *(v0 + 248);
    v76 = *(v0 + 216);
    v77 = *(v0 + 208);
    v79 = *(v0 + 200);
    v80 = *(v0 + 176);
    v82 = *(v0 + 168);
    v84 = *(v0 + 144);
    v86 = *(v0 + 136);
    v88 = *(v0 + 128);
    v90 = *(v0 + 104);
    v92 = *(v0 + 96);
    v94 = *(v0 + 72);
    v96 = *(v0 + 64);
    v99 = *(v0 + 56);
    v102 = *(v0 + 48);
    v106 = *(v0 + 24);

    v61 = *(v0 + 8);

    return v61();
  }
}

uint64_t sub_100003098()
{
  v2 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_1000042A4;
  }

  else
  {
    v3 = sub_1000031AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000031AC()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 472) + 1;
  if (*(v0 + 472) != 8)
  {
    *(v0 + 472) = v5;
    v29 = *(v0 + 464);
    v97 = *(v0 + 360);
    v100 = *(v0 + 368);
    v30 = *(v0 + 136);
    v31 = *(v0 + 144);
    v32 = *(v0 + 112);
    v33 = *(v0 + 96);
    v94 = *(v0 + 104);
    v34 = *(v0 + 80);
    v35 = *(v0 + 88);
    v36 = *(v0 + 16);
    v37 = *(v0 + 384) + ((*(v0 + 664) + 32) & ~*(v0 + 664)) + *(v0 + 376) * v5;
    *(v0 + 488) = (*(v0 + 120) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v31, v37, v32);
    v38 = *(v35 + 16);
    *(v0 + 496) = v38;
    *(v0 + 504) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v38(v33, v36, v34);
    v29(v30, v31, v32);
    *(v0 + 512) = sub_100006FA0(&qword_100010058, &qword_100010020, &qword_100007A30);
    sub_100006FA0(&qword_100010060, &qword_100010020, &qword_100007A30);
    sub_1000074DC();
    v29(v30, v31, v32);
    v39 = sub_1000052AC(&qword_100010068, &qword_100007A60);
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = v97;

    *(v0 + 520) = sub_1000074FC();
    v43 = *(&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + 1);
    v101 = (&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest());
    v44 = swift_task_alloc();
    *(v0 + 528) = v44;
    *v44 = v0;
    v45 = sub_100003098;
LABEL_13:
    v44[1] = v45;
    goto LABEL_14;
  }

  v6 = *(v0 + 536);
  v7 = *(v0 + 480);
  v8 = *(v0 + 384);
  v9 = *(v0 + 344);
  v10 = *(v0 + 304);
  v11 = *(v0 + 312);
  v12 = *(v0 + 112);
  v13 = (*(v0 + 664) + 32) & ~*(v0 + 664);
  v14 = *(v11 + 8);
  *(v0 + 544) = v14;
  *(v0 + 552) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v9, v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v15 = sub_1000074CC();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_1000074BC();
  LOBYTE(v12) = sub_1000074AC();

  if (v12)
  {
    v96 = v6;
    v99 = v7;
    v90 = *(v0 + 424);
    v91 = *(v0 + 432);
    v86 = *(v0 + 408);
    v87 = *(v0 + 416);
    v18 = *(v0 + 392);
    v19 = *(v0 + 400);
    v20 = *(v0 + 328);
    v88 = *(v0 + 320);
    v89 = *(v0 + 304);
    v21 = *(v0 + 288);
    v22 = *(v0 + 272);
    v23 = *(v0 + 256);
    v93 = *(v0 + 208);
    v84 = *(v0 + 152);
    v85 = *(v0 + 240);
    sub_1000052AC(&qword_100010070, &qword_100007A68);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1000079E0;
    v25 = *(v15 + 48);
    v26 = *(v15 + 52);
    swift_allocObject();
    v27 = sub_1000074BC();
    *(v24 + 56) = v15;
    *(v24 + 64) = &protocol witness table for RequireInternalBuild;
    *(v24 + 32) = v27;
    sub_10000743C();
    *v21 = sub_1000075EC();
    v18(v21, enum case for IngestStreamId.objc(_:), v22);
    sub_1000075AC();
    v86(v23, 0, 1, v84);
    sub_10000753C();
    v90(v88, v20, v89);
    sub_100006F58(0, &qword_100010078, BMIntelligenceFlowTranscriptDatastreamEvent_ptr);
    sub_10000764C();
    if (v96)
    {

      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    v53 = *(v0 + 456);
    v54 = *(v0 + 320);
    v55 = *(v0 + 288);
    v56 = *(v0 + 256);
    v57 = *(v0 + 240);
    v58 = *(v0 + 72);
    (*(v0 + 448))(*(v0 + 208), v28, 1, *(v0 + 440));
    sub_10000745C();
    v59 = sub_100005834(0, 1, 1, &_swiftEmptyArrayStorage);
    v60 = *(v59 + 2);
    *(v0 + 560) = v60;
    v61 = *(v59 + 3);
    if (v60 >= v61 >> 1)
    {
      v59 = sub_100005834(v61 > 1, v60 + 1, 1, v59);
    }

    *(v0 + 568) = v59;
    v62 = *(v0 + 72);
    v63 = *(v0 + 32);
    v64 = *(v0 + 40);
    *(v59 + 2) = v60 + 1;
    v65 = *(v64 + 32);
    v64 += 32;
    v66 = *(v64 + 48);
    *(v0 + 668) = v66;
    v67 = *(v64 + 40);
    *(v0 + 576) = v67;
    v65(&v59[((v66 + 32) & ~v66) + v67 * v60], v62, v63);
    v68 = *(v64 - 16);
    *(v0 + 584) = v68;
    *(v0 + 600) = v99;
    *(v0 + 592) = 0;
    v69 = *(v0 + 568);
    v70 = *(v0 + 496);
    v92 = *(v0 + 504);
    v98 = *(v0 + 360);
    v102 = *(v0 + 368);
    v71 = *(v0 + 96);
    v72 = *(v0 + 80);
    v73 = *(v0 + 56);
    v74 = *(v0 + 64);
    v75 = *(v0 + 32);
    v76 = *(v0 + 16);
    v95 = *(v0 + 24);
    v77 = (*(v0 + 668) + 32) & ~*(v0 + 668);
    *(v0 + 608) = (*(v0 + 40) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v68(v74, v69 + v77, v75);
    v70(v71, v76, v72);
    v68(v73, v74, v75);
    *(v0 + 616) = sub_100006FA0(&qword_100010080, &qword_100010010, &qword_100007A20);
    sub_10000750C();
    v68(v73, v74, v75);
    v78 = sub_1000052AC(&qword_100010088, &qword_100007A70);
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    swift_allocObject();
    v81 = v98;

    *(v0 + 624) = sub_1000074FC();
    v82 = *(&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + 1);
    v101 = (&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest());
    v44 = swift_task_alloc();
    *(v0 + 632) = v44;
    *v44 = v0;
    v45 = sub_100003A10;
    goto LABEL_13;
  }

  *(v0 + 648) = v7;
  v46 = *(v0 + 352);
  v47 = sub_10000756C();
  v48 = sub_10000761C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Emitting streams telemetry", v49, 2u);
  }

  v50 = *(&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + 1);
  v101 = (&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + async function pointer to dispatch thunk of OLEStreamTelemetry.emit());
  v51 = swift_task_alloc();
  *(v0 + 656) = v51;
  *v51 = v0;
  v51[1] = sub_100003E90;
  v52 = *(v0 + 368);
LABEL_14:

  return v101();
}

uint64_t sub_100003A10()
{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = sub_100004D24;
  }

  else
  {
    v3 = sub_100003B24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100003B24()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 592);
  if (v5 == *(v0 + 560))
  {
    v6 = *(v0 + 600);
    v7 = *(v0 + 568);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    v10 = *(v0 + 328);
    v11 = *(v0 + 304);

    v9(v10, v11);
    *(v0 + 648) = v6;
    v12 = *(v0 + 352);
    v13 = sub_10000756C();
    v14 = sub_10000761C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Emitting streams telemetry", v15, 2u);
    }

    v16 = *(&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + 1);
    v39 = (&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + async function pointer to dispatch thunk of OLEStreamTelemetry.emit());
    v17 = swift_task_alloc();
    *(v0 + 656) = v17;
    *v17 = v0;
    v17[1] = sub_100003E90;
    v18 = *(v0 + 368);
  }

  else
  {
    v19 = v5 + 1;
    *(v0 + 592) = v19;
    v20 = *(v0 + 584);
    v21 = *(v0 + 496);
    v38 = *(v0 + 360);
    v40 = *(v0 + 368);
    v22 = *(v0 + 96);
    v23 = *(v0 + 80);
    v24 = *(v0 + 56);
    v25 = *(v0 + 64);
    v26 = *(v0 + 32);
    v27 = *(v0 + 16);
    v36 = *(v0 + 504);
    v37 = *(v0 + 24);
    v28 = *(v0 + 568) + ((*(v0 + 668) + 32) & ~*(v0 + 668)) + *(v0 + 576) * v19;
    *(v0 + 608) = (*(v0 + 40) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v20(v25, v28, v26);
    v21(v22, v27, v23);
    v20(v24, v25, v26);
    *(v0 + 616) = sub_100006FA0(&qword_100010080, &qword_100010010, &qword_100007A20);
    sub_10000750C();
    v20(v24, v25, v26);
    v29 = sub_1000052AC(&qword_100010088, &qword_100007A70);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = v38;

    *(v0 + 624) = sub_1000074FC();
    v33 = *(&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + 1);
    v39 = (&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest());
    v34 = swift_task_alloc();
    *(v0 + 632) = v34;
    *v34 = v0;
    v34[1] = sub_100003A10;
  }

  return v39();
}

uint64_t sub_100003E90()
{
  v1 = *(*v0 + 656);
  v3 = *v0;

  return _swift_task_switch(sub_100003F8C, 0, 0);
}

uint64_t sub_100003F8C()
{
  v1 = v0[81];
  v3 = v0[45];
  v2 = v0[46];
  if (*(v1 + 16))
  {
    v5 = v0[42];
    v4 = v0[43];
    v7 = v0[40];
    v6 = v0[41];
    v8 = v0[37];
    v22 = v0[36];
    v23 = v0[33];
    v24 = v0[32];
    v25 = v0[31];
    v26 = v0[30];
    v27 = v0[27];
    v29 = v0[26];
    v31 = v0[25];
    v33 = v0[22];
    v35 = v0[21];
    v37 = v0[18];
    v39 = v0[17];
    v41 = v0[16];
    v43 = v0[13];
    v45 = v0[12];
    v47 = v0[9];
    v49 = v0[8];
    v51 = v0[7];
    v53 = v0[6];
    v55 = v0[3];
    v9 = *(v1 + 32);
    swift_errorRetain();

    swift_willThrow();
  }

  else
  {

    v12 = v0[42];
    v11 = v0[43];
    v14 = v0[40];
    v13 = v0[41];
    v15 = v0[36];
    v16 = v0[37];
    v18 = v0[32];
    v17 = v0[33];
    v20 = v0[30];
    v19 = v0[31];
    v28 = v0[27];
    v30 = v0[26];
    v32 = v0[25];
    v34 = v0[22];
    v36 = v0[21];
    v38 = v0[18];
    v40 = v0[17];
    v42 = v0[16];
    v44 = v0[13];
    v46 = v0[12];
    v48 = v0[9];
    v50 = v0[8];
    v52 = v0[7];
    v54 = v0[6];
    v56 = v0[3];
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000042A4()
{
  v129 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 488);
  v3 = *(v0 + 352);
  (*(v0 + 464))(*(v0 + 128), *(v0 + 144), *(v0 + 112));
  swift_errorRetain();
  v4 = sub_10000756C();
  v5 = sub_10000762C();

  if (os_log_type_enabled(v4, v5))
  {
    v119 = *(v0 + 536);
    v6 = *(v0 + 512);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    v9 = *(v0 + 112);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v128 = v123;
    *v10 = 136315394;
    v12 = sub_10000741C();
    v14 = v13;
    v15 = v8;
    v16 = *(v7 + 8);
    v16(v15, v9);
    v17 = sub_100005A24(v12, v14, &v128);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error ingesting %s: %@", v10, 0x16u);
    sub_100006FE8(v11);

    sub_100007050(v123);
  }

  else
  {
    v20 = *(v0 + 120);
    v19 = *(v0 + 128);
    v21 = *(v0 + 112);

    v16 = *(v20 + 8);
    v16(v19, v21);
  }

  v22 = *(v0 + 480);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v0 + 480);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_100005700(0, v24[2] + 1, 1, *(v0 + 480));
  }

  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_100005700((v25 > 1), v26 + 1, 1, v24);
  }

  v27 = *(v0 + 536);
  v28 = *(v0 + 520);
  v29 = *(v0 + 144);
  v30 = *(v0 + 112);
  v31 = *(v0 + 120);

  v16(v29, v30);
  v24[2] = v26 + 1;
  v24[v26 + 4] = v27;
  v32 = *(v0 + 472) + 1;
  if (*(v0 + 472) != 8)
  {
    *(v0 + 472) = v32;
    *(v0 + 480) = v24;
    v52 = *(v0 + 464);
    v121 = *(v0 + 360);
    v125 = *(v0 + 368);
    v53 = *(v0 + 136);
    v54 = *(v0 + 144);
    v55 = *(v0 + 112);
    v56 = *(v0 + 96);
    v117 = *(v0 + 104);
    v57 = *(v0 + 80);
    v58 = *(v0 + 88);
    v59 = *(v0 + 16);
    v60 = *(v0 + 384) + ((*(v0 + 664) + 32) & ~*(v0 + 664)) + *(v0 + 376) * v32;
    *(v0 + 488) = (*(v0 + 120) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v52(v54, v60, v55);
    v61 = *(v58 + 16);
    *(v0 + 496) = v61;
    *(v0 + 504) = (v58 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v61(v56, v59, v57);
    v52(v53, v54, v55);
    *(v0 + 512) = sub_100006FA0(&qword_100010058, &qword_100010020, &qword_100007A30);
    sub_100006FA0(&qword_100010060, &qword_100010020, &qword_100007A30);
    sub_1000074DC();
    v52(v53, v54, v55);
    v62 = sub_1000052AC(&qword_100010068, &qword_100007A60);
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    v65 = v121;

    *(v0 + 520) = sub_1000074FC();
    v66 = *(&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + 1);
    v126 = (&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest());
    v67 = swift_task_alloc();
    *(v0 + 528) = v67;
    *v67 = v0;
    v68 = sub_100003098;
LABEL_18:
    v67[1] = v68;
    goto LABEL_19;
  }

  v33 = *(v0 + 384);
  v34 = *(v0 + 344);
  v35 = *(v0 + 304);
  v36 = *(v0 + 312);
  v37 = *(v0 + 112);
  v38 = (*(v0 + 664) + 32) & ~*(v0 + 664);
  v39 = *(v36 + 8);
  *(v0 + 544) = v39;
  *(v0 + 552) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39(v34, v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v40 = sub_1000074CC();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  sub_1000074BC();
  LOBYTE(v37) = sub_1000074AC();

  if (v37)
  {
    v116 = *(v0 + 424);
    v120 = *(v0 + 432);
    v111 = *(v0 + 408);
    v112 = *(v0 + 416);
    v43 = *(v0 + 392);
    v44 = *(v0 + 328);
    v113 = *(v0 + 320);
    v114 = *(v0 + 304);
    v45 = *(v0 + 288);
    v46 = *(v0 + 272);
    v47 = *(v0 + 256);
    v110 = *(v0 + 240);
    v124 = *(v0 + 208);
    v108 = *(v0 + 400);
    v109 = *(v0 + 152);
    sub_1000052AC(&qword_100010070, &qword_100007A68);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1000079E0;
    v49 = *(v40 + 48);
    v50 = *(v40 + 52);
    swift_allocObject();
    v51 = sub_1000074BC();
    *(v48 + 56) = v40;
    *(v48 + 64) = &protocol witness table for RequireInternalBuild;
    *(v48 + 32) = v51;
    sub_10000743C();
    *v45 = sub_1000075EC();
    v43(v45, enum case for IngestStreamId.objc(_:), v46);
    sub_1000075AC();
    v111(v47, 0, 1, v109);
    sub_10000753C();
    v116(v113, v44, v114);
    sub_100006F58(0, &qword_100010078, BMIntelligenceFlowTranscriptDatastreamEvent_ptr);
    sub_10000764C();
    v76 = *(v0 + 456);
    v77 = *(v0 + 320);
    v78 = *(v0 + 288);
    v79 = *(v0 + 256);
    v80 = *(v0 + 240);
    v81 = *(v0 + 72);
    (*(v0 + 448))(*(v0 + 208), 0, 1, *(v0 + 440));
    LOBYTE(v128) = 1;
    sub_10000745C();
    v82 = sub_100005834(0, 1, 1, &_swiftEmptyArrayStorage);
    v83 = v82;
    v84 = v82[2];
    *(v0 + 560) = v84;
    v85 = v82[3];
    if (v84 >= v85 >> 1)
    {
      v83 = sub_100005834(v85 > 1, v84 + 1, 1, v82);
    }

    *(v0 + 568) = v83;
    v86 = *(v0 + 72);
    v87 = *(v0 + 32);
    v88 = *(v0 + 40);
    *(v83 + 16) = v84 + 1;
    v89 = *(v88 + 32);
    v88 += 32;
    v90 = *(v88 + 48);
    *(v0 + 668) = v90;
    v91 = *(v88 + 40);
    *(v0 + 576) = v91;
    v89(v83 + ((v90 + 32) & ~v90) + v91 * v84, v86, v87);
    v92 = *(v88 - 16);
    *(v0 + 584) = v92;
    *(v0 + 600) = v24;
    *(v0 + 592) = 0;
    v93 = *(v0 + 568);
    v94 = *(v0 + 496);
    v115 = *(v0 + 504);
    v122 = *(v0 + 360);
    v127 = *(v0 + 368);
    v95 = *(v0 + 96);
    v96 = *(v0 + 80);
    v97 = *(v0 + 56);
    v98 = *(v0 + 64);
    v99 = *(v0 + 32);
    v100 = *(v0 + 16);
    v118 = *(v0 + 24);
    v101 = (*(v0 + 668) + 32) & ~*(v0 + 668);
    *(v0 + 608) = (*(v0 + 40) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v92(v98, v93 + v101, v99);
    v94(v95, v100, v96);
    v92(v97, v98, v99);
    *(v0 + 616) = sub_100006FA0(&qword_100010080, &qword_100010010, &qword_100007A20);
    sub_10000750C();
    v92(v97, v98, v99);
    v102 = sub_1000052AC(&qword_100010088, &qword_100007A70);
    v103 = *(v102 + 48);
    v104 = *(v102 + 52);
    swift_allocObject();
    v105 = v122;

    *(v0 + 624) = sub_1000074FC();
    v106 = *(&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + 1);
    v126 = (&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest());
    v67 = swift_task_alloc();
    *(v0 + 632) = v67;
    *v67 = v0;
    v68 = sub_100003A10;
    goto LABEL_18;
  }

  *(v0 + 648) = v24;
  v69 = *(v0 + 352);
  v70 = sub_10000756C();
  v71 = sub_10000761C();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v70, v71, "Emitting streams telemetry", v72, 2u);
  }

  v73 = *(&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + 1);
  v126 = (&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + async function pointer to dispatch thunk of OLEStreamTelemetry.emit());
  v74 = swift_task_alloc();
  *(v0 + 656) = v74;
  *v74 = v0;
  v74[1] = sub_100003E90;
  v75 = *(v0 + 368);
LABEL_19:

  return v126();
}

uint64_t sub_100004D24()
{
  v70 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 608);
  v3 = *(v0 + 352);
  (*(v0 + 584))(*(v0 + 48), *(v0 + 64), *(v0 + 32));
  swift_errorRetain();
  v4 = sub_10000756C();
  v5 = sub_10000762C();

  if (os_log_type_enabled(v4, v5))
  {
    v64 = *(v0 + 640);
    v6 = *(v0 + 616);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v69 = v66;
    *v10 = 136315394;
    v12 = sub_10000741C();
    v14 = v13;
    v15 = v8;
    v16 = *(v7 + 8);
    v16(v15, v9);
    v17 = sub_100005A24(v12, v14, &v69);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error ingesting %s: %@", v10, 0x16u);
    sub_100006FE8(v11);

    sub_100007050(v66);
  }

  else
  {
    v20 = *(v0 + 40);
    v19 = *(v0 + 48);
    v21 = *(v0 + 32);

    v16 = *(v20 + 8);
    v16(v19, v21);
  }

  v22 = *(v0 + 600);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v0 + 600);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_100005700(0, v24[2] + 1, 1, *(v0 + 600));
  }

  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_100005700((v25 > 1), v26 + 1, 1, v24);
  }

  v27 = *(v0 + 640);
  v28 = *(v0 + 624);
  v29 = *(v0 + 64);
  v30 = *(v0 + 32);
  v31 = *(v0 + 40);

  v16(v29, v30);
  v24[2] = v26 + 1;
  v24[v26 + 4] = v27;
  v32 = *(v0 + 592);
  if (v32 == *(v0 + 560))
  {
    v33 = *(v0 + 568);
    v34 = *(v0 + 552);
    v35 = *(v0 + 544);
    v36 = *(v0 + 328);
    v37 = *(v0 + 304);

    v35(v36, v37);
    *(v0 + 648) = v24;
    v38 = *(v0 + 352);
    v39 = sub_10000756C();
    v40 = sub_10000761C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Emitting streams telemetry", v41, 2u);
    }

    v42 = *(&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + 1);
    v67 = (&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + async function pointer to dispatch thunk of OLEStreamTelemetry.emit());
    v43 = swift_task_alloc();
    *(v0 + 656) = v43;
    *v43 = v0;
    v43[1] = sub_100003E90;
    v44 = *(v0 + 368);
  }

  else
  {
    v45 = v32 + 1;
    *(v0 + 600) = v24;
    *(v0 + 592) = v45;
    v46 = *(v0 + 584);
    v47 = *(v0 + 496);
    v65 = *(v0 + 360);
    v68 = *(v0 + 368);
    v48 = *(v0 + 96);
    v49 = *(v0 + 80);
    v50 = *(v0 + 56);
    v51 = *(v0 + 64);
    v52 = *(v0 + 32);
    v53 = *(v0 + 16);
    v62 = *(v0 + 504);
    v63 = *(v0 + 24);
    v54 = *(v0 + 568) + ((*(v0 + 668) + 32) & ~*(v0 + 668)) + *(v0 + 576) * v45;
    *(v0 + 608) = (*(v0 + 40) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v46(v51, v54, v52);
    v47(v48, v53, v49);
    v46(v50, v51, v52);
    *(v0 + 616) = sub_100006FA0(&qword_100010080, &qword_100010010, &qword_100007A20);
    sub_10000750C();
    v46(v50, v51, v52);
    v55 = sub_1000052AC(&qword_100010088, &qword_100007A70);
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    v58 = v65;

    *(v0 + 624) = sub_1000074FC();
    v59 = *(&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + 1);
    v67 = (&async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest() + async function pointer to dispatch thunk of BiomeEventIngestProcessor.ingest());
    v60 = swift_task_alloc();
    *(v0 + 632) = v60;
    *v60 = v0;
    v60[1] = sub_100003A10;
  }

  return v67();
}

uint64_t sub_1000052AC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000052F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005374@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = objc_allocWithZone(sub_10000752C());
  sub_1000072E0(a1, a2);
  result = sub_10000751C();
  *a3 = result;
  return result;
}

void __swiftcall BiomeSELFIngestorExtension.init()()
{
  if (qword_1000100E0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000758C();
  sub_1000052F4(v0, qword_1000100E8);
  oslog = sub_10000756C();
  v1 = sub_10000763C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Initializing", v2, 2u);
  }
}

uint64_t sub_1000054CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005560;

  return BiomeSELFIngestorExtension.ingest(dataPool:)(a1);
}

uint64_t sub_100005560()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100005654(uint64_t a1)
{
  v2 = sub_100007148();

  return IngestionExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000709C();
  sub_10000755C();
  return 0;
}

void *sub_100005700(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000052AC(&qword_1000100B8, &qword_100007B50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000052AC(&qword_1000100C0, &qword_100007B58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100005834(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000052AC(&qword_1000100B0, &qword_100007B48);
  v10 = *(sub_1000052AC(&qword_100010010, &qword_100007A20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000052AC(&qword_100010010, &qword_100007A20) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100005A24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005AF0(v11, 0, 0, 1, a1, a2);
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
    sub_100007280(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007050(v11);
  return v7;
}

unint64_t sub_100005AF0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005BFC(a5, a6);
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
    result = sub_10000768C();
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

char *sub_100005BFC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005C48(a1, a2);
  sub_100005D78(&off_10000C498);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100005C48(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005E64(v5, 0);
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

  result = sub_10000768C();
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
        v10 = sub_1000075FC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005E64(v10, 0);
        result = sub_10000767C();
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

uint64_t sub_100005D78(uint64_t result)
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

  result = sub_100005ED8(result, v12, 1, v3);
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

void *sub_100005E64(uint64_t a1, uint64_t a2)
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

  sub_1000052AC(&qword_1000100A8, &qword_100007B40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005ED8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000052AC(&qword_1000100A8, &qword_100007B40);
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

uint64_t sub_100005FCC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10000759C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100007334(&qword_1000100C8);
  v36 = a2;
  v13 = sub_1000075CC();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100007334(&qword_1000100D0);
      v23 = sub_1000075DC();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1000065CC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100006284(uint64_t a1)
{
  v2 = v1;
  v41 = sub_10000759C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000052AC(&qword_1000100D8, &qword_100007B60);
  result = sub_10000766C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100007334(&qword_1000100C8);
      result = sub_1000075CC();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1000065CC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_10000759C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100006284(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100006848();
      goto LABEL_12;
    }

    sub_100006A80(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100007334(&qword_1000100C8);
  v15 = sub_1000075CC();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100007334(&qword_1000100D0);
      v23 = sub_1000075DC();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10000769C();
  __break(1u);
  return result;
}

void *sub_100006848()
{
  v1 = v0;
  v2 = sub_10000759C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000052AC(&qword_1000100D8, &qword_100007B60);
  v7 = *v0;
  v8 = sub_10000765C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_100006A80(uint64_t a1)
{
  v2 = v1;
  v37 = sub_10000759C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000052AC(&qword_1000100D8, &qword_100007B60);
  v10 = sub_10000766C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100007334(&qword_1000100C8);
      result = sub_1000075CC();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100006D88(uint64_t a1)
{
  v2 = sub_10000759C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_100007334(&qword_1000100C8);
  result = sub_10000760C();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_100005FCC(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_100006F10(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100006F58(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100006FA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006F10(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006FE8(uint64_t a1)
{
  v2 = sub_1000052AC(&qword_100010090, &unk_100007A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007050(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_10000709C()
{
  result = qword_100010098;
  if (!qword_100010098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010098);
  }

  return result;
}

unint64_t sub_100007148()
{
  result = qword_1000100A0;
  if (!qword_1000100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BiomeSELFIngestorExtension(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BiomeSELFIngestorExtension(_WORD *result, int a2, int a3)
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

uint64_t sub_100007280(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000072E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100007334(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000759C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100007378(uint64_t a1, uint64_t *a2)
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