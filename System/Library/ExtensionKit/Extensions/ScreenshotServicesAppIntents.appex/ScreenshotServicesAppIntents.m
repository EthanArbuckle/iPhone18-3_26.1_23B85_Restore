id sub_1000013B8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001414(uint64_t a1)
{
  v2 = sub_100001568();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000014C0();
  sub_100005254();
  return 0;
}

unint64_t sub_1000014C0()
{
  result = qword_10000C1D0;
  if (!qword_10000C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D0);
  }

  return result;
}

unint64_t sub_100001568()
{
  result = qword_10000C1D8;
  if (!qword_10000C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D8);
  }

  return result;
}

unint64_t sub_1000015D0()
{
  result = qword_10000C1F0;
  if (!qword_10000C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F0);
  }

  return result;
}

uint64_t sub_100001624()
{
  v0 = sub_100004C64(&qword_10000C370, &qword_100005DB8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100005244();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100005204();
  sub_100004DD0(v7, qword_10000D360);
  sub_100004D98(v7, qword_10000D360);
  sub_100005234();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000051F4();
}

uint64_t sub_100001794()
{
  v1 = (*(*(sub_100004C64(&qword_10000C398, &qword_100005DC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v3 = &v20 - v2;
  v4 = *(*(sub_100004C64(&qword_10000C370, &qword_100005DB8) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100005244();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = *v0;
  sub_100001A94();
  sub_100005234();
  (*(v11 + 56))(v7, 0, 1, v10);
  sub_100004EF4(v7, v9);
  v14 = *(type metadata accessor for ScreenshotServicesSettingsDeepLink() + 20);
  v15 = sub_100005124();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v3, &v0[v14], v15);
  (*(v16 + 56))(v3, 0, 1, v15);
  if (!v13)
  {
    sub_100004C64(&qword_10000C3A0, &qword_100005DD0);
    v17 = *(v11 + 72);
    v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_100005600;
    sub_100005234();
  }

  return sub_100005134();
}

uint64_t sub_100001B6C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100001C0C;

  return sub_100004530(&off_100008790, 1);
}

uint64_t sub_100001C0C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100001D0C, 0, 0);
}

uint64_t sub_100001D0C()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for ScreenshotServicesSettingsDeepLink();
    v4 = *(v3 - 8);
    sub_100004E34(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);

    v5 = 0;
  }

  else
  {
    v6 = v0[4];

    v3 = type metadata accessor for ScreenshotServicesSettingsDeepLink();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[2], v5, 1, v3);
  v7 = v0[1];

  return v7();
}

uint64_t sub_100001E34(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100001ED4;

  return sub_100004530(&off_1000087E0, 0);
}

uint64_t sub_100001ED4(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100001FF0()
{
  result = qword_10000C1F8;
  if (!qword_10000C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F8);
  }

  return result;
}

unint64_t sub_100002048()
{
  result = qword_10000C200;
  if (!qword_10000C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C200);
  }

  return result;
}

uint64_t type metadata accessor for ScreenshotServicesSettingsDeepLink()
{
  result = qword_10000C328;
  if (!qword_10000C328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000211C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000021B4;

  return sub_100004530(a1, 1);
}

uint64_t sub_1000021B4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000022B4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100004FD0;

  return sub_100004530(&off_100008790, 1);
}

uint64_t sub_100002354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002414;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100002414(uint64_t a1)
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

unint64_t sub_100002518()
{
  result = qword_10000C210;
  if (!qword_10000C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C210);
  }

  return result;
}

unint64_t sub_1000025A4()
{
  result = qword_10000C220;
  if (!qword_10000C220)
  {
    sub_100002644(&qword_10000C228, qword_1000056C8);
    sub_100004D54(&qword_10000C218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C220);
  }

  return result;
}

uint64_t sub_100002644(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000268C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000015D0();
  *v6 = v2;
  v6[1] = sub_100002740;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100002740()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002834(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002740;

  return sub_100001B6C(a1);
}

uint64_t sub_100002908()
{
  v0 = sub_100004C64(&qword_10000C3A8, &qword_100005DD8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100004C64(&qword_10000C3B0, &qword_100005DE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100004D54(&qword_10000C208);
  sub_1000051B4();
  v9._object = 0x8000000100005FD0;
  v9._countAndFlagsBits = 0xD00000000000003FLL;
  sub_1000051A4(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100005194();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000051A4(v10);
  return sub_1000051C4();
}

uint64_t sub_100002AE8()
{
  v0 = qword_10000C1E0;

  return v0;
}

unint64_t sub_100002B8C()
{
  result = qword_10000C250;
  if (!qword_10000C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C250);
  }

  return result;
}

uint64_t sub_100002BE0()
{
  sub_100004D54(&qword_10000C390);
  v1 = sub_100005164();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100002D08()
{
  result = qword_10000C270;
  if (!qword_10000C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C270);
  }

  return result;
}

uint64_t sub_100002DE4(uint64_t a1)
{
  v2 = sub_100004D54(&qword_10000C208);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100002E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100004FCC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100002F48(uint64_t a1)
{
  v2 = sub_100004D54(&qword_10000C268);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100002FC0()
{
  result = qword_10000C290;
  if (!qword_10000C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C290);
  }

  return result;
}

uint64_t sub_100003014(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE100000000000000;
  v4 = 47;
  v5 = 0x79616C5072614323;
  v6 = 0x4874616D726F4623;
  if (a1 != 4)
  {
    v6 = 0x5374616D726F4623;
  }

  if (a1 == 3)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v5 = v6;
    v7 = 0xEA00000000005244;
  }

  v8 = 0xD000000000000013;
  v9 = 0x8000000100005E20;
  if (a1 != 1)
  {
    v8 = 0x4C6C617573695623;
    v9 = 0xED000070556B6F6FLL;
  }

  if (a1)
  {
    v4 = v8;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xE800000000000000;
      v12 = 0x79616C5072614323;
    }

    else
    {
      if (a2 == 4)
      {
        v12 = 0x4874616D726F4623;
      }

      else
      {
        v12 = 0x5374616D726F4623;
      }

      v13 = 0xEA00000000005244;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xD000000000000013;
      v13 = 0x8000000100005E20;
    }

    else
    {
      v12 = 0x4C6C617573695623;
      v13 = 0xED000070556B6F6FLL;
    }
  }

  else
  {
    v13 = 0xE100000000000000;
    v12 = 47;
  }

  if (v10 == v12 && v11 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_100005284();
  }

  return v14 & 1;
}

Swift::Int sub_1000031F0()
{
  sub_100005294();
  sub_100005264();

  return sub_1000052A4();
}

uint64_t sub_100003304()
{
  *v0;
  *v0;
  *v0;
  sub_100005264();
}

Swift::Int sub_100003408()
{
  sub_100005294();
  sub_100005264();

  return sub_1000052A4();
}

uint64_t sub_100003518@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000487C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100003548(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 47;
  v5 = 0xE800000000000000;
  v6 = 0x79616C5072614323;
  v7 = 0x4874616D726F4623;
  if (v2 != 4)
  {
    v7 = 0x5374616D726F4623;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xEA00000000005244;
  }

  v8 = 0x8000000100005E20;
  v9 = 0xD000000000000013;
  if (v2 != 1)
  {
    v9 = 0x4C6C617573695623;
    v8 = 0xED000070556B6F6FLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_100003658(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002644(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000036B0()
{
  v1 = *v0;
  v2 = 47;
  v3 = 0x79616C5072614323;
  v4 = 0x4874616D726F4623;
  if (v1 != 4)
  {
    v4 = 0x5374616D726F4623;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0x4C6C617573695623;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100003778@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10000487C(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1000037C4()
{
  result = qword_10000C2A8;
  if (!qword_10000C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2A8);
  }

  return result;
}

uint64_t sub_10000384C()
{
  v0 = sub_100005244();
  sub_100004DD0(v0, qword_10000D378);
  sub_100004D98(v0, qword_10000D378);
  return sub_100005234();
}

uint64_t sub_1000038D4(uint64_t a1)
{
  v3 = type metadata accessor for ScreenshotServicesSettingsDeepLink();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_100004E34(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000050F4();
  return sub_100004E98(a1);
}

void (*sub_100003964(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_1000050D4();
  return sub_1000039D8;
}

void sub_1000039D8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100003A28()
{
  result = qword_10000C2B0;
  if (!qword_10000C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2B0);
  }

  return result;
}

uint64_t sub_100003A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CAC();
  v5 = sub_100004D54(&qword_10000C390);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100003B04()
{
  result = qword_10000C2B8;
  if (!qword_10000C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2B8);
  }

  return result;
}

unint64_t sub_100003B5C()
{
  result = qword_10000C2C0;
  if (!qword_10000C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2C0);
  }

  return result;
}

unint64_t sub_100003BB4()
{
  result = qword_10000C2C8;
  if (!qword_10000C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2C8);
  }

  return result;
}

uint64_t sub_100003C90@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100004D98(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100003D38(uint64_t a1)
{
  v2 = sub_100004CAC();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_100003D8C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100004CAC();
  v7 = sub_100004D00();
  v8 = sub_100004D54(&qword_10000C390);
  *v5 = v2;
  v5[1] = sub_100003E74;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100003E74()
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

uint64_t sub_100003F7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000048C8();
  *a1 = result;
  return result;
}

uint64_t sub_100003FA4(uint64_t a1)
{
  v2 = sub_100003A28();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for ScreenshotServicesSettingsDeepLinkDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenshotServicesSettingsDeepLinkDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100004174(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100005124();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_10000422C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = sub_100005124();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000042CC()
{
  result = sub_100005124();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

size_t sub_100004358(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004C64(&qword_10000C3B8, qword_100005DF8);
  v10 = *(type metadata accessor for ScreenshotServicesSettingsDeepLink() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ScreenshotServicesSettingsDeepLink() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100004530(uint64_t a1, char a2)
{
  *(v2 + 56) = a2;
  *(v2 + 16) = a1;
  v3 = type metadata accessor for ScreenshotServicesSettingsDeepLink();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100004600, 0, 0);
}

uint64_t sub_100004600()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (*(v0 + 56) == 1)
  {
    if (v2)
    {
      v4 = *(v0 + 24);
      v3 = *(v0 + 32);
      v5 = (v1 + 32);
      v6 = &_swiftEmptyArrayStorage;
      while (1)
      {
        v9 = *v5++;
        v8 = v9;
        v10 = v9 >= 2;
        if (v9 > 2)
        {
          if (v8 == 3)
          {
            if (_SSCarPlayEnabled())
            {
              goto LABEL_15;
            }
          }

          else if (_SSHDRCaptureSupported())
          {
            goto LABEL_15;
          }
        }

        else if (!v10 || _SSVisualIntelligenceV2EnabledIgnoringOrientation())
        {
LABEL_15:
          **(v0 + 48) = v8;
          v11 = *(v4 + 20);
          sub_100005114();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_100004358(0, v6[2] + 1, 1, v6);
          }

          v13 = v6[2];
          v12 = v6[3];
          if (v13 >= v12 >> 1)
          {
            v6 = sub_100004358(v12 > 1, v13 + 1, 1, v6);
          }

          v7 = *(v0 + 48);
          v6[2] = v13 + 1;
          sub_100004F64(v7, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13);
        }

        if (!--v2)
        {
          goto LABEL_28;
        }
      }
    }

    goto LABEL_27;
  }

  if (!v2)
  {
LABEL_27:
    v6 = &_swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v15 = *(v0 + 24);
  v14 = *(v0 + 32);
  v16 = (v1 + 32);
  v6 = &_swiftEmptyArrayStorage;
  do
  {
    v17 = *v16++;
    **(v0 + 40) = v17;
    v18 = *(v15 + 20);
    sub_100005114();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100004358(0, v6[2] + 1, 1, v6);
    }

    v20 = v6[2];
    v19 = v6[3];
    if (v20 >= v19 >> 1)
    {
      v6 = sub_100004358(v19 > 1, v20 + 1, 1, v6);
    }

    v21 = *(v0 + 40);
    v6[2] = v20 + 1;
    sub_100004F64(v21, v6 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v20);
    --v2;
  }

  while (v2);
LABEL_28:
  v23 = *(v0 + 40);
  v22 = *(v0 + 48);

  v24 = *(v0 + 8);

  return v24(v6);
}

uint64_t sub_10000487C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008808;
  v6._object = a2;
  v4 = sub_100005274(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000048C8()
{
  v27 = sub_1000051D4();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004C64(&qword_10000C360, &qword_100005DA8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_100004C64(&qword_10000C368, &qword_100005DB0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_100004C64(&qword_10000C370, &qword_100005DB8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_100005244();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v26 = sub_100004C64(&qword_10000C378, &qword_100005DC0);
  sub_100005234();
  (*(v20 + 56))(v18, 1, 1, v19);
  v22 = type metadata accessor for ScreenshotServicesSettingsDeepLink();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_1000050C4();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v24(v8, 1, 1, v23);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v27);
  sub_100004D54(&qword_10000C208);
  return sub_100005104();
}

uint64_t sub_100004C64(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100004CAC()
{
  result = qword_10000C380;
  if (!qword_10000C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C380);
  }

  return result;
}

unint64_t sub_100004D00()
{
  result = qword_10000C388;
  if (!qword_10000C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C388);
  }

  return result;
}

uint64_t sub_100004D54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScreenshotServicesSettingsDeepLink();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004D98(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004DD0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100004E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotServicesSettingsDeepLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004E98(uint64_t a1)
{
  v2 = type metadata accessor for ScreenshotServicesSettingsDeepLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C64(&qword_10000C370, &qword_100005DB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotServicesSettingsDeepLink();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}