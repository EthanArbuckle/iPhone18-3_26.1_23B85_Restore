id sub_100001930()
{
  v0 = type metadata accessor for MagnifierService();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC23AccessibilityAppIntents16MagnifierService____lazy_storage___logger;
  v5 = sub_1000085CC();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  result = [objc_allocWithZone(sub_10000858C()) init];
  *(v3 + 16) = result;
  qword_100010350 = v3;
  return result;
}

uint64_t sub_1000019D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(sub_1000026B8(&qword_1000101F8, &qword_100008AA0) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC23AccessibilityAppIntents16MagnifierService____lazy_storage___logger;
  swift_beginAccess();
  sub_100002704(v1 + v9, v8);
  v10 = sub_1000085CC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_100002774(v8);
  sub_1000085BC();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1000027DC(v6, v1 + v9);
  return swift_endAccess();
}

void sub_100001C48(void (*a1)(void))
{
  v3 = sub_1000085CC();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = *(v1 + 16);
  a1();
}

uint64_t sub_100001E94()
{
  sub_100002774(v0 + OBJC_IVAR____TtC23AccessibilityAppIntents16MagnifierService____lazy_storage___logger);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MagnifierService()
{
  result = qword_100010158;
  if (!qword_100010158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100001F54()
{
  sub_100001FF4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100001FF4()
{
  if (!qword_100010168)
  {
    sub_1000085CC();
    v0 = sub_10000866C();
    if (!v1)
    {
      atomic_store(v0, &qword_100010168);
    }
  }
}

_DWORD *sub_10000204C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100002068(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002134(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000265C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002610(v11);
  return v7;
}

unint64_t sub_100002134(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100002240(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10000868C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100002240(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000228C(a1, a2);
  sub_1000023BC(&off_10000C8B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000228C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000024A8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000868C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000861C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000024A8(v10, 0);
        result = sub_10000867C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000023BC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000251C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000024A8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000026B8(&qword_1000101F0, &qword_100008A98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000251C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026B8(&qword_1000101F0, &qword_100008A98);
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

uint64_t sub_100002610(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000265C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000026B8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002704(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026B8(&qword_1000101F8, &qword_100008AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002774(uint64_t a1)
{
  v2 = sub_1000026B8(&qword_1000101F8, &qword_100008AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000027DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026B8(&qword_1000101F8, &qword_100008AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for AXCAccessibilityShortcutOption()
{
  if (!qword_100010200)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100010200);
    }
  }
}

unint64_t sub_1000028A0()
{
  result = qword_100010208;
  if (!qword_100010208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010208);
  }

  return result;
}

unint64_t sub_1000028F8()
{
  result = qword_100010210;
  if (!qword_100010210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010210);
  }

  return result;
}

unint64_t sub_100002950()
{
  result = qword_100010218;
  if (!qword_100010218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010218);
  }

  return result;
}

unint64_t sub_1000029A8()
{
  result = qword_100010220;
  if (!qword_100010220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010220);
  }

  return result;
}

void *sub_100002A20@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

Swift::Int sub_100002A4C()
{
  v1 = *v0;
  sub_1000086AC();
  sub_1000086BC(v1);
  return sub_1000086CC();
}

Swift::Int sub_100002AC0()
{
  v1 = *v0;
  sub_1000086AC();
  sub_1000086BC(v1);
  return sub_1000086CC();
}

Swift::Int sub_100002B04()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1000086AC();
  if (v2)
  {
    v3 = v1 & 1 | 0x2328;
  }

  else
  {
    v3 = v1;
  }

  sub_1000086BC(v3);
  return sub_1000086CC();
}

void sub_100002B60()
{
  v1 = *v0;
  if (*(v0 + 4))
  {
    v2 = v1 & 1 | 0x2328;
  }

  else
  {
    v2 = v1;
  }

  sub_1000086BC(v2);
}

Swift::Int sub_100002BA4()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1000086AC();
  if (v2)
  {
    v3 = v1 & 1 | 0x2328;
  }

  else
  {
    v3 = v1;
  }

  sub_1000086BC(v3);
  return sub_1000086CC();
}

void sub_100002BFC(uint64_t *a1@<X8>)
{
  LODWORD(v2) = *v1;
  if (*(v1 + 4))
  {
    v2 = v2 & 1 | 0x2328;
  }

  else
  {
    v2 = v2;
  }

  *a1 = v2;
}

BOOL sub_100002C20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = ((*a2 ^ *a1) & 1) == 0;
  if ((v2 & 1) == 0)
  {
    v3 = 0;
  }

  if (*(a1 + 4) == 1)
  {
    return v3;
  }

  else
  {
    return (*a1 == *a2) & ~v2;
  }
}

uint64_t sub_100002C5C()
{
  v0 = sub_1000026B8(&qword_100010290, &qword_100008F28);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10000854C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000084FC();
  sub_100007250(v7, qword_100010358);
  sub_100007218(v7, qword_100010358);
  sub_10000852C();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000084EC();
}

uint64_t sub_100002DCC(uint64_t a1)
{
  v2 = sub_10000857C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_10000853C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000085DC();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  if ((a1 & 0x100000000) != 0 || (v11 = [objc_opt_self() localizationKeyForAccessibilityShortcutOption:a1]) == 0)
  {

    return sub_10000852C();
  }

  else
  {
    v12 = v11;
    sub_10000860C();

    sub_1000085EC();
    *v8 = sub_1000071CC();
    (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v4);
    sub_10000856C();
    return sub_10000855C();
  }
}

uint64_t sub_100003054(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    if (a1)
    {
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
      case 12:

        break;
      case 2:
      case 34:

        break;
      case 4:

        break;
      case 6:
      case 18:

        break;
      case 7:
      case 10:
      case 17:
      case 24:
      case 29:

        break;
      case 9:
      case 15:

        break;
      case 14:
      case 26:

        break;
      case 20:
      case 35:

        break;
      case 21:
      case 25:
      case 39:

        break;
      case 22:

        break;
      case 28:
      case 31:

        break;
      case 33:
      case 36:

        break;
      case 38:
        v3 = sub_1000085FC();
        v4 = sub_1000085FC();
        v5 = AXUILocalizedStringForKeyWithTable();

        if (v5)
        {
          sub_10000860C();
        }

        break;
      case 46:

        break;
      default:

        break;
    }
  }

  return sub_10000852C();
}

uint64_t sub_100003558(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    if (a1)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0x6275622E74786574;
    }
  }

  else
  {
    v1 = a1 - 1;
    result = 0x2E63697373616C63;
    switch(v1)
    {
      case 0:
        result = 0x65766F6563696F76;
        break;
      case 1:
        result = 0x6E692E7472616D73;
        break;
      case 3:
        result = 0xD000000000000031;
        break;
      case 5:
        result = 0xD000000000000012;
        break;
      case 6:
        result = 0x7070612E6B636F6CLL;
        break;
      case 8:
        result = 0x672E657261757173;
        break;
      case 9:
        result = 0x662E6172656D6163;
        break;
      case 11:
        result = 0xD000000000000014;
        break;
      case 13:
        result = 0x2E78616D2E6E7573;
        break;
      case 14:
        return result;
      case 16:
        result = 0x6F632E6563696F76;
        break;
      case 17:
        result = 0x6472616F6279656BLL;
        break;
      case 19:
        result = 0xD000000000000024;
        break;
      case 20:
      case 32:
        result = 0xD000000000000017;
        break;
      case 21:
        result = 0x646E696677656976;
        break;
      case 23:
        result = 0xD000000000000018;
        break;
      case 24:
      case 34:
        result = 0xD000000000000013;
        break;
      case 25:
        result = 0x6E6F687064616568;
        break;
      case 27:
      case 37:
      case 45:
        result = 0xD00000000000001CLL;
        break;
      case 28:
        result = 0x6D726F6665766177;
        break;
      case 30:
        result = 0xD000000000000026;
        break;
      case 33:
        result = 0xD00000000000001DLL;
        break;
      case 35:
        result = 0x632E6E6F69746F6DLL;
        break;
      case 38:
        result = 0xD000000000000012;
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

unint64_t sub_1000039C0()
{
  result = qword_100010228;
  if (!qword_100010228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010228);
  }

  return result;
}

unint64_t sub_100003A18()
{
  result = qword_100010230;
  if (!qword_100010230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010230);
  }

  return result;
}

unint64_t sub_100003A70()
{
  result = qword_100010238;
  if (!qword_100010238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010238);
  }

  return result;
}

unint64_t sub_100003AC8()
{
  result = qword_100010240;
  if (!qword_100010240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010240);
  }

  return result;
}

uint64_t sub_100003B28@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010118 != -1)
  {
    swift_once();
  }

  v2 = sub_1000084FC();
  v3 = sub_100007218(v2, qword_100010358);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003C08(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003C94()
{
  result = qword_100010258;
  if (!qword_100010258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010258);
  }

  return result;
}

uint64_t sub_100003CE8()
{
  v1 = sub_1000026B8(&qword_100010290, &qword_100008F28);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16[-v3];
  v5 = sub_10000854C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = *v0;
  v17 = *(v0 + 4);
  v9 = v17;
  sub_100002DCC(v8 | (v17 << 32));
  v16[8] = v9;
  sub_100003054(v8 | (v9 << 32));
  (*(v6 + 56))(v4, 0, 1, v5);
  v10 = sub_1000026B8(&qword_1000102A0, &qword_100008F38);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v16[-v12];
  v16[4] = v9;
  sub_100003558(v8 | (v9 << 32));
  sub_10000842C();
  v14 = sub_10000843C();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  return sub_10000844C();
}

uint64_t sub_100003EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100007594;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

unint64_t sub_100004000()
{
  result = qword_100010260;
  if (!qword_100010260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010260);
  }

  return result;
}

unint64_t sub_100004058()
{
  result = qword_100010268;
  if (!qword_100010268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010268);
  }

  return result;
}

unint64_t sub_1000040B0()
{
  result = qword_100010270;
  if (!qword_100010270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010270);
  }

  return result;
}

uint64_t sub_100004104()
{
  v0 = sub_1000026B8(&qword_100010290, &qword_100008F28);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v44 - v2;
  v4 = sub_10000854C();
  v57 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000026B8(&qword_100010298, &qword_100008F30);
  v54 = *(v52 - 8);
  v55 = v52 - 8;
  v61 = v54;
  v9 = *(v54 + 64);
  __chkstk_darwin(v52);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v47 = v9;
  v48 = v10;
  v53 = &v44 - v10;
  sub_10000852C();
  sub_10000852C();
  v11 = *(v5 + 56);
  v58 = v5 + 56;
  v59 = v11;
  v11(v3, 0, 1, v4);
  v12 = sub_1000026B8(&qword_1000102A0, &qword_100008F38);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v46 = v13;
  v50 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v44 - v50;
  sub_10000842C();
  v15 = sub_10000843C();
  v16 = *(v15 - 8);
  v56 = *(v16 + 56);
  v49 = v16 + 56;
  v45 = v15;
  v56(v14, 0, 1, v15);
  v62 = sub_100003A70();
  v17 = sub_10000840C();
  __chkstk_darwin(v17);
  v51 = &v44 - v10;
  sub_10000852C();
  sub_10000852C();
  v18 = v57;
  v19 = v59;
  v20 = v59(v3, 0, 1, v57);
  __chkstk_darwin(v20);
  v21 = v50;
  sub_10000842C();
  v22 = v15;
  v23 = v56;
  v56(&v44 - v21, 0, 1, v22);
  v44 = v8;
  v24 = sub_10000840C();
  __chkstk_darwin(v24);
  v25 = v48;
  v60 = (&v44 - v48);
  sub_10000852C();
  sub_10000852C();
  v26 = v19(v3, 0, 1, v18);
  __chkstk_darwin(v26);
  sub_10000842C();
  v27 = v45;
  v23(&v44 - v21, 0, 1, v45);
  v28 = sub_10000840C();
  __chkstk_darwin(v28);
  v48 = (&v44 - v25);
  sub_10000852C();
  sub_10000852C();
  v29 = v59(v3, 0, 1, v57);
  __chkstk_darwin(v29);
  sub_10000842C();
  v56(&v44 - v21, 0, 1, v27);
  sub_10000840C();
  sub_1000026B8(&qword_1000102A8, &qword_100008F40);
  v30 = *(v54 + 72);
  v31 = v61;
  v32 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100008B20;
  v34 = v33 + v32;
  v35 = *(v31 + 16);
  v36 = v52;
  v37 = v53;
  v35(v34, v53, v52);
  v38 = v51;
  v35(v34 + v30, v51, v36);
  v39 = v60;
  v35(v34 + 2 * v30, v60, v36);
  v40 = v48;
  v35(v34 + 3 * v30, v48, v36);
  v41 = sub_1000083FC();

  v42 = *(v61 + 8);
  v42(v40, v36);
  v42(v39, v36);
  v42(v38, v36);
  v42(v37, v36);
  return v41;
}

uint64_t sub_1000048CC()
{
  v0 = sub_1000026B8(&qword_1000102B0, &qword_100008F48);
  v48 = *(v0 - 8);
  v49 = v0 - 8;
  v1 = v48;
  v47 = v48;
  v2 = *(v48 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v60 = &v44 - v4;
  __chkstk_darwin(v3);
  v61 = 15;
  v62 = 0;
  sub_100003A70();
  sub_10000837C();
  sub_10000836C();
  v5 = *(v1 + 8);
  v6 = v5(&v44 - v4, v0);
  v7 = __chkstk_darwin(v6);
  v59 = &v44 - v4;
  __chkstk_darwin(v7);
  v61 = 10;
  v62 = 0;
  sub_10000837C();
  sub_10000836C();
  v8 = v5(&v44 - v4, v0);
  v9 = __chkstk_darwin(v8);
  v58 = &v44 - v4;
  __chkstk_darwin(v9);
  v61 = 22;
  v62 = 0;
  sub_10000837C();
  sub_10000836C();
  v10 = v5(&v44 - v4, v0);
  v11 = __chkstk_darwin(v10);
  v57 = &v44 - v4;
  __chkstk_darwin(v11);
  v61 = 21;
  v62 = 0;
  sub_10000837C();
  sub_10000836C();
  v12 = v5(&v44 - v4, v0);
  v13 = __chkstk_darwin(v12);
  v56 = &v44 - v4;
  __chkstk_darwin(v13);
  v61 = 12;
  v62 = 0;
  sub_10000837C();
  sub_10000836C();
  v14 = v5(&v44 - v4, v0);
  v15 = __chkstk_darwin(v14);
  v55 = &v44 - v4;
  __chkstk_darwin(v15);
  v61 = 36;
  v62 = 0;
  sub_10000837C();
  sub_10000836C();
  v16 = v5(&v44 - v4, v0);
  v17 = __chkstk_darwin(v16);
  v54 = &v44 - v4;
  __chkstk_darwin(v17);
  v61 = 24;
  v62 = 0;
  sub_10000837C();
  sub_10000836C();
  v18 = v5(&v44 - v4, v0);
  v19 = __chkstk_darwin(v18);
  v53 = &v44 - v4;
  __chkstk_darwin(v19);
  v61 = 20;
  v62 = 0;
  sub_10000837C();
  sub_10000836C();
  v20 = v5(&v44 - v4, v0);
  v21 = __chkstk_darwin(v20);
  v52 = &v44 - v4;
  __chkstk_darwin(v21);
  v61 = 14;
  v62 = 0;
  sub_10000837C();
  sub_10000836C();
  v22 = v5(&v44 - v4, v0);
  v23 = __chkstk_darwin(v22);
  v51 = &v44 - v4;
  __chkstk_darwin(v23);
  v61 = 2;
  v62 = 0;
  sub_10000837C();
  sub_10000836C();
  v24 = v5(&v44 - v4, v0);
  v25 = __chkstk_darwin(v24);
  v50 = &v44 - v4;
  __chkstk_darwin(v25);
  v61 = 1;
  v62 = 0;
  sub_10000837C();
  sub_10000836C();
  v26 = v5(&v44 - v4, v0);
  v27 = __chkstk_darwin(v26);
  v46 = &v44 - v4;
  __chkstk_darwin(v27);
  v61 = 4;
  v62 = 0;
  sub_10000837C();
  sub_10000836C();
  v28 = v5(&v44 - v4, v0);
  v29 = __chkstk_darwin(v28);
  v45 = &v44 - v4;
  __chkstk_darwin(v29);
  v61 = 0;
  v62 = 1;
  sub_10000837C();
  sub_10000836C();
  v30 = v5(&v44 - v4, v0);
  v31 = __chkstk_darwin(v30);
  v44 = &v44 - v4;
  __chkstk_darwin(v31);
  v61 = 34;
  v62 = 0;
  sub_10000837C();
  sub_10000836C();
  v5(&v44 - v4, v0);
  sub_1000026B8(&qword_1000102B8, &qword_100008F50);
  v32 = *(v48 + 72);
  v33 = v47;
  v34 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v35 = swift_allocObject();
  v49 = v35;
  *(v35 + 16) = xmmword_100008B30;
  v36 = v35 + v34;
  v37 = *(v33 + 16);
  v37(v35 + v34, v60, v0);
  v37(v36 + v32, v59, v0);
  v37(v36 + 2 * v32, v58, v0);
  v37(v36 + 3 * v32, v57, v0);
  v37(v36 + 4 * v32, v56, v0);
  v37(v36 + 5 * v32, v55, v0);
  v37(v36 + 6 * v32, v54, v0);
  v37(v36 + 7 * v32, v53, v0);
  v37(v36 + 8 * v32, v52, v0);
  v37(v36 + 9 * v32, v51, v0);
  v37(v36 + 10 * v32, v50, v0);
  v38 = v46;
  v37(v36 + 11 * v32, v46, v0);
  v39 = v45;
  v37(v36 + 12 * v32, v45, v0);
  v40 = v36 + 13 * v32;
  v41 = v44;
  v37(v40, v44, v0);
  v42 = sub_10000835C();

  v5(v41, v0);
  v5(v39, v0);
  v5(v38, v0);
  v5(v50, v0);
  v5(v51, v0);
  v5(v52, v0);
  v5(v53, v0);
  v5(v54, v0);
  v5(v55, v0);
  v5(v56, v0);
  v5(v57, v0);
  v5(v58, v0);
  v5(v59, v0);
  v5(v60, v0);
  return v42;
}

uint64_t sub_1000054D0()
{
  v0 = sub_1000026B8(&qword_1000102B0, &qword_100008F48);
  v36 = *(v0 - 8);
  v37 = v0 - 8;
  v1 = v36;
  v35 = v36;
  v2 = *(v36 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = &v29 - v4;
  __chkstk_darwin(v3);
  v40 = 9;
  v41 = 0;
  sub_100003A70();
  sub_10000837C();
  sub_10000836C();
  v5 = v1 + 8;
  v6 = *(v1 + 8);
  v7 = v6(&v29 - v4, v0);
  v8 = __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v40 = 17;
  v41 = 0;
  sub_10000837C();
  v29 = &v29 - v4;
  sub_10000836C();
  v9 = v6(&v29 - v4, v0);
  v10 = __chkstk_darwin(v9);
  v38 = &v29 - v4;
  __chkstk_darwin(v10);
  v40 = 18;
  v41 = 0;
  sub_10000837C();
  sub_10000836C();
  v11 = v6(&v29 - v4, v0);
  v12 = __chkstk_darwin(v11);
  v34 = &v29 - v4;
  __chkstk_darwin(v12);
  v40 = 6;
  v41 = 0;
  sub_10000837C();
  sub_10000836C();
  v13 = v6(&v29 - v4, v0);
  v14 = __chkstk_darwin(v13);
  v33 = &v29 - v4;
  __chkstk_darwin(v14);
  v40 = 28;
  v41 = 0;
  sub_10000837C();
  sub_10000836C();
  v32 = v5;
  v15 = v6(&v29 - v4, v0);
  v31 = v6;
  v16 = __chkstk_darwin(v15);
  v30 = &v29 - v4;
  __chkstk_darwin(v16);
  v40 = 31;
  v41 = 0;
  sub_10000837C();
  sub_10000836C();
  v6(&v29 - v4, v0);
  sub_1000026B8(&qword_1000102B8, &qword_100008F50);
  v17 = *(v36 + 72);
  v18 = v35;
  v19 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100008B40;
  v21 = v20 + v19;
  v22 = *(v18 + 16);
  v22(v21, v39, v0);
  v22(v21 + v17, &v29 - v4, v0);
  v22(v21 + 2 * v17, v38, v0);
  v23 = v34;
  v22(v21 + 3 * v17, v34, v0);
  v24 = v33;
  v22(v21 + 4 * v17, v33, v0);
  v25 = v30;
  v22(v21 + 5 * v17, v30, v0);
  v26 = sub_10000835C();

  v27 = v31;
  v31(v25, v0);
  v27(v24, v0);
  v27(v23, v0);
  v27(v38, v0);
  v27(v29, v0);
  v27(v39, v0);
  return v26;
}

uint64_t sub_100005AC8()
{
  v0 = sub_1000026B8(&qword_1000102B0, &qword_100008F48);
  v32 = *(v0 - 8);
  v33 = v0 - 8;
  v1 = v32;
  v31 = v32;
  v2 = *(v32 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = &v27 - v4;
  __chkstk_darwin(v3);
  v36 = 25;
  v37 = 0;
  sub_100003A70();
  sub_10000837C();
  sub_10000836C();
  v5 = *(v1 + 8);
  v6 = v5(&v27 - v4, v0);
  v7 = __chkstk_darwin(v6);
  v34 = &v27 - v4;
  __chkstk_darwin(v7);
  v36 = 38;
  v37 = 0;
  sub_10000837C();
  sub_10000836C();
  v8 = v5(&v27 - v4, v0);
  v9 = __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v36 = 26;
  v37 = 0;
  sub_10000837C();
  sub_10000836C();
  v10 = v5(&v27 - v4, v0);
  v11 = __chkstk_darwin(v10);
  v30 = &v27 - v4;
  __chkstk_darwin(v11);
  v36 = 29;
  v37 = 0;
  sub_10000837C();
  sub_10000836C();
  v29 = v5;
  v12 = v5(&v27 - v4, v0);
  v13 = __chkstk_darwin(v12);
  v28 = &v27 - v4;
  __chkstk_darwin(v13);
  v36 = 39;
  v37 = 0;
  sub_10000837C();
  sub_10000836C();
  v5(&v27 - v4, v0);
  sub_1000026B8(&qword_1000102B8, &qword_100008F50);
  v14 = *(v32 + 72);
  v15 = v31;
  v16 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = 4 * v14;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100008B50;
  v18 = v17 + v16;
  v19 = *(v15 + 16);
  v19(v18, v35, v0);
  v19(v18 + v14, v34, v0);
  v19(v18 + 2 * v14, &v27 - v4, v0);
  v20 = v18 + 3 * v14;
  v21 = v30;
  v19(v20, v30, v0);
  v22 = v18 + v33;
  v23 = v28;
  v19(v22, v28, v0);
  v24 = sub_10000835C();

  v25 = v29;
  v29(v23, v0);
  v25(v21, v0);
  v25(&v27 - v4, v0);
  v25(v34, v0);
  v25(v35, v0);
  return v24;
}

uint64_t sub_100006004()
{
  v0 = sub_1000026B8(&qword_1000102B0, &qword_100008F48);
  v31 = *(v0 - 8);
  v1 = v31;
  v29 = v31;
  v2 = *(v31 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = &v25 - v4;
  __chkstk_darwin(v3);
  v36 = 7;
  v37 = 0;
  sub_100003A70();
  sub_10000837C();
  sub_10000836C();
  v5 = *(v1 + 8);
  v6 = v5(&v25 - v4, v0);
  v7 = __chkstk_darwin(v6);
  v28 = &v25 - v4;
  __chkstk_darwin(v7);
  v34 = 33;
  v35 = 0;
  sub_10000837C();
  sub_10000836C();
  v27 = v5;
  v8 = v5(&v25 - v4, v0);
  v9 = __chkstk_darwin(v8);
  v26 = &v25 - v4;
  __chkstk_darwin(v9);
  v32 = 1;
  v33 = 1;
  sub_10000837C();
  sub_10000836C();
  v5(&v25 - v4, v0);
  sub_1000026B8(&qword_1000102B8, &qword_100008F50);
  v10 = *(v31 + 72);
  v11 = v29;
  v12 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v13 = 2 * v10;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100008B60;
  v15 = v14 + v12;
  v16 = *(v11 + 16);
  v17 = v30;
  v16(v15, v30, v0);
  v18 = v15 + v10;
  v19 = v28;
  v16(v18, v28, v0);
  v20 = v15 + v13;
  v21 = v26;
  v16(v20, v26, v0);
  v22 = sub_10000835C();

  v23 = v27;
  v27(v21, v0);
  v23(v19, v0);
  v23(v17, v0);
  return v22;
}

uint64_t sub_1000063A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000075AC;

  return sub_100007028(a1);
}

uint64_t sub_10000644C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000026B8(&qword_100010290, &qword_100008F28) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000064E8, 0, 0);
}

uint64_t sub_1000064E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_10000854C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_100003A70();
  sub_10000841C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000065C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100006688;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100006688(uint64_t a1)
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

unint64_t sub_10000678C()
{
  result = qword_100010278;
  if (!qword_100010278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010278);
  }

  return result;
}

uint64_t sub_100006818(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003C08(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006860(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000029A8();
  *v6 = v2;
  v6[1] = sub_100006914;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100006914()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100006A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100006914;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t initializeBufferWithCopyOfBuffer for AccessibilityFeature.FeatureType(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

char *sub_100006B28(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026B8(&qword_1000102C0, &qword_100008F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_100006C28(char *a1, int64_t a2, char a3)
{
  result = sub_100006C48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100006C48(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026B8(&qword_1000102C0, &qword_100008F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_100006D48()
{
  sub_1000026B8(&qword_1000102C0, &qword_100008F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100008B70;
  *(inited + 32) = 28;
  *(inited + 36) = 0;
  *(inited + 40) = 6;
  *(inited + 44) = 0;
  *(inited + 48) = 25;
  *(inited + 52) = 0;
  *(inited + 56) = 15;
  *(inited + 60) = 0;
  *(inited + 64) = 10;
  *(inited + 68) = 0;
  *(inited + 72) = 18;
  *(inited + 76) = 0;
  *(inited + 80) = 7;
  *(inited + 84) = 0;
  *(inited + 88) = 21;
  *(inited + 92) = 0;
  *(inited + 96) = 26;
  *(inited + 100) = 0;
  *(inited + 104) = 29;
  *(inited + 108) = 0;
  *(inited + 112) = 33;
  *(inited + 116) = 0;
  *(inited + 120) = 24;
  *(inited + 124) = 0;
  *(inited + 128) = 20;
  *(inited + 132) = 0;
  *(inited + 136) = 14;
  *(inited + 140) = 0;
  *(inited + 144) = 2;
  *(inited + 148) = 0;
  *(inited + 152) = 34;
  *(inited + 156) = 0;
  *(inited + 160) = 9;
  *(inited + 164) = 0;
  *(inited + 168) = 1;
  *(inited + 172) = 0;
  *(inited + 176) = 17;
  *(inited + 180) = 0;
  *(inited + 184) = 4;
  *(inited + 188) = 0;
  *(inited + 192) = 31;
  *(inited + 196) = 0;
  *(inited + 200) = 22;
  *(inited + 204) = 0;
  *(inited + 208) = 12;
  *(inited + 212) = 0;
  *(inited + 216) = 0;
  *(inited + 220) = 1;
  v1 = sub_100006B28(1, 25, 1, inited);
  *(v1 + 2) = 25;
  *(v1 + 56) = 36;
  v1[228] = 0;
  v2 = *(v1 + 3);
  if (v2 <= 0x33)
  {
    v1 = sub_100006B28((v2 > 1), 26, 1, v1);
    v2 = *(v1 + 3);
  }

  *(v1 + 2) = 26;
  *(v1 + 58) = 38;
  v1[236] = 0;
  if (v2 <= 0x35)
  {
    v1 = sub_100006B28((v2 > 1), 27, 1, v1);
  }

  *(v1 + 2) = 27;
  *(v1 + 60) = 39;
  v1[244] = 0;
  if (AXDeviceSupportsAccessibilityReader())
  {
    v4 = *(v1 + 2);
    v3 = *(v1 + 3);
    if (v4 >= v3 >> 1)
    {
      v1 = sub_100006B28((v3 > 1), v4 + 1, 1, v1);
    }

    *(v1 + 2) = v4 + 1;
    v5 = &v1[8 * v4];
    *(v5 + 8) = 1;
    v5[36] = 1;
  }

  if (AXDeviceSupportsNameRecognition())
  {
    v7 = *(v1 + 2);
    v6 = *(v1 + 3);
    if (v7 >= v6 >> 1)
    {
      v1 = sub_100006B28((v6 > 1), v7 + 1, 1, v1);
    }

    *(v1 + 2) = v7 + 1;
    v8 = &v1[8 * v7];
    *(v8 + 8) = 46;
    v8[36] = 0;
  }

  return v1;
}

uint64_t sub_100007048()
{
  v1 = sub_100006D48();
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = 0;
    v20 = v0;
    v4 = *(v0 + 16);
    v5 = v1 + 32;
    v6 = *(v4 + 16);
    v7 = (v4 + 32);
    do
    {
      v11 = &v5[8 * v3];
      v12 = *v11;
      v13 = v11[4];
      v14 = *v11;
      if (v13)
      {
        v14 = v12 & 1 | 0x2328;
      }

      v15 = v6;
      v16 = v7;
      while (v15)
      {
        v17 = *v16++;
        --v15;
        if (v17 == v14)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100006C28(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v9 = _swiftEmptyArrayStorage[2];
          v8 = _swiftEmptyArrayStorage[3];
          if (v9 >= v8 >> 1)
          {
            sub_100006C28((v8 > 1), v9 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v9 + 1;
          v10 = &_swiftEmptyArrayStorage[v9];
          *(v10 + 8) = v12;
          v10[36] = v13;
          break;
        }
      }

      ++v3;
    }

    while (v3 != v2);

    v0 = v20;
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18(_swiftEmptyArrayStorage);
}

unint64_t sub_1000071CC()
{
  result = qword_1000102C8;
  if (!qword_1000102C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000102C8);
  }

  return result;
}

uint64_t sub_100007218(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100007250(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000072B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100007304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

unint64_t sub_100007370()
{
  result = qword_1000102D0;
  if (!qword_1000102D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityFeature.OneShotAction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccessibilityFeature.OneShotAction(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100007538()
{
  result = qword_1000102D8;
  if (!qword_1000102D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102D8);
  }

  return result;
}

unint64_t sub_1000075B4()
{
  result = qword_1000102E0;
  if (!qword_1000102E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102E0);
  }

  return result;
}

unint64_t sub_10000760C()
{
  result = qword_1000102E8;
  if (!qword_1000102E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102E8);
  }

  return result;
}

uint64_t sub_100007698()
{
  v0 = sub_10000854C();
  sub_100007250(v0, qword_100010370);
  sub_100007218(v0, qword_100010370);
  return sub_10000852C();
}

uint64_t sub_100007720(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10000864C();
  v2[4] = sub_10000863C();
  v4 = sub_10000862C();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1000077B8, v4, v3);
}

uint64_t sub_1000077B8()
{
  v1 = *(v0 + 24);
  sub_1000083CC();
  *(v0 + 64) = *(v0 + 56);
  *(v0 + 61) = *(v0 + 60);

  return _swift_task_switch(sub_100007834, 0, 0);
}

uint64_t sub_100007834()
{
  v1 = *(v0 + 64);
  if (*(v0 + 61) == 1)
  {
    if (v1)
    {
      v2 = [objc_opt_self() sharedInstance];
      [v2 launchAccessibilityReader];
    }

    else
    {
      if (qword_100010110 != -1)
      {
        swift_once();
      }

      sub_100001C28();
    }
  }

  else
  {
    [objc_opt_self() toggleAccessibilityShortcutOption:v1 fromSource:3];
  }

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  return _swift_task_switch(sub_10000794C, v3, v4);
}

uint64_t sub_10000794C()
{
  v1 = v0[4];
  v2 = v0[2];

  sub_1000083BC();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000079BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010120 != -1)
  {
    swift_once();
  }

  v2 = sub_10000854C();
  v3 = sub_100007218(v2, qword_100010370);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100007AB8()
{
  v0 = sub_1000026B8(&qword_100010328, &qword_100009268);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_1000084AC();
  sub_10000849C();
  swift_getKeyPath();
  sub_1000026B8(&qword_100010330, &qword_100009298);
  sub_10000848C();

  sub_10000849C();
  v2 = sub_1000026B8(&qword_100010338, &unk_1000092A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000084BC();
  return sub_10000847C();
}

uint64_t sub_100007C5C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006914;

  return sub_100007720(a1, v4);
}

uint64_t sub_100007CFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007E28();
  *a1 = result;
  return result;
}

unint64_t sub_100007DD4()
{
  result = qword_100010310;
  if (!qword_100010310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010310);
  }

  return result;
}

uint64_t sub_100007E28()
{
  v0 = sub_1000026B8(&qword_100010290, &qword_100008F28);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v18 - v2;
  v4 = sub_10000854C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1000026B8(&qword_100010318, &qword_100009250);
  sub_10000852C();
  (*(v5 + 56))(v3, 1, 1, v4);
  v19 = -1;
  v18[2] = 0;
  v7 = sub_1000026B8(&qword_100010320, &qword_100009258);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = sub_1000083AC();
  v11 = *(*(v10 - 8) + 56);
  v12 = v11(v18 - v9, 1, 1, v10);
  __chkstk_darwin(v12);
  v11(v18 - v9, 1, 1, v10);
  v13 = sub_1000084CC();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  (*(v16 + 104))(v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for InputConnectionBehavior.default(_:));
  sub_1000040B0();
  return sub_1000083EC();
}

uint64_t sub_100008124@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000083DC();
  *a2 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000081EC();
  sub_10000859C();
  return 0;
}

unint64_t sub_1000081EC()
{
  result = qword_100010340;
  if (!qword_100010340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010340);
  }

  return result;
}

unint64_t sub_100008288()
{
  result = qword_100010348;
  if (!qword_100010348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010348);
  }

  return result;
}