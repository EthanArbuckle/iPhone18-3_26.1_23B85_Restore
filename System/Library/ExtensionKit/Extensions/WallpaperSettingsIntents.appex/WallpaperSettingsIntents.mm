uint64_t sub_100001138()
{
  v0 = (*(*(sub_10000358C(&qword_10000C0D8, &qword_1000042A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = sub_100003B68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = sub_100003B48();
  sub_100003708(v6, qword_10000C158);
  sub_1000036D0(v6, qword_10000C158);
  sub_100003B58();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100003B38();
}

uint64_t sub_1000012A8()
{
  v0 = (*(*(sub_10000358C(&qword_10000C100, &qword_1000042B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v2 = &v20 - v1;
  v3 = (*(*(sub_10000358C(&qword_10000C0D8, &qword_1000042A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v5 = &v20 - v4;
  v6 = sub_100003B68();
  v24 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (__chkstk_darwin)();
  v27 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  sub_10000358C(&qword_10000C108, &qword_1000042C0);
  v11 = sub_10000358C(&qword_10000C110, &qword_1000042C8);
  v12 = *(v11 - 8);
  v26 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100003D40;
  v20 = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_100003B58();
  v15 = *(v7 + 56);
  v23 = v7 + 56;
  v25 = v15;
  v15(v5, 1, 1, v6);
  v22 = "Open Wallpaper Settings";
  sub_100003A88();
  v16 = sub_100003A98();
  v21 = *(*(v16 - 8) + 56);
  v21(v2, 0, 1, v16);
  sub_100003B58();
  sub_100003AA8();
  v17 = (v14 + v13 + v26);
  v26 = *(v11 + 48);
  *v17 = 1;
  sub_100003B58();
  sub_100003B58();
  v25(v5, 0, 1, v24);
  sub_100003A88();
  v21(v2, 0, 1, v16);
  sub_100003B58();
  sub_100003AA8();
  v18 = sub_100002EAC(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10000C170 = v18;
  return result;
}

uint64_t sub_100001718()
{
  v0 = sub_10000358C(&qword_10000C120, &qword_1000042D8);
  sub_100003708(v0, qword_10000C178);
  sub_1000036D0(v0, qword_10000C178);
  sub_10000358C(&qword_10000C128, &qword_1000042E0);
  v1 = sub_10000358C(&qword_10000C130, &qword_1000042E8);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100003D40;
  v5 = (v4 + v3);
  v6 = *(v1 + 48);
  *v5 = 0;
  sub_100001D30();
  sub_100003AC8();
  v7 = *(v1 + 48);
  v5[v2] = 1;
  sub_100003AC8();
  sub_100003094(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_100003AD8();
}

uint64_t sub_1000018F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x615777654E646461;
  }

  else
  {
    v4 = 1953460082;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xEF72657061706C6CLL;
  }

  if (*a2)
  {
    v6 = 0x615777654E646461;
  }

  else
  {
    v6 = 1953460082;
  }

  if (*a2)
  {
    v7 = 0xEF72657061706C6CLL;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100003BB8();
  }

  return v9 & 1;
}

unint64_t sub_1000019A4()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

Swift::Int sub_1000019F8()
{
  v1 = *v0;
  sub_100003BC8();
  sub_100003B88();

  return sub_100003BD8();
}

uint64_t sub_100001A80()
{
  *v0;
  sub_100003B88();
}

Swift::Int sub_100001AF4()
{
  v1 = *v0;
  sub_100003BC8();
  sub_100003B88();

  return sub_100003BD8();
}

uint64_t sub_100001B78@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008618;
  v8._object = v3;
  v5 = sub_100003BA8(v4, v8);

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

void sub_100001BD8(uint64_t *a1@<X8>)
{
  v2 = 1953460082;
  if (*v1)
  {
    v2 = 0x615777654E646461;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEF72657061706C6CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100001C1C()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_100001C74()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_100001CCC()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_100001D30()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

unint64_t sub_100001D88()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

uint64_t sub_100001DDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = sub_10000358C(&qword_10000C120, &qword_1000042D8);
  v3 = sub_1000036D0(v2, qword_10000C178);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100001E94()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_100001EEC()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_100001F44()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100001F9C()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

uint64_t sub_100001FF0()
{
  sub_10000367C();
  v1 = sub_100003A78();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000020C4(uint64_t a1)
{
  v2 = sub_100001D30();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100002114()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_10000216C()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_1000021C4()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

uint64_t sub_100002218()
{
  if (qword_10000C008 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100002274(uint64_t a1)
{
  v2 = sub_100001F9C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000022C4()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    sub_100002328(&qword_10000C0A0, &qword_100004010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

uint64_t sub_100002328(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002384()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_1000023DC()
{
  v0 = sub_100003B68();
  sub_100003708(v0, qword_10000C190);
  sub_1000036D0(v0, qword_10000C190);
  return sub_100003B58();
}

uint64_t sub_100002440@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100003A48();
  *a1 = v5;
  return result;
}

uint64_t sub_10000247C(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100003A58();
}

void (*sub_1000024B4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100003A38();
  return sub_100002528;
}

void sub_100002528(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002574()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_1000025C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035D4();
  v5 = sub_10000367C();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100002638()
{
  v0 = qword_10000C020;

  return v0;
}

unint64_t sub_100002678()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_1000026D0()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_100002728()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

uint64_t sub_100002828@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_1000036D0(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000028F0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000035D4();
  v7 = sub_100003628();
  v8 = sub_10000367C();
  *v5 = v2;
  v5[1] = sub_1000029BC;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000029BC()
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

uint64_t sub_100002AC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003288();
  *a1 = result;
  return result;
}

uint64_t sub_100002AEC(uint64_t a1)
{
  v2 = sub_100002574();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for WallpaperSettingsDeepLink(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WallpaperSettingsDeepLink(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100002CB0(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100003BC8();
  sub_100003B88();

  v5 = sub_100003BD8();

  return sub_100002D5C(a1 & 1, v5);
}

unint64_t sub_100002D5C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x615777654E646461;
    }

    else
    {
      v6 = 1953460082;
    }

    if (a1)
    {
      v7 = 0xEF72657061706C6CLL;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x615777654E646461 : 1953460082;
      v9 = *(*(v2 + 48) + v4) ? 0xEF72657061706C6CLL : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_100003BB8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_100002EAC(uint64_t a1)
{
  v2 = sub_10000358C(&qword_10000C110, &qword_1000042C8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000358C(&qword_10000C118, &qword_1000042D0);
    v8 = sub_100003B98();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000376C(v10, v6, &qword_10000C110, &qword_1000042C8);
      v12 = *v6;
      result = sub_100002CB0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100003AB8();
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

unint64_t sub_100003094(uint64_t a1)
{
  v2 = sub_10000358C(&qword_10000C130, &qword_1000042E8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000358C(&qword_10000C138, &qword_1000042F0);
    v8 = sub_100003B98();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000376C(v10, v6, &qword_10000C130, &qword_1000042E8);
      v12 = *v6;
      result = sub_100002CB0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10000358C(&qword_10000C140, qword_1000042F8);
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

uint64_t sub_100003288()
{
  v21 = sub_100003B08();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000358C(&qword_10000C0D0, &qword_1000042A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_10000358C(&qword_10000C0D8, &qword_1000042A8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_100003B68();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000358C(&qword_10000C0E0, &qword_1000042B0);
  sub_100003B58();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 2;
  v18 = sub_100003A28();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100001D30();
  return sub_100003A68();
}

uint64_t sub_10000358C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000035D4()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

unint64_t sub_100003628()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

unint64_t sub_10000367C()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

uint64_t sub_1000036D0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003708(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000376C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000358C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000037E4(uint64_t a1)
{
  v2 = sub_100003934();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000388C();
  sub_100003B78();
  return 0;
}

unint64_t sub_10000388C()
{
  result = qword_10000C148;
  if (!qword_10000C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C148);
  }

  return result;
}

unint64_t sub_100003934()
{
  result = qword_10000C150;
  if (!qword_10000C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C150);
  }

  return result;
}