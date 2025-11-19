uint64_t sub_1000017F8(char a1)
{
  sub_100005098(72);
  v5._countAndFlagsBits = 0xD00000000000002ELL;
  v5._object = 0x8000000100005930;
  sub_100005018(v5);
  if (a1)
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_100005018(v2);

  v6._object = 0x8000000100005960;
  v6._countAndFlagsBits = 0xD000000000000015;
  sub_100005018(v6);
  sub_100005048();
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  sub_100005018(v7);
  return 0;
}

Swift::Int sub_100001910()
{
  v1 = *v0;
  sub_100005168();
  sub_100005178(v1);
  return sub_100005188();
}

Swift::Int sub_100001984()
{
  v1 = *v0;
  sub_100005168();
  sub_100005178(v1);
  return sub_100005188();
}

unint64_t sub_1000019C8()
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

uint64_t sub_100001A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726150776F6C6C61 && a2 == 0xEC0000006C616974;
  if (v6 || (sub_100005118() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100005980 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100005118();

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

uint64_t sub_100001B10(uint64_t a1)
{
  v2 = sub_100004888();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001B4C(uint64_t a1)
{
  v2 = sub_100004888();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001B88(void *a1)
{
  v3 = sub_100003BDC(&qword_10000C188, &qword_100005738);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100004844(a1, a1[3]);
  sub_100004888();
  sub_1000051A8();
  v12 = 0;
  sub_1000050E8();
  if (!v1)
  {
    v11 = 1;
    sub_1000050F8();
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_100001D10(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100004698(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_100001D44(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return sub_100001B88(a1);
}

BOOL DevicePropertiesExtensionError.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008608;
  v6._object = a2;
  v4 = sub_1000050B8(v3, v6);

  return v4 != 0;
}

Swift::Int sub_100001DDC()
{
  sub_100005168();
  sub_100005008();
  return sub_100005188();
}

Swift::Int sub_100001E50()
{
  sub_100005168();
  sub_100005008();
  return sub_100005188();
}

uint64_t sub_100001EA4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008640;
  v7._object = v3;
  v5 = sub_1000050B8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100001F28(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100001F48, 0, 0);
}

uint64_t sub_100001F48()
{
  v1 = v0[2];
  sub_100004FB8();
  v17._countAndFlagsBits = 0x796C72756F682ELL;
  v17._object = 0xE700000000000000;
  v2 = sub_100005038(v17);

  if (AFIsHorseman() && v2)
  {
    v3 = v0[3];
    v4 = v3 + *(type metadata accessor for DevicePropertiesExtension() + 20);
    v5 = sub_100004FC8();
    v6 = sub_100005058();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = "Hourly task running on HomePod. Not continuing for resource reasons.";
LABEL_11:
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, v7, v12, 2u);
    }
  }

  else if (sub_100004E98())
  {
    sub_100004EB8();
    if (sub_100004EA8())
    {
      goto LABEL_13;
    }

    v8 = v0[3];
    v9 = v8 + *(type metadata accessor for DevicePropertiesExtension() + 20);
    v5 = sub_100004FC8();
    v6 = sub_100005058();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = "Neither assistant nor dictation enabled. Not allowed to process.";
      goto LABEL_11;
    }
  }

  else
  {
    v10 = v0[3];
    v11 = v10 + *(type metadata accessor for DevicePropertiesExtension() + 20);
    v5 = sub_100004FC8();
    v6 = sub_100005068();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = "Siri on device metrics disabled. Not continuing.";
      goto LABEL_11;
    }
  }

LABEL_13:
  objc_allocWithZone(sub_100004F58());
  v13 = sub_100004F48();
  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_100002134(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_100004F18();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_100004FE8();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = *(*(sub_100003BDC(&qword_10000C190, &qword_100005748) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v10 = sub_100003BDC(&qword_10000C0B8, &qword_1000055E0);
  v2[18] = v10;
  v11 = *(v10 - 8);
  v2[19] = v11;
  v12 = *(v11 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000022FC, 0, 0);
}

uint64_t sub_1000022FC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = type metadata accessor for DevicePropertiesExtension();
  *(v0 + 176) = v3;
  *(v0 + 224) = *(v3 + 20);
  v4 = v2;
  v5 = sub_100004FC8();
  v6 = sub_100005058();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Context: %@", v8, 0xCu);
    sub_100004AEC(v9, &qword_10000C1A0, &qword_100005750);
  }

  v11 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  v13 = sub_1000040AC(&qword_10000C170);
  v14 = sub_100003EB0();
  v15 = sub_100003F04();
  *v12 = v0;
  v12[1] = sub_1000024D8;
  v16 = *(v0 + 136);
  v17 = *(v0 + 72);
  v18 = *(v0 + 80);

  return MLHostExtension.loadConfig<A>(context:)(v16, v17, v3, &type metadata for DevicePropertiesExtensionConfig, v13, v14, v15);
}

uint64_t sub_1000024D8()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return _swift_task_switch(sub_1000025D4, 0, 0);
}

uint64_t sub_1000025D4()
{
  v35 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v2 + 16);
    v5(*(v0 + 168), *(v0 + 80) + *(*(v0 + 176) + 24), v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100004AEC(*(v0 + 136), &qword_10000C190, &qword_100005748);
    }
  }

  else
  {
    (*(v2 + 32))(*(v0 + 168), v3, v1);
    v5 = *(v2 + 16);
  }

  v6 = *(v0 + 224);
  v7 = *(v0 + 80);
  v5(*(v0 + 160), *(v0 + 168), *(v0 + 144));
  v8 = sub_100004FC8();
  v9 = sub_100005058();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 144);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v14 = 136315138;
    sub_100004994();
    v15 = sub_100005108();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_1000040F0(v15, v17, &v34);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Configuration: %s", v14, 0xCu);
    sub_100004A40(v33);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  *(v0 + 192) = v18;
  v20 = *(v0 + 168);
  v21 = *(v0 + 144);
  (*(*(v0 + 120) + 16))(*(v0 + 128), *(v0 + 80) + *(v0 + 224), *(v0 + 112));
  *(v0 + 40) = sub_100004EE8();
  *(v0 + 48) = &off_100008840;
  sub_1000048DC((v0 + 16));
  sub_100004ED8();
  sub_100004844((v0 + 16), *(v0 + 40));
  v22 = sub_100004F08();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_100004EF8();
  *(v0 + 200) = v25;
  sub_100004F98();
  v26 = *(v0 + 64);
  v27 = async function pointer to DevicePropertiesWorker.doWork(executor:context:durationThreshold:)[1];
  v28 = swift_task_alloc();
  *(v0 + 208) = v28;
  *v28 = v0;
  v28[1] = sub_10000293C;
  v29 = *(v0 + 104);
  v30 = *(v0 + 72);
  v31.n128_u64[0] = v26;

  return DevicePropertiesWorker.doWork(executor:context:durationThreshold:)(v29, v25, v30, v31);
}

uint64_t sub_10000293C()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v6 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_100002B68;
  }

  else
  {
    v4 = sub_100002A6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100002A6C()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  v9 = sub_100002D60(v5);
  (*(v6 + 8))(v5, v8);
  v1(v2, v3);
  sub_100004A40(v0 + 2);
  v11 = v0[20];
  v10 = v0[21];
  v13 = v0[16];
  v12 = v0[17];
  v14 = v0[13];

  v15 = v0[1];

  return v15(v9);
}

uint64_t sub_100002B68()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 80);
  sub_100004A40((v0 + 16));
  swift_errorRetain();
  v4 = sub_100004FC8();
  v5 = sub_100005078();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 216);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "unexpected error throws: %@", v7, 0xCu);
    sub_100004AEC(v8, &qword_10000C1A0, &qword_100005750);
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 192);
  v12 = *(v0 + 168);
  v13 = *(v0 + 144);
  v14 = *(v0 + 152);

  sub_100004940();
  v15 = objc_allocWithZone(sub_100004F58());
  v16 = sub_100004F38();

  v11(v12, v13);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v20 = *(v0 + 128);
  v19 = *(v0 + 136);
  v21 = *(v0 + 104);

  v22 = *(v0 + 8);

  return v22(v16);
}

uint64_t sub_100002D60(char *a1)
{
  v2 = v1;
  v4 = sub_100004F18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v7);
  v12 = &v35 - v11;
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = *(type metadata accessor for DevicePropertiesExtension() + 20);
  v16 = *(v5 + 16);
  v40 = a1;
  v41 = v16;
  v16(v14, a1, v4);
  v17 = sub_100004FC8();
  v18 = sub_100005058();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v15;
    v36 = v21;
    v46[0] = v21;
    *v20 = 136315138;
    v41(v12, v14, v4);
    v22 = sub_100004FF8();
    v37 = v9;
    v24 = v23;
    v35 = *(v5 + 8);
    v35(v14, v4);
    v25 = sub_1000040F0(v22, v24, v46);
    v9 = v37;

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Handling result %s", v20, 0xCu);
    sub_100004A40(v36);

    v26 = v35;
  }

  else
  {

    v26 = *(v5 + 8);
    v26(v14, v4);
  }

  v41(v9, v40, v4);
  v27 = (*(v5 + 88))(v9, v4);
  if (v27 == enum case for LighthouseRuntimeProcessorResult.error(_:))
  {
    (*(v5 + 96))(v9, v4);
    if (*v9 && (v42 = *v9, swift_errorRetain(), sub_100003BDC(&qword_10000C1C0, &qword_100005768), sub_100003BDC(&qword_10000C1C8, &qword_100005770), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v44 + 1))
      {
        sub_100004B4C(&v43, v46);
        sub_100004B64(v46, &v43);
        v28 = objc_allocWithZone(sub_100004F58());
        v29 = sub_100004F38();

        sub_100004A40(v46);
        return v29;
      }
    }

    else
    {
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
    }

    sub_100004AEC(&v43, &qword_10000C1B8, &qword_100005760);
    v31 = sub_100004FC8();
    v32 = sub_100005078();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "task failed with unset error", v33, 2u);
    }
  }

  else if (v27 != enum case for LighthouseRuntimeProcessorResult.success(_:) && v27 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:) && v27 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:))
  {
    v26(v9, v4);
  }

  v34 = objc_allocWithZone(sub_100004F58());
  return sub_100004F48();
}

uint64_t sub_100003220(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100004E40;

  return sub_100001F28(a1);
}

uint64_t sub_1000032B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003348;

  return sub_100002134(a1);
}

uint64_t sub_100003348(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100003444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100003528;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100003528()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000361C(uint64_t a1)
{
  v2 = sub_1000040AC(&qword_10000C170);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100003684@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100004E78();
  v4 = a1[5];
  sub_100004FD8();
  v5 = a1[6];
  sub_100003EB0();
  sub_100003F04();
  sub_100004F88();
  v6 = a1[7];
  type metadata accessor for DevicePropertiesWorkerFactory();
  result = swift_allocObject();
  *(a2 + v6) = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for DevicePropertiesExtension();
  sub_1000040AC(&qword_10000C090);
  sub_100004F28();
  return 0;
}

uint64_t type metadata accessor for DevicePropertiesExtension()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000381C()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_100003874()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_1000038CC()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

unint64_t sub_100003924()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DevicePropertiesExtensionError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DevicePropertiesExtensionError(_WORD *result, int a2, int a3)
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

uint64_t sub_100003A7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100004E88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100004FE8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100003BDC(&qword_10000C0B8, &qword_1000055E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_100003BDC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003C38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100004E88();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100004FE8();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_100003BDC(&qword_10000C0B8, &qword_1000055E0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100003D94()
{
  sub_100004E88();
  if (v0 <= 0x3F)
  {
    sub_100004FE8();
    if (v1 <= 0x3F)
    {
      sub_100003E48();
      if (v2 <= 0x3F)
      {
        type metadata accessor for DevicePropertiesWorkerFactory();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100003E48()
{
  if (!qword_10000C128)
  {
    sub_100003EB0();
    sub_100003F04();
    v0 = sub_100004FA8();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C128);
    }
  }
}

unint64_t sub_100003EB0()
{
  result = qword_10000C130;
  if (!qword_10000C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C130);
  }

  return result;
}

unint64_t sub_100003F04()
{
  result = qword_10000C138;
  if (!qword_10000C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C138);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for DevicePropertiesExtensionConfig(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DevicePropertiesExtensionConfig(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DevicePropertiesExtensionConfig(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000040AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DevicePropertiesExtension();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000040F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000041BC(v11, 0, 0, 1, a1, a2);
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
    sub_100004A8C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004A40(v11);
  return v7;
}

unint64_t sub_1000041BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000042C8(a5, a6);
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
    result = sub_1000050A8();
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

char *sub_1000042C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004314(a1, a2);
  sub_100004444(&off_100008678);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004314(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004530(v5, 0);
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

  result = sub_1000050A8();
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
        v10 = sub_100005028();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004530(v10, 0);
        result = sub_100005088();
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

uint64_t sub_100004444(uint64_t result)
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

  result = sub_1000045A4(result, v12, 1, v3);
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

void *sub_100004530(uint64_t a1, uint64_t a2)
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

  sub_100003BDC(&qword_10000C1B0, &qword_100005758);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000045A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BDC(&qword_10000C1B0, &qword_100005758);
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

double sub_100004698(uint64_t *a1)
{
  v2 = sub_100003BDC(&qword_10000C178, &qword_100005730);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = a1[4];
  sub_100004844(a1, a1[3]);
  sub_100004888();
  sub_100005198();
  v13 = 0;
  sub_1000050C8();
  v12 = 1;
  sub_1000050D8();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  sub_100004A40(a1);
  return v9;
}

void *sub_100004844(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004888()
{
  result = qword_10000C180;
  if (!qword_10000C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C180);
  }

  return result;
}

uint64_t *sub_1000048DC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100004940()
{
  result = qword_10000C198;
  if (!qword_10000C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C198);
  }

  return result;
}

unint64_t sub_100004994()
{
  result = qword_10000C1A8;
  if (!qword_10000C1A8)
  {
    sub_1000049F8(&qword_10000C0B8, &qword_1000055E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A8);
  }

  return result;
}

uint64_t sub_1000049F8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004A40(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004A8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004AEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003BDC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004B4C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100004B64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for DevicePropertiesExtensionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DevicePropertiesExtensionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100004D3C()
{
  result = qword_10000C1D0;
  if (!qword_10000C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D0);
  }

  return result;
}

unint64_t sub_100004D94()
{
  result = qword_10000C1D8;
  if (!qword_10000C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D8);
  }

  return result;
}

unint64_t sub_100004DEC()
{
  result = qword_10000C1E0;
  if (!qword_10000C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E0);
  }

  return result;
}