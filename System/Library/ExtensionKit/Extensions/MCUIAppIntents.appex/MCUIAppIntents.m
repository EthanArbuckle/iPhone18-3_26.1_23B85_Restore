uint64_t sub_100001080(uint64_t a1)
{
  v2 = sub_1000011D4();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000112C();
  sub_100004298();
  return 0;
}

unint64_t sub_10000112C()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

unint64_t sub_1000011D4()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

uint64_t sub_100001238()
{
  v0 = (*(*(sub_100003C78(&qword_10000C118, &qword_1000050E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = sub_100004288();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = sub_100004268();
  sub_100003E3C(v6, qword_10000CD98);
  sub_100003E04(v6, qword_10000CD98);
  sub_100004278();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100004258();
}

uint64_t sub_1000013A8()
{
  v0 = (*(*(sub_100003C78(&qword_10000C140, &qword_1000050F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v2 = v21 - v1;
  v3 = (*(*(sub_100003C78(&qword_10000C118, &qword_1000050E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v5 = v21 - v4;
  v6 = sub_100004288();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (__chkstk_darwin)();
  v21[1] = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  sub_100003C78(&qword_10000C148, &qword_100005100);
  v11 = *(sub_100003C78(&qword_10000C150, &qword_100005108) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100004AC0;
  sub_100004278();
  sub_100004278();
  v15 = *(v7 + 56);
  v7 += 56;
  v15(v5, 0, 1, v6);
  sub_1000041A8();
  v16 = sub_1000041B8();
  (*(*(v16 - 8) + 56))(v2, 0, 1, v16);
  sub_100003C78(&qword_10000C158, &qword_100005110);
  v17 = *(v7 + 16);
  v18 = (*(v7 + 24) + 32) & ~*(v7 + 24);
  *(swift_allocObject() + 16) = xmmword_100004AD0;
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_100004278();
  sub_1000041C8();
  v19 = sub_1000035CC(v14);
  swift_setDeallocating();
  sub_100003EA0(v14 + v13, &qword_10000C150, &qword_100005108);
  result = swift_deallocClassInstance();
  qword_10000CDB0 = v19;
  return result;
}

uint64_t sub_1000018E4()
{
  v0 = sub_100003C78(&qword_10000C168, &qword_100005120);
  sub_100003E3C(v0, qword_10000CDB8);
  sub_100003E04(v0, qword_10000CDB8);
  sub_100003C78(&qword_10000C170, &qword_100005128);
  v1 = *(sub_100003C78(&qword_10000C178, &qword_100005130) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100004AC0;
  sub_100001BE0();
  sub_1000041E8();
  sub_100003798(v4);
  swift_setDeallocating();
  sub_100003EA0(v4 + v3, &qword_10000C178, &qword_100005130);
  swift_deallocClassInstance();
  return sub_1000041F8();
}

unint64_t sub_100001A7C()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

Swift::Int sub_100001AD0()
{
  sub_1000042D8();
  sub_1000042A8();
  return sub_1000042E8();
}

Swift::Int sub_100001B2C()
{
  sub_1000042D8();
  sub_1000042A8();
  return sub_1000042E8();
}

uint64_t sub_100001B74@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000086F8;
  v7._object = v3;
  v5 = sub_1000042C8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100001BE0()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_100001C38()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t sub_100001C8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = sub_100003C78(&qword_10000C168, &qword_100005120);
  v3 = sub_100003E04(v2, qword_10000CDB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100001D44()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100001D9C()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_100001DF4()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

uint64_t sub_100001E54()
{
  sub_100003DB0();
  v1 = sub_100004198();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100001EC4()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100001F1C()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100001F74()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_100001FCC()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_100002088(uint64_t a1)
{
  v2 = sub_100001BE0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000020D8()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100002130()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_100002188()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_1000021DC()
{
  if (qword_10000C008 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100002238(uint64_t a1)
{
  v2 = sub_100001FCC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100002288()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    sub_1000022EC(&qword_10000C0B0, &qword_100004DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_1000022EC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002348()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_10000239C()
{
  v0 = sub_100004288();
  sub_100003E3C(v0, qword_10000CDD0);
  sub_100003E04(v0, qword_10000CDD0);
  return sub_100004278();
}

void (*sub_10000246C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100004028();
  return sub_1000024E0;
}

void sub_1000024E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10000252C()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

uint64_t sub_100002580(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003D08();
  v5 = sub_100003DB0();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000025F0()
{
  v0 = qword_10000C030;

  return v0;
}

unint64_t sub_100002630()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

unint64_t sub_100002688()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

unint64_t sub_1000026E0()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

uint64_t sub_1000027E0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100003E04(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000028A0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100003D08();
  v7 = sub_100003D5C();
  v8 = sub_100003DB0();
  *v5 = v2;
  v5[1] = sub_10000296C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10000296C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_100002A74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003974();
  *a1 = result;
  return result;
}

uint64_t sub_100002A9C(uint64_t a1)
{
  v2 = sub_10000252C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100002AD8(uint64_t a1)
{
  v33 = a1;
  v1 = sub_100003C78(&qword_10000C0F8, &qword_1000050C8);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23[-v4];
  v27 = sub_100004078();
  v6 = *(v27 - 8);
  v7 = v6[8];
  __chkstk_darwin(v27);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100003C78(&qword_10000C100, &qword_1000050D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_10000252C();
  sub_100004138();
  v36._countAndFlagsBits = 0x206E65704FLL;
  v36._object = 0xE500000000000000;
  sub_100004128(v36);
  swift_getKeyPath();
  v32 = sub_100001F74();
  sub_100004068();

  sub_100004118();

  v37._countAndFlagsBits = 544106784;
  v37._object = 0xE400000000000000;
  sub_100004128(v37);
  v12 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v31 = v6[13];
  v24 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v13 = v27;
  v31(v9, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v27);
  sub_100004108();
  v14 = v6[1];
  v29 = v6 + 1;
  v30 = v14;
  v14(v9, v13);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_100004128(v38);
  sub_100004148();
  v26 = sub_100004098();
  v15 = *(v35 + 8);
  v35 += 8;
  v28 = v15;
  v15(v5, v34);
  sub_100004138();
  v39._countAndFlagsBits = 0x206F74206F47;
  v39._object = 0xE600000000000000;
  sub_100004128(v39);
  swift_getKeyPath();
  sub_100004068();

  sub_100004118();

  v40._countAndFlagsBits = 544106784;
  v40._object = 0xE400000000000000;
  sub_100004128(v40);
  v16 = v12;
  v17 = v27;
  v31(v9, v16, v27);
  sub_100004108();
  v30(v9, v17);
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_100004128(v41);
  sub_100004148();
  v25 = sub_100004098();
  v28(v5, v34);
  sub_100004138();
  v42._countAndFlagsBits = 0x20656D20776F6853;
  v42._object = 0xE800000000000000;
  sub_100004128(v42);
  swift_getKeyPath();
  sub_100004068();

  sub_100004118();

  v43._countAndFlagsBits = 544106784;
  v43._object = 0xE400000000000000;
  sub_100004128(v43);
  v31(v9, v24, v17);
  sub_100004108();
  v30(v9, v17);
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  sub_100004128(v44);
  sub_100004148();
  v18 = sub_100004098();
  v28(v5, v34);
  sub_100003C78(&qword_10000C108, &qword_1000050D8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100004AE0;
  v20 = v25;
  *(v19 + 32) = v26;
  *(v19 + 40) = v20;
  *(v19 + 48) = v18;
  v21 = sub_100004088();

  return v21;
}

uint64_t sub_100003064()
{
  v0 = sub_1000040F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100001F74();
  sub_100004068();

  sub_10000252C();
  sub_1000040E8();
  v5 = sub_1000040D8();
  (*(v1 + 8))(v4, v0);
  sub_100003C78(&qword_10000C0E8, &qword_1000050B8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100004AC0;
  *(v6 + 32) = v5;
  v7 = sub_1000040C8();

  return v7;
}

uint64_t sub_1000031D4()
{
  v0 = sub_1000040B8();
  v1 = sub_1000040B8();
  v2 = sub_1000040B8();
  v3 = sub_1000040B8();
  sub_100003C78(&qword_10000C0F0, &qword_1000050C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100004AF0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1000040A8();

  return v5;
}

uint64_t sub_1000032C8()
{
  v0 = sub_100004178();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_100003974();
  sub_10000252C();
  sub_100004188();
  v5 = sub_100004168();
  (*(v1 + 8))(v4, v0);
  sub_100003C78(&qword_10000C0E0, &qword_100005088);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100004AC0;
  *(v6 + 32) = v5;
  v7 = sub_100004158();

  return v7;
}

uint64_t getEnumTagSinglePayload for MCUIStaticDeepLinks(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MCUIStaticDeepLinks(_WORD *result, int a2, int a3)
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

unint64_t sub_100003540(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_10000356C()
{
  v1 = *(v0 + 40);
  sub_1000042D8();
  sub_1000042A8();
  v2 = sub_1000042E8();

  return sub_100003540(v2);
}

unint64_t sub_1000035CC(uint64_t a1)
{
  v2 = *(sub_100003C78(&qword_10000C150, &qword_100005108) - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003C78(&qword_10000C160, &qword_100005118);
    v7 = sub_1000042B8();
    v8 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);

    while (1)
    {
      sub_100003F00(v8, v5, &qword_10000C150, &qword_100005108);
      result = sub_10000356C();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_1000041D8();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100003798(uint64_t a1)
{
  v2 = *(sub_100003C78(&qword_10000C178, &qword_100005130) - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003C78(&qword_10000C180, &qword_100005138);
    v7 = sub_1000042B8();
    v8 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);

    while (1)
    {
      sub_100003F00(v8, v5, &qword_10000C178, &qword_100005130);
      result = sub_10000356C();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_100003C78(&qword_10000C188, &qword_100005140);
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_100003974()
{
  v21 = sub_100004228();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003C78(&qword_10000C110, &qword_1000050E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003C78(&qword_10000C118, &qword_1000050E8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_100004288();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003C78(&qword_10000C120, &qword_1000050F0);
  sub_100004278();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 1;
  v18 = sub_100004018();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100001BE0();
  return sub_100004058();
}

uint64_t sub_100003C78(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003D08()
{
  result = qword_10000C128;
  if (!qword_10000C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C128);
  }

  return result;
}

unint64_t sub_100003D5C()
{
  result = qword_10000C130;
  if (!qword_10000C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C130);
  }

  return result;
}

unint64_t sub_100003DB0()
{
  result = qword_10000C138;
  if (!qword_10000C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C138);
  }

  return result;
}

uint64_t sub_100003E04(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003E3C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100003EA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003C78(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003F00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003C78(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}