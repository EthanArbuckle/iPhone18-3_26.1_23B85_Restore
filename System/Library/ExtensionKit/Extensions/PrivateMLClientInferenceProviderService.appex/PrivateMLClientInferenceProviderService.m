uint64_t sub_100001328()
{
  v0 = sub_100007954();
  sub_10000623C(v0, qword_100010180);
  sub_1000054EC(v0, qword_100010180);
  return sub_100007944();
}

uint64_t sub_10000140C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t InferenceProviderAdapter.prewarmHint(_:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_100007794();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v6 = sub_100007904();
  v2[22] = v6;
  v7 = *(v6 - 8);
  v2[23] = v7;
  v8 = *(v7 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100001564, 0, 0);
}

uint64_t sub_100001564()
{
  v74 = v0;
  sub_100005DA0(*(v0 + 144), v0 + 56);
  sub_1000054A4(&qword_100010198, &qword_100007E88);
  sub_1000054A4(&qword_1000101A0, &qword_100007E90);
  if (swift_dynamicCast())
  {
    sub_10000140C((v0 + 96), v0 + 16);
    if (qword_100010178 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 208);
    v2 = *(v0 + 216);
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 136);
    v6 = sub_100007954();
    sub_1000054EC(v6, qword_100010180);
    v7 = *(v4 + 16);
    v7(v2, v5, v3);
    v7(v1, v5, v3);
    v8 = sub_100007934();
    v9 = sub_100007A24();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 208);
    v12 = *(v0 + 216);
    v14 = *(v0 + 176);
    v13 = *(v0 + 184);
    if (v10)
    {
      v71 = v9;
      v15 = *(v0 + 160);
      v16 = *(v0 + 168);
      v67 = *(v0 + 152);
      v17 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v17 = 136315394;
      log = v8;
      sub_1000078E4();
      v18 = sub_100007784();
      v20 = v19;
      (*(v15 + 8))(v16, v67);
      v21 = *(v13 + 8);
      v21(v12, v14);
      v22 = sub_100005524(v18, v20, &v73);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      v23 = sub_1000078F4();
      v25 = v24;
      v21(v11, v14);
      v26 = sub_100005524(v23, v25, &v73);

      *(v17 + 14) = v26;
      _os_log_impl(&_mh_execute_header, log, v71, "prewarmHint. sessionUUID=%s modelBundleIdentifier=%s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v53 = *(v13 + 8);
      v53(v11, v14);
      v53(v12, v14);
    }

    v54 = *(v0 + 40);
    v55 = *(v0 + 48);
    sub_100005ACC((v0 + 16), v54);
    v56 = async function pointer to dispatch thunk of InferenceProviderWithPrewarm.prewarmHint(_:)[1];
    v57 = swift_task_alloc();
    *(v0 + 224) = v57;
    *v57 = v0;
    v57[1] = sub_100001BCC;
    v58 = *(v0 + 136);

    return dispatch thunk of InferenceProviderWithPrewarm.prewarmHint(_:)(v58, v54, v55);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_100006118(v0 + 96, &qword_1000101A8, &qword_100007E98);
    if (qword_100010178 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 192);
    v28 = *(v0 + 200);
    v29 = *(v0 + 176);
    v30 = *(v0 + 184);
    v31 = *(v0 + 136);
    v32 = sub_100007954();
    sub_1000054EC(v32, qword_100010180);
    v33 = *(v30 + 16);
    v33(v28, v31, v29);
    v33(v27, v31, v29);
    v34 = sub_100007934();
    v35 = sub_100007A24();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 192);
    v38 = *(v0 + 200);
    v40 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v72 = v35;
      v41 = *(v0 + 160);
      v42 = *(v0 + 168);
      v68 = *(v0 + 152);
      v43 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v43 = 136315394;
      loga = v34;
      sub_1000078E4();
      v44 = sub_100007784();
      v46 = v45;
      (*(v41 + 8))(v42, v68);
      v47 = *(v39 + 8);
      v47(v38, v40);
      v48 = sub_100005524(v44, v46, &v73);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      v49 = sub_1000078F4();
      v51 = v50;
      v47(v37, v40);
      v52 = sub_100005524(v49, v51, &v73);

      *(v43 + 14) = v52;
      _os_log_impl(&_mh_execute_header, loga, v72, "prewarmHint skipped, not implemented. sessionUUID=%s modelBundleIdentifier=%s", v43, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v59 = *(v39 + 8);
      v59(v37, v40);
      v59(v38, v40);
    }

    v61 = *(v0 + 208);
    v60 = *(v0 + 216);
    v63 = *(v0 + 192);
    v62 = *(v0 + 200);
    v64 = *(v0 + 168);

    v65 = *(v0 + 8);

    return v65();
  }
}

uint64_t sub_100001BCC()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return _swift_task_switch(sub_100001CC8, 0, 0);
}

uint64_t sub_100001CC8()
{
  sub_100005B10(v0 + 2);
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t _s39PrivateMLClientInferenceProviderService0cD7AdapterV15transitionAsset_2toy20ModelManagerServices0cdH10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKF(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000078D4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100001E20, 0, 0);
}

uint64_t sub_100001E20()
{
  v22 = v0;
  if (qword_100010178 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_100007954();
  sub_1000054EC(v5, qword_100010180);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_100007934();
  v7 = sub_100007A24();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    sub_100006000(&qword_1000101B0, 255, &type metadata accessor for InferenceProviderAssetDescriptor);
    v14 = sub_100007A84();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100005524(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "transitionAsset not implemented. asset=%s", v12, 0xCu);
    sub_100005B10(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[5];

  v19 = v0[1];

  return v19();
}

uint64_t _s39PrivateMLClientInferenceProviderService0cD7AdapterV15transitionAsset14withIdentifier2to4fromySS_20ModelManagerServices9LoadStateOAJtYaAH0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = v5;
  v6[29] = a5;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = sub_1000077D4();
  v6[30] = v7;
  v8 = *(v7 - 8);
  v6[31] = v8;
  v9 = *(v8 + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v10 = sub_100007914();
  v6[34] = v10;
  v11 = *(v10 - 8);
  v6[35] = v11;
  v12 = *(v11 + 64) + 15;
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return _swift_task_switch(sub_1000021B4, 0, 0);
}

uint64_t sub_1000021B4()
{
  v41 = v0;
  if (qword_100010178 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[34];
  v4 = v0[35];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v8 = sub_100007954();
  sub_1000054EC(v8, qword_100010180);
  v9 = *(v4 + 16);
  v9(v2, v6, v3);
  v9(v1, v5, v3);

  v10 = sub_100007934();
  v11 = sub_100007A24();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[38];
  v13 = v0[39];
  v16 = v0[34];
  v15 = v0[35];
  if (v12)
  {
    v18 = v0[24];
    v17 = v0[25];
    v39 = v11;
    v19 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100005524(v18, v17, &v40);
    *(v19 + 12) = 2080;
    sub_100006000(&qword_1000101E0, 255, &type metadata accessor for LoadState);
    v20 = sub_100007A84();
    v22 = v21;
    log = v10;
    v23 = *(v15 + 8);
    v23(v13, v16);
    v24 = sub_100005524(v20, v22, &v40);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    v25 = sub_100007A84();
    v27 = v26;
    v23(v14, v16);
    v28 = sub_100005524(v25, v27, &v40);

    *(v19 + 24) = v28;
    _os_log_impl(&_mh_execute_header, log, v39, "transitionAsset with state asset=%s to=%s from=%s", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v23 = *(v15 + 8);
    v23(v14, v16);
    v23(v13, v16);
  }

  v0[40] = v23;
  v29 = v0[28];
  v30 = v29[3];
  v31 = v29[4];
  sub_100005ACC(v29, v30);
  v32 = async function pointer to dispatch thunk of InferenceProvider.transitionAsset(withIdentifier:to:)[1];
  v33 = swift_task_alloc();
  v0[41] = v33;
  *v33 = v0;
  v33[1] = sub_100002528;
  v34 = v0[25];
  v35 = v0[26];
  v36 = v0[24];

  return dispatch thunk of InferenceProvider.transitionAsset(withIdentifier:to:)(v36, v34, v35, v30, v31);
}

uint64_t sub_100002528()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_100002CF0;
  }

  else
  {
    v3 = sub_10000263C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000263C()
{
  v1 = *(v0 + 208);
  v2 = enum case for LoadState.unloaded(_:);
  v3 = *(*(v0 + 280) + 104);
  v3(*(v0 + 296), enum case for LoadState.unloaded(_:), *(v0 + 272));
  sub_100006000(&qword_1000101D8, 255, &type metadata accessor for LoadState);
  sub_1000079D4();
  sub_1000079D4();
  if (*(v0 + 104) == *(v0 + 120) && *(v0 + 112) == *(v0 + 128))
  {
    v4 = 1;
  }

  else
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 128);
    v4 = sub_100007AA4();
  }

  v7 = *(v0 + 280) + 8;
  (*(v0 + 320))(*(v0 + 296), *(v0 + 272));

  if (v4)
  {
    v8 = *(v0 + 224);
    v9 = v8[3];
    v10 = v8[4];
    sub_100005ACC(v8, v9);
    v11 = async function pointer to dispatch thunk of InferenceProvider.loadOut(inferenceAssetIdentifier:)[1];
    v12 = swift_task_alloc();
    *(v0 + 344) = v12;
    *v12 = v0;
    v12[1] = sub_1000029E0;
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);

    return dispatch thunk of InferenceProvider.loadOut(inferenceAssetIdentifier:)(v14, v13, v9, v10);
  }

  v15 = *(v0 + 216);
  v3(*(v0 + 288), v2, *(v0 + 272));
  sub_1000079D4();
  sub_1000079D4();
  v16 = *(v0 + 320);
  v17 = *(v0 + 288);
  v18 = *(v0 + 272);
  if (*(v0 + 136) == *(v0 + 152) && *(v0 + 144) == *(v0 + 160))
  {
    v16(*(v0 + 288), *(v0 + 272));

LABEL_13:
    v22 = *(v0 + 224);
    v23 = v22[3];
    v24 = v22[4];
    sub_100005ACC(v22, v23);
    v25 = async function pointer to dispatch thunk of InferenceProvider.loadIn(inferenceAssetIdentifier:)[1];
    v26 = swift_task_alloc();
    *(v0 + 360) = v26;
    *v26 = v0;
    v26[1] = sub_100002B68;
    v28 = *(v0 + 192);
    v27 = *(v0 + 200);

    return dispatch thunk of InferenceProvider.loadIn(inferenceAssetIdentifier:)(v28, v27, v23, v24);
  }

  v19 = *(v0 + 144);
  v20 = *(v0 + 160);
  v21 = sub_100007AA4();
  v16(v17, v18);

  if (v21)
  {
    goto LABEL_13;
  }

  v30 = *(v0 + 304);
  v29 = *(v0 + 312);
  v32 = *(v0 + 288);
  v31 = *(v0 + 296);
  v34 = *(v0 + 256);
  v33 = *(v0 + 264);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1000029E0()
{
  v2 = *(*v1 + 344);
  v3 = *v1;
  v3[44] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100003060, 0, 0);
  }

  else
  {
    v5 = v3[38];
    v4 = v3[39];
    v7 = v3[36];
    v6 = v3[37];
    v8 = v3[32];
    v9 = v3[33];

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_100002B68()
{
  v2 = *(*v1 + 360);
  v3 = *v1;
  v3[46] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000033D0, 0, 0);
  }

  else
  {
    v5 = v3[38];
    v4 = v3[39];
    v7 = v3[36];
    v6 = v3[37];
    v8 = v3[32];
    v9 = v3[33];

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_100002CF0()
{
  v1 = v0[42];
  v0[21] = v1;
  v2 = v0[33];
  v3 = v0[30];
  swift_errorRetain();
  sub_1000054A4(&qword_1000101B8, &qword_100007EB0);
  if (swift_dynamicCast())
  {
    v5 = v0[32];
    v4 = v0[33];
    v6 = v0[30];
    v7 = v0[31];
    v8 = v0[29];

    (*(v7 + 32))(v5, v4, v6);
    (*(v7 + 16))(v8, v5, v6);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError);
    swift_willThrowTypedImpl();
    (*(v7 + 8))(v5, v6);
    v9 = v0[21];
  }

  else
  {
    v10 = v0[31];
    v29 = v0[30];
    v11 = v0[29];
    v12 = v0[21];

    v13 = sub_100007774();
    v0[22] = v1;
    swift_errorRetain();
    sub_1000079A4();
    v14 = [v13 domain];
    sub_100007994();

    [v13 code];
    sub_1000054A4(&qword_1000101C0, &qword_100007EB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100007E70;
    *(inited + 32) = sub_100007994();
    *(inited + 40) = v16;
    swift_getErrorValue();
    v18 = v0[10];
    v17 = v0[11];
    v19 = v0[12];
    *(inited + 48) = sub_100007AB4();
    *(inited + 56) = v20;
    sub_100005C8C(inited);
    swift_setDeallocating();
    sub_100006118(inited + 32, &qword_1000101C8, &qword_100007EC0);
    sub_1000077C4();
    (*(v10 + 104))(v11, enum case for InferenceError.inferenceFailed(_:), v29);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError);
    swift_willThrowTypedImpl();
  }

  v22 = v0[38];
  v21 = v0[39];
  v24 = v0[36];
  v23 = v0[37];
  v26 = v0[32];
  v25 = v0[33];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100003060()
{
  v1 = v0[44];
  v0[21] = v1;
  v2 = v0[33];
  v3 = v0[30];
  swift_errorRetain();
  sub_1000054A4(&qword_1000101B8, &qword_100007EB0);
  if (swift_dynamicCast())
  {
    v5 = v0[32];
    v4 = v0[33];
    v6 = v0[30];
    v7 = v0[31];
    v8 = v0[29];

    (*(v7 + 32))(v5, v4, v6);
    (*(v7 + 16))(v8, v5, v6);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError);
    swift_willThrowTypedImpl();
    (*(v7 + 8))(v5, v6);
    v9 = v0[21];
  }

  else
  {
    v10 = v0[31];
    v29 = v0[30];
    v11 = v0[29];
    v12 = v0[21];

    v13 = sub_100007774();
    v0[22] = v1;
    swift_errorRetain();
    sub_1000079A4();
    v14 = [v13 domain];
    sub_100007994();

    [v13 code];
    sub_1000054A4(&qword_1000101C0, &qword_100007EB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100007E70;
    *(inited + 32) = sub_100007994();
    *(inited + 40) = v16;
    swift_getErrorValue();
    v18 = v0[10];
    v17 = v0[11];
    v19 = v0[12];
    *(inited + 48) = sub_100007AB4();
    *(inited + 56) = v20;
    sub_100005C8C(inited);
    swift_setDeallocating();
    sub_100006118(inited + 32, &qword_1000101C8, &qword_100007EC0);
    sub_1000077C4();
    (*(v10 + 104))(v11, enum case for InferenceError.inferenceFailed(_:), v29);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError);
    swift_willThrowTypedImpl();
  }

  v22 = v0[38];
  v21 = v0[39];
  v24 = v0[36];
  v23 = v0[37];
  v26 = v0[32];
  v25 = v0[33];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000033D0()
{
  v1 = v0[46];
  v0[21] = v1;
  v2 = v0[33];
  v3 = v0[30];
  swift_errorRetain();
  sub_1000054A4(&qword_1000101B8, &qword_100007EB0);
  if (swift_dynamicCast())
  {
    v5 = v0[32];
    v4 = v0[33];
    v6 = v0[30];
    v7 = v0[31];
    v8 = v0[29];

    (*(v7 + 32))(v5, v4, v6);
    (*(v7 + 16))(v8, v5, v6);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError);
    swift_willThrowTypedImpl();
    (*(v7 + 8))(v5, v6);
    v9 = v0[21];
  }

  else
  {
    v10 = v0[31];
    v29 = v0[30];
    v11 = v0[29];
    v12 = v0[21];

    v13 = sub_100007774();
    v0[22] = v1;
    swift_errorRetain();
    sub_1000079A4();
    v14 = [v13 domain];
    sub_100007994();

    [v13 code];
    sub_1000054A4(&qword_1000101C0, &qword_100007EB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100007E70;
    *(inited + 32) = sub_100007994();
    *(inited + 40) = v16;
    swift_getErrorValue();
    v18 = v0[10];
    v17 = v0[11];
    v19 = v0[12];
    *(inited + 48) = sub_100007AB4();
    *(inited + 56) = v20;
    sub_100005C8C(inited);
    swift_setDeallocating();
    sub_100006118(inited + 32, &qword_1000101C8, &qword_100007EC0);
    sub_1000077C4();
    (*(v10 + 104))(v11, enum case for InferenceError.inferenceFailed(_:), v29);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError);
    swift_willThrowTypedImpl();
  }

  v22 = v0[38];
  v21 = v0[39];
  v24 = v0[36];
  v23 = v0[37];
  v26 = v0[32];
  v25 = v0[33];

  v27 = v0[1];

  return v27();
}

uint64_t _s39PrivateMLClientInferenceProviderService0cD7AdapterV14requestOneShot10clientData13configuration20ModelManagerServices06ClientK0VAI_AG0cD20RequestConfigurationVtYaAG0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = v4;
  v5[20] = a4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = sub_1000077D4();
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_100003814, 0, 0);
}

uint64_t sub_100003814()
{
  v1 = v0[19];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005ACC(v1, v2);
  v4 = async function pointer to dispatch thunk of InferenceProvider.requestOneShot(clientData:configuration:)[1];
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_1000038D4;
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];

  return dispatch thunk of InferenceProvider.requestOneShot(clientData:configuration:)(v8, v6, v7, v2, v3);
}

uint64_t sub_1000038D4()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100003A1C, 0, 0);
  }

  else
  {
    v5 = v3[23];
    v4 = v3[24];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100003A1C()
{
  v1 = v0;
  v0[13] = v0[26];
  v2 = v0[24];
  v3 = v0[21];
  swift_errorRetain();
  sub_1000054A4(&qword_1000101B8, &qword_100007EB0);
  if (swift_dynamicCast())
  {
    v4 = v0[26];
    v5 = v0[23];
    v6 = v0[24];
    v7 = v0[21];
    v8 = v0[22];
    v9 = v1[20];

    (*(v8 + 32))(v5, v6, v7);
    (*(v8 + 16))(v9, v5, v7);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError);
    swift_willThrowTypedImpl();
    (*(v8 + 8))(v5, v7);
    v10 = v1[13];
  }

  else
  {
    v11 = v0[26];
    v12 = v0[22];
    v27 = v0[21];
    v13 = v0[20];
    v14 = v0[13];

    v15 = sub_100007774();
    v0[14] = v11;
    swift_errorRetain();
    sub_1000079A4();
    v16 = [v15 domain];
    sub_100007994();

    [v15 code];
    sub_1000054A4(&qword_1000101C0, &qword_100007EB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100007E70;
    *(inited + 32) = sub_100007994();
    *(inited + 40) = v18;
    swift_getErrorValue();
    v20 = v0[10];
    v19 = v0[11];
    v21 = v0[12];
    *(inited + 48) = sub_100007AB4();
    *(inited + 56) = v22;
    sub_100005C8C(inited);
    swift_setDeallocating();
    sub_100006118(inited + 32, &qword_1000101C8, &qword_100007EC0);
    sub_1000077C4();
    (*(v12 + 104))(v13, enum case for InferenceError.inferenceFailed(_:), v27);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError);
    swift_willThrowTypedImpl();
  }

  v24 = v1[23];
  v23 = v1[24];

  v25 = v1[1];

  return v25();
}

uint64_t InferenceProviderAdapter.requestStream(clientData:configuration:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[4];
  sub_100005ACC(v1, v1[3]);
  sub_1000077E4();
  sub_100005DA0(v19, v17);
  v4 = type metadata accessor for InferenceProviderAdapter.StreamAdapter();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = v18;
  v7 = sub_100005ACC(v17, v18);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v7, v7);
  (*(v10 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100006178(&v14);
  sub_100007A04();
  sub_10000140C(&v14, v5 + 112);
  sub_100005B10(v17);
  a1[3] = v4;
  a1[4] = sub_100006000(&qword_1000101E8, v11, type metadata accessor for InferenceProviderAdapter.StreamAdapter);
  *a1 = v5;
  return sub_100005B10(v19);
}

uint64_t sub_100003F5C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = *(*(sub_1000054A4(&qword_1000102E0, &qword_100008120) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100003FF8, v1, 0);
}

uint64_t sub_100003FF8(uint64_t a1, uint64_t a2)
{
  v3 = v2[22];
  v4 = sub_100006000(&qword_1000102E8, a2, type metadata accessor for InferenceProviderAdapter.StreamAdapter);
  swift_beginAccess();
  v5 = *(v3 + 136);
  v2[24] = v5;
  v6 = *(v3 + 144);
  v2[25] = v6;
  sub_100006048(v3 + 112, v5);
  v2[26] = swift_getAssociatedTypeWitness();
  v7 = sub_100007A34();
  v2[27] = v7;
  v8 = *(v7 - 8);
  v2[28] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v2[29] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[30] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v2[31] = v12;
  v2[32] = *(v12 + 64);
  v13 = swift_task_alloc();
  v2[33] = v13;
  v14 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v15 = swift_task_alloc();
  v2[34] = v15;
  *v15 = v2;
  v15[1] = sub_100004238;

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, v3, v4, v13, v5, v6);
}

uint64_t sub_100004238()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v9 = *v1;

  if (v0)
  {
    v4 = *(v2 + 176);
    v5 = sub_100004654;
  }

  else
  {
    v6 = *(v2 + 264);
    v7 = *(v2 + 176);
    swift_endAccess();

    v5 = sub_100004370;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100004370()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 224) + 8))(v1, *(v0 + 216));

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  else
  {
    *(v0 + 40) = v2;
    v4 = sub_100006178((v0 + 16));
    (*(v3 + 32))(v4, v1, v2);
  }

  sub_100006098(v0 + 16, v0 + 80);
  if (*(v0 + 104))
  {
    v5 = *(v0 + 184);
    sub_100006108((v0 + 80), (v0 + 48));
    sub_100006108((v0 + 48), (v0 + 112));
    v6 = sub_1000077B4();
    v7 = swift_dynamicCast();
    v8 = *(*(v6 - 8) + 56);
    v9 = *(v0 + 184);
    v10 = *(v0 + 168);
    if (v7)
    {
      v11 = *(v6 - 8);
      v8(*(v0 + 184), 0, 1, v6);
      (*(v11 + 32))(v10, v9, v6);
      v12 = v10;
      v13 = 0;
    }

    else
    {
      v8(*(v0 + 184), 1, 1, v6);
      sub_100006118(v9, &qword_1000102E0, &qword_100008120);
      v12 = v10;
      v13 = 1;
    }

    v8(v12, v13, 1, v6);
  }

  else
  {
    v14 = *(v0 + 168);
    sub_100006118(v0 + 80, &qword_1000102F0, &qword_100008128);
    v15 = sub_1000077B4();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  v16 = *(v0 + 184);
  sub_100006118(v0 + 16, &qword_1000102F0, &qword_100008128);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100004654()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[32] + 15;
  v7 = swift_task_alloc();
  v8 = *(v3 + 32);
  v8(v7, v1, v2);
  swift_getAssociatedConformanceWitness();
  if (sub_100007A94())
  {
    (*(v0[31] + 8))(v7, v0[30]);
  }

  else
  {
    v9 = v0[30];
    swift_allocError();
    v8(v10, v7, v9);
  }

  v11 = v0[33];
  v12 = v0[29];
  v13 = v0[23];

  swift_endAccess();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000047BC()
{
  sub_100005B10((v0 + 112));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000480C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000048A8;

  return sub_100003F5C(a1);
}

uint64_t sub_1000048A8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  v7 = sub_1000077D4();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v10 = sub_1000079E4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v5[9] = v10;
  v5[10] = v12;

  return _swift_task_switch(sub_100004A9C, v10, v12);
}

uint64_t sub_100004A9C()
{
  v1 = **(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_100004B38;
  v3 = *(v0 + 24);

  return sub_100003F5C(v3);
}

uint64_t sub_100004B38()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_100004CD8;
  }

  else
  {
    v7 = sub_100004C74;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100004C74()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100004CD8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v0[2] = v0[12];
  sub_1000054A4(&qword_1000101B8, &qword_100007EB0);
  swift_dynamicCast();
  sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError);
  swift_willThrowTypedImpl();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100004DF0()
{
  v1 = sub_100007894();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100004E54()
{
  v1 = sub_100007874();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100004EFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000048A8;

  return InferenceProviderAdapter.prewarmHint(_:)(a1);
}

uint64_t sub_100004F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = sub_1000077D4();
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v3[5] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_1000062AC;

  return _s39PrivateMLClientInferenceProviderService0cD7AdapterV15transitionAsset_2toy20ModelManagerServices0cdH10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKF(a1);
}

uint64_t sub_100005088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1000062A0;

  return InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100005154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to InferenceProviding.inputStreamEnded(requestID:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000062A0;

  return InferenceProviding.inputStreamEnded(requestID:)(a1, a2, a3);
}

uint64_t sub_100005204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v8 = sub_1000077D4();
  v4[3] = v8;
  v9 = *(v8 - 8);
  v4[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v4[5] = v11;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_100005324;

  return _s39PrivateMLClientInferenceProviderService0cD7AdapterV14requestOneShot10clientData13configuration20ModelManagerServices06ClientK0VAI_AG0cD20RequestConfigurationVtYaAG0C5ErrorOYKF(a1, a2, a3, v11);
}

uint64_t sub_100005324()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  else
  {
    v6 = v2[5];
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_100005458(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000054A4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000054EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005524(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000055F0(v11, 0, 0, 1, a1, a2);
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
    sub_1000061DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005B10(v11);
  return v7;
}

unint64_t sub_1000055F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000056FC(a5, a6);
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
    result = sub_100007A54();
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

char *sub_1000056FC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005748(a1, a2);
  sub_100005878(&off_10000C648);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100005748(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005964(v5, 0);
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

  result = sub_100007A54();
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
        v10 = sub_1000079C4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005964(v10, 0);
        result = sub_100007A44();
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

uint64_t sub_100005878(uint64_t result)
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

  result = sub_1000059D8(result, v12, 1, v3);
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

void *sub_100005964(uint64_t a1, uint64_t a2)
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

  sub_1000054A4(&qword_100010300, qword_100008138);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000059D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054A4(&qword_100010300, qword_100008138);
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

void *sub_100005ACC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005B10(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100005B5C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100007AC4();
  sub_1000079B4();
  v6 = sub_100007AD4();

  return sub_100005BD4(a1, a2, v6);
}

unint64_t sub_100005BD4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100007AA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100005C8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000054A4(&qword_1000102F8, &qword_100008130);
    v3 = sub_100007A74();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100005B5C(v5, v6);
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

uint64_t sub_100005DA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_100005E28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100005E3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100005E84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100006000(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006048(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100006098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000054A4(&qword_1000102F0, &qword_100008128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100006108(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006118(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000054A4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_100006178(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000061DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10000623C(uint64_t a1, uint64_t *a2)
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

unint64_t PrivateMLClientInferenceProvider.init()@<X0>(void *a1@<X8>)
{
  v2 = sub_100007954();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v25 - v10;
  sub_100007924();
  v12 = sub_100007934();
  v13 = sub_100007A14();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Initializing PrivateMLClientInferenceProvider", v14, 2u);
  }

  v15 = *(v3 + 8);
  v15(v11, v2);
  sub_100007924();
  v16 = sub_100007934();
  v17 = sub_100007A14();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Using NewPrivateInferenceProvider", v18, 2u);
  }

  v15(v8, v2);
  v19 = sub_100007974();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_100007964();
  a1[3] = &type metadata for InferenceProviderAdapter;
  a1[4] = sub_100006500();
  v23 = swift_allocObject();
  *a1 = v23;
  v23[5] = v19;
  result = sub_10000658C();
  v23[6] = result;
  v23[2] = v22;
  return result;
}

unint64_t sub_100006500()
{
  result = qword_100010308;
  if (!qword_100010308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010308);
  }

  return result;
}

uint64_t sub_100006554()
{
  sub_100005B10((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10000658C()
{
  result = qword_100010310;
  if (!qword_100010310)
  {
    sub_100007974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010310);
  }

  return result;
}

uint64_t PrivateMLClientInferenceProvider.prewarmHint(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100006604, 0, 0);
}

uint64_t sub_100006604()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005ACC(v1, v2);
  v4 = async function pointer to dispatch thunk of InferenceProviding.prewarmHint(_:)[1];
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1000066C0;
  v6 = v0[2];

  return dispatch thunk of InferenceProviding.prewarmHint(_:)(v6, v2, v3);
}

uint64_t sub_1000066C0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s39PrivateMLClientInferenceProviderService0abcD0V15transitionAsset_2toy20ModelManagerServices0cdG10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000077D4();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100006878, 0, 0);
}

uint64_t sub_100006878()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005ACC(v1, v2);
  v4 = _s20ModelManagerServices18InferenceProvidingP15transitionAsset_2toyAA0d8ProviderG10DescriptorV_AA9LoadStateOtYaAA0D5ErrorOYKFTjTu[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_100006938;
  v6 = v0[8];
  v8 = v0[2];
  v7 = v0[3];

  return _s20ModelManagerServices18InferenceProvidingP15transitionAsset_2toyAA0d8ProviderG10DescriptorV_AA9LoadStateOtYaAA0D5ErrorOYKFTj(v8, v7, v6, v2, v3);
}

uint64_t sub_100006938()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_100006A70, 0, 0);
  }

  else
  {
    v5 = *(v2 + 64);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_100006A70()
{
  (*(v0[7] + 32))(v0[5], v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t _s39PrivateMLClientInferenceProviderService0abcD0V14requestOneShot10clientData13configuration20ModelManagerServices06ClientJ0VAI_AG0cD20RequestConfigurationVtYaAG0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = v4;
  v5[6] = a4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1000077D4();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100006BB8, 0, 0);
}

uint64_t sub_100006BB8()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005ACC(v1, v2);
  v4 = _s20ModelManagerServices18InferenceProvidingP14requestOneShot10clientData13configurationAA06ClientJ0VAH_AA0D28ProviderRequestConfigurationVtYaAA0D5ErrorOYKFTjTu[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100006C7C;
  v6 = v0[9];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return _s20ModelManagerServices18InferenceProvidingP14requestOneShot10clientData13configurationAA06ClientJ0VAH_AA0D28ProviderRequestConfigurationVtYaAA0D5ErrorOYKFTj(v9, v7, v8, v6, v2, v3);
}

uint64_t sub_100006C7C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_100006DB4, 0, 0);
  }

  else
  {
    v5 = *(v2 + 72);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_100006DB4()
{
  (*(v0[8] + 32))(v0[6], v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t PrivateMLClientInferenceProvider.requestStream(clientData:configuration:)()
{
  v1 = v0[4];
  sub_100005ACC(v0, v0[3]);
  return sub_100007844();
}

uint64_t sub_100006E9C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100006EBC, 0, 0);
}

uint64_t sub_100006EBC()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005ACC(v1, v2);
  v4 = async function pointer to dispatch thunk of InferenceProviding.prewarmHint(_:)[1];
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1000075C0;
  v6 = v0[2];

  return dispatch thunk of InferenceProviding.prewarmHint(_:)(v6, v2, v3);
}

uint64_t sub_100006F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000077D4();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10000703C, 0, 0);
}

uint64_t sub_10000703C()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005ACC(v1, v2);
  v4 = _s20ModelManagerServices18InferenceProvidingP15transitionAsset_2toyAA0d8ProviderG10DescriptorV_AA9LoadStateOtYaAA0D5ErrorOYKFTjTu[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1000070FC;
  v6 = v0[8];
  v8 = v0[2];
  v7 = v0[3];

  return _s20ModelManagerServices18InferenceProvidingP15transitionAsset_2toyAA0d8ProviderG10DescriptorV_AA9LoadStateOtYaAA0D5ErrorOYKFTj(v8, v7, v6, v2, v3);
}

uint64_t sub_1000070FC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_1000075B8, 0, 0);
  }

  else
  {
    v5 = *(v2 + 64);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_100007234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to InferenceProviding.inputStreamEnded(requestID:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000048A8;

  return InferenceProviding.inputStreamEnded(requestID:)(a1, a2, a3);
}

uint64_t sub_1000072E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = v4;
  v5[6] = a4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1000077D4();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000073AC, 0, 0);
}

uint64_t sub_1000073AC()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005ACC(v1, v2);
  v4 = _s20ModelManagerServices18InferenceProvidingP14requestOneShot10clientData13configurationAA06ClientJ0VAH_AA0D28ProviderRequestConfigurationVtYaAA0D5ErrorOYKFTjTu[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100007470;
  v6 = v0[9];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return _s20ModelManagerServices18InferenceProvidingP14requestOneShot10clientData13configurationAA06ClientJ0VAH_AA0D28ProviderRequestConfigurationVtYaAA0D5ErrorOYKFTj(v9, v7, v8, v6, v2, v3);
}

uint64_t sub_100007470()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_1000075BC, 0, 0);
  }

  else
  {
    v5 = *(v2 + 72);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1000075C4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1000078B4();
}

uint64_t sub_1000075F8()
{
  v0 = sub_1000078C4();

  return _swift_deallocClassInstance(v0, 16, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for PrivateMLClientInferenceProviderService();
  sub_1000076D4();
  sub_1000077A4();
  return 0;
}

uint64_t type metadata accessor for PrivateMLClientInferenceProviderService()
{
  result = qword_100010320;
  if (!qword_100010320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000076D4()
{
  result = qword_100010318;
  if (!qword_100010318)
  {
    type metadata accessor for PrivateMLClientInferenceProviderService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010318);
  }

  return result;
}