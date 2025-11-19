uint64_t sub_1000013A0(uint64_t a1)
{
  v2 = sub_1000014F4();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000144C();
  sub_1000056A0();
  return 0;
}

unint64_t sub_10000144C()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

unint64_t sub_1000014F4()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

unint64_t sub_10000155C()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_1000015B4()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

unint64_t sub_10000160C()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

uint64_t sub_100001660(unsigned __int8 a1)
{
  v2 = (*(*(sub_100005250(&qword_10000C158, &qword_1000061C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v4 = &v34 - v3;
  v5 = (*(*(sub_100005250(&qword_10000C130, " \t") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v7 = &v34 - v6;
  v8 = sub_100005690();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (__chkstk_darwin)();
  __chkstk_darwin(v11);
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        sub_100005680();
        sub_100005680();
        v29 = *(v9 + 56);
        v28 = v9 + 56;
        v29(v7, 0, 1, v8);
        sub_100005560();
        v30 = sub_100005570();
        (*(*(v30 - 8) + 56))(v4, 0, 1, v30);
        sub_100005250(&qword_10000C160, &qword_1000061D0);
        v31 = *(v28 + 16);
        v32 = (*(v28 + 24) + 32) & ~*(v28 + 24);
        *(swift_allocObject() + 16) = xmmword_1000059D0;
        sub_100005680();
        goto LABEL_16;
      }
    }

    else if (a1 == 6)
    {
      sub_100005680();
      sub_100005680();
      v24 = *(v9 + 56);
      v23 = v9 + 56;
      v24(v7, 0, 1, v8);
      sub_100005560();
      v25 = sub_100005570();
      (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
      sub_100005250(&qword_10000C160, &qword_1000061D0);
      v26 = *(v23 + 16);
      v27 = (*(v23 + 24) + 32) & ~*(v23 + 24);
      *(swift_allocObject() + 16) = xmmword_1000059D0;
      sub_100005680();
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  if (a1 > 2u)
  {
    if (a1 == 4)
    {
      sub_100005680();
      sub_100005680();
      v19 = *(v9 + 56);
      v18 = v9 + 56;
      v19(v7, 0, 1, v8);
      sub_100005560();
      v20 = sub_100005570();
      (*(*(v20 - 8) + 56))(v4, 0, 1, v20);
      sub_100005250(&qword_10000C160, &qword_1000061D0);
      v21 = *(v18 + 16);
      v22 = (*(v18 + 24) + 32) & ~*(v18 + 24);
      *(swift_allocObject() + 16) = xmmword_1000059D0;
      sub_100005680();
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  if (a1 != 1)
  {
LABEL_7:
    sub_100005680();
    sub_100005680();
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_100005560();
    v17 = sub_100005570();
    (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
    goto LABEL_16;
  }

  sub_100005680();
  sub_100005680();
  v13 = *(v9 + 56);
  v12 = v9 + 56;
  v13(v7, 0, 1, v8);
  sub_100005560();
  v14 = sub_100005570();
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  sub_100005250(&qword_10000C160, &qword_1000061D0);
  v15 = *(v12 + 16);
  v16 = (*(v12 + 24) + 32) & ~*(v12 + 24);
  *(swift_allocObject() + 16) = xmmword_1000059D0;
  sub_100005680();
LABEL_16:
  sub_100005680();
  return sub_100005580();
}

uint64_t sub_100002440()
{
  v0 = (*(*(sub_100005250(&qword_10000C130, " \t") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = sub_100005690();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = sub_100005650();
  sub_1000053CC(v6, qword_10000D110);
  sub_100005394(v6, qword_10000D110);
  sub_100005680();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100005640();
}

uint64_t sub_1000025B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000545C;

  return sub_100004A00(a1);
}

uint64_t sub_100002658(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005438;

  return sub_1000047C4();
}

uint64_t sub_1000026FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000027BC;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000027BC(uint64_t a1)
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

unint64_t sub_1000028C0()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

uint64_t sub_100002914(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000029B8;

  return sub_100004DE8();
}

uint64_t sub_1000029B8(uint64_t a1)
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

unint64_t sub_100002AD0()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_100002B28()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100002B80()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    sub_100002C04(&qword_10000C080, qword_100005A98);
    sub_100002B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

uint64_t sub_100002C04(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002C4C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000028C0();
  *v6 = v2;
  v6[1] = sub_100002D00;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100002D00()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002DF4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002E98;

  return sub_100004C3C();
}

uint64_t sub_100002E98(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100002FB4()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_100003008()
{
  v0 = sub_100005250(&qword_10000C168, &qword_1000061D8);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = (*(*(sub_100005250(&qword_10000C170, &qword_1000061E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_10000160C();
  sub_100005600();
  v8._object = 0x80000001000067C0;
  v8._countAndFlagsBits = 0xD000000000000045;
  sub_1000055F0(v8);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000055E0();
  (*(v1 + 8))(v4, v0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1000055F0(v9);
  return sub_100005610();
}

uint64_t sub_1000031CC()
{
  v0 = qword_10000C028;

  return v0;
}

unint64_t sub_100003204()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_10000325C()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_1000032B4()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_10000330C()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_100003360()
{
  sub_100005340();
  v1 = sub_1000055B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000033D0()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

unint64_t sub_100003428()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_100003480()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_1000034D8()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

uint64_t sub_1000035B4(uint64_t a1)
{
  v2 = sub_10000160C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003604()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

uint64_t sub_100003660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002D00;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100003724(uint64_t a1)
{
  v2 = sub_100003480();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100003770(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000010;
    if (a1 == 10)
    {
      v6 = 0x646F50656D6F682FLL;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000014;
    }

    v7 = 0xD000000000000015;
    v8 = 0xD000000000000012;
    if (a1 != 7)
    {
      v8 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 47;
    v2 = 0x576563697665642FLL;
    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000013;
    if (a1 != 1)
    {
      v4 = 0x4C6563697665642FLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10000391C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100003770(*a1);
  v5 = v4;
  if (v3 == sub_100003770(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000056D0();
  }

  return v8 & 1;
}

unint64_t sub_1000039A8()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

Swift::Int sub_1000039FC()
{
  v1 = *v0;
  sub_1000056E0();
  sub_100003770(v1);
  sub_1000056B0();

  return sub_1000056F0();
}

uint64_t sub_100003A60()
{
  sub_100003770(*v0);
  sub_1000056B0();
}

Swift::Int sub_100003AB4()
{
  v1 = *v0;
  sub_1000056E0();
  sub_100003770(v1);
  sub_1000056B0();

  return sub_1000056F0();
}

uint64_t sub_100003B14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100004F08(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100003B44@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100003770(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100003BB4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002C04(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003C28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100004F08(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100003C74()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

uint64_t sub_100003CCC()
{
  v0 = sub_100005690();
  sub_1000053CC(v0, qword_10000D128);
  sub_100005394(v0, qword_10000D128);
  return sub_100005680();
}

uint64_t sub_100003D30@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100005530();
  *a1 = v5;
  return result;
}

uint64_t sub_100003D6C(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100005540();
}

void (*sub_100003DA4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100005520();
  return sub_100003E18;
}

void sub_100003E18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100003E64()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

uint64_t sub_100003EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005298();
  v5 = sub_100005340();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100003F28()
{
  v0 = qword_10000C038;

  return v0;
}

unint64_t sub_100003F68()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

unint64_t sub_100003FC0()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

unint64_t sub_100004018()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

uint64_t sub_1000040F4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100005394(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000041BC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100005298();
  v7 = sub_1000052EC();
  v8 = sub_100005340();
  *v5 = v2;
  v5[1] = sub_100004288;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100004288()
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

uint64_t sub_100004390@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004F54();
  *a1 = result;
  return result;
}

uint64_t sub_1000043B8(uint64_t a1)
{
  v2 = sub_100003E64();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000443C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000044CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_10000459C(char *a1, int64_t a2, char a3)
{
  result = sub_1000045DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000045BC(char *a1, int64_t a2, char a3)
{
  result = sub_1000046D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000045DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005250(&unk_10000C180, &qword_100006200);
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

char *sub_1000046D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005250(&qword_10000C178, &qword_1000061F0);
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

uint64_t sub_1000047E0()
{
  for (i = 0; i != 12; ++i)
  {
    v4 = *(&off_1000087C0 + i + 32);
    if (v4 > 6)
    {
      if (v4 - 9 >= 3)
      {
        if (v4 == 7)
        {
          if ((SFShouldShowBuiltInApps() & 1) == 0)
          {
            continue;
          }
        }

        else if ((SFShouldShowChinaBlueSticker() & 1) == 0)
        {
          continue;
        }
      }

      else if (![objc_opt_self() areAnySpeakersConfigured])
      {
        continue;
      }
    }

    else if (v4 >= 6 && (SFShouldShowRoHSCompliance() & 1) == 0)
    {
      continue;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000045BC(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v3 = *(&_swiftEmptyArrayStorage + 2);
    v2 = *(&_swiftEmptyArrayStorage + 3);
    if (v3 >= v2 >> 1)
    {
      sub_1000045BC((v2 > 1), v3 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v3 + 1;
    *(&_swiftEmptyArrayStorage + v3 + 32) = v4;
  }

  v5 = *(&_swiftEmptyArrayStorage + 2);
  if (v5)
  {
    sub_10000459C(0, v5, 0);
    v6 = *(&_swiftEmptyArrayStorage + 2);
    v7 = 32;
    do
    {
      v8 = *(&_swiftEmptyArrayStorage + v7);
      v9 = *(&_swiftEmptyArrayStorage + 3);
      if (v6 >= v9 >> 1)
      {
        sub_10000459C((v9 > 1), v6 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v6 + 1;
      *(&_swiftEmptyArrayStorage + v6 + 32) = v8;
      ++v7;
      ++v6;
      --v5;
    }

    while (v5);
  }

  v10 = *(v0 + 8);

  return v10(&_swiftEmptyArrayStorage);
}

uint64_t sub_100004A20()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = v7 >= 6;
      if (v7 > 6)
      {
        if ((v6 - 9) >= 3)
        {
          if (v6 == 7)
          {
            if (SFShouldShowBuiltInApps())
            {
              goto LABEL_19;
            }
          }

          else if (SFShouldShowChinaBlueSticker())
          {
            goto LABEL_19;
          }
        }

        else if ([objc_opt_self() areAnySpeakersConfigured])
        {
          goto LABEL_19;
        }
      }

      else if (!v8 || (SFShouldShowRoHSCompliance() & 1) != 0)
      {
LABEL_19:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000045BC(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v5 = *(&_swiftEmptyArrayStorage + 2);
        v4 = *(&_swiftEmptyArrayStorage + 3);
        if (v5 >= v4 >> 1)
        {
          sub_1000045BC((v4 > 1), v5 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v5 + 1;
        *(&_swiftEmptyArrayStorage + v5 + 32) = v6;
      }

      --v2;
    }

    while (v2);
  }

  v9 = *(&_swiftEmptyArrayStorage + 2);
  if (v9)
  {
    sub_10000459C(0, v9, 0);
    v10 = *(&_swiftEmptyArrayStorage + 2);
    v11 = 32;
    do
    {
      v12 = *(&_swiftEmptyArrayStorage + v11);
      v13 = *(&_swiftEmptyArrayStorage + 3);
      if (v10 >= v13 >> 1)
      {
        sub_10000459C((v13 > 1), v10 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v10 + 1;
      *(&_swiftEmptyArrayStorage + v10 + 32) = v12;
      ++v11;
      ++v10;
      --v9;
    }

    while (v9);
  }

  v14 = *(v0 + 8);

  return v14(&_swiftEmptyArrayStorage);
}

uint64_t sub_100004C58()
{
  for (i = 0; i != 12; ++i)
  {
    v4 = *(&off_1000087C0 + i + 32);
    if (v4 > 6)
    {
      if (v4 - 9 >= 3)
      {
        if (v4 == 7)
        {
          if ((SFShouldShowBuiltInApps() & 1) == 0)
          {
            continue;
          }
        }

        else if ((SFShouldShowChinaBlueSticker() & 1) == 0)
        {
          continue;
        }
      }

      else if (![objc_opt_self() areAnySpeakersConfigured])
      {
        continue;
      }
    }

    else if (v4 >= 6 && (SFShouldShowRoHSCompliance() & 1) == 0)
    {
      continue;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000045BC(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v3 = _swiftEmptyArrayStorage[2];
    v2 = _swiftEmptyArrayStorage[3];
    if (v3 >= v2 >> 1)
    {
      sub_1000045BC((v2 > 1), v3 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v3 + 1;
    *(&_swiftEmptyArrayStorage[4] + v3) = v4;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v5 = LOBYTE(_swiftEmptyArrayStorage[4]);
  }

  else
  {
    v5 = 12;
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_100004E04()
{
  sub_10000459C(0, 12, 0);
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v3 = *(&_swiftEmptyArrayStorage + 2);
  do
  {
    v4 = *(&off_1000087C0 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_10000459C((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 12);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100004F08(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000087F0;
  v6._object = a2;
  v4 = sub_1000056C0(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100004F54()
{
  v21 = sub_100005620();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005250(&qword_10000C128, " \t");
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100005250(&qword_10000C130, " \t");
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_100005690();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100005250(&qword_10000C138, &qword_1000061C0);
  sub_100005680();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 12;
  v18 = sub_100005510();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10000160C();
  return sub_100005550();
}

uint64_t sub_100005250(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100005298()
{
  result = qword_10000C140;
  if (!qword_10000C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C140);
  }

  return result;
}

unint64_t sub_1000052EC()
{
  result = qword_10000C148;
  if (!qword_10000C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C148);
  }

  return result;
}

unint64_t sub_100005340()
{
  result = qword_10000C150;
  if (!qword_10000C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C150);
  }

  return result;
}

uint64_t sub_100005394(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000053CC(uint64_t a1, uint64_t *a2)
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