uint64_t sub_100001080(uint64_t a1)
{
  v2 = sub_1000011D4();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000112C();
  sub_100004978();
  return 0;
}

unint64_t sub_10000112C()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

unint64_t sub_1000011D4()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t sub_100001238()
{
  v0 = sub_100001A00(&qword_10000C058, &qword_100005618);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v12 - v3;
  sub_1000019AC();
  sub_100004828();
  v5 = sub_1000047B8();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100004828();
  v7 = sub_1000047B8();
  v6(v4, v0);
  sub_100004828();
  v8 = sub_1000047B8();
  v6(v4, v0);
  sub_100001A00(&qword_10000C060, &unk_100005620);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100005540;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = sub_1000047A8();

  return v10;
}

uint64_t sub_100001450()
{
  v0 = sub_100004818();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100001ABC();
  sub_100004798();

  sub_1000019AC();
  sub_100004808();
  v5 = sub_1000047F8();
  (*(v1 + 8))(v4, v0);
  sub_100001A00(&qword_10000C050, &qword_100005610);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005550;
  *(v6 + 32) = v5;
  v7 = sub_1000047E8();

  return v7;
}

uint64_t sub_1000015C0()
{
  v0 = sub_1000047D8();
  sub_100001A00(&qword_10000C038, &qword_1000055D8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100005550;
  *(v1 + 32) = v0;
  v2 = sub_1000047C8();

  return v2;
}

uint64_t sub_100001644()
{
  v0 = sub_1000047D8();
  v1 = sub_1000047D8();
  sub_100001A00(&qword_10000C038, &qword_1000055D8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100005560;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_1000047C8();

  return v3;
}

uint64_t sub_1000016F4()
{
  v0 = sub_100004858();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_100003598();
  sub_1000019AC();
  sub_100004868();
  v5 = sub_100004848();
  (*(v1 + 8))(v4, v0);
  sub_100001A00(&qword_10000C040, &qword_1000055E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005550;
  *(v6 + 32) = v5;
  v7 = sub_100004838();

  return v7;
}

uint64_t sub_10000185C()
{
  v0 = sub_100004788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000019AC();
  sub_100004778();
  v5 = sub_100004768();
  (*(v1 + 8))(v4, v0);
  sub_100001A00(&qword_10000C030, &qword_1000055D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005550;
  *(v6 + 32) = v5;
  v7 = sub_100004758();

  return v7;
}

unint64_t sub_1000019AC()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

uint64_t sub_100001A00(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001A48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100004728();
  *a2 = v5;
  return result;
}

uint64_t sub_100001A84(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100004738();
}

unint64_t sub_100001ABC()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

uint64_t sub_100001B44()
{
  v0 = sub_100001A00(&qword_10000C150, &qword_100005BB0);
  sub_1000039D0(v0, qword_10000CD90);
  sub_100003998(v0, qword_10000CD90);
  sub_100001A00(&qword_10000C158, &qword_100005BB8);
  v1 = sub_100001A00(&qword_10000C160, &qword_100005BC0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100005630;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  *(v4 + v3) = 0;
  sub_1000023AC();
  sub_1000048C8();
  v7 = *(v1 + 48);
  *(v5 + v2) = 1;
  sub_1000048C8();
  v8 = *(v1 + 48);
  *(v5 + 2 * v2) = 2;
  sub_1000048C8();
  v9 = *(v1 + 48);
  *(v5 + 3 * v2) = 3;
  sub_1000048C8();
  sub_100003A34(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_1000048D8();
}

uint64_t sub_100001D94()
{
  v0 = sub_100001A00(&qword_10000C100, &qword_100005B78);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100004968();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100004948();
  sub_1000039D0(v7, qword_10000CDA8);
  sub_100003998(v7, qword_10000CDA8);
  sub_100004958();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100004938();
}

unint64_t sub_100001F14()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

uint64_t sub_100001F68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0xD000000000000016;
    }

    if (v2 == 2)
    {
      v4 = 0x8000000100004B30;
    }

    else
    {
      v4 = 0x8000000100004B50;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6C6C69466F747561;
    }

    else
    {
      v3 = 1953460082;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000018;
    }

    else
    {
      v7 = 0xD000000000000016;
    }

    if (a2 == 2)
    {
      v6 = 0x8000000100004B30;
    }

    else
    {
      v6 = 0x8000000100004B50;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6C6C69466F747561;
    }

    else
    {
      v5 = 1953460082;
    }

    if (a2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_1000049B8();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

Swift::Int sub_1000020B4()
{
  v1 = *v0;
  sub_1000049C8();
  sub_100004988();

  return sub_1000049D8();
}

uint64_t sub_10000217C()
{
  *v0;
  *v0;
  *v0;
  sub_100004988();
}

Swift::Int sub_100002230()
{
  v1 = *v0;
  sub_1000049C8();
  sub_100004988();

  return sub_1000049D8();
}

uint64_t sub_1000022F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000045FC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100002324(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1953460082;
  v4 = 0x8000000100004B30;
  v5 = 0xD000000000000018;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x8000000100004B50;
  }

  if (*v1)
  {
    v3 = 0x6C6C69466F747561;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1000023AC()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100002404()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

uint64_t sub_100002458@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_100001A00(&qword_10000C150, &qword_100005BB0);
  v3 = sub_100003998(v2, qword_10000CD90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000250C()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_100002564()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_1000025BC()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

uint64_t sub_10000261C()
{
  sub_100003944();
  v1 = sub_100004878();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000268C()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_1000026E4()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_100002740()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_1000027FC(uint64_t a1)
{
  v2 = sub_1000023AC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000284C()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

unint64_t sub_1000028A4()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_1000028FC()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

uint64_t sub_100002954(uint64_t a1)
{
  v2 = sub_100002740();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000029A4()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    sub_100002A08(&qword_10000C0D0, &qword_100005900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

uint64_t sub_100002A08(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002A64()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

uint64_t sub_100002ABC()
{
  v0 = sub_100004968();
  sub_1000039D0(v0, qword_10000CDC0);
  sub_100003998(v0, qword_10000CDC0);
  return sub_100004958();
}

uint64_t sub_100002B20@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100004728();
  *a1 = v5;
  return result;
}

uint64_t sub_100002B5C(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100004738();
}

void (*sub_100002B94(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100004718();
  return sub_100002C08;
}

void sub_100002C08(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100002C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000389C();
  v5 = sub_100003944();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100002CD0()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

unint64_t sub_100002D28()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

unint64_t sub_100002D80()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

uint64_t sub_100002E80@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100003998(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100002F48(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000389C();
  v7 = sub_1000038F0();
  v8 = sub_100003944();
  *v5 = v2;
  v5[1] = sub_100003014;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100003014()
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

uint64_t sub_10000311C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003598();
  *a1 = result;
  return result;
}

uint64_t sub_100003144(uint64_t a1)
{
  v2 = sub_1000019AC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for PasswordSettingsDeepLinks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PasswordSettingsDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100003300(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1000049C8();
  sub_100004988();

  v4 = sub_1000049D8();

  return sub_1000033F0(a1, v4);
}

unint64_t sub_1000033F0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = 0xD000000000000018;
      v8 = v6 == 2 ? 0xD000000000000018 : 0xD000000000000016;
      v9 = v6 == 2 ? 0x8000000100004B30 : 0x8000000100004B50;
      v10 = *(*(v2 + 48) + v4) ? 0x6C6C69466F747561 : 1953460082;
      v11 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xE400000000000000;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = *(*(v2 + 48) + v4) <= 1u ? v11 : v9;
      if (v5 == 2)
      {
        v14 = 0x8000000100004B30;
      }

      else
      {
        v7 = 0xD000000000000016;
        v14 = 0x8000000100004B50;
      }

      v15 = v5 ? 0x6C6C69466F747561 : 1953460082;
      v16 = v5 ? 0xE800000000000000 : 0xE400000000000000;
      v17 = v5 <= 1 ? v15 : v7;
      v18 = v5 <= 1 ? v16 : v14;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = sub_1000049B8();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
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

uint64_t sub_100003598()
{
  v20 = sub_100004908();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100001A00(&qword_10000C0F8, &qword_100005B70) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100001A00(&qword_10000C100, &qword_100005B78);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_100004968();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100001A00(&qword_10000C108, &qword_100005B80);
  sub_100004958();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 4;
  v17 = sub_100004708();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_1000023AC();
  return sub_100004748();
}

unint64_t sub_10000389C()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

unint64_t sub_1000038F0()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

unint64_t sub_100003944()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

uint64_t sub_100003998(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000039D0(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100003A34(uint64_t a1)
{
  v2 = sub_100001A00(&qword_10000C160, &qword_100005BC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001A00(&qword_10000C168, &qword_100005BC8);
    v8 = sub_100004998();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100004594(v10, v6, &qword_10000C160, &qword_100005BC0);
      v12 = *v6;
      result = sub_100003300(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100001A00(&unk_10000C170, &unk_100005BD0);
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
  v2 = sub_100001A00(&qword_10000C138, &qword_100005B98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001A00(&qword_10000C148, &qword_100005BA8);
    v8 = sub_100004998();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100004594(v10, v6, &qword_10000C138, &qword_100005B98);
      v12 = *v6;
      result = sub_100003300(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1000048B8();
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
  v0 = sub_100001A00(&qword_10000C128, &qword_100005B88);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v36 - v2;
  v4 = sub_100001A00(&qword_10000C100, &qword_100005B78);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v36 - v6;
  v8 = sub_100004968();
  v38 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v47 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v36 - v13;
  sub_100001A00(&qword_10000C130, &qword_100005B90);
  v15 = sub_100001A00(&qword_10000C138, &qword_100005B98);
  v49 = v15;
  v16 = *(v15 - 8);
  v50 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v43 = v18;
  *(v18 + 16) = xmmword_100005630;
  v52 = *(v15 + 48);
  *(v18 + v17) = 0;
  v19 = v18 + v17;
  sub_100004958();
  sub_100004958();
  v20 = *(v9 + 56);
  v9 += 56;
  v51 = v20;
  v20(v7, 0, 1, v8);
  v48 = "Open Password Settings";
  sub_100004888();
  v45 = sub_100004898();
  v21 = *(v45 - 8);
  v55 = *(v21 + 56);
  v46 = v21 + 56;
  v55(v3, 0, 1, v45);
  v22 = sub_100001A00(&qword_10000C140, &qword_100005BA0);
  v23 = *(v9 + 16);
  v41 = *(v9 + 24);
  v42 = v22;
  v53 = v9;
  v39 = v23;
  v40 = (v41 + 32) & ~v41;
  *(swift_allocObject() + 16) = xmmword_100005560;
  sub_100004958();
  sub_100004958();
  sub_100004958();
  v54 = v19;
  v44 = v14;
  sub_1000048A8();
  v24 = v49;
  v25 = v50;
  v37 = *(v49 + 48);
  *(v19 + v50) = 1;
  sub_100004958();
  v52 = "AutoFill Passwords and Passkeys";
  v26 = v7;
  sub_100004958();
  v27 = v7;
  v28 = v38;
  v51(v27, 0, 1, v38);
  sub_100004888();
  v29 = v45;
  v55(v3, 0, 1, v45);
  sub_100004958();
  sub_1000048A8();
  v36[1] = *(v24 + 48);
  v37 = 2 * v25;
  *(v54 + 2 * v25) = 2;
  sub_100004958();
  sub_100004958();
  v30 = v51;
  v51(v26, 0, 1, v28);
  sub_100004888();
  v31 = v29;
  v32 = v55;
  v55(v3, 0, 1, v31);
  *(swift_allocObject() + 16) = xmmword_100005550;
  sub_100004958();
  sub_100004958();
  sub_1000048A8();
  v33 = (v54 + v37 + v50);
  v50 = *(v49 + 48);
  *v33 = 3;
  sub_100004958();
  sub_100004958();
  v30(v26, 0, 1, v28);
  sub_100004888();
  v32(v3, 0, 1, v45);
  sub_100004958();
  sub_1000048A8();
  v34 = sub_100003C28(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v34;
}

uint64_t sub_100004594(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001A00(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000045FC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008740;
  v6._object = a2;
  v4 = sub_1000049A8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}