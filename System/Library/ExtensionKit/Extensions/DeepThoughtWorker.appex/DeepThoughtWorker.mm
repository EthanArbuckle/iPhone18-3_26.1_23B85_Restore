uint64_t sub_100001508()
{
  v0 = sub_100004B98();
  sub_1000046E8(v0, qword_10000C460);
  sub_100003BBC(v0, qword_10000C460);
  return sub_100004B88();
}

uint64_t sub_100001588(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7463657078656E75;
  }

  else
  {
    v4 = 0x74754F64656D6974;
  }

  if (v3)
  {
    v5 = 0xED0000726F727245;
  }

  else
  {
    v5 = 0xEF726F7272456465;
  }

  if (*a2)
  {
    v6 = 0x7463657078656E75;
  }

  else
  {
    v6 = 0x74754F64656D6974;
  }

  if (*a2)
  {
    v7 = 0xEF726F7272456465;
  }

  else
  {
    v7 = 0xED0000726F727245;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100004C58();
  }

  return v9 & 1;
}

Swift::Int sub_100001648()
{
  v1 = *v0;
  sub_100004CA8();
  sub_100004BC8();

  return sub_100004CB8();
}

uint64_t sub_1000016E4()
{
  *v0;
  sub_100004BC8();
}

Swift::Int sub_10000176C()
{
  v1 = *v0;
  sub_100004CA8();
  sub_100004BC8();

  return sub_100004CB8();
}

uint64_t sub_100001804@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008538;
  v8._object = v3;
  v5 = sub_100004C48(v4, v8);

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

void sub_100001864(uint64_t *a1@<X8>)
{
  v2 = 0x74754F64656D6974;
  if (*v1)
  {
    v2 = 0x7463657078656E75;
  }

  v3 = 0xED0000726F727245;
  if (*v1)
  {
    v3 = 0xEF726F7272456465;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000018CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  v4 = *(*(sub_100003B74(&qword_10000C018, &qword_100005058) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v5 = *(*(sub_100003B74(&qword_10000C020, &qword_100005060) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v6 = *(*(sub_100003B74(&qword_10000C028, &qword_100005068) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v7 = sub_100004AC8();
  v3[28] = v7;
  v8 = *(v7 - 8);
  v3[29] = v8;
  v9 = *(v8 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v10 = sub_100004A68();
  v3[34] = v10;
  v11 = *(v10 - 8);
  v3[35] = v11;
  v12 = *(v11 + 64) + 15;
  v3[36] = swift_task_alloc();
  v13 = *(*(sub_100003B74(&qword_10000C030, &qword_100005070) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v14 = sub_100003B74(&qword_10000C038, &qword_100005078);
  v3[38] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_100001B38, 0, 0);
}

uint64_t sub_100001B38()
{
  v25 = v0;
  if (qword_10000C0D0 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_100004B98();
  v0[41] = sub_100003BBC(v2, qword_10000C460);
  v3 = v1;
  v4 = sub_100004B78();
  v5 = sub_100004BF8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_100004B58();
    v10 = sub_100003D08(v8, v9, &v24);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_100004B68();
    v13 = sub_100003D08(v11, v12, &v24);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "TaskId: %s, TaskName: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = v0[24];
  v0[18] = v0[23];
  v0[19] = v14;
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  v0[42] = v16;
  v17 = sub_100003B20();
  v18 = sub_100003C3C(&qword_10000C040, &qword_10000C048);
  v19 = sub_100003C3C(&qword_10000C050, &qword_10000C058);
  *v16 = v0;
  v16[1] = sub_100001DEC;
  v20 = v0[37];
  v21 = v0[38];
  v22 = v0[22];

  return MLHostExtension.loadConfig<A>(context:)(v20, v22, &type metadata for DeepThoughtWorker, v21, v17, v18, v19);
}

uint64_t sub_100001DEC()
{
  v1 = *(*v0 + 336);
  v3 = *v0;

  return _swift_task_switch(sub_100001EE8, 0, 0);
}

uint64_t sub_100001EE8()
{
  v104 = v0;
  v1 = v0[37];
  v2 = sub_100003B74(&qword_10000C060, &qword_100005080);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[40];
  if (v4 == 1)
  {
    sub_1000045B0(v1, &qword_10000C030, &qword_100005070);
    v6 = sub_100004A98();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    v7 = v0[40];
    sub_100004B48();
    (*(v3 + 8))(v1, v2);
  }

  v9 = v0[39];
  v8 = v0[40];
  sub_100003B74(&qword_10000C068, &qword_100005088);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 16) = xmmword_100004F60;
  *(inited + 40) = 0x8000000100005200;
  sub_100004670(v8, v9, &qword_10000C038, &qword_100005078);
  v11 = sub_100004A98();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = v0[39];
  if (v13 == 1)
  {
    sub_1000045B0(v0[39], &qword_10000C038, &qword_100005078);
    *(inited + 72) = &type metadata for UInt64;
LABEL_7:
    v16 = 120000;
    goto LABEL_8;
  }

  v15 = v0[39];
  v16 = sub_100004A88();
  v18 = v17;
  (*(v12 + 8))(v14, v11);
  *(inited + 72) = &type metadata for UInt64;
  if (v18)
  {
    goto LABEL_7;
  }

LABEL_8:
  v19 = v0[36];
  v21 = v0[23];
  v20 = v0[24];
  v22 = v0[22];
  *(inited + 48) = v16;
  sub_1000043E0(inited);
  swift_setDeallocating();
  sub_1000045B0(inited + 32, &qword_10000C070, &qword_100005090);
  v23 = v22;
  sub_100004A58();
  v24 = objc_opt_self();
  sub_100003B74(&qword_10000C078, &qword_100005098);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100004F70;
  v26 = sub_100004A48();
  *(v25 + 32) = sub_100004A38();
  *(v25 + 40) = v27;
  *(v25 + 48) = v21;
  *(v25 + 56) = v20;

  isa = sub_100004BE8().super.isa;

  v29 = [v24 pathWithComponents:isa];

  sub_100004BA8();
  v30 = *(v26 + 48);
  v31 = *(v26 + 52);
  swift_allocObject();
  v32 = sub_100004A28();
  v0[43] = v32;
  v0[21] = v32;
  v65 = sub_100003B74(&qword_10000C090, &qword_1000050A8);
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();

  v68 = sub_100004AB8();
  v0[44] = v68;
  if (v68)
  {
    v69 = v0[35];
    v70 = v0[34];
    v71 = v0[26];
    (*(v69 + 16))(v71, v0[36], v70);
    (*(v69 + 56))(v71, 0, 1, v70);
    v72 = async function pointer to LighthouseRuntimeProcessor.processAsync(withContext:)[1];
    v73 = swift_task_alloc();
    v0[45] = v73;
    *v73 = v0;
    v73[1] = sub_1000028F4;
    v75 = v0[26];
    v74 = v0[27];

    return LighthouseRuntimeProcessor.processAsync(withContext:)(v74, v75);
  }

  v96 = v0[32];
  v97 = v0[28];
  v98 = v0[29];
  v99 = v0[27];

  (*(v98 + 56))(v99, 1, 1, v97);
  (*(v98 + 104))(v96, enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:), v97);
  (*(v98 + 32))(v0[33], v0[32], v0[28]);
  v33 = v0[41];
  v34 = sub_100004B78();
  v35 = sub_100004C08();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v0[33];
    v37 = v0[31];
    v38 = v0[28];
    v39 = v0[29];
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v103[0] = v41;
    *v40 = 136315138;
    swift_beginAccess();
    (*(v39 + 16))(v37, v36, v38);
    v42 = sub_100004BB8();
    v44 = sub_100003D08(v42, v43, v103);

    *(v40 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "Lighthouse runtime process result: %s", v40, 0xCu);
    sub_100004564(v41);
  }

  v45 = v0[33];
  v47 = v0[29];
  v46 = v0[30];
  v48 = v0[28];
  swift_beginAccess();
  (*(v47 + 16))(v46, v45, v48);
  v49 = (*(v47 + 88))(v46, v48);
  if (v49 != enum case for LighthouseRuntimeProcessorResult.error(_:))
  {
    if (v49 != enum case for LighthouseRuntimeProcessorResult.success(_:) && v49 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:) && v49 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:))
    {
      (*(v0[29] + 8))(v0[30], v0[28]);
    }

    v57 = v0[40];
    v59 = v0[35];
    v58 = v0[36];
    v61 = v0[33];
    v60 = v0[34];
    v62 = v0[28];
    v63 = v0[29];
    v64 = objc_allocWithZone(sub_100004B08());
    v102 = sub_100004AF8();
    (*(v59 + 8))(v58, v60);
    sub_1000045B0(v57, &qword_10000C038, &qword_100005078);
    (*(v63 + 8))(v61, v62);
    goto LABEL_27;
  }

  v50 = v0[30];
  (*(v0[29] + 96))(v50, v0[28]);
  v51 = *v50;
  v52 = v0[25];
  if (!v51)
  {
    v76 = sub_100004A78();
    (*(*(v76 - 8) + 56))(v52, 1, 1, v76);
    goto LABEL_25;
  }

  v0[20] = v51;
  sub_100003B74(&qword_10000C088, &qword_1000050A0);
  v53 = sub_100004A78();
  v54 = swift_dynamicCast();
  v55 = *(v53 - 8);
  (*(v55 + 56))(v52, v54 ^ 1u, 1, v53);
  if ((*(v55 + 48))(v52, 1, v53) == 1)
  {
LABEL_25:
    v56 = 1;
    goto LABEL_26;
  }

  v56 = 0;
LABEL_26:
  v77 = v0[40];
  v79 = v0[35];
  v78 = v0[36];
  v80 = v0[33];
  v81 = v0[34];
  v82 = v0[28];
  v83 = v0[29];
  sub_1000045B0(v0[25], &qword_10000C018, &qword_100005058);
  v103[3] = &type metadata for DeepThoughtWorkerError;
  v103[4] = sub_100004510();
  LOBYTE(v103[0]) = v56;
  v84 = objc_allocWithZone(sub_100004B08());
  v102 = sub_100004AE8();
  (*(v79 + 8))(v78, v81);
  sub_1000045B0(v77, &qword_10000C038, &qword_100005078);
  (*(v83 + 8))(v80, v82);
LABEL_27:
  v86 = v0[39];
  v85 = v0[40];
  v88 = v0[36];
  v87 = v0[37];
  v90 = v0[32];
  v89 = v0[33];
  v92 = v0[30];
  v91 = v0[31];
  v93 = v0[26];
  v94 = v0[27];
  v101 = v0[25];

  v95 = v0[1];

  return v95(v102);
}

uint64_t sub_1000028F4()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 352);
  sub_1000045B0(*(v2 + 208), &qword_10000C020, &qword_100005060);

  if (v0)
  {
    v6 = sub_100002FB8;
  }

  else
  {
    v6 = sub_100002A54;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100002A54()
{
  v63 = v0;
  v1 = v0[43];
  v2 = v0[32];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[27];

  (*(v4 + 56))(v5, 0, 1, v3);
  v6 = *(v4 + 32);
  v6(v2, v5, v3);
  v6(v0[33], v0[32], v0[28]);
  v7 = v0[41];
  v8 = sub_100004B78();
  v9 = sub_100004C08();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[33];
    v11 = v0[31];
    v12 = v0[28];
    v13 = v0[29];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v62[0] = v15;
    *v14 = 136315138;
    swift_beginAccess();
    (*(v13 + 16))(v11, v10, v12);
    v16 = sub_100004BB8();
    v18 = sub_100003D08(v16, v17, v62);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Lighthouse runtime process result: %s", v14, 0xCu);
    sub_100004564(v15);
  }

  v19 = v0[33];
  v21 = v0[29];
  v20 = v0[30];
  v22 = v0[28];
  swift_beginAccess();
  (*(v21 + 16))(v20, v19, v22);
  v23 = (*(v21 + 88))(v20, v22);
  if (v23 == enum case for LighthouseRuntimeProcessorResult.error(_:))
  {
    v24 = v0[30];
    (*(v0[29] + 96))(v24, v0[28]);
    v25 = *v24;
    v26 = v0[25];
    if (v25)
    {
      v0[20] = v25;
      sub_100003B74(&qword_10000C088, &qword_1000050A0);
      v27 = sub_100004A78();
      v28 = swift_dynamicCast();
      v29 = *(v27 - 8);
      (*(v29 + 56))(v26, v28 ^ 1u, 1, v27);
      if ((*(v29 + 48))(v26, 1, v27) != 1)
      {
        v30 = 0;
LABEL_14:
        v40 = v0[40];
        v42 = v0[35];
        v41 = v0[36];
        v43 = v0[33];
        v44 = v0[34];
        v45 = v0[28];
        v46 = v0[29];
        sub_1000045B0(v0[25], &qword_10000C018, &qword_100005058);
        v62[3] = &type metadata for DeepThoughtWorkerError;
        v62[4] = sub_100004510();
        LOBYTE(v62[0]) = v30;
        v47 = objc_allocWithZone(sub_100004B08());
        v61 = sub_100004AE8();
        (*(v42 + 8))(v41, v44);
        sub_1000045B0(v40, &qword_10000C038, &qword_100005078);
        (*(v46 + 8))(v43, v45);
        goto LABEL_15;
      }
    }

    else
    {
      v39 = sub_100004A78();
      (*(*(v39 - 8) + 56))(v26, 1, 1, v39);
    }

    v30 = 1;
    goto LABEL_14;
  }

  if (v23 != enum case for LighthouseRuntimeProcessorResult.success(_:) && v23 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:) && v23 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:))
  {
    (*(v0[29] + 8))(v0[30], v0[28]);
  }

  v31 = v0[40];
  v33 = v0[35];
  v32 = v0[36];
  v35 = v0[33];
  v34 = v0[34];
  v36 = v0[28];
  v37 = v0[29];
  v38 = objc_allocWithZone(sub_100004B08());
  v61 = sub_100004AF8();
  (*(v33 + 8))(v32, v34);
  sub_1000045B0(v31, &qword_10000C038, &qword_100005078);
  (*(v37 + 8))(v35, v36);
LABEL_15:
  v49 = v0[39];
  v48 = v0[40];
  v51 = v0[36];
  v50 = v0[37];
  v53 = v0[32];
  v52 = v0[33];
  v55 = v0[30];
  v54 = v0[31];
  v56 = v0[26];
  v57 = v0[27];
  v60 = v0[25];

  v58 = v0[1];

  return v58(v61);
}

uint64_t sub_100002FB8()
{
  v61 = v0;
  v1 = *(v0 + 344);

  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  **(v0 + 264) = *(v0 + 368);
  v4 = enum case for LighthouseRuntimeProcessorResult.error(_:);
  (*(v3 + 104))();
  v5 = *(v0 + 328);
  v6 = sub_100004B78();
  v7 = sub_100004C08();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 264);
    v9 = *(v0 + 248);
    v10 = *(v0 + 224);
    v11 = *(v0 + 232);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v60[0] = v13;
    *v12 = 136315138;
    swift_beginAccess();
    (*(v11 + 16))(v9, v8, v10);
    v14 = sub_100004BB8();
    v16 = sub_100003D08(v14, v15, v60);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Lighthouse runtime process result: %s", v12, 0xCu);
    sub_100004564(v13);
  }

  v17 = *(v0 + 264);
  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  v20 = *(v0 + 224);
  swift_beginAccess();
  (*(v19 + 16))(v18, v17, v20);
  v21 = (*(v19 + 88))(v18, v20);
  if (v21 == v4)
  {
    v22 = *(v0 + 240);
    (*(*(v0 + 232) + 96))(v22, *(v0 + 224));
    v23 = *v22;
    v24 = *(v0 + 200);
    if (v23)
    {
      *(v0 + 160) = v23;
      sub_100003B74(&qword_10000C088, &qword_1000050A0);
      v25 = sub_100004A78();
      v26 = swift_dynamicCast();
      v27 = *(v25 - 8);
      (*(v27 + 56))(v24, v26 ^ 1u, 1, v25);
      if ((*(v27 + 48))(v24, 1, v25) != 1)
      {
        v28 = 0;
LABEL_14:
        v38 = *(v0 + 320);
        v40 = *(v0 + 280);
        v39 = *(v0 + 288);
        v41 = *(v0 + 264);
        v42 = *(v0 + 272);
        v43 = *(v0 + 224);
        v44 = *(v0 + 232);
        sub_1000045B0(*(v0 + 200), &qword_10000C018, &qword_100005058);
        v60[3] = &type metadata for DeepThoughtWorkerError;
        v60[4] = sub_100004510();
        LOBYTE(v60[0]) = v28;
        v45 = objc_allocWithZone(sub_100004B08());
        v59 = sub_100004AE8();
        (*(v40 + 8))(v39, v42);
        sub_1000045B0(v38, &qword_10000C038, &qword_100005078);
        (*(v44 + 8))(v41, v43);
        goto LABEL_15;
      }
    }

    else
    {
      v37 = sub_100004A78();
      (*(*(v37 - 8) + 56))(v24, 1, 1, v37);
    }

    v28 = 1;
    goto LABEL_14;
  }

  if (v21 != enum case for LighthouseRuntimeProcessorResult.success(_:) && v21 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:) && v21 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:))
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  }

  v29 = *(v0 + 320);
  v31 = *(v0 + 280);
  v30 = *(v0 + 288);
  v33 = *(v0 + 264);
  v32 = *(v0 + 272);
  v34 = *(v0 + 224);
  v35 = *(v0 + 232);
  v36 = objc_allocWithZone(sub_100004B08());
  v59 = sub_100004AF8();
  (*(v31 + 8))(v30, v32);
  sub_1000045B0(v29, &qword_10000C038, &qword_100005078);
  (*(v35 + 8))(v33, v34);
LABEL_15:
  v47 = *(v0 + 312);
  v46 = *(v0 + 320);
  v49 = *(v0 + 288);
  v48 = *(v0 + 296);
  v51 = *(v0 + 256);
  v50 = *(v0 + 264);
  v53 = *(v0 + 240);
  v52 = *(v0 + 248);
  v54 = *(v0 + 208);
  v55 = *(v0 + 216);
  v58 = *(v0 + 200);

  v56 = *(v0 + 8);

  return v56(v59);
}

uint64_t sub_1000034E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100004A24;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100003590(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003638;

  return sub_1000018CC(a1, v5, v4);
}

uint64_t sub_100003638(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100003734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100003818;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100003818()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000390C(uint64_t a1)
{
  v2 = sub_100003B20();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000039D4();
  sub_100004AD8();
  return 0;
}

unint64_t sub_1000039D4()
{
  result = qword_10000C008;
  if (!qword_10000C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C008);
  }

  return result;
}

__n128 sub_100003A28(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003A34(uint64_t a1, int a2)
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

uint64_t sub_100003A7C(uint64_t result, int a2, int a3)
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

unint64_t sub_100003B20()
{
  result = qword_10000C010;
  if (!qword_10000C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C010);
  }

  return result;
}

uint64_t sub_100003B74(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003BBC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003BF4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003C3C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003BF4(&qword_10000C038, &qword_100005078);
    sub_100003CC4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003CC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004A98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003D08(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003DD4(v11, 0, 0, 1, a1, a2);
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
    sub_100004610(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004564(v11);
  return v7;
}

unint64_t sub_100003DD4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003EE0(a5, a6);
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
    result = sub_100004C28();
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

char *sub_100003EE0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003F2C(a1, a2);
  sub_10000405C(&off_100008588);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003F2C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004148(v5, 0);
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

  result = sub_100004C28();
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
        v10 = sub_100004BD8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004148(v10, 0);
        result = sub_100004C18();
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

uint64_t sub_10000405C(uint64_t result)
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

  result = sub_1000041BC(result, v12, 1, v3);
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

void *sub_100004148(uint64_t a1, uint64_t a2)
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

  sub_100003B74(&qword_10000C098, &qword_1000050B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000041BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003B74(&qword_10000C098, &qword_1000050B0);
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

unint64_t sub_1000042B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100004CA8();
  sub_100004BC8();
  v6 = sub_100004CB8();

  return sub_100004328(a1, a2, v6);
}

unint64_t sub_100004328(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100004C58())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000043E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003B74(&qword_10000C0A0, &qword_1000050B8);
    v3 = sub_100004C38();
    v4 = a1 + 32;

    while (1)
    {
      sub_100004670(v4, &v13, &qword_10000C070, &qword_100005090);
      v5 = v13;
      v6 = v14;
      result = sub_1000042B0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000046D8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100004510()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_100004564(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000045B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003B74(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004610(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004670(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003B74(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1000046D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_1000046E8(uint64_t a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for DeepThoughtWorkerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeepThoughtWorkerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000048C8()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

unint64_t sub_100004920()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

unint64_t sub_100004978()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_1000049D0()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}