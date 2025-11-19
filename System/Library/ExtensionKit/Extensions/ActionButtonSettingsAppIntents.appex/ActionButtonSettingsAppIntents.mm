uint64_t sub_1000010C0()
{
  v0 = sub_1000014C0(&qword_10000C028, &qword_100004828);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v11 - v3;
  sub_10000146C();
  sub_1000043B8();
  v5 = sub_100004398();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_1000043B8();
  v7 = sub_100004398();
  v6(v4, v0);
  sub_1000014C0(&qword_10000C030, &unk_100004830);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100004770;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_100004388();

  return v9;
}

uint64_t sub_100001298()
{
  v0 = sub_1000043E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_100003834();
  sub_10000146C();
  sub_1000043F8();
  v5 = sub_1000043D8();
  (*(v1 + 8))(v4, v0);
  sub_1000014C0(&qword_10000C020, &qword_100004820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100004780;
  *(v6 + 32) = v5;
  v7 = sub_1000043C8();

  return v7;
}

uint64_t sub_100001400()
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000146C()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

uint64_t sub_1000014C0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000150C()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_100001564()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t sub_1000015B8()
{
  v0 = sub_100004508();
  sub_100003630(v0, qword_10000C188);
  sub_1000035F8(v0, qword_10000C188);
  return sub_1000044F8();
}

void (*sub_100001664(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100004348();
  return sub_1000016D8;
}

void sub_1000016D8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100001724(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004018();
  v5 = sub_100003694();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100001794()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_1000017EC()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_100001844()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

uint64_t sub_100001938(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100004018();
  v7 = sub_10000406C();
  v8 = sub_100003694();
  *v5 = v2;
  v5[1] = sub_100001A04;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100001A04()
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

uint64_t sub_100001B0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003834();
  *a1 = result;
  return result;
}

uint64_t sub_100001B34(uint64_t a1)
{
  v2 = sub_10000146C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100001B74()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100001BCC()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100001C24()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_100001C78()
{
  v0 = sub_1000014C0(&qword_10000C128, &qword_100004FD8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100004508();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000044C8();
  sub_100003630(v7, qword_10000C1A0);
  sub_1000035F8(v7, qword_10000C1A0);
  sub_1000044F8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000044B8();
}

uint64_t sub_100001DF0()
{
  v0 = sub_1000014C0(&qword_10000C120, &qword_100004FD0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_1000014C0(&qword_10000C128, &qword_100004FD8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_100004508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000044F8();
  v11 = *(v9 + 56);
  v9 += 56;
  v11(v7, 1, 1, v8);
  sub_100004408();
  v12 = sub_100004418();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  sub_1000014C0(&qword_10000C130, &qword_100004FE0);
  v13 = *(v9 + 16);
  v14 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_100004840;
  sub_1000044F8();
  sub_1000044F8();
  sub_1000044F8();
  sub_1000044F8();
  sub_1000044F8();
  sub_1000044F8();
  sub_1000044F8();
  sub_1000044F8();
  sub_1000044F8();
  sub_1000044F8();
  sub_1000044F8();
  sub_1000044F8();
  return sub_100004428();
}

uint64_t sub_1000021F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000040E0;

  return sub_100003C08(a1);
}

uint64_t sub_1000022A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000040C0;

  return sub_100003DDC();
}

uint64_t sub_100002344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002404;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100002404(uint64_t a1)
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

unint64_t sub_100002508()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_10000255C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002600;

  return sub_100003B30();
}

uint64_t sub_100002600(uint64_t a1)
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

unint64_t sub_100002718()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100002770()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_1000027C8()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    sub_10000284C(&qword_10000C0A8, qword_100004A98);
    sub_100002770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_10000284C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002894(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100002508();
  *v6 = v2;
  v6[1] = sub_100002948;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100002948()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002A3C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002AE0;

  return sub_100003F78();
}

uint64_t sub_100002AE0(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1 & 1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100002C00()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_100002C54(uint64_t a1)
{
  v2 = sub_100001C24();

  return EntityURLRepresentation.init(stringLiteral:)(0xD000000000000035, 0x8000000100005150, a1, v2);
}

uint64_t sub_100002CB8()
{
  v0 = qword_10000C038;

  return v0;
}

unint64_t sub_100002CF4()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_100002D4C()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_100002DA4()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

uint64_t sub_100002DF8()
{
  sub_100003694();
  v1 = sub_100004458();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100002E68()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

unint64_t sub_100002EC0()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

unint64_t sub_100002F18()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

unint64_t sub_100002F70()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

uint64_t sub_100002FFC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_1000035F8(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000030E8(uint64_t a1)
{
  v2 = sub_100001C24();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003138()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

uint64_t sub_100003190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002948;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100003254(uint64_t a1)
{
  v2 = sub_100002F18();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000032A4()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

Swift::Int sub_1000032F8()
{
  sub_100004548();
  sub_100004528();
  return sub_100004558();
}

Swift::Int sub_10000334C()
{
  sub_100004548();
  sub_100004528();
  return sub_100004558();
}

uint64_t sub_100003390@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008798;
  v7._object = v3;
  v5 = sub_100004538(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100003438(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000284C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_10000349C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v6._object = a2;
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_1000087F8;
  result = sub_100004538(v4, v6);
  *a3 = result != 0;
  return result;
}

uint64_t getEnumTagSinglePayload for ActionButtonSettingsDestination(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ActionButtonSettingsDestination(_WORD *result, int a2, int a3)
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

uint64_t sub_1000035F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003630(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100003694()
{
  result = qword_10000C138;
  if (!qword_10000C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C138);
  }

  return result;
}

char *sub_1000036E8(char *a1, int64_t a2, char a3)
{
  result = sub_100003748(a1, a2, a3, *v3, &qword_10000C140, &qword_100004FF8);
  *v3 = result;
  return result;
}

char *sub_100003718(char *a1, int64_t a2, char a3)
{
  result = sub_100003748(a1, a2, a3, *v3, &qword_10000C148, &qword_100005008);
  *v3 = result;
  return result;
}

char *sub_100003748(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000014C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_100003834()
{
  v20 = sub_100004498();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_1000014C0(&qword_10000C150, &qword_100005018) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_1000014C0(&qword_10000C128, &qword_100004FD8);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_100004508();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_1000014C0(&qword_10000C158, &unk_100005020);
  sub_1000044F8();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 1;
  v17 = sub_100004338();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_100001C24();
  return sub_100004378();
}

uint64_t sub_100003B4C()
{
  sub_1000036E8(0, 1, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_1000036E8((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

id sub_100003C28()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    while (1)
    {
      result = MobileGestalt_get_current_device();
      if (!result)
      {
        break;
      }

      v6 = result;
      ringerButtonCapability = MobileGestalt_get_ringerButtonCapability();

      if (ringerButtonCapability)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100003718(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v3 = _swiftEmptyArrayStorage[2];
        v2 = _swiftEmptyArrayStorage[3];
        v4 = v3 + 1;
        if (v3 >= v2 >> 1)
        {
          sub_100003718((v2 > 1), v3 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v4;
      }

      if (!--v1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v8 = _swiftEmptyArrayStorage[2];
    if (v8)
    {
      sub_1000036E8(0, v8, 0);
      v9 = _swiftEmptyArrayStorage[2];
      do
      {
        v10 = _swiftEmptyArrayStorage[3];
        v11 = v9 + 1;
        if (v9 >= v10 >> 1)
        {
          sub_1000036E8((v10 > 1), v9 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11;
        v9 = v11;
        --v8;
      }

      while (v8);
    }

    v12 = *(v0 + 8);

    return v12(_swiftEmptyArrayStorage);
  }

  return result;
}

id sub_100003DF8()
{
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  ringerButtonCapability = MobileGestalt_get_ringerButtonCapability();

  if (ringerButtonCapability)
  {
    sub_100003718(0, 1, 1);
    v5 = _swiftEmptyArrayStorage[2];
    v4 = _swiftEmptyArrayStorage[3];
    v6 = v5 + 1;
    if (v5 >= v4 >> 1)
    {
      sub_100003718((v4 > 1), v5 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v6;
    goto LABEL_7;
  }

  v6 = _swiftEmptyArrayStorage[2];
  if (v6)
  {
LABEL_7:
    sub_1000036E8(0, v6, 0);
    v7 = _swiftEmptyArrayStorage[2];
    do
    {
      v8 = _swiftEmptyArrayStorage[3];
      v9 = v7 + 1;
      if (v7 >= v8 >> 1)
      {
        sub_1000036E8((v8 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9;
      v7 = v9;
      --v6;
    }

    while (v6);
  }

  v10 = *(v0 + 8);

  return v10(_swiftEmptyArrayStorage);
}

id sub_100003F94()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    ringerButtonCapability = MobileGestalt_get_ringerButtonCapability();

    v4 = *(v0 + 8);

    return v4(ringerButtonCapability ^ 1u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100004018()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

unint64_t sub_10000406C()
{
  result = qword_10000C168;
  if (!qword_10000C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C168);
  }

  return result;
}

uint64_t sub_1000040E4(uint64_t a1)
{
  v2 = sub_100004234();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000418C();
  sub_100004518();
  return 0;
}

unint64_t sub_10000418C()
{
  result = qword_10000C170;
  if (!qword_10000C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C170);
  }

  return result;
}

unint64_t sub_100004234()
{
  result = qword_10000C178;
  if (!qword_10000C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C178);
  }

  return result;
}