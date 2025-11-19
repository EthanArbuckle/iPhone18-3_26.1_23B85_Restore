uint64_t sub_100001080()
{
  v0 = sub_100001828(&qword_10000C048, &qword_100004690);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v13 - v3;
  sub_1000017D4();
  sub_10000427C();
  v14 = sub_10000420C();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_10000427C();
  v6 = sub_10000420C();
  v5(v4, v0);
  sub_10000427C();
  v7 = sub_10000420C();
  v5(v4, v0);
  sub_10000427C();
  v8 = sub_10000420C();
  v5(v4, v0);
  sub_10000427C();
  v9 = sub_10000420C();
  v5(v4, v0);
  sub_100001828(&qword_10000C050, qword_100004698);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000045A0;
  *(v10 + 32) = v14;
  *(v10 + 40) = v6;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v10 + 64) = v9;
  v11 = sub_1000041FC();

  return v11;
}

uint64_t sub_100001344()
{
  v0 = sub_10000426C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100001870();
  sub_1000041EC();

  sub_1000017D4();
  sub_10000425C();
  v5 = sub_10000424C();
  (*(v1 + 8))(v4, v0);
  sub_100001828(&qword_10000C038, &qword_100004680);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000045B0;
  *(v6 + 32) = v5;
  v7 = sub_10000423C();

  return v7;
}

uint64_t sub_1000014B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000041BC();
  *a2 = v5;
  return result;
}

uint64_t sub_1000014F0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1000041CC();
}

uint64_t sub_100001528()
{
  v0 = sub_10000422C();
  v1 = sub_10000422C();
  v2 = sub_10000422C();
  sub_100001828(&qword_10000C040, &qword_100004688);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000045C0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_10000421C();

  return v4;
}

uint64_t sub_100001600()
{
  v0 = sub_1000042AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_100002040();
  sub_1000017D4();
  sub_1000042BC();
  v5 = sub_10000429C();
  (*(v1 + 8))(v4, v0);
  sub_100001828(&qword_10000C028, "~\t");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000045B0;
  *(v6 + 32) = v5;
  v7 = sub_10000428C();

  return v7;
}

uint64_t sub_100001768()
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v1 = qword_10000C178;

  return _swift_bridgeObjectRetain(v1);
}

unint64_t sub_1000017D4()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t sub_100001828(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001870()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_1000018C8()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100001920()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

uint64_t sub_1000019A8()
{
  v0 = sub_1000043BC();
  sub_1000024CC(v0, qword_10000C180);
  sub_100002494(v0, qword_10000C180);
  return sub_1000043AC();
}

uint64_t sub_100001A0C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000041BC();
  *a1 = v5;
  return result;
}

uint64_t sub_100001A48(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_1000041CC();
}

void (*sub_100001A80(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_1000041AC();
  return sub_100001AF4;
}

void sub_100001AF4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100001B48()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

uint64_t sub_100001B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002398();
  v5 = sub_100002440();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100001C2C()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100001C84()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

uint64_t sub_100001D28@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C008 != -1)
  {
    swift_once();
  }

  v2 = sub_1000043BC();
  v3 = sub_100002494(v2, qword_10000C180);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001DF0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100002398();
  v8 = sub_1000023EC();
  v9 = sub_100002440();
  *v6 = v2;
  v6[1] = sub_100001EC4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100001EC4()
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

uint64_t sub_100001FCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002040();
  *a1 = result;
  return result;
}

uint64_t sub_100001FF4(uint64_t a1)
{
  v2 = sub_1000017D4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100002040()
{
  v20 = sub_10000433C();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100001828(&qword_10000C080, "8\b") - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100001828(&qword_10000C088, "8\b");
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_1000043BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100001828(&qword_10000C090, &unk_1000048E0);
  sub_1000043AC();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 2;
  v17 = sub_10000419C();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_100002344();
  return sub_1000041DC();
}

unint64_t sub_100002344()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_100002398()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_1000023EC()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

unint64_t sub_100002440()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_100002494(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000024CC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100002538(uint64_t a1)
{
  v2 = sub_10000268C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000025E4();
  sub_1000043CC();
  return 0;
}

unint64_t sub_1000025E4()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_10000268C()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

uint64_t sub_1000026F0()
{
  v0 = sub_100001828(&qword_10000C150, &qword_100004CE0);
  sub_1000024CC(v0, qword_10000C198);
  sub_100002494(v0, qword_10000C198);
  sub_100001828(&qword_10000C158, &qword_100004CE8);
  v1 = sub_100001828(&qword_10000C160, &qword_100004CF0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100004980;
  v5 = (v4 + v3);
  v6 = *(v1 + 48);
  *v5 = 0;
  sub_100002344();
  sub_10000431C();
  v7 = *(v1 + 48);
  v5[v2] = 1;
  sub_10000431C();
  sub_10000371C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_10000432C();
}

uint64_t sub_1000028CC()
{
  v0 = sub_100001828(&qword_10000C088, "8\b");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000043BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10000439C();
  sub_1000024CC(v7, qword_10000C1B0);
  sub_100002494(v7, qword_10000C1B0);
  sub_1000043AC();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_10000438C();
}

uint64_t sub_100002A3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64726143646461;
  }

  else
  {
    v4 = 1953460082;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x64726143646461;
  }

  else
  {
    v6 = 1953460082;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10000440C();
  }

  return v9 & 1;
}

unint64_t sub_100002AE0()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

Swift::Int sub_100002B34()
{
  v1 = *v0;
  sub_10000441C();
  sub_1000043DC();

  return sub_10000442C();
}

uint64_t sub_100002BB0()
{
  *v0;
  sub_1000043DC();
}

Swift::Int sub_100002C18()
{
  v1 = *v0;
  sub_10000441C();
  sub_1000043DC();

  return sub_10000442C();
}

uint64_t sub_100002C90@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008720;
  v8._object = v3;
  v5 = sub_1000043FC(v4, v8);

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

void sub_100002CF0(uint64_t *a1@<X8>)
{
  v2 = 1953460082;
  if (*v1)
  {
    v2 = 0x64726143646461;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100002D30()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_100002D84@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = sub_100001828(&qword_10000C150, &qword_100004CE0);
  v3 = sub_100002494(v2, qword_10000C198);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100002E3C()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

unint64_t sub_100002E94()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

uint64_t sub_100002EF4()
{
  sub_100002440();
  v1 = sub_10000430C();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100002F64()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

unint64_t sub_100002FBC()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

unint64_t sub_100003014()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

uint64_t sub_10000306C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C018 != -1)
  {
    swift_once();
  }

  v2 = sub_10000439C();
  v3 = sub_100002494(v2, qword_10000C1B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003168(uint64_t a1)
{
  v2 = sub_100002344();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000031B8()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

unint64_t sub_100003210()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

unint64_t sub_100003268()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

uint64_t sub_1000032C0(uint64_t a1)
{
  v2 = sub_100003014();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100003310()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    sub_100003374(&qword_10000C120, &qword_100004C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

uint64_t sub_100003374(uint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for WalletDeepLinks(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WalletDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100003540(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10000441C();
  sub_1000043DC();

  v5 = sub_10000442C();

  return sub_1000035E0(a1 & 1, v5);
}

unint64_t sub_1000035E0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x64726143646461;
    }

    else
    {
      v6 = 1953460082;
    }

    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x64726143646461 : 1953460082;
      v9 = *(*(v2 + 48) + v4) ? 0xE700000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_10000440C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10000371C(uint64_t a1)
{
  v2 = sub_100001828(&qword_10000C160, &qword_100004CF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001828(&qword_10000C168, &qword_100004CF8);
    v8 = sub_1000043EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000408C(v10, v6, &qword_10000C160, &qword_100004CF0);
      v12 = *v6;
      result = sub_100003540(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100001828(&qword_10000C170, &unk_100004D00);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100003910(uint64_t a1)
{
  v2 = sub_100001828(&qword_10000C138, &qword_100004CC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001828(&qword_10000C148, &qword_100004CD8);
    v8 = sub_1000043EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000408C(v10, v6, &qword_10000C138, &qword_100004CC8);
      v12 = *v6;
      result = sub_100003540(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1000042FC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100003AF8()
{
  v0 = sub_100001828(&qword_10000C128, &unk_100004CB0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v25 - v2;
  v4 = sub_100001828(&qword_10000C088, "8\b");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25 - v6;
  v26 = &v25 - v6;
  v8 = sub_1000043BC();
  v35 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v28 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001828(&qword_10000C130, &qword_100004CC0);
  v12 = sub_100001828(&qword_10000C138, &qword_100004CC8);
  v33 = v12;
  v13 = *(v12 - 8);
  v36 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100004980;
  v37 = v15;
  v38 = v15 + v14;
  v32 = *(v12 + 48);
  *(v15 + v14) = 0;
  sub_1000043AC();
  v16 = *(v9 + 56);
  v9 += 56;
  v34 = v16;
  v16(v7, 1, 1, v8);
  sub_1000042CC();
  v30 = sub_1000042DC();
  v17 = *(v30 - 8);
  v29 = *(v17 + 56);
  v31 = v17 + 56;
  v29(v3, 0, 1, v30);
  v27 = sub_100001828(&qword_10000C140, &qword_100004CD0);
  v18 = *(v9 + 16);
  v19 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_100004990;
  sub_1000043AC();
  sub_1000043AC();
  sub_1000043AC();
  sub_1000043AC();
  sub_1000043AC();
  sub_1000043AC();
  sub_1000043AC();
  sub_1000043AC();
  v20 = v38;
  v21 = v26;
  sub_1000042EC();
  v22 = (v20 + v36);
  v36 = *(v33 + 48);
  *v22 = 1;
  sub_1000043AC();
  sub_1000043AC();
  v34(v21, 0, 1, v35);
  sub_1000042CC();
  v29(v3, 0, 1, v30);
  *(swift_allocObject() + 16) = xmmword_1000045B0;
  sub_1000043AC();
  sub_1000042EC();
  v23 = sub_100003910(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

uint64_t sub_10000408C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001828(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}