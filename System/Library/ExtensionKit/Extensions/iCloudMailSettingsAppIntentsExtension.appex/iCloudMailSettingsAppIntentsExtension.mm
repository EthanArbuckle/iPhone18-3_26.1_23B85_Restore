uint64_t sub_1000013A8(uint64_t a1)
{
  v2 = sub_1000014FC();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001454();
  sub_100008D68();
  return 0;
}

unint64_t sub_100001454()
{
  result = qword_100010038;
  if (!qword_100010038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010038);
  }

  return result;
}

unint64_t sub_1000014FC()
{
  result = qword_100010040;
  if (!qword_100010040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010040);
  }

  return result;
}

unint64_t sub_100001564()
{
  result = qword_100010068;
  if (!qword_100010068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010068);
  }

  return result;
}

unint64_t sub_1000015BC()
{
  result = qword_100010070;
  if (!qword_100010070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010070);
  }

  return result;
}

unint64_t sub_100001614()
{
  result = qword_100010078;
  if (!qword_100010078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010078);
  }

  return result;
}

uint64_t sub_100001668@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = (*(*(sub_10000473C(&qword_100010178, &qword_100009900) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v24 = v23 - v2;
  v3 = (*(*(sub_10000473C(&qword_100010150, &qword_1000098F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v28 = v23 - v4;
  v5 = sub_100008CF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  (__chkstk_darwin)();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_100008D38() - 8) + 64);
  (__chkstk_darwin)();
  v11 = *(*(sub_100008D88() - 8) + 64);
  (__chkstk_darwin)();
  v23[0] = sub_100008D08();
  v12 = *(v23[0] - 8);
  v13 = *(v12 + 64);
  v14 = (__chkstk_darwin)();
  v23[1] = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v27 = v23 - v16;
  v26 = "com.apple.Preferences";
  v6 += 104;
  sub_100008D78();
  sub_100008D28();
  v17 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v18 = *v6;
  (*v6)(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_100008D18();
  sub_100008D78();
  sub_100008D28();
  v18(v9, v17, v5);
  v19 = v28;
  sub_100008D18();
  (*(v12 + 56))(v19, 0, 1, v23[0]);
  v20 = v24;
  sub_100008BB8();
  v21 = sub_100008BC8();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  sub_100008D78();
  sub_100008D28();
  v18(v9, v17, v5);
  sub_100008D18();
  return sub_100008BD8();
}

uint64_t sub_100001C9C()
{
  v0 = (*(*(sub_10000473C(&qword_100010150, &qword_1000098F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = v14 - v1;
  v14[0] = sub_100008CF8();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_100008D38() - 8) + 64);
  __chkstk_darwin();
  v8 = *(*(sub_100008D88() - 8) + 64);
  __chkstk_darwin();
  v9 = sub_100008D08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = sub_100008CC8();
  sub_1000048B8(v12, qword_1000120F0);
  sub_100004880(v12, qword_1000120F0);
  sub_100008D78();
  sub_100008D28();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v14[0]);
  sub_100008D18();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_100008CB8();
}

uint64_t sub_100001F8C(uint64_t a1)
{
  v2 = sub_100003F6C(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100001FEC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EnumerableEntityQuery.suggestedEntities()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000491C();
  *v6 = v2;
  v6[1] = sub_1000020A0;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, v7);
}

uint64_t sub_1000020A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002254;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100002254(uint64_t a1)
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

unint64_t sub_100002358()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

uint64_t sub_1000023AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002450;

  return sub_10000419C();
}

uint64_t sub_100002450(uint64_t a1)
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

unint64_t sub_100002568()
{
  result = qword_100010088;
  if (!qword_100010088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010088);
  }

  return result;
}

unint64_t sub_1000025C0()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

unint64_t sub_100002618()
{
  result = qword_100010098;
  if (!qword_100010098)
  {
    sub_10000269C(&qword_1000100A0, qword_100009178);
    sub_1000025C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010098);
  }

  return result;
}

uint64_t sub_10000269C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000026E4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100002358();
  *v6 = v2;
  v6[1] = sub_100004970;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100002798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000020A0;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100002858()
{
  result = qword_1000100A8;
  if (!qword_1000100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A8);
  }

  return result;
}

uint64_t sub_1000028AC()
{
  v0 = sub_10000473C(&qword_100010180, &qword_100009908);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = (*(*(sub_10000473C(&qword_100010188, &qword_100009910) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_100001614();
  sub_100008C78();
  v8._object = 0x800000010000A350;
  v8._countAndFlagsBits = 0xD000000000000063;
  sub_100008C68(v8);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100008C58();
  (*(v1 + 8))(v4, v0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100008C68(v9);
  return sub_100008C88();
}

uint64_t sub_100002A70()
{
  v0 = qword_100010048;

  return v0;
}

unint64_t sub_100002AAC()
{
  result = qword_1000100B0;
  if (!qword_1000100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B0);
  }

  return result;
}

unint64_t sub_100002B04()
{
  result = qword_1000100B8;
  if (!qword_1000100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B8);
  }

  return result;
}

unint64_t sub_100002B5C()
{
  result = qword_1000100C0;
  if (!qword_1000100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C0);
  }

  return result;
}

unint64_t sub_100002BB4()
{
  result = qword_1000100C8;
  if (!qword_1000100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C8);
  }

  return result;
}

uint64_t sub_100002C08()
{
  sub_10000482C();
  v1 = sub_100008C28();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100002C78()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

unint64_t sub_100002CD0()
{
  result = qword_1000100D8;
  if (!qword_1000100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D8);
  }

  return result;
}

unint64_t sub_100002D28()
{
  result = qword_1000100E0;
  if (!qword_1000100E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E0);
  }

  return result;
}

unint64_t sub_100002D80()
{
  result = qword_1000100E8;
  if (!qword_1000100E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E8);
  }

  return result;
}

uint64_t sub_100002E5C(uint64_t a1)
{
  v2 = sub_100001614();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100002EAC()
{
  result = qword_100010100;
  if (!qword_100010100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010100);
  }

  return result;
}

uint64_t sub_100002F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100004970;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100002FCC(uint64_t a1)
{
  v2 = sub_100002D28();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100003018(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x65636552646E6573;
  }

  if (v3)
  {
    v5 = 0xEB00000000657669;
  }

  else
  {
    v5 = 0x800000010000A160;
  }

  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0x65636552646E6573;
  }

  if (*a2)
  {
    v7 = 0x800000010000A160;
  }

  else
  {
    v7 = 0xEB00000000657669;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100008DB8();
  }

  return v9 & 1;
}

unint64_t sub_1000030D0()
{
  result = qword_100010108;
  if (!qword_100010108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010108);
  }

  return result;
}

Swift::Int sub_100003124()
{
  v1 = *v0;
  sub_100008DC8();
  sub_100008D98();

  return sub_100008DD8();
}

uint64_t sub_1000031B4()
{
  *v0;
  sub_100008D98();
}

Swift::Int sub_100003230()
{
  v1 = *v0;
  sub_100008DC8();
  sub_100008D98();

  return sub_100008DD8();
}

uint64_t sub_1000032BC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10000C898;
  v8._object = v3;
  v5 = sub_100008DA8(v4, v8);

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

void sub_10000331C(unint64_t *a1@<X8>)
{
  v2 = 0x800000010000A160;
  v3 = 0x65636552646E6573;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xEB00000000657669;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1000033AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000269C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003404()
{
  if (*v0)
  {
    result = 0xD00000000000001FLL;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_100003444@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{

  v6._rawValue = &off_10000C898;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_100008DA8(v6, v10);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

unint64_t sub_1000034B8()
{
  result = qword_100010120;
  if (!qword_100010120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010120);
  }

  return result;
}

uint64_t sub_10000350C()
{
  v0 = sub_100008CF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100008D38();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100008D88();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100008D08();
  sub_1000048B8(v9, qword_100012108);
  sub_100004880(v9, qword_100012108);
  sub_100008D78();
  sub_100008D28();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100008D18();
}

uint64_t sub_1000036FC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100008B88();
  *a1 = v5;
  return result;
}

uint64_t sub_100003738(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100008B98();
}

void (*sub_100003770(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100008B78();
  return sub_1000037E4;
}

void sub_1000037E4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100003830()
{
  result = qword_100010128;
  if (!qword_100010128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010128);
  }

  return result;
}

uint64_t sub_100003884(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004784();
  v5 = sub_10000482C();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000038F4()
{
  v0 = qword_100010058;

  return v0;
}

unint64_t sub_100003934()
{
  result = qword_100010130;
  if (!qword_100010130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010130);
  }

  return result;
}

unint64_t sub_10000398C()
{
  result = qword_100010138;
  if (!qword_100010138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010138);
  }

  return result;
}

unint64_t sub_1000039E4()
{
  result = qword_100010140;
  if (!qword_100010140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010140);
  }

  return result;
}

uint64_t sub_100003AC0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100004880(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100003B88(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100004784();
  v7 = sub_1000047D8();
  v8 = sub_10000482C();
  *v5 = v2;
  v5[1] = sub_100003C54;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100003C54()
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

uint64_t sub_100003D5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000042C4();
  *a1 = result;
  return result;
}

uint64_t sub_100003D84(uint64_t a1)
{
  v2 = sub_100003830();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100003E0C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100003E9C(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_100003F6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = ACAccountDataclassCalendars;
    v4 = &_s13MCCFoundation29iCloudMailSettingsFeatureFlagO9isEnabledSbvg_ptr;
    do
    {
      v5 = *v2;
      v6 = [objc_allocWithZone(v4[93]) init];
      v7 = [v6 aa_primaryAppleAccount];
      v8 = v7;
      if (v5)
      {
        if (v7)
        {
          v9 = [v7 propertiesForDataclass:v3];
          if (v9)
          {
            goto LABEL_8;
          }

LABEL_15:

          goto LABEL_4;
        }
      }

      else if (v7)
      {
        v9 = [v7 propertiesForDataclass:v3];
        if (v9)
        {
LABEL_8:

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100007AAC(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
          }

          v11 = *(&_swiftEmptyArrayStorage + 2);
          v10 = *(&_swiftEmptyArrayStorage + 3);
          if (v11 >= v10 >> 1)
          {
            sub_100007AAC((v10 > 1), v11 + 1, 1);
          }

          *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
          *(&_swiftEmptyArrayStorage + v11 + 32) = v5;
          v4 = &_s13MCCFoundation29iCloudMailSettingsFeatureFlagO9isEnabledSbvg_ptr;
          goto LABEL_4;
        }

        goto LABEL_15;
      }

LABEL_4:
      ++v2;
      --v1;
    }

    while (v1);
  }

  v12 = *(&_swiftEmptyArrayStorage + 2);
  if (v12)
  {
    sub_100007A8C(0, v12, 0);
    v13 = *(&_swiftEmptyArrayStorage + 2);
    v14 = 32;
    do
    {
      v15 = *(&_swiftEmptyArrayStorage + v14);
      v16 = *(&_swiftEmptyArrayStorage + 3);
      if (v13 >= v16 >> 1)
      {
        sub_100007A8C((v16 > 1), v13 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v13 + 1;
      *(&_swiftEmptyArrayStorage + v13 + 32) = v15;
      ++v14;
      ++v13;
      --v12;
    }

    while (v12);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000041B8()
{
  sub_100007A8C(0, 2, 0);
  v2 = *(&_swiftEmptyArrayStorage + 2);
  v1 = *(&_swiftEmptyArrayStorage + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_100007A8C((v1 > 1), v2 + 1, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v4;
  *(&_swiftEmptyArrayStorage + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    sub_100007A8C((v1 > 1), v5, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v5;
  *(&_swiftEmptyArrayStorage + v4 + 32) = 1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000042C4()
{
  v0 = sub_100008C98();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000473C(&qword_100010148, &qword_1000098E8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v28 = v27 - v7;
  v8 = sub_10000473C(&qword_100010150, &qword_1000098F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v27 - v10;
  v12 = sub_100008CF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100008D38();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_100008D88();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_100008D08();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v27[1] = sub_10000473C(&qword_100010158, &qword_1000098F8);
  sub_100008D78();
  sub_100008D28();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_100008D18();
  (*(v22 + 56))(v11, 1, 1, v21);
  v33 = 2;
  v24 = sub_100008B68();
  v25 = *(*(v24 - 8) + 56);
  v25(v28, 1, 1, v24);
  v25(v29, 1, 1, v24);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_100001614();
  return sub_100008BA8();
}

uint64_t sub_10000473C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100004784()
{
  result = qword_100010160;
  if (!qword_100010160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010160);
  }

  return result;
}

unint64_t sub_1000047D8()
{
  result = qword_100010168;
  if (!qword_100010168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010168);
  }

  return result;
}

unint64_t sub_10000482C()
{
  result = qword_100010170;
  if (!qword_100010170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010170);
  }

  return result;
}

uint64_t sub_100004880(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000048B8(uint64_t a1, uint64_t *a2)
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

unint64_t sub_10000491C()
{
  result = qword_100010190;
  if (!qword_100010190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010190);
  }

  return result;
}

unint64_t sub_10000499C()
{
  result = qword_1000101B8;
  if (!qword_1000101B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101B8);
  }

  return result;
}

unint64_t sub_1000049F4()
{
  result = qword_1000101C0;
  if (!qword_1000101C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101C0);
  }

  return result;
}

unint64_t sub_100004A4C()
{
  result = qword_1000101C8;
  if (!qword_1000101C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101C8);
  }

  return result;
}

uint64_t sub_100004AA0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_10000473C(&qword_100010178, &qword_100009900);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v71 = &v62 - v5;
  v6 = sub_10000473C(&qword_100010150, &qword_1000098F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v70 = &v62 - v8;
  v9 = sub_100008CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100008D38();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_100008D88();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v68 = sub_100008D08();
  v18 = *(v68 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v68);
  v69 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v66 = &v62 - v22;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      v65 = v9;
      sub_100008D78();
      sub_100008D28();
      v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      if (a1 == 5)
      {
        v36 = *(v10 + 104);
        v36(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
        v25 = v36;
        sub_100008D18();
        sub_100008D78();
        sub_100008D28();
        v26 = v65;
        v36(v13, v23, v65);
      }

      else
      {
        v60 = *(v10 + 104);
        v60(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
        v25 = v60;
        sub_100008D18();
        sub_100008D78();
        sub_100008D28();
        v26 = v65;
        v60(v13, v23, v65);
      }

LABEL_14:
      v37 = v70;
      sub_100008D18();
      (*(v18 + 56))(v37, 0, 1, v68);
      v38 = v71;
      sub_100008BB8();
      v39 = sub_100008BC8();
      (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
      goto LABEL_21;
    }

    if (a1 == 7)
    {
      sub_100008D78();
      sub_100008D28();
      LODWORD(v64) = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v44 = *(v10 + 104);
      v44(v13);
      sub_100008D18();
      sub_100008D78();
      sub_100008D28();
      v45 = v64;
      (v44)(v13, v64, v9);
      v46 = v70;
      sub_100008D18();
      (*(v18 + 56))(v46, 0, 1, v68);
      v47 = v71;
      sub_100008BB8();
      v48 = sub_100008BC8();
      (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
      sub_100008D78();
      sub_100008D28();
      (v44)(v13, v45, v9);
    }

    else
    {
      if (a1 == 8)
      {
        sub_100008D78();
        sub_100008D28();
        v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
        v27 = *(v10 + 104);
        v65 = v9;
        v27(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
        v25 = v27;
        sub_100008D18();
        sub_100008D78();
        sub_100008D28();
        v26 = v65;
        v27(v13, v23, v65);
        v28 = v70;
        sub_100008D18();
        (*(v18 + 56))(v28, 0, 1, v68);
        v29 = v71;
        sub_100008BB8();
        v30 = sub_100008BC8();
        (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
LABEL_21:
        sub_100008D78();
        sub_100008D28();
        v25(v13, v23, v26);
        goto LABEL_22;
      }

      sub_100008D78();
      v64 = "SERVER_SIDE_RULES";
      sub_100008D28();
      v50 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v62 = *(v10 + 104);
      v63 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v62(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
      v52 = v70;
      v51 = v71;
      sub_100008D18();
      sub_100008D78();
      sub_100008D28();
      v53 = v50;
      v54 = v62;
      v62(v13, v53, v9);
      sub_100008D18();
      (*(v18 + 56))(v52, 0, 1, v68);
      sub_100008BB8();
      v55 = sub_100008BC8();
      (*(*(v55 - 8) + 56))(v51, 0, 1, v55);
      sub_100008D78();
      sub_100008D28();
      v54(v13, v63, v9);
    }
  }

  else
  {
    if (a1 > 1u)
    {
      v65 = v9;
      if (a1 == 2)
      {
        sub_100008D78();
        sub_100008D28();
        v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
        v40 = *(v10 + 104);
        v40(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
        v25 = v40;
        sub_100008D18();
        sub_100008D78();
        sub_100008D28();
        v26 = v65;
        v40(v13, v23, v65);
        v41 = v70;
        sub_100008D18();
        (*(v18 + 56))(v41, 0, 1, v68);
        v42 = v71;
        sub_100008BB8();
        v43 = sub_100008BC8();
        (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
        goto LABEL_21;
      }

      sub_100008D78();
      sub_100008D28();
      v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      if (a1 == 3)
      {
        v24 = *(v10 + 104);
        v24(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
        v25 = v24;
        sub_100008D18();
        sub_100008D78();
        sub_100008D28();
        v26 = v65;
        v24(v13, v23, v65);
      }

      else
      {
        v49 = *(v10 + 104);
        v49(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
        v25 = v49;
        sub_100008D18();
        sub_100008D78();
        sub_100008D28();
        v26 = v65;
        v49(v13, v23, v65);
      }

      goto LABEL_14;
    }

    if (a1)
    {
      sub_100008D78();
      sub_100008D28();
      v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v56 = *(v10 + 104);
      v65 = v9;
      v56(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
      v25 = v56;
      sub_100008D18();
      sub_100008D78();
      sub_100008D28();
      v26 = v65;
      v56(v13, v23, v65);
      v57 = v70;
      sub_100008D18();
      (*(v18 + 56))(v57, 0, 1, v68);
      v58 = v71;
      sub_100008BB8();
      v59 = sub_100008BC8();
      (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
      goto LABEL_21;
    }

    sub_100008D78();
    sub_100008D28();
    v31 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v32 = *(v10 + 104);
    v32(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
    v64 = "ataclass.Calendars/";
    sub_100008D18();
    sub_100008D78();
    sub_100008D28();
    v32(v13, v31, v9);
    v33 = v70;
    sub_100008D18();
    (*(v18 + 56))(v33, 0, 1, v68);
    v34 = v71;
    sub_100008BB8();
    v35 = sub_100008BC8();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    sub_100008D78();
    sub_100008D28();
    v32(v13, v31, v9);
  }

LABEL_22:
  sub_100008D18();
  return sub_100008BD8();
}

uint64_t sub_100005F2C()
{
  v0 = sub_10000473C(&qword_100010150, &qword_1000098F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_100008CF8();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100008D38();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100008D88();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100008D08();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100008CC8();
  sub_1000048B8(v15, qword_100012120);
  sub_100004880(v15, qword_100012120);
  sub_100008D78();
  sub_100008D28();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_100008D18();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100008CB8();
}

uint64_t sub_100006218(uint64_t a1)
{
  v2 = sub_100007EDC(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100006278(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EnumerableEntityQuery.suggestedEntities()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100008A44();
  *v6 = v2;
  v6[1] = sub_1000020A0;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, v7);
}

unint64_t sub_100006330()
{
  result = qword_1000101D0;
  if (!qword_1000101D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101D0);
  }

  return result;
}

uint64_t sub_100006384(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002450;

  return sub_100008360();
}

unint64_t sub_10000642C()
{
  result = qword_1000101D8;
  if (!qword_1000101D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101D8);
  }

  return result;
}

unint64_t sub_100006484()
{
  result = qword_1000101E0;
  if (!qword_1000101E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101E0);
  }

  return result;
}

unint64_t sub_1000064DC()
{
  result = qword_1000101E8;
  if (!qword_1000101E8)
  {
    sub_10000269C(&qword_1000101F0, qword_1000099E8);
    sub_100006484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101E8);
  }

  return result;
}

uint64_t sub_100006560(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100006330();
  *v6 = v2;
  v6[1] = sub_100004970;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100006618()
{
  result = qword_1000101F8;
  if (!qword_1000101F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101F8);
  }

  return result;
}

uint64_t sub_10000666C()
{
  v0 = sub_10000473C(&qword_1000102B0, &qword_10000A138);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000473C(&qword_1000102B8, &qword_10000A140);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100004A4C();
  sub_100008C78();
  v9._object = 0x800000010000A630;
  v9._countAndFlagsBits = 0xD00000000000005ELL;
  sub_100008C68(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100008C58();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100008C68(v10);
  return sub_100008C88();
}

uint64_t sub_100006830()
{
  v0 = qword_100010198;

  return v0;
}

unint64_t sub_10000686C()
{
  result = qword_100010200;
  if (!qword_100010200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010200);
  }

  return result;
}

unint64_t sub_1000068C4()
{
  result = qword_100010208;
  if (!qword_100010208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010208);
  }

  return result;
}

unint64_t sub_10000691C()
{
  result = qword_100010210;
  if (!qword_100010210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010210);
  }

  return result;
}

unint64_t sub_100006974()
{
  result = qword_100010218;
  if (!qword_100010218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010218);
  }

  return result;
}

uint64_t sub_1000069C8()
{
  sub_1000089EC();
  v1 = sub_100008C28();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100006A38()
{
  result = qword_100010220;
  if (!qword_100010220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010220);
  }

  return result;
}

unint64_t sub_100006A90()
{
  result = qword_100010228;
  if (!qword_100010228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010228);
  }

  return result;
}

unint64_t sub_100006AE8()
{
  result = qword_100010230;
  if (!qword_100010230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010230);
  }

  return result;
}

unint64_t sub_100006B40()
{
  result = qword_100010238;
  if (!qword_100010238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010238);
  }

  return result;
}

uint64_t sub_100006C10(uint64_t a1)
{
  v2 = sub_100004A4C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100006C60()
{
  result = qword_100010250;
  if (!qword_100010250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010250);
  }

  return result;
}

uint64_t sub_100006CBC(uint64_t a1)
{
  v2 = sub_100006AE8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100006D08(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x504D495F4C49414DLL;
    v6 = 0xD000000000000013;
    if (a1 == 8)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    if (a1 != 5)
    {
      v7 = 0x454D494D5F53;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x5F544C5541464544;
    v2 = 0x5045525F4F545541;
    v3 = 0xD000000000000011;
    if (a1 != 3)
    {
      v3 = 0x524F465F4C49414DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x53455341494C41;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_100006E74(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6F706D496C69616DLL;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0x61656C436C69616DLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0x454D494D73;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x45746C7561666564;
    v2 = 0x6C7065526F747561;
    v3 = 0x6953726576726573;
    if (a1 != 3)
    {
      v3 = 0x77726F466C69616DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x73657361696C61;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100006FE8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100006E74(*a1);
  v5 = v4;
  if (v3 == sub_100006E74(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008DB8();
  }

  return v8 & 1;
}

unint64_t sub_100007074()
{
  result = qword_100010258;
  if (!qword_100010258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010258);
  }

  return result;
}

Swift::Int sub_1000070C8()
{
  v1 = *v0;
  sub_100008DC8();
  sub_100006E74(v1);
  sub_100008D98();

  return sub_100008DD8();
}

uint64_t sub_10000712C()
{
  sub_100006E74(*v0);
  sub_100008D98();
}

Swift::Int sub_100007180()
{
  v1 = *v0;
  sub_100008DC8();
  sub_100006E74(v1);
  sub_100008D98();

  return sub_100008DD8();
}

uint64_t sub_1000071E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100008480(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100007210@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100006E74(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100007298@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100008480(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1000072E4()
{
  result = qword_100010270;
  if (!qword_100010270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010270);
  }

  return result;
}

uint64_t sub_100007338()
{
  v0 = sub_100008CF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100008D38();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100008D88();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100008D08();
  sub_1000048B8(v9, qword_100012138);
  sub_100004880(v9, qword_100012138);
  sub_100008D78();
  sub_100008D28();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100008D18();
}

void (*sub_100007528(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100008B78();
  return sub_1000037E4;
}

unint64_t sub_10000759C()
{
  result = qword_100010278;
  if (!qword_100010278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010278);
  }

  return result;
}

uint64_t sub_1000075F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008944();
  v5 = sub_1000089EC();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000765C()
{
  v0 = qword_1000101A8;

  return v0;
}

unint64_t sub_100007698()
{
  result = qword_100010280;
  if (!qword_100010280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010280);
  }

  return result;
}

unint64_t sub_1000076F0()
{
  result = qword_100010288;
  if (!qword_100010288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010288);
  }

  return result;
}

uint64_t sub_1000077CC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100008944();
  v7 = sub_100008998();
  v8 = sub_1000089EC();
  *v5 = v2;
  v5[1] = sub_100003C54;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100007898@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000084CC();
  *a1 = result;
  return result;
}

uint64_t sub_1000078C0(uint64_t a1)
{
  v2 = sub_10000759C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000792C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000079BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_100007A8C(char *a1, int64_t a2, char a3)
{
  result = sub_100007B0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007AAC(char *a1, int64_t a2, char a3)
{
  result = sub_100007C00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007ACC(char *a1, int64_t a2, char a3)
{
  result = sub_100007CF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007AEC(char *a1, int64_t a2, char a3)
{
  result = sub_100007DE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007B0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000473C(&qword_1000102D8, &qword_10000A160);
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

char *sub_100007C00(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000473C(&unk_1000102E0, &qword_10000A168);
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

char *sub_100007CF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000473C(&qword_1000102C0, &qword_10000A150);
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

char *sub_100007DE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000473C(&qword_1000102D0, &qword_10000A158);
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

unint64_t *sub_100007EDC(uint64_t a1)
{
  v44 = sub_100008D58();
  v2 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v8 = (a1 + 32);
    v42 = enum case for iCloudMailSettingsFeatureFlag.customEmailDomain(_:);
    v9 = (v3 + 104);
    v10 = (v3 + 8);
    v41 = enum case for iCloudMailSettingsFeatureFlag.mailImport(_:);
    v40 = enum case for iCloudMailSettingsFeatureFlag.endToEndEncryption(_:);
    v39 = enum case for iCloudMailSettingsFeatureFlag.mailboxBehavior(_:);
    v38 = enum case for iCloudMailSettingsFeatureFlag.mailForwarding(_:);
    v37 = enum case for iCloudMailSettingsFeatureFlag.rules(_:);
    v36 = enum case for iCloudMailSettingsFeatureFlag.autoReply(_:);
    v35 = enum case for iCloudMailSettingsFeatureFlag.alias(_:);
    v43 = ACAccountDataclassMail;
    HIDWORD(v34) = enum case for iCloudMailSettingsFeatureFlag.mailAppMailCleanup(_:);
    do
    {
      v12 = *v8++;
      v11 = v12;
      if (v12 > 4)
      {
        if (v11 <= 6)
        {
          v13 = *v9;
          v14 = v5;
          if (v11 == 5)
          {
            v15 = v39;
          }

          else
          {
            v15 = v40;
          }
        }

        else if (v11 == 7)
        {
          v13 = *v9;
          v14 = v5;
          v15 = v41;
        }

        else if (v11 == 8)
        {
          v13 = *v9;
          v14 = v5;
          v15 = v42;
        }

        else
        {
          v16 = [objc_allocWithZone(ACAccountStore) init];
          v20 = [v16 aa_primaryAppleAccount];
          if (!v20)
          {
            goto LABEL_3;
          }

          v18 = v20;
          v21 = [v20 propertiesForDataclass:v43];
          if (!v21)
          {
            goto LABEL_34;
          }

          v13 = *v9;
          v14 = v5;
          v15 = HIDWORD(v34);
        }
      }

      else if (v11 <= 1)
      {
        if (!v11)
        {
          v16 = [objc_allocWithZone(ACAccountStore) init];
          v17 = [v16 aa_primaryAppleAccount];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 propertiesForDataclass:v43];
            if (v19)
            {

LABEL_29:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v45 = v7;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_100007AEC(0, v7[2] + 1, 1);
                v7 = v45;
              }

              v26 = v7[2];
              v25 = v7[3];
              if (v26 >= v25 >> 1)
              {
                sub_100007AEC((v25 > 1), v26 + 1, 1);
                v7 = v45;
              }

              v7[2] = v26 + 1;
              *(v7 + v26 + 32) = v11;
              goto LABEL_4;
            }

LABEL_34:

            goto LABEL_4;
          }

LABEL_3:

          goto LABEL_4;
        }

        v13 = *v9;
        v14 = v5;
        v15 = v35;
      }

      else if (v11 == 2)
      {
        v13 = *v9;
        v14 = v5;
        v15 = v36;
      }

      else
      {
        v13 = *v9;
        v14 = v5;
        if (v11 == 3)
        {
          v15 = v37;
        }

        else
        {
          v15 = v38;
        }
      }

      v22 = v44;
      v13(v14, v15, v44);
      v23 = sub_100008D48();
      (*v10)(v5, v22);
      if (v23)
      {
        goto LABEL_29;
      }

LABEL_4:
      --v6;
    }

    while (v6);
  }

  v27 = v7[2];
  if (v27)
  {
    v45 = &_swiftEmptyArrayStorage;
    sub_100007ACC(0, v27, 0);
    v28 = v45;
    v29 = v45[2];
    v30 = 32;
    do
    {
      v31 = *(v7 + v30);
      v45 = v28;
      v32 = v28[3];
      if (v29 >= v32 >> 1)
      {
        sub_100007ACC((v32 > 1), v29 + 1, 1);
        v28 = v45;
      }

      v28[2] = v29 + 1;
      *(v28 + v29 + 32) = v31;
      ++v30;
      ++v29;
      --v27;
    }

    while (v27);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v28;
}

uint64_t sub_10000837C()
{
  sub_100007ACC(0, 10, 0);
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v3 = *(&_swiftEmptyArrayStorage + 2);
  do
  {
    v4 = *(&off_10000C910 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_100007ACC((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 10);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100008480(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C940;
  v6._object = a2;
  v4 = sub_100008DA8(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000084CC()
{
  v0 = sub_100008C98();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000473C(&qword_100010148, &qword_1000098E8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v28 = v27 - v7;
  v8 = sub_10000473C(&qword_100010150, &qword_1000098F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v27 - v10;
  v12 = sub_100008CF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100008D38();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_100008D88();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_100008D08();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v27[1] = sub_10000473C(&qword_100010290, &unk_10000A128);
  sub_100008D78();
  sub_100008D28();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_100008D18();
  (*(v22 + 56))(v11, 1, 1, v21);
  v33 = 10;
  v24 = sub_100008B68();
  v25 = *(*(v24 - 8) + 56);
  v25(v28, 1, 1, v24);
  v25(v29, 1, 1, v24);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_100004A4C();
  return sub_100008BA8();
}

unint64_t sub_100008944()
{
  result = qword_100010298;
  if (!qword_100010298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010298);
  }

  return result;
}

unint64_t sub_100008998()
{
  result = qword_1000102A0;
  if (!qword_1000102A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102A0);
  }

  return result;
}

unint64_t sub_1000089EC()
{
  result = qword_1000102A8;
  if (!qword_1000102A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102A8);
  }

  return result;
}

unint64_t sub_100008A44()
{
  result = qword_1000102C8;
  if (!qword_1000102C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102C8);
  }

  return result;
}