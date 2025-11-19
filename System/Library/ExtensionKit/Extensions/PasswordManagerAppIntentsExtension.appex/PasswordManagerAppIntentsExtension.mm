uint64_t sub_100001080()
{
  v0 = sub_100003A48(&qword_10000C130, &qword_100005060);
  sub_100003BC4(v0, qword_10000C198);
  sub_100003B8C(v0, qword_10000C198);
  sub_100003A48(&qword_10000C138, &qword_100005068);
  v1 = sub_100003A48(&qword_10000C140, &qword_100005070);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100004AA0;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  *(v4 + v3) = 0;
  sub_100001898();
  sub_100004828();
  v7 = *(v1 + 48);
  *(v5 + v2) = 1;
  sub_100004828();
  v8 = *(v1 + 48);
  *(v5 + 2 * v2) = 2;
  sub_100004828();
  v9 = *(v1 + 48);
  *(v5 + 3 * v2) = 3;
  sub_100004828();
  sub_100002BBC(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_100004838();
}

uint64_t sub_1000012CC()
{
  v0 = (*(*(sub_100003A48(&qword_10000C0E0, &qword_100005028) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = sub_1000048C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = sub_1000048A8();
  sub_100003BC4(v6, qword_10000C1B0);
  sub_100003B8C(v6, qword_10000C1B0);
  sub_1000048B8();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100004898();
}

unint64_t sub_10000144C()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

uint64_t sub_1000014A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1953460082;
  if (a1 > 1u)
  {
    v3 = 0x8000000100005210;
    v4 = 0x8000000100005230;
    v5 = a1 == 2;
    if (a1 == 2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD00000000000001DLL;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x80000001000051F0;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0xD00000000000001ALL;
    }

    else
    {
      v6 = 1953460082;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x8000000100005210;
  v9 = 0xD00000000000001DLL;
  if (a2 == 2)
  {
    v9 = 0xD000000000000016;
  }

  else
  {
    v8 = 0x8000000100005230;
  }

  if (a2)
  {
    v2 = 0xD00000000000001ALL;
    v10 = 0x80000001000051F0;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_100004918();
  }

  return v13 & 1;
}

Swift::Int sub_1000015C0()
{
  v1 = *v0;
  sub_100004928();
  sub_1000048E8();

  return sub_100004938();
}

uint64_t sub_100001680()
{
  *v0;
  *v0;
  sub_1000048E8();
}

Swift::Int sub_10000172C()
{
  v1 = *v0;
  sub_100004928();
  sub_1000048E8();

  return sub_100004938();
}

uint64_t sub_1000017E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000036F8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100001818(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1953460082;
  v4 = 0x8000000100005210;
  v5 = 0xD00000000000001DLL;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v4 = 0x8000000100005230;
  }

  if (*v1)
  {
    v3 = 0xD00000000000001ALL;
    v2 = 0x80000001000051F0;
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

unint64_t sub_100001898()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_1000018F0()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

uint64_t sub_100001944@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_100003A48(&qword_10000C130, &qword_100005060);
  v3 = sub_100003B8C(v2, qword_10000C198);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000019F8()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

unint64_t sub_100001A50()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100001AA8()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

uint64_t sub_100001B08()
{
  sub_100003B38();
  v1 = sub_1000047D8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100001B78()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_100001BD0()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100001C28()
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

uint64_t sub_100001D3C(uint64_t a1)
{
  v2 = sub_100001898();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100001D8C()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_100001DE4()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100001E3C()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

uint64_t sub_100001E94(uint64_t a1)
{
  v2 = sub_100001C80();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100001EE4()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    sub_100001F48(&qword_10000C0A8, &qword_100004D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_100001F48(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001FA4()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_100001FFC()
{
  v0 = sub_1000048C8();
  sub_100003BC4(v0, qword_10000C1C8);
  sub_100003B8C(v0, qword_10000C1C8);
  return sub_1000048B8();
}

uint64_t sub_100002094@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100004688();
  *a1 = v5;
  return result;
}

uint64_t sub_1000020D0(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100004698();
}

void (*sub_100002108(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100004678();
  return sub_10000217C;
}

void sub_10000217C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000021C8()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_10000221C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003A90();
  v5 = sub_100003B38();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100002298()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_1000022F0()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

unint64_t sub_100002348()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_100002448@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100003B8C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100002510(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100003A90();
  v7 = sub_100003AE4();
  v8 = sub_100003B38();
  *v5 = v2;
  v5[1] = sub_1000025DC;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000025DC()
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

uint64_t sub_1000026E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003744();
  *a1 = result;
  return result;
}

uint64_t sub_10000270C(uint64_t a1)
{
  v2 = sub_1000021C8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for PasswordManagerDeepLinks(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PasswordManagerDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000028CC()
{
  v0 = sub_1000047F8();
  sub_100003BC4(v0, qword_10000C020);
  sub_100003B8C(v0, qword_10000C020);
  return sub_1000047E8();
}

unint64_t sub_100002930(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100004928();
  sub_1000048E8();

  v4 = sub_100004938();

  return sub_100002A18(a1, v4);
}

unint64_t sub_100002A18(unsigned __int8 a1, uint64_t a2)
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
      v7 = 0xD00000000000001DLL;
      v8 = v6 == 2 ? 0xD000000000000016 : 0xD00000000000001DLL;
      v9 = v6 == 2 ? 0x8000000100005210 : 0x8000000100005230;
      v10 = 0xD00000000000001ALL;
      v11 = *(*(v2 + 48) + v4) ? 0xD00000000000001ALL : 1953460082;
      v12 = *(*(v2 + 48) + v4) ? 0x80000001000051F0 : 0xE400000000000000;
      v13 = *(*(v2 + 48) + v4) <= 1u ? v11 : v8;
      v14 = *(*(v2 + 48) + v4) <= 1u ? v12 : v9;
      if (v5 == 2)
      {
        v7 = 0xD000000000000016;
        v15 = 0x8000000100005210;
      }

      else
      {
        v15 = 0x8000000100005230;
      }

      if (v5)
      {
        v16 = 0x80000001000051F0;
      }

      else
      {
        v10 = 1953460082;
        v16 = 0xE400000000000000;
      }

      v17 = v5 <= 1 ? v10 : v7;
      v18 = v5 <= 1 ? v16 : v15;
      if (v13 == v17 && v14 == v18)
      {
        break;
      }

      v19 = sub_100004918();

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

unint64_t sub_100002BBC(uint64_t a1)
{
  v2 = sub_100003A48(&qword_10000C140, &qword_100005070);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003A48(&qword_10000C148, &qword_100005078);
    v8 = sub_1000048F8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100003C28(v10, v6, &qword_10000C140, &qword_100005070);
      v12 = *v6;
      result = sub_100002930(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100003A48(&qword_10000C150, &unk_100005080);
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

unint64_t sub_100002DB0(uint64_t a1)
{
  v2 = sub_100003A48(&qword_10000C118, &qword_100005048);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003A48(&qword_10000C128, &qword_100005058);
    v8 = sub_1000048F8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100003C28(v10, v6, &qword_10000C118, &qword_100005048);
      v12 = *v6;
      result = sub_100002930(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100004818();
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

unint64_t sub_100002F98()
{
  v0 = sub_100003A48(&qword_10000C108, &qword_100005038);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v34 - v2;
  v4 = sub_100003A48(&qword_10000C0E0, &qword_100005028);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v34 - v6;
  v8 = sub_1000048C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  v13 = v34 - v12;
  sub_100003A48(&qword_10000C110, &qword_100005040);
  v14 = sub_100003A48(&qword_10000C118, &qword_100005048);
  v15 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v46 = *(*(v14 - 8) + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100004AA0;
  v35 = v16;
  v36 = v13;
  v45 = v14;
  v40 = *(v14 + 48);
  v47 = v16 + v15;
  *(v16 + v15) = 0;
  sub_1000048B8();
  sub_1000048B8();
  v17 = *(v9 + 56);
  v48 = v8;
  v43 = v17;
  v44 = v9 + 56;
  v17(v7, 0, 1, v8);
  if (qword_10000C018 != -1)
  {
    swift_once();
  }

  v18 = sub_1000047F8();
  v19 = sub_100003B8C(v18, qword_10000C020);
  v20 = *(v18 - 8);
  v21 = *(v20 + 16);
  v38 = v20 + 16;
  v39 = v21;
  v41 = v19;
  v21(v3, v19, v18);
  v22 = *(v20 + 56);
  v37 = v20 + 56;
  v42 = v22;
  v22(v3, 0, 1, v18);
  sub_100003A48(&qword_10000C120, &qword_100005050);
  v23 = *(v9 + 72);
  v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_100004AB0;
  sub_1000048B8();
  sub_1000048B8();
  sub_1000048B8();
  v25 = v47;
  sub_100004808();
  v26 = *(v45 + 48);
  *(v25 + v46) = 1;
  sub_1000048B8();
  v40 = "Detect Compromised Passwords";
  sub_1000048B8();
  v43(v7, 0, 1, v48);
  v27 = v19;
  v28 = v39;
  v39(v3, v27, v18);
  v42(v3, 0, 1, v18);
  sub_1000048B8();
  sub_100004808();
  v29 = 2 * v46;
  v34[1] = *(v45 + 48);
  *(v47 + 2 * v46) = 2;
  sub_1000048B8();
  sub_1000048B8();
  v43(v7, 0, 1, v48);
  v28(v3, v41, v18);
  v30 = v42;
  v42(v3, 0, 1, v18);
  sub_1000048B8();
  sub_100004808();
  v31 = v29 + v46;
  v46 = *(v45 + 48);
  *(v47 + v31) = 3;
  sub_1000048B8();
  sub_1000048B8();
  v43(v7, 0, 1, v48);
  v39(v3, v41, v18);
  v30(v3, 0, 1, v18);
  sub_1000048B8();
  sub_100004808();
  v32 = sub_100002DB0(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v32;
}

uint64_t sub_1000036F8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008710;
  v6._object = a2;
  v4 = sub_100004908(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100003744()
{
  v20 = sub_100004868();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100003A48(&qword_10000C0D8, &qword_100005020) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100003A48(&qword_10000C0E0, &qword_100005028);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_1000048C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100003A48(&qword_10000C0E8, &qword_100005030);
  sub_1000048B8();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 4;
  v17 = sub_100004668();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_100001898();
  return sub_1000046A8();
}

uint64_t sub_100003A48(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003A90()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

unint64_t sub_100003AE4()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

unint64_t sub_100003B38()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

uint64_t sub_100003B8C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003BC4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100003C28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003A48(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100003CA0(uint64_t a1)
{
  v2 = sub_100003DF0();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003D48();
  sub_1000048D8();
  return 0;
}

unint64_t sub_100003D48()
{
  result = qword_10000C158;
  if (!qword_10000C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C158);
  }

  return result;
}

unint64_t sub_100003DF0()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

uint64_t sub_100003E54()
{
  v0 = sub_100003A48(&qword_10000C188, &qword_1000051E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  sub_1000021C8();
  sub_100004788();
  v5 = sub_100004718();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100004788();
  v7 = sub_100004718();
  v6(v4, v0);
  sub_100003A48(&qword_10000C190, &unk_1000051F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100004AB0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_100004708();

  return v9;
}

uint64_t sub_100004014()
{
  v0 = sub_100004778();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100001C28();
  sub_1000046F8();

  sub_1000021C8();
  sub_100004768();
  v5 = sub_100004758();
  (*(v1 + 8))(v4, v0);
  sub_100003A48(&qword_10000C180, &qword_1000051E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005130;
  *(v6 + 32) = v5;
  v7 = sub_100004748();

  return v7;
}

uint64_t sub_100004184()
{
  v0 = sub_100004738();
  sub_100003A48(&qword_10000C170, &qword_1000051A8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100005130;
  *(v1 + 32) = v0;
  v2 = sub_100004728();

  return v2;
}

uint64_t sub_100004208()
{
  v0 = sub_100004738();
  sub_100003A48(&qword_10000C170, &qword_1000051A8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100005130;
  *(v1 + 32) = v0;
  v2 = sub_100004728();

  return v2;
}

uint64_t sub_10000428C()
{
  v0 = sub_1000047B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_100003744();
  sub_1000021C8();
  sub_1000047C8();
  v5 = sub_1000047A8();
  (*(v1 + 8))(v4, v0);
  sub_100003A48(&qword_10000C178, &qword_1000051B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005130;
  *(v6 + 32) = v5;
  v7 = sub_100004798();

  return v7;
}

uint64_t sub_1000043F4()
{
  v0 = sub_1000046E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000021C8();
  sub_1000046D8();
  v5 = sub_1000046C8();
  (*(v1 + 8))(v4, v0);
  sub_100003A48(&qword_10000C168, "\n\t");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005130;
  *(v6 + 32) = v5;
  v7 = sub_1000046B8();

  return v7;
}

uint64_t sub_100004544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100004688();
  *a2 = v5;
  return result;
}

uint64_t sub_100004580(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100004698();
}