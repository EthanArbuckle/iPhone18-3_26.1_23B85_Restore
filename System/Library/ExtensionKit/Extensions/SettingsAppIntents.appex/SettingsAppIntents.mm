unint64_t sub_100001084()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

unint64_t sub_1000010DC()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

uint64_t sub_100001130()
{
  v0 = sub_100004080();
  sub_100001D0C(v0, qword_10000C170);
  sub_100001CD4(v0, qword_10000C170);
  return sub_100004070();
}

void (*sub_1000011E8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100003F10();
  return sub_10000125C;
}

void sub_10000125C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000012A8()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

uint64_t sub_1000012FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001BD8();
  v5 = sub_100001C80();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000136C()
{
  v0 = qword_10000C008;

  return v0;
}

unint64_t sub_1000013AC()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_100001404()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_10000145C()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

uint64_t sub_100001500@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_100004080();
  v3 = sub_100001CD4(v2, qword_10000C170);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000015A8(uint64_t a1)
{
  v2 = sub_100001BD8();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1000015FC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100001BD8();
  v7 = sub_100001C2C();
  v8 = sub_100001C80();
  *v5 = v2;
  v5[1] = sub_1000016C8;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000016C8()
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

uint64_t sub_1000017D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100001844();
  *a1 = result;
  return result;
}

uint64_t sub_1000017F8(uint64_t a1)
{
  v2 = sub_1000012A8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100001844()
{
  v20 = sub_100004010();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100001B3C(&qword_10000C050, &qword_1000044B8) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100001B3C(&qword_10000C058, &qword_1000044C0);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_100004080();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100001B3C(&qword_10000C060, qword_1000044C8);
  sub_100004070();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 1;
  v17 = sub_100003F00();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_100001B84();
  return sub_100003F40();
}

uint64_t sub_100001B3C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001B84()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_100001BD8()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100001C2C()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100001C80()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_100001CD4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100001D0C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100001D74(uint64_t a1)
{
  v2 = sub_100001EC8();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001E20();
  sub_100004090();
  return 0;
}

unint64_t sub_100001E20()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_100001EC8()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100001F30()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_100001F84()
{
  v0 = sub_100001B3C(&qword_10000C058, &qword_1000044C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100004080();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100004040();
  sub_100001D0C(v7, qword_10000C188);
  sub_100001CD4(v7, qword_10000C188);
  sub_100004070();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100004030();
}

uint64_t sub_1000020F0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002194;

  return sub_1000039F4();
}

uint64_t sub_100002194(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_1000022AC()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

unint64_t sub_100002304()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_10000235C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003AE8;

  return sub_10000368C(a1);
}

uint64_t sub_100002404(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003AD0;

  return sub_100003670();
}

uint64_t sub_1000024A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002568;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100002568(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_10000266C()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_1000026C4()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

unint64_t sub_10000271C()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    sub_1000027A0(&qword_10000C0D8, qword_100004628);
    sub_1000026C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_1000027A0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000027E8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100001F30();
  *v6 = v2;
  v6[1] = sub_10000289C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000289C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002990(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002A34;

  return sub_10000378C();
}

uint64_t sub_100002A34(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1 & 1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100002B54()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

uint64_t sub_100002BA8()
{
  v0 = sub_100001B3C(&qword_10000C140, &qword_1000049E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100001B3C(&qword_10000C148, &qword_1000049F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100001B84();
  sub_100003FF0();
  v9._object = 0x8000000100004BB0;
  v9._countAndFlagsBits = 0xD000000000000028;
  sub_100003FE0(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100003FD0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100003FE0(v10);
  return sub_100004000();
}

uint64_t sub_100002D6C()
{
  v0 = qword_10000C098;

  return v0;
}

unint64_t sub_100002DA8()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

unint64_t sub_100002E00()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

unint64_t sub_100002E58()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

uint64_t sub_100002EAC()
{
  sub_100001C80();
  v1 = sub_100003FA0();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100002F1C()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

unint64_t sub_100002F74()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

unint64_t sub_100002FCC()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

unint64_t sub_100003024()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

uint64_t sub_100003078@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C018 != -1)
  {
    swift_once();
  }

  v2 = sub_100004040();
  v3 = sub_100001CD4(v2, qword_10000C188);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100003124()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    sub_1000027A0(&qword_10000C128, &qword_1000048C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

uint64_t sub_100003188(uint64_t a1)
{
  v2 = sub_100001B84();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000031D8()
{
  result = qword_10000C130;
  if (!qword_10000C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C130);
  }

  return result;
}

uint64_t sub_10000322C()
{
  v0 = sub_100001B3C(&qword_10000C138, &unk_1000049D8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100001B3C(&qword_10000C058, &qword_1000044C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_100004080();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100004070();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_100003F50();
  v11 = sub_100003F60();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_100003F70();
}

uint64_t sub_10000342C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000289C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000034F0(uint64_t a1)
{
  v2 = sub_100002FCC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

char *sub_10000355C(char *a1, int64_t a2, char a3)
{
  result = sub_10000357C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000357C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B3C(&qword_10000C150, &qword_100004A08);
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

uint64_t sub_1000036AC()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    sub_10000355C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v3 = _swiftEmptyArrayStorage[2];
    do
    {
      v8 = v2;
      v4 = v2[3];
      v5 = v3 + 1;
      if (v3 >= v4 >> 1)
      {
        sub_10000355C((v4 > 1), v3 + 1, 1);
        v2 = v8;
      }

      v2[2] = v5;
      v3 = v5;
      --v1;
    }

    while (v1);
  }

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_10000378C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000382C;

  return sub_100003670();
}

uint64_t sub_10000382C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {

    v7 = *(v6 + 8);

    return v7(1);
  }

  else
  {
    *(v4 + 24) = a1;

    return _swift_task_switch(sub_100003984, 0, 0);
  }
}

uint64_t sub_100003984()
{
  v1 = *(*(v0 + 24) + 16);

  v2 = *(v0 + 8);

  return v2(v1 == 0);
}

uint64_t sub_100003A10()
{
  sub_10000355C(0, 1, 0);
  v2 = *(&_swiftEmptyArrayStorage + 2);
  v1 = *(&_swiftEmptyArrayStorage + 3);
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_10000355C((v1 > 1), v2 + 1, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_100003AF0()
{
  result = qword_10000C158;
  if (!qword_10000C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C158);
  }

  return result;
}

Swift::Int sub_100003B44()
{
  sub_1000040C0();
  sub_1000040A0();
  return sub_1000040D0();
}

Swift::Int sub_100003BB8()
{
  sub_1000040C0();
  sub_1000040A0();
  return sub_1000040D0();
}

uint64_t sub_100003C0C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008768;
  v7._object = v3;
  v5 = sub_1000040B0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100003C84()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    sub_1000027A0(&qword_10000C168, qword_100004AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

Swift::Int sub_100003D14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v6._object = a2;
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_1000087C8;
  result = sub_1000040B0(v4, v6);
  *a3 = result != 0;
  return result;
}

uint64_t getEnumTagSinglePayload for SettingsDeepLinkDestination(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SettingsDeepLinkDestination(_WORD *result, int a2, int a3)
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