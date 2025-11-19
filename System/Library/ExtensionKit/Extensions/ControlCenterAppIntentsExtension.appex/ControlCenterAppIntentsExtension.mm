unint64_t sub_1000010DC()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_100001134()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

uint64_t sub_100001188()
{
  v0 = sub_100004650();
  sub_100001EFC(v0, qword_10000C180);
  sub_100001EC4(v0, qword_10000C180);
  return sub_100004630();
}

uint64_t sub_100001220@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100004440();
  *a1 = v5;
  return result;
}

uint64_t sub_10000125C(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100004450();
}

void (*sub_100001294(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100004430();
  return sub_100001308;
}

void sub_100001308(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100001354()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_1000013A8()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

uint64_t sub_1000013FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DC8();
  v5 = sub_100001E70();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000146C()
{
  v0 = qword_10000C008;

  return v0;
}

unint64_t sub_1000014AC()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

unint64_t sub_100001504()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

uint64_t sub_1000015AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_100004650();
  v3 = sub_100001EC4(v2, qword_10000C180);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001674(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100001DC8();
  v8 = sub_100001E1C();
  v9 = sub_100001E70();
  *v6 = v2;
  v6[1] = sub_100001748;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100001748()
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

uint64_t sub_100001850@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000018C4();
  *a1 = result;
  return result;
}

uint64_t sub_100001878(uint64_t a1)
{
  v2 = sub_100001354();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000018C4()
{
  v0 = sub_1000045C0();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  (__chkstk_darwin)();
  v29 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(sub_100001D2C(&qword_10000C060, &unk_100004B20) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_100001D2C(&qword_10000C068, &qword_100004FF0);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_100004640();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100004680();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_1000046B0();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_100004650();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v27 = sub_100001D2C(&qword_10000C070, &unk_100004B30);
  sub_1000046A0();
  sub_100004670();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_100004660();
  (*(v22 + 56))(v11, 1, 1, v21);
  v32 = 3;
  v24 = sub_100004420();
  v25 = *(*(v24 - 8) + 56);
  v25(v7, 1, 1, v24);
  v25(v28, 1, 1, v24);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_100001D74();
  return sub_100004460();
}

uint64_t sub_100001D2C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001D74()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100001DC8()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_100001E1C()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_100001E70()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

uint64_t sub_100001EC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100001EFC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100001F68(uint64_t a1)
{
  v2 = sub_1000020BC();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002014();
  sub_100004690();
  return 0;
}

unint64_t sub_100002014()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_1000020BC()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_100002120()
{
  v0 = sub_100001D2C(&qword_10000C0C8, &qword_100004CA0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - v3;
  sub_100001354();
  sub_100004500();
  v5 = sub_100004490();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100004500();
  v7 = sub_100004490();
  v6(v4, v0);
  sub_100004500();
  v8 = sub_100004490();
  v6(v4, v0);
  sub_100004500();
  v9 = sub_100004490();
  v6(v4, v0);
  sub_100001D2C(&qword_10000C0D0, qword_100004CA8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100004BE0;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;
  v11 = sub_100004480();

  return v11;
}

uint64_t sub_100002384()
{
  v0 = sub_1000044F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1000027DC();
  sub_100004470();

  sub_100001354();
  sub_1000044E0();
  v5 = sub_1000044D0();
  (*(v1 + 8))(v4, v0);
  sub_100001D2C(&qword_10000C0B8, &qword_100004C90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100004BF0;
  *(v6 + 32) = v5;
  v7 = sub_1000044C0();

  return v7;
}

uint64_t sub_1000024F4()
{
  v0 = sub_1000044B0();
  sub_100001D2C(&qword_10000C0C0, &qword_100004C98);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100004BF0;
  *(v1 + 32) = v0;
  v2 = sub_1000044A0();

  return v2;
}

uint64_t sub_100002594()
{
  v0 = sub_100004530();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_1000018C4();
  sub_100001354();
  sub_100004540();
  v5 = sub_100004520();
  (*(v1 + 8))(v4, v0);
  sub_100001D2C(&qword_10000C0A8, &qword_100004C60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100004BF0;
  *(v6 + 32) = v5;
  v7 = sub_100004510();

  return v7;
}

uint64_t sub_1000026FC()
{
  if (qword_10000C018 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100002768@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100004440();
  *a2 = v5;
  return result;
}

uint64_t sub_1000027A4(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100004450();
}

unint64_t sub_1000027DC()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_100002830()
{
  v0 = sub_100001D2C(&qword_10000C158, &qword_100005010);
  sub_100001EFC(v0, qword_10000C1A0);
  sub_100001EC4(v0, qword_10000C1A0);
  sub_100001D2C(&qword_10000C160, &qword_100005018);
  v1 = sub_100001D2C(&qword_10000C168, &qword_100005020);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100004CC0;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  *(v4 + v3) = 0;
  sub_100001D74();
  sub_1000045A0();
  v7 = *(v1 + 48);
  *(v5 + v2) = 1;
  sub_1000045A0();
  v8 = *(v1 + 48);
  *(v5 + 2 * v2) = 2;
  sub_1000045A0();
  sub_100003A34(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_1000045B0();
}

uint64_t sub_100002A50()
{
  v0 = sub_100001D2C(&qword_10000C068, &qword_100004FF0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100004650();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100004620();
  sub_100001EFC(v7, qword_10000C1B8);
  sub_100001EC4(v7, qword_10000C1B8);
  sub_100004630();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100004610();
}

uint64_t sub_100002BC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6957737365636361;
  v4 = 0xEF7070416E696874;
  v5 = 0x8000000100005050;
  if (v2 != 1)
  {
    v3 = 0xD000000000000012;
    v4 = 0x8000000100005050;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1953460082;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x6957737365636361;
  if (*a2 == 1)
  {
    v5 = 0xEF7070416E696874;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1953460082;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000046F0();
  }

  return v11 & 1;
}

unint64_t sub_100002CD8()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

Swift::Int sub_100002D2C()
{
  v1 = *v0;
  sub_100004700();
  sub_1000046C0();

  return sub_100004710();
}

uint64_t sub_100002DD8()
{
  *v0;
  *v0;
  sub_1000046C0();
}

Swift::Int sub_100002E70()
{
  v1 = *v0;
  sub_100004700();
  sub_1000046C0();

  return sub_100004710();
}

uint64_t sub_100002F18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000432C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100002F48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEF7070416E696874;
  v5 = 0x6957737365636361;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000100005050;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953460082;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100002FB8()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

uint64_t sub_10000300C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C020 != -1)
  {
    swift_once();
  }

  v2 = sub_100001D2C(&qword_10000C158, &qword_100005010);
  v3 = sub_100001EC4(v2, qword_10000C1A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000030C4()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

unint64_t sub_10000311C()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

uint64_t sub_10000317C()
{
  sub_100001E70();
  v1 = sub_100004590();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000031EC()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

unint64_t sub_100003244()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

unint64_t sub_1000032A0()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

uint64_t sub_1000032F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C028 != -1)
  {
    swift_once();
  }

  v2 = sub_100004620();
  v3 = sub_100001EC4(v2, qword_10000C1B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000033F0(uint64_t a1)
{
  v2 = sub_100001D74();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003440()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

unint64_t sub_100003498()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

unint64_t sub_1000034F0()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

uint64_t sub_100003548(uint64_t a1)
{
  v2 = sub_1000032A0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100003598()
{
  result = qword_10000C128;
  if (!qword_10000C128)
  {
    sub_1000035FC(&qword_10000C130, &qword_100004F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C128);
  }

  return result;
}

uint64_t sub_1000035FC(uint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for ControlCenterDeepLinks(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ControlCenterDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000037C4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100004700();
  sub_1000046C0();

  v4 = sub_100004710();

  return sub_100003894(a1, v4);
}

unint64_t sub_100003894(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x6957737365636361;
          v8 = 0xEF7070416E696874;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xD000000000000012;
          v8 = 0x8000000100005050;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v7 != 1953460082)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE400000000000000;
        v7 = 1953460082;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6957737365636361;
      }

      else
      {
        v10 = 0xD000000000000012;
      }

      if (v9 == 1)
      {
        v11 = 0xEF7070416E696874;
      }

      else
      {
        v11 = 0x8000000100005050;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1000046F0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_100003A34(uint64_t a1)
{
  v2 = sub_100001D2C(&qword_10000C168, &qword_100005020);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001D2C(&qword_10000C170, &qword_100005028);
    v8 = sub_1000046D0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000042C4(v10, v6, &qword_10000C168, &qword_100005020);
      v12 = *v6;
      result = sub_1000037C4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100001D2C(&qword_10000C178, &unk_100005030);
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

unint64_t sub_100003C28(uint64_t a1)
{
  v2 = sub_100001D2C(&qword_10000C148, &qword_100005000);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001D2C(&qword_10000C150, &qword_100005008);
    v8 = sub_1000046D0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000042C4(v10, v6, &qword_10000C148, &qword_100005000);
      v12 = *v6;
      result = sub_1000037C4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100004580();
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

unint64_t sub_100003E10()
{
  v0 = sub_100001D2C(&qword_10000C138, &qword_100004FE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v25 - v2;
  v4 = sub_100001D2C(&qword_10000C068, &qword_100004FF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_100004650();
  v26 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100001D2C(&qword_10000C140, &qword_100004FF8);
  v11 = sub_100001D2C(&qword_10000C148, &qword_100005000);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v27 = 2 * v12;
  v14 = swift_allocObject();
  v28 = v14;
  *(v14 + 16) = xmmword_100004CC0;
  v15 = (v14 + v13);
  v16 = *(v11 + 48);
  *v15 = 0;
  v17 = v15;
  sub_100004630();
  v32 = *(v9 + 56);
  v32(v7, 1, 1, v8);
  v29 = "e accessories and scenes";
  sub_100004550();
  v30 = sub_100004560();
  v31 = *(*(v30 - 8) + 56);
  v31(v3, 0, 1, v30);
  sub_100004570();
  v18 = &v17[v12];
  v19 = v17;
  v20 = *(v11 + 48);
  *v18 = 1;
  sub_100004630();
  sub_100004630();
  v21 = v26;
  v32(v7, 0, 1, v26);
  sub_100004550();
  v31(v3, 0, 1, v30);
  sub_100004570();
  v22 = *(v11 + 48);
  v19[v27] = 2;
  sub_100004630();
  sub_100004630();
  v32(v7, 0, 1, v21);
  sub_100004550();
  v31(v3, 0, 1, v30);
  sub_100004570();
  v23 = sub_100003C28(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

uint64_t sub_1000042C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001D2C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000432C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008758;
  v6._object = a2;
  v4 = sub_1000046E0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}