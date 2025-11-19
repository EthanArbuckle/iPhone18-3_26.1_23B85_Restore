uint64_t sub_1000010D8()
{
  v0 = sub_1000017DC(&qword_10000C038, &qword_100005190);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v13 - v3;
  sub_100001788();
  sub_100004CC8();
  v14 = sub_100004C58();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100004CC8();
  v6 = sub_100004C58();
  v5(v4, v0);
  sub_100004CC8();
  v7 = sub_100004C58();
  v5(v4, v0);
  sub_100004CC8();
  v8 = sub_100004C58();
  v5(v4, v0);
  sub_100004CC8();
  v9 = sub_100004C58();
  v5(v4, v0);
  sub_1000017DC(&qword_10000C040, qword_100005198);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100005090;
  *(v10 + 32) = v14;
  *(v10 + 40) = v6;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v10 + 64) = v9;
  v11 = sub_100004C48();

  return v11;
}

uint64_t sub_100001398()
{
  v0 = sub_100004CB8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100001824();
  sub_100004C38();

  sub_100001788();
  sub_100004CA8();
  v5 = sub_100004C98();
  (*(v1 + 8))(v4, v0);
  sub_1000017DC(&qword_10000C028, &qword_100005180);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000050A0;
  *(v6 + 32) = v5;
  v7 = sub_100004C88();

  return v7;
}

uint64_t sub_100001550()
{
  v0 = sub_100004C78();
  v1 = sub_100004C78();
  sub_1000017DC(&qword_10000C030, &qword_100005188);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000050B0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100004C68();

  return v3;
}

uint64_t sub_100001604()
{
  v0 = sub_100004CF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_100003E04();
  sub_100001788();
  sub_100004D08();
  v5 = sub_100004CE8();
  (*(v1 + 8))(v4, v0);
  sub_1000017DC(&qword_10000C018, &qword_100005150);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000050A0;
  *(v6 + 32) = v5;
  v7 = sub_100004CD8();

  return v7;
}

unint64_t sub_100001788()
{
  result = qword_10000C010;
  if (!qword_10000C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C010);
  }

  return result;
}

uint64_t sub_1000017DC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001824()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

unint64_t sub_1000018AC()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

Swift::Int sub_100001900()
{
  sub_100004EA8();
  sub_100004E88();
  return sub_100004EB8();
}

Swift::Int sub_100001964()
{
  sub_100004EA8();
  sub_100004E88();
  return sub_100004EB8();
}

uint64_t sub_1000019B0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008830;
  v7._object = v3;
  v5 = sub_100004E98(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100001A60(uint64_t *a1, uint64_t *a2)
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

Swift::Int sub_100001ACC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v6._object = a2;
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_100008890;
  result = sub_100004E98(v4, v6);
  *a3 = result != 0;
  return result;
}

unint64_t sub_100001B0C()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

uint64_t sub_100001B60()
{
  v0 = sub_1000017DC(&qword_10000C130, &qword_1000059B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_100004E08();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004E48();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100004E78();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100004E18();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100004DD8();
  sub_10000442C(v15, qword_10000D1A0);
  sub_1000043F4(v15, qword_10000D1A0);
  sub_100004E68();
  sub_100004E38();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_100004E28();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100004DC8();
}

uint64_t sub_100001E48@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_1000017DC(&qword_10000C158, &qword_1000059C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v31 = &v27 - v3;
  v4 = sub_1000017DC(&qword_10000C130, &qword_1000059B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v29 = &v27 - v6;
  v7 = sub_100004E08();
  v28 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004E48();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100004E78();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_100004E18();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_100004E68();
  sub_100004E38();
  v19 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v8 + 104);
  v20(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_100004E28();
  v21 = *(v17 + 56);
  v17 += 56;
  v21(v29, 1, 1, v16);
  v22 = v31;
  sub_100004D18();
  v23 = sub_100004D28();
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  sub_1000017DC(&qword_10000C160, &qword_1000059C8);
  v24 = *(v17 + 16);
  v25 = (*(v17 + 24) + 32) & ~*(v17 + 24);
  *(swift_allocObject() + 16) = xmmword_1000050A0;
  sub_100004E68();
  sub_100004E38();
  v20(v11, v19, v28);
  sub_100004E28();
  return sub_100004D38();
}

uint64_t sub_100002290(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002334;

  return sub_100004868();
}

uint64_t sub_100002334(uint64_t a1)
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

unint64_t sub_10000244C()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_1000024A4()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_1000024F8()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_100002550(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100004960;

  return sub_1000045E4(a1);
}

uint64_t sub_1000025F8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100004940;

  return sub_100004490();
}

uint64_t sub_10000269C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000275C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10000275C(uint64_t a1)
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

unint64_t sub_100002860()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_1000028B8()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    sub_100001A60(&qword_10000C0A0, qword_1000053A0);
    sub_100001824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

uint64_t sub_10000293C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100001B0C();
  *v6 = v2;
  v6[1] = sub_1000029F0;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000029F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002AE4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002B88;

  return sub_100004788();
}

uint64_t sub_100002B88(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1 & 1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100002CA8()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_100002CFC(uint64_t a1)
{
  v2 = sub_1000024F8();

  return EntityURLRepresentation.init(stringLiteral:)(0xD00000000000002FLL, 0x8000000100005C90, a1, v2);
}

unint64_t sub_100002D60()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

unint64_t sub_100002DB8()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_100002E10()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_100002E6C()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

uint64_t sub_100002EC0()
{
  sub_1000043A0();
  v1 = sub_100004D68();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100002F30()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

unint64_t sub_100002F88()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

unint64_t sub_100002FE4()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

unint64_t sub_10000303C()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

uint64_t sub_100003110(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001A60(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003158(uint64_t a1)
{
  v2 = sub_1000024F8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000031A8()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

uint64_t sub_100003200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000029F0;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000032C4(uint64_t a1)
{
  v2 = sub_100002FE4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100003314()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

uint64_t sub_10000336C()
{
  v0 = sub_100004E08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004E48();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100004E78();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100004E18();
  sub_10000442C(v9, qword_10000D1B8);
  sub_1000043F4(v9, qword_10000D1B8);
  sub_100004E68();
  sub_100004E38();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100004E28();
}

void (*sub_1000035A0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100004BF8();
  return sub_100003614;
}

void sub_100003614(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100003660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000042F8();
  v5 = sub_1000043A0();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000036D0()
{
  v0 = qword_10000C048;

  return v0;
}

unint64_t sub_100003710()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

unint64_t sub_100003768()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

unint64_t sub_1000037C0()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

uint64_t sub_10000389C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_1000043F4(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10000395C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000042F8();
  v7 = sub_10000434C();
  v8 = sub_1000043A0();
  *v5 = v2;
  v5[1] = sub_100003A28;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100003A28()
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

uint64_t sub_100003B30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003E04();
  *a1 = result;
  return result;
}

uint64_t sub_100003B58(uint64_t a1)
{
  v2 = sub_100001788();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for SpotlightSettingsDynamicDestination(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SpotlightSettingsDynamicDestination(_WORD *result, int a2, int a3)
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

char *sub_100003CB8(char *a1, int64_t a2, char a3)
{
  result = sub_100003D18(a1, a2, a3, *v3, &qword_10000C170, &qword_1000059E8);
  *v3 = result;
  return result;
}

char *sub_100003CE8(char *a1, int64_t a2, char a3)
{
  result = sub_100003D18(a1, a2, a3, *v3, &qword_10000C168, &qword_1000059D8);
  *v3 = result;
  return result;
}

char *sub_100003D18(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_1000017DC(a5, a6);
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

uint64_t sub_100003E04()
{
  v0 = sub_100004DA8();
  v34 = *(v0 - 8);
  v35 = v0;
  v1 = *(v34 + 64);
  (__chkstk_darwin)();
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(sub_1000017DC(&qword_10000C128, &qword_1000059A8) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v31 = &v27 - v6;
  v7 = sub_1000017DC(&qword_10000C130, &qword_1000059B0);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7 - 8);
  v30 = &v27 - v9;
  v10 = sub_100004E08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004E48();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_100004E78();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v28 = sub_100004E18();
  v19 = *(v28 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v28);
  v29 = sub_1000017DC(&qword_10000C138, &qword_1000059B8);
  sub_100004E68();
  sub_100004E38();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v11 + 104);
  v22(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_100004E28();
  sub_100004E68();
  sub_100004E38();
  v22(v14, v21, v10);
  v23 = v30;
  sub_100004E28();
  (*(v19 + 56))(v23, 0, 1, v28);
  v36 = 1;
  v24 = sub_100004BE8();
  v25 = *(*(v24 - 8) + 56);
  v25(v31, 1, 1, v24);
  v25(v32, 1, 1, v24);
  (*(v34 + 104))(v33, enum case for InputConnectionBehavior.default(_:), v35);
  sub_1000024F8();
  return sub_100004C28();
}

unint64_t sub_1000042F8()
{
  result = qword_10000C140;
  if (!qword_10000C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C140);
  }

  return result;
}

unint64_t sub_10000434C()
{
  result = qword_10000C148;
  if (!qword_10000C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C148);
  }

  return result;
}

unint64_t sub_1000043A0()
{
  result = qword_10000C150;
  if (!qword_10000C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C150);
  }

  return result;
}

uint64_t sub_1000043F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000442C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000044AC()
{
  sub_100003CE8(0, 1, 1);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100003CE8((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  sub_100003CB8(0, v3, 0);
  v4 = _swiftEmptyArrayStorage[2];
  do
  {
    v5 = _swiftEmptyArrayStorage[3];
    v6 = v4 + 1;
    if (v4 >= v5 >> 1)
    {
      sub_100003CB8((v5 > 1), v4 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v6;
    v4 = v6;
    --v3;
  }

  while (v3);

  v7 = *(v0 + 8);

  return v7(_swiftEmptyArrayStorage);
}

uint64_t sub_100004604()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100003CE8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v3 = _swiftEmptyArrayStorage[2];
      v2 = _swiftEmptyArrayStorage[3];
      v4 = v3 + 1;
      if (v3 >= v2 >> 1)
      {
        sub_100003CE8((v2 > 1), v3 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage[2];
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  sub_100003CB8(0, v4, 0);
  v5 = _swiftEmptyArrayStorage[2];
  do
  {
    v6 = _swiftEmptyArrayStorage[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      sub_100003CB8((v6 > 1), v5 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v7;
    v5 = v7;
    --v4;
  }

  while (v4);
LABEL_13:

  v8 = *(v0 + 8);

  return v8(_swiftEmptyArrayStorage);
}

uint64_t sub_1000047A4()
{
  sub_100003CE8(0, 1, 1);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100003CE8((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_100004884()
{
  sub_100003CB8(0, 1, 0);
  v2 = *(&_swiftEmptyArrayStorage + 2);
  v1 = *(&_swiftEmptyArrayStorage + 3);
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100003CB8((v1 > 1), v2 + 1, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100004964(uint64_t a1)
{
  v2 = sub_100004AB4();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100004A0C();
  sub_100004E58();
  return 0;
}

unint64_t sub_100004A0C()
{
  result = qword_10000C178;
  if (!qword_10000C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C178);
  }

  return result;
}

unint64_t sub_100004AB4()
{
  result = qword_10000C180;
  if (!qword_10000C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C180);
  }

  return result;
}