uint64_t sub_1000013B0()
{
  v0 = sub_100001DE4(&qword_10000C0E0, &qword_100005B40);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v15 - v3;
  sub_100001D90();
  sub_100005688();
  v18 = sub_100005618();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100005688();
  v17 = sub_100005618();
  v5(v4, v0);
  sub_100005688();
  v16 = sub_100005618();
  v5(v4, v0);
  sub_100005688();
  v15 = sub_100005618();
  v5(v4, v0);
  sub_100005688();
  v6 = sub_100005618();
  v5(v4, v0);
  sub_100005688();
  v7 = sub_100005618();
  v5(v4, v0);
  sub_100005688();
  v8 = sub_100005618();
  v5(v4, v0);
  sub_100005688();
  v9 = sub_100005618();
  v5(v4, v0);
  sub_100001DE4(&qword_10000C0E8, qword_100005B48);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100005A50;
  v11 = v17;
  *(v10 + 32) = v18;
  *(v10 + 40) = v11;
  v12 = v15;
  *(v10 + 48) = v16;
  *(v10 + 56) = v12;
  *(v10 + 64) = v6;
  *(v10 + 72) = v7;
  *(v10 + 80) = v8;
  *(v10 + 88) = v9;
  v13 = sub_100005608();

  return v13;
}

uint64_t sub_100001758()
{
  v0 = sub_100005678();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100001E2C();
  sub_1000055F8();

  sub_100001D90();
  sub_100005668();
  v5 = sub_100005658();
  (*(v1 + 8))(v4, v0);
  sub_100001DE4(&qword_10000C0D8, &qword_100005B38);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005A60;
  *(v6 + 32) = v5;
  v7 = sub_100005648();

  return v7;
}

uint64_t sub_1000018C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100005588();
  *a2 = v5;
  return result;
}

uint64_t sub_100001904(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100005598();
}

uint64_t sub_10000193C()
{
  v0 = sub_100005638();
  sub_100001DE4(&qword_10000C0C0, &qword_100005B00);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100005A60;
  *(v1 + 32) = v0;
  v2 = sub_100005628();

  return v2;
}

uint64_t sub_1000019C4()
{
  v0 = sub_100005638();
  v1 = sub_100005638();
  v2 = sub_100005638();
  v3 = sub_100005638();
  sub_100001DE4(&qword_10000C0C0, &qword_100005B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100005A70;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_100005628();

  return v5;
}

uint64_t sub_100001ACC()
{
  v0 = sub_1000056B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_1000048B0();
  sub_100001D90();
  sub_1000056C8();
  v5 = sub_1000056A8();
  (*(v1 + 8))(v4, v0);
  sub_100001DE4(&qword_10000C0C8, &qword_100005B08);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005A60;
  *(v6 + 32) = v5;
  v7 = sub_100005698();

  return v7;
}

uint64_t sub_100001C34()
{
  v0 = sub_1000055E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001D90();
  sub_1000055D8();
  v5 = sub_1000055C8();
  (*(v1 + 8))(v4, v0);
  sub_100001DE4(&qword_10000C0B8, &qword_100005AF8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005A60;
  *(v6 + 32) = v5;
  v7 = sub_1000055B8();

  return v7;
}

unint64_t sub_100001D90()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_100001DE4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001E2C()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_100001E80(uint64_t a1)
{
  v2 = sub_100001FD4();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001F2C();
  sub_100005828();
  return 0;
}

unint64_t sub_100001F2C()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

unint64_t sub_100001FD4()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

uint64_t sub_10000206C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x535F4547414E414DLL;
  v4 = 0xEE00474E49524148;
  if (v2 != 1)
  {
    v3 = 0x434E454752454D45;
    v4 = 0xEF54455345525F59;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746F6F7223;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x535F4547414E414DLL;
  v8 = 0xEE00474E49524148;
  if (*a2 != 1)
  {
    v7 = 0x434E454752454D45;
    v8 = 0xEF54455345525F59;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746F6F7223;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100005858();
  }

  return v11 & 1;
}

unint64_t sub_1000021A0()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

Swift::Int sub_1000021F4()
{
  v1 = *v0;
  sub_100005868();
  sub_100005838();

  return sub_100005878();
}

uint64_t sub_1000022AC()
{
  *v0;
  *v0;
  sub_100005838();
}

Swift::Int sub_100002350()
{
  v1 = *v0;
  sub_100005868();
  sub_100005838();

  return sub_100005878();
}

uint64_t sub_100002404@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100004D48(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100002434(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEE00474E49524148;
  v5 = 0x535F4547414E414DLL;
  if (v2 != 1)
  {
    v5 = 0x434E454752454D45;
    v4 = 0xEF54455345525F59;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746F6F7223;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000024EC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002544()
{
  v1 = 0x535F4547414E414DLL;
  if (*v0 != 1)
  {
    v1 = 0x434E454752454D45;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746F6F7223;
  }
}

uint64_t sub_1000025B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100004D48(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100002600()
{
  result = qword_10000C138;
  if (!qword_10000C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C138);
  }

  return result;
}

unint64_t sub_100002658()
{
  result = qword_10000C140;
  if (!qword_10000C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C140);
  }

  return result;
}

unint64_t sub_1000026B0()
{
  result = qword_10000C148;
  if (!qword_10000C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C148);
  }

  return result;
}

uint64_t sub_100002704()
{
  v0 = sub_100001DE4(&qword_10000C1F8, &qword_100006410);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100005818();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000057D8();
  sub_100004CE4(v7, qword_10000D300);
  sub_100004CAC(v7, qword_10000D300);
  sub_100005808();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000057C8();
}

uint64_t sub_100002878(char a1)
{
  v2 = sub_100001DE4(&qword_10000C220, &qword_100006420);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - v4;
  v6 = sub_100001DE4(&qword_10000C1F8, &qword_100006410);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - v8;
  v10 = sub_100005818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  sub_100005808();
  sub_100005808();
  if (a1)
  {
    (*(v11 + 56))(v9, 0, 1, v10);
    sub_1000056D8();
    v14 = sub_1000056E8();
    (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  }

  else
  {
    v16 = *(v11 + 56);
    v15 = v11 + 56;
    v16(v9, 0, 1, v10);
    sub_1000056D8();
    v17 = sub_1000056E8();
    (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
    sub_100001DE4(&qword_10000C228, &qword_100006428);
    v18 = *(v15 + 16);
    v19 = (*(v15 + 24) + 32) & ~*(v15 + 24);
    *(swift_allocObject() + 16) = xmmword_100005A60;
    sub_100005808();
  }

  sub_100005808();
  return sub_1000056F8();
}

uint64_t sub_100002D3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005470;

  return sub_100005218(a1);
}

uint64_t sub_100002DE4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005448;

  return sub_100004F08();
}

uint64_t sub_100002E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002F48;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100002F48(uint64_t a1)
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

unint64_t sub_10000304C()
{
  result = qword_10000C150;
  if (!qword_10000C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C150);
  }

  return result;
}

uint64_t sub_1000030A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003144;

  return sub_100004D94();
}

uint64_t sub_100003144(uint64_t a1)
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

unint64_t sub_10000325C()
{
  result = qword_10000C158;
  if (!qword_10000C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C158);
  }

  return result;
}

unint64_t sub_1000032B8()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    sub_1000024EC(&qword_10000C168, qword_100005DD8);
    sub_100001E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

uint64_t sub_10000333C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000304C();
  *v6 = v2;
  v6[1] = sub_1000033F0;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000033F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000034E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000033F0;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1000035A4()
{
  result = qword_10000C170;
  if (!qword_10000C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C170);
  }

  return result;
}

uint64_t sub_1000035F8()
{
  v0 = sub_100001DE4(&qword_10000C230, &qword_100006430);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100001DE4(&qword_10000C238, &qword_100006438);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000026B0();
  sub_1000057A8();
  v9._object = 0x8000000100006B00;
  v9._countAndFlagsBits = 0xD000000000000049;
  sub_100005798(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100005788();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100005798(v10);
  return sub_1000057B8();
}

uint64_t sub_1000037BC()
{
  v0 = qword_10000C100;

  return v0;
}

unint64_t sub_1000037F4()
{
  result = qword_10000C178;
  if (!qword_10000C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C178);
  }

  return result;
}

unint64_t sub_10000384C()
{
  result = qword_10000C180;
  if (!qword_10000C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C180);
  }

  return result;
}

unint64_t sub_1000038A4()
{
  result = qword_10000C188;
  if (!qword_10000C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C188);
  }

  return result;
}

unint64_t sub_1000038FC()
{
  result = qword_10000C190;
  if (!qword_10000C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C190);
  }

  return result;
}

uint64_t sub_100003950()
{
  sub_100004C58();
  v1 = sub_100005748();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000039C0()
{
  result = qword_10000C198;
  if (!qword_10000C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C198);
  }

  return result;
}

unint64_t sub_100003A18()
{
  result = qword_10000C1A0;
  if (!qword_10000C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A0);
  }

  return result;
}

unint64_t sub_100003A70()
{
  result = qword_10000C1A8;
  if (!qword_10000C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A8);
  }

  return result;
}

unint64_t sub_100003AC8()
{
  result = qword_10000C1B0;
  if (!qword_10000C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B0);
  }

  return result;
}

uint64_t sub_100003BA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000024EC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003BEC(uint64_t a1)
{
  v2 = sub_1000026B0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003C3C()
{
  result = qword_10000C1C8;
  if (!qword_10000C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C8);
  }

  return result;
}

uint64_t sub_100003C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005444;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100003D5C(uint64_t a1)
{
  v2 = sub_100003A70();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100003DAC()
{
  result = qword_10000C1D0;
  if (!qword_10000C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D0);
  }

  return result;
}

uint64_t sub_100003E04()
{
  v0 = sub_100005818();
  sub_100004CE4(v0, qword_10000D318);
  sub_100004CAC(v0, qword_10000D318);
  return sub_100005808();
}

uint64_t sub_100003E68@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100005588();
  *a1 = v5;
  return result;
}

uint64_t sub_100003EA4(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100005598();
}

void (*sub_100003EDC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100005578();
  return sub_100003F50;
}

void sub_100003F50(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100003F9C()
{
  result = qword_10000C1D8;
  if (!qword_10000C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D8);
  }

  return result;
}

uint64_t sub_100003FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004BB0();
  v5 = sub_100004C58();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100004060()
{
  v0 = qword_10000C110;

  return v0;
}

unint64_t sub_1000040A0()
{
  result = qword_10000C1E0;
  if (!qword_10000C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E0);
  }

  return result;
}

unint64_t sub_1000040F8()
{
  result = qword_10000C1E8;
  if (!qword_10000C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E8);
  }

  return result;
}

uint64_t sub_1000041D8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100004CAC(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000042A0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100004BB0();
  v8 = sub_100004C04();
  v9 = sub_100004C58();
  *v6 = v2;
  v6[1] = sub_100004374;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100004374()
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

uint64_t sub_10000447C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000048B0();
  *a1 = result;
  return result;
}

uint64_t sub_1000044A4(uint64_t a1)
{
  v2 = sub_100001D90();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100004524(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1000045B8(uint64_t result, unsigned int a2, unsigned int a3)
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

char *sub_100004688(char *a1, int64_t a2, char a3)
{
  result = sub_1000046C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000046A8(char *a1, int64_t a2, char a3)
{
  result = sub_1000047BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000046C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DE4(&qword_10000C240, &qword_100006448);
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

char *sub_1000047BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DE4(&qword_10000C248, &qword_100006458);
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

uint64_t sub_1000048B0()
{
  v20 = sub_100005738();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100001DE4(&qword_10000C1F0, &qword_100006408) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100001DE4(&qword_10000C1F8, &qword_100006410);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_100005818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100001DE4(&qword_10000C200, &qword_100006418);
  sub_100005808();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 3;
  v17 = sub_100005568();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_1000026B0();
  return sub_1000055A8();
}

unint64_t sub_100004BB0()
{
  result = qword_10000C208;
  if (!qword_10000C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C208);
  }

  return result;
}

unint64_t sub_100004C04()
{
  result = qword_10000C210;
  if (!qword_10000C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C210);
  }

  return result;
}

unint64_t sub_100004C58()
{
  result = qword_10000C218;
  if (!qword_10000C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C218);
  }

  return result;
}

uint64_t sub_100004CAC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004CE4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100004D48(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000088D0;
  v6._object = a2;
  v4 = sub_100005848(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100004DB0()
{
  sub_100004688(0, 3, 0);
  v2 = *(&_swiftEmptyArrayStorage + 2);
  v1 = *(&_swiftEmptyArrayStorage + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_100004688((v1 > 1), v2 + 1, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v4;
  *(&_swiftEmptyArrayStorage + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_100004688((v1 > 1), v2 + 2, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v5;
  *(&_swiftEmptyArrayStorage + v4 + 32) = 1;
  if (v3 < (v2 + 3))
  {
    sub_100004688((v1 > 1), v2 + 3, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v2 + 3;
  *(&_swiftEmptyArrayStorage + v5 + 32) = 2;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100004F24()
{
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (!v3)
  {
    sub_1000046A8(0, 1, 1);
    v5 = *(&_swiftEmptyArrayStorage + 2);
    v4 = *(&_swiftEmptyArrayStorage + 3);
    if (v5 >= v4 >> 1)
    {
      sub_1000046A8((v4 > 1), v5 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v5 + 1;
    *(&_swiftEmptyArrayStorage + v5 + 32) = 0;
  }

  v6 = [v1 currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (!v7)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000046A8(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v9 = *(&_swiftEmptyArrayStorage + 2);
    v8 = *(&_swiftEmptyArrayStorage + 3);
    if (v9 >= v8 >> 1)
    {
      sub_1000046A8((v8 > 1), v9 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v9 + 1;
    *(&_swiftEmptyArrayStorage + v9 + 32) = 1;
  }

  v10 = [v1 currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11)
  {
    v12 = *(&_swiftEmptyArrayStorage + 2);
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000046A8(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v14 = *(&_swiftEmptyArrayStorage + 2);
    v13 = *(&_swiftEmptyArrayStorage + 3);
    v12 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      sub_1000046A8((v13 > 1), v14 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v12;
    *(&_swiftEmptyArrayStorage + v14 + 32) = 2;
  }

  sub_100004688(0, v12, 0);
  v15 = *(&_swiftEmptyArrayStorage + 2);
  v16 = 32;
  do
  {
    v17 = *(&_swiftEmptyArrayStorage + v16);
    v18 = *(&_swiftEmptyArrayStorage + 3);
    if (v15 >= v18 >> 1)
    {
      sub_100004688((v18 > 1), v15 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v15 + 1;
    *(&_swiftEmptyArrayStorage + v15 + 32) = v17;
    ++v16;
    ++v15;
    --v12;
  }

  while (v12);
LABEL_23:

  v19 = *(v0 + 8);

  return v19(&_swiftEmptyArrayStorage);
}

uint64_t sub_100005238()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = objc_opt_self();
    do
    {
      v8 = *v3++;
      v7 = v8;
      v9 = [v4 currentDevice];
      v10 = [v9 userInterfaceIdiom];

      if (!v10)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000046A8(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v6 = *(&_swiftEmptyArrayStorage + 2);
        v5 = *(&_swiftEmptyArrayStorage + 3);
        if (v6 >= v5 >> 1)
        {
          sub_1000046A8((v5 > 1), v6 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v6 + 1;
        *(&_swiftEmptyArrayStorage + v6 + 32) = v7;
      }

      --v2;
    }

    while (v2);
  }

  v11 = *(&_swiftEmptyArrayStorage + 2);
  if (v11)
  {
    sub_100004688(0, v11, 0);
    v12 = *(&_swiftEmptyArrayStorage + 2);
    v13 = 32;
    do
    {
      v14 = *(&_swiftEmptyArrayStorage + v13);
      v15 = *(&_swiftEmptyArrayStorage + 3);
      if (v12 >= v15 >> 1)
      {
        sub_100004688((v15 > 1), v12 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v12 + 1;
      *(&_swiftEmptyArrayStorage + v12 + 32) = v14;
      ++v13;
      ++v12;
      --v11;
    }

    while (v11);
  }

  v16 = *(v18 + 8);

  return v16(&_swiftEmptyArrayStorage);
}