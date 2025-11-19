uint64_t sub_1000016B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_100001754;

  return sub_100001C38(v1 + 16, a1);
}

uint64_t sub_100001754()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_100001850, 0, 0);
}

uint64_t sub_100001850()
{
  v1 = v0[2];
  v0[3] = v1;
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100001904;

  return sub_100003EF8(v0 + 3);
}

uint64_t sub_100001904(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_100001B88;
  }

  else
  {
    v8 = *(v4 + 40);
    *(v4 + 64) = a1 & 1;
    sub_100003BFC(v8);
    v7 = sub_100001A38;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100001A38()
{
  if (*(v0 + 64) == 1)
  {
    objc_allocWithZone(sub_100013A00());
    v1 = sub_1000139F0();
  }

  else
  {
    if (qword_10001C1D8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for InternalLogger();
    sub_100003EA0(v2, qword_10001C4F8);
    v3._countAndFlagsBits = 0xD000000000000023;
    v3._object = 0x8000000100015590;
    v4._countAndFlagsBits = 0xD000000000000074;
    v4._object = 0x8000000100015460;
    v5._object = 0x80000001000155C0;
    v5._countAndFlagsBits = 0xD000000000000013;
    InternalLogger.info(_:fromFile:fromFunction:)(v3, v4, v5);
    sub_10000486C();
    objc_allocWithZone(sub_100013A00());
    v1 = sub_1000139E0();
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_100001B88()
{
  v1 = v0[7];
  sub_100003BFC(v0[5]);
  sub_10000486C();
  v2 = objc_allocWithZone(sub_100013A00());
  v3 = sub_1000139E0();

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100001C38(uint64_t a1, uint64_t a2)
{
  v3[7] = a1;
  v3[8] = v2;
  v5 = *v2;
  v6 = *(*(sub_100003C0C(&qword_10001C300, &qword_1000147A8) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v3[9] = v7;
  v3[4] = v2;
  v8 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v9 = swift_task_alloc();
  v3[10] = v9;
  v10 = sub_100003C0C(&qword_10001C308, &qword_1000147B0);
  v12 = sub_1000037BC(&qword_10001C2A8, v11, type metadata accessor for RepackagingWorker);
  v13 = sub_100003D6C(&qword_10001C310, sub_100003D18);
  v14 = sub_100003D6C(&qword_10001C320, sub_100003DE4);
  *v9 = v3;
  v9[1] = sub_100001E34;

  return MLHostExtension.loadConfig<A>(context:)(v7, a2, v5, v10, v12, v13, v14);
}

uint64_t sub_100001E34()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_100001F30, 0, 0);
}

uint64_t sub_100001F30()
{
  v18 = v0;
  v1 = *(v0 + 72);
  v2 = sub_100003C0C(&qword_10001C330, &qword_1000147B8);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100003E38(v1);
    v4 = 2;
  }

  else
  {
    sub_100013A30();
    v4 = *(v0 + 40);
    (*(v3 + 8))(v1, v2);
    if (v4 != 2)
    {
      sub_100003EE8(v4);
      if (qword_10001C1D8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for InternalLogger();
      sub_100003EA0(v5, qword_10001C4F8);
      v17[0] = 0;
      v17[1] = 0xE000000000000000;
      sub_100013C60(18);
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      v20._object = 0x8000000100015440;
      v20._countAndFlagsBits = 0xD000000000000010;
      sub_100013B50(v20);
      *(v0 + 48) = v4;
      sub_100013CA0();
      sub_100003ED8(v4);
      v6._countAndFlagsBits = 0x6963655264616F6CLL;
      v6._object = 0xEE00293A5F286570;
      v7._countAndFlagsBits = 0xD000000000000074;
      v7._object = 0x8000000100015460;
      InternalLogger.debug(_:fromFile:fromFunction:)(*(v0 + 16), v7, v6);
    }
  }

  v8 = *(v0 + 64);
  sub_1000027D8(v17);
  v9 = v17[0];
  if (v17[0] == 2)
  {
    if (v4 == 2)
    {
      if (qword_10001C1D8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for InternalLogger();
      sub_100003EA0(v10, qword_10001C4F8);
      v11._countAndFlagsBits = 0x52746C7561666564;
      v11._object = 0xED00006570696365;
      v12._countAndFlagsBits = 0xD000000000000011;
      v12._object = 0x80000001000153A0;
      v13._countAndFlagsBits = 0xD000000000000072;
      v13._object = 0x80000001000153C0;
      InternalLogger.info(_:fromFile:fromFunction:)(v12, v13, v11);
      v4 = 1;
    }
  }

  else
  {
    sub_100003ED8(v4);
    v4 = v9;
  }

  v14 = *(v0 + 72);
  **(v0 + 56) = v4;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10000223C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 176) = v3;
  *v3 = v1;
  v3[1] = sub_1000022D8;

  return sub_100001C38(v1 + 152, a1);
}

uint64_t sub_1000022D8()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return _swift_task_switch(sub_1000023D4, 0, 0);
}

uint64_t sub_1000023D4()
{
  v1 = v0[19];
  v0[23] = v1;
  v2 = [objc_opt_self() sharedLoggerWithPersistenceConfiguration:1];
  v0[24] = v2;
  v3 = [objc_allocWithZone(SiriAnalyticsInternalTelemetry) init];
  v0[25] = v3;
  v0[17] = v2;
  v0[18] = v3;
  v0[20] = v1;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_1000024D4;

  return SessionBuilderExtension.package(with:)(v0 + 20);
}

uint64_t sub_1000024D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = sub_10000266C;
  }

  else
  {
    v8 = *(v4 + 184);
    *(v4 + 224) = a1;
    sub_100003BFC(v8);
    v7 = sub_100002604;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100002604()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 224);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10000266C()
{
  v1 = *(v0 + 216);
  sub_100003BFC(*(v0 + 184));
  *(v0 + 168) = v1;
  swift_errorRetain();
  sub_100003C0C(&qword_10001C2F0, &qword_100014798);
  sub_100003C0C(&qword_10001C2F8, &qword_1000147A0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 216);
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);

    sub_100003C54((v0 + 16), v0 + 56);
    sub_100003C6C(v0 + 56, v0 + 96);
    v5 = objc_allocWithZone(sub_100013A00());
    v6 = sub_1000139E0();

    sub_10000499C((v0 + 56));
    v7 = *(v0 + 168);
  }

  else
  {
    v8 = *(v0 + 216);
    v10 = *(v0 + 192);
    v9 = *(v0 + 200);
    v11 = *(v0 + 168);

    v12 = objc_allocWithZone(sub_100013A00());
    v6 = sub_1000139F0();
  }

  v13 = *(v0 + 8);

  return v13(v6);
}

void sub_1000027D8(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3 && (v4 = v3, v5 = sub_100013AE0(), v6 = [v4 BOOLForKey:v5], v4, v5, v6))
  {
    v7 = qword_10001C1D8;
    v8 = 0xD000000000000023;
    v9 = "using nil recipe";
    v10 = 1;
  }

  else
  {
    sub_100013B10();
    has_internal_content = os_variant_has_internal_content();

    v7 = qword_10001C1D8;
    if (has_internal_content)
    {
      v9 = "Using default plugin recipe";
    }

    else
    {
      v9 = "epackagingPlugin";
    }

    if (has_internal_content)
    {
      v8 = 0xD000000000000020;
    }

    else
    {
      v8 = 0xD00000000000001BLL;
    }

    if (has_internal_content)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  if (v7 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for InternalLogger();
  sub_100003EA0(v12, qword_10001C4F8);
  v13._countAndFlagsBits = 0x6552737361707962;
  v13._object = 0xEE00292865706963;
  v14._object = (v9 | 0x8000000000000000);
  v15._countAndFlagsBits = 0xD000000000000074;
  v15._object = 0x8000000100015460;
  v14._countAndFlagsBits = v8;
  InternalLogger.debug(_:fromFile:fromFunction:)(v14, v15, v13);
  *a1 = v10;
}

uint64_t sub_100002970(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000049E8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003C0C(&qword_10001C2F0, &qword_100014798);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      sub_100004A2C();
      v9 = sub_100013BA0();
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100002A54()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100002A8C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004D44;

  return sub_1000016B8(a1);
}

uint64_t sub_100002B24(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002BBC;

  return sub_10000223C(a1);
}

uint64_t sub_100002BBC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100002CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100002D9C;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100002D9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002E90(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000037BC(&qword_10001C2A8, a2, type metadata accessor for RepackagingWorker);

  return MLHostExtension.configuration.getter(a1, v3);
}

id sub_100002F0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_100012834();
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

Swift::Int sub_100002F58()
{
  v1 = *v0;
  sub_100013DF0();
  sub_100013B20();

  return sub_100013E10();
}

uint64_t sub_100003020()
{
  *v0;
  *v0;
  sub_100013B20();
}

Swift::Int sub_1000030D4()
{
  v1 = *v0;
  sub_100013DF0();
  sub_100013B20();

  return sub_100013E10();
}

uint64_t sub_100003198@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100004CF8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000031C8(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006465;
  v3 = 0x6C706D6153746F6ELL;
  if (*v1 != 2)
  {
    v3 = 0x64657070696B73;
    v2 = 0xE700000000000000;
  }

  v4 = 0xD000000000000011;
  v5 = 0x8000000100015290;
  if (*v1)
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001000152B0;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for RepackagingWorker();
  sub_1000037BC(&qword_10001C1E8, v3, type metadata accessor for RepackagingWorker);
  sub_100013930();
  return 0;
}

uint64_t sub_100003554(void *a1)
{
  sub_1000037BC(&qword_10001C2E8, 255, type metadata accessor for FLError);
  v2 = a1;
  return sub_1000137B0();
}

Swift::Int sub_100003674()
{
  v2 = *v0;
  sub_100013DF0();
  sub_100013AB0();
  return sub_100013E10();
}

void *sub_1000036D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000037BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_100003A60(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100003AFC()
{
  result = qword_10001C2D8;
  if (!qword_10001C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2D8);
  }

  return result;
}

uint64_t sub_100003BFC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100003C0C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003C54(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100003C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003CD0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003D18()
{
  result = qword_10001C318;
  if (!qword_10001C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C318);
  }

  return result;
}

uint64_t sub_100003D6C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003CD0(&qword_10001C308, &qword_1000147B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003DE4()
{
  result = qword_10001C328;
  if (!qword_10001C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C328);
  }

  return result;
}

uint64_t sub_100003E38(uint64_t a1)
{
  v2 = sub_100003C0C(&qword_10001C300, &qword_1000147A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003EA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003ED8(uint64_t result)
{
  if (result != 2)
  {
    return sub_100003BFC(result);
  }

  return result;
}

uint64_t sub_100003EE8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100003F1C()
{
  if (v0[19] == 1)
  {
    v1 = v0[1];
    v2 = 1;
LABEL_10:

    return v1(v2);
  }

  v3 = [objc_opt_self() defaultContext];
  v4 = [objc_allocWithZone(AFSettingsConnection) initWithInstanceContext:v3];
  v0[20] = v4;

  if (!v4)
  {
    if (qword_10001C1D8 != -1)
    {
      swift_once();
    }

    v6 = v0[20];
    v7 = type metadata accessor for InternalLogger();
    sub_100003EA0(v7, qword_10001C4F8);
    v8._object = 0x80000001000155E0;
    v9._countAndFlagsBits = 0xD000000000000074;
    v9._object = 0x8000000100015460;
    v10._countAndFlagsBits = 0xD000000000000021;
    v10._object = 0x8000000100015600;
    v8._countAndFlagsBits = 0xD000000000000019;
    InternalLogger.error(_:fromFile:fromFunction:)(v8, v9, v10);
    sub_1000048C0();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    v1 = v0[1];
    v2 = 0;
    goto LABEL_10;
  }

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000041AC;
  v5 = swift_continuation_init();
  v0[17] = sub_100003C0C(&qword_10001C348, &unk_1000147D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100002970;
  v0[13] = &unk_100018CC0;
  v0[14] = v5;
  [v4 fetchAccountsWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000041AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_100004728;
  }

  else
  {
    v3 = sub_1000042BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000042BC()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100013CB0())
    {
      v4 = 0;
      v5 = v33[19];
      v37 = v1 + 32;
      v38 = v1 & 0xC000000000000001;
      v43 = v5 + 32;
      v35 = v2;
      v36 = v1;
      v34 = i;
      v41 = v5;
      while (1)
      {
        if (v38)
        {
          v6 = sub_100013C70();
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_38;
          }

          v6 = *(v37 + 8 * v4);
        }

        v7 = v6;
        if (__OFADD__(v4++, 1))
        {
          break;
        }

        v9 = [v6 assistantIdentifier];
        if (v9)
        {
          v40 = v7;
          v10 = v9;
          sub_100013AF0();

          if (!v5)
          {

            v30 = 1;
            goto LABEL_41;
          }

          v39 = v4;
          v42 = *(v5 + 16);
          if (!v42)
          {
LABEL_34:

            v30 = 1;
            goto LABEL_41;
          }

          v11 = 0;
          while (v11 < *(v5 + 16))
          {
            v12 = (v43 + 24 * v11);
            v13 = *v12;
            if (*v12 < 0)
            {

LABEL_29:

              v2 = v35;
              v1 = v36;
              i = v34;
              v4 = v39;
              goto LABEL_6;
            }

            v14 = v12[1];
            v15 = v12[2];

            if (v13 >= sub_100013B30())
            {

              goto LABEL_29;
            }

            ++v11;
            sub_100013B40();
            sub_100013B80();

            while (1)
            {
              sub_100013B60();
              if (!v17)
              {

                v2 = v35;
                v1 = v36;
                i = v34;
                v4 = v39;
                v5 = v41;
                goto LABEL_6;
              }

              v18 = sub_100013AC0();
              v1 = v19;
              v20 = sub_100013AC0();
              v2 = v21;
              if (v18 == v20 && v1 == v21)
              {
                break;
              }

              v16 = sub_100013D70();

              if (v16)
              {
                goto LABEL_24;
              }
            }

LABEL_24:

            v5 = v41;
            if (v11 == v42)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
          break;
        }

LABEL_6:
        if (v4 == i)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

LABEL_40:
    v30 = 0;
LABEL_41:
    v31 = v33[20];

    v28 = v33[1];
    v29 = v30;
  }

  else
  {
    if (qword_10001C1D8 != -1)
    {
      swift_once();
    }

    v22 = v33[20];
    v23 = type metadata accessor for InternalLogger();
    sub_100003EA0(v23, qword_10001C4F8);
    v24._object = 0x80000001000155E0;
    v25._countAndFlagsBits = 0xD000000000000074;
    v25._object = 0x8000000100015460;
    v26._countAndFlagsBits = 0xD000000000000021;
    v26._object = 0x8000000100015600;
    v24._countAndFlagsBits = 0xD000000000000019;
    InternalLogger.error(_:fromFile:fromFunction:)(v24, v25, v26);
    sub_1000048C0();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();

    v28 = v33[1];
    v29 = 0;
  }

  return v28(v29);
}

uint64_t sub_100004728()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  if (qword_10001C1D8 != -1)
  {
    swift_once();
  }

  v3 = v0[20];
  v4 = type metadata accessor for InternalLogger();
  sub_100003EA0(v4, qword_10001C4F8);
  v5._object = 0x80000001000155E0;
  v6._countAndFlagsBits = 0xD000000000000074;
  v6._object = 0x8000000100015460;
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x8000000100015600;
  v5._countAndFlagsBits = 0xD000000000000019;
  InternalLogger.error(_:fromFile:fromFunction:)(v5, v6, v7);
  sub_1000048C0();
  swift_allocError();
  *v8 = 0;
  swift_willThrow();

  v9 = v0[1];

  return v9(0);
}

unint64_t sub_10000486C()
{
  result = qword_10001C338;
  if (!qword_10001C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C338);
  }

  return result;
}

unint64_t sub_1000048C0()
{
  result = qword_10001C340;
  if (!qword_10001C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C340);
  }

  return result;
}

uint64_t sub_100004924(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void *sub_1000049E8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004A2C()
{
  result = qword_10001C350;
  if (!qword_10001C350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C350);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RepackagingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RepackagingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100004BF0()
{
  result = qword_10001C360;
  if (!qword_10001C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C360);
  }

  return result;
}

unint64_t sub_100004C4C()
{
  result = qword_10001C368;
  if (!qword_10001C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C368);
  }

  return result;
}

unint64_t sub_100004CA4()
{
  result = qword_10001C370;
  if (!qword_10001C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C370);
  }

  return result;
}

uint64_t sub_100004CF8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018B80;
  v6._object = a2;
  v4 = sub_100013CF0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100004D4C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_100013C80();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_100013CB0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

id sub_100004DE8(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, void *a5)
{
  result = [objc_allocWithZone(PFARepackagingExecution) init];
  if (!result)
  {
    goto LABEL_32;
  }

  v10 = result;
  v11 = objc_allocWithZone(SISchemaUUID);
  v12 = sub_1000138A0();
  v13 = [v11 initWithNSUUID:v12];

  [v10 setClockIdentifier:v13];
  v14 = [objc_allocWithZone(PFARepackagingExecutionResult) init];
  [v10 setResult:v14];

  if (a4)
  {
    v15 = [v10 result];
    if (!v15)
    {
      goto LABEL_9;
    }

    v16 = v15;
    [v15 setSamplingResult:2];
  }

  else
  {
    v17 = [v10 result];
    if (v17)
    {
      v18 = v17;
      [v17 setSamplingResult:1];
    }

    v19 = [objc_allocWithZone(PFAClockEnvelopeStatistics) init];
    [v10 setEnvelopeStatistics:v19];

    v20 = [v10 envelopeStatistics];
    [v20 setMessageCount:a2];

    v16 = [v10 envelopeStatistics];
    [v16 setTotalBytes:a3];
  }

LABEL_9:
  v21 = [v10 result];
  v22 = v21;
  if ((a4 & 0x100) != 0)
  {
    if (v21)
    {
      [v21 setSuccess:1];
    }
  }

  else
  {
    if (v21)
    {
      v23 = [objc_allocWithZone(PFARepackagingExecutionFailure) init];
      [v22 setFailure:v23];
    }

    if (a5)
    {
      v24 = a5;
      v25 = [v10 result];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 failure];

        if (v27)
        {
          v28 = [objc_allocWithZone(PFARepackagingExecutionFBFFailure) init];
          [v27 setFbfFailure:v28];
        }
      }

      v29 = [v10 result];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 failure];

        if (v31)
        {
          v32 = [v31 fbfFailure];

          if (v32)
          {
            v45 = v24;
            type metadata accessor for FLError(0);
            sub_100005368();
            sub_1000137E0();
            [v32 setFlErrorCode:v44];
          }
        }
      }
    }
  }

  result = [objc_allocWithZone(PFAPFAClientEvent) init];
  if (!result)
  {
    goto LABEL_33;
  }

  v33 = result;
  result = [objc_allocWithZone(PFAPFAEventMetadata) init];
  if (result)
  {
    v34 = result;
    sub_10000531C();
    v35 = sub_100013BE0();
    [v34 setDeviceDimensions:v35];

    v36 = sub_100013890();
    v37 = *(v36 - 8);
    v38 = *(v37 + 64);
    __chkstk_darwin();
    v40 = &v44 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100013880();
    sub_100013870();
    v42 = v41;
    result = (*(v37 + 8))(v40, v36);
    v43 = v42 * 1000.0;
    if (COERCE__INT64(fabs(v42 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v43 > -9.22337204e18)
    {
      if (v43 < 9.22337204e18)
      {
        [v34 setEventTimestampInMsSince1970:v43];
        [v33 setEventMetadata:v34];
        [v33 setRepackagingExecution:v10];

        return v33;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10000531C()
{
  result = qword_10001C378;
  if (!qword_10001C378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C378);
  }

  return result;
}

unint64_t sub_100005368()
{
  result = qword_10001C2E8;
  if (!qword_10001C2E8)
  {
    type metadata accessor for FLError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2E8);
  }

  return result;
}

uint64_t sub_1000053C0(uint64_t a1)
{
  v61 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);

  sub_100004D4C(v2);
  v52 = a1;
  v3 = *(a1 + 64);
  v51 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = sub_100003C0C(&qword_10001C380, &qword_100014920);
  v49 = &v49;
  v55 = *(*(v7 - 8) + 64);
  v8 = __chkstk_darwin(v7 - 8);
  v53 = &v49 - v9;
  v54 = v9;
  v10 = 0;
  v50 = (v4 + 63) >> 6;
  while (1)
  {
    result = __chkstk_darwin(v8);
    v12 = &v49 - v54;
    if (!v6)
    {
      break;
    }

    v56 = &v49 - v54;
    v57 = &v49;
    v13 = v10;
LABEL_14:
    v16 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = v16 | (v13 << 6);
    v18 = sub_1000138B0();
    v60 = &v49;
    v19 = *(v18 - 8);
    v20 = *(v19 + 64);
    __chkstk_darwin(v18);
    v22 = v52;
    (*(v19 + 16))(&v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), *(v52 + 48) + *(v23 + 72) * v17, v18);
    v24 = *(v22 + 56) + 32 * v17;
    v25 = *v24;
    v59 = *(v24 + 8);
    v26 = *(v24 + 16);
    v58 = *(v24 + 17);
    v27 = *(v24 + 24);
    v28 = sub_100003C0C(&qword_10001C388, &qword_100014928);
    v29 = &v56[*(v28 + 48)];
    v12 = v56;
    (*(v19 + 32))();
    v30 = v59;
    *v29 = v25;
    *(v29 + 1) = v30;
    v29[16] = v26;
    v29[17] = v58;
    *(v29 + 3) = v27;
    (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
    v31 = v27;
LABEL_15:
    v32 = v53;
    sub_1000058F8(v12, v53);
    v33 = sub_100003C0C(&qword_10001C388, &qword_100014928);
    if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
    {

      return v61;
    }

    v34 = sub_1000138B0();
    v60 = &v49;
    v35 = *(v34 - 8);
    v36 = *(v35 + 64);
    __chkstk_darwin(v34);
    v38 = &v49 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v39 + *(v33 + 48);
    v41 = *v40;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    v44 = *(v40 + 17);
    v45 = *(v40 + 24);
    (*(v35 + 32))(v38);
    if (v44)
    {
      v46 = 256;
    }

    else
    {
      v46 = 0;
    }

    v47 = sub_100004DE8(v38, v41, v42, v46 | v43, v45);
    sub_100013B90();
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100013BB0();
    }

    sub_100013BC0();

    v8 = (*(v35 + 8))(v38, v34);
  }

  if (v50 <= v10 + 1)
  {
    v14 = v10 + 1;
  }

  else
  {
    v14 = v50;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v50)
    {
      v48 = sub_100003C0C(&qword_10001C388, &qword_100014928);
      (*(*(v48 - 8) + 56))(v12, 1, 1, v48);
      v6 = 0;
      v10 = v15;
      goto LABEL_15;
    }

    v6 = *(v51 + 8 * v13);
    ++v10;
    if (v6)
    {
      v56 = &v49 - v54;
      v57 = &v49;
      v10 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000058F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003C0C(&qword_10001C380, &qword_100014920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_100005968(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100005974(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000059BC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100005A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return _swift_task_switch(sub_100005A2C, 0, 0);
}

uint64_t sub_100005A2C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_1000138C0();
  v4 = sub_100013AE0();
  v0[22] = v4;

  v0[2] = v0;
  v0[3] = sub_100005B70;
  v5 = swift_continuation_init();
  v0[17] = sub_100003C0C(&qword_10001C390, &qword_100014F50);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000C9BC;
  v0[13] = &unk_100018E18;
  v0[14] = v5;
  [v2 reportSiriInstrumentationEvent:v3 forBundleID:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100005B70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_100005CE4;
  }

  else
  {
    v3 = sub_100005C80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100005C80()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005CE4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  swift_willThrow();

  sub_1000061D4(v1, v4, v3);
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

void sub_100005D8C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(id))
{
  if (a1)
  {
    swift_errorRetain();
    v10 = sub_1000061D4(a1, a4, a3);

    v9 = v10;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a5)
  {
LABEL_3:
    v11 = v9;

    a5(v11);
    sub_100006410(a5);
    v9 = v11;
  }

LABEL_4:
}

uint64_t sub_100005E48(void *a1)
{
  type metadata accessor for FLError(0);
  sub_100005368();
  sub_1000137E0();

  result = 1;
  switch(v3)
  {
    case -10:
      result = 40;
      break;
    case -9:
      result = 39;
      break;
    case -8:
      result = 38;
      break;
    case -7:
      result = 7;
      break;
    case -6:
      result = 6;
      break;
    case -5:
      result = 5;
      break;
    case -4:
      result = 4;
      break;
    case -3:
      result = 3;
      break;
    case -2:
      result = 2;
      break;
    case -1:
      return result;
    case 1:
      result = 8;
      break;
    case 2:
      result = 9;
      break;
    case 3:
      result = 10;
      break;
    case 4:
      result = 11;
      break;
    case 5:
      result = 12;
      break;
    case 6:
      result = 13;
      break;
    case 7:
      result = 14;
      break;
    case 8:
      result = 15;
      break;
    case 9:
      result = 16;
      break;
    case 10:
      result = 17;
      break;
    case 11:
      result = 18;
      break;
    case 12:
      result = 19;
      break;
    case 13:
      result = 20;
      break;
    case 14:
      result = 21;
      break;
    case 15:
      result = 22;
      break;
    case 16:
      result = 23;
      break;
    case 17:
      result = 24;
      break;
    case 18:
      result = 25;
      break;
    case 19:
      result = 26;
      break;
    case 20:
      result = 27;
      break;
    case 21:
      result = 28;
      break;
    case 22:
      result = 29;
      break;
    case 23:
      result = 30;
      break;
    case 24:
      result = 31;
      break;
    case 25:
      result = 32;
      break;
    case 26:
      result = 33;
      break;
    case 27:
      result = 34;
      break;
    case 28:
      result = 35;
      break;
    case 100:
      result = 36;
      break;
    case 101:
      result = 37;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1000061D4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100013810();
  v6 = sub_100013810();
  v7 = sub_100005E48(v6);
  v8 = [a2 data];
  if (v8)
  {
    v9 = v8;
    v10 = sub_100013860();
    v12 = v11;

    v13 = sub_100013850();
    sub_1000063BC(v10, v12);
  }

  else
  {
    v13 = 0;
  }

  [a3 trackFBFError:v7 forEventData:v13];

  if (qword_10001C1D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for InternalLogger();
  sub_100003EA0(v14, qword_10001C4F8);
  sub_100013C60(33);
  v19._countAndFlagsBits = 0xD00000000000001FLL;
  v19._object = 0x8000000100015650;
  sub_100013B50(v19);
  sub_100003C0C(&qword_10001C2F0, &qword_100014798);
  sub_100013CA0();
  v15._countAndFlagsBits = 0;
  v16._countAndFlagsBits = 0xD00000000000007ALL;
  v16._object = 0x8000000100015670;
  v17._object = 0x80000001000156F0;
  v15._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD00000000000001BLL;
  InternalLogger.error(_:fromFile:fromFunction:)(v15, v16, v17);

  return v5;
}

uint64_t sub_1000063BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100006410(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Bool __swiftcall ExtensionSampling.isSampleIncluded(assistantId:)(Swift::String_optional assistantId)
{
  if (assistantId.value._object)
  {
    v2 = *v1;
    if (*v1 && (v17 = *(v2 + 16)) != 0)
    {
      v3 = 0;
      v18 = v2 + 32;
      v16 = *v1;
      while (2)
      {
        if (v3 >= *(v2 + 16))
        {
          __break(1u);
          return assistantId.value._countAndFlagsBits;
        }

        v4 = (v18 + 24 * v3);
        v5 = *v4;
        v6 = *v4 >= 0;
        if ((*v4 & 0x8000000000000000) == 0)
        {
          v8 = v4[1];
          v7 = v4[2];

          if (v5 >= sub_100013B30())
          {
LABEL_19:

            v6 = 0;
          }

          else
          {
            ++v3;
            sub_100013B40();
            sub_100013B80();

            while (1)
            {
              sub_100013B60();
              if (!v10)
              {

                goto LABEL_19;
              }

              v11 = sub_100013AC0();
              v13 = v12;
              if (v11 == sub_100013AC0() && v13 == v14)
              {
                break;
              }

              v9 = sub_100013D70();

              if (v9)
              {
                goto LABEL_14;
              }
            }

LABEL_14:

            v2 = v16;
            if (v3 != v17)
            {
              continue;
            }
          }
        }

        break;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  LOBYTE(assistantId.value._countAndFlagsBits) = v6;
  return assistantId.value._countAndFlagsBits;
}

uint64_t ExtensionRecipe.sampling.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_100003EE8(v2);
}

uint64_t sub_1000066A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E696C706D6173 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100013D70();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100006748(uint64_t a1)
{
  v2 = sub_1000077F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006784(uint64_t a1)
{
  v2 = sub_1000077F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ExtensionRecipe.encode(to:)(void *a1)
{
  v3 = sub_100003C0C(&qword_10001C398, &qword_1000149D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_1000049E8(a1, a1[3]);
  sub_100003EE8(v8);
  sub_1000077F0();
  sub_100013E30();
  v12 = v8;
  sub_100007844();
  sub_100013D30();
  sub_100003BFC(v12);
  return (*(v4 + 8))(v7, v3);
}

uint64_t ExtensionRecipe.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100003C0C(&qword_10001C3B0, &qword_1000149D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_1000049E8(a1, a1[3]);
  sub_1000077F0();
  sub_100013E20();
  if (!v2)
  {
    sub_100007898();
    sub_100013D00();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_10000499C(a1);
}

RepackagingWorker::ExtensionSampling __swiftcall ExtensionSampling.init(assistantIdentifier:andIdentifiers:)(RepackagingWorker::SampleByAssistantIdentifier_optional assistantIdentifier, Swift::OpaquePointer_optional andIdentifiers)
{
  v3 = v2;
  v4 = *(assistantIdentifier.value.position + 16);
  if (assistantIdentifier.value.characters._countAndFlagsBits)
  {
    countAndFlagsBits = assistantIdentifier.value.characters._countAndFlagsBits;
    v6 = *(assistantIdentifier.value.position + 16);
  }

  else if (v4)
  {
    v7 = *assistantIdentifier.value.position;
    v8 = *(assistantIdentifier.value.position + 8);
    sub_100003C0C(&qword_10001C3C0, &qword_1000149E0);
    assistantIdentifier.value.position = swift_allocObject();
    countAndFlagsBits = assistantIdentifier.value.position;
    *(assistantIdentifier.value.position + 16) = xmmword_1000149C0;
    *(assistantIdentifier.value.position + 32) = v7;
    *(assistantIdentifier.value.position + 40) = v8;
    *(assistantIdentifier.value.position + 48) = v4;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  *v3 = countAndFlagsBits;
  return *&assistantIdentifier.value.position;
}

Swift::Int sub_100006B60()
{
  sub_100013DF0();
  sub_100013E00(0);
  return sub_100013E10();
}

Swift::Int sub_100006BA4()
{
  sub_100013DF0();
  sub_100013E00(0);
  return sub_100013E10();
}

uint64_t sub_100006C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100013D70();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100006C90(uint64_t a1)
{
  v2 = sub_1000078EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006CCC(uint64_t a1)
{
  v2 = sub_1000078EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ExtensionSampling.encode(to:)(void *a1)
{
  v3 = sub_100003C0C(&qword_10001C3C8, &qword_1000149E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_1000049E8(a1, a1[3]);
  sub_1000078EC();

  sub_100013E30();
  v11[1] = v8;
  sub_100003C0C(&qword_10001C3D8, &qword_1000149F0);
  sub_100007994(&qword_10001C3E0, sub_100007940);
  sub_100013D30();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ExtensionSampling.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100003C0C(&qword_10001C3F0, &qword_1000149F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_1000049E8(a1, a1[3]);
  sub_1000078EC();
  sub_100013E20();
  if (!v2)
  {
    sub_100003C0C(&qword_10001C3D8, &qword_1000149F0);
    sub_100007994(&qword_10001C3F8, sub_100007A0C);
    sub_100013D00();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_10000499C(a1);
}

RepackagingWorker::SampleByAssistantIdentifier __swiftcall SampleByAssistantIdentifier.init(position:characters:)(Swift::Int position, Swift::String characters)
{
  *v2 = position;
  *(v2 + 8) = characters;
  result.characters = characters;
  result.position = position;
  return result;
}

BOOL sub_100007098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0 || sub_100013B30() <= a3)
  {
    return 0;
  }

  sub_100013B40();
  sub_100013B80();

  do
  {
    sub_100013B60();
    v5 = v4 != 0;
    if (!v4)
    {
      break;
    }

    v6 = sub_100013AC0();
    v8 = v7;
    if (v6 == sub_100013AC0() && v8 == v9)
    {

      break;
    }

    v3 = sub_100013D70();
  }

  while ((v3 & 1) == 0);

  return v5;
}

Swift::Int sub_100007228()
{
  v1 = *v0;
  sub_100013DF0();
  sub_100013E00(v1);
  return sub_100013E10();
}

Swift::Int sub_10000729C()
{
  v1 = *v0;
  sub_100013DF0();
  sub_100013E00(v1);
  return sub_100013E10();
}

uint64_t sub_1000072E0()
{
  if (*v0)
  {
    result = 0x6574636172616863;
  }

  else
  {
    result = 0x6E6F697469736F70;
  }

  *v0;
  return result;
}

uint64_t sub_100007320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
  if (v6 || (sub_100013D70() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574636172616863 && a2 == 0xEA00000000007372)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100013D70();

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

uint64_t sub_100007410(uint64_t a1)
{
  v2 = sub_100007A60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000744C(uint64_t a1)
{
  v2 = sub_100007A60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SampleByAssistantIdentifier.encode(to:)(void *a1)
{
  v4 = sub_100003C0C(&qword_10001C408, &qword_100014A00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v11 = a1[4];
  sub_1000049E8(a1, a1[3]);
  sub_100007A60();
  sub_100013E30();
  v15 = 0;
  sub_100013D50();
  if (!v2)
  {
    v14 = 1;
    sub_100013D40();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SampleByAssistantIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100003C0C(&qword_10001C418, &qword_100014A08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_1000049E8(a1, a1[3]);
  sub_100007A60();
  sub_100013E20();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_100013D20();
    v17 = 1;
    v13 = sub_100013D10();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v15;
  }

  return sub_10000499C(a1);
}

unint64_t sub_1000077F0()
{
  result = qword_10001C3A0;
  if (!qword_10001C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3A0);
  }

  return result;
}

unint64_t sub_100007844()
{
  result = qword_10001C3A8;
  if (!qword_10001C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3A8);
  }

  return result;
}

unint64_t sub_100007898()
{
  result = qword_10001C3B8;
  if (!qword_10001C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3B8);
  }

  return result;
}

unint64_t sub_1000078EC()
{
  result = qword_10001C3D0;
  if (!qword_10001C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3D0);
  }

  return result;
}

unint64_t sub_100007940()
{
  result = qword_10001C3E8;
  if (!qword_10001C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3E8);
  }

  return result;
}

uint64_t sub_100007994(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003CD0(&qword_10001C3D8, &qword_1000149F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100007A0C()
{
  result = qword_10001C400;
  if (!qword_10001C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C400);
  }

  return result;
}

unint64_t sub_100007A60()
{
  result = qword_10001C410;
  if (!qword_10001C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C410);
  }

  return result;
}

uint64_t sub_100007AB4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100007AE4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_100007B4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100007BA8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100007C04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_100007C64(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007C78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100007CC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SampleByAssistantIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleByAssistantIdentifier.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Logging(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Logging(_WORD *result, int a2, int a3)
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

unint64_t sub_100007F70()
{
  result = qword_10001C420;
  if (!qword_10001C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C420);
  }

  return result;
}

unint64_t sub_100007FC8()
{
  result = qword_10001C428;
  if (!qword_10001C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C428);
  }

  return result;
}

unint64_t sub_100008020()
{
  result = qword_10001C430;
  if (!qword_10001C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C430);
  }

  return result;
}

unint64_t sub_100008078()
{
  result = qword_10001C438;
  if (!qword_10001C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C438);
  }

  return result;
}

unint64_t sub_1000080D0()
{
  result = qword_10001C440;
  if (!qword_10001C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C440);
  }

  return result;
}

unint64_t sub_100008128()
{
  result = qword_10001C448;
  if (!qword_10001C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C448);
  }

  return result;
}

unint64_t sub_100008180()
{
  result = qword_10001C450;
  if (!qword_10001C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C450);
  }

  return result;
}

unint64_t sub_1000081D8()
{
  result = qword_10001C458;
  if (!qword_10001C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C458);
  }

  return result;
}

unint64_t sub_100008230()
{
  result = qword_10001C460;
  if (!qword_10001C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C460);
  }

  return result;
}

id SessionBuilderExtension.init()@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedLoggerWithPersistenceConfiguration:1];
  result = [objc_allocWithZone(SiriAnalyticsInternalTelemetry) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t SessionBuilderExtension.package(with:)(void *a1)
{
  v4 = sub_1000138D0();
  *(v2 + 664) = v4;
  v5 = *(v4 - 8);
  *(v2 + 672) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 680) = swift_task_alloc();
  *(v2 + 688) = swift_task_alloc();
  v7 = sub_1000139C0();
  *(v2 + 696) = v7;
  v8 = *(v7 - 8);
  *(v2 + 704) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 712) = swift_task_alloc();
  *(v2 + 720) = *a1;
  *(v2 + 728) = *v1;

  return _swift_task_switch(sub_100008444, 0, 0);
}

uint64_t sub_100008444()
{
  v1 = sub_100013920();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[93] = sub_100013910();
  v0[94] = swift_allocObject();
  v4 = *(&async function pointer to dispatch thunk of PluginStateService.fetch() + 1);
  v7 = (&async function pointer to dispatch thunk of PluginStateService.fetch() + async function pointer to dispatch thunk of PluginStateService.fetch());
  v5 = swift_task_alloc();
  v0[95] = v5;
  *v5 = v0;
  v5[1] = sub_100008520;

  return v7();
}

uint64_t sub_100008520(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 760);
  v6 = *v2;
  *(v3 + 768) = a1;
  *(v3 + 776) = a2;

  return _swift_task_switch(sub_100008624, 0, 0);
}

uint64_t sub_100008624()
{
  *(*(v0 + 752) + 16) = *(v0 + 768);
  v1 = swift_allocObject();
  *(v0 + 784) = v1;
  v2 = sub_100010D98(&_swiftEmptyArrayStorage);
  v3 = sub_100010FA4(&_swiftEmptyArrayStorage);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  if (qword_10001C1D8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 720);
  v5 = type metadata accessor for InternalLogger();
  *(v0 + 792) = sub_100003EA0(v5, qword_10001C4F8);
  *(v0 + 552) = v4;
  sub_100003EE8(v4);
  v13._countAndFlagsBits = sub_100013B00();
  sub_100013B50(v13);

  v6._countAndFlagsBits = 0x203A657069636552;
  v7._countAndFlagsBits = 0x286567616B636170;
  v7._object = 0xEE00293A68746977;
  v8._object = 0x8000000100015730;
  v6._object = 0xE800000000000000;
  v8._countAndFlagsBits = 0xD00000000000007ALL;
  InternalLogger.info(_:fromFile:fromFunction:)(v6, v8, v7);

  sub_100013900();
  v9 = async function pointer to static MessageStoreReader.vend()[1];
  v10 = swift_task_alloc();
  *(v0 + 800) = v10;
  *v10 = v0;
  v10[1] = sub_1000087FC;

  return static MessageStoreReader.vend()();
}

uint64_t sub_1000087FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 800);
  v7 = *v2;
  *(v3 + 808) = a1;
  *(v3 + 816) = v1;

  if (v1)
  {
    v5 = sub_10000BB30;
  }

  else
  {
    v5 = sub_100008914;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100008914()
{
  if (!*(v0 + 808))
  {
    v11 = *(v0 + 784);
    v12 = *(v0 + 752);
    v13 = *(v0 + 744);
    sub_100011190();
    *v156 = *(v0 + 728);
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
    swift_beginAccess();
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);

    sub_1000111E4(v15);

    v17 = *(v0 + 712);
    v18 = *(v0 + 688);
    v19 = *(v0 + 680);

    v20 = *(v0 + 8);

    return v20();
  }

  v1 = *(v0 + 720);
  v2 = *(v0 + 696);
  v153 = swift_allocBox();
  v155 = v3;
  *(v0 + 824) = v153;
  v4 = *(v0 + 792);
  if (v1 == 1)
  {
    v5 = *(v0 + 712);
    v6 = *(v0 + 704);
    v7 = *(v0 + 696);

    sub_100013980();
    (*(v6 + 32))(v155, v5, v7);
    v8._countAndFlagsBits = 0xD000000000000017;
    v8._object = 0x80000001000157E0;
    v9._object = 0x8000000100015730;
    v9._countAndFlagsBits = 0xD00000000000007ALL;
    v10._countAndFlagsBits = 0x286567616B636170;
    v10._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v8, v9, v10);
  }

  else
  {
    v22 = *(v0 + 720);
    v23 = *(v0 + 712);
    v24 = *(v0 + 704);
    v25 = *(v0 + 696);
    *(swift_allocObject() + 16) = v22;
    sub_100003EE8(v22);
    sub_100003EE8(v22);

    sub_100013980();
    (*(v24 + 32))(v155, v23, v25);
    sub_100013C60(22);

    *(v0 + 656) = v22;
    v162._countAndFlagsBits = sub_100013B00();
    sub_100013B50(v162);

    v26._countAndFlagsBits = 0xD000000000000014;
    v27._object = 0x8000000100015730;
    v26._object = 0x8000000100015930;
    v27._countAndFlagsBits = 0xD00000000000007ALL;
    v28._countAndFlagsBits = 0x286567616B636170;
    v28._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v26, v27, v28);
  }

  v29 = *(v0 + 784);
  v30 = *(v0 + 752);
  v31 = *(v0 + 712);
  v32 = *(v0 + 704);
  v150 = *(v0 + 696);
  v149 = objc_autoreleasePoolPush();
  swift_beginAccess();
  v33 = *(v30 + 16);
  v34 = *(v30 + 24);
  v35 = swift_allocObject();
  *(v35 + 16) = v29;
  *(v35 + 24) = v153;
  v36 = swift_allocObject();
  *(v36 + 16) = v30;
  *(v36 + 24) = v153;
  swift_retain_n();
  sub_100011684(v33, v34);

  sub_1000138F0();

  sub_1000116EC(v33, v34);
  objc_autoreleasePoolPop(v149);
  swift_beginAccess();
  v37 = *(v32 + 16);
  v37(v31, v155, v150);
  v38 = sub_1000139B0();
  v39 = *(v32 + 8);
  v39(v31, v150);
  v40 = *(v0 + 784);
  if (!v38)
  {
    v61 = *(v0 + 792);
    v62 = *(v0 + 752);
    v63 = *(v0 + 744);
    *v157 = *(v0 + 728);
    v64._countAndFlagsBits = 0xD000000000000011;
    v64._object = 0x8000000100015910;
    v65._object = 0x8000000100015730;
    v65._countAndFlagsBits = 0xD00000000000007ALL;
    v66._countAndFlagsBits = 0x286567616B636170;
    v66._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v64, v65, v66);
    sub_100011FC4();
    v67 = objc_allocWithZone(sub_100013A00());
    v68 = sub_1000139E0();

    swift_beginAccess();
    v69 = *(v40 + 24);
    v70 = *(v40 + 32);

    sub_1000111E4(v69);

LABEL_25:

    v120 = *(v0 + 712);
    v121 = *(v0 + 688);
    v122 = *(v0 + 680);

    v123 = *(v0 + 8);

    return v123(v68);
  }

  v41 = *(v0 + 816);
  v42 = objc_autoreleasePoolPush();
  swift_beginAccess();
  v43 = sub_100013990();
  *(v0 + 832) = v43;
  swift_endAccess();
  objc_autoreleasePoolPop(v42);
  v44 = sub_10000D110(v43);
  v45 = sub_10000D808(v44);

  swift_beginAccess();
  v46 = *(v40 + 24);
  *(v40 + 24) = v45;

  *(v0 + 624) = 0;
  v47 = sub_10000DBC8(v43, v0 + 624);
  *(v0 + 840) = v47;
  v151 = *(v0 + 792);
  v48 = *(v0 + 784);
  if (!*(v47 + 16))
  {
    v147 = *(v0 + 744);
    v148 = *(v0 + 752);
    v71 = *(v0 + 712);
    v72 = *(v0 + 696);
    v145 = *(v0 + 784);
    v146 = *(v0 + 728);

    sub_100013C60(79);
    v165._countAndFlagsBits = 0xD00000000000001DLL;
    v165._object = 0x80000001000158C0;
    sub_100013B50(v165);
    v37(v71, v155, v72);
    v73 = sub_1000139B0();
    v39(v71, v72);
    *(v0 + 632) = v73;
    v166._countAndFlagsBits = sub_100013D60();
    sub_100013B50(v166);

    v167._countAndFlagsBits = 0xD00000000000002ELL;
    v167._object = 0x80000001000158E0;
    sub_100013B50(v167);
    v37(v71, v155, v72);
    v74 = sub_100013970();
    v39(v71, v72);
    *(v0 + 640) = v74;
    v168._countAndFlagsBits = sub_100013D60();
    sub_100013B50(v168);

    v75._countAndFlagsBits = 0;
    v76._object = 0x8000000100015730;
    v75._object = 0xE000000000000000;
    v76._countAndFlagsBits = 0xD00000000000007ALL;
    v77._countAndFlagsBits = 0x286567616B636170;
    v77._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v75, v76, v77);

    sub_100011FC4();
    v78 = objc_allocWithZone(sub_100013A00());
    v68 = sub_1000139E0();

    v79 = *(v145 + 24);
    v80 = *(v145 + 32);

    sub_1000111E4(v79);

    goto LABEL_25;
  }

  v152 = (v0 + 624);
  v50 = *(v48 + 24);
  v49 = *(v48 + 32);

  sub_100011700(v47, v49);

  sub_100013C60(29);

  *(v0 + 616) = *(v47 + 16);
  v163._countAndFlagsBits = sub_100013D60();
  sub_100013B50(v163);

  v164._countAndFlagsBits = 0xD000000000000010;
  v164._object = 0x8000000100015800;
  sub_100013B50(v164);
  v51._countAndFlagsBits = 0x6974736973726550;
  v52._object = 0x8000000100015730;
  v51._object = 0xEB0000000020676ELL;
  v52._countAndFlagsBits = 0xD00000000000007ALL;
  v53._countAndFlagsBits = 0x286567616B636170;
  v53._object = 0xEE00293A68746977;
  InternalLogger.info(_:fromFile:fromFunction:)(v51, v52, v53);

  v54 = *(v47 + 32);
  *(v0 + 1048) = v54;
  v55 = 1 << v54;
  v56 = -1;
  if (1 << v54 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v47 + 64);
  *(v0 + 848) = *(*(sub_100003C0C(&qword_10001C470, &qword_100014F40) - 8) + 64);
  *(v0 + 856) = swift_task_alloc();
  *(v0 + 1040) = enum case for OffDeviceTopic.orderedJoined(_:);
  *(v0 + 1044) = enum case for OffDeviceTopic.telemetry(_:);
  *(v0 + 864) = 0;
  v58 = swift_task_alloc();
  if (v57)
  {
    v59 = 0;
    v60 = *(v0 + 840);
LABEL_19:
    v154 = (v57 - 1) & v57;
    v83 = __clz(__rbit64(v57)) | (v59 << 6);
    v84 = sub_1000138B0();
    v85 = *(v84 - 8);
    v86 = v85;
    v87 = *(v85 + 64) + 15;
    v88 = swift_task_alloc();
    (*(v85 + 16))(v88, *(v60 + 48) + *(v85 + 72) * v83, v84);
    v89 = *(*(v60 + 56) + 8 * v83);
    v90 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
    v91 = *(v90 + 48);
    (*(v86 + 32))(v58, v88, v84);
    *(v58 + v91) = v89;
    (*(*(v90 - 8) + 56))(v58, 0, 1, v90);

    v92 = v89;
    v93 = v154;
    v82 = v59;
  }

  else
  {
    v81 = 0;
    v82 = ((v55 + 63) >> 6) - 1;
    while (v82 != v81)
    {
      v59 = v81 + 1;
      v60 = *(v0 + 840);
      v57 = *(v60 + 8 * v81++ + 72);
      if (v57)
      {
        goto LABEL_19;
      }
    }

    v144 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
    (*(*(v144 - 8) + 56))(v58, 1, 1, v144);
    v93 = 0;
  }

  *(v0 + 880) = v82;
  *(v0 + 872) = v93;
  v94 = *(v0 + 856);
  sub_100012434(v58, v94, &qword_10001C470, &qword_100014F40);

  v95 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
  if ((*(*(v95 - 8) + 48))(v94, 1, v95) == 1)
  {
    v96 = *(v0 + 864);
    v97 = *(v0 + 856);
    v98 = *(v0 + 840);
    v99 = *(v0 + 792);
    v100 = *(v0 + 752);

    sub_100013C60(24);

    *(v0 + 608) = v96;
    v169._countAndFlagsBits = sub_100013D60();
    sub_100013B50(v169);

    v101._countAndFlagsBits = 0xD000000000000016;
    v102._object = 0x8000000100015730;
    v101._object = 0x8000000100015820;
    v102._countAndFlagsBits = 0xD00000000000007ALL;
    v103._countAndFlagsBits = 0x286567616B636170;
    v103._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v101, v102, v103);

    v104 = *(v100 + 24);
    *(v0 + 1016) = v104;
    if (v104 >> 60 == 15)
    {
      v105 = *v152;
      if (*v152 >= 1)
      {
        v106 = *(v0 + 792);
        sub_100013C60(49);

        *(v0 + 600) = v105;
        v170._countAndFlagsBits = sub_100013D60();
        sub_100013B50(v170);

        v107._countAndFlagsBits = 0xD00000000000002FLL;
        v108._object = 0x8000000100015730;
        v107._object = 0x8000000100015840;
        v108._countAndFlagsBits = 0xD00000000000007ALL;
        v109._countAndFlagsBits = 0x286567616B636170;
        v109._object = 0xEE00293A68746977;
        InternalLogger.fault(_:fromFile:fromFunction:)(v107, v108, v109);
      }

      v110 = *(v0 + 832);
      v111 = *(v0 + 824);
      v112 = *(v0 + 808);
      v113 = *(v0 + 784);
      v114 = *(v0 + 752);
      v115 = *(v0 + 744);
      v116 = sub_100013A00();
      *v158 = *(v0 + 728);
      v117 = objc_allocWithZone(v116);
      v68 = sub_1000139F0();

      v118 = *(v113 + 24);
      v119 = *(v113 + 32);

      sub_1000111E4(v118);

      goto LABEL_25;
    }

    v136 = *(v0 + 792);
    v137 = *(*(v0 + 752) + 16);
    *(v0 + 1024) = v137;
    sub_100011698(v137, v104);
    v138._object = 0x8000000100015870;
    v139._object = 0x8000000100015730;
    v138._countAndFlagsBits = 0xD000000000000016;
    v139._countAndFlagsBits = 0xD00000000000007ALL;
    v140._countAndFlagsBits = 0x286567616B636170;
    v140._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v138, v139, v140);
    v141 = *(&async function pointer to dispatch thunk of PluginStateService.save(_:) + 1);
    v160 = (&async function pointer to dispatch thunk of PluginStateService.save(_:) + async function pointer to dispatch thunk of PluginStateService.save(_:));
    v142 = swift_task_alloc();
    *(v0 + 1032) = v142;
    *v142 = v0;
    v142[1] = sub_10000B814;
    v143 = *(v0 + 744);

    return v160(v137, v104);
  }

  else
  {
    v124 = *(v0 + 1040);
    v125 = *(v0 + 856);
    v159 = *(v0 + 728);
    v126 = *(v0 + 688);
    v127 = *(v0 + 672);
    v128 = *(v0 + 664);
    v129 = sub_1000138B0();
    *(v0 + 888) = v129;
    v130 = *(v129 - 8);
    v131 = v130;
    *(v0 + 896) = v130;
    *(v0 + 904) = *(v130 + 64);
    *(v0 + 912) = swift_task_alloc();
    v132 = *(v125 + *(v95 + 48));
    *(v0 + 920) = v132;
    (*(v131 + 32))();
    v133 = *(v127 + 104);
    *(v0 + 928) = v133;
    *(v0 + 936) = (v127 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v133(v126, v124, v128);
    sub_1000138C0();
    v134 = sub_100013AE0();
    *(v0 + 944) = v134;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100009B9C;
    v135 = swift_continuation_init();
    *(v0 + 136) = sub_100003C0C(&qword_10001C390, &qword_100014F50);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000C9BC;
    *(v0 + 104) = &unk_100019210;
    *(v0 + 112) = v135;
    [v159 reportSiriInstrumentationEvent:v132 forBundleID:v134 completion:?];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100009B9C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 952) = v2;
  if (v2)
  {
    v3 = sub_10000A8A8;
  }

  else
  {
    v3 = sub_100009CAC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100009CAC()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 864);
  v3 = *(v0 + 688);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v4 + 8);
  *(v0 + 960) = v6;
  *(v0 + 968) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  *(v0 + 976) = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_41:
    __break(1u);
    return _swift_continuation_await(v7);
  }

  v8 = *(v0 + 912);
  v9 = *(v0 + 896);
  v10 = *(v0 + 888);
  v11 = *(v0 + 784);
  v12 = *(v0 + 904) + 15;
  v13 = swift_task_alloc();
  (*(v9 + 16))(v13, v8, v10);
  swift_beginAccess();
  v15 = sub_10000E18C((v0 + 144));
  if (*(v14 + 24) != 1)
  {
    *(v14 + 17) = 1;
  }

  (v15)(v0 + 144, 0);
  v16 = *(v0 + 912);
  v17 = *(v0 + 896);
  v18 = *(v0 + 888);
  v121 = *(v0 + 792);
  v19 = *(v0 + 784);
  swift_endAccess();
  v20 = *(v17 + 8);
  *(v0 + 984) = v20;
  *(v0 + 992) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v13, v18);

  *(v0 + 504) = 0;
  *(v0 + 512) = 0xE000000000000000;
  sub_100013C60(38);
  v21 = *(v0 + 512);

  *(v0 + 520) = 0xD000000000000024;
  *(v0 + 528) = 0x8000000100015890;
  sub_1000122B8(&qword_10001C480);
  v127._countAndFlagsBits = sub_100013D60();
  sub_100013B50(v127);

  v22._object = 0x8000000100015730;
  v22._countAndFlagsBits = 0xD00000000000007ALL;
  v23._countAndFlagsBits = 0x286567616B636170;
  v23._object = 0xEE00293A68746977;
  InternalLogger.debug(_:fromFile:fromFunction:)(*(v0 + 520), v22, v23);

  swift_beginAccess();
  v24 = *(v19 + 24);
  if (*(v24 + 16) && (v25 = sub_10000FB60(*(v0 + 912)), (v26 & 1) != 0))
  {
    v27 = *(v0 + 912);
    v28 = *(v24 + 56) + 32 * v25;
    v29 = *v28;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    v32 = *(v28 + 17);
    v33 = *(v28 + 24);
    swift_endAccess();
    v34 = v33;
    if (v32)
    {
      v35 = 256;
    }

    else
    {
      v35 = 0;
    }

    v36 = sub_100004DE8(v27, v29, v30, v35 | v31, v33);

    v37 = [v36 wrapAsAnyEvent];
    *(v0 + 1000) = v37;

    if (v37)
    {
      v38 = *(v0 + 936);
      (*(v0 + 928))(*(v0 + 680), *(v0 + 1044), *(v0 + 664));
      v39 = swift_task_alloc();
      *(v0 + 1008) = v39;
      *v39 = v0;
      v39[1] = sub_10000B680;
      v40 = *(v0 + 736);
      v41 = *(v0 + 728);
      v42 = *(v0 + 680);

      return sub_100005A08(v37, v42, v41, v40);
    }

    v120 = *(v0 + 920);
    v20(*(v0 + 912), *(v0 + 888));
  }

  else
  {
    v44 = *(v0 + 920);
    v45 = *(v0 + 912);
    v46 = *(v0 + 888);
    swift_endAccess();

    v20(v45, v46);
  }

  v47 = *(v0 + 912);

  v48 = *(v0 + 880);
  v49 = *(v0 + 872);
  *(v0 + 864) = *(v0 + 976);
  v50 = *(v0 + 848) + 15;
  v7 = swift_task_alloc();
  v51 = v7;
  if (!v49)
  {
    v53 = ((1 << *(v0 + 1048)) + 63) >> 6;
    if (v53 <= (v48 + 1))
    {
      v54 = v48 + 1;
    }

    else
    {
      v54 = ((1 << *(v0 + 1048)) + 63) >> 6;
    }

    v55 = v54 - 1;
    while (1)
    {
      v56 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v56 >= v53)
      {
        v119 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
        (*(*(v119 - 8) + 56))(v51, 1, 1, v119);
        v67 = 0;
        goto LABEL_25;
      }

      v52 = *(v0 + 840);
      v49 = *(v52 + 8 * v56 + 64);
      ++v48;
      if (v49)
      {
        v48 = v56;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v52 = *(v0 + 840);
LABEL_24:
  v122 = (v49 - 1) & v49;
  v57 = __clz(__rbit64(v49)) | (v48 << 6);
  v58 = sub_1000138B0();
  v59 = *(v58 - 8);
  v60 = v59;
  v61 = *(v59 + 64) + 15;
  v62 = swift_task_alloc();
  (*(v59 + 16))(v62, *(v52 + 48) + *(v59 + 72) * v57, v58);
  v63 = *(*(v52 + 56) + 8 * v57);
  v64 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
  v65 = *(v64 + 48);
  (*(v60 + 32))(v51, v62, v58);
  *(v51 + v65) = v63;
  (*(*(v64 - 8) + 56))(v51, 0, 1, v64);

  v66 = v63;
  v67 = v122;
  v55 = v48;
LABEL_25:
  *(v0 + 880) = v55;
  *(v0 + 872) = v67;
  v68 = *(v0 + 856);
  sub_100012434(v51, v68, &qword_10001C470, &qword_100014F40);

  v69 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
  if ((*(*(v69 - 8) + 48))(v68, 1, v69) != 1)
  {
    v99 = *(v0 + 1040);
    v100 = *(v0 + 856);
    v101 = *(v0 + 688);
    v102 = *(v0 + 672);
    v124 = *(v0 + 728);
    v103 = *(v0 + 664);
    v104 = sub_1000138B0();
    *(v0 + 888) = v104;
    v105 = *(v104 - 8);
    v106 = v105;
    *(v0 + 896) = v105;
    *(v0 + 904) = *(v105 + 64);
    *(v0 + 912) = swift_task_alloc();
    v107 = *(v100 + *(v69 + 48));
    *(v0 + 920) = v107;
    (*(v106 + 32))();
    v108 = *(v102 + 104);
    *(v0 + 928) = v108;
    *(v0 + 936) = (v102 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v108(v101, v99, v103);
    sub_1000138C0();
    v109 = sub_100013AE0();
    *(v0 + 944) = v109;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100009B9C;
    v110 = swift_continuation_init();
    *(v0 + 136) = sub_100003C0C(&qword_10001C390, &qword_100014F50);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000C9BC;
    *(v0 + 104) = &unk_100019210;
    *(v0 + 112) = v110;
    [v124 reportSiriInstrumentationEvent:v107 forBundleID:v109 completion:?];
    v7 = v0 + 16;

    return _swift_continuation_await(v7);
  }

  v70 = *(v0 + 864);
  v71 = *(v0 + 856);
  v72 = *(v0 + 840);
  v73 = *(v0 + 792);
  v74 = *(v0 + 752);

  sub_100013C60(24);

  *(v0 + 608) = v70;
  v128._countAndFlagsBits = sub_100013D60();
  sub_100013B50(v128);

  v75._countAndFlagsBits = 0xD000000000000016;
  v76._object = 0x8000000100015730;
  v75._object = 0x8000000100015820;
  v76._countAndFlagsBits = 0xD00000000000007ALL;
  v77._countAndFlagsBits = 0x286567616B636170;
  v77._object = 0xEE00293A68746977;
  InternalLogger.info(_:fromFile:fromFunction:)(v75, v76, v77);

  v78 = *(v74 + 24);
  *(v0 + 1016) = v78;
  if (v78 >> 60 == 15)
  {
    v79 = *(v0 + 624);
    if (v79 >= 1)
    {
      v80 = *(v0 + 792);
      sub_100013C60(49);

      *(v0 + 600) = v79;
      v129._countAndFlagsBits = sub_100013D60();
      sub_100013B50(v129);

      v81._countAndFlagsBits = 0xD00000000000002FLL;
      v82._object = 0x8000000100015730;
      v81._object = 0x8000000100015840;
      v82._countAndFlagsBits = 0xD00000000000007ALL;
      v83._countAndFlagsBits = 0x286567616B636170;
      v83._object = 0xEE00293A68746977;
      InternalLogger.fault(_:fromFile:fromFunction:)(v81, v82, v83);
    }

    v84 = *(v0 + 832);
    v85 = *(v0 + 824);
    v86 = *(v0 + 808);
    v87 = *(v0 + 784);
    v88 = *(v0 + 752);
    v89 = *(v0 + 744);
    v90 = sub_100013A00();
    *v123 = *(v0 + 728);
    v91 = objc_allocWithZone(v90);
    v92 = sub_1000139F0();

    v93 = *(v87 + 24);
    v94 = *(v87 + 32);

    sub_1000111E4(v93);

    v95 = *(v0 + 712);
    v96 = *(v0 + 688);
    v97 = *(v0 + 680);

    v98 = *(v0 + 8);

    return v98(v92);
  }

  else
  {
    v111 = *(v0 + 792);
    v112 = *(*(v0 + 752) + 16);
    *(v0 + 1024) = v112;
    sub_100011698(v112, v78);
    v113._object = 0x8000000100015870;
    v114._object = 0x8000000100015730;
    v113._countAndFlagsBits = 0xD000000000000016;
    v114._countAndFlagsBits = 0xD00000000000007ALL;
    v115._countAndFlagsBits = 0x286567616B636170;
    v115._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v113, v114, v115);
    v116 = *(&async function pointer to dispatch thunk of PluginStateService.save(_:) + 1);
    v125 = (&async function pointer to dispatch thunk of PluginStateService.save(_:) + async function pointer to dispatch thunk of PluginStateService.save(_:));
    v117 = swift_task_alloc();
    *(v0 + 1032) = v117;
    *v117 = v0;
    v117[1] = sub_10000B814;
    v118 = *(v0 + 744);

    return v125(v112, v78);
  }
}

uint64_t sub_10000A8A8()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 944);
  v3 = *(v0 + 920);
  v4 = *(v0 + 736);
  v5 = *(v0 + 688);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  swift_willThrow();

  v8 = sub_1000061D4(v1, v3, v4);
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  *(v0 + 592) = v8;
  v9 = v8;
  sub_100003C0C(&qword_10001C2F0, &qword_100014798);
  type metadata accessor for FLError(0);
  if (swift_dynamicCast())
  {
    v10 = *(v0 + 912);
    v11 = *(v0 + 904);
    v12 = *(v0 + 896);
    v13 = *(v0 + 888);
    v14 = *(v0 + 784);

    v138 = *(v0 + 584);
    v15 = swift_task_alloc();
    (*(v12 + 16))(v15, v10, v13);
    swift_beginAccess();
    v17 = sub_10000E18C((v0 + 176));
    v18 = *(v16 + 24);
    if (v18 != 1)
    {
      *(v16 + 24) = v138;
      v19 = v138;
    }

    (v17)(v0 + 176, 0);
    v20 = *(v0 + 912);
    v21 = *(v0 + 896);
    v22 = *(v0 + 888);
    v23 = *(v0 + 792);
    swift_endAccess();
    v136 = *(v21 + 8);
    v136(v15, v22);

    *(v0 + 472) = 0;
    *(v0 + 480) = 0xE000000000000000;
    sub_100013C60(48);
    v24 = *(v0 + 480);
    *(v0 + 536) = *(v0 + 472);
    *(v0 + 544) = v24;
    v145._countAndFlagsBits = 0xD00000000000001FLL;
    v145._object = 0x8000000100015650;
    sub_100013B50(v145);
    *(v0 + 560) = v138;
    sub_100013CA0();
    v146._countAndFlagsBits = 0x6F6973736573202CLL;
    v146._object = 0xED00003D64695F6ELL;
    sub_100013B50(v146);
    sub_1000122B8(&qword_10001C480);
    v147._countAndFlagsBits = sub_100013D60();
    sub_100013B50(v147);

    v25._object = 0x8000000100015730;
    v25._countAndFlagsBits = 0xD00000000000007ALL;
    v26._countAndFlagsBits = 0x286567616B636170;
    v26._object = 0xEE00293A68746977;
    InternalLogger.error(_:fromFile:fromFunction:)(*(v0 + 536), v25, v26);

    *(v0 + 568) = v138;
    sub_100005368();
    sub_1000137E0();
    v27 = *(v0 + 920);
    v28 = *(v0 + 912);
    v29 = *(v0 + 888);
    if (*(v0 + 576) == -5)
    {
      v136(*(v0 + 912), *(v0 + 888));

      v30 = *(v0 + 592);

      v31 = *(v0 + 880);
      v32 = *(v0 + 872);
      v33 = *(v0 + 848) + 15;
      v34 = swift_task_alloc();
      v35 = v34;
      if (v32)
      {
        v36 = *(v0 + 840);
LABEL_20:
        v140 = (v32 - 1) & v32;
        v65 = __clz(__rbit64(v32)) | (v31 << 6);
        v66 = sub_1000138B0();
        v67 = *(v66 - 8);
        v68 = v67;
        v69 = *(v67 + 64) + 15;
        v70 = swift_task_alloc();
        (*(v67 + 16))(v70, *(v36 + 48) + *(v67 + 72) * v65, v66);
        v71 = *(*(v36 + 56) + 8 * v65);
        v72 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
        v73 = *(v72 + 48);
        (*(v68 + 32))(v35, v70, v66);
        *(v35 + v73) = v71;
        (*(*(v72 - 8) + 56))(v35, 0, 1, v72);

        v74 = v71;
        v75 = v140;
        v63 = v31;
LABEL_21:
        *(v0 + 880) = v63;
        *(v0 + 872) = v75;
        v76 = *(v0 + 856);
        sub_100012434(v35, v76, &qword_10001C470, &qword_100014F40);

        v77 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
        if ((*(*(v77 - 8) + 48))(v76, 1, v77) == 1)
        {
          v78 = *(v0 + 864);
          v79 = *(v0 + 856);
          v80 = *(v0 + 840);
          v81 = *(v0 + 792);
          v82 = *(v0 + 752);

          sub_100013C60(24);

          *(v0 + 608) = v78;
          v148._countAndFlagsBits = sub_100013D60();
          sub_100013B50(v148);

          v83._countAndFlagsBits = 0xD000000000000016;
          v84._object = 0x8000000100015730;
          v83._object = 0x8000000100015820;
          v84._countAndFlagsBits = 0xD00000000000007ALL;
          v85._countAndFlagsBits = 0x286567616B636170;
          v85._object = 0xEE00293A68746977;
          InternalLogger.info(_:fromFile:fromFunction:)(v83, v84, v85);

          v86 = *(v82 + 24);
          *(v0 + 1016) = v86;
          if (v86 >> 60 == 15)
          {
            v87 = *(v0 + 624);
            if (v87 >= 1)
            {
              v88 = *(v0 + 792);
              sub_100013C60(49);

              *(v0 + 600) = v87;
              v149._countAndFlagsBits = sub_100013D60();
              sub_100013B50(v149);

              v89._countAndFlagsBits = 0xD00000000000002FLL;
              v90._object = 0x8000000100015730;
              v89._object = 0x8000000100015840;
              v90._countAndFlagsBits = 0xD00000000000007ALL;
              v91._countAndFlagsBits = 0x286567616B636170;
              v91._object = 0xEE00293A68746977;
              InternalLogger.fault(_:fromFile:fromFunction:)(v89, v90, v91);
            }

            v92 = *(v0 + 832);
            v93 = *(v0 + 824);
            v94 = *(v0 + 808);
            v95 = *(v0 + 784);
            v96 = *(v0 + 752);
            v97 = *(v0 + 744);
            v98 = sub_100013A00();
            *v141 = *(v0 + 728);
            v99 = objc_allocWithZone(v98);
            v100 = sub_1000139F0();

            v101 = *(v95 + 24);
            v102 = *(v95 + 32);

            sub_1000111E4(v101);

            v103 = *(v0 + 712);
            v104 = *(v0 + 688);
            v105 = *(v0 + 680);

            v106 = *(v0 + 8);

            return v106(v100);
          }

          else
          {
            v119 = *(v0 + 792);
            v120 = *(*(v0 + 752) + 16);
            *(v0 + 1024) = v120;
            sub_100011698(v120, v86);
            v121._object = 0x8000000100015870;
            v122._object = 0x8000000100015730;
            v121._countAndFlagsBits = 0xD000000000000016;
            v122._countAndFlagsBits = 0xD00000000000007ALL;
            v123._countAndFlagsBits = 0x286567616B636170;
            v123._object = 0xEE00293A68746977;
            InternalLogger.info(_:fromFile:fromFunction:)(v121, v122, v123);
            v124 = *(&async function pointer to dispatch thunk of PluginStateService.save(_:) + 1);
            v143 = (&async function pointer to dispatch thunk of PluginStateService.save(_:) + async function pointer to dispatch thunk of PluginStateService.save(_:));
            v125 = swift_task_alloc();
            *(v0 + 1032) = v125;
            *v125 = v0;
            v125[1] = sub_10000B814;
            v126 = *(v0 + 744);

            return v143(v120, v86);
          }
        }

        v107 = *(v0 + 1040);
        v108 = *(v0 + 856);
        v142 = *(v0 + 728);
        v109 = *(v0 + 688);
        v110 = *(v0 + 672);
        v111 = *(v0 + 664);
        v112 = sub_1000138B0();
        *(v0 + 888) = v112;
        v113 = *(v112 - 8);
        v114 = v113;
        *(v0 + 896) = v113;
        *(v0 + 904) = *(v113 + 64);
        *(v0 + 912) = swift_task_alloc();
        v115 = *(v108 + *(v77 + 48));
        *(v0 + 920) = v115;
        (*(v114 + 32))();
        v116 = *(v110 + 104);
        *(v0 + 928) = v116;
        *(v0 + 936) = (v110 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v116(v109, v107, v111);
        sub_1000138C0();
        v117 = sub_100013AE0();
        *(v0 + 944) = v117;

        *(v0 + 16) = v0;
        *(v0 + 24) = sub_100009B9C;
        v118 = swift_continuation_init();
        *(v0 + 136) = sub_100003C0C(&qword_10001C390, &qword_100014F50);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_10000C9BC;
        *(v0 + 104) = &unk_100019210;
        *(v0 + 112) = v118;
        [v142 reportSiriInstrumentationEvent:v115 forBundleID:v117 completion:?];
        v34 = v0 + 16;
      }

      else
      {
        v61 = ((1 << *(v0 + 1048)) + 63) >> 6;
        if (v61 <= (v31 + 1))
        {
          v62 = v31 + 1;
        }

        else
        {
          v62 = ((1 << *(v0 + 1048)) + 63) >> 6;
        }

        v63 = v62 - 1;
        while (1)
        {
          v64 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v64 >= v61)
          {
            v127 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
            (*(*(v127 - 8) + 56))(v35, 1, 1, v127);
            v75 = 0;
            goto LABEL_21;
          }

          v36 = *(v0 + 840);
          v32 = *(v36 + 8 * v64 + 64);
          ++v31;
          if (v32)
          {
            v31 = v64;
            goto LABEL_20;
          }
        }

        __break(1u);
      }

      return _swift_continuation_await(v34);
    }

    v128 = *(v0 + 840);
    v49 = *(v0 + 832);
    v130 = *(v0 + 824);
    v131 = *(v0 + 856);
    v50 = *(v0 + 808);
    v51 = *(v0 + 784);
    v135 = *(v0 + 752);
    v133 = *(v0 + 744);
    sub_100011190();
    v129 = *(v0 + 728);
    swift_allocError();
    *v52 = 1;
    swift_willThrow();

    v136(v28, v29);
    v53 = *(v0 + 592);

    v54 = *(v51 + 24);
    v55 = *(v51 + 32);

    sub_1000111E4(v54);
  }

  else
  {
    v37 = *(v0 + 920);
    v38 = *(v0 + 912);
    v39 = *(v0 + 896);
    v40 = *(v0 + 888);
    v41 = *(v0 + 840);
    v42 = *(v0 + 832);
    v43 = *(v0 + 824);
    v44 = *(v0 + 808);
    v45 = *(v0 + 784);
    v139 = *(v0 + 752);
    v134 = *(v0 + 856);
    v137 = *(v0 + 744);
    v132 = *(v0 + 728);

    (*(v39 + 8))(v38, v40);
    v46 = *(v0 + 592);

    v47 = *(v45 + 24);
    v48 = *(v45 + 32);

    sub_1000111E4(v47);
  }

  v56 = *(v0 + 712);
  v57 = *(v0 + 688);
  v58 = *(v0 + 680);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_10000B680()
{
  v2 = *v1;
  v3 = *(*v1 + 1008);
  v4 = *v1;

  v5 = v2[121];
  v6 = v2[120];
  v7 = v2[85];
  v8 = v2[83];
  if (v0)
  {

    v6(v7, v8);
    v9 = sub_10000BD4C;
  }

  else
  {
    v6(v7, v8);
    v9 = sub_100012820;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10000B814()
{
  v1 = *(*v0 + 1032);
  v3 = *v0;

  return _swift_task_switch(sub_10000B910, 0, 0);
}

uint64_t sub_10000B910()
{
  sub_1000116EC(*(v0 + 1024), *(v0 + 1016));
  v1 = *(v0 + 624);
  if (v1 >= 1)
  {
    v2 = *(v0 + 792);
    sub_100013C60(49);

    *(v0 + 600) = v1;
    v24._countAndFlagsBits = sub_100013D60();
    sub_100013B50(v24);

    v3._countAndFlagsBits = 0xD00000000000002FLL;
    v4._countAndFlagsBits = 0x286567616B636170;
    v4._object = 0xEE00293A68746977;
    v5._countAndFlagsBits = 0xD00000000000007ALL;
    v5._object = 0x8000000100015730;
    v3._object = 0x8000000100015840;
    InternalLogger.fault(_:fromFile:fromFunction:)(v3, v5, v4);
  }

  v6 = *(v0 + 832);
  v7 = *(v0 + 824);
  v8 = *(v0 + 808);
  v9 = *(v0 + 784);
  v10 = *(v0 + 752);
  v11 = *(v0 + 744);
  v12 = sub_100013A00();
  v22 = *(v0 + 728);
  v13 = objc_allocWithZone(v12);
  v14 = sub_1000139F0();

  v15 = *(v9 + 24);
  v16 = *(v9 + 32);

  sub_1000111E4(v15);

  v17 = *(v0 + 712);
  v18 = *(v0 + 688);
  v19 = *(v0 + 680);

  v20 = *(v0 + 8);

  return v20(v14);
}

uint64_t sub_10000BB30()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 752);
  v5 = *(v0 + 744);
  v16 = *(v0 + 728);
  sub_100013C60(39);
  *(v0 + 488) = 0;
  *(v0 + 496) = 0xE000000000000000;
  v18._object = 0x80000001000157B0;
  v18._countAndFlagsBits = 0xD000000000000025;
  sub_100013B50(v18);
  *(v0 + 648) = v1;
  sub_100003C0C(&qword_10001C2F0, &qword_100014798);
  sub_100013CA0();
  v6._countAndFlagsBits = 0x286567616B636170;
  v6._object = 0xEE00293A68746977;
  v7._countAndFlagsBits = 0xD00000000000007ALL;
  v7._object = 0x8000000100015730;
  InternalLogger.error(_:fromFile:fromFunction:)(*(v0 + 488), v7, v6);

  sub_100011190();
  swift_allocError();
  *v8 = 0;
  swift_willThrow();

  swift_beginAccess();
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);

  sub_1000111E4(v9);

  v11 = *(v0 + 712);
  v12 = *(v0 + 688);
  v13 = *(v0 + 680);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10000BD4C()
{
  v1 = *(v0 + 1000);
  v89 = *(v0 + 992);
  v2 = *(v0 + 984);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 888);
  v6 = *(v0 + 784);
  swift_beginAccess();
  v7 = sub_10000E31C(v4);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_endAccess();
  sub_100011FB4(v7, v9, v11, v13);

  v2(v4, v5);
  v14 = *(v0 + 912);

  v15 = *(v0 + 880);
  v16 = *(v0 + 872);
  *(v0 + 864) = *(v0 + 976);
  v17 = *(v0 + 848) + 15;
  v18 = swift_task_alloc();
  v19 = v18;
  if (!v16)
  {
    v21 = ((1 << *(v0 + 1048)) + 63) >> 6;
    if (v21 <= (v15 + 1))
    {
      v22 = v15 + 1;
    }

    else
    {
      v22 = ((1 << *(v0 + 1048)) + 63) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v24 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
        v88 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
        (*(*(v88 - 8) + 56))(v19, 1, 1, v88);
        v35 = 0;
        goto LABEL_12;
      }

      v20 = *(v0 + 840);
      v16 = *(v20 + 8 * v24 + 64);
      ++v15;
      if (v16)
      {
        v15 = v24;
        goto LABEL_11;
      }
    }

    __break(1u);
    return _swift_continuation_await(v18);
  }

  v20 = *(v0 + 840);
LABEL_11:
  v90 = (v16 - 1) & v16;
  v25 = __clz(__rbit64(v16)) | (v15 << 6);
  v26 = sub_1000138B0();
  v27 = *(v26 - 8);
  v28 = v27;
  v29 = *(v27 + 64) + 15;
  v30 = swift_task_alloc();
  (*(v27 + 16))(v30, *(v20 + 48) + *(v27 + 72) * v25, v26);
  v31 = *(*(v20 + 56) + 8 * v25);
  v32 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
  v33 = *(v32 + 48);
  (*(v28 + 32))(v19, v30, v26);
  *(v19 + v33) = v31;
  (*(*(v32 - 8) + 56))(v19, 0, 1, v32);

  v34 = v31;
  v35 = v90;
  v23 = v15;
LABEL_12:
  *(v0 + 880) = v23;
  *(v0 + 872) = v35;
  v36 = *(v0 + 856);
  sub_100012434(v19, v36, &qword_10001C470, &qword_100014F40);

  v37 = sub_100003C0C(&qword_10001C478, &qword_100014F48);
  if ((*(*(v37 - 8) + 48))(v36, 1, v37) != 1)
  {
    v68 = *(v0 + 1040);
    v69 = *(v0 + 856);
    v70 = *(v0 + 688);
    v71 = *(v0 + 672);
    v92 = *(v0 + 728);
    v72 = *(v0 + 664);
    v73 = sub_1000138B0();
    *(v0 + 888) = v73;
    v74 = *(v73 - 8);
    v75 = v74;
    *(v0 + 896) = v74;
    *(v0 + 904) = *(v74 + 64);
    *(v0 + 912) = swift_task_alloc();
    v76 = *(v69 + *(v37 + 48));
    *(v0 + 920) = v76;
    (*(v75 + 32))();
    v77 = *(v71 + 104);
    *(v0 + 928) = v77;
    *(v0 + 936) = (v71 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v77(v70, v68, v72);
    sub_1000138C0();
    v78 = sub_100013AE0();
    *(v0 + 944) = v78;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100009B9C;
    v79 = swift_continuation_init();
    *(v0 + 136) = sub_100003C0C(&qword_10001C390, &qword_100014F50);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000C9BC;
    *(v0 + 104) = &unk_100019210;
    *(v0 + 112) = v79;
    [v92 reportSiriInstrumentationEvent:v76 forBundleID:v78 completion:?];
    v18 = v0 + 16;

    return _swift_continuation_await(v18);
  }

  v38 = *(v0 + 864);
  v39 = *(v0 + 856);
  v40 = *(v0 + 840);
  v41 = *(v0 + 792);
  v42 = *(v0 + 752);

  sub_100013C60(24);

  *(v0 + 608) = v38;
  v95._countAndFlagsBits = sub_100013D60();
  sub_100013B50(v95);

  v43._countAndFlagsBits = 0xD000000000000016;
  v44._object = 0x8000000100015730;
  v43._object = 0x8000000100015820;
  v44._countAndFlagsBits = 0xD00000000000007ALL;
  v45._countAndFlagsBits = 0x286567616B636170;
  v45._object = 0xEE00293A68746977;
  InternalLogger.info(_:fromFile:fromFunction:)(v43, v44, v45);

  v46 = *(v42 + 24);
  *(v0 + 1016) = v46;
  if (v46 >> 60 == 15)
  {
    v47 = *(v0 + 624);
    if (v47 >= 1)
    {
      v48 = *(v0 + 792);
      sub_100013C60(49);

      *(v0 + 600) = v47;
      v96._countAndFlagsBits = sub_100013D60();
      sub_100013B50(v96);

      v49._countAndFlagsBits = 0xD00000000000002FLL;
      v50._object = 0x8000000100015730;
      v49._object = 0x8000000100015840;
      v50._countAndFlagsBits = 0xD00000000000007ALL;
      v51._countAndFlagsBits = 0x286567616B636170;
      v51._object = 0xEE00293A68746977;
      InternalLogger.fault(_:fromFile:fromFunction:)(v49, v50, v51);
    }

    v52 = *(v0 + 832);
    v53 = *(v0 + 824);
    v54 = *(v0 + 808);
    v55 = *(v0 + 784);
    v56 = *(v0 + 752);
    v57 = *(v0 + 744);
    v58 = sub_100013A00();
    *v91 = *(v0 + 728);
    v59 = objc_allocWithZone(v58);
    v60 = sub_1000139F0();

    v61 = *(v55 + 24);
    v62 = *(v55 + 32);

    sub_1000111E4(v61);

    v63 = *(v0 + 712);
    v64 = *(v0 + 688);
    v65 = *(v0 + 680);

    v66 = *(v0 + 8);

    return v66(v60);
  }

  else
  {
    v80 = *(v0 + 792);
    v81 = *(*(v0 + 752) + 16);
    *(v0 + 1024) = v81;
    sub_100011698(v81, v46);
    v82._object = 0x8000000100015870;
    v83._object = 0x8000000100015730;
    v82._countAndFlagsBits = 0xD000000000000016;
    v83._countAndFlagsBits = 0xD00000000000007ALL;
    v84._countAndFlagsBits = 0x286567616B636170;
    v84._object = 0xEE00293A68746977;
    InternalLogger.info(_:fromFile:fromFunction:)(v82, v83, v84);
    v85 = *(&async function pointer to dispatch thunk of PluginStateService.save(_:) + 1);
    v93 = (&async function pointer to dispatch thunk of PluginStateService.save(_:) + async function pointer to dispatch thunk of PluginStateService.save(_:));
    v86 = swift_task_alloc();
    *(v0 + 1032) = v86;
    *v86 = v0;
    v86[1] = sub_10000B814;
    v87 = *(v0 + 744);

    return v93(v81, v46);
  }
}

uint64_t sub_10000C62C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x726F727245666266;
    }

    else
    {
      v3 = 0xD00000000000001ELL;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0x80000001000152E0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000015;
    v4 = 0x8000000100015310;
  }

  else if (a1 == 3)
  {
    v3 = 0x67617373654D6F6ELL;
    v4 = 0xEA00000000007365;
  }

  else
  {
    v3 = 0x6F69737365536F6ELL;
    v4 = 0xEF646E756F46736ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x726F727245666266;
    }

    else
    {
      v6 = 0xD00000000000001ELL;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0x80000001000152E0;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x8000000100015310;
    if (v3 != 0xD000000000000015)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEA00000000007365;
    if (v3 != 0x67617373654D6F6ELL)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEF646E756F46736ELL;
    if (v3 != 0x6F69737365536F6ELL)
    {
LABEL_31:
      v7 = sub_100013D70();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_10000C800(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006465;
  v3 = 0x6C706D6153746F6ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6C706D6153746F6ELL;
    }

    else
    {
      v5 = 0x64657070696B73;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000006465;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v4)
    {
      v6 = 0x80000001000152B0;
    }

    else
    {
      v6 = 0x8000000100015290;
    }
  }

  if (a2 != 2)
  {
    v3 = 0x64657070696B73;
    v2 = 0xE700000000000000;
  }

  v7 = 0xD000000000000011;
  v8 = 0x80000001000152B0;
  if (a2)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v8 = 0x8000000100015290;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100013D70();
  }

  return v11 & 1;
}

uint64_t sub_10000C934()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1000063BC(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C97C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C9BC(uint64_t a1, void *a2)
{
  v3 = sub_1000049E8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100003C0C(&qword_10001C2F0, &qword_100014798);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

void sub_10000CA68(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10000CB5C()
{
  sub_1000139C0();
  swift_projectBox();
  swift_beginAccess();
  sub_10000CBFC();
  swift_endAccess();
  swift_beginAccess();
  sub_1000139A0();
  swift_endAccess();
  return 1;
}

void sub_10000CBFC()
{
  if (*v0 == -1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v0;
  v1 = 0xD000000000000020;
  ++*v0;
  if (!SDRDiagnosticReporter || (sub_100013B10(), has_internal_content = os_variant_has_internal_content(), , !has_internal_content))
  {
    if (qword_10001C1D8 == -1)
    {
LABEL_9:
      v17 = type metadata accessor for InternalLogger();
      sub_100003EA0(v17, qword_10001C4F8);
      v18._countAndFlagsBits = 0x65737365636F7270;
      v18._object = 0xEF293A7476652864;
      v19._countAndFlagsBits = v1 + 13;
      v19._object = 0x8000000100015950;
      v20._countAndFlagsBits = v1 + 90;
      v20._object = 0x8000000100015730;
      InternalLogger.debug(_:fromFile:fromFunction:)(v19, v20, v18);
      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_9;
  }

  v4 = sub_1000138B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100013950();
  if (!v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = v9;
  sub_1000139D0();

  v11 = sub_100013940();
  if (!v11)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 getAnyEventType];

  if (v13 == 17)
  {
    v14 = *(v2 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v2 + 2);
    v16 = 1;
  }

  else
  {
    if (*(*(v2 + 2) + 16))
    {
      sub_10000FB60(v8);
      if (v21)
      {
        (*(v5 + 8))(v8, v4);
        return;
      }

      v22 = *(v2 + 2);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v2 + 2);
    v16 = 0;
  }

  sub_100010BF8(v16, v8, isUniquelyReferenced_nonNull_native);
  (*(v5 + 8))(v8, v4);
  *(v2 + 2) = v24;
}

uint64_t sub_10000CEA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000139C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  swift_beginAccess();
  v13 = *(a4 + 16);
  v14 = *(a4 + 24);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_100011684(a1, a2);
  sub_1000116EC(v13, v14);
  if (qword_10001C1D8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for InternalLogger();
  sub_100003EA0(v15, qword_10001C4F8);
  v20[2] = 0;
  v20[3] = 0xE000000000000000;
  sub_100013C60(17);

  v21._countAndFlagsBits = 0x736567617373654DLL;
  v21._object = 0xEF203A6461657220;
  swift_beginAccess();
  (*(v8 + 16))(v11, v12, v7);
  v16 = sub_1000139B0();
  (*(v8 + 8))(v11, v7);
  v20[1] = v16;
  v22._countAndFlagsBits = sub_100013D60();
  sub_100013B50(v22);

  v17._countAndFlagsBits = 0x286567616B636170;
  v17._object = 0xEE00293A68746977;
  v18._object = 0x8000000100015730;
  v18._countAndFlagsBits = 0xD00000000000007ALL;
  InternalLogger.info(_:fromFile:fromFunction:)(v21, v18, v17);
}

uint64_t sub_10000D110(uint64_t a1)
{
  v2 = sub_100013960();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v81 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &_swiftEmptyDictionarySingleton;
  v91 = &_swiftEmptyDictionarySingleton;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = sub_100003C0C(&qword_10001C4C0, &qword_100015140);
  v68 = &v66;
  v87 = v11;
  v88 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v77 = &v66 - v12;
  v13 = (v8 + 63) >> 6;
  v75 = v3 + 88;
  v76 = v3 + 16;
  v86 = enum case for EnvelopeResult.included(_:);
  v71 = (v3 + 96);
  v70 = enum case for EnvelopeResult.notIncluded(_:);
  v79 = v3;
  v80 = a1;
  v73 = (v3 + 8);

  v15 = 0;
  v72 = v2;
  v78 = v7;
  v74 = v13;
  while (v10)
  {
    v90 = v6;
LABEL_15:
    v29 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v30 = v29 | (v15 << 6);
    v31 = v80;
    v32 = *(v80 + 48);
    v33 = sub_1000138B0();
    v84 = *(v33 - 8);
    v83 = *(v84 + 72);
    v34 = *(v84 + 16);
    v35 = v77;
    v85 = v33;
    v34(v77, v32 + v83 * v30);
    v36 = *(v31 + 56);
    v37 = v79;
    v38 = v87;
    v39 = *(v79 + 16);
    v40 = v39(v35 + *(v87 + 48), v36 + *(v79 + 72) * v30, v2);
    v89 = &v66;
    __chkstk_darwin(v40);
    v42 = &v66 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100012434(v35, v42, &qword_10001C4C0, &qword_100015140);
    v43 = &v42[*(v38 + 48)];
    v44 = v81;
    v39(v81, v43, v2);
    result = (*(v37 + 88))(v44, v2);
    v45 = result;
    if (result == v86)
    {
      result = (*v71)(v44, v2);
      v46 = *v44;
      v82 = *(v44 + 2);
      v6 = v90;
      if (v46)
      {
        v69 = v45;
        v48 = [v46 payload];
        v7 = v78;
        v47 = v85;
        if (v48)
        {
          v49 = v48;
          v67 = sub_100013860();
          v51 = v50;

          v52 = v51;
          v53 = v51 >> 62;
          if ((v51 >> 62) <= 1)
          {
            v45 = v69;
            if (v53)
            {
              v61 = v67;
              v62 = HIDWORD(v67);
              result = sub_1000063BC(v67, v52);
              if (__OFSUB__(v62, v61))
              {
                goto LABEL_49;
              }

              v46 = v62 - v61;
            }

            else
            {
              result = sub_1000063BC(v67, v51);
              v46 = BYTE6(v51);
            }

            goto LABEL_43;
          }

          if (v53 == 2)
          {
            v59 = *(v67 + 16);
            v58 = *(v67 + 24);
            result = sub_1000063BC(v67, v51);
            v60 = __OFSUB__(v58, v59);
            v46 = v58 - v59;
            if (v60)
            {
              goto LABEL_48;
            }

            goto LABEL_42;
          }

          result = sub_1000063BC(v67, v51);
        }

        else
        {
        }

        v46 = 0;
LABEL_42:
        v45 = v69;
        goto LABEL_43;
      }

      v7 = v78;
      v47 = v85;
    }

    else
    {
      v7 = v78;
      v6 = v90;
      if (result != v70)
      {
        (*v73)(v81, v2);
        result = sub_1000123D4(v42, &qword_10001C4C0, &qword_100015140);
        goto LABEL_8;
      }

      v82 = 0;
      v46 = 0;
      v47 = v85;
    }

LABEL_43:
    v90 = &v66;
    __chkstk_darwin(result);
    v64 = &v66 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100012434(v42, v64, &qword_10001C4C0, &qword_100015140);
    v65 = v6[2];
    if (v6[3] <= v65)
    {
      sub_10000F22C(v65 + 1, 1);
    }

    v6 = v91;
    v16 = v91[5];
    sub_1000122B8(&qword_10001C4A0);
    result = sub_100013AA0();
    v17 = (v6 + 8);
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~v6[(v19 >> 6) + 8]) == 0)
    {
      v54 = 0;
      v55 = (63 - v18) >> 6;
      while (++v20 != v55 || (v54 & 1) == 0)
      {
        v56 = v20 == v55;
        if (v20 == v55)
        {
          v20 = 0;
        }

        v54 |= v56;
        v57 = *&v17[8 * v20];
        if (v57 != -1)
        {
          v21 = v47;
          v22 = v46;
          v23 = __clz(__rbit64(~v57)) + (v20 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_47;
    }

    v21 = v47;
    v22 = v46;
    v23 = __clz(__rbit64((-1 << v19) & ~v6[(v19 >> 6) + 8])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v24 = v45 != v86;
    v25 = *(v87 + 48);
    *&v17[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
    (*(v84 + 32))(v6[6] + v23 * v83, v64, v21);
    v26 = v6[7] + 24 * v23;
    *v26 = v82;
    *(v26 + 8) = v22;
    *(v26 + 16) = v24;
    ++v6[2];
    v27 = &v64[v25];
    v2 = v72;
    result = (*v73)(v27, v72);
LABEL_8:
    v13 = v74;
  }

  while (1)
  {
    v28 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v28 >= v13)
    {

      return v6;
    }

    v10 = *(v7 + 8 * v28);
    ++v15;
    if (v10)
    {
      v90 = v6;
      v15 = v28;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_10000D808(uint64_t a1)
{
  v2 = &_swiftEmptyDictionarySingleton;
  v49 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v38 = &v38;
  v42 = sub_100003C0C(&qword_10001C4D0, &qword_100015150);
  v41 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v40 = &v38 - v7;
  v8 = (v4 + 63) >> 6;
  v43 = a1;

  v10 = 0;
  v39 = v3;
  while (v6)
  {
LABEL_13:
    v20 = __clz(__rbit64(v6)) | (v10 << 6);
    v21 = v43;
    v22 = *(v43 + 48);
    v23 = sub_1000138B0();
    v48 = *(v23 - 8);
    v46 = *(v48 + 72);
    v24 = v40;
    v25 = (*(v48 + 16))(v40, v22 + v46 * v20, v23);
    v47 = &v38;
    v26 = *(v21 + 56) + 24 * v20;
    v28 = *v26;
    v27 = *(v26 + 8);
    v29 = *(v26 + 16);
    v30 = v24 + *(v42 + 48);
    *v30 = v28;
    *(v30 + 8) = v27;
    v45 = v27;
    v44 = v29;
    *(v30 + 16) = v29;
    __chkstk_darwin(v25);
    v32 = &v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100012434(v24, v32, &qword_10001C4D0, &qword_100015150);
    v33 = v2[2];
    if (v2[3] <= v33)
    {
      sub_10000EA84(v33 + 1, 1);
    }

    v2 = v49;
    v11 = v49[5];
    sub_1000122B8(&qword_10001C4A0);
    result = sub_100013AA0();
    v12 = (v2 + 8);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~v2[(v14 >> 6) + 8]) == 0)
    {
      v34 = 0;
      v35 = (63 - v13) >> 6;
      while (++v15 != v35 || (v34 & 1) == 0)
      {
        v36 = v15 == v35;
        if (v15 == v35)
        {
          v15 = 0;
        }

        v34 |= v36;
        v37 = *&v12[8 * v15];
        if (v37 != -1)
        {
          v16 = __clz(__rbit64(~v37)) + (v15 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~v2[(v14 >> 6) + 8])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v6 &= v6 - 1;
    *&v12[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    result = (*(v48 + 32))(v2[6] + v16 * v46, v32, v23);
    v17 = v2[7] + 32 * v16;
    v18 = v45;
    *v17 = v28;
    *(v17 + 8) = v18;
    *(v17 + 16) = v44;
    *(v17 + 24) = 0;
    ++v2[2];
    v3 = v39;
  }

  while (1)
  {
    v19 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v19 >= v8)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v19);
    ++v10;
    if (v6)
    {
      v10 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10000DBC8(uint64_t a1, uint64_t a2)
{
  v54[0] = a2;
  v3 = sub_100013960();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v63 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = &_swiftEmptyDictionarySingleton;
  v73 = &_swiftEmptyDictionarySingleton;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = sub_100003C0C(&qword_10001C4C0, &qword_100015140);
  v54[1] = v54;
  v70 = v11;
  v71 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v62 = v54 - v12;
  v13 = (v8 + 63) >> 6;
  v60 = v4 + 88;
  v61 = v4 + 16;
  v59 = enum case for EnvelopeResult.included(_:);
  v64 = v4;
  v55 = (v4 + 96);
  v56 = (v4 + 8);
  v69 = a1;

  v15 = 0;
  v57 = v13;
  v58 = a1 + 64;
  while (v10)
  {
LABEL_10:
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v18 = v17 | (v15 << 6);
    v19 = v69;
    v20 = *(v69 + 48);
    v21 = sub_1000138B0();
    v66 = *(v21 - 8);
    v65 = *(v66 + 72);
    v22 = *(v66 + 16);
    v23 = v62;
    v67 = v21;
    v22(v62, v20 + v65 * v18);
    v24 = *(v19 + 56);
    v25 = v64;
    v26 = v70;
    v27 = *(v64 + 16);
    v28 = v27(v23 + *(v70 + 48), v24 + *(v64 + 72) * v18, v3);
    v72 = v54;
    __chkstk_darwin(v28);
    v30 = v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100012434(v23, v30, &qword_10001C4C0, &qword_100015140);
    v31 = &v30[*(v26 + 48)];
    v32 = v63;
    v27(v63, v31, v3);
    v33 = (*(v25 + 88))(v32, v3);
    if (v33 != v59)
    {
      (*v56)(v32, v3);
      v7 = v58;
      goto LABEL_19;
    }

    result = (*v55)(v32, v3);
    v34 = *v32;
    if (*v32)
    {
      __chkstk_darwin(result);
      v36 = v54 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_100012434(v30, v36, &qword_10001C4C0, &qword_100015140);
      v37 = v68[2];
      if (v68[3] <= v37)
      {
        sub_10000EE84(v37 + 1, 1);
      }

      v38 = v73;
      v39 = v73[5];
      sub_1000122B8(&qword_10001C4A0);
      v40 = v67;
      result = sub_100013AA0();
      v41 = v38 + 8;
      v68 = v38;
      v42 = -1 << *(v38 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~v38[(v43 >> 6) + 8]) == 0)
      {
        v48 = 0;
        v49 = (63 - v42) >> 6;
        while (++v44 != v49 || (v48 & 1) == 0)
        {
          v50 = v44 == v49;
          if (v44 == v49)
          {
            v44 = 0;
          }

          v48 |= v50;
          v51 = v41[v44];
          if (v51 != -1)
          {
            v45 = v40;
            v46 = v34;
            v47 = __clz(__rbit64(~v51)) + (v44 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_31;
      }

      v45 = v40;
      v46 = v34;
      v47 = __clz(__rbit64((-1 << v43) & ~v38[(v43 >> 6) + 8])) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      v52 = *(v70 + 48);
      *(v41 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v53 = v68;
      (*(v66 + 32))(v68[6] + v47 * v65, v36, v45);
      *(v53[7] + 8 * v47) = v46;
      ++v53[2];
      result = (*v56)(&v36[v52], v3);
      v13 = v57;
      v7 = v58;
    }

    else
    {
      v7 = v58;
      if (__OFADD__(*v54[0], 1))
      {
        goto LABEL_32;
      }

      ++*v54[0];
LABEL_19:
      result = sub_1000123D4(v30, &qword_10001C4C0, &qword_100015140);
      v13 = v57;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return v68;
    }

    v10 = *(v7 + 8 * v16);
    ++v15;
    if (v10)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void (*sub_10000E18C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_1000138B0();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10000F990(v3);
  return sub_10000E2A4;
}

void sub_10000E2A4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_10000E31C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10000FB60(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v19 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000100F8();
    v9 = v19;
  }

  v10 = *(v9 + 48);
  v11 = sub_1000138B0();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(v9 + 56) + 32 * v6;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = *(v12 + 17);
  v17 = *(v12 + 24);
  sub_10000FC1C(v6, v9);
  *v2 = v9;
  return v13;
}

Swift::Int sub_10000E434()
{
  v1 = *v0;
  sub_100013DF0();
  sub_100013B20();

  return sub_100013E10();
}

uint64_t sub_10000E52C()
{
  *v0;
  sub_100013B20();
}

Swift::Int sub_10000E610()
{
  v1 = *v0;
  sub_100013DF0();
  sub_100013B20();

  return sub_100013E10();
}

uint64_t sub_10000E704@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001226C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000E734(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x726F727245666266;
  v5 = 0x8000000100015310;
  v6 = 0xEA00000000007365;
  v7 = 0x67617373654D6F6ELL;
  if (v2 != 3)
  {
    v7 = 0x6F69737365536F6ELL;
    v6 = 0xEF646E756F46736ELL;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v5 = v6;
  }

  if (!*v1)
  {
    v4 = 0xD00000000000001ELL;
    v3 = 0x80000001000152E0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

void sub_10000E7E8(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  sub_100013AF0();
  sub_100013C40();
  if (!*(a1 + 16) || (v2 = sub_10000FBD8(v12), (v3 & 1) == 0))
  {
    sub_100012324(v12);
LABEL_11:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_12;
  }

  sub_100004924(*(a1 + 56) + 32 * v2, &v13);
  sub_100012324(v12);
  if (!*(&v14 + 1))
  {
LABEL_12:
    sub_1000123D4(&v13, &qword_10001C4B8, &qword_100015138);
    goto LABEL_13;
  }

  if (swift_dynamicCast() & 1) != 0 && (v12[0])
  {
    if (qword_10001C1D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for InternalLogger();
    sub_100003EA0(v4, qword_10001C4F8);
    v5._countAndFlagsBits = 0xD000000000000013;
    v5._object = 0x8000000100015A50;
    v6._countAndFlagsBits = 0xD00000000000007ALL;
    v6._object = 0x8000000100015730;
    v7._object = 0x8000000100015980;
    v7._countAndFlagsBits = 0xD000000000000020;
    InternalLogger.info(_:fromFile:fromFunction:)(v5, v6, v7);
    return;
  }

LABEL_13:
  if (qword_10001C1D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for InternalLogger();
  sub_100003EA0(v8, qword_10001C4F8);
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  v9._object = 0x8000000100015A30;
  v10._countAndFlagsBits = 0xD00000000000007ALL;
  v10._object = 0x8000000100015730;
  v11._object = 0x8000000100015980;
  v11._countAndFlagsBits = 0xD000000000000020;
  InternalLogger.error(_:fromFile:fromFunction:)(v9, v10, v11);
}

uint64_t sub_10000E9F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_100013A90();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_10000EA84(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003C0C(&qword_10001C4A8, &qword_100015130);
  v55 = a2;
  result = sub_100013CD0();
  v8 = result;
  if (*(v5 + 16))
  {
    v53 = v3;
    v54 = v5;
    v9 = 0;
    v12 = *(v5 + 64);
    v11 = (v5 + 64);
    v10 = v12;
    v13 = 1 << *(v11 - 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v10;
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v62 = (v15 - 1) & v15;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = sub_1000138B0();
      v61 = &v52;
      v26 = *(v25 - 8);
      v27 = *(v26 + 64);
      __chkstk_darwin(v25);
      v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = v54;
      v31 = *(v54 + 48);
      v60 = *(v32 + 72);
      v33 = v31 + v60 * v24;
      if (v55)
      {
        (*(v26 + 32))(&v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v25);
        v34 = *(v30 + 56) + 32 * v24;
        v35 = *(v34 + 8);
        v56 = *v34;
        v59 = v35;
        v36 = *(v34 + 16);
        v57 = *(v34 + 17);
        v58 = v36;
        v37 = *(v34 + 24);
      }

      else
      {
        (*(v26 + 16))(&v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v25);
        v38 = *(v30 + 56) + 32 * v24;
        v39 = *(v38 + 8);
        v56 = *v38;
        v59 = v39;
        v40 = *(v38 + 16);
        v57 = *(v38 + 17);
        v58 = v40;
        v37 = *(v38 + 24);
        v41 = v37;
      }

      v42 = *(v8 + 40);
      sub_1000122B8(&qword_10001C4A0);
      result = sub_100013AA0();
      v43 = -1 << *(v8 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v17 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v17 + 8 * v45);
          if (v49 != -1)
          {
            v18 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v44) & ~*(v17 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = (*(v26 + 32))(*(v8 + 48) + v60 * v18, v29, v25);
      v19 = *(v8 + 56) + 32 * v18;
      v20 = v59;
      *v19 = v56;
      *(v19 + 8) = v20;
      LOBYTE(v20) = v57;
      *(v19 + 16) = v58;
      *(v19 + 17) = v20;
      *(v19 + 24) = v37;
      ++*(v8 + 16);
      v15 = v62;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v16)
      {
        break;
      }

      v23 = v11[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v62 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v55 & 1) == 0)
    {

      v3 = v53;
      goto LABEL_37;
    }

    v3 = v53;
    v50 = v54;
    v51 = 1 << *(v54 + 32);
    if (v51 >= 64)
    {
      bzero(v11, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v51;
    }

    *(v50 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_10000EE84(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003C0C(&qword_10001C4C8, &qword_100015148);
  v41 = a2;
  result = sub_100013CD0();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
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
      v17 = __clz(__rbit64(v13));
      v44 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = sub_1000138B0();
      v43 = &v39;
      v22 = *(v21 - 8);
      v23 = *(v22 + 64);
      __chkstk_darwin(v21);
      v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = *(v5 + 48);
      v42 = *(v27 + 72);
      v28 = v26 + v42 * v20;
      if (v41)
      {
        (*(v22 + 32))(&v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v21);
        v29 = *(*(v5 + 56) + 8 * v20);
      }

      else
      {
        (*(v22 + 16))(&v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v21);
        v29 = *(*(v5 + 56) + 8 * v20);
      }

      v30 = *(v8 + 40);
      sub_1000122B8(&qword_10001C4A0);
      result = sub_100013AA0();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = (*(v22 + 32))(*(v8 + 48) + v42 * v16, v25, v21);
      *(*(v8 + 56) + 8 * v16) = v29;
      ++*(v8 + 16);
      v13 = v44;
      v5 = v40;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v44 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10000F22C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003C0C(&qword_10001C4D8, &qword_100015158);
  v44 = a2;
  result = sub_100013CD0();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
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
    v50 = v5;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = sub_1000138B0();
      v48 = &v43;
      v24 = *(v23 - 8);
      v25 = *(v24 + 64);
      __chkstk_darwin(v23);
      v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = *(v5 + 48);
      v30 = *(v29 + 72);
      v31 = v28 + v30 * v22;
      if (v44)
      {
        (*(v24 + 32))(&v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v23);
      }

      else
      {
        (*(v24 + 16))(&v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v23);
      }

      v32 = *(v50 + 56) + 24 * v22;
      v47 = *(v32 + 16);
      v33 = *(v32 + 8);
      v45 = *v32;
      v46 = v33;
      v34 = *(v8 + 40);
      sub_1000122B8(&qword_10001C4A0);
      result = sub_100013AA0();
      v35 = -1 << *(v8 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v15 + 8 * v37);
          if (v41 != -1)
          {
            v16 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = (*(v24 + 32))(*(v8 + 48) + v30 * v16, v27, v23);
      v17 = *(v8 + 56) + 24 * v16;
      v18 = v46;
      *v17 = v45;
      *(v17 + 8) = v18;
      *(v17 + 16) = v47;
      ++*(v8 + 16);
      v13 = v49;
      v5 = v50;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v49 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v10, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10000F5F0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003C0C(&qword_10001C4E0, &qword_100015160);
  v41 = a2;
  result = sub_100013CD0();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
    v45 = v5;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v44 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = sub_1000138B0();
      v43 = &v39;
      v22 = *(v21 - 8);
      v23 = *(v22 + 64);
      __chkstk_darwin(v21);
      v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = *(v5 + 48);
      v28 = *(v27 + 72);
      v29 = v26 + v28 * v20;
      if (v41)
      {
        (*(v22 + 32))(&v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v21);
      }

      else
      {
        (*(v22 + 16))(&v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v21);
      }

      v42 = *(*(v45 + 56) + v20);
      v30 = *(v8 + 40);
      sub_1000122B8(&qword_10001C4A0);
      result = sub_100013AA0();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = (*(v22 + 32))(*(v8 + 48) + v28 * v16, v25, v21);
      *(*(v8 + 56) + v16) = v42;
      ++*(v8 + 16);
      v13 = v44;
      v5 = v45;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v44 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void (*sub_10000F990(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = sub_1000138B0();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v4[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v4[10] = v10;
  (*(v9 + 16))();
  v4[11] = sub_100010A28(v4);
  v4[12] = sub_100010610(v4 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_10000FAC8;
}

void sub_10000FAC8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

unint64_t sub_10000FB60(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000138B0();
  sub_1000122B8(&qword_10001C4A0);
  v5 = sub_100013AA0();

  return sub_10000FEBC(a1, v5);
}

unint64_t sub_10000FBD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100013C20(*(v2 + 40));

  return sub_100010030(a1, v4);
}

unint64_t sub_10000FC1C(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100013C10() + 1) & ~v5;
    result = sub_1000138B0();
    v39 = result;
    v9 = *(result - 8);
    v10 = v9[2];
    v36 = v9 + 2;
    v37 = v10;
    v11 = v9[8];
    v12 = v9[9];
    v34 = v12;
    v35 = v11;
    v33 = (v9 + 1);
    v38 = v4;
    do
    {
      __chkstk_darwin(result);
      v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = v12 * v6;
      v16 = *(v2 + 48) + v12 * v6;
      v17 = v39;
      v37(v14, v16, v39);
      v18 = v2;
      v19 = *(v2 + 40);
      sub_1000122B8(&qword_10001C4A0);
      v20 = sub_100013AA0();
      result = (*v33)(v14, v17);
      v21 = v20 & v7;
      if (v3 >= v8)
      {
        if (v21 >= v8 && v3 >= v21)
        {
LABEL_15:
          v2 = v18;
          v24 = *(v18 + 48);
          v12 = v34;
          result = v24 + v34 * v3;
          v4 = v38;
          if (v34 * v3 < v15 || result >= v24 + v15 + v34)
          {
            result = swift_arrayInitWithTakeFrontToBack();
          }

          else if (v34 * v3 != v15)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }

          v25 = *(v18 + 56);
          v26 = (v25 + 32 * v3);
          v27 = (v25 + 32 * v6);
          if (v3 != v6 || v26 >= v27 + 2)
          {
            v28 = v27[1];
            *v26 = *v27;
            v26[1] = v28;
            v3 = v6;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v8 || v3 >= v21)
      {
        goto LABEL_15;
      }

      v4 = v38;
      v2 = v18;
      v12 = v34;
LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v29 = *(v2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v31;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t sub_10000FEBC(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v15 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    v5 = sub_1000138B0();
    v6 = v5;
    v7 = *(v5 - 8);
    v8 = v7[2];
    v9 = v7[8];
    v10 = v7[9];
    v11 = (v7 + 1);
    do
    {
      __chkstk_darwin(v5);
      v8(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *(v17 + 48) + v10 * v4, v6);
      sub_1000122B8(&qword_10001C4B0);
      v12 = sub_100013AD0();
      v5 = (*v11)(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v12)
      {
        break;
      }

      v4 = (v4 + 1) & v14;
    }

    while (((*(v15 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100010030(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100012378(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100013C30();
      sub_100012324(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_1000100F8()
{
  v1 = v0;
  sub_100003C0C(&qword_10001C4A8, &qword_100015130);
  v2 = *v0;
  v3 = sub_100013CC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = (v2 + 64);
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, v33, 8 * v6);
    }

    v8 = 0;
    v9 = *(v2 + 16);
    v34 = v2;
    v35 = v4;
    *(v4 + 16) = v9;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v4;
    if (v12)
    {
      do
      {
        v15 = __clz(__rbit64(v12));
        v40 = (v12 - 1) & v12;
LABEL_17:
        v18 = v15 | (v8 << 6);
        v19 = sub_1000138B0();
        v39 = &v32;
        v20 = *(v19 - 8);
        v21 = *(v20 + 64);
        __chkstk_darwin(v19);
        v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = *(v24 + 72) * v18;
        (*(v20 + 16))(v23, *(v2 + 48) + v25, v19);
        v18 *= 32;
        v26 = *(v2 + 56) + v18;
        v27 = *v26;
        v38 = *(v26 + 8);
        v28 = *(v26 + 16);
        v36 = *(v26 + 17);
        v37 = v28;
        v29 = *(v26 + 24);
        (*(v20 + 32))(*(v14 + 48) + v25, v23, v19);
        v30 = *(v14 + 56) + v18;
        v31 = v38;
        *v30 = v27;
        *(v30 + 8) = v31;
        LOBYTE(v31) = v36;
        *(v30 + 16) = v37;
        *(v30 + 17) = v31;
        *(v30 + 24) = v29;
        result = v29;
        v2 = v34;
        v12 = v40;
      }

      while (v40);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v32;
        v4 = v35;
        goto LABEL_21;
      }

      v17 = *(v33 + v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
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

void *sub_1000103A4()
{
  v1 = v0;
  sub_100003C0C(&qword_10001C4E0, &qword_100015160);
  v2 = *v0;
  v3 = sub_100013CC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = (v2 + 64);
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, v29, 8 * v6);
    }

    v8 = 0;
    v9 = *(v2 + 16);
    v30 = v4;
    *(v4 + 16) = v9;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v4;
    if (v12)
    {
      do
      {
        v15 = __clz(__rbit64(v12));
        v32 = (v12 - 1) & v12;
LABEL_17:
        v18 = v15 | (v8 << 6);
        v19 = sub_1000138B0();
        v31 = &v27;
        v20 = *(v19 - 8);
        v21 = *(v20 + 64);
        __chkstk_darwin(v19);
        v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = *(v24 + 72) * v18;
        (*(v20 + 16))(v23, *(v2 + 48) + v25, v19);
        v26 = *(*(v2 + 56) + v18);
        result = (*(v20 + 32))(*(v14 + 48) + v25, v23, v19);
        *(*(v14 + 56) + v18) = v26;
        v12 = v32;
      }

      while (v32);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        v4 = v30;
        goto LABEL_21;
      }

      v17 = *(v29 + v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
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

void (*sub_100010610(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 32) = a2;
  *(v8 + 40) = v3;
  v10 = *v3;
  v11 = sub_10000FB60(a2);
  *(v9 + 56) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_19;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a3 & 1) != 0)
  {
    goto LABEL_11;
  }

  if (v18 < v16 || (a3 & 1) != 0)
  {
    sub_10000EA84(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_10000FB60(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_19:
    sub_1000138B0();
    result = sub_100013D80();
    __break(1u);
    return result;
  }

  v19 = v11;
  sub_1000100F8();
  v11 = v19;
LABEL_11:
  *(v9 + 48) = v11;
  if (v17)
  {
    v22 = *(*v4 + 56) + 32 * v11;
    v23 = *v22;
    v24 = *(v22 + 16);
    v25 = *(v22 + 17);
    v26 = *(v22 + 24);
    v27 = v25 == 0;
    v28 = 256;
    if (v27)
    {
      v28 = 0;
    }

    v29 = v28 | v24;
  }

  else
  {
    v29 = 0;
    v23 = 0uLL;
    v26 = 1;
  }

  *v9 = v23;
  *(v9 + 16) = v29;
  *(v9 + 24) = v26;
  return sub_100010784;
}

void sub_100010784(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = *(*a1 + 56);
  if (a2)
  {
    if (v6 != 1)
    {
      v8 = v2[6];
      v9 = *v2[5];
      if (((*a1)[7] & 1) == 0)
      {
        v10 = v2[4];
        v11 = sub_1000138B0();
        v12 = *(*(v11 - 8) + 64);
        __chkstk_darwin(v11);
        v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v15 + 16))(v14, v10);
        v16 = v5 & 1;
        v32[0] = v5 & 1;
LABEL_11:
        sub_100010A5C(v8, v14, v3, v4, v5 & 0x100 | v16, v6, v9);
        goto LABEL_12;
      }

LABEL_9:
      v22 = v9[7] + 32 * v8;
      *v22 = v3;
      *(v22 + 8) = v4;
      *(v22 + 16) = v5 & 1;
      *(v22 + 17) = BYTE1(v5) & 1;
      *(v22 + 24) = v6;
      goto LABEL_12;
    }
  }

  else if (v6 != 1)
  {
    v8 = v2[6];
    v9 = *v2[5];
    if (((*a1)[7] & 1) == 0)
    {
      v23 = v2[4];
      v24 = sub_1000138B0();
      v25 = *(*(v24 - 8) + 64);
      __chkstk_darwin(v24);
      v14 = &v32[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v27 + 16))(v14, v23);
      v16 = v5 & 1;
      v32[8] = v5 & 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ((*a1)[7])
  {
    v17 = v2[5];
    v18 = v2[6];
    v19 = *v17;
    v20 = *(*v17 + 48);
    v21 = sub_1000138B0();
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v18, v21);
    sub_10000FC1C(v18, v19);
  }

LABEL_12:
  v28 = *v2;
  v29 = v2[1];
  v30 = v2[2];
  v31 = v2[3];
  sub_1000122FC(v3, v4, v5, v6);
  sub_100011FB4(v28, v29, v30, v31);
  free(v2);
}

uint64_t (*sub_100010A28(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100010A50;
}

uint64_t sub_100010A5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = sub_1000138B0();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = a7[7] + 32 * a1;
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = a5 & 1;
  *(v17 + 17) = HIBYTE(a5) & 1;
  *(v17 + 24) = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_100010B40(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000138B0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_100010BF8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10000FB60(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      *(v16[7] + v10) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v15 >= result && (a3 & 1) == 0)
  {
    result = sub_1000103A4();
    goto LABEL_7;
  }

  sub_10000F5F0(result, a3 & 1);
  v17 = *v4;
  result = sub_10000FB60(a2);
  if ((v14 & 1) != (v18 & 1))
  {
LABEL_14:
    sub_1000138B0();
    result = sub_100013D80();
    __break(1u);
    return result;
  }

  v10 = result;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  v19 = sub_1000138B0();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, a2);
  return sub_100010B40(v10, v22, a1 & 1, v16);
}

unint64_t sub_100010D98(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100003C0C(&qword_10001C4A8, &qword_100015130);
    v3 = sub_100013CE0();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = sub_100003C0C(&qword_10001C4F0, &qword_100015170);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v9 = &v25 - v8;
  if (!v2)
  {
    return v3;
  }

  v10 = &v9[*(v6 + 48)];
  v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = *(v7 + 72);

  while (1)
  {
    sub_100012504(v11, v9, &qword_10001C4F0, &qword_100015170);
    result = sub_10000FB60(v9);
    if (v14)
    {
      break;
    }

    v15 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v16 = v3[6];
    v17 = sub_1000138B0();
    result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v9, v17);
    v18 = v3[7] + 32 * v15;
    v19 = v10[16];
    v20 = v10[17];
    v21 = *(v10 + 3);
    *v18 = *v10;
    *(v18 + 16) = v19;
    *(v18 + 17) = v20;
    *(v18 + 24) = v21;
    v22 = v3[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_12;
    }

    v3[2] = v24;
    v11 += v12;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_100010FA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100003C0C(&qword_10001C4E0, &qword_100015160);
    v3 = sub_100013CE0();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = sub_100003C0C(&qword_10001C4E8, &qword_100015168);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  if (!v2)
  {
    return v3;
  }

  v10 = *(v6 + 48);
  v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = *(v7 + 72);

  while (1)
  {
    sub_100012504(v11, v9, &qword_10001C4E8, &qword_100015168);
    result = sub_10000FB60(v9);
    if (v14)
    {
      break;
    }

    v15 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v16 = v3[6];
    v17 = sub_1000138B0();
    result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v9, v17);
    *(v3[7] + v15) = v9[v10];
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_12;
    }

    v3[2] = v20;
    v11 += v12;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_100011190()
{
  result = qword_10001C468;
  if (!qword_10001C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C468);
  }

  return result;
}

unint64_t sub_1000111E4(uint64_t a1)
{
  v46 = sub_1000138D0();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v46);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v42 = v1[1];
  v43 = v6;
  result = sub_1000053C0(a1);
  v8 = result;
  if (!(result >> 62))
  {
    v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_16:
  }

  result = sub_100013CB0();
  v9 = result;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v9 >= 1)
  {
    v10 = 0;
    v44 = v8 & 0xC000000000000001;
    v40 = enum case for OffDeviceTopic.telemetry(_:);
    v38 = v48;
    v39 = (v3 + 104);
    v36 = 0x8000000100015A70;
    v37 = (v3 + 8);
    v34 = "vent as any event: ";
    v35 = "v16@?0@NSError8";
    do
    {
      if (v44)
      {
        v24 = sub_100013C70();
      }

      else
      {
        v24 = *(v8 + 8 * v10 + 32);
      }

      v25 = v24;
      v26 = [v24 wrapAsAnyEvent];
      if (v26)
      {
        v11 = v26;
        v12 = v41;
        (*v39)(v41, v40, v46);
        sub_1000138C0();
        v13 = sub_100013AE0();
        v45 = v25;
        v14 = v13;

        v15 = swift_allocObject();
        v16 = v43;
        v17 = v9;
        v18 = v8;
        v19 = v42;
        v15[2] = v43;
        v15[3] = v19;
        v15[5] = 0;
        v15[6] = 0;
        v15[4] = v11;
        v48[2] = sub_1000124F4;
        v48[3] = v15;
        aBlock._countAndFlagsBits = _NSConcreteStackBlock;
        aBlock._object = 1107296256;
        v48[0] = sub_10000CA68;
        v48[1] = &unk_1000193C0;
        v20 = _Block_copy(&aBlock);
        v21 = v16;
        v22 = v19;
        v8 = v18;
        v9 = v17;
        v23 = v11;

        [v21 reportSiriInstrumentationEvent:v23 forBundleID:v14 completion:v20];
        _Block_release(v20);

        (*v37)(v12, v46);
      }

      else
      {
        if (qword_10001C1D8 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for InternalLogger();
        sub_100003EA0(v27, qword_10001C4F8);
        aBlock._countAndFlagsBits = 0;
        aBlock._object = 0xE000000000000000;
        sub_100013C60(37);

        aBlock._countAndFlagsBits = 0xD000000000000023;
        aBlock._object = v36;
        v28 = [v25 description];
        v29 = sub_100013AF0();
        v31 = v30;

        v50._countAndFlagsBits = v29;
        v50._object = v31;
        sub_100013B50(v50);

        v32._countAndFlagsBits = 0xD00000000000007ALL;
        v32._object = (v35 | 0x8000000000000000);
        v33._object = (v34 | 0x8000000000000000);
        v33._countAndFlagsBits = 0xD00000000000001ELL;
        InternalLogger.error(_:fromFile:fromFunction:)(aBlock, v32, v33);
      }

      ++v10;
    }

    while (v9 != v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_100011630()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10000CB5C();
}

uint64_t sub_10001163C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011684(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100011698(a1, a2);
  }

  return a1;
}

uint64_t sub_100011698(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000116EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000063BC(a1, a2);
  }

  return a1;
}

void sub_100011700(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v2 = 0xD000000000000020;
  if (SDRDiagnosticReporter && (sub_100013B10(), has_internal_content = os_variant_has_internal_content(), , has_internal_content))
  {
    v2 = a1 + 64;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v66 = &v54;
    v75 = sub_1000138B0();
    v8 = *(*(v75 - 8) + 64);
    __chkstk_darwin(v75);
    v73 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v74 = v9;
    v10 = (v5 + 63) >> 6;
    v70 = v11 + 32;
    v71 = v11 + 16;
    v72 = v11;
    v68 = (v11 + 8);
    v64 = "osticReporter or not internal";
    v65 = "ckIds(sessions:)";
    v63 = "v16@?0@NSError8";

    LODWORD(v67) = 0;
    v12 = 0;
    *&v13 = 136315650;
    v62 = v13;
    v14 = v76;
    v69 = a1;
LABEL_6:
    v15 = v12;
    if (!v7)
    {
      goto LABEL_8;
    }

    do
    {
      v12 = v15;
LABEL_11:
      v16 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v17 = v72;
      v18 = v73;
      v19 = v75;
      v20 = (*(v72 + 16))(v73, *(a1 + 48) + *(v72 + 72) * (v16 | (v12 << 6)), v75);
      __chkstk_darwin(v20);
      v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 32))(v22, v18, v19);
      if (!*(v14 + 16) || (v23 = sub_10000FB60(v22), v14 = v76, (v24 & 1) == 0) || *(*(v76 + 56) + v23) != 1)
      {
        if (qword_10001C1D8 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for InternalLogger();
        sub_100003EA0(v25, qword_10001C4F8);
        aBlock = 0;
        v78 = 0xE000000000000000;
        sub_100013C60(26);
        sub_1000122B8(&qword_10001C480);
        v26 = sub_100013D60();
        v28 = v27;

        aBlock = v26;
        v78 = v28;
        v83._countAndFlagsBits = 0xD000000000000018;
        v83._object = (v65 | 0x8000000000000000);
        sub_100013B50(v83);
        v30 = aBlock;
        v29 = v78;

        v31 = sub_100013A40();
        v32 = sub_100013BD0();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v61 = v30;
          v34 = v33;
          v67 = swift_slowAlloc();
          aBlock = v67;
          *v34 = v62;
          v58 = sub_100013840();
          v59 = &v54;
          v35 = *(v58 - 8);
          v57 = v31;
          v56 = v35;
          v36 = *(v35 + 64);
          __chkstk_darwin(v58);
          v60 = v32;
          v38 = &v54 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_100013820();
          v55 = sub_100013830();
          v40 = v39;
          (*(v56 + 8))(v38, v58);
          v41 = sub_100012F04(v55, v40, &aBlock);

          *(v34 + 4) = v41;
          *(v34 + 12) = 2080;
          *(v34 + 14) = sub_100012F04(0xD000000000000020, v64 | 0x8000000000000000, &aBlock);
          *(v34 + 22) = 2080;
          *(v34 + 24) = sub_100012F04(v61, v29, &aBlock);
          v31 = v57;
          _os_log_impl(&_mh_execute_header, v57, v60, "[%s: %s] %s", v34, 0x20u);
          swift_arrayDestroy();
        }

        (*v68)(v22, v75);
        LODWORD(v67) = 1;
        a1 = v69;
        v14 = v76;
        goto LABEL_6;
      }

      (*v68)(v22, v75);
      v15 = v12;
      a1 = v69;
    }

    while (v7);
    while (1)
    {
LABEL_8:
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v12 >= v10)
      {
        break;
      }

      v7 = *(v2 + 8 * v12);
      ++v15;
      if (v7)
      {
        goto LABEL_11;
      }
    }

    if ((v67 & 1) == 0)
    {
      return;
    }

    v46 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    v47 = sub_100013AE0();
    v48 = sub_100013AE0();
    v49 = sub_100013AE0();
    v50 = sub_100013AE0();
    v51 = [v46 signatureWithDomain:v47 type:v48 subType:v49 detectedProcess:v50 triggerThresholdValues:0];

    if (v51)
    {
      aBlock = 0;
      sub_100013A80();
      if (aBlock)
      {

        v52 = sub_100013A70();

        v81 = sub_10000E7E8;
        v82 = 0;
        aBlock = _NSConcreteStackBlock;
        v78 = 1107296256;
        v79 = sub_10000E9F4;
        v80 = &unk_100019370;
        v53 = _Block_copy(&aBlock);
        [v46 snapshotWithSignature:v52 delay:0 events:0 payload:0 actions:v53 reply:0.0];
        _Block_release(v53);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (qword_10001C1D8 != -1)
    {
LABEL_29:
      swift_once();
    }

    v42 = type metadata accessor for InternalLogger();
    sub_100003EA0(v42, qword_10001C4F8);
    v43._countAndFlagsBits = v2 + 13;
    v43._object = 0x8000000100015950;
    v44._countAndFlagsBits = v2 + 90;
    v44._object = 0x8000000100015730;
    v45._object = 0x8000000100015980;
    v45._countAndFlagsBits = 0xD000000000000020;
    InternalLogger.debug(_:fromFile:fromFunction:)(v43, v44, v45);
  }
}

uint64_t sub_100011FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return _objc_release_x3();
  }

  return result;
}

unint64_t sub_100011FC4()
{
  result = qword_10001C488;
  if (!qword_10001C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C488);
  }

  return result;
}

uint64_t sub_100012018()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for SessionBuilderError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SessionBuilderError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000121BC()
{
  result = qword_10001C490;
  if (!qword_10001C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C490);
  }

  return result;
}

unint64_t sub_100012218()
{
  result = qword_10001C498;
  if (!qword_10001C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C498);
  }

  return result;
}

uint64_t sub_10001226C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018C00;
  v6._object = a2;
  v4 = sub_100013CF0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000122B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000138B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000122FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return _objc_retain_x3();
  }

  return result;
}

uint64_t sub_10001230C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000123D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003C0C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100012434(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003C0C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001249C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 48);
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100012504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003C0C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 initializeBufferWithCopyOfBuffer for ExecutionStatistics.ActionResults.MappingResult(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ExecutionStatistics.ActionResults.MappingResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ExecutionStatistics.ActionResults.MappingResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1000125D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000125EC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_10001261C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100012664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000126B4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000126C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10001271C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100012780(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000127C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100012834()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100013AE0();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    if (qword_10001C1D8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for InternalLogger();
    sub_100003EA0(v3, qword_10001C4F8);
    v4._countAndFlagsBits = 0x292874696E69;
    v5._object = 0x8000000100015B00;
    v6._countAndFlagsBits = 0xD000000000000077;
    v6._object = 0x8000000100015B30;
    v5._countAndFlagsBits = 0xD000000000000023;
    v4._object = 0xE600000000000000;
    InternalLogger.error(_:fromFile:fromFunction:)(v5, v6, v4);
    return 0;
  }

  return v2;
}

void sub_1000129A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void))
{

  v27 = sub_100013A40();
  v12 = a7();

  if (os_log_type_enabled(v27, v12))
  {
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v13 = 136315650;
    v24 = a5;
    v25 = a1;
    v14 = sub_100013840();
    v15 = *(v14 - 8);
    v16 = *(v15 + 64);
    __chkstk_darwin();
    v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100013820();
    v19 = sub_100013830();
    v21 = v20;
    (*(v15 + 8))(v18, v14);
    v22 = sub_100012F04(v19, v21, &v28);

    *(v13 + 4) = v22;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100012F04(v24, a6, &v28);
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_100012F04(v25, a2, &v28);
    _os_log_impl(&_mh_execute_header, v27, v12, "[%s: %s] %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100012C2C()
{
  v0 = sub_100013A50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InternalLogger();
  sub_1000136EC(v5, qword_10001C4F8);
  v6 = sub_100003EA0(v5, qword_10001C4F8);
  if (qword_10001C1E0 != -1)
  {
    swift_once();
  }

  v7 = qword_10001DAB0;
  sub_100013A60();
  return (*(v1 + 32))(v6, v4, v0);
}

uint64_t static Logging.plugin.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C1D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for InternalLogger();
  v3 = sub_100003EA0(v2, qword_10001C4F8);

  return sub_100013508(v3, a1);
}

uint64_t sub_100012DD8()
{
  sub_100013750();
  result = sub_100013C00();
  qword_10001DAB0 = result;
  return result;
}

uint64_t sub_100012E34(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100012EA8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100012F04(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100012F04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100012FD0(v11, 0, 0, 1, a1, a2);
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
    sub_100004924(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000499C(v11);
  return v7;
}

unint64_t sub_100012FD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000130DC(a5, a6);
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
    result = sub_100013C90();
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

char *sub_1000130DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100013128(a1, a2);
  sub_100013258(&off_100018B58);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100013128(uint64_t a1, unint64_t a2)
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

  v6 = sub_100013344(v5, 0);
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

  result = sub_100013C90();
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
        v10 = sub_100013B70();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100013344(v10, 0);
        result = sub_100013C50();
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

uint64_t sub_100013258(uint64_t result)
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

  result = sub_1000133B8(result, v12, 1, v3);
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

void *sub_100013344(uint64_t a1, uint64_t a2)
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

  sub_100003C0C(&qword_10001C5A8, &unk_1000152A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000133B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003C0C(&qword_10001C5A8, &unk_1000152A0);
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

_BYTE **sub_1000134AC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t type metadata accessor for InternalLogger()
{
  result = qword_10001C568;
  if (!qword_10001C568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalLogger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013590(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A50();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100013610(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A50();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100013680()
{
  result = sub_100013A50();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *sub_1000136EC(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100013750()
{
  result = qword_10001C5A0;
  if (!qword_10001C5A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C5A0);
  }

  return result;
}