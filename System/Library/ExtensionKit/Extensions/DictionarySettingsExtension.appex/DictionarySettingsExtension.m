uint64_t sub_1000010D8(uint64_t a1)
{
  v2 = sub_10000122C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001184();
  sub_100003884();
  return 0;
}

unint64_t sub_100001184()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

unint64_t sub_10000122C()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t sub_100001290()
{
  v0 = (*(*(sub_1000027D8(&qword_10000C0A8, &qword_100003E88) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = sub_100003844();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = sub_100003814();
  sub_100002858(v6, qword_10000CCD0);
  sub_100002820(v6, qword_10000CCD0);
  sub_100003824();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100003804();
}

uint64_t sub_100001400()
{
  v0 = sub_1000027D8(&qword_10000C0D8, &qword_100003EB0);
  sub_100002858(v0, qword_10000CCE8);
  sub_100002820(v0, qword_10000CCE8);
  sub_1000027D8(&qword_10000C0E0, &qword_100003EB8);
  v1 = *(sub_1000027D8(&qword_10000C0E8, &qword_100003EC0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100003B20;
  sub_1000016FC();
  sub_100003794();
  sub_100002910(v4);
  swift_setDeallocating();
  sub_100002AEC(v4 + v3, &qword_10000C0E8, &qword_100003EC0);
  swift_deallocClassInstance();
  return sub_1000037A4();
}

unint64_t sub_100001598()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

Swift::Int sub_1000015EC()
{
  sub_1000038E4();
  sub_1000038B4();
  return sub_1000038F4();
}

Swift::Int sub_100001648()
{
  sub_1000038E4();
  sub_1000038B4();
  return sub_1000038F4();
}

uint64_t sub_100001690@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008638;
  v7._object = v3;
  v5 = sub_1000038D4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_1000016FC()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_100001754()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

uint64_t sub_1000017A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C008 != -1)
  {
    swift_once();
  }

  v2 = sub_1000027D8(&qword_10000C0D8, &qword_100003EB0);
  v3 = sub_100002820(v2, qword_10000CCE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100001860()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_1000018B8()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_100001910()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t sub_100001970()
{
  sub_1000028BC();
  v1 = sub_100003744();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000019E0()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100001A38()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_100001A90()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_100001AE8()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

uint64_t sub_100001B40@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_100003814();
  v3 = sub_100002820(v2, qword_10000CCD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001C38(uint64_t a1)
{
  v2 = sub_1000016FC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100001C88()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100001CE0()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_100001D38()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_100001D90(uint64_t a1)
{
  v2 = sub_100001AE8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100001DE0()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    sub_100001E44(&qword_10000C098, &qword_100003E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

uint64_t sub_100001E44(uint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for DictionarySettingsDeepLinks(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DictionarySettingsDeepLinks(_WORD *result, int a2, int a3)
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

unint64_t sub_100001F88(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_100001FB4()
{
  v1 = *(v0 + 40);
  sub_1000038E4();
  sub_1000038B4();
  v2 = sub_1000038F4();

  return sub_100001F88(v2);
}

unint64_t sub_100002014(uint64_t a1)
{
  v2 = *(sub_1000027D8(&qword_10000C0B8, &qword_100003E98) - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000027D8(&qword_10000C0C8, &qword_100003EA8);
    v7 = sub_1000038C4();
    v8 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);

    while (1)
    {
      sub_100002B4C(v8, v5, &qword_10000C0B8, &qword_100003E98);
      result = sub_100001FB4();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_100003784();
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

unint64_t sub_1000021E0()
{
  v0 = sub_100003834();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  (__chkstk_darwin)();
  v39 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100003874() - 8) + 64);
  (__chkstk_darwin)();
  v5 = *(*(sub_1000038A4() - 8) + 64);
  (__chkstk_darwin)();
  v6 = (*(*(sub_1000027D8(&qword_10000C0A0, &qword_100003E80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v8 = &v31 - v7;
  v9 = (*(*(sub_1000027D8(&qword_10000C0A8, &qword_100003E88) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v11 = &v31 - v10;
  v12 = sub_100003844();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = (__chkstk_darwin)();
  v38 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v35 = &v31 - v17;
  sub_1000027D8(&qword_10000C0B0, &qword_100003E90);
  v18 = *(sub_1000027D8(&qword_10000C0B8, &qword_100003E98) - 8);
  v19 = *(v18 + 72);
  v37 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100003B20;
  sub_100003824();
  v34 = v11;
  sub_100003824();
  v20 = *(v13 + 56);
  v13 += 56;
  v20(v11, 0, 1, v12);
  v33 = v8;
  sub_100003754();
  v21 = sub_100003764();
  (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
  sub_1000027D8(&qword_10000C0C0, &qword_100003EA0);
  v22 = *(v13 + 16);
  v23 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100003B30;
  sub_100003894();
  sub_100003864();
  v24 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v25 = *(v1 + 104);
  v26 = v39;
  v25(v39, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_100003854();
  sub_100003894();
  sub_100003864();
  v25(v26, v24, v0);
  sub_100003854();
  sub_100003894();
  sub_100003864();
  v25(v26, v24, v0);
  sub_100003854();
  v27 = v36;
  v28 = v37;
  sub_100003774();
  v29 = sub_100002014(v27);
  swift_setDeallocating();
  sub_100002AEC(v27 + v28, &qword_10000C0B8, &qword_100003E98);
  swift_deallocClassInstance();
  return v29;
}

uint64_t sub_1000027D8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002820(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100002858(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1000028BC()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

unint64_t sub_100002910(uint64_t a1)
{
  v2 = *(sub_1000027D8(&qword_10000C0E8, &qword_100003EC0) - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000027D8(&qword_10000C0F0, &qword_100003EC8);
    v7 = sub_1000038C4();
    v8 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);

    while (1)
    {
      sub_100002B4C(v8, v5, &qword_10000C0E8, &qword_100003EC0);
      result = sub_100001FB4();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_1000027D8(&qword_10000C0F8, &unk_100003ED0);
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

uint64_t sub_100002AEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000027D8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002B4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000027D8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100002BC0()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

uint64_t sub_100002C14()
{
  v0 = sub_100003844();
  sub_100002858(v0, qword_10000CD00);
  sub_100002820(v0, qword_10000CD00);
  return sub_100003824();
}

void (*sub_100002CC0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100003704();
  return sub_100002D34;
}

void sub_100002D34(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002D80()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

uint64_t sub_100002DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035A8();
  v5 = sub_1000028BC();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100002E50()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

unint64_t sub_100002EA8()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

unint64_t sub_100002F00()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

uint64_t sub_100002FA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = sub_100003844();
  v3 = sub_100002820(v2, qword_10000CD00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000305C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000035A8();
  v7 = sub_1000035FC();
  v8 = sub_1000028BC();
  *v5 = v2;
  v5[1] = sub_100003128;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100003128()
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

uint64_t sub_100003230@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000032A4();
  *a1 = result;
  return result;
}

uint64_t sub_100003258(uint64_t a1)
{
  v2 = sub_100002D80();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000032A4()
{
  v21 = sub_1000037D4();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000027D8(&qword_10000C128, &unk_100004110);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_1000027D8(&qword_10000C0A8, &qword_100003E88);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_100003844();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000027D8(&qword_10000C130, &unk_100004120);
  sub_100003824();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 1;
  v18 = sub_1000036F4();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_1000016FC();
  return sub_100003734();
}

unint64_t sub_1000035A8()
{
  result = qword_10000C138;
  if (!qword_10000C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C138);
  }

  return result;
}

unint64_t sub_1000035FC()
{
  result = qword_10000C140;
  if (!qword_10000C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C140);
  }

  return result;
}