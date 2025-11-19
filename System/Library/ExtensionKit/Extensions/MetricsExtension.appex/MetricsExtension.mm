uint64_t sub_100001740(char a1, double a2)
{
  v4 = sub_1000050D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v26 + 1) = &type metadata for MetricsExtensionConfig;
  LOBYTE(v25) = a1;
  *(&v25 + 1) = a2;
  sub_1000050B0();
  v9 = sub_1000050C0();
  (*(v5 + 8))(v8, v4);
  v21[1] = v9;
  sub_100004FA0();
  sub_100004FC0();
  if (*(&v27 + 1))
  {
    v10 = &_swiftEmptyArrayStorage;
    do
    {
      v24[0] = v25;
      v24[1] = v26;
      v24[2] = v27;
      v11._object = *(&v25 + 1);
      if (*(&v25 + 1))
      {
        v11._countAndFlagsBits = *&v24[0];
        v22 = 0;
        v23 = 0xE000000000000000;
        sub_100004F20(v11);
        v28._countAndFlagsBits = 8250;
        v28._object = 0xE200000000000000;
        sub_100004F20(v28);
        sub_100004FB0();
        v12 = v22;
        v13 = v23;
        sub_100004A90(v24, &qword_10000C1E0, &qword_1000056D0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100003F28(0, *(v10 + 2) + 1, 1, v10);
        }

        v15 = *(v10 + 2);
        v14 = *(v10 + 3);
        if (v15 >= v14 >> 1)
        {
          v10 = sub_100003F28((v14 > 1), v15 + 1, 1, v10);
        }

        *(v10 + 2) = v15 + 1;
        v16 = &v10[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v13;
      }

      else
      {
        sub_100004A90(v24, &qword_10000C1E0, &qword_1000056D0);
      }

      sub_100004FC0();
    }

    while (*(&v27 + 1));
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  *&v25 = 0xD000000000000017;
  *(&v25 + 1) = 0x8000000100005870;
  *&v24[0] = v10;
  sub_100003A74(&qword_10000C1D0, &qword_1000056C8);
  sub_100004A48(&qword_10000C1D8, &qword_10000C1D0, &qword_1000056C8);
  v17 = sub_100004F00();
  v19 = v18;

  v29._countAndFlagsBits = v17;
  v29._object = v19;
  sub_100004F20(v29);

  v30._countAndFlagsBits = 41;
  v30._object = 0xE100000000000000;
  sub_100004F20(v30);
  return v25;
}

Swift::Int sub_100001A84()
{
  v1 = *v0;
  sub_100005080();
  sub_100005090(v1);
  return sub_1000050A0();
}

Swift::Int sub_100001AF8()
{
  v1 = *v0;
  sub_100005080();
  sub_100005090(v1);
  return sub_1000050A0();
}

unint64_t sub_100001B3C()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x726150776F6C6C61;
  }

  *v0;
  return result;
}

uint64_t sub_100001B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726150776F6C6C61 && a2 == 0xEC0000006C616974;
  if (v6 || (sub_100005030() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100005890 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100005030();

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

uint64_t sub_100001C84(uint64_t a1)
{
  v2 = sub_1000047CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001CC0(uint64_t a1)
{
  v2 = sub_1000047CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001CFC(void *a1)
{
  v3 = sub_100003A74(&qword_10000C188, &qword_100005680);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100004788(a1, a1[3]);
  sub_1000047CC();
  sub_1000050F0();
  v12 = 0;
  sub_100005000();
  if (!v1)
  {
    v11 = 1;
    sub_100005010();
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_100001E84(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000045DC(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_100001EB8(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return sub_100001CFC(a1);
}

BOOL SiriMetricsExtensionError.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008628;
  v6._object = a2;
  v4 = sub_100004FD0(v3, v6);

  return v4 != 0;
}

Swift::Int sub_100001F50()
{
  sub_100005080();
  sub_100004F10();
  return sub_1000050A0();
}

Swift::Int sub_100001FC4()
{
  sub_100005080();
  sub_100004F10();
  return sub_1000050A0();
}

uint64_t sub_100002018@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008660;
  v7._object = v3;
  v5 = sub_100004FD0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10000209C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000020BC, 0, 0);
}

uint64_t sub_1000020BC()
{
  v1 = v0[2];
  sub_100004EC0();
  v14._countAndFlagsBits = 0x796C72756F682ELL;
  v14._object = 0xE700000000000000;
  v2 = sub_100004F40(v14);

  if (AFIsHorseman() && v2)
  {
    v3 = v0[3];
    v4 = sub_100004ED0();
    v5 = sub_100004F50();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = "Hourly task running on HomePod. Not continuing for resource reasons.";
LABEL_11:
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, v6, v9, 2u);
    }
  }

  else if (sub_100004DA0())
  {
    sub_100004E10();
    if (sub_100004E00())
    {
      goto LABEL_13;
    }

    v7 = v0[3];
    v4 = sub_100004ED0();
    v5 = sub_100004F60();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = "Neither assistant nor dictation enabled. Not allowed to process.";
      goto LABEL_11;
    }
  }

  else
  {
    v8 = v0[3];
    v4 = sub_100004ED0();
    v5 = sub_100004F60();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = "Siri on device metrics disabled. Not continuing.";
      goto LABEL_11;
    }
  }

LABEL_13:
  objc_allocWithZone(sub_100004E60());
  v10 = sub_100004E50();
  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_100002278(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = sub_100004E20();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v5 = *(v4 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = *(*(sub_100003A74(&qword_10000C190, &qword_100005690) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v7 = sub_100003A74(&qword_10000C0B8, &qword_100005530);
  v2[33] = v7;
  v8 = *(v7 - 8);
  v2[34] = v8;
  v9 = *(v8 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return _swift_task_switch(sub_1000023FC, 0, 0);
}

uint64_t sub_1000023FC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  v3 = sub_100004ED0();
  v4 = sub_100004F50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 200);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Context: %@", v6, 0xCu);
    sub_100004A90(v7, &qword_10000C1A0, &qword_100005698);
  }

  v9 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v10 = swift_task_alloc();
  *(v0 + 296) = v10;
  v11 = type metadata accessor for MetricsExtension();
  *(v0 + 304) = v11;
  v12 = sub_100003EE4(&qword_10000C170);
  v13 = sub_100003CE8();
  v14 = sub_100003D3C();
  *v10 = v0;
  v10[1] = sub_1000025CC;
  v15 = *(v0 + 256);
  v16 = *(v0 + 200);
  v17 = *(v0 + 208);

  return MLHostExtension.loadConfig<A>(context:)(v15, v16, v11, &type metadata for MetricsExtensionConfig, v12, v13, v14);
}

uint64_t sub_1000025CC()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return _swift_task_switch(sub_1000026C8, 0, 0);
}

uint64_t sub_1000026C8()
{
  v34 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v2 + 16);
    v5(v0[36], v0[26] + *(v0[38] + 20), v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100004A90(v0[32], &qword_10000C190, &qword_100005690);
    }
  }

  else
  {
    (*(v2 + 32))(v0[36], v3, v1);
    v5 = *(v2 + 16);
  }

  v6 = v0[26];
  v5(v0[35], v0[36], v0[33]);
  v7 = sub_100004ED0();
  v8 = sub_100004F50();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[34];
  v10 = v0[35];
  v12 = v0[33];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v13 = 136315138;
    sub_100004A48(&qword_10000C1C0, &qword_10000C0B8, &qword_100005530);
    v14 = sub_100005020();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_100004034(v14, v16, &v33);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Configuration: %s", v13, 0xCu);
    sub_10000499C(v32);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[39] = v17;
  v19 = v0[36];
  v20 = v0[33];
  v0[5] = sub_100004DD0();
  v0[6] = &off_100008860;
  sub_100004820(v0 + 2);
  sub_100004DC0();
  sub_100004788(v0 + 2, v0[5]);
  v21 = sub_100004DF0();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_100004DE0();
  v0[40] = v24;
  sub_100004EA0();
  v25 = v0[23];
  v26 = async function pointer to MetricsWorker.doWork(metricsExecutor:context:durationThreshold:)[1];
  v27 = swift_task_alloc();
  v0[41] = v27;
  *v27 = v0;
  v27[1] = sub_100002A2C;
  v28 = v0[30];
  v29 = v0[25];
  v30.n128_u64[0] = v25;

  return MetricsWorker.doWork(metricsExecutor:context:durationThreshold:)(v28, v24, v29, v30);
}

uint64_t sub_100002A2C()
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 320);
  v6 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_100002F0C;
  }

  else
  {
    v4 = sub_100002B5C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100002B5C()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  (*(v3 + 32))(v1, *(v0 + 240), v4);
  (*(v3 + 16))(v2, v1, v4);
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == enum case for LighthouseRuntimeProcessorResult.error(_:))
  {
    v6 = *(v0 + 232);
    (*(*(v0 + 224) + 96))(v6, *(v0 + 216));
    if (*v6 && (*(v0 + 192) = *v6, swift_errorRetain(), sub_100003A74(&qword_10000C1B0, &qword_1000056A8), sub_100003A74(&qword_10000C1B8, &qword_1000056B0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(v0 + 120))
      {
        v7 = *(v0 + 312);
        v8 = *(v0 + 288);
        v9 = *(v0 + 264);
        v10 = *(v0 + 272);
        v11 = *(v0 + 248);
        v12 = *(v0 + 216);
        v13 = *(v0 + 224);
        sub_1000048D8((v0 + 96), v0 + 56);
        sub_1000048F0(v0 + 56, v0 + 136);
        v14 = objc_allocWithZone(sub_100004E60());
        v15 = sub_100004E40();

        sub_10000499C((v0 + 56));
        (*(v13 + 8))(v11, v12);
        v7(v8, v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
    }

    v16 = *(v0 + 208);
    sub_100004A90(v0 + 96, &qword_10000C1A8, &qword_1000056A0);
    v17 = sub_100004ED0();
    v18 = sub_100004F70();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "task failed with unset error", v19, 2u);
    }
  }

  else if (v5 != enum case for LighthouseRuntimeProcessorResult.success(_:) && v5 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:) && v5 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:))
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  }

  v20 = *(v0 + 312);
  v21 = *(v0 + 288);
  v22 = *(v0 + 264);
  v23 = *(v0 + 272);
  v24 = *(v0 + 248);
  v25 = *(v0 + 216);
  v26 = *(v0 + 224);
  v27 = objc_allocWithZone(sub_100004E60());
  v15 = sub_100004E50();
  (*(v26 + 8))(v24, v25);
  v20(v21, v22);
LABEL_14:
  v29 = *(v0 + 280);
  v28 = *(v0 + 288);
  v31 = *(v0 + 248);
  v30 = *(v0 + 256);
  v33 = *(v0 + 232);
  v32 = *(v0 + 240);
  sub_10000499C((v0 + 16));

  v34 = *(v0 + 8);

  return v34(v15);
}

uint64_t sub_100002F0C()
{
  v1 = v0[42];
  v2 = v0[26];
  swift_errorRetain();
  v3 = sub_100004ED0();
  v4 = sub_100004F70();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[42];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "unexpected error throws: %@", v6, 0xCu);
    sub_100004A90(v7, &qword_10000C1A0, &qword_100005698);
  }

  v9 = v0[42];
  v10 = v0[39];
  v11 = v0[36];
  v12 = v0[33];
  v13 = v0[34];

  sub_100004884();
  v14 = objc_allocWithZone(sub_100004E60());
  v15 = sub_100004E40();

  v10(v11, v12);
  v17 = v0[35];
  v16 = v0[36];
  v19 = v0[31];
  v18 = v0[32];
  v21 = v0[29];
  v20 = v0[30];
  sub_10000499C(v0 + 2);

  v22 = v0[1];

  return v22(v15);
}

uint64_t sub_100003108(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100004D68;

  return sub_10000209C(a1);
}

uint64_t sub_10000319C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003230;

  return sub_100002278(a1);
}

uint64_t sub_100003230(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10000332C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100003410;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100003410()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003504(uint64_t a1)
{
  v2 = sub_100003EE4(&qword_10000C170);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_10000356C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100004EE0();
  v4 = *(a1 + 20);
  sub_100003CE8();
  sub_100003D3C();
  sub_100004E90();
  v5 = *(a1 + 24);
  type metadata accessor for MetricsWorkerFactory();
  result = swift_allocObject();
  *(a2 + v5) = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for MetricsExtension();
  sub_100003EE4(&qword_10000C090);
  sub_100004E30();
  return 0;
}

uint64_t type metadata accessor for MetricsExtension()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000036FC()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_100003754()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_1000037AC()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

unint64_t sub_100003804()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriMetricsExtensionError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SiriMetricsExtensionError(_WORD *result, int a2, int a3)
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

uint64_t sub_10000395C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004EF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003A74(&qword_10000C0B8, &qword_100005530);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100003A74(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003AD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100004EF0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100003A74(&qword_10000C0B8, &qword_100005530);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100003BE4()
{
  sub_100004EF0();
  if (v0 <= 0x3F)
  {
    sub_100003C80();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MetricsWorkerFactory();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100003C80()
{
  if (!qword_10000C128)
  {
    sub_100003CE8();
    sub_100003D3C();
    v0 = sub_100004EB0();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C128);
    }
  }
}

unint64_t sub_100003CE8()
{
  result = qword_10000C130;
  if (!qword_10000C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C130);
  }

  return result;
}

unint64_t sub_100003D3C()
{
  result = qword_10000C138;
  if (!qword_10000C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C138);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for MetricsExtensionConfig(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MetricsExtensionConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsExtensionConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100003EE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MetricsExtension();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_100003F28(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003A74(&qword_10000C1E8, &qword_1000056D8);
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

uint64_t sub_100004034(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004100(v11, 0, 0, 1, a1, a2);
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
    sub_1000049E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000499C(v11);
  return v7;
}

unint64_t sub_100004100(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000420C(a5, a6);
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
    result = sub_100004F90();
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

char *sub_10000420C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004258(a1, a2);
  sub_100004388(&off_100008698);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004258(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004474(v5, 0);
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

  result = sub_100004F90();
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
        v10 = sub_100004F30();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004474(v10, 0);
        result = sub_100004F80();
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

uint64_t sub_100004388(uint64_t result)
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

  result = sub_1000044E8(result, v12, 1, v3);
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

void *sub_100004474(uint64_t a1, uint64_t a2)
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

  sub_100003A74(&qword_10000C1C8, &qword_1000056B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000044E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003A74(&qword_10000C1C8, &qword_1000056B8);
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

double sub_1000045DC(uint64_t *a1)
{
  v2 = sub_100003A74(&qword_10000C178, &qword_100005678);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = a1[4];
  sub_100004788(a1, a1[3]);
  sub_1000047CC();
  sub_1000050E0();
  v13 = 0;
  sub_100004FE0();
  v12 = 1;
  sub_100004FF0();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  sub_10000499C(a1);
  return v9;
}

void *sub_100004788(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000047CC()
{
  result = qword_10000C180;
  if (!qword_10000C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C180);
  }

  return result;
}

uint64_t *sub_100004820(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100004884()
{
  result = qword_10000C198;
  if (!qword_10000C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C198);
  }

  return result;
}

uint64_t sub_1000048D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000048F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004954(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000499C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000049E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004A48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004954(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004A90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003A74(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for MetricsExtensionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetricsExtensionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100004C64()
{
  result = qword_10000C1F0;
  if (!qword_10000C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F0);
  }

  return result;
}

unint64_t sub_100004CBC()
{
  result = qword_10000C1F8;
  if (!qword_10000C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F8);
  }

  return result;
}

unint64_t sub_100004D14()
{
  result = qword_10000C200;
  if (!qword_10000C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C200);
  }

  return result;
}