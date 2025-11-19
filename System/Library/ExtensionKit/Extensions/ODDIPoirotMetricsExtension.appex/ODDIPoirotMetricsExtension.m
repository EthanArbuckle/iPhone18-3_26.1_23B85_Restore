uint64_t sub_100001728()
{
  v0 = sub_100003C18();
  sub_1000038B8(v0, qword_10000C1C0);
  sub_100003768(v0, qword_10000C1C0);
  return sub_100003C08();
}

uint64_t sub_1000017AC(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = sub_100003C58();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v6 = sub_100003B18();
  v2[22] = v6;
  v7 = *(v6 - 8);
  v2[23] = v7;
  v8 = *(v7 + 64) + 15;
  v2[24] = swift_task_alloc();
  v9 = *(*(sub_1000033F8(&qword_10000C0C0, &qword_100004040) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v10 = sub_1000033F8(&qword_10000C0C8, &qword_100004048);
  v2[26] = v10;
  v11 = *(v10 - 8);
  v2[27] = v11;
  v12 = *(v11 + 64) + 15;
  v2[28] = swift_task_alloc();
  v13 = *(*(sub_1000033F8(&qword_10000C0D0, &qword_100004050) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000019AC, 0, 0);
}

uint64_t sub_1000019AC()
{
  if (qword_10000C090 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_100003C18();
  v0[31] = sub_100003768(v2, qword_10000C1C0);
  v3 = v1;
  v4 = sub_100003BF8();
  v5 = sub_100003C68();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100003858(v8, &qword_10000C110, &qword_100004078);
  }

  v10 = v0[18];

  v0[12] = v10;
  v11 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v12 = swift_task_alloc();
  v0[32] = v12;
  v13 = sub_100003AF8();
  v0[33] = v13;
  v14 = sub_100003714();
  v15 = sub_100003810(&qword_10000C0D8, &type metadata accessor for PoirotDefaultTaskParameters);
  v16 = sub_100003810(&qword_10000C0E0, &type metadata accessor for PoirotDefaultTaskParameters);
  *v12 = v0;
  v12[1] = sub_100001C0C;
  v17 = v0[30];
  v18 = v0[17];

  return MLHostExtension.loadConfig<A>(context:)(v17, v18, &type metadata for ODDIPoirotMetricsExtension, v13, v14, v15, v16);
}

uint64_t sub_100001C0C()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return _swift_task_switch(sub_100001D08, 0, 0);
}

uint64_t sub_100001D08()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  sub_100003B38();
  sub_100003B58();
  v4 = sub_100003B68();
  v0[34] = v4;
  v5 = *(v4 - 8);
  v0[35] = v5;
  v0[36] = *(v5 + 64);
  v0[37] = swift_task_alloc();
  v6 = swift_task_alloc();
  v0[38] = v6;
  sub_1000037A0(v2, v1);
  v7 = sub_1000033F8(&qword_10000C0E8, &qword_100004058);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v1, 1, v7);
  v10 = v0[29];
  if (v9 == 1)
  {
    sub_100003858(v0[29], &qword_10000C0D0, &qword_100004050);
    v11 = 1;
  }

  else
  {
    v12 = v0[25];
    sub_100003BD8();
    (*(v8 + 8))(v10, v7);
    v11 = 0;
  }

  v13 = v0[24];
  v14 = v0[22];
  v15 = v0[23];
  (*(*(v0[33] - 8) + 56))(v0[25], v11, 1);
  v16 = sub_100003B28();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_100003B08();
  v0[13] = v19;
  v0[39] = v19;
  (*(v15 + 104))(v13, enum case for ODDIPoirotMetricsTaskExecutor.Subtask.oddiMetrics(_:), v14);
  v20 = async function pointer to ODDIMetricsWorker.doWork<A>(executor:context:subtask:)[1];
  v21 = swift_task_alloc();
  v0[40] = v21;
  v22 = sub_100003810(&qword_10000C0F0, &type metadata accessor for ODDIPoirotMetricsTaskExecutor);
  *v21 = v0;
  v21[1] = sub_100001FF0;
  v23 = v0[28];
  v24 = v0[26];
  v25 = v0[24];
  v26 = v0[17];

  return ODDIMetricsWorker.doWork<A>(executor:context:subtask:)(v6, v0 + 13, v26, v25, v24, v16, v22);
}

uint64_t sub_100001FF0()
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v6 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 328) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1000025B0;
  }

  else
  {
    v7 = sub_100002184;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100002184()
{
  (*(*(v0 + 280) + 32))(*(v0 + 296), *(v0 + 304), *(v0 + 272));

  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (&enum case for LighthouseRuntimeProcessorResult.error(_:) && v6 == enum case for LighthouseRuntimeProcessorResult.error(_:))
  {
    (*(*(v0 + 280) + 96))(v5, *(v0 + 272));
    v7 = *v5;
    if (*v5)
    {
      *(v0 + 120) = v7;
      swift_errorRetain();
      sub_1000033F8(&qword_10000C0F8, &qword_100004060);
      sub_1000033F8(&qword_10000C100, &qword_100004068);
      if (swift_dynamicCast())
      {
        v8 = *(v0 + 40);
        sub_100003858(v0 + 16, &qword_10000C108, &qword_100004070);
        if (v8)
        {
          v9 = *(v0 + 296);
          v10 = *(v0 + 272);
          v11 = *(v0 + 280);
          v12 = *(v0 + 216);
          v37 = *(v0 + 224);
          v38 = *(v0 + 240);
          v13 = *(v0 + 208);
          *(v0 + 128) = v7;
          swift_errorRetain();
          swift_dynamicCast();
          v14 = objc_allocWithZone(sub_100003BA8());
          v15 = sub_100003B88();

          (*(v11 + 8))(v9, v10);
          (*(v12 + 8))(v37, v13);
          sub_100003858(v38, &qword_10000C0D0, &qword_100004050);

          goto LABEL_20;
        }
      }

      else
      {
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        sub_100003858(v0 + 16, &qword_10000C108, &qword_100004070);
      }
    }

    v16 = *(v0 + 248);
    v17 = sub_100003BF8();
    v18 = sub_100003C78();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "task failed with unset error", v19, 2u);
    }
  }

  else if ((!&enum case for LighthouseRuntimeProcessorResult.success(_:) || v6 != enum case for LighthouseRuntimeProcessorResult.success(_:)) && (!&enum case for LighthouseRuntimeProcessorResult.cancelled(_:) || v6 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:)) && (!&enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:) || v6 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:)))
  {
    (*(*(v0 + 280) + 8))(v5, *(v0 + 272));
  }

  v20 = *(v0 + 296);
  v21 = *(v0 + 272);
  v22 = *(v0 + 280);
  v23 = *(v0 + 240);
  v25 = *(v0 + 216);
  v24 = *(v0 + 224);
  v26 = *(v0 + 208);

  v27 = objc_allocWithZone(sub_100003BA8());
  v15 = sub_100003B98();
  (*(v22 + 8))(v20, v21);
  (*(v25 + 8))(v24, v26);
  sub_100003858(v23, &qword_10000C0D0, &qword_100004050);
LABEL_20:
  v28 = *(v0 + 296);
  v30 = *(v0 + 232);
  v29 = *(v0 + 240);
  v31 = *(v0 + 224);
  v33 = *(v0 + 192);
  v32 = *(v0 + 200);
  v34 = *(v0 + 168);

  v35 = *(v0 + 8);

  return v35(v15);
}

uint64_t sub_1000025B0()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);

  *(v0 + 112) = v1;
  swift_errorRetain();
  sub_1000033F8(&qword_10000C0F8, &qword_100004060);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 328);
  if (v5)
  {
    v7 = *(v0 + 240);
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v10 = *(v0 + 208);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 152);
    v14 = *(v0 + 328);

    v15 = objc_allocWithZone(sub_100003BA8());
    v16 = sub_100003B98();
    (*(v9 + 8))(v8, v10);
    sub_100003858(v7, &qword_10000C0D0, &qword_100004050);
    (*(v12 + 8))(v11, v13);
    v17 = *(v0 + 112);

    goto LABEL_25;
  }

  v18 = *(v0 + 296);
  v19 = *(v0 + 272);
  v20 = *(v0 + 280);
  v21 = *(v0 + 248);
  v22 = *(v0 + 112);

  *v18 = v6;
  v23 = enum case for LighthouseRuntimeProcessorResult.error(_:);
  (*(v20 + 104))(v18, enum case for LighthouseRuntimeProcessorResult.error(_:), v19);
  swift_errorRetain();
  swift_errorRetain();
  v24 = sub_100003BF8();
  v25 = sub_100003C78();

  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 328);
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    swift_errorRetain();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v30;
    *v29 = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Unexpected error throws: %@", v28, 0xCu);
    sub_100003858(v29, &qword_10000C110, &qword_100004078);
  }

  else
  {
  }

  v31 = *(v0 + 296);
  v32 = *(v0 + 272);
  v33 = *(v0 + 280);
  v34 = *(v0 + 288) + 15;
  v35 = swift_task_alloc();
  (*(v33 + 16))(v35, v31, v32);
  v36 = (*(v33 + 88))(v35, v32);
  if (&enum case for LighthouseRuntimeProcessorResult.error(_:) && v36 == v23)
  {
    (*(*(v0 + 280) + 96))(v35, *(v0 + 272));
    v37 = *v35;
    if (*v35)
    {
      *(v0 + 120) = v37;
      swift_errorRetain();
      sub_1000033F8(&qword_10000C0F8, &qword_100004060);
      sub_1000033F8(&qword_10000C100, &qword_100004068);
      if (swift_dynamicCast())
      {
        v38 = *(v0 + 40);
        sub_100003858(v0 + 16, &qword_10000C108, &qword_100004070);
        if (v38)
        {
          v40 = *(v0 + 272);
          v39 = *(v0 + 280);
          v41 = *(v0 + 216);
          v66 = *(v0 + 224);
          v67 = *(v0 + 240);
          v64 = *(v0 + 296);
          v65 = *(v0 + 208);
          *(v0 + 128) = v37;
          swift_errorRetain();
          swift_dynamicCast();
          v42 = objc_allocWithZone(sub_100003BA8());
          v16 = sub_100003B88();

          (*(v39 + 8))(v64, v40);
          (*(v41 + 8))(v66, v65);
          sub_100003858(v67, &qword_10000C0D0, &qword_100004050);

          goto LABEL_25;
        }
      }

      else
      {
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        sub_100003858(v0 + 16, &qword_10000C108, &qword_100004070);
      }
    }

    v43 = *(v0 + 248);
    v44 = sub_100003BF8();
    v45 = sub_100003C78();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "task failed with unset error", v46, 2u);
    }
  }

  else if ((!&enum case for LighthouseRuntimeProcessorResult.success(_:) || v36 != enum case for LighthouseRuntimeProcessorResult.success(_:)) && (!&enum case for LighthouseRuntimeProcessorResult.cancelled(_:) || v36 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:)) && (!&enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:) || v36 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:)))
  {
    (*(*(v0 + 280) + 8))(v35, *(v0 + 272));
  }

  v47 = *(v0 + 296);
  v48 = *(v0 + 272);
  v49 = *(v0 + 280);
  v50 = *(v0 + 240);
  v52 = *(v0 + 216);
  v51 = *(v0 + 224);
  v53 = *(v0 + 208);

  v54 = objc_allocWithZone(sub_100003BA8());
  v16 = sub_100003B98();
  (*(v49 + 8))(v47, v48);
  (*(v52 + 8))(v51, v53);
  sub_100003858(v50, &qword_10000C0D0, &qword_100004050);
LABEL_25:
  v55 = *(v0 + 296);
  v57 = *(v0 + 232);
  v56 = *(v0 + 240);
  v58 = *(v0 + 224);
  v60 = *(v0 + 192);
  v59 = *(v0 + 200);
  v61 = *(v0 + 168);

  v62 = *(v0 + 8);

  return v62(v16);
}

uint64_t sub_100002BD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003AC0;

  return sub_10000391C(a1);
}

uint64_t sub_100002C7C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002D18;

  return sub_1000017AC(a1, v4);
}

uint64_t sub_100002D18(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100002E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100002EF8;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100002EF8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002FEC(uint64_t a1)
{
  v2 = sub_100003714();

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100003038@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ODDIPoirotMetricsWorkerFactory();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t PoirotDefaultTaskParameters.description.getter()
{
  v1 = sub_100003CD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003AF8();
  *(&v25 + 1) = v6;
  v7 = sub_100003394(&v24);
  (*(*(v6 - 8) + 16))(v7, v0, v6);
  sub_100003CB8();
  v8 = sub_100003CC8();
  (*(v2 + 8))(v5, v1);
  v20[1] = v8;
  sub_100003C88();
  sub_100003CA8();
  if (*(&v26 + 1))
  {
    v9 = &_swiftEmptyArrayStorage;
    do
    {
      v23[0] = v24;
      v23[1] = v25;
      v23[2] = v26;
      v10._object = *(&v24 + 1);
      if (*(&v24 + 1))
      {
        v10._countAndFlagsBits = *&v23[0];
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_100003C38(v10);
        v27._countAndFlagsBits = 8250;
        v27._object = 0xE200000000000000;
        sub_100003C38(v27);
        sub_100003C98();
        v11 = v21;
        v12 = v22;
        sub_100003858(v23, &qword_10000C0A8, &qword_100003F28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10000354C(0, *(v9 + 2) + 1, 1, v9);
        }

        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        if (v14 >= v13 >> 1)
        {
          v9 = sub_10000354C((v13 > 1), v14 + 1, 1, v9);
        }

        *(v9 + 2) = v14 + 1;
        v15 = &v9[16 * v14];
        *(v15 + 4) = v11;
        *(v15 + 5) = v12;
      }

      else
      {
        sub_100003858(v23, &qword_10000C0A8, &qword_100003F28);
      }

      sub_100003CA8();
    }

    while (*(&v26 + 1));
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  *&v24 = 0xD00000000000001CLL;
  *(&v24 + 1) = 0x80000001000040C0;
  *&v23[0] = v9;
  sub_1000033F8(&qword_10000C098, &qword_100003F20);
  sub_100003440();
  v16 = sub_100003C28();
  v18 = v17;

  v28._countAndFlagsBits = v16;
  v28._object = v18;
  sub_100003C38(v28);

  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  sub_100003C38(v29);
  return v24;
}

uint64_t *sub_100003394(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000033F8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003440()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    sub_1000034A4(&qword_10000C098, &qword_100003F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_1000034A4(uint64_t *a1, uint64_t *a2)
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

int main(int argc, const char **argv, const char **envp)
{
  sub_100003658();
  sub_100003B78();
  return 0;
}

char *sub_10000354C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033F8(&qword_10000C118, qword_100004088);
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

unint64_t sub_100003658()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

unint64_t sub_100003714()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_100003768(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000037A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033F8(&qword_10000C0D0, &qword_100004050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003858(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000033F8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_1000038B8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000393C()
{
  v1 = *(v0 + 16);
  sub_100003BE8();
  v11._countAndFlagsBits = 0x796C72756F682ELL;
  v11._object = 0xE700000000000000;
  v2 = sub_100003C48(v11);

  if (AFIsHorseman() && v2)
  {
    if (qword_10000C090 != -1)
    {
      swift_once();
    }

    v3 = sub_100003C18();
    sub_100003768(v3, qword_10000C1C0);
    v4 = sub_100003BF8();
    v5 = sub_100003C68();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Hourly task running on HomePod. Not continuing for resource reasons.", v6, 2u);
    }
  }

  objc_allocWithZone(sub_100003BA8());
  v7 = sub_100003B98();
  v8 = *(v0 + 8);

  return v8(v7);
}