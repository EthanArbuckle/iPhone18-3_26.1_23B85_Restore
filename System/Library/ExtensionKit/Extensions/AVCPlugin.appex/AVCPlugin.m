uint64_t sub_100001658()
{
  v1[2] = v0;
  v2 = *(*(sub_100007F18(&qword_10001C298, &qword_1000135F0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for AVCDataMetadata(0);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100001750, 0, 0);
}

uint64_t sub_100001750()
{
  v1 = v0[2];
  if ((*(v1 + 56) & 1) == 0)
  {
    sub_100008034();
    swift_allocError();
    *v6 = 16;
    if ((sub_10000DFFC(*(v1 + 64), *(v1 + 72)) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = v0[6];
    v17 = v0[3];

    v18 = v0[1];
    goto LABEL_11;
  }

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  sub_10000D0F4(v4);
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    v7 = v0[6];
    v8 = v0[4];
    sub_100008504(v0[3], v7, type metadata accessor for AVCDataMetadata);
    sub_100008034();
    swift_allocError();
    *v9 = 0;
    v10 = [objc_opt_self() defaultManager];
    v11 = (v7 + *(v8 + 20));
    v12 = *v11;
    v13 = v11[1];
    v14 = sub_100012D18();
    LODWORD(v8) = [v10 fileExistsAtPath:v14];

    v15 = v0[6];
    if (!v8)
    {
      swift_willThrow();
      sub_10000856C(v15, type metadata accessor for AVCDataMetadata);
      goto LABEL_10;
    }

    sub_10000856C(v15, type metadata accessor for AVCDataMetadata);
    goto LABEL_8;
  }

  sub_1000084A4(v0[3], &qword_10001C298, &qword_1000135F0);
  sub_100008034();
  swift_allocError();
  *v5 = 2;
LABEL_9:
  swift_willThrow();
LABEL_10:
  v19 = v0[6];
  v20 = v0[3];

  v18 = v0[1];
LABEL_11:

  return v18();
}

uint64_t sub_1000019B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = *(*(sub_100007F18(&qword_10001C298, &qword_1000135F0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for AVCDataMetadata(0);
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v8 = *(v7 + 64) + 15;
  v4[17] = swift_task_alloc();
  v9 = *(*(sub_100007F18(&qword_10001C268, &qword_1000135D0) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v10 = sub_100012848();
  v4[19] = v10;
  v11 = *(v10 - 8);
  v4[20] = v11;
  v12 = *(v11 + 64) + 15;
  v4[21] = swift_task_alloc();
  v13 = sub_1000128A8();
  v4[22] = v13;
  v14 = *(v13 - 8);
  v4[23] = v14;
  v15 = *(v14 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v16 = *(*(sub_100007F18(&qword_10001C328, &unk_100013668) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v17 = type metadata accessor for AVCModelMetadata(0);
  v4[29] = v17;
  v18 = *(v17 - 8);
  v4[30] = v18;
  v19 = *(v18 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_100001C64, 0, 0);
}

uint64_t sub_100001C64()
{
  v1 = v0[13];
  sub_1000083D0(v0[11], (v0 + 2));
  swift_beginAccess();
  sub_100008434((v0 + 2), v1 + 16);
  swift_endAccess();
  if (*(v1 + 56))
  {
    if (qword_10001C150 != -1)
    {
      swift_once();
    }

    v2 = v0[30];
    v117 = v0[29];
    v4 = v0[26];
    v3 = v0[27];
    v6 = v0[22];
    v5 = v0[23];
    v7 = v0[18];
    v115 = *(v0[20] + 104);
    v115(v0[21], enum case for URL.DirectoryHint.notDirectory(_:), v0[19]);
    v113 = *(v5 + 56);
    v113(v7, 1, 1, v6);

    sub_100012888();
    sub_10000D77C(v3);
    v8 = *(v5 + 8);
    v8(v4, v6);
    if ((*(v2 + 48))(v3, 1, v117) == 1)
    {
      v9 = v0[11];
      sub_1000084A4(v0[27], &qword_10001C328, &unk_100013668);
      v10 = v9[4];
      sub_100008324(v9, v9[3]);
      v11 = sub_100012B78();
      v13 = v12;
      v0[51] = v12;
      sub_100008034();
      v0[52] = swift_allocError();
      *v14 = 17;
      v15 = async function pointer to static PFLTelemetry.sendPFLPluginLocation(location:plugin:taskId:useCase:error:forwardToMLHost:)[1];
      v16 = swift_task_alloc();
      v0[53] = v16;
      *v16 = v0;
      v17 = sub_1000039A4;
LABEL_6:
      v16[1] = v17;
      v18 = 0x6E69617274;
LABEL_13:
      v38 = v11;
      v39 = v13;
      v40 = 0xE500000000000000;
LABEL_25:

      return static PFLTelemetry.sendPFLPluginLocation(location:plugin:taskId:useCase:error:forwardToMLHost:)(0x5465766C6F736572, 0xEB000000006B7361, 0xD00000000000002ALL, 0x8000000100014340, v38, v39, v18, v40);
    }

    v29 = v0[15];
    v30 = v0[16];
    v31 = v0[14];
    sub_100008504(v0[27], v0[31], type metadata accessor for AVCModelMetadata);
    sub_10000D0F4(v31);
    if ((*(v30 + 48))(v31, 1, v29) == 1)
    {
      v32 = v0[11];
      sub_1000084A4(v0[14], &qword_10001C298, &qword_1000135F0);
      v33 = v32[4];
      sub_100008324(v32, v32[3]);
      v11 = sub_100012B78();
      v13 = v34;
      v0[48] = v34;
      sub_100008034();
      v0[49] = swift_allocError();
      *v35 = 2;
      v36 = async function pointer to static PFLTelemetry.sendPFLPluginLocation(location:plugin:taskId:useCase:error:forwardToMLHost:)[1];
      v37 = swift_task_alloc();
      v0[50] = v37;
      *v37 = v0;
      v37[1] = sub_10000371C;
      v18 = 0x6E69617274;
      goto LABEL_13;
    }

    v54 = v0[31];
    v55 = v0[29];
    v56 = v0[11];
    sub_100008504(v0[14], v0[17], type metadata accessor for AVCDataMetadata);
    v57 = (v54 + *(v55 + 28));
    v58 = *v57;
    v59 = v57[1];
    v60 = v56[4];
    sub_100008324(v56, v56[3]);
    if (v58 == sub_100012B78() && v59 == v61)
    {
    }

    else
    {
      v75 = sub_100012F48();

      if ((v75 & 1) == 0)
      {
        v86 = v56[3];
        v85 = v56[4];
        sub_100008324(v0[11], v86);
        v11 = sub_100012B78();
        v13 = v87;
        v0[39] = v87;
        sub_100008034();
        v0[40] = swift_allocError();
        *v88 = 7;
        v89 = async function pointer to static PFLTelemetry.sendPFLPluginLocation(location:plugin:taskId:useCase:error:forwardToMLHost:)[1];
        v16 = swift_task_alloc();
        v0[41] = v16;
        *v16 = v0;
        v17 = sub_100002F10;
        goto LABEL_6;
      }
    }

    v76 = (v0[17] + *(v0[15] + 24));
    v77 = *v76;
    v78 = v76[1];
    v79 = v56[4];
    sub_100008324(v0[11], v56[3]);
    if (v77 == sub_100012B78() && v78 == v80)
    {
    }

    else
    {
      v81 = sub_100012F48();

      if ((v81 & 1) == 0)
      {
        v108 = v56[3];
        v107 = v56[4];
        sub_100008324(v0[11], v108);
        v11 = sub_100012B78();
        v13 = v109;
        v0[42] = v109;
        sub_100008034();
        v0[43] = swift_allocError();
        *v110 = 19;
        v111 = async function pointer to static PFLTelemetry.sendPFLPluginLocation(location:plugin:taskId:useCase:error:forwardToMLHost:)[1];
        v16 = swift_task_alloc();
        v0[44] = v16;
        *v16 = v0;
        v17 = sub_1000031CC;
        goto LABEL_6;
      }
    }

    if (qword_10001C148 != -1)
    {
      swift_once();
    }

    v82 = v0[24];
    v83 = v0[21];
    v84 = v0[19];
    v119 = v0[12];
    v113(v0[18], 1, 1, v0[22]);
    v115(v83, enum case for URL.DirectoryHint.inferFromPath(_:), v84);

    sub_100012888();
    sub_100012BF8();
    v90 = sub_100012BB8();
    v91 = v0[31];
    v92 = v0[17];
    v93 = v0[10];
    v8(v0[24], v0[22]);
    sub_10000856C(v92, type metadata accessor for AVCDataMetadata);
    sub_10000856C(v91, type metadata accessor for AVCModelMetadata);
    *v93 = v90;
    v94 = enum case for TaskResolution.cached(_:);
    v95 = sub_100012AB8();
    (*(*(v95 - 8) + 104))(v93, v94, v95);
  }

  else
  {
    if (qword_10001C150 != -1)
    {
      swift_once();
    }

    v19 = v0[30];
    v118 = v0[29];
    v20 = v0[28];
    v21 = v0[26];
    v22 = v0[22];
    v23 = v0[23];
    v24 = v0[18];
    v116 = *(v0[20] + 104);
    v116(v0[21], enum case for URL.DirectoryHint.notDirectory(_:), v0[19]);
    v114 = *(v23 + 56);
    v114(v24, 1, 1, v22);

    sub_100012888();
    sub_10000D77C(v20);
    v25 = *(v23 + 8);
    v25(v21, v22);
    if ((*(v19 + 48))(v20, 1, v118) == 1)
    {
      v26 = v0[10];
      sub_1000084A4(v0[28], &qword_10001C328, &unk_100013668);
      v27 = enum case for TaskResolution.download(_:);
      v28 = sub_100012AB8();
      (*(*(v28 - 8) + 104))(v26, v27, v28);
    }

    else
    {
      v41 = v0[32];
      v42 = v0[29];
      v43 = v0[11];
      sub_100008504(v0[28], v41, type metadata accessor for AVCModelMetadata);
      v44 = (v41 + *(v42 + 28));
      v45 = *v44;
      v46 = v44[1];
      v47 = v43[4];
      sub_100008324(v43, v43[3]);
      if (v45 == sub_100012B78() && v46 == v48)
      {
      }

      else
      {
        v49 = sub_100012F48();

        if ((v49 & 1) == 0)
        {
          v68 = v43[3];
          v67 = v43[4];
          sub_100008324(v0[11], v68);
          v69 = sub_100012B78();
          v71 = v70;
          v0[36] = v70;
          sub_100008034();
          v0[37] = swift_allocError();
          *v72 = 7;
          v73 = async function pointer to static PFLTelemetry.sendPFLPluginLocation(location:plugin:taskId:useCase:error:forwardToMLHost:)[1];
          v74 = swift_task_alloc();
          v0[38] = v74;
          *v74 = v0;
          v74[1] = sub_100002DDC;
          v18 = 0x64616F6C6E776F64;
          v38 = v69;
          v39 = v71;
          v40 = 0xE800000000000000;
          goto LABEL_25;
        }
      }

      if (qword_10001C148 != -1)
      {
        swift_once();
      }

      v50 = v0[25];
      v51 = v0[21];
      v52 = v0[19];
      v53 = v0[12];
      v114(v0[18], 1, 1, v0[22]);
      v116(v51, enum case for URL.DirectoryHint.inferFromPath(_:), v52);

      sub_100012888();
      sub_100012BF8();
      v62 = sub_100012BB8();
      v63 = v0[32];
      v64 = v0[10];
      v25(v0[25], v0[22]);
      sub_10000856C(v63, type metadata accessor for AVCModelMetadata);
      *v64 = v62;
      v65 = enum case for TaskResolution.cached(_:);
      v66 = sub_100012AB8();
      (*(*(v66 - 8) + 104))(v64, v65, v66);
    }
  }

  v97 = v0[31];
  v96 = v0[32];
  v99 = v0[27];
  v98 = v0[28];
  v101 = v0[25];
  v100 = v0[26];
  v102 = v0[24];
  v103 = v0[21];
  v105 = v0[17];
  v104 = v0[18];
  v120 = v0[14];

  v106 = v0[1];

  return v106();
}

uint64_t sub_100002B40()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v5 = *v0;

  return _swift_task_switch(sub_100002C74, 0, 0);
}

uint64_t sub_100002C74()
{
  sub_10000E4CC();
  v1 = v0[10];
  sub_10000856C(v0[32], type metadata accessor for AVCModelMetadata);
  v2 = enum case for TaskResolution.download(_:);
  v3 = sub_100012AB8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[24];
  v11 = v0[21];
  v13 = v0[17];
  v12 = v0[18];
  v16 = v0[14];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100002DDC()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v5 = *v0;

  return _swift_task_switch(sub_1000085D0, 0, 0);
}

uint64_t sub_100002F10()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 312);
  v5 = *v0;

  return _swift_task_switch(sub_100003044, 0, 0);
}

uint64_t sub_100003044()
{
  sub_10000E4CC();
  v1 = v0[31];
  v2 = v0[10];
  sub_10000856C(v0[17], type metadata accessor for AVCDataMetadata);
  sub_10000856C(v1, type metadata accessor for AVCModelMetadata);
  v3 = enum case for TaskResolution.skip(_:);
  v4 = sub_100012AB8();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  v12 = v0[21];
  v14 = v0[17];
  v13 = v0[18];
  v17 = v0[14];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000031CC()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v5 = *v0;

  return _swift_task_switch(sub_100003300, 0, 0);
}

uint64_t sub_100003300()
{
  v1 = v0[31];
  v2 = v0[10];
  sub_10000856C(v0[17], type metadata accessor for AVCDataMetadata);
  sub_10000856C(v1, type metadata accessor for AVCModelMetadata);
  v3 = enum case for TaskResolution.skip(_:);
  v4 = sub_100012AB8();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  v12 = v0[21];
  v14 = v0[17];
  v13 = v0[18];
  v17 = v0[14];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100003474()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 360);
  v5 = *v0;

  return _swift_task_switch(sub_1000035A8, 0, 0);
}

uint64_t sub_1000035A8()
{
  v1 = v0[31];
  v2 = v0[10];
  sub_10000856C(v0[17], type metadata accessor for AVCDataMetadata);
  sub_10000856C(v1, type metadata accessor for AVCModelMetadata);
  v3 = enum case for TaskResolution.download(_:);
  v4 = sub_100012AB8();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  v12 = v0[21];
  v14 = v0[17];
  v13 = v0[18];
  v17 = v0[14];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10000371C()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 384);
  v5 = *v0;

  return _swift_task_switch(sub_100003850, 0, 0);
}

uint64_t sub_100003850()
{
  v1 = v0[10];
  sub_10000856C(v0[31], type metadata accessor for AVCModelMetadata);
  v2 = enum case for TaskResolution.skip(_:);
  v3 = sub_100012AB8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[24];
  v11 = v0[21];
  v13 = v0[17];
  v12 = v0[18];
  v16 = v0[14];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000039A4()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 408);
  v5 = *v0;

  return _swift_task_switch(sub_100003AD8, 0, 0);
}

uint64_t sub_100003AD8()
{
  v1 = v0[10];
  v2 = enum case for TaskResolution.skip(_:);
  v3 = sub_100012AB8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[24];
  v11 = v0[21];
  v13 = v0[17];
  v12 = v0[18];
  v16 = v0[14];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100003C10()
{
  v1[14] = v0;
  v2 = sub_100012C48();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100003CDC, 0, 0);
}

uint64_t sub_100003CDC()
{
  v14 = v0;
  v1 = v0[14];
  swift_beginAccess();
  sub_100008260(v1 + 16, (v0 + 2), &qword_10001C270, &qword_1000135D8);
  v2 = v0[5];
  sub_1000084A4((v0 + 2), &qword_10001C270, &qword_1000135D8);
  if (!v2)
  {
    sub_10000E4CC();
    v6 = v0[18];
    sub_100012A18();
    v7 = sub_100012C38();
    v8 = sub_100012DC8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Downloaded model (if exists) removed successfully.", v9, 2u);
    }

    v10 = v0[18];
    v11 = v0[15];
    v12 = v0[16];

    (*(v12 + 8))(v10, v11);
  }

  v4 = v0[17];
  v3 = v0[18];

  v5 = v0[1];

  return v5();
}

unint64_t sub_100003FB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007F18(&qword_10001C288, &qword_1000135E0);
    v2 = sub_100012E88();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_100008370(*(a1 + 48) + 40 * v14, v29);
        sub_1000082C8(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_100008370(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1000082C8(v27 + 8, v22);
        sub_1000084A4(v26, &qword_10001C2F8, &qword_100013638);
        v23 = v20;
        sub_100008024(v22, v24);
        v15 = v23;
        sub_100008024(v24, v25);
        sub_100008024(v25, &v23);
        result = sub_100004F8C(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100008214(v12);
          result = sub_100008024(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_100008024(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_1000084A4(v26, &qword_10001C2F8, &qword_100013638);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10000428C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 61)
  {
    __break(1u);
  }

  else
  {
    v2 = 4 * v1;
    if (4 * v1)
    {
      if (v2 <= 14)
      {
        return sub_100006804((result + 32), (result + 32 + v2));
      }

      else
      {
        v3 = sub_100012828();
        v4 = *(v3 + 48);
        v5 = *(v3 + 52);
        swift_allocObject();
        sub_100012818();
        if (v2 >= 0x7FFFFFFF)
        {
          sub_1000128C8();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v2;
        }

        else
        {
          return v1 << 34;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100004354()
{
  sub_1000084A4(v0 + 16, &qword_10001C270, &qword_1000135D8);

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_1000043F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000044A4;

  return sub_1000019B4(a1, a2, a3);
}

uint64_t sub_1000044A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100004598()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000044A4;

  return sub_100001658();
}

uint64_t sub_100004628()
{
  v1 = sub_100012A58();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100004688()
{
  v1 = sub_100012A68();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_1000046E8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004798;

  return (sub_100007AF0)(a1);
}

uint64_t sub_100004798(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1000048A4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000085CC;

  return sub_100003C10();
}

uint64_t sub_100004934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000085CC;

  return PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)(a1, a2, a3);
}

uint64_t sub_1000049E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004AB0(v11, 0, 0, 1, a1, a2);
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
    sub_1000082C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008214(v11);
  return v7;
}

unint64_t sub_100004AB0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004BBC(a5, a6);
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
    result = sub_100012E48();
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

char *sub_100004BBC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004C08(a1, a2);
  sub_100004D38(&off_100018BA8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004C08(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004E24(v5, 0);
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

  result = sub_100012E48();
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
        v10 = sub_100012D78();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004E24(v10, 0);
        result = sub_100012E18();
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

uint64_t sub_100004D38(uint64_t result)
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

  result = sub_100004E98(result, v12, 1, v3);
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

void *sub_100004E24(uint64_t a1, uint64_t a2)
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

  sub_100007F18(&qword_10001C320, &qword_100013660);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004E98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007F18(&qword_10001C320, &qword_100013660);
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

unint64_t sub_100004F8C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100012FB8();
  sub_100012D58();
  v6 = sub_100012FD8();

  return sub_100005004(a1, a2, v6);
}

unint64_t sub_100005004(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100012F48())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000050BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1000082C8((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_100005108(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007F18(&qword_10001C288, &qword_1000135E0);
  v36 = a2;
  result = sub_100012E78();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100008024(v25, v37);
      }

      else
      {
        sub_1000082C8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_100012FB8();
      sub_100012D58();
      result = sub_100012FD8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100008024(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_1000053C0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100004F8C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10000557C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100005108(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100004F8C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_100012F58();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100008214(v23);

    return sub_100008024(a1, v23);
  }

  else
  {
    sub_100005510(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_100005510(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100008024(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10000557C()
{
  v1 = v0;
  sub_100007F18(&qword_10001C288, &qword_1000135E0);
  v2 = *v0;
  v3 = sub_100012E68();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000082C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100008024(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_100005720(char *a1, int64_t a2, char a3)
{
  result = sub_1000057A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100005740(char *a1, int64_t a2, char a3)
{
  result = sub_1000058A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100005760(char *a1, int64_t a2, char a3)
{
  result = sub_1000059A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100005780(char *a1, int64_t a2, char a3)
{
  result = sub_100005AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000057A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007F18(&qword_10001C300, &qword_100013640);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1000058A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007F18(&qword_10001C308, &qword_100013648);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000059A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007F18(&qword_10001C318, &qword_100013658);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100005AAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007F18(&qword_10001C310, &qword_100013650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_100005BB0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000082C8(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_100008024(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_1000084A4(v22, &qword_10001C2F0, &qword_100013630);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100005D10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007F18(&qword_10001C288, &qword_1000135E0);
    v3 = sub_100012E88();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008260(v4, &v13, &qword_10001C290, &qword_1000135E8);
      v5 = v13;
      v6 = v14;
      result = sub_100004F8C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100008024(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100005E40(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_100012C48();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v6 = sub_100012848();
  v2[24] = v6;
  v7 = *(v6 - 8);
  v2[25] = v7;
  v8 = *(v7 + 64) + 15;
  v2[26] = swift_task_alloc();
  v9 = *(*(sub_100007F18(&qword_10001C268, &qword_1000135D0) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v10 = sub_1000128A8();
  v2[28] = v10;
  v11 = *(v10 - 8);
  v2[29] = v11;
  v12 = *(v11 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_100005FFC, 0, 0);
}

uint64_t sub_100005FFC()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_100008260(v1 + 16, v0 + 56, &qword_10001C270, &qword_1000135D8);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 232);
    v3 = *(v0 + 152);
    sub_100007FB8((v0 + 56), v0 + 16);
    result = sub_100012B98();
    v5 = result;
    v6 = 0;
    v45 = (v2 + 8);
    v46 = *(result + 16);
    while (v46 != v6)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v2 + 16))(*(v0 + 248), v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v6, *(v0 + 224));
      *(v0 + 120) = sub_100012868(1);
      *(v0 + 128) = v7;
      if (qword_10001C148 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 248);
      v9 = *(v0 + 224);
      v10 = *algn_10001DE58;
      *(v0 + 136) = qword_10001DE50;
      *(v0 + 144) = v10;
      sub_100007FD0();
      v11 = sub_100012DE8();

      v12 = *v45;
      result = (*v45)(v8, v9);
      ++v6;
      if ((v11 & 1) == 0)
      {
        v20 = (v0 + 240);
        v44 = *(v0 + 240);
        v21 = *(v0 + 232);
        v22 = *(v0 + 208);
        v23 = *(v0 + 216);
        v24 = *(v0 + 200);
        v42 = *(v0 + 224);
        v43 = *(v0 + 192);
        v47 = *(v0 + 152);

        (*(v21 + 56))(v23, 1, 1, v42);
        (*(v24 + 104))(v22, enum case for URL.DirectoryHint.inferFromPath(_:), v43);

        sub_100012888();
        sub_10000E840((v0 + 16), v47, v44);
        v31 = (v0 + 224);
        goto LABEL_16;
      }
    }

    v20 = (v0 + 184);
    v15 = *(v0 + 184);

    sub_100012A18();
    v16 = sub_100012C38();
    v17 = sub_100012DC8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Skip saving task because it is already cached.", v18, 2u);
    }

    v19 = *(v0 + 176);

    v12 = *(v19 + 8);
    v31 = (v0 + 168);
LABEL_16:
    v33 = *(v0 + 240);
    v32 = *(v0 + 248);
    v35 = *(v0 + 208);
    v34 = *(v0 + 216);
    v36 = *(v0 + 184);
    v12(*v20, *v31);
    sub_100005D10(&_swiftEmptyArrayStorage);
    v37 = sub_100012A48();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = sub_100012A38();
    sub_100008214((v0 + 16));

    v41 = *(v0 + 8);

    return v41(v40);
  }

  else
  {
    sub_1000084A4(v0 + 56, &qword_10001C270, &qword_1000135D8);
    v13 = sub_100012C08();
    sub_100007F60();
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for PFLError.unexpected(_:), v13);
    swift_willThrow();
    v26 = *(v0 + 240);
    v25 = *(v0 + 248);
    v28 = *(v0 + 208);
    v27 = *(v0 + 216);
    v29 = *(v0 + 184);

    v30 = *(v0 + 8);

    return v30();
  }
}

unint64_t sub_1000064F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_100005BB0(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_100008024(v46, v44);
  v14 = *a5;
  result = sub_100004F8C(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_100005108(v20, a4 & 1);
    v22 = *a5;
    result = sub_100004F8C(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_100012F58();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_10000557C();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    sub_100008214(v26);
    sub_100008024(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_100008024(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_100005BB0(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_100008024(v46, v44);
        v33 = *a5;
        result = sub_100004F8C(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_100005108(v37, 1);
          v38 = *a5;
          result = sub_100004F8C(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          sub_100008214(v32);
          sub_100008024(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_100008024(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_100005BB0(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_100008368();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100006804(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000068BC(uint64_t a1, uint64_t a2)
{
  v2[113] = a2;
  v2[112] = a1;
  v3 = sub_100012C48();
  v2[114] = v3;
  v4 = *(v3 - 8);
  v2[115] = v4;
  v5 = *(v4 + 64) + 15;
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v6 = *(*(sub_100012D48() - 8) + 64) + 15;
  v2[118] = swift_task_alloc();
  v7 = *(*(sub_100007F18(&qword_10001C298, &qword_1000135F0) - 8) + 64) + 15;
  v2[119] = swift_task_alloc();
  v8 = type metadata accessor for AVCDataMetadata(0);
  v2[120] = v8;
  v9 = *(v8 - 8);
  v2[121] = v9;
  v10 = *(v9 + 64) + 15;
  v2[122] = swift_task_alloc();

  return _swift_task_switch(sub_100006A4C, 0, 0);
}

unint64_t sub_100006A4C()
{
  v128 = v0;
  sub_1000121D4();
  sub_100012998();
  sub_100012988();
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = sub_100012BA8();
  if (!v6)
  {
    v22 = *(v0 + 928);
    sub_100012A18();
    v23 = sub_100012C38();
    v24 = sub_100012DC8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get model", v25, 2u);
    }

    v26 = *(v0 + 928);
    v27 = *(v0 + 920);
    v28 = *(v0 + 912);

    (*(v27 + 8))(v26, v28);
    sub_100008034();
    swift_allocError();
    v21 = 1;
    goto LABEL_9;
  }

  v7 = v5;
  v8 = v6;
  v9 = *(v0 + 968);
  v10 = *(v0 + 960);
  v11 = *(v0 + 952);
  sub_10000D0F4(v11);
  if ((*(v9 + 48))(v11, 1, v10) == 1)
  {
    v12 = *(v0 + 952);
    v13 = *(v0 + 936);

    sub_1000084A4(v12, &qword_10001C298, &qword_1000135F0);
    sub_100012A18();
    v14 = sub_100012C38();
    v15 = sub_100012DC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to get metadata for training data", v16, 2u);
    }

    v17 = *(v0 + 936);
    v18 = *(v0 + 920);
    v19 = *(v0 + 912);

    (*(v18 + 8))(v17, v19);
    sub_100008034();
    swift_allocError();
    v21 = 2;
LABEL_9:
    *v20 = v21;
    swift_willThrow();
LABEL_22:
    v54 = *(v0 + 976);
    v55 = *(v0 + 952);
    v56 = *(v0 + 944);
    v57 = *(v0 + 936);
    v58 = *(v0 + 928);

    v59 = *(v0 + 8);

    return v59();
  }

  v29 = *(v0 + 976);
  v30 = *(v0 + 960);
  sub_100008504(*(v0 + 952), v29, type metadata accessor for AVCDataMetadata);
  sub_100008034();
  swift_allocError();
  *v31 = 0;
  v32 = [objc_opt_self() defaultManager];
  v33 = (v29 + *(v30 + 20));
  v35 = *v33;
  v34 = v33[1];
  v36 = sub_100012D18();
  v37 = [v32 fileExistsAtPath:v36];

  v38 = *(v0 + 976);
  if (!v37)
  {
    swift_willThrow();

LABEL_21:
    sub_10000856C(v38, type metadata accessor for AVCDataMetadata);
    goto LABEL_22;
  }

  v39 = *(v0 + 960);
  v40 = *(v0 + 896);

  v41 = (v38 + *(v39 + 24));
  v42 = *v41;
  v43 = v41[1];
  if (v42 == sub_100012BE8() && v43 == v44)
  {
  }

  else
  {
    v45 = sub_100012F48();

    if ((v45 & 1) == 0)
    {
      v38 = *(v0 + 976);

      swift_allocError();
      v53 = 19;
      goto LABEL_20;
    }
  }

  v46 = *(v0 + 904);
  v47 = *(v0 + 896);
  v48 = *(v46 + 56);
  v49 = *(v46 + 64);
  sub_100012BA8();
  if (!v50)
  {
    v38 = *(v0 + 976);

    swift_allocError();
    v53 = 8;
LABEL_20:
    *v52 = v53;
    swift_willThrow();
    goto LABEL_21;
  }

  v51 = *(v0 + 944);
  sub_100012D38();
  v61 = sub_100012D08();
  v63 = v62;

  *(v0 + 824) = v61;
  *(v0 + 832) = v63;
  *(v0 + 840) = 10;
  *(v0 + 848) = 0xE100000000000000;
  *(v0 + 856) = 28252;
  *(v0 + 864) = 0xE200000000000000;
  sub_100008088();
  v120 = sub_1000080DC();
  v121 = &protocol witness table for Character;
  sub_100012DB8();

  v64 = *(v0 + 808);
  v65 = *(v0 + 816);
  v124 = sub_100005D10(&_swiftEmptyArrayStorage);
  v66 = sub_100012B58();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  sub_100012B48();
  sub_100012B28();
  sub_100012C98();
  sub_100012C88();
  v69 = *(v0 + 904);

  sub_100012B38();
  v71 = v70;
  sub_100012B28();
  sub_100007F18(&qword_10001C2B8, &qword_1000135F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000134B0;
  *(inited + 32) = 25188;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v35;
  *(inited + 56) = v34;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6C65646F6DLL;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = v7;
  *(inited + 104) = v8;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x736D61726170;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 168) = &type metadata for AVCHyperParams;
  v73 = swift_allocObject();
  *(inited + 144) = v73;
  *(v73 + 16) = *v69;
  v75 = *(v69 + 32);
  v74 = *(v69 + 48);
  v76 = *(v69 + 16);
  *(v73 + 80) = *(v69 + 64);
  *(v73 + 48) = v75;
  *(v73 + 64) = v74;
  *(v73 + 32) = v76;

  sub_100008178(v69, v0 + 368);
  sub_100005D10(inited);
  swift_setDeallocating();
  sub_100007F18(&qword_10001C290, &qword_1000135E8);
  swift_arrayDestroy();
  sub_100012C78();
  v77 = (v0 + 872);

  sub_100012B38();
  v79 = v78;
  sub_100012B28();
  *(v0 + 608) = sub_100007F18(&qword_10001C2C0, &qword_100013600);
  v80 = swift_allocObject();
  *(v0 + 584) = v80;
  sub_100008260(v0 + 520, v80 + 16, &qword_10001C2C0, &qword_100013600);
  sub_100012C58();
  sub_100008214((v0 + 584));
  sub_100007F18(&qword_10001C2C8, &qword_100013608);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (*(*v77 + 16) < 2uLL)
  {

LABEL_28:

    v38 = *(v0 + 976);
    swift_allocError();
    *v81 = 3;
    swift_willThrow();
LABEL_63:

    sub_1000084A4(v0 + 520, &qword_10001C2C0, &qword_100013600);
    goto LABEL_21;
  }

  v122 = *v77;
  sub_1000082C8(*v77 + 32, v0 + 616);
  sub_100007F18(&qword_10001C2D0, &qword_100013610);
  result = swift_dynamicCast();
  if (result)
  {
    v82 = *(v0 + 880);
    goto LABEL_48;
  }

  v83 = (v0 + 888);
  sub_1000082C8(v122 + 32, v0 + 648);
  sub_100007F18(&qword_10001C2D8, &qword_100013618);
  if (!swift_dynamicCast())
  {
    v38 = *(v0 + 976);

    swift_allocError();
    v94 = 9;
LABEL_62:
    *v93 = v94;
    swift_willThrow();
    goto LABEL_63;
  }

  v84 = *v83;
  if (*v83 >> 62)
  {
    if (v84 < 0)
    {
      v95 = *v83;
    }

    v85 = sub_100012E58();
    if (v85)
    {
      goto LABEL_34;
    }

LABEL_47:

    v82 = &_swiftEmptyArrayStorage;
    goto LABEL_48;
  }

  v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v85)
  {
    goto LABEL_47;
  }

LABEL_34:
  v127[0] = &_swiftEmptyArrayStorage;
  result = sub_100005720(0, v85 & ~(v85 >> 63), 0);
  if (v85 < 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v86 = 0;
  v82 = v127[0];
  do
  {
    if ((v84 & 0xC000000000000001) != 0)
    {
      v87 = sub_100012E38();
    }

    else
    {
      v87 = *(v84 + 8 * v86 + 32);
    }

    v88 = v87;
    [v87 floatValue];
    v90 = v89;

    v127[0] = v82;
    v92 = v82[2];
    v91 = v82[3];
    if (v92 >= v91 >> 1)
    {
      sub_100005720((v91 > 1), v92 + 1, 1);
      v82 = v127[0];
    }

    ++v86;
    v82[2] = v92 + 1;
    *(v82 + v92 + 8) = v90;
  }

  while (v85 != v86);

LABEL_48:
  if (*(v122 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_72;
  }

  sub_1000082C8(v122 + 64, v0 + 680);
  sub_100007F18(&qword_10001C2E0, &qword_100013620);
  if (!swift_dynamicCast())
  {

    *(v0 + 472) = 0;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    sub_1000084A4(v0 + 440, &qword_10001C2E8, &qword_100013628);
LABEL_61:

    v38 = *(v0 + 976);
    swift_allocError();
    v94 = 10;
    goto LABEL_62;
  }

  v96 = *(v0 + 472);
  sub_100008324((v0 + 440), *(v0 + 464));
  v97 = sub_100012CA8();
  sub_100008214((v0 + 440));
  v98 = sub_100003FB0(v97);

  if (!v98)
  {

    goto LABEL_61;
  }

  v99 = *(v0 + 904);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v127[0] = v124;
  sub_1000064F4(v98, sub_1000050BC, 0, isUniquelyReferenced_nonNull_native, v127);

  v101 = v127[0];
  if ((*(v99 + 2) & 1) == 0)
  {
    goto LABEL_54;
  }

  result = v82[2];
  if (result >> 31)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  cblas_snrm2_NEWLAPACK();
  *(v0 + 768) = &type metadata for Float;
  *(v0 + 744) = v102;
  sub_100008024((v0 + 744), (v0 + 776));
  v103 = swift_isUniquelyReferenced_nonNull_native();
  v127[0] = v101;
  result = sub_1000053C0((v0 + 776), 0x6D726F4E324CLL, 0xE600000000000000, v103);
  v101 = v127[0];
LABEL_54:
  if ((*(*(v0 + 904) + 1) & 1) == 0)
  {

    goto LABEL_65;
  }

  if (*(v122 + 16) < 3uLL)
  {
LABEL_74:
    __break(1u);
    return result;
  }

  sub_1000082C8(v122 + 96, v0 + 712);

  if (!swift_dynamicCast())
  {

    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    sub_1000084A4(v0 + 480, &qword_10001C2E8, &qword_100013628);
LABEL_70:

    v38 = *(v0 + 976);
    swift_allocError();
    v94 = 11;
    goto LABEL_62;
  }

  v104 = *(v0 + 512);
  sub_100008324((v0 + 480), *(v0 + 504));
  v105 = sub_100012CA8();
  sub_100008214((v0 + 480));
  v106 = sub_100003FB0(v105);

  if (!v106)
  {

    goto LABEL_70;
  }

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v127[0] = v101;
  sub_1000064F4(v106, sub_1000050BC, 0, v107, v127);

  v101 = v127[0];
LABEL_65:
  v108 = *(v0 + 976);
  v109 = *(v0 + 952);
  v123 = *(v0 + 944);
  v125 = *(v0 + 936);
  v126 = *(v0 + 928);
  sub_100012B38();
  v111 = v110;
  v112 = swift_initStackObject();
  *(v112 + 16) = xmmword_1000134B0;
  *(v112 + 32) = 0xD000000000000010;
  *(v112 + 40) = 0x80000001000142E0;
  *(v112 + 48) = v71;
  *(v112 + 72) = &type metadata for Double;
  *(v112 + 80) = 0xD000000000000011;
  *(v112 + 88) = 0x8000000100014300;
  *(v112 + 96) = v79;
  *(v112 + 120) = &type metadata for Double;
  *(v112 + 128) = 0xD000000000000010;
  *(v112 + 136) = 0x8000000100014320;
  *(v112 + 168) = &type metadata for Double;
  *(v112 + 144) = v111;
  v113 = sub_100005D10(v112);
  swift_setDeallocating();
  swift_arrayDestroy();
  v114 = swift_isUniquelyReferenced_nonNull_native();
  v127[0] = v101;
  sub_1000064F4(v113, sub_1000050BC, 0, v114, v127);

  sub_10000428C(v82);

  v115 = sub_100012A48();
  v116 = *(v115 + 48);
  v117 = *(v115 + 52);
  swift_allocObject();
  v118 = sub_100012A38();

  sub_1000084A4(v0 + 520, &qword_10001C2C0, &qword_100013600);
  sub_10000856C(v108, type metadata accessor for AVCDataMetadata);

  v119 = *(v0 + 8);

  return v119(v118);
}

uint64_t sub_100007AF0(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return _swift_task_switch(sub_100007B10, 0, 0);
}

uint64_t sub_100007B10()
{
  v1 = v0[11];

  sub_10000B800((v0 + 2));
  if (*(v0[12] + 56))
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_100007DB4;
    v3 = v0[11];

    return sub_1000068BC(v3, (v0 + 2));
  }

  else
  {
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_100007CA4;
    v6 = v0[11];
    v7 = v0[12];

    return sub_100005E40(v6);
  }
}

uint64_t sub_100007CA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v9 = *v2;

  v6 = sub_100007EC4(v4 + 16);
  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_100007DB4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v9 = *v2;

  v6 = sub_100007EC4(v4 + 16);
  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_100007F18(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100007F60()
{
  result = qword_10001C278;
  if (!qword_10001C278)
  {
    sub_100012C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C278);
  }

  return result;
}

uint64_t sub_100007FB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100007FD0()
{
  result = qword_10001C280;
  if (!qword_10001C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C280);
  }

  return result;
}

_OWORD *sub_100008024(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100008034()
{
  result = qword_10001C2A0;
  if (!qword_10001C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2A0);
  }

  return result;
}

unint64_t sub_100008088()
{
  result = qword_10001C2A8;
  if (!qword_10001C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2A8);
  }

  return result;
}

unint64_t sub_1000080DC()
{
  result = qword_10001C2B0;
  if (!qword_10001C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2B0);
  }

  return result;
}

uint64_t sub_100008130()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000081D4()
{
  if (*(v0 + 40))
  {
    sub_100008214((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008214(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100008260(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007F18(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000082C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100008324(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000083D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008434(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007F18(&qword_10001C270, &qword_1000135D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000084A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100007F18(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000856C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000085D4()
{
  sub_100012E28(55);
  v0._object = 0x8000000100014390;
  v0._countAndFlagsBits = 0xD000000000000035;
  sub_100012D68(v0);
  v1._countAndFlagsBits = 0x6F6D5F6C665F6372;
  v1._object = 0xEB000000006C6564;
  sub_100012D68(v1);
  qword_10001DE50 = 0;
  *algn_10001DE58 = 0xE000000000000000;
}

void sub_100008668()
{
  if (qword_10001C148 != -1)
  {
    swift_once();
  }

  v0 = qword_10001DE50;
  v1 = *algn_10001DE58;

  v2._countAndFlagsBits = 47;
  v2._object = 0xE100000000000000;
  sub_100012D68(v2);
  v3._countAndFlagsBits = 0x6C65646F6D5F6C66;
  v3._object = 0xED00006E6F736A2ELL;
  sub_100012D68(v3);
  qword_10001DE60 = v0;
  *algn_10001DE68 = v1;
}

void sub_100008718()
{
  sub_100012E28(27);
  if (qword_10001C148 != -1)
  {
    swift_once();
  }

  v1 = qword_10001DE50;
  v0 = *algn_10001DE58;

  v2._object = 0x8000000100014370;
  v2._countAndFlagsBits = 0xD000000000000019;
  sub_100012D68(v2);
  qword_10001DE70 = v1;
  *algn_10001DE78 = v0;
}

uint64_t sub_1000087F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012938();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000088C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100012938();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000089A0()
{
  result = sub_100012938();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100008A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012938();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100008B04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100012938();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100008BE0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008C18()
{
  result = sub_100012938();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100008CAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6974617269707865;
    }

    else
    {
      v5 = 0x64616F6C6E776F64;
    }

    if (v2)
    {
      v6 = 0xEF656D69745F6E6FLL;
    }

    else
    {
      v6 = 0xED0000656D69745FLL;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1752457584;
    if (a1 != 3)
    {
      v4 = 0xD000000000000010;
      v3 = 0x8000000100014200;
    }

    if (a1 == 2)
    {
      v5 = 0x695F657069636572;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x6974617269707865;
    }

    else
    {
      v11 = 0x64616F6C6E776F64;
    }

    if (a2)
    {
      v10 = 0xEF656D69745F6E6FLL;
    }

    else
    {
      v10 = 0xED0000656D69745FLL;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 1752457584;
    v8 = 0x8000000100014200;
    if (a2 == 3)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v9 = 0x695F657069636572;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE900000000000064;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_100012F48();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

Swift::Int sub_100008E50()
{
  v1 = *v0;
  sub_100012FB8();
  sub_100012D58();

  return sub_100012FD8();
}

uint64_t sub_100008F4C()
{
  *v0;
  *v0;
  *v0;
  sub_100012D58();
}

Swift::Int sub_100009034()
{
  v1 = *v0;
  sub_100012FB8();
  sub_100012D58();

  return sub_100012FD8();
}

uint64_t sub_10000912C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000ACF4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000915C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656D69745FLL;
  v4 = 0x64616F6C6E776F64;
  v5 = 0xE900000000000064;
  v6 = 0x695F657069636572;
  v7 = 0xE400000000000000;
  v8 = 1752457584;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x8000000100014200;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6974617269707865;
    v3 = 0xEF656D69745F6E6FLL;
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

uint64_t sub_100009214()
{
  v1 = *v0;
  v2 = 0x64616F6C6E776F64;
  v3 = 0x695F657069636572;
  v4 = 1752457584;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6974617269707865;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000092C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000ACF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100009308(uint64_t a1)
{
  v2 = sub_10000A608();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100009344(uint64_t a1)
{
  v2 = sub_10000A608();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100009380(void *a1)
{
  v3 = v1;
  v5 = sub_100007F18(&qword_10001C468, &qword_100013798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_100008324(a1, a1[3]);
  sub_10000A608();
  sub_100012FF8();
  v26 = 0;
  sub_100012938();
  sub_10000A6B0(&qword_10001C478);
  sub_100012F18();
  if (!v2)
  {
    v11 = type metadata accessor for AVCModelMetadata(0);
    v12 = v11[5];
    v25 = 1;
    sub_100012F18();
    v13 = (v3 + v11[7]);
    v14 = *v13;
    v15 = v13[1];
    v24 = 2;
    sub_100012F08();
    v16 = (v3 + v11[6]);
    v17 = *v16;
    v18 = v16[1];
    v23 = 3;
    sub_100012F08();
    v19 = *(v3 + v11[8]);
    v22 = 4;
    sub_100012F28();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000095C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100012938();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = &v32 - v8;
  v9 = sub_100007F18(&qword_10001C498, &qword_1000137A8);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v13 = type metadata accessor for AVCModelMetadata(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_100008324(a1, a1[3]);
  sub_10000A608();
  v38 = v12;
  v18 = v39;
  sub_100012FE8();
  if (v18)
  {
    return sub_100008214(a1);
  }

  v39 = v16;
  v44 = 0;
  sub_10000A6B0(&qword_10001C490);
  sub_100012EE8();
  v19 = v37;
  v37 = *(v34 + 32);
  (v37)(v39, v19, v3);
  v43 = 1;
  sub_100012EE8();
  v20 = v13;
  v21 = *(v13 + 20);
  v22 = v39;
  (v37)(&v39[v21], v7, v3);
  v42 = 2;
  v23 = sub_100012EA8();
  v24 = (v22 + v20[7]);
  *v24 = v23;
  v24[1] = v25;
  v41 = 3;
  v26 = sub_100012EA8();
  v27 = v35;
  v28 = (v22 + v20[6]);
  *v28 = v26;
  v28[1] = v29;
  v40 = 4;
  v30 = sub_100012EF8();
  (*(v27 + 8))(v38, v36);
  *(v22 + v20[8]) = v30;
  sub_10000A6F4(v22, v33, type metadata accessor for AVCModelMetadata);
  sub_100008214(a1);
  return sub_10000856C(v22, type metadata accessor for AVCModelMetadata);
}

uint64_t sub_100009AF8(void *a1)
{
  v3 = v1;
  v5 = sub_100007F18(&qword_10001C4A0, &qword_1000137B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_100008324(a1, a1[3]);
  sub_10000A65C();
  sub_100012FF8();
  v19[15] = 0;
  sub_100012938();
  sub_10000A6B0(&qword_10001C478);
  sub_100012F18();
  if (!v2)
  {
    v11 = type metadata accessor for AVCDataMetadata(0);
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v19[14] = 1;
    sub_100012F08();
    v15 = (v3 + *(v11 + 24));
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 2;
    sub_100012F08();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100009CD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_100012938();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100007F18(&qword_10001C480, &qword_1000137A0);
  v32 = *(v35 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v35);
  v9 = &v28 - v8;
  v10 = type metadata accessor for AVCDataMetadata(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_100008324(a1, a1[3]);
  sub_10000A65C();
  sub_100012FE8();
  if (v2)
  {
    return sub_100008214(a1);
  }

  v16 = v32;
  v15 = v33;
  v29 = v10;
  v30 = v13;
  v38 = 0;
  sub_10000A6B0(&qword_10001C490);
  v18 = v34;
  v17 = v35;
  sub_100012EE8();
  (*(v15 + 32))(v30, v18, v4);
  v37 = 1;
  v19 = sub_100012EA8();
  v20 = &v30[*(v29 + 20)];
  *v20 = v19;
  v20[1] = v21;
  v36 = 2;
  v22 = sub_100012EA8();
  v24 = v23;
  (*(v16 + 8))(v9, v17);
  v25 = v30;
  v26 = &v30[*(v29 + 24)];
  *v26 = v22;
  v26[1] = v24;
  sub_10000A6F4(v25, v31, type metadata accessor for AVCDataMetadata);
  sub_100008214(a1);
  return sub_10000856C(v25, type metadata accessor for AVCDataMetadata);
}

uint64_t sub_10000A08C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1752457584;
  if (v2 != 1)
  {
    v4 = 0x695F657069636572;
    v3 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x69746172656E6567;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEF656D69745F6E6FLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1752457584;
  if (*a2 != 1)
  {
    v8 = 0x695F657069636572;
    v7 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x69746172656E6567;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEF656D69745F6E6FLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100012F48();
  }

  return v11 & 1;
}

Swift::Int sub_10000A190()
{
  v1 = *v0;
  sub_100012FB8();
  sub_100012D58();

  return sub_100012FD8();
}

uint64_t sub_10000A23C()
{
  *v0;
  *v0;
  sub_100012D58();
}

Swift::Int sub_10000A2D4()
{
  v1 = *v0;
  sub_100012FB8();
  sub_100012D58();

  return sub_100012FD8();
}

uint64_t sub_10000A37C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000AD40(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000A3AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF656D69745F6E6FLL;
  v4 = 0xE400000000000000;
  v5 = 1752457584;
  if (v2 != 1)
  {
    v5 = 0x695F657069636572;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x69746172656E6567;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10000A414()
{
  v1 = 1752457584;
  if (*v0 != 1)
  {
    v1 = 0x695F657069636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69746172656E6567;
  }
}

uint64_t sub_10000A478@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000AD40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000A4AC(uint64_t a1)
{
  v2 = sub_10000A65C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000A4E8(uint64_t a1)
{
  v2 = sub_10000A65C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000A554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100012918() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_100012F48() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if (v12 == *v14 && v13 == v14[1])
  {
    return 1;
  }

  return sub_100012F48();
}

unint64_t sub_10000A608()
{
  result = qword_10001C470;
  if (!qword_10001C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C470);
  }

  return result;
}

unint64_t sub_10000A65C()
{
  result = qword_10001C488;
  if (!qword_10001C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C488);
  }

  return result;
}

uint64_t sub_10000A6B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100012938();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_10000A75C(uint64_t a1, uint64_t a2)
{
  if ((sub_100012918() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AVCModelMetadata(0);
  v5 = v4[5];
  if ((sub_100012918() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (v10 || (sub_100012F48()) && ((v11 = v4[7], v12 = *(a1 + v11), v13 = *(a1 + v11 + 8), v14 = (a2 + v11), v12 == *v14) ? (v15 = v13 == v14[1]) : (v15 = 0), v15 || (sub_100012F48()))
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for AVCDataMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AVCDataMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AVCModelMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AVCModelMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000AAE8()
{
  result = qword_10001C4A8;
  if (!qword_10001C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4A8);
  }

  return result;
}

unint64_t sub_10000AB40()
{
  result = qword_10001C4B0;
  if (!qword_10001C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4B0);
  }

  return result;
}

unint64_t sub_10000AB98()
{
  result = qword_10001C4B8;
  if (!qword_10001C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4B8);
  }

  return result;
}

unint64_t sub_10000ABF0()
{
  result = qword_10001C4C0;
  if (!qword_10001C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4C0);
  }

  return result;
}

unint64_t sub_10000AC48()
{
  result = qword_10001C4C8;
  if (!qword_10001C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4C8);
  }

  return result;
}

unint64_t sub_10000ACA0()
{
  result = qword_10001C4D0;
  if (!qword_10001C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4D0);
  }

  return result;
}

uint64_t sub_10000ACF4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018C80;
  v6._object = a2;
  v4 = sub_100012E98(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000AD40(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018D18;
  v6._object = a2;
  v4 = sub_100012E98(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

__n128 initializeBufferWithCopyOfBuffer for AVCCustomTaskParameters(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AVCCustomTaskParameters(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AVCCustomTaskParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10000AE40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E69617274;
  }

  else
  {
    v4 = 0x64616F6C6E776F64;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6E69617274;
  }

  else
  {
    v6 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100012F48();
  }

  return v9 & 1;
}

Swift::Int sub_10000AEE4()
{
  v1 = *v0;
  sub_100012FB8();
  sub_100012D58();

  return sub_100012FD8();
}

uint64_t sub_10000AF64()
{
  *v0;
  sub_100012D58();
}

Swift::Int sub_10000AFD0()
{
  v1 = *v0;
  sub_100012FB8();
  sub_100012D58();

  return sub_100012FD8();
}

uint64_t sub_10000B04C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100018D80;
  v8._object = v3;
  v5 = sub_100012E98(v4, v8);

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

void sub_10000B0AC(uint64_t *a1@<X8>)
{
  v2 = 0x64616F6C6E776F64;
  if (*v1)
  {
    v2 = 0x6E69617274;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10000B148()
{
  if (*v0)
  {
    return 0x746E756F436E696DLL;
  }

  else
  {
    return 0x7379614474736170;
  }
}

uint64_t sub_10000B17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7379614474736170 && a2 == 0xE800000000000000;
  if (v6 || (sub_100012F48() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F436E696DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100012F48();

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

uint64_t sub_10000B258(uint64_t a1)
{
  v2 = sub_10000CBD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000B294(uint64_t a1)
{
  v2 = sub_10000CBD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000B2D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10000BC90(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Int sub_10000B318()
{
  v1 = *v0;
  sub_100012FB8();
  sub_100012FC8(v1);
  return sub_100012FD8();
}

Swift::Int sub_10000B390()
{
  v1 = *v0;
  sub_100012FB8();
  sub_100012FC8(v1);
  return sub_100012FD8();
}

uint64_t sub_10000B3D4()
{
  if (*v0)
  {
    return 0x5446657669746361;
  }

  else
  {
    return 0x657079546B736174;
  }
}

uint64_t sub_10000B408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657079546B736174 && a2 == 0xE800000000000000;
  if (v6 || (sub_100012F48() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5446657669746361 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100012F48();

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

uint64_t sub_10000B4F0(uint64_t a1)
{
  v2 = sub_10000C014();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000B52C(uint64_t a1)
{
  v2 = sub_10000C014();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000B568@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10000BE38(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_10000B59C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x657079546B736174;
    v6 = 0x4C7463656C6C6F63;
    if (a1 != 2)
    {
      v6 = 0x676E696E7261656CLL;
    }

    if (a1)
    {
      v5 = 0x6F6665426C617665;
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
    v1 = 0x6D614E6C65646F6DLL;
    v2 = 0xD00000000000001FLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    if (a1 != 4)
    {
      v3 = 0x7A69536863746162;
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

uint64_t sub_10000B700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000C3D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000B734(uint64_t a1)
{
  v2 = sub_10000CB28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000B770(uint64_t a1)
{
  v2 = sub_10000CB28();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10000B7AC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000C6DC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10000B800@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100012C48();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  sub_100012BD8();
  isa = sub_100012CF8().super.isa;

  *&v30[0] = 0;
  v10 = [v8 dataWithJSONObject:isa options:0 error:v30];

  v11 = *&v30[0];
  if (v10)
  {
    v29 = v3;
    v12 = sub_1000128D8();
    v14 = v13;

    v15 = sub_100012788();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_100012778();
    sub_10000BBE8();
    sub_100012768();
    if (!v1)
    {
      sub_10000BC3C(v12, v14);

      v26 = v30[3];
      *(a1 + 32) = v30[2];
      *(a1 + 48) = v26;
      *(a1 + 64) = v31;
      v27 = v30[1];
      *a1 = v30[0];
      *(a1 + 16) = v27;
      return result;
    }

    sub_10000BC3C(v12, v14);

    v3 = v29;
  }

  else
  {
    v18 = v11;
    sub_100012838();

    swift_willThrow();
  }

  sub_100012A18();
  swift_errorRetain();
  v19 = sub_100012C38();
  v20 = sub_100012DD8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v23;
    *v22 = v23;
    _os_log_impl(&_mh_execute_header, v19, v20, "Couldn't form AVCHyperParams: %@", v21, 0xCu);
    sub_10000BB80(v22);
  }

  (*(v4 + 8))(v7, v3);
  sub_100008034();
  swift_allocError();
  *v24 = 4;
  swift_willThrow();
}

uint64_t sub_10000BB80(uint64_t a1)
{
  v2 = sub_100007F18(&qword_10001C4D8, &qword_100013AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000BBE8()
{
  result = qword_10001C4E0;
  if (!qword_10001C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4E0);
  }

  return result;
}

uint64_t sub_10000BC3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000BC90(uint64_t *a1)
{
  v2 = sub_100007F18(&qword_10001C540, &qword_100013D80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_100008324(a1, a1[3]);
  sub_10000CBD0();
  sub_100012FE8();
  v10[15] = 0;
  v8 = sub_100012ED8();
  v10[14] = 1;
  sub_100012ED8();
  (*(v3 + 8))(v6, v2);
  sub_100008214(a1);
  return v8;
}

uint64_t sub_10000BE38(uint64_t *a1)
{
  v2 = sub_100007F18(&qword_10001C4E8, &qword_100013AB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_100008324(a1, a1[3]);
  sub_10000C014();
  sub_100012FE8();
  v11 = 0;
  sub_10000C068();
  sub_100012EE8();
  v8 = v10[8];
  v11 = 1;
  sub_10000C0BC();
  sub_100012EE8();
  (*(v3 + 8))(v6, v2);
  sub_100008214(a1);
  return v8;
}

unint64_t sub_10000C014()
{
  result = qword_10001C4F0;
  if (!qword_10001C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4F0);
  }

  return result;
}

unint64_t sub_10000C068()
{
  result = qword_10001C4F8;
  if (!qword_10001C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4F8);
  }

  return result;
}

unint64_t sub_10000C0BC()
{
  result = qword_10001C500;
  if (!qword_10001C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C500);
  }

  return result;
}

__n128 sub_10000C120(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000C144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000C18C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 initializeBufferWithCopyOfBuffer for AVCActiveFaceTimeParameter(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AVCActiveFaceTimeParameter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AVCActiveFaceTimeParameter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_10000C278()
{
  result = qword_10001C508;
  if (!qword_10001C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C508);
  }

  return result;
}

unint64_t sub_10000C2D0()
{
  result = qword_10001C510;
  if (!qword_10001C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C510);
  }

  return result;
}

unint64_t sub_10000C328()
{
  result = qword_10001C518;
  if (!qword_10001C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C518);
  }

  return result;
}

unint64_t sub_10000C380()
{
  result = qword_10001C520;
  if (!qword_10001C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C520);
  }

  return result;
}

uint64_t sub_10000C3D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546B736174 && a2 == 0xE800000000000000;
  if (v4 || (sub_100012F48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6665426C617665 && a2 == 0xEF6E696172546572 || (sub_100012F48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C7463656C6C6F63 && a2 == 0xED00006D726F4E32 || (sub_100012F48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696E7261656CLL && a2 == 0xEC00000065746152 || (sub_100012F48() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100014230 == a2 || (sub_100012F48() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7A69536863746162 && a2 == 0xE900000000000065 || (sub_100012F48() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (sub_100012F48() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100014270 == a2 || (sub_100012F48() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000100014250 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_100012F48();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_10000C6DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007F18(&qword_10001C528, &qword_100013D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_100008324(a1, a1[3]);
  sub_10000CB28();
  sub_100012FE8();
  if (v2)
  {
    return sub_100008214(a1);
  }

  LOBYTE(v39) = 0;
  sub_10000C068();
  sub_100012EE8();
  v11 = v44[0];
  v44[0] = 1;
  v12 = sub_100012EB8();
  v44[0] = 2;
  v38 = sub_100012EB8();
  v44[0] = 3;
  sub_100012EC8();
  v14 = v13;
  v44[0] = 4;
  v37 = sub_100012ED8();
  v44[0] = 5;
  v36 = sub_100012ED8();
  v44[0] = 6;
  v15 = sub_100012EA8();
  v35 = v16;
  v34 = v15;
  v44[0] = 7;
  v30 = sub_100012EA8();
  v33 = v17;
  v54 = 8;
  v32 = sub_100012EA8();
  v31 = v18;
  v19 = v12 & 1;
  HIDWORD(v29) = v12 & 1;
  v38 &= 1u;
  v20 = v38;
  (*(v6 + 8))(v9, v5);
  LOBYTE(v39) = v11;
  BYTE1(v39) = v19;
  BYTE2(v39) = v20;
  DWORD1(v39) = v14;
  v21 = v37;
  v22 = v36;
  *(&v39 + 1) = v37;
  *&v40 = v36;
  v23 = v34;
  *(&v40 + 1) = v34;
  *&v41 = v35;
  v24 = v30;
  v25 = v33;
  *(&v41 + 1) = v30;
  *&v42 = v33;
  *(&v42 + 1) = v32;
  v43 = v31;
  sub_100008178(&v39, v44);
  sub_100008214(a1);
  v44[0] = v11;
  v44[1] = BYTE4(v29);
  v44[2] = v38;
  v45 = v14;
  v46 = v21;
  v47 = v22;
  v48 = v23;
  v49 = v35;
  v50 = v24;
  v51 = v25;
  v52 = v32;
  v53 = v31;
  result = sub_100007EC4(v44);
  v27 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v27;
  *(a2 + 64) = v43;
  v28 = v40;
  *a2 = v39;
  *(a2 + 16) = v28;
  return result;
}

unint64_t sub_10000CB28()
{
  result = qword_10001C530;
  if (!qword_10001C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C530);
  }

  return result;
}

unint64_t sub_10000CB7C()
{
  result = qword_10001C538;
  if (!qword_10001C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C538);
  }

  return result;
}

unint64_t sub_10000CBD0()
{
  result = qword_10001C548;
  if (!qword_10001C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C548);
  }

  return result;
}

uint64_t sub_10000CC24(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_10000CCB4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AVCHyperParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AVCHyperParams.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000CEC8()
{
  result = qword_10001C550;
  if (!qword_10001C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C550);
  }

  return result;
}

unint64_t sub_10000CF20()
{
  result = qword_10001C558;
  if (!qword_10001C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C558);
  }

  return result;
}

unint64_t sub_10000CF78()
{
  result = qword_10001C560;
  if (!qword_10001C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C560);
  }

  return result;
}

unint64_t sub_10000CFD0()
{
  result = qword_10001C568;
  if (!qword_10001C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C568);
  }

  return result;
}

unint64_t sub_10000D028()
{
  result = qword_10001C570;
  if (!qword_10001C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C570);
  }

  return result;
}

unint64_t sub_10000D080()
{
  result = qword_10001C578;
  if (!qword_10001C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C578);
  }

  return result;
}

uint64_t sub_10000D0F4@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = (*(*(sub_100007F18(&qword_10001C298, &qword_1000135F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v37 = &v37 - v2;
  v38 = sub_100012748();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(*(sub_100007F18(&qword_10001C268, &qword_1000135D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v37 - v8;
  v10 = sub_100012848();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000128A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, enum case for URL.DirectoryHint.notDirectory(_:), v10);
  (*(v16 + 56))(v9, 1, 1, v15);
  sub_100012888();
  v20 = [objc_opt_self() defaultManager];
  sub_100012878();
  v21 = sub_100012D18();

  LODWORD(v9) = [v20 fileExistsAtPath:v21];

  if (v9)
  {
    v22 = v39;
    v23 = sub_100012788();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_100012778();
    if (qword_10001C160 != -1)
    {
      swift_once();
    }

    v26 = qword_10001DE80;
    *v6 = qword_10001DE80;
    (*(v3 + 104))(v6, enum case for JSONDecoder.DateDecodingStrategy.formatted(_:), v38);
    v27 = v26;
    sub_100012758();
    v29 = sub_1000128B8();
    v31 = v30;
    v32 = type metadata accessor for AVCDataMetadata(0);
    sub_10000ED94(&qword_10001C588, type metadata accessor for AVCDataMetadata);
    v33 = v37;
    sub_100012768();
    (*(v16 + 8))(v19, v15);
    sub_10000BC3C(v29, v31);

    v34 = v33;
    v35 = *(*(v32 - 8) + 56);
    v35(v34, 0, 1, v32);
    sub_100008504(v34, v22, type metadata accessor for AVCDataMetadata);
    return (v35)(v22, 0, 1, v32);
  }

  else
  {
    (*(v16 + 8))(v19, v15);
    v28 = type metadata accessor for AVCDataMetadata(0);
    return (*(*(v28 - 8) + 56))(v39, 1, 1, v28);
  }
}

void sub_10000D704()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = sub_100012D18();
  [v0 setDateFormat:v1];

  qword_10001DE80 = v0;
}

uint64_t sub_10000D77C@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_100012938();
  v48 = *(v1 - 8);
  v49 = v1;
  v2 = *(v48 + 64);
  v3 = (__chkstk_darwin)();
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v45 = &v44 - v6;
  __chkstk_darwin(v5);
  v46 = &v44 - v7;
  v8 = sub_100012748();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100007F18(&qword_10001C328, &unk_100013668);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - v19;
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = [objc_opt_self() defaultManager];
  sub_100012878();
  v24 = sub_100012D18();

  v25 = [v23 fileExistsAtPath:v24];

  if (v25)
  {
    v26 = sub_100012788();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    sub_100012778();
    if (qword_10001C160 != -1)
    {
      swift_once();
    }

    v29 = qword_10001DE80;
    *v12 = qword_10001DE80;
    (*(v9 + 104))(v12, enum case for JSONDecoder.DateDecodingStrategy.formatted(_:), v8);
    v30 = v29;
    sub_100012758();
    v31 = sub_1000128B8();
    v33 = v32;
    v34 = type metadata accessor for AVCModelMetadata(0);
    sub_10000ED94(&qword_10001C590, type metadata accessor for AVCModelMetadata);
    sub_100012768();
    sub_10000BC3C(v31, v33);

    v43 = *(*(v34 - 8) + 56);
    v43(v20, 0, 1, v34);
    sub_100008504(v20, v22, type metadata accessor for AVCModelMetadata);
    v43(v22, 0, 1, v34);
  }

  else
  {
    v34 = type metadata accessor for AVCModelMetadata(0);
    (*(*(v34 - 8) + 56))(v22, 1, 1, v34);
  }

  sub_10000ECB4(v22, v17);
  type metadata accessor for AVCModelMetadata(0);
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v17, 1, v34) == 1)
  {
    sub_1000084A4(v17, &qword_10001C328, &unk_100013668);
  }

  else
  {
    v37 = v48;
    v36 = v49;
    v38 = v45;
    (*(v48 + 16))(v45, &v17[*(v34 + 20)], v49);
    sub_10000EC58(v17);
    v39 = v46;
    (*(v37 + 32))(v46, v38, v36);
    v40 = v47;
    sub_100012928();
    LOBYTE(v38) = sub_100012908();
    v41 = *(v37 + 8);
    v41(v40, v36);
    v41(v39, v36);
    if (v38)
    {
      sub_1000084A4(v22, &qword_10001C328, &unk_100013668);
      return (*(v35 + 56))(v50, 1, 1, v34);
    }
  }

  return sub_10000ED24(v22, v50);
}

uint64_t sub_10000DDBC()
{
  v1 = sub_1000127C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000127A8();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100012808();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1000127F8();
  sub_100012798();
  sub_1000127B8();
  if (qword_10001C160 != -1)
  {
    swift_once();
  }

  v11 = qword_10001DE80;
  *v5 = qword_10001DE80;
  (*(v2 + 104))(v5, enum case for JSONEncoder.DateEncodingStrategy.formatted(_:), v1);
  v12 = v11;
  sub_1000127D8();
  type metadata accessor for AVCModelMetadata(0);
  sub_10000ED94(&qword_10001C580, type metadata accessor for AVCModelMetadata);
  v13 = sub_1000127E8();
  if (!v0)
  {
    v16 = v13;
    v17 = v14;
    sub_1000128E8();
    sub_10000BC3C(v16, v17);
  }
}

uint64_t sub_10000DFFC(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_100012968();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007F18(&qword_10001C598, &qword_100013FB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v35 - v10;
  v12 = sub_100012938();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v37 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v35 - v17;
  v38 = sub_100012978();
  v19 = *(v38 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v38);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = [objc_allocWithZone(CHManager) init];
  sub_100012958();
  sub_100012928();
  result = (*(v4 + 104))(v7, enum case for Calendar.Component.day(_:), v3);
  if (__OFSUB__(0, a1))
  {
    __break(1u);
  }

  else
  {
    sub_100012948();
    (*(v4 + 8))(v7, v3);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      (*(v13 + 8))(v18, v12);
      (*(v19 + 8))(v22, v38);
      sub_1000084A4(v11, &qword_10001C598, &qword_100013FB0);
      return 0;
    }

    else
    {
      (*(v13 + 32))();
      sub_100007F18(&qword_10001C5A0, &qword_100013FB8);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100013FA0;
      v25 = objc_opt_self();
      isa = sub_1000128F8().super.isa;
      v27 = sub_1000128F8().super.isa;
      v28 = [v25 predicateForCallsBetweenStartDate:isa endDate:v27];

      *(v24 + 32) = v28;
      *(v24 + 40) = [v25 predicateForCallsWithServiceProvider:kCHServiceProviderFaceTime];
      sub_10000EDDC();
      v29 = sub_100012D98().super.isa;

      v30 = [objc_opt_self() andPredicateWithSubpredicates:v29];

      v31 = v30;
      v32 = v36;
      v33 = [v36 callCountWithPredicate:v31];

      v34 = *(v13 + 8);
      v34(v37, v12);
      v34(v18, v12);
      (*(v19 + 8))(v22, v38);
      return v33 >= v35;
    }
  }

  return result;
}

void sub_10000E4CC()
{
  v0 = (*(*(sub_100007F18(&qword_10001C268, &qword_1000135D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v23 - v1;
  v24 = sub_100012848();
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000128A8();
  v26 = *(v27 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin();
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  if (qword_10001C148 != -1)
  {
    swift_once();
  }

  v11 = sub_100012D18();
  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    (*(v3 + 104))(v6, enum case for URL.DirectoryHint.isDirectory(_:), v24);
    v13 = v26;
    (*(v26 + 56))(v2, 1, 1, v27);

    v14 = v25;
    sub_100012888();
    v15 = [v9 defaultManager];
    sub_100012858(v16);
    v18 = v17;
    v28 = 0;
    v19 = [v15 removeItemAtURL:v17 error:&v28];

    if (v19)
    {
      v20 = *(v13 + 8);
      v21 = v28;
      v20(v14, v27);
    }

    else
    {
      v22 = v28;
      sub_100012838();

      swift_willThrow();
      (*(v13 + 8))(v14, v27);
    }
  }
}

uint64_t sub_10000E840(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v42 = sub_100012848();
  v40 = *(v42 - 8);
  v5 = *(v40 + 64);
  __chkstk_darwin(v42);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000128A8();
  v41 = *(v43 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v43);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AVCModelMetadata(0);
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012928();
  v13 = a1[4];
  sub_100008324(a1, a1[3]);
  v14 = &v12[v9[5]];
  sub_100012B68();
  if (qword_10001C158 != -1)
  {
    swift_once();
  }

  v15 = *algn_10001DE78;
  v45 = qword_10001DE70;

  v47 = a2;
  v16 = sub_100012BE8();
  v18 = v17;
  v19 = a1[4];
  sub_100008324(a1, a1[3]);
  v20 = sub_100012B88();
  v21 = &v12[v9[6]];
  *v21 = v45;
  v21[1] = v15;
  v22 = &v12[v9[7]];
  *v22 = v16;
  v22[1] = v18;
  *&v12[v9[8]] = v20;
  v23 = [objc_opt_self() defaultManager];
  sub_100012858(v24);
  v26 = v25;
  v48[0] = 0;
  v27 = [v23 removeItemAtURL:v25 error:v48];

  v28 = v12;
  if (v27)
  {
    v29 = v48[0];
    v30 = v44;
  }

  else
  {
    v31 = v48[0];
    sub_100012838();

    swift_willThrow();

    v30 = 0;
  }

  sub_100012BC8();
  if (!v30)
  {
    strcpy(v48, "fl_model.json");
    HIWORD(v48[1]) = -4864;
    v33 = v39;
    v32 = v40;
    v34 = v42;
    (*(v40 + 104))(v39, enum case for URL.DirectoryHint.inferFromPath(_:), v42);
    sub_100007FD0();
    v35 = v38;
    sub_100012898();
    (*(v32 + 8))(v33, v34);
    sub_10000DDBC();
    (*(v41 + 8))(v35, v43);
  }

  return sub_10000EC58(v28);
}

uint64_t sub_10000EC58(uint64_t a1)
{
  v2 = type metadata accessor for AVCModelMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000ECB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007F18(&qword_10001C328, &unk_100013668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000ED24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007F18(&qword_10001C328, &unk_100013668);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000ED94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000EDDC()
{
  result = qword_10001C5A8;
  if (!qword_10001C5A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C5A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AVCError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AVCError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_10000EF78()
{
  v1 = *v0;
  sub_100012FB8();
  sub_100012FC8(v1 + 9801);
  return sub_100012FD8();
}

Swift::Int sub_10000EFF8()
{
  v1 = *v0;
  sub_100012FB8();
  sub_100012FC8(v1 + 9801);
  return sub_100012FD8();
}

uint64_t sub_10000F040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000F1E4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10000F084()
{
  result = qword_10001C5B0;
  if (!qword_10001C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5B0);
  }

  return result;
}

uint64_t sub_10000F0DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F13C();
  v5 = sub_10000F190();

  return Error<>._code.getter(a1, a2, v4, v5);
}

unint64_t sub_10000F13C()
{
  result = qword_10001C5B8;
  if (!qword_10001C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5B8);
  }

  return result;
}

unint64_t sub_10000F190()
{
  result = qword_10001C5C0;
  if (!qword_10001C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5C0);
  }

  return result;
}

uint64_t sub_10000F1E4(uint64_t a1)
{
  if ((a1 - 9801) >= 0x14)
  {
    return 20;
  }

  else
  {
    return a1 - 9801;
  }
}

uint64_t sub_10000F1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000100F8;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_10000F2AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000F354;

  return sub_10000F6EC(a1);
}

uint64_t sub_10000F354(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10000F450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1000044A4;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_10000F534(uint64_t a1)
{
  v2 = sub_10000F698();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000F5DC();
  sub_1000129A8();
  return 0;
}

unint64_t sub_10000F5DC()
{
  result = qword_10001C5C8;
  if (!qword_10001C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5C8);
  }

  return result;
}

unint64_t sub_10000F698()
{
  result = qword_10001C5D0;
  if (!qword_10001C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5D0);
  }

  return result;
}

uint64_t sub_10000F6EC(uint64_t a1)
{
  v1[11] = a1;
  v2 = sub_100012AE8();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = sub_100012B18();
  v1[15] = v5;
  v6 = *(v5 - 8);
  v1[16] = v6;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();
  v8 = sub_100012AA8();
  v1[18] = v8;
  v9 = *(v8 - 8);
  v1[19] = v9;
  v10 = *(v9 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_10000F870, 0, 0);
}

uint64_t sub_10000F870()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    v8 = objc_allocWithZone(sub_1000129C8());
    v9 = sub_1000129B8();
LABEL_6:
    v19 = *(v0 + 160);
    v18 = *(v0 + 168);
    v20 = *(v0 + 136);
    v21 = *(v0 + 112);

    v22 = *(v0 + 8);

    return v22(v9);
  }

  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = *(v0 + 88);
  sub_100012D28();

  (*(v5 + 104))(v3, enum case for PFLTaskSource.CKProd(_:), v4);
  sub_100012A08();
  sub_100012AF8();

  sub_100007F18(&qword_10001C5D8, &qword_100014170);
  sub_10000FF2C();
  sub_100012B08();
  v10 = *(v0 + 56);
  if (v10 == 2)
  {

    v11 = *(v0 + 168);
    v12 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);
    v17 = objc_allocWithZone(sub_1000129C8());
    v9 = sub_1000129B8();
    (*(v15 + 8))(v14, v16);
    (*(v13 + 8))(v11, v12);
    goto LABEL_6;
  }

  v44 = *(v0 + 72);
  v45 = *(v0 + 64);
  v24 = *(v0 + 160);
  v25 = *(v0 + 152);
  v41 = *(v0 + 144);
  v42 = *(v0 + 168);
  v43 = v10 & 1;
  v27 = *(v0 + 104);
  v26 = *(v0 + 112);
  v28 = *(v0 + 96);
  sub_100007F18(&qword_10001C5F0, &qword_100014178);
  v29 = *(v27 + 72);
  v30 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1000140B0;
  sub_100012AD8();
  sub_100012AC8();
  *(v0 + 80) = v31;
  sub_1000100B0(&qword_10001C5F8, &type metadata accessor for PFLPluginConsent);
  sub_100007F18(&qword_10001C600, qword_100014180);
  sub_10001004C();
  sub_100012DF8();
  (*(v25 + 16))(v24, v42, v41);
  v32 = sub_100012C28();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  *(v0 + 176) = sub_100012C18();
  v35 = type metadata accessor for AVCPluginRunner();
  v36 = swift_allocObject();
  *(v0 + 184) = v36;
  *(v36 + 16) = 0u;
  *(v36 + 32) = 0u;
  *(v36 + 48) = 0;
  *(v36 + 56) = v43;
  *(v36 + 64) = v45;
  *(v36 + 72) = v44;
  *(v0 + 40) = v35;
  v37 = sub_1000100B0(&qword_10001C610, type metadata accessor for AVCPluginRunner);
  *(v0 + 16) = v36;
  *(v0 + 48) = v37;
  v38 = *(&async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + 1);
  v46 = (&async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:));

  v39 = swift_task_alloc();
  *(v0 + 192) = v39;
  *v39 = v0;
  v39[1] = sub_10000FD34;
  v40 = *(v0 + 88);

  return v46(v40, v0 + 16);
}

uint64_t sub_10000FD34(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v5 = *v1;
  *(v2 + 200) = a1;

  sub_100008214((v2 + 16));

  return _swift_task_switch(sub_10000FE3C, 0, 0);
}

uint64_t sub_10000FE3C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  v9 = v0[25];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[17];
  v13 = v0[14];

  v14 = v0[1];

  return v14(v9);
}

unint64_t sub_10000FF2C()
{
  result = qword_10001C5E0;
  if (!qword_10001C5E0)
  {
    sub_10000FFB0(&qword_10001C5D8, &qword_100014170);
    sub_10000FFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5E0);
  }

  return result;
}

uint64_t sub_10000FFB0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000FFF8()
{
  result = qword_10001C5E8;
  if (!qword_10001C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5E8);
  }

  return result;
}

unint64_t sub_10001004C()
{
  result = qword_10001C608;
  if (!qword_10001C608)
  {
    sub_10000FFB0(&qword_10001C600, qword_100014180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C608);
  }

  return result;
}

uint64_t sub_1000100B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000100FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = result == 0xD000000000000012 && 0x8000000100014230 == a2;
  if (v6 || (v7 = result, result = sub_100012F48(), (result & 1) != 0))
  {
    v8 = *(v3 + 8);
LABEL_7:
    *(a3 + 24) = &type metadata for Int;
    *a3 = v8;
    return result;
  }

  result = 0x6F6665426C617665;
  if (v7 == 0x6F6665426C617665 && a2 == 0xEF6E696172546572 || (result = sub_100012F48(), (result & 1) != 0))
  {
    v9 = *(v3 + 1);
LABEL_12:
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v9;
    return result;
  }

  if (v7 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (sub_100012F48() & 1) != 0)
  {
    v11 = *(v3 + 24);
    v10 = *(v3 + 32);
  }

  else
  {
    result = 0x7A69536863746162;
    if (v7 == 0x7A69536863746162 && a2 == 0xE900000000000065 || (result = sub_100012F48(), (result & 1) != 0))
    {
      v8 = *(v3 + 16);
      goto LABEL_7;
    }

    if (v7 == 0xD00000000000001FLL && 0x8000000100014250 == a2 || (sub_100012F48() & 1) != 0)
    {
      v11 = *(v3 + 56);
      v10 = *(v3 + 64);
    }

    else
    {
      result = 0x676E696E7261656CLL;
      if (v7 == 0x676E696E7261656CLL && a2 == 0xEC00000065746152 || (result = sub_100012F48(), (result & 1) != 0))
      {
        v12 = *(v3 + 4);
        *(a3 + 24) = &type metadata for Float;
        *a3 = v12;
        return result;
      }

      result = 0x4C7463656C6C6F63;
      if (v7 == 0x4C7463656C6C6F63 && a2 == 0xED00006D726F4E32 || (result = sub_100012F48(), (result & 1) != 0))
      {
        v9 = *(v3 + 2);
        goto LABEL_12;
      }

      if (v7 != 0xD000000000000010 || 0x8000000100014270 != a2)
      {
        result = sub_100012F48();
        if ((result & 1) == 0)
        {
          *a3 = 0u;
          *(a3 + 16) = 0u;
          return result;
        }
      }

      v11 = *(v3 + 40);
      v10 = *(v3 + 48);
    }
  }

  *(a3 + 24) = &type metadata for String;
  *a3 = v11;
  *(a3 + 8) = v10;
}

uint64_t sub_1000103D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_100012FB8();
  sub_100012D58();
  v7 = sub_100012FD8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_100012F48() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000104D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000125E0(&off_100018DD0);
  swift_arrayDestroy();
  LOBYTE(a2) = sub_1000103D8(a1, a2, v4);

  return a2 & 1;
}

char *sub_100010548(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (!v2 || a2 < 0)
  {
    return v3;
  }

  v25 = &_swiftEmptyArrayStorage;
  sub_100005760(0, v2, 0);
  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  v8 = a1 + 32;
  do
  {
    v9 = *(v8 + 8 * v6);
    if (*(v9 + 16) <= a2)
    {
      v13 = *(v8 + 8 * v6);

LABEL_11:
      sub_100008034();
      v3 = swift_allocError();
      *v14 = 12;
      swift_willThrow();

      return v3;
    }

    sub_100008260(v9 + 32 * a2 + 32, v24, &qword_10001C2C0, &qword_100013600);

    sub_100007F18(&qword_10001C2C0, &qword_100013600);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    v25 = v7;
    v11 = v7[2];
    v10 = v7[3];
    if (v11 >= v10 >> 1)
    {
      sub_100005760((v10 > 1), v11 + 1, 1);
      v7 = v25;
    }

    v12 = &v7[2 * v11];
    v12[4] = v6;
    v7[2] = v11 + 1;
    v12[5] = v23;
    ++v6;
  }

  while (v2 != v6);
  v24[0] = v7;

  sub_100011710(v24);
  if (!v22)
  {

    v15 = v24[0];
    v16 = *(v24[0] + 2);
    if (v16)
    {
      v24[0] = &_swiftEmptyArrayStorage;
      sub_100005740(0, v16, 0);
      v3 = v24[0];
      v17 = *(v24[0] + 2);
      v18 = 32;
      do
      {
        v19 = *&v15[v18];
        v24[0] = v3;
        v20 = *(v3 + 3);
        if (v17 >= v20 >> 1)
        {
          sub_100005740((v20 > 1), v17 + 1, 1);
          v3 = v24[0];
        }

        *(v3 + 2) = v17 + 1;
        *&v3[8 * v17 + 32] = v19;
        v18 += 16;
        ++v17;
        --v16;
      }

      while (v16);
    }

    else
    {

      return &_swiftEmptyArrayStorage;
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1000107E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return &_swiftEmptyArrayStorage;
  }

  v8 = (a1 + 32);
  v9 = *(*(a1 + 32) + 16);
  result = &_swiftEmptyArrayStorage;
  if (v9 > a5)
  {
    v66 = &_swiftEmptyArrayStorage;
    v11 = &v66;
    v12 = sub_100005780(0, v6, 0);
    if ((a5 & 0x8000000000000000) == 0)
    {
      v5 = v66;
      while (1)
      {
        v11 = *v8;
        v13 = (*v8)[2];
        if (v13 <= a5)
        {
          break;
        }

        sub_100008260(&v11[4 * a5 + 4], v65, &qword_10001C2C0, &qword_100013600);

        sub_100007F18(&qword_10001C2C0, &qword_100013600);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_100008034();
          swift_allocError();
          *v17 = 13;
          swift_willThrow();
        }

        v64 = 0;
        v14 = v63;

        v66 = v5;
        v16 = *(v5 + 2);
        v15 = *(v5 + 3);
        if (v16 >= v15 >> 1)
        {
          v12 = sub_100005780((v15 > 1), v16 + 1, 1);
          v5 = v66;
        }

        *(v5 + 2) = v16 + 1;
        *&v5[8 * v16 + 32] = v14;
        ++v8;
        if (!--v6)
        {
          v18 = *(a3 + 16);
          v19 = &_swiftEmptyArrayStorage;
          if (v18)
          {
            v66 = &_swiftEmptyArrayStorage;
            sub_100005740(0, v18, 0);
            v19 = v66;
            v20 = a3 + 32;
            while (1)
            {
              sub_1000082C8(v20, v65);
              sub_1000082C8(v65, &v63);
              sub_100012594();
              if (!swift_dynamicCast())
              {
                break;
              }

              v21 = [v62 integerValue];

              sub_100008214(v65);
              v66 = v19;
              v23 = v19[2];
              v22 = v19[3];
              if (v23 >= v22 >> 1)
              {
                sub_100005740((v22 > 1), v23 + 1, 1);
                v19 = v66;
              }

              v19[2] = v23 + 1;
              v19[v23 + 4] = v21;
              v20 += 32;
              if (!--v18)
              {
                goto LABEL_19;
              }
            }

            sub_100008034();
            swift_allocError();
            *v29 = 13;
            swift_willThrow();
            sub_100008214(v65);
          }

          else
          {
LABEL_19:
            v6 = *(a4 + 16);
            if (v6)
            {
              v66 = &_swiftEmptyArrayStorage;
              sub_100005740(0, v6, 0);
              v24 = v66;
              v25 = a4 + 32;
              while (1)
              {
                sub_1000082C8(v25, v65);
                sub_1000082C8(v65, &v63);
                sub_100012594();
                if (!swift_dynamicCast())
                {
                  break;
                }

                v26 = [v62 integerValue];

                sub_100008214(v65);
                v66 = v24;
                v27 = v24[2];
                v28 = v24[3];
                if (v27 >= v28 >> 1)
                {
                  sub_100005740((v28 > 1), v27 + 1, 1);
                  v24 = v66;
                }

                v24[2] = v27 + 1;
                v24[v27 + 4] = v26;
                v25 += 32;
                if (!--v6)
                {
                  goto LABEL_30;
                }
              }

              sub_100008034();
              swift_allocError();
              *v30 = 13;
              swift_willThrow();
              sub_100008214(v65);
            }

            v24 = &_swiftEmptyArrayStorage;
LABEL_30:
            v31 = *(v5 + 2);
            if (v31 == *(a2 + 16) && (v32 = v19[2], v31 >= v32) && (v58 = v24[2], v32 >= v58))
            {
              v60 = v19[2];
              v55 = v24;
              if (v31)
              {
                v65[0] = &_swiftEmptyArrayStorage;
                v11 = v65;
                v12 = sub_100005780(0, v31, 0);
                v34 = (a2 + 32);
                v35 = v65[0];
                do
                {
                  v36 = *v34++;
                  v13 = v36;
                  if ((v36 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_75;
                  }

                  if (v13 >= *(v5 + 2))
                  {
                    goto LABEL_76;
                  }

                  v37 = *&v5[8 * v13 + 32];
                  v65[0] = v35;
                  v39 = v35[2];
                  v38 = v35[3];
                  v6 = v39 + 1;
                  if (v39 >= v38 >> 1)
                  {
                    v11 = v65;
                    v12 = sub_100005780((v38 > 1), v39 + 1, 1);
                    v35 = v65[0];
                  }

                  v35[2] = v6;
                  v35[v39 + 4] = v37;
                  --v31;
                }

                while (v31);
              }

              else
              {

                v35 = &_swiftEmptyArrayStorage;
              }

              if (v60)
              {
                v65[0] = &_swiftEmptyArrayStorage;
                v11 = v65;
                v12 = sub_100005780(0, v60, 0);
                v40 = v60;
                v6 = 0;
                v41 = v65[0];
                do
                {
                  v13 = v19[2];
                  if (v6 >= v13)
                  {
                    goto LABEL_77;
                  }

                  v13 = v19[v6 + 4];
                  if ((v13 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_78;
                  }

                  if (v13 >= v35[2])
                  {
                    goto LABEL_79;
                  }

                  v42 = v35[v13 + 4];
                  v65[0] = v41;
                  v44 = v41[2];
                  v43 = v41[3];
                  v5 = (v44 + 1);
                  if (v44 >= v43 >> 1)
                  {
                    v11 = v65;
                    v12 = sub_100005780((v43 > 1), v44 + 1, 1);
                    v40 = v60;
                    v41 = v65[0];
                  }

                  ++v6;
                  v41[2] = v5;
                  v41[v44 + 4] = v42;
                }

                while (v40 != v6);
              }

              else
              {

                v41 = &_swiftEmptyArrayStorage;
              }

              if (v58)
              {
                v65[0] = &_swiftEmptyArrayStorage;
                v12 = sub_100005780(0, v58, 0);
                v6 = 0;
                v5 = v65[0];
                v11 = v55;
                do
                {
                  v13 = v11[2];
                  if (v6 >= v13)
                  {
                    goto LABEL_80;
                  }

                  v13 = v11[v6 + 4];
                  if ((v13 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_81;
                  }

                  if (v13 >= v41[2])
                  {
                    goto LABEL_82;
                  }

                  v45 = v41[v13 + 4];
                  v65[0] = v5;
                  v47 = *(v5 + 2);
                  v46 = *(v5 + 3);
                  if (v47 >= v46 >> 1)
                  {
                    v12 = sub_100005780((v46 > 1), v47 + 1, 1);
                    v11 = v55;
                    v5 = v65[0];
                  }

                  ++v6;
                  *(v5 + 2) = v47 + 1;
                  *&v5[8 * v47 + 32] = v45;
                }

                while (v58 != v6);
              }

              else
              {

                v5 = &_swiftEmptyArrayStorage;
              }

              v12 = sub_10001160C(0, 1, 1, &_swiftEmptyArrayStorage);
              v6 = *(v12 + 16);
              v13 = *(v12 + 24);
              v11 = (v6 + 1);
              if (v6 >= v13 >> 1)
              {
                goto LABEL_85;
              }

              while (1)
              {
                *(v12 + 16) = v11;
                *(v12 + 8 * v6 + 32) = 0;
                v13 = *(v5 + 2);
                v48 = v13 - 1;
                if (v13 == 1)
                {
                  break;
                }

                if (v13)
                {
                  v49 = 0;
                  v6 += 5;
                  v50 = (v5 + 40);
                  while (1)
                  {
                    v13 = *(v5 + 2);
                    if (v49 >= v13)
                    {
                      break;
                    }

                    v51 = *(v50 - 1);
                    v52 = *v50;
                    v53 = *(v12 + 24);
                    v11 = (v6 - 3);
                    if (v6 - 4 >= v53 >> 1)
                    {
                      v61 = *(v50 - 1);
                      v12 = sub_10001160C((v53 > 1), v6 - 3, 1, v12);
                      v51 = v61;
                    }

                    *(v12 + 16) = v11;
                    *(v12 + 8 * v6++) = v52 - v51;
                    ++v49;
                    ++v50;
                    if (v48 == v49)
                    {
                      goto LABEL_72;
                    }
                  }

LABEL_83:
                  __break(1u);
                }

                __break(1u);
LABEL_85:
                v12 = sub_10001160C((v13 > 1), v11, 1, v12);
              }

LABEL_72:
              v54 = v12;

              return v54;
            }

            else
            {

              sub_100008034();
              swift_allocError();
              *v33 = 13;
              return swift_willThrow();
            }
          }
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  return result;
}

uint64_t sub_100011044@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v5 = sub_100004F8C(0x7961727261, 0xE500000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1000082C8(*(a1 + 56) + 32 * v5, v13);
  sub_100007F18(&qword_10001C618, &qword_1000141B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = v14;
  if (!*(a1 + 16) || (v8 = sub_100004F8C(0x6E6D756C6F63, 0xE600000000000000), (v9 & 1) == 0) || (sub_1000082C8(*(a1 + 56) + 32 * v8, v13), (swift_dynamicCast() & 1) == 0))
  {

LABEL_10:
    sub_100008034();
    swift_allocError();
    *v12 = 12;
    return swift_willThrow();
  }

  v10 = sub_100010548(v7, v14);

  if (!v2)
  {
    result = sub_100007F18(&qword_10001C620, &qword_1000141C0);
    a2[3] = result;
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1000111C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_24;
  }

  v5 = sub_100004F8C(0x7961727261, 0xE500000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_1000082C8(*(a1 + 56) + 32 * v5, v20);
  sub_100007F18(&qword_10001C618, &qword_1000141B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (!*(a1 + 16) || (v7 = sub_100004F8C(0x6E49646574726F73, 0xED00007365636964), (v8 & 1) == 0) || (sub_1000082C8(*(a1 + 56) + 32 * v7, v20), sub_100007F18(&qword_10001C620, &qword_1000141C0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_23:

LABEL_24:
    sub_100008034();
    swift_allocError();
    *v17 = 13;
    return swift_willThrow();
  }

  if (!*(a1 + 16) || (v9 = sub_100004F8C(0x317265746C6966, 0xE700000000000000), (v10 & 1) == 0) || (sub_1000082C8(*(a1 + 56) + 32 * v9, v20), sub_100007F18(&qword_10001C2C8, &qword_100013608), (swift_dynamicCast() & 1) == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v11 = sub_100004F8C(0x327265746C6966, 0xE700000000000000);
  if ((v12 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1000082C8(*(a1 + 56) + 32 * v11, v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!*(a1 + 16) || (v13 = sub_100004F8C(0x6E6D756C6F63, 0xE600000000000000), (v14 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_1000082C8(*(a1 + 56) + 32 * v13, v20);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_21:

    goto LABEL_22;
  }

  v15 = sub_1000107E4(v19, v19, v19, v19, v19);
  if (v2)
  {
  }

  else
  {
    v18 = v15;

    result = sub_100007F18(&qword_10001C628, &qword_1000141C8);
    a2[3] = result;
    *a2 = v18;
  }

  return result;
}

char *sub_100011508(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007F18(&qword_10001C640, &qword_1000141D8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10001160C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007F18(&qword_10001C310, &qword_100013650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

Swift::Int sub_100011710(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000121C0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10001177C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10001177C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100012F38(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100007F18(&qword_10001C638, &qword_1000141D0);
        v5 = sub_100012DA8();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100011918(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100011884(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100011884(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = (v4 + 16 * a3);
    v8 = *v7;
    v9 = v7[1];
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = *(v11 + 8);
      v13 = *&v8 < *v11;
      if (v9 != v12)
      {
        v13 = v9 < v12;
      }

      if (!v13)
      {
LABEL_4:
        ++a3;
        v5 += 16;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *(v11 + 16) = *v11;
      *v11 = v8;
      *(v11 + 8) = v9;
      v11 -= 16;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100011918(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1000121AC(v10);
      v10 = result;
    }

    v90 = *(v10 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = *&v10[16 * v90];
        v92 = *&v10[16 * v90 + 24];
        sub_100011EE4((*a3 + 16 * v91), (*a3 + 16 * *&v10[16 * v90 + 16]), (*a3 + 16 * v92), v5);
        if (v4)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000121AC(v10);
        }

        if (v90 - 2 >= *(v10 + 2))
        {
          goto LABEL_120;
        }

        v93 = &v10[16 * v90];
        *v93 = v91;
        *(v93 + 1) = v92;
        result = sub_100012120(v90 - 1);
        v90 = *(v10 + 2);
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 16 * v9;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = 16 * v11;
      v16 = *a3 + 16 * v11;
      v17 = *(v16 + 8);
      v18 = v13 < *v16;
      if (v14 != v17)
      {
        v18 = v14 < v17;
      }

      v19 = v11 + 2;
      v20 = (v16 + 40);
      while (v7 != v19)
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v20 += 2;
        v23 = v22;
        v24 = v21 >= v13;
        v25 = v22 >= v14;
        if (v22 == v14)
        {
          v25 = v24;
        }

        ++v19;
        v14 = v23;
        v13 = v21;
        if (v18 == v25)
        {
          v9 = v19 - 1;
          if (!v18)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      v9 = v7;
      if (!v18)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v9 < v11)
      {
        goto LABEL_123;
      }

      if (v11 < v9)
      {
        v26 = 0;
        v27 = 16 * v9;
        v28 = v11;
        do
        {
          if (v28 != v9 + v26 - 1)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_129;
            }

            v29 = (v33 + v15);
            v30 = v33 + v27;
            v31 = *v29;
            v32 = v29[1];
            *v29 = *(v30 - 16);
            *(v30 - 16) = v31;
            *(v30 - 8) = v32;
          }

          ++v28;
          --v26;
          v27 -= 16;
          v15 += 16;
        }

        while (v28 < v9 + v26);
        v7 = a3[1];
      }
    }

LABEL_24:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_122;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_124;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v9 < v11)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100011508(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v45 = *(v10 + 3);
    v46 = v5 + 1;
    if (v5 >= v45 >> 1)
    {
      result = sub_100011508((v45 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v46;
    v47 = &v10[16 * v5];
    *(v47 + 4) = v11;
    *(v47 + 5) = v9;
    v48 = *v95;
    if (!*v95)
    {
      goto LABEL_131;
    }

    if (v5)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v10 + 4);
          v51 = *(v10 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_63:
          if (v53)
          {
            goto LABEL_110;
          }

          v66 = &v10[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_113;
          }

          v72 = &v10[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_117;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v76 = &v10[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_77:
        if (v71)
        {
          goto LABEL_112;
        }

        v79 = &v10[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_115;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_84:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v88 = *&v10[16 * v87 + 32];
        v5 = *&v10[16 * v49 + 40];
        sub_100011EE4((*a3 + 16 * v88), (*a3 + 16 * *&v10[16 * v49 + 32]), (*a3 + 16 * v5), v48);
        if (v4)
        {
        }

        if (v5 < v88)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000121AC(v10);
        }

        if (v87 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v89 = &v10[16 * v87];
        *(v89 + 4) = v88;
        *(v89 + 5) = v5;
        result = sub_100012120(v49);
        v46 = *(v10 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v10[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_108;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_109;
      }

      v61 = &v10[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_111;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_114;
      }

      if (v65 >= v57)
      {
        v83 = &v10[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_118;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_94;
    }
  }

  v34 = *a3;
  v35 = *a3 + 16 * v9 - 16;
  v36 = v11 - v9;
LABEL_34:
  v37 = (v34 + 16 * v9);
  v38 = *v37;
  v39 = v37[1];
  v40 = v36;
  v41 = v35;
  while (1)
  {
    v42 = *(v41 + 8);
    v43 = *&v38 < *v41;
    if (v39 != v42)
    {
      v43 = v39 < v42;
    }

    if (!v43)
    {
LABEL_33:
      ++v9;
      v35 += 16;
      --v36;
      if (v9 != v7)
      {
        goto LABEL_34;
      }

      v9 = v7;
      goto LABEL_43;
    }

    if (!v34)
    {
      break;
    }

    *(v41 + 16) = *v41;
    *v41 = v38;
    *(v41 + 8) = v39;
    v41 -= 16;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100011EE4(double *__dst, double *__src, _OWORD *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = v6[1];
      v18 = v4[1];
      v19 = *v6 < *v4;
      if (v17 != v18)
      {
        v19 = v17 < v18;
      }

      if (v19)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_26:
    v20 = v6 - 2;
    --v5;
    v21 = v14;
    do
    {
      v22 = *(v21 - 16);
      v21 -= 16;
      v23 = v5 + 1;
      v24 = *(v21 + 8);
      v25 = *(v6 - 1);
      v26 = v22 < *(v6 - 2);
      if (v24 != v25)
      {
        v26 = v24 < v25;
      }

      if (v26)
      {
        if (v23 != v6)
        {
          *v5 = *v20;
        }

        if (v14 <= v4 || (v6 -= 2, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v23 != v14)
      {
        *v5 = *v21;
      }

      --v5;
      v14 = v21;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_39:
  v27 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v27 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v27 >> 4));
  }

  return 1;
}

uint64_t sub_100012120(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000121AC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000121D4()
{
  v1 = sub_100012CE8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_100012C98();
  sub_100007F18(&qword_10001C2B8, &qword_1000135F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000134B0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000100014450;
  *(inited + 48) = 5;
  *(inited + 72) = &type metadata for AVCError;
  *(inited + 80) = 0x614E734973736F6CLL;
  *(inited + 88) = 0xE90000000000004ELL;
  *(inited + 96) = 14;
  *(inited + 120) = &type metadata for AVCError;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000100014470;
  *(inited + 168) = &type metadata for AVCError;
  *(inited + 144) = 15;
  sub_100005D10(inited);
  swift_setDeallocating();
  sub_100007F18(&qword_10001C290, &qword_1000135E8);
  swift_arrayDestroy();
  sub_100012CD8();
  v4 = sub_100012CC8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_100012CB8();
  sub_100012C68();

  if (!v0)
  {
    sub_100012CD8();
    sub_100005D10(&_swiftEmptyArrayStorage);
    v8 = *(v4 + 48);
    v9 = *(v4 + 52);
    swift_allocObject();
    sub_100012CB8();
    sub_100012C68();

    sub_100012CD8();
    sub_100005D10(&_swiftEmptyArrayStorage);
    v10 = *(v4 + 48);
    v11 = *(v4 + 52);
    swift_allocObject();
    sub_100012CB8();
    sub_100012C68();
  }

  return result;
}

unint64_t sub_100012594()
{
  result = qword_10001C630;
  if (!qword_10001C630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C630);
  }

  return result;
}

void *sub_1000125E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007F18(&qword_10001C648, &unk_1000141E0);
    v3 = sub_100012E08();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_100012FB8();

      sub_100012D58();
      v11 = sub_100012FD8();
      v12 = ~(-1 << *(v3 + 32));
      for (i = v11 & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        v16 = *v15 == v9 && v15[1] == v8;
        if (v16 || (sub_100012F48() & 1) != 0)
        {

          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
    return sub_100012748();
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }
}