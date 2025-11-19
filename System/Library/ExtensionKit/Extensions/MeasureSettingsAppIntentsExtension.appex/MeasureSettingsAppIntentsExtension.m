uint64_t sub_1000010D8(uint64_t a1)
{
  v2 = sub_10000122C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001184();
  sub_1000053C4();
  return 0;
}

unint64_t sub_100001184()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

unint64_t sub_10000122C()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t sub_100001290()
{
  v0 = sub_10000195C(&qword_10000C058, &qword_1000057A0);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v11 - v3;
  sub_100001908();
  sub_100005244();
  v5 = sub_1000051D4();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100005244();
  v7 = sub_1000051D4();
  v6(v4, v0);
  sub_10000195C(&qword_10000C060, qword_1000057A8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000056E0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_1000051C4();

  return v9;
}

uint64_t sub_100001450()
{
  v0 = sub_100005234();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100001A18();
  sub_1000051B4();

  sub_100001908();
  sub_100005224();
  v5 = sub_100005214();
  (*(v1 + 8))(v4, v0);
  sub_10000195C(&qword_10000C050, &qword_100005798);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000056F0;
  *(v6 + 32) = v5;
  v7 = sub_100005204();

  return v7;
}

uint64_t sub_1000015E4()
{
  v0 = sub_1000051F4();
  sub_10000195C(&qword_10000C038, &qword_100005760);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000056F0;
  *(v1 + 32) = v0;
  v2 = sub_1000051E4();

  return v2;
}

uint64_t sub_100001650()
{
  v0 = sub_100005274();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_1000037FC();
  sub_100001908();
  sub_100005284();
  v5 = sub_100005264();
  (*(v1 + 8))(v4, v0);
  sub_10000195C(&qword_10000C040, &qword_100005768);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000056F0;
  *(v6 + 32) = v5;
  v7 = sub_100005254();

  return v7;
}

uint64_t sub_1000017B8()
{
  v0 = sub_1000051A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001908();
  sub_100005194();
  v5 = sub_100005184();
  (*(v1 + 8))(v4, v0);
  sub_10000195C(&qword_10000C030, &qword_100005758);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000056F0;
  *(v6 + 32) = v5;
  v7 = sub_100005174();

  return v7;
}

unint64_t sub_100001908()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

uint64_t sub_10000195C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000019A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100005144();
  *a2 = v5;
  return result;
}

uint64_t sub_1000019E0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100005154();
}

unint64_t sub_100001A18()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

uint64_t sub_100001AA0()
{
  v0 = sub_10000195C(&qword_10000C160, &qword_100005D50);
  sub_100003DAC(v0, qword_10000CDA0);
  sub_100003D74(v0, qword_10000CDA0);
  sub_10000195C(&qword_10000C168, &qword_100005D58);
  v1 = sub_10000195C(&qword_10000C170, &qword_100005D60);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000057C0;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  *(v4 + v3) = 0;
  sub_100002454();
  sub_1000052E4();
  v7 = *(v1 + 48);
  *(v5 + v2) = 1;
  sub_1000052E4();
  v8 = *(v1 + 48);
  *(v5 + 2 * v2) = 2;
  sub_1000052E4();
  v9 = *(v1 + 48);
  *(v5 + 3 * v2) = 3;
  sub_1000052E4();
  sub_100003E10(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_1000052F4();
}

uint64_t sub_100001CEC()
{
  v0 = sub_10000195C(&qword_10000C110, &qword_100005D18);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_100005374();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000053B4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000053E4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100005384();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100005364();
  sub_100003DAC(v15, qword_10000CDB8);
  sub_100003D74(v15, qword_10000CDB8);
  sub_1000053D4();
  sub_1000053A4();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_100005394();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100005354();
}

unint64_t sub_100001FE4()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

uint64_t sub_100002038(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1953460082;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C61697265706D69;
    }

    else
    {
      v4 = 0x63697274656DLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x556572757361656DLL;
    }

    else
    {
      v4 = 1953460082;
    }

    if (v3)
    {
      v5 = 0xEC0000007374696ELL;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6C61697265706D69;
  if (a2 != 2)
  {
    v8 = 0x63697274656DLL;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x556572757361656DLL;
    v6 = 0xEC0000007374696ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100005424();
  }

  return v11 & 1;
}

Swift::Int sub_10000217C()
{
  v1 = *v0;
  sub_100005434();
  sub_1000053F4();

  return sub_100005444();
}

uint64_t sub_10000223C()
{
  *v0;
  *v0;
  *v0;
  sub_1000053F4();
}

Swift::Int sub_1000022E8()
{
  v1 = *v0;
  sub_100005434();
  sub_1000053F4();

  return sub_100005444();
}

uint64_t sub_1000023A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005028(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000023D4(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1953460082;
  v4 = 0xE800000000000000;
  v5 = 0x6C61697265706D69;
  if (*v1 != 2)
  {
    v5 = 0x63697274656DLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x556572757361656DLL;
    v2 = 0xEC0000007374696ELL;
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

unint64_t sub_100002454()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_1000024AC()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_100002500@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_10000195C(&qword_10000C160, &qword_100005D50);
  v3 = sub_100003D74(v2, qword_10000CDA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000025B4()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_10000260C()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_100002664()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_1000026C4()
{
  sub_100003D20();
  v1 = sub_100005294();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100002734()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

unint64_t sub_10000278C()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

unint64_t sub_1000027E8()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_1000028A4(uint64_t a1)
{
  v2 = sub_100002454();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000028F4()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_10000294C()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

unint64_t sub_1000029A4()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_1000029FC(uint64_t a1)
{
  v2 = sub_1000027E8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100002A4C()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    sub_100002AB0(&qword_10000C0E0, &qword_100005A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

uint64_t sub_100002AB0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002B0C()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

uint64_t sub_100002B64()
{
  v0 = sub_100005374();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000053B4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1000053E4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100005384();
  sub_100003DAC(v9, qword_10000CDD0);
  sub_100003D74(v9, qword_10000CDD0);
  sub_1000053D4();
  sub_1000053A4();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100005394();
}

uint64_t sub_100002D54@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100005144();
  *a1 = v5;
  return result;
}

uint64_t sub_100002D90(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100005154();
}

void (*sub_100002DC8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100005134();
  return sub_100002E3C;
}

void sub_100002E3C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100002E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003C78();
  v5 = sub_100003D20();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100002EF8()
{
  v0 = qword_10000C068;

  return v0;
}

unint64_t sub_100002F38()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

unint64_t sub_100002F90()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

unint64_t sub_100002FE8()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

uint64_t sub_1000030E8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100003D74(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000031B0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100003C78();
  v7 = sub_100003CCC();
  v8 = sub_100003D20();
  *v5 = v2;
  v5[1] = sub_10000327C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10000327C()
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

uint64_t sub_100003384@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000037FC();
  *a1 = result;
  return result;
}

uint64_t sub_1000033AC(uint64_t a1)
{
  v2 = sub_100001908();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for MeasureSettingsAppIntentsExtensionDeepLinks(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MeasureSettingsAppIntentsExtensionDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100003568(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100005434();
  sub_1000053F4();

  v4 = sub_100005444();

  return sub_100003650(a1, v4);
}

unint64_t sub_100003650(unsigned __int8 a1, uint64_t a2)
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
      v7 = v6 == 2 ? 0x6C61697265706D69 : 0x63697274656DLL;
      v8 = v6 == 2 ? 0xE800000000000000 : 0xE600000000000000;
      v9 = *(*(v2 + 48) + v4) ? 0x556572757361656DLL : 1953460082;
      v10 = *(*(v2 + 48) + v4) ? 0xEC0000007374696ELL : 0xE400000000000000;
      v11 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x6C61697265706D69 : 0x63697274656DLL;
      v14 = v5 == 2 ? 0xE800000000000000 : 0xE600000000000000;
      v15 = v5 ? 0x556572757361656DLL : 1953460082;
      v16 = v5 ? 0xEC0000007374696ELL : 0xE400000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_100005424();

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

uint64_t sub_1000037FC()
{
  v0 = sub_100005324();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  (__chkstk_darwin)();
  v29 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(sub_10000195C(&qword_10000C108, &qword_100005D10) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_10000195C(&qword_10000C110, &qword_100005D18);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_100005374();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000053B4();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_1000053E4();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_100005384();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v27 = sub_10000195C(&qword_10000C118, &qword_100005D20);
  sub_1000053D4();
  sub_1000053A4();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_100005394();
  (*(v22 + 56))(v11, 1, 1, v21);
  v32 = 4;
  v24 = sub_100005124();
  v25 = *(*(v24 - 8) + 56);
  v25(v7, 1, 1, v24);
  v25(v28, 1, 1, v24);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_100002454();
  return sub_100005164();
}

unint64_t sub_100003C78()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

unint64_t sub_100003CCC()
{
  result = qword_10000C128;
  if (!qword_10000C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C128);
  }

  return result;
}

unint64_t sub_100003D20()
{
  result = qword_10000C130;
  if (!qword_10000C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C130);
  }

  return result;
}

uint64_t sub_100003D74(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003DAC(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100003E10(uint64_t a1)
{
  v2 = sub_10000195C(&qword_10000C170, &qword_100005D60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000195C(&qword_10000C178, &qword_100005D68);
    v8 = sub_100005404();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100004FC0(v10, v6, &qword_10000C170, &qword_100005D60);
      v12 = *v6;
      result = sub_100003568(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10000195C(&unk_10000C180, &unk_100005D70);
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

unint64_t sub_100004004(uint64_t a1)
{
  v2 = sub_10000195C(&qword_10000C148, &qword_100005D38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000195C(&qword_10000C158, &qword_100005D48);
    v8 = sub_100005404();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100004FC0(v10, v6, &qword_10000C148, &qword_100005D38);
      v12 = *v6;
      result = sub_100003568(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1000052D4();
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

unint64_t sub_1000041EC()
{
  v0 = sub_10000195C(&qword_10000C138, &qword_100005D28);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v70 = v47 - v2;
  v3 = sub_10000195C(&qword_10000C110, &qword_100005D18);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v69 = v47 - v5;
  v6 = sub_100005374();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000053B4();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000053E4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v65 = sub_100005384();
  v15 = *(v65 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v65);
  v67 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = v47 - v19;
  sub_10000195C(&qword_10000C140, &qword_100005D30);
  v20 = sub_10000195C(&qword_10000C148, &qword_100005D38);
  v68 = v20;
  v21 = *(v20 - 8);
  v57 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v53 = v23;
  *(v23 + 16) = xmmword_1000057C0;
  v66 = v23 + v22;
  v51 = *(v20 + 48);
  *(v23 + v22) = 0;
  v52 = 0xD000000000000010;
  sub_1000053D4();
  sub_1000053A4();
  v24 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v25 = *(v7 + 104);
  v54 = v6;
  v25(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_100005394();
  v60 = "OPEN_MEASURE_SETTINGS";
  sub_1000053D4();
  sub_1000053A4();
  v25(v10, v24, v6);
  v26 = v69;
  sub_100005394();
  v56 = *(v15 + 56);
  v56(v26, 0, 1, v65);
  v59 = "MEASURE_SETTINGS_PATH";
  v55 = 0xD000000000000011;
  v27 = v70;
  sub_1000052A4();
  v63 = sub_1000052B4();
  v28 = *(v63 - 8);
  v62 = *(v28 + 56);
  v58 = v28 + 56;
  v62(v27, 0, 1, v63);
  sub_10000195C(&qword_10000C150, &qword_100005D40);
  v61 = v15 + 56;
  v29 = *(v15 + 72);
  v30 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1000056E0;
  sub_1000053D4();
  sub_1000053A4();
  v31 = v54;
  v25(v10, v24, v54);
  sub_100005394();
  sub_1000053D4();
  sub_1000053A4();
  v25(v10, v24, v31);
  sub_100005394();
  sub_1000053D4();
  sub_1000053A4();
  v25(v10, v24, v31);
  sub_100005394();
  v32 = v66;
  v33 = v69;
  sub_1000052C4();
  v50 = v32 + v57;
  v51 = *(v68 + 48);
  *v50 = 1;
  sub_1000053D4();
  sub_1000053A4();
  v34 = v54;
  v25(v10, v24, v54);
  sub_100005394();
  sub_1000053D4();
  sub_1000053A4();
  v25(v10, v24, v34);
  v35 = v25;
  sub_100005394();
  v56(v33, 0, 1, v65);
  v36 = v70;
  sub_1000052A4();
  v62(v36, 0, 1, v63);
  sub_1000053D4();
  sub_1000053A4();
  v37 = v54;
  v35(v10, v24, v54);
  sub_100005394();
  sub_1000052C4();
  v51 = 2 * v57;
  v49 = (v66 + 2 * v57);
  v50 = *(v68 + 48);
  *v49 = 2;
  sub_1000053D4();
  sub_1000053A4();
  v48 = v24;
  v38 = v37;
  v35(v10, v24, v37);
  sub_100005394();
  sub_1000053D4();
  sub_1000053A4();
  v35(v10, v24, v37);
  v39 = v35;
  v47[1] = v7 + 104;
  v40 = v69;
  sub_100005394();
  v56(v40, 0, 1, v65);
  v41 = v70;
  sub_1000052A4();
  v62(v41, 0, 1, v63);
  sub_1000053D4();
  sub_1000053A4();
  v42 = v48;
  v39(v10, v48, v38);
  sub_100005394();
  sub_1000052C4();
  v52 = (v66 + v51 + v57);
  v57 = *(v68 + 48);
  *v52 = 3;
  sub_1000053D4();
  sub_1000053A4();
  v39(v10, v42, v38);
  sub_100005394();
  sub_1000053D4();
  sub_1000053A4();
  v39(v10, v42, v38);
  v43 = v69;
  sub_100005394();
  v56(v43, 0, 1, v65);
  v44 = v70;
  sub_1000052A4();
  v62(v44, 0, 1, v63);
  sub_1000053D4();
  sub_1000053A4();
  v39(v10, v42, v38);
  sub_100005394();
  sub_1000052C4();
  v45 = sub_100004004(v53);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v45;
}

uint64_t sub_100004FC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000195C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005028(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008770;
  v6._object = a2;
  v4 = sub_100005414(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}