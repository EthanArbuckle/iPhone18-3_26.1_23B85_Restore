uint64_t IFTelemetrySELFMapperIssues.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_100020FF8;
  v8._object = a2;
  v6 = sub_10001A12C(v5, v8);

  *a3 = v6 != 0;
  return result;
}

Swift::Int sub_1000016B8()
{
  sub_10001A1AC();
  sub_100019F9C();
  return sub_10001A1BC();
}

Swift::Int sub_10000172C()
{
  sub_10001A1AC();
  sub_100019F9C();
  return sub_10001A1BC();
}

uint64_t sub_100001780@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100021030;
  v7._object = v3;
  v5 = sub_10001A12C(v4, v7);

  *a2 = v5 != 0;
  return result;
}

void sub_100001830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100019F7C();
  v6 = swift_allocObject();
  v6[2] = 0xD00000000000001BLL;
  v6[3] = 0x800000010001A760;
  v6[4] = 0xD00000000000001DLL;
  v6[5] = 0x800000010001B1C0;
  v6[6] = a2;
  v6[7] = a3;
  v8[4] = sub_100002870;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100001CE8;
  v8[3] = &unk_100021108;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

void sub_1000019A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{

  v12 = sub_100019F0C();
  v13 = a4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100001D8C(a1, a2, v19);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_100002334(v15);
  }

  v16 = sub_100019F7C();
  v17 = swift_allocObject();
  v17[2] = 0xD00000000000001BLL;
  v17[3] = 0x800000010001A760;
  v17[4] = 0xD00000000000001DLL;
  v17[5] = 0x800000010001B1C0;
  v17[6] = a1;
  v17[7] = a2;
  v19[4] = a6;
  v19[5] = v17;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100001CE8;
  v19[3] = a7;
  v18 = _Block_copy(v19);

  AnalyticsSendEventLazy();
  _Block_release(v18);
}

unint64_t sub_100001BA0()
{
  sub_100002594(&qword_100024CA8, &qword_10001A888);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001A770;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000010001B230;
  *(inited + 48) = sub_100019F7C();
  *(inited + 56) = 0x6D614E726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_100019F7C();
  *(inited + 80) = 0x6E6F73616572;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = sub_100019F7C();
  v1 = sub_10000275C(inited);
  swift_setDeallocating();
  sub_100002594(&qword_100024CB0, &qword_10001A890);
  swift_arrayDestroy();
  return v1;
}

Class sub_100001CE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1000025E0();
    v5.super.isa = sub_100019F5C().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_100001D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001D8C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001E58(v11, 0, 0, 1, a1, a2);
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
    sub_100002538(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002334(v11);
  return v7;
}

unint64_t sub_100001E58(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001F64(a5, a6);
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
    result = sub_10001A09C();
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

char *sub_100001F64(uint64_t a1, unint64_t a2)
{
  v4 = sub_100001FB0(a1, a2);
  sub_1000020E0(&off_100021068);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100001FB0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000021CC(v5, 0);
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

  result = sub_10001A09C();
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
        v10 = sub_100019FBC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000021CC(v10, 0);
        result = sub_10001A06C();
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

uint64_t sub_1000020E0(uint64_t result)
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

  result = sub_100002240(result, v12, 1, v3);
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

void *sub_1000021CC(uint64_t a1, uint64_t a2)
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

  sub_100002594(&qword_100024C98, &qword_10001A880);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002240(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002594(&qword_100024C98, &qword_10001A880);
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

uint64_t sub_100002334(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002380()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1000023C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  return sub_100001BA0();
}

unint64_t sub_1000023DC()
{
  result = qword_100024C90;
  if (!qword_100024C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024C90);
  }

  return result;
}

uint64_t sub_100002458(unsigned int *a1, int a2)
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

_WORD *sub_1000024AC(_WORD *result, int a2, int a3)
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

uint64_t sub_100002538(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002594(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000025E0()
{
  result = qword_100024CA0;
  if (!qword_100024CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100024CA0);
  }

  return result;
}

unint64_t sub_10000262C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10001A1AC();
  sub_100019F9C();
  v6 = sub_10001A1BC();

  return sub_1000026A4(a1, a2, v6);
}

unint64_t sub_1000026A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10001A14C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000275C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002594(&qword_100024CB8, qword_10001A898);
    v3 = sub_10001A11C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000262C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_100002884()
{
  sub_1000028F8();
  sub_10001A03C();

  return sub_100019F3C();
}

unint64_t sub_1000028F8()
{
  result = qword_100024CC0;
  if (!qword_100024CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100024CC0);
  }

  return result;
}

uint64_t sub_100002944@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23IFTelemetrySELFIngestor21IFTelemetrySELFMapper_logger;
  v4 = sub_100019F2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1000029BC(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = a3;
  v28 = a1;
  v29 = a2;
  v3 = sub_100002594(&qword_100024CC8, &qword_10001A8C8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - v5;
  v7 = sub_100019EDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = sub_100002594(&qword_100024CD0, &qword_10001A8D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v26 - v20;
  v22 = sub_10001986C();
  v23 = *(*(v22 - 8) + 56);
  v23(v21, 1, 1, v22);
  sub_100002CD4(v27, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100002D44(v6, &qword_100024CC8, &qword_10001A8C8);
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    (*(v8 + 16))(v12, v14, v7);
    sub_10001985C();
    (*(v8 + 8))(v14, v7);
    sub_100002D44(v21, &qword_100024CD0, &qword_10001A8D0);
    v23(v19, 0, 1, v22);
    sub_100003D7C(v19, v21, &qword_100024CD0, &qword_10001A8D0);
  }

  sub_100003D7C(v21, v28, &qword_100024CD0, &qword_10001A8D0);
  v24 = v29;

  return v24;
}

uint64_t sub_100002CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002594(&qword_100024CC8, &qword_10001A8C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002D44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002594(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002DA4(uint64_t a1)
{
  v121 = sub_100019EDC();
  v118 = *(v121 - 8);
  v2 = *(v118 + 64);
  v3 = __chkstk_darwin(v121);
  v112 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v111 = &v102 - v5;
  v6 = sub_100002594(&qword_100024CD8, qword_10001A8D8);
  v125 = *(v6 - 8);
  v7 = *(v125 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v105 = &v102 - v12;
  v13 = __chkstk_darwin(v11);
  v113 = &v102 - v14;
  v15 = __chkstk_darwin(v13);
  v126 = &v102 - v16;
  __chkstk_darwin(v15);
  v18 = &v102 - v17;
  v19 = sub_100002594(&qword_100024CC8, &qword_10001A8C8);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v122 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v102 - v24;
  __chkstk_darwin(v23);
  v27 = &v102 - v26;
  v28 = sub_100002594(&qword_100024CD0, &qword_10001A8D0);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v104 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v103 = &v102 - v33;
  v34 = __chkstk_darwin(v32);
  v110 = &v102 - v35;
  v36 = __chkstk_darwin(v34);
  v123 = &v102 - v37;
  v38 = __chkstk_darwin(v36);
  v120 = &v102 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v102 - v41;
  __chkstk_darwin(v40);
  v44 = &v102 - v43;
  type metadata accessor for IFPlatformRequestClientEventConverter();
  v45 = sub_100016848(a1);
  v106 = v27;
  v124 = v6;
  if (v45)
  {
    v46 = v45;
    sub_10001989C();
    sub_1000029BC(v44, v46, v27);
    sub_100002D44(v27, &qword_100024CC8, &qword_10001A8C8);
    v47 = *(v6 + 48);
    sub_100003D7C(v44, v18, &qword_100024CD0, &qword_10001A8D0);
    *&v18[v47] = v46;
    v48 = sub_100003B8C(0, 1, 1, &_swiftEmptyArrayStorage);
    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    v51 = v48;
    if (v50 >= v49 >> 1)
    {
      v51 = sub_100003B8C(v49 > 1, v50 + 1, 1, v48);
    }

    v52 = v123;

    *(v51 + 2) = v50 + 1;
    sub_100003D7C(v18, &v51[((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v50], &qword_100024CD8, qword_10001A8D8);
  }

  else
  {
    v51 = &_swiftEmptyArrayStorage;
    v52 = v123;
  }

  type metadata accessor for IFPlatformClientEventConverter();
  v53 = sub_100009EE0();
  v54 = v25;
  v55 = v126;
  if (v53)
  {
    v56 = v53;
    v57 = v106;
    sub_10001989C();
    sub_1000029BC(v42, v56, v57);
    sub_100002D44(v57, &qword_100024CC8, &qword_10001A8C8);
    v58 = *(v124 + 48);
    sub_100003D7C(v42, v55, &qword_100024CD0, &qword_10001A8D0);
    *(v55 + v58) = v56;
    v59 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_100003B8C(0, *(v51 + 2) + 1, 1, v51);
    }

    v61 = *(v59 + 2);
    v60 = *(v59 + 3);
    v52 = v123;
    if (v61 >= v60 >> 1)
    {
      v59 = sub_100003B8C(v60 > 1, v61 + 1, 1, v59);
    }

    *(v59 + 2) = v61 + 1;
    sub_100003D7C(v55, &v59[((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v61], &qword_100024CD8, qword_10001A8D8);
  }

  else
  {
    v59 = v51;
  }

  type metadata accessor for IFPlanGenerationEventConverter();
  v62 = sub_100014ED8(a1);
  if (v62)
  {
    v63 = v62;
    v102 = v10;
    if (v62 >> 62)
    {
      v101 = v62;
      result = sub_10001A10C();
      v63 = v101;
    }

    else
    {
      result = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v65 = v113;
    v66 = v122;
    if (result)
    {
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v67 = 0;
      v115 = (v118 + 48);
      v116 = v63 & 0xC000000000000001;
      v108 = (v118 + 16);
      v109 = (v118 + 32);
      v107 = (v118 + 8);
      v118 = v63;
      v119 = a1;
      v117 = result;
      do
      {
        v126 = v59;
        if (v116)
        {
          v68 = sub_10001A08C();
        }

        else
        {
          v68 = *(v63 + 8 * v67 + 32);
        }

        v69 = v68;
        sub_10001989C();
        v70 = sub_10001986C();
        v71 = *(*(v70 - 8) + 56);
        v71(v52, 1, 1, v70);
        sub_100002CD4(v54, v66);
        v72 = v54;
        v73 = v121;
        if ((*v115)(v66, 1, v121) == 1)
        {
          sub_100002D44(v72, &qword_100024CC8, &qword_10001A8C8);
          sub_100002D44(v66, &qword_100024CC8, &qword_10001A8C8);
        }

        else
        {
          v74 = v111;
          (*v109)(v111, v122, v73);
          (*v108)(v112, v74, v73);
          v75 = v110;
          sub_10001985C();
          v76 = *v107;
          v77 = v122;
          v114 = v69;
          v78 = v113;
          v76(v74, v73);
          sub_100002D44(v123, &qword_100024CD0, &qword_10001A8D0);
          sub_100002D44(v72, &qword_100024CC8, &qword_10001A8C8);
          v66 = v77;
          v65 = v78;
          v69 = v114;
          v71(v75, 0, 1, v70);
          v79 = v75;
          v52 = v123;
          sub_100003D7C(v79, v123, &qword_100024CD0, &qword_10001A8D0);
        }

        v54 = v72;
        v80 = v120;
        sub_100003D7C(v52, v120, &qword_100024CD0, &qword_10001A8D0);
        v81 = *(v124 + 48);
        sub_100003D7C(v80, v65, &qword_100024CD0, &qword_10001A8D0);
        *(v65 + v81) = v69;
        v82 = v69;
        v59 = v126;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a1 = v119;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = sub_100003B8C(0, *(v59 + 2) + 1, 1, v59);
        }

        v85 = *(v59 + 2);
        v84 = *(v59 + 3);
        if (v85 >= v84 >> 1)
        {
          v59 = sub_100003B8C(v84 > 1, v85 + 1, 1, v59);
        }

        ++v67;

        *(v59 + 2) = v85 + 1;
        sub_100003D7C(v65, &v59[((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v85], &qword_100024CD8, qword_10001A8D8);
        v63 = v118;
      }

      while (v117 != v67);
    }

    v10 = v102;
  }

  type metadata accessor for IFRequestLinkConverter();
  v86 = sub_1000046A0(a1);
  if (v86)
  {
    v87 = v86;
    v88 = v106;
    sub_10001989C();
    v89 = v103;
    sub_1000029BC(v103, v87, v88);
    sub_100002D44(v88, &qword_100024CC8, &qword_10001A8C8);
    v90 = *(v124 + 48);
    v91 = v105;
    sub_100003D7C(v89, v105, &qword_100024CD0, &qword_10001A8D0);
    *(v91 + v90) = v87;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_100003B8C(0, *(v59 + 2) + 1, 1, v59);
    }

    v93 = *(v59 + 2);
    v92 = *(v59 + 3);
    if (v93 >= v92 >> 1)
    {
      v59 = sub_100003B8C(v92 > 1, v93 + 1, 1, v59);
    }

    *(v59 + 2) = v93 + 1;
    sub_100003D7C(v105, &v59[((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v93], &qword_100024CD8, qword_10001A8D8);
  }

  type metadata accessor for IFFeedbackLearningEventConverter();
  v94 = sub_10000AC5C();
  if (v94)
  {
    v95 = v94;
    v96 = v106;
    sub_10001989C();
    v97 = v104;
    sub_1000029BC(v104, v95, v96);
    sub_100002D44(v96, &qword_100024CC8, &qword_10001A8C8);
    v98 = *(v124 + 48);
    sub_100003D7C(v97, v10, &qword_100024CD0, &qword_10001A8D0);
    *&v10[v98] = v95;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_100003B8C(0, *(v59 + 2) + 1, 1, v59);
    }

    v100 = *(v59 + 2);
    v99 = *(v59 + 3);
    if (v100 >= v99 >> 1)
    {
      v59 = sub_100003B8C(v99 > 1, v100 + 1, 1, v59);
    }

    *(v59 + 2) = v100 + 1;
    sub_100003D7C(v10, &v59[((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v100], &qword_100024CD8, qword_10001A8D8);
  }

  return v59;
}

uint64_t IFTelemetrySELFMapper.deinit()
{
  v1 = OBJC_IVAR____TtC23IFTelemetrySELFIngestor21IFTelemetrySELFMapper_logger;
  v2 = sub_100019F2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t IFTelemetrySELFMapper.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IFTelemetrySELFIngestor21IFTelemetrySELFMapper_logger;
  v2 = sub_100019F2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100003A84()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1000028F8();
  sub_10001A03C();
  sub_100019F3C();
  return v3;
}

uint64_t sub_100003B10()
{
  sub_1000028F8();
  sub_10001A03C();
  sub_100019F3C();
  return v0;
}

size_t sub_100003B8C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100002594(&qword_100024D80, &qword_10001A908);
  v10 = *(sub_100002594(&qword_100024CD8, qword_10001A8D8) - 8);
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
  v15 = *(sub_100002594(&qword_100024CD8, qword_10001A8D8) - 8);
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

uint64_t sub_100003D7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002594(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for IFTelemetrySELFMapper()
{
  result = qword_100025A30;
  if (!qword_100025A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003E38()
{
  result = sub_100019F2C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100003EE0()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025D00);
  sub_100003FD8(v0, qword_100025D00);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100003F74()
{
  if (qword_100025A40 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025D00);
}

uint64_t sub_100003FD8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004010@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025A40 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025D00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_1000040B8()
{
  v0 = sub_100002594(&qword_100024D88, qword_10001A910);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = [objc_allocWithZone(IFPlatformRequestSchemaIFPlatformRequestFailed) init];
  if (!v7)
  {
    if (qword_100025A40 != -1)
    {
      swift_once();
    }

    v14 = sub_100019F2C();
    sub_100003FD8(v14, qword_100025D00);
    sub_1000017F4(0xD000000000000047, 0x800000010001B2B0, v15);
    return 0;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(IFTSchemaIFTIntelligenceFlowError) init];
  if (!v9)
  {
    if (qword_100025A40 != -1)
    {
      swift_once();
    }

    v16 = sub_100019F2C();
    sub_100003FD8(v16, qword_100025D00);
    sub_1000017F4(0xD000000000000038, 0x800000010001B300, v17);

    return 0;
  }

  v10 = v9;
  sub_100019DEC();
  v11 = sub_100019DAC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v6, 1, v11) == 1)
  {
    sub_1000043E8(v6);
  }

  else
  {
    v18 = sub_100019D8C();
    (*(v12 + 8))(v6, v11);
    if ((v18 & 0x100000000) == 0)
    {
      [v10 setCode:v18];
    }
  }

  sub_100019DEC();
  if (v13(v4, 1, v11) == 1)
  {
    sub_1000043E8(v4);
  }

  else
  {
    sub_100019D9C();
    v20 = v19;
    (*(v12 + 8))(v4, v11);
    if (v20)
    {
      v21 = sub_100019F7C();

      [v10 setDomain:v21];
    }
  }

  [v8 setCriticalError:v10];

  return v8;
}

uint64_t sub_1000043E8(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024D88, qword_10001A910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_10000449C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100004500()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025D18);
  sub_100003FD8(v0, qword_100025D18);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100004594()
{
  if (qword_100025A48 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025D18);
}

uint64_t sub_1000045F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025A48 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025D18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_1000046A0(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024E28, qword_10001A970);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  sub_1000198AC();
  v9 = sub_10001988C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v6, 1, v9) == 1)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    if (v11(v6, 1, v9) != 1)
    {
      sub_100002D44(v6, &qword_100024E28, qword_10001A970);
    }
  }

  else
  {
    (*(v10 + 32))(v8, v6, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
  }

  v12 = sub_100004D3C(v8);
  v14 = v13;
  sub_100002D44(v8, &qword_100024E28, qword_10001A970);
  if ((v14 & 1) == 0)
  {
    v15 = sub_10000507C(a1);
    if (v15)
    {
      v17 = v15;
      v18 = v16;
      v19 = [objc_allocWithZone(SISchemaRequestLink) init];
      if (v19)
      {
        v20 = v19;
        v21 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
        if (v21)
        {
          v22 = v21;
          v23 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
          if (v23)
          {
            v24 = v23;
            [v22 setComponent:v12];
            [v22 setUuid:v17];
            [v24 setComponent:HIDWORD(v12)];
            [v24 setUuid:v18];
            [v20 setSource:v22];
            [v20 setTarget:v24];

            v17 = v24;
LABEL_22:

            return v20;
          }

          if (qword_100025A48 != -1)
          {
            swift_once();
          }

          v29 = sub_100019F2C();
          sub_100003FD8(v29, qword_100025D18);
          sub_1000017F4(0xD00000000000002ELL, 0x800000010001B380, v30);
        }

        else
        {
          if (qword_100025A48 != -1)
          {
            swift_once();
          }

          v27 = sub_100019F2C();
          sub_100003FD8(v27, qword_100025D18);
          sub_1000017F4(0xD00000000000002ELL, 0x800000010001B380, v28);
        }
      }

      else
      {
        if (qword_100025A48 != -1)
        {
          swift_once();
        }

        v25 = sub_100019F2C();
        sub_100003FD8(v25, qword_100025D18);
        sub_1000017F4(0xD00000000000002ELL, 0x800000010001B380, v26);
      }

      v20 = 0;
      v22 = v18;
      goto LABEL_22;
    }
  }

  return 0;
}

void *sub_100004AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(SISchemaRequestLink) init];
  if (!v8)
  {
    if (qword_100025A48 != -1)
    {
      swift_once();
    }

    v14 = sub_100019F2C();
    sub_100003FD8(v14, qword_100025D18);
    sub_1000017F4(0xD00000000000002ELL, 0x800000010001B380, v15);
    return 0;
  }

  v9 = v8;
  v10 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
  if (!v10)
  {
    if (qword_100025A48 != -1)
    {
      swift_once();
    }

    v16 = sub_100019F2C();
    sub_100003FD8(v16, qword_100025D18);
    sub_1000017F4(0xD00000000000002ELL, 0x800000010001B380, v17);

    return 0;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
  if (!v12)
  {
    if (qword_100025A48 != -1)
    {
      swift_once();
    }

    v18 = sub_100019F2C();
    sub_100003FD8(v18, qword_100025D18);
    sub_1000017F4(0xD00000000000002ELL, 0x800000010001B380, v19);

    return 0;
  }

  v13 = v12;
  [v11 setComponent:a1];
  [v11 setUuid:a2];
  [v13 setComponent:a3];
  [v13 setUuid:a4];
  [v9 setSource:v11];
  [v9 setTarget:v13];

  return v9;
}

uint64_t sub_100004D3C(uint64_t a1)
{
  v2 = (*(*(sub_100002594(&qword_100024E28, qword_10001A970) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v4 = &v25 - v3;
  v5 = sub_10001988C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  sub_10000605C(a1, v4, &qword_100024E28, qword_10001A970);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002D44(v4, &qword_100024E28, qword_10001A970);
    if (qword_100025A48 != -1)
    {
      swift_once();
    }

    v13 = sub_100019F2C();
    sub_100003FD8(v13, qword_100025D18);
    v14 = sub_100019F0C();
    v15 = sub_10001A01C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "IntelligenceFlow.Telemetry event has no target so no request link target component", v16, 2u);
    }

    return 0;
  }

  v18 = *(v6 + 32);
  v18(v12, v4, v5);
  v18(v10, v12, v5);
  v19 = (*(v6 + 88))(v10, v5);
  if (v19 == enum case for IntelligenceFlowTarget.queryDecorationServiceHandle(_:) || v19 == enum case for IntelligenceFlowTarget.fullPlannerTokenGeneratorInterfaceLLMCacheManagerLookupCall(_:) || v19 == enum case for IntelligenceFlowTarget.fullPlannerTokenGeneratorInterfaceLLMCacheManagerInsertCall(_:) || v19 == enum case for IntelligenceFlowTarget.fullPlannerTokenGeneratorConstrainedDecodingInterfaceLLMCacheManagerLookupCall(_:) || v19 == enum case for IntelligenceFlowTarget.fullPlannerTokenGeneratorConstrainedDecodingInterfaceLLMCacheManagerInsertCall(_:) || v19 == enum case for IntelligenceFlowTarget.planResolverServiceHandle(_:))
  {
    return 0x2E0000002DLL;
  }

  if (v19 != enum case for IntelligenceFlowTarget.sessionCoordinatorAccept(_:))
  {
    (*(v6 + 8))(v10, v5);
    return 0;
  }

  return 0x2D0000002ELL;
}

char *sub_10000507C(uint64_t a1)
{
  v135 = sub_100019E3C();
  v138 = *(v135 - 8);
  v2 = *(v138 + 64);
  __chkstk_darwin(v135);
  v137 = v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002594(&qword_100024EC8, qword_10001AC30);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v139 = v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v142 = v123 - v8;
  v9 = sub_100002594(&qword_100024E28, qword_10001A970);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v140 = v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v123 - v13;
  v15 = sub_100002594(&qword_100024ED0, "r\x1B");
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v136 = v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v123 - v19;
  v21 = sub_100002594(&qword_100024ED8, "Z\x1B");
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v133 = v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = v123 - v25;
  v27 = sub_100002594(&qword_100024EE0, "r\x1B");
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v134 = v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v131 = v123 - v32;
  __chkstk_darwin(v31);
  v34 = v123 - v33;
  v35 = sub_10001981C();
  v146 = *(v35 - 8);
  v36 = *(v146 + 64);
  v37 = __chkstk_darwin(v35);
  v141 = v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v132 = v123 - v40;
  v41 = __chkstk_darwin(v39);
  v130 = v123 - v42;
  __chkstk_darwin(v41);
  v144 = a1;
  v145 = v123 - v43;
  sub_1000198DC();
  v44 = sub_1000198CC();
  v45 = *(v44 - 8);
  v46 = *(v45 + 48);
  if (v46(v20, 1, v44) == 1)
  {
    sub_100002D44(v20, &qword_100024ED0, "r\x1B");
LABEL_5:
    (*(v146 + 56))(v34, 1, 1, v35);
LABEL_6:
    sub_100002D44(v34, &qword_100024EE0, "r\x1B");
    if (qword_100025A48 != -1)
    {
      swift_once();
    }

    v50 = sub_100019F2C();
    sub_100003FD8(v50, qword_100025D18);
    v51 = sub_100019F0C();
    v52 = sub_10001A01C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "IntelligenceFlow.Telemetry event has no requestEventId, can't form SELF request link message", v53, 2u);
    }

    return 0;
  }

  v143 = v35;
  v129 = v14;
  sub_1000198BC();
  v47 = *(v45 + 8);
  v47(v20, v44);
  v48 = sub_10001994C();
  v49 = *(v48 - 8);
  v128 = *(v49 + 48);
  if (v128(v26, 1, v48) == 1)
  {
    sub_100002D44(v26, &qword_100024ED8, "Z\x1B");
    v35 = v143;
    goto LABEL_5;
  }

  v125 = v47;
  sub_10001990C();
  v124 = *(v49 + 8);
  v124(v26, v48);
  v55 = v146;
  v56 = v143;
  v126 = *(v146 + 48);
  v127 = v146 + 48;
  if (v126(v34, 1, v143) == 1)
  {
    goto LABEL_6;
  }

  v57 = *(v55 + 32);
  v123[1] = v55 + 32;
  v123[0] = v57;
  v57(v145, v34, v56);
  v58 = v129;
  sub_1000198AC();
  v59 = sub_10001988C();
  v60 = *(v59 - 8);
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
LABEL_18:
    v67 = objc_allocWithZone(SISchemaUUID);
    v68 = v145;
    isa = sub_1000197FC().super.isa;
    v140 = [v67 initWithNSUUID:isa];

    v70 = v142;
    sub_1000198FC();
    v71 = sub_1000198EC();
    v72 = *(v71 - 8);
    v73 = (*(v72 + 48))(v70, 1, v71);
    v63 = v129;
    v74 = v143;
    v75 = v146;
    if (v73 != 1)
    {
      v76 = v139;
      sub_10000605C(v70, v139, &qword_100024EC8, qword_10001AC30);
      if ((*(v72 + 88))(v76, v71) == enum case for IntelligenceFlowTelemetry.Objective.pnr(_:))
      {
        (*(v72 + 96))(v76, v71);
        v77 = v138;
        v78 = v76;
        v79 = v137;
        v80 = v135;
        (*(v138 + 32))(v137, v78, v135);
        v81 = v134;
        sub_100019E1C();
        v82 = v81;
        if (v126(v81, 1, v74) != 1)
        {
          v102 = v132;
          (v123[0])(v132, v82, v74);
          v103 = v77;
          v104 = objc_allocWithZone(SISchemaUUID);
          v105 = sub_1000197FC().super.isa;
          [v104 initWithNSUUID:v105];

          v106 = *(v75 + 8);
          v106(v102, v74);
          (*(v103 + 8))(v79, v80);
          v106(v145, v74);
          sub_100002D44(v70, &qword_100024EC8, qword_10001AC30);
          v63 = v129;
          goto LABEL_36;
        }

        v83 = v80;
        sub_100002D44(v81, &qword_100024EE0, "r\x1B");
        v63 = v129;
        if (qword_100025A48 != -1)
        {
          swift_once();
        }

        v84 = sub_100019F2C();
        sub_100003FD8(v84, qword_100025D18);
        v85 = sub_100019F0C();
        v86 = sub_10001A01C();
        v87 = os_log_type_enabled(v85, v86);
        v88 = v137;
        v89 = v145;
        if (v87)
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&_mh_execute_header, v85, v86, "IntelligenceFlow.Telemetry event has no contextId, can't form SELF request link message", v90, 2u);
        }

        (*(v138 + 8))(v88, v83);
        (*(v75 + 8))(v89, v74);
LABEL_32:
        sub_100002D44(v70, &qword_100024EC8, qword_10001AC30);
LABEL_48:
        sub_100002D44(v63, &qword_100024E28, qword_10001A970);
        return 0;
      }

      (*(v72 + 8))(v76, v71);
    }

    v91 = v141;
    sub_10001980C();
    v92 = objc_allocWithZone(SISchemaUUID);
    v93 = sub_1000197FC().super.isa;
    v94 = [v92 initWithNSUUID:v93];

    v95 = *(v75 + 8);
    v95(v91, v74);
    if (qword_100025A48 != -1)
    {
      swift_once();
    }

    v96 = sub_100019F2C();
    sub_100003FD8(v96, qword_100025D18);
    v97 = sub_100019F0C();
    v98 = sub_10001A02C();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "errorMessage", v99, 2u);
    }

    v95(v68, v74);
    goto LABEL_32;
  }

  v61 = v140;
  sub_10000605C(v129, v140, &qword_100024E28, qword_10001A970);
  if ((*(v60 + 88))(v61, v59) != enum case for IntelligenceFlowTarget.sessionCoordinatorAccept(_:))
  {
    (*(v60 + 8))(v61, v59);
    goto LABEL_18;
  }

  v62 = v136;
  sub_1000198DC();
  if (v46(v62, 1, v44) == 1)
  {
    sub_100002D44(v62, &qword_100024ED0, "r\x1B");
    v63 = v129;
    v64 = v143;
    v66 = v145;
    v65 = v146;
LABEL_43:
    if (qword_100025A48 != -1)
    {
      swift_once();
    }

    v113 = sub_100019F2C();
    sub_100003FD8(v113, qword_100025D18);
    v114 = sub_100019F0C();
    v115 = sub_10001A02C();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "IntelligenceFlow.Telemetry event has no clientRequestId, can't form SELF request link message", v116, 2u);
    }

    (*(v65 + 8))(v66, v64);
    goto LABEL_48;
  }

  v100 = v133;
  sub_1000198BC();
  v125(v62, v44);
  v101 = v128(v100, 1, v48);
  v65 = v146;
  if (v101 == 1)
  {
    sub_100002D44(v100, &qword_100024ED8, "Z\x1B");
    v63 = v129;
    v64 = v143;
    v66 = v145;
    goto LABEL_43;
  }

  v107 = sub_10001991C();
  v109 = v108;
  v124(v100, v48);
  v110 = HIBYTE(v109) & 0xF;
  if ((v109 & 0x2000000000000000) == 0)
  {
    v110 = v107 & 0xFFFFFFFFFFFFLL;
  }

  v64 = v143;
  v66 = v145;
  if (!v110)
  {

    v63 = v129;
    goto LABEL_43;
  }

  v111 = v131;
  sub_1000197EC();

  v112 = v126(v111, 1, v64);
  v63 = v129;
  if (v112 == 1)
  {
    sub_100002D44(v111, &qword_100024EE0, "r\x1B");
    goto LABEL_43;
  }

  v117 = v130;
  (v123[0])(v130, v111, v64);
  v118 = objc_allocWithZone(SISchemaUUID);
  v119 = sub_1000197FC().super.isa;
  v140 = [v118 initWithNSUUID:v119];

  v120 = objc_allocWithZone(SISchemaUUID);
  v121 = sub_1000197FC().super.isa;
  [v120 initWithNSUUID:v121];

  v122 = *(v65 + 8);
  v122(v117, v64);
  v122(v66, v64);
LABEL_36:
  sub_100002D44(v63, &qword_100024E28, qword_10001A970);
  return v140;
}

uint64_t sub_10000605C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002594(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000060C4()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025D30);
  sub_100003FD8(v0, qword_100025D30);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100006158()
{
  if (qword_100025A50 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025D30);
}

uint64_t sub_1000061BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025A50 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025D30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100006264(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024EE0, "r\x1B");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v60 = &v54 - v4;
  v5 = sub_10001981C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v54 - v12;
  __chkstk_darwin(v11);
  v61 = &v54 - v14;
  v15 = sub_100002594(&qword_100024ED0, "r\x1B");
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v54 - v20;
  v22 = sub_100002594(&qword_100024ED8, "Z\x1B");
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v54 - v27;
  v29 = [objc_allocWithZone(IFPlatformRequestSchemaIFPlatformRequestInvoked) init];
  if (v29)
  {
    v30 = v29;
    v58 = v10;
    v59 = v13;
    v63 = a1;
    sub_100006940(a1, v21);
    v31 = sub_1000198CC();
    v32 = *(v31 - 8);
    v62 = *(v32 + 48);
    if (v62(v21, 1, v31) == 1)
    {
      sub_100002D44(v21, &qword_100024ED0, "r\x1B");
    }

    else
    {
      v56 = v6;
      v57 = v5;
      sub_1000198BC();
      (*(v32 + 8))(v21, v31);
      v35 = sub_10001994C();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v28, 1, v35) == 1)
      {
        sub_100002D44(v28, &qword_100024ED8, "Z\x1B");
        v6 = v56;
        v5 = v57;
      }

      else
      {
        v55 = v30;
        v37 = sub_10001991C();
        v39 = v38;
        (*(v36 + 8))(v28, v35);
        v40 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v40 = v37 & 0xFFFFFFFFFFFFLL;
        }

        if (v40)
        {
          v41 = v60;
          sub_1000197EC();

          v6 = v56;
          v5 = v57;
          v42 = (*(v56 + 48))(v41, 1, v57);
          v30 = v55;
          if (v42 == 1)
          {
            sub_100002D44(v41, &qword_100024EE0, "r\x1B");
          }

          else
          {
            (*(v6 + 32))(v61, v41, v5);
            v43 = objc_allocWithZone(SISchemaUUID);
            isa = sub_1000197FC().super.isa;
            v45 = [v43 initWithNSUUID:isa];

            [v30 setClientTraceId:v45];
            (*(v6 + 8))(v61, v5);
          }
        }

        else
        {

          v6 = v56;
          v5 = v57;
          v30 = v55;
        }
      }
    }

    sub_100006940(v63, v19);
    if (v62(v19, 1, v31) == 1)
    {
      sub_100002D44(v19, &qword_100024ED0, "r\x1B");
    }

    else
    {
      sub_1000198BC();
      (*(v32 + 8))(v19, v31);
      v46 = sub_10001994C();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v26, 1, v46) == 1)
      {
        sub_100002D44(v26, &qword_100024ED8, "Z\x1B");
      }

      else
      {
        v48 = v58;
        sub_10001993C();
        (*(v47 + 8))(v26, v46);
        v49 = v59;
        (*(v6 + 32))(v59, v48, v5);
        v50 = objc_allocWithZone(SISchemaUUID);
        v51 = sub_1000197FC().super.isa;
        v52 = [v50 initWithNSUUID:v51];

        [v30 setIfSessionId:v52];
        (*(v6 + 8))(v49, v5);
      }
    }
  }

  else
  {
    if (qword_100025A50 != -1)
    {
      swift_once();
    }

    v33 = sub_100019F2C();
    sub_100003FD8(v33, qword_100025D30);
    sub_1000017F4(0xD00000000000003ALL, 0x800000010001B3F0, v34);
    return 0;
  }

  return v30;
}

uint64_t sub_100006940(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002594(&qword_100024ED0, "r\x1B");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000069D4()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025D48);
  sub_100003FD8(v0, qword_100025D48);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100006A68()
{
  if (qword_100025A58 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025D48);
}

uint64_t sub_100006ACC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025A58 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025D48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100006B74(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024E28, qword_10001A970);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v36 - v4;
  v6 = sub_10001988C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v36 - v13;
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  sub_100007160(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000071D0(v5);
    if (qword_100025A58 != -1)
    {
      swift_once();
    }

    v17 = sub_100019F2C();
    sub_100003FD8(v17, qword_100025D48);
    v18 = sub_100019F0C();
    v19 = sub_10001A01C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "IntelligenceFlow.Telemetry event has no target so no request event target", v20, 2u);
    }
  }

  else
  {
    (*(v7 + 32))(v16, v5, v6);
    v23 = *(v7 + 16);
    v23(v14, v16, v6);
    v24 = (*(v7 + 88))(v14, v6);
    if (v24 == enum case for IntelligenceFlowTarget.standardPlannerMakePlan(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 1;
      goto LABEL_22;
    }

    if (v24 == enum case for IntelligenceFlowTarget.standardPlannerSetup(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 2;
      goto LABEL_22;
    }

    if (v24 == enum case for IntelligenceFlowTarget.queryDecorationServiceSetup(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 101;
      goto LABEL_22;
    }

    if (v24 == enum case for IntelligenceFlowTarget.planOverridesServiceSetup(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 201;
      goto LABEL_22;
    }

    if (v24 == enum case for IntelligenceFlowTarget.fullPlannerServiceSetup(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 301;
      goto LABEL_22;
    }

    if (v24 == enum case for IntelligenceFlowTarget.planResolverServiceSetup(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 401;
      goto LABEL_22;
    }

    if (v24 == enum case for IntelligenceFlowTarget.responseGenerationServiceSetup(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 501;
      goto LABEL_22;
    }

    if (qword_100025A58 != -1)
    {
      swift_once();
    }

    v26 = sub_100019F2C();
    sub_100003FD8(v26, qword_100025D48);
    v23(v11, v16, v6);
    v27 = sub_100019F0C();
    v28 = sub_10001A01C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v37 = v29;
      v39 = swift_slowAlloc();
      v40 = v39;
      *v29 = 136315138;
      sub_100007238();
      v38 = v28;
      v30 = sub_10001A13C();
      v32 = v31;
      v33 = *(v7 + 8);
      v33(v11, v6);
      v34 = sub_100001D8C(v30, v32, &v40);

      v35 = v37;
      *(v37 + 1) = v34;
      _os_log_impl(&_mh_execute_header, v27, v38, "Unrecognized IntelligenceFlow.Telemetry target %s so no request event target", v35, 0xCu);
      sub_100002334(v39);
    }

    else
    {

      v33 = *(v7 + 8);
      v33(v11, v6);
    }

    v33(v16, v6);
    v33(v14, v6);
  }

  v21 = 0;
  v22 = 1;
LABEL_22:
  v41 = v22;
  return v21 | (v22 << 32);
}

uint64_t sub_100007160(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002594(&qword_100024E28, qword_10001A970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000071D0(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024E28, qword_10001A970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100007238()
{
  result = qword_100024F80;
  if (!qword_100024F80)
  {
    sub_10001988C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024F80);
  }

  return result;
}

uint64_t sub_1000072B4()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025D60);
  sub_100003FD8(v0, qword_100025D60);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100007348()
{
  if (qword_100025A60 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025D60);
}

uint64_t sub_1000073AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025A60 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025D60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100007454(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v2 = sub_100019DFC();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  __chkstk_darwin(v2);
  v56 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100019DDC();
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002594(&qword_100025020, qword_10001AA80);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v56 - v14;
  v16 = sub_100002594(&qword_100024EE0, "r\x1B");
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v56 - v18;
  v20 = sub_10001981C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [objc_allocWithZone(IFPlatformRequestSchemaIFPlatformRequestContext) init];
  if (v25)
  {
    v26 = v25;
    v59 = v13;
    sub_100019E1C();
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_100002D44(v19, &qword_100024EE0, "r\x1B");
    }

    else
    {
      (*(v21 + 32))(v24, v19, v20);
      v29 = objc_allocWithZone(SISchemaUUID);
      isa = sub_1000197FC().super.isa;
      v31 = [v29 initWithNSUUID:isa];

      [v26 setTraceId:v31];
      (*(v21 + 8))(v24, v20);
    }

    v32 = v15;
    sub_100019E2C();
    v33 = sub_100019E0C();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v15, 1, v33) == 1)
    {
      goto LABEL_10;
    }

    v39 = v59;
    sub_100007CCC(v15, v59);
    v40 = (*(v34 + 88))(v39, v33);
    if (v40 != enum case for IntelligenceFlowPlatformPnR.StateInfo.started(_:))
    {
      if (v40 == enum case for IntelligenceFlowPlatformPnR.StateInfo.ended(_:))
      {
        (*(v34 + 96))(v39, v33);
        v43 = v60;
        (*(v60 + 32))(v8, v39, v5);
        type metadata accessor for IFPlatformRequestEndedConverter();
        v44 = sub_100007F04();
        [v26 setEnded:v44];

        (*(v43 + 8))(v8, v5);
      }

      else
      {
        if (v40 != enum case for IntelligenceFlowPlatformPnR.StateInfo.failed(_:))
        {
          (*(v34 + 8))(v39, v33);
LABEL_10:
          if (qword_100025A60 != -1)
          {
            swift_once();
          }

          v35 = sub_100019F2C();
          sub_100003FD8(v35, qword_100025D60);
          v36 = sub_100019F0C();
          v37 = sub_10001A02C();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&_mh_execute_header, v36, v37, "failed parsing pnr.stateInfo", v38, 2u);
          }

          goto LABEL_32;
        }

        (*(v34 + 96))(v39, v33);
        v46 = v56;
        v45 = v57;
        v47 = v58;
        (*(v57 + 32))(v56, v39, v58);
        type metadata accessor for IFPlatformRequestFailedConverter();
        v48 = sub_1000040B8();
        [v26 setFailed:v48];

        (*(v45 + 8))(v46, v47);
      }

LABEL_32:
      sub_100002D44(v32, &qword_100025020, qword_10001AA80);
      return v26;
    }

    v41 = [objc_allocWithZone(IFPlatformRequestSchemaIFPlatformRequestStarted) init];
    if (v41)
    {
      v42 = v41;
      if ((v61 & 0x100000000) != 0)
      {
        if (qword_100025A60 != -1)
        {
          swift_once();
        }

        v51 = sub_100019F2C();
        sub_100003FD8(v51, qword_100025D60);
        v52 = sub_100019F0C();
        v53 = sub_10001A02C();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "target is nil, not setting", v54, 2u);
        }

        v39 = v59;
      }

      else
      {
        [v41 setIfPlatformRequestTarget:?];
      }

      [v26 setStartedOrChanged:v42];

      (*(v34 + 8))(v39, v33);
      goto LABEL_32;
    }

    if (qword_100025A60 != -1)
    {
      swift_once();
    }

    v49 = sub_100019F2C();
    sub_100003FD8(v49, qword_100025D60);
    sub_1000017F4(0xD000000000000048, 0x800000010001B510, v50);

    (*(v34 + 8))(v59, v33);
    sub_100002D44(v15, &qword_100025020, qword_10001AA80);
  }

  else
  {
    if (qword_100025A60 != -1)
    {
      swift_once();
    }

    v27 = sub_100019F2C();
    sub_100003FD8(v27, qword_100025D60);
    sub_1000017F4(0xD000000000000040, 0x800000010001B4C0, v28);
  }

  return 0;
}

uint64_t sub_100007CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002594(&qword_100025020, qword_10001AA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007D60()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025D78);
  sub_100003FD8(v0, qword_100025D78);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100007DF8()
{
  if (qword_100025A68 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025D78);
}

uint64_t sub_100007E5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025A68 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025D78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100007F04()
{
  v0 = sub_100002594(&qword_100024D88, qword_10001A910);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = [objc_allocWithZone(IFPlatformRequestSchemaIFPlatformRequestEnded) init];
  if (!v7)
  {
    if (qword_100025A68 != -1)
    {
      swift_once();
    }

    v14 = sub_100019F2C();
    sub_100003FD8(v14, qword_100025D78);
    sub_1000017F4(0xD000000000000046, 0x800000010001B5B0, v15);
    return 0;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(IFTSchemaIFTIntelligenceFlowError) init];
  if (!v9)
  {
    if (qword_100025A68 != -1)
    {
      swift_once();
    }

    v16 = sub_100019F2C();
    sub_100003FD8(v16, qword_100025D78);
    sub_1000017F4(0xD000000000000038, 0x800000010001B300, v17);

    return 0;
  }

  v10 = v9;
  sub_100019DCC();
  v11 = sub_100019DAC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v6, 1, v11) == 1)
  {
    sub_1000043E8(v6);
  }

  else
  {
    v18 = sub_100019D8C();
    (*(v12 + 8))(v6, v11);
    if ((v18 & 0x100000000) == 0)
    {
      [v10 setCode:v18];
    }
  }

  sub_100019DCC();
  if (v13(v4, 1, v11) == 1)
  {
    sub_1000043E8(v4);
  }

  else
  {
    sub_100019D9C();
    v20 = v19;
    (*(v12 + 8))(v4, v11);
    if (v20)
    {
      v21 = sub_100019F7C();

      [v10 setDomain:v21];
    }
  }

  [v8 setHandledError:v10];

  return v8;
}

uint64_t sub_100008258()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025A78);
  sub_100003FD8(v0, qword_100025A78);
  return sub_100019F1C();
}

uint64_t sub_1000082F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009D3C;

  return sub_100008CE4(a1);
}

uint64_t sub_1000083A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a3;
  v6 = sub_100002594(&qword_100024CD0, &qword_10001A8D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v39 - v8;
  v10 = sub_100002594(&qword_100025178, &unk_10001AC10);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v46 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  result = sub_100002DA4(a2);
  if (!result)
  {
    return result;
  }

  v18 = result;
  v19 = 0;
  v20 = *(result + 16);
  *&v17 = 136315138;
  v39 = v17;
  v40 = v15;
  v42 = v20;
  v43 = result;
  while (1)
  {
    if (v19 == v20)
    {
      v21 = sub_100002594(&qword_100024CD8, qword_10001A8D8);
      (*(*(v21 - 8) + 56))(v46, 1, 1, v21);
      v45 = v20;
      goto LABEL_10;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v19 >= *(v18 + 16))
    {
      goto LABEL_20;
    }

    v22 = sub_100002594(&qword_100024CD8, qword_10001A8D8);
    v23 = *(v22 - 8);
    v24 = v46;
    sub_100009C64(v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, v46);
    v45 = v19 + 1;
    (*(v23 + 56))(v24, 0, 1, v22);
LABEL_10:
    sub_100003D7C(v46, v15, &qword_100025178, &unk_10001AC10);
    v25 = sub_100002594(&qword_100024CD8, qword_10001A8D8);
    if ((*(*(v25 - 8) + 48))(v15, 1, v25) == 1)
    {
    }

    v26 = *&v15[*(v25 + 48)];
    sub_100003D7C(v15, v9, &qword_100024CD0, &qword_10001A8D0);
    sub_10001982C();
    if (v4)
    {

      v4 = 0;
    }

    if (qword_100025A70 != -1)
    {
      swift_once();
    }

    v27 = sub_100019F2C();
    sub_100003FD8(v27, qword_100025A78);
    v28 = v26;
    v29 = sub_100019F0C();
    v30 = sub_10001A01C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47 = v32;
      *v31 = v39;
      v33 = [v28 qualifiedMessageName];
      v34 = sub_100019F8C();
      v41 = v4;
      v35 = v34;
      v37 = v36;

      v38 = sub_100001D8C(v35, v37, &v47);

      *(v31 + 4) = v38;
      v4 = v41;
      _os_log_impl(&_mh_execute_header, v29, v30, "IFTelemetry message is appended %s to SELF staging pool", v31, 0xCu);
      sub_100002334(v32);

      v15 = v40;
    }

    else
    {
    }

    result = sub_100009CD4(v9);
    v20 = v42;
    v18 = v43;
    v19 = v45;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100008884(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000892C;

  return sub_100008CE4(a1);
}

uint64_t sub_10000892C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100008A20(uint64_t a1)
{
  v2 = sub_100009790();

  return IngestionExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000096E4();
  sub_10001987C();
  return 0;
}

void *sub_100008AC8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100002594(&qword_100025180, &unk_10001AC20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002594(&qword_100025188, &qword_10001ACA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100008BFC()
{
  if (qword_100025A70 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();
  sub_100003FD8(v0, qword_100025A78);
  oslog = sub_100019F0C();
  v1 = sub_10001A01C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "IFTelemetrySELFIngestor Initializing", v2, 2u);
  }
}

uint64_t sub_100008CE4(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_10001983C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v1[8] = *(v3 + 64);
  v1[9] = swift_task_alloc();
  v4 = sub_1000197DC();
  v1[10] = v4;
  v5 = *(v4 - 8);
  v1[11] = v5;
  v6 = *(v5 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100008E38, 0, 0);
}

uint64_t sub_100008E38()
{
  v49 = v0;
  type metadata accessor for IFDefaultsLib();
  v0[17] = IFDefaultsLib.__allocating_init(domain:)();
  sub_100002594(&qword_100025168, &qword_10001AC08);
  v1 = sub_100019DBC();
  v47 = IFBiomeLib.__allocating_init(stream:)(v1);
  v0[18] = v47;
  type metadata accessor for IFTelemetrySELFMapper();
  v45 = sub_100003A84();
  v0[19] = v45;
  if (qword_100025A70 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  sub_100003FD8(v2, qword_100025A78);
  v3 = sub_100019F0C();
  v4 = sub_10001A01C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Begin ingesting", v5, 2u);
  }

  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[10];
  v10 = v0[11];

  IFDefaultsLib.lastCollectionDate.getter(v6);
  sub_1000197CC();
  v12 = swift_allocObject();
  v0[20] = v12;
  v44 = v12;
  *(v12 + 16) = &_swiftEmptyArrayStorage;
  v13 = *(v10 + 16);
  v0[21] = v13;
  v0[22] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v8, v6, v11);
  v13(v9, v7, v11);
  v14 = sub_100019F0C();
  v15 = sub_10001A01C();
  v16 = os_log_type_enabled(v14, v15);
  v18 = v0[13];
  v17 = v0[14];
  v20 = v0[10];
  v19 = v0[11];
  if (v16)
  {
    v21 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v21 = 136315394;
    sub_100009C0C();
    log = v14;
    v42 = v15;
    v22 = sub_10001A13C();
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v17, v20);
    v26 = sub_100001D8C(v22, v24, &v48);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = sub_10001A13C();
    v29 = v28;
    v25(v18, v20);
    v30 = sub_100001D8C(v27, v29, &v48);

    *(v21 + 14) = v30;
    _os_log_impl(&_mh_execute_header, log, v42, "Fetch range: %s, %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v25 = *(v19 + 8);
    v25(v18, v20);
    v25(v17, v20);
  }

  v0[23] = v25;
  v31 = v0[9];
  v32 = v0[6];
  v33 = v0[7];
  (*(v33 + 16))(v31, v0[5], v32);
  v34 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v35 = swift_allocObject();
  v0[24] = v35;
  *(v35 + 16) = v45;
  (*(v33 + 32))(v35 + v34, v31, v32);
  v36 = *(*v47 + 144);

  v46 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  v0[25] = v38;
  *v38 = v0;
  v38[1] = sub_100009390;
  v39 = v0[15];
  v40 = v0[16];

  return v46(v40, v39, sub_10000982C, v44, sub_100009B68, v35);
}

uint64_t sub_100009390()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 160);
  v5 = *v0;

  return _swift_task_switch(sub_1000094C4, 0, 0);
}

uint64_t sub_1000094C4()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v0 + 184);
  if (*(v2 + 16))
  {
    v21 = *(v0 + 152);
    v22 = *(v0 + 160);
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v23 = *(v0 + 112);
    v25 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = *(v0 + 80);
    v27 = *(v0 + 96);
    v28 = *(v0 + 72);
    v10 = *(v2 + 32);
    swift_willThrow();
    swift_errorRetain();

    v3(v7, v9);
    v3(v6, v9);
  }

  else
  {
    v12 = *(v0 + 176);
    v13 = *(v0 + 152);
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v24 = *(v0 + 160);
    v26 = *(v0 + 112);
    v18 = *(v0 + 96);
    v19 = *(v0 + 80);
    v29 = *(v0 + 72);
    (*(v0 + 168))(v18, v17, v19);
    IFDefaultsLib.lastCollectionDate.setter(v18);

    v3(v17, v19);
    v3(v16, v19);
  }

  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_1000096E4()
{
  result = qword_100025158;
  if (!qword_100025158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025158);
  }

  return result;
}

unint64_t sub_100009790()
{
  result = qword_100025160;
  if (!qword_100025160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025160);
  }

  return result;
}

uint64_t sub_1000097F4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000982C(uint64_t a1)
{
  if (a1)
  {
    v2 = v1;
    swift_errorRetain();
    if (qword_100025A70 != -1)
    {
      swift_once();
    }

    v4 = sub_100019F2C();
    sub_100003FD8(v4, qword_100025A78);
    v5 = sub_100019F0C();
    v6 = sub_10001A02C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error, loadBiomeEvent failed", v7, 2u);
    }

    swift_beginAccess();
    v8 = *(v2 + 16);
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_100008AC8(0, v8[2] + 1, 1, v8);
      *(v2 + 16) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_100008AC8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v8[v11 + 4] = a1;
    *(v2 + 16) = v8;
    swift_endAccess();
  }

  else
  {
    if (qword_100025A70 != -1)
    {
      swift_once();
    }

    v12 = sub_100019F2C();
    sub_100003FD8(v12, qword_100025A78);
    oslog = sub_100019F0C();
    v13 = sub_10001A01C();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Ingest completed.", v14, 2u);
    }
  }
}

uint64_t sub_100009AA4()
{
  v1 = sub_10001983C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100009B68(uint64_t a1)
{
  v3 = *(sub_10001983C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = objc_autoreleasePoolPush();
  sub_1000083A0(v5, a1, v1 + v4);

  __objc_autoreleasePoolPop(v6);
}

unint64_t sub_100009C0C()
{
  result = qword_100025170;
  if (!qword_100025170)
  {
    sub_1000197DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025170);
  }

  return result;
}

uint64_t sub_100009C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002594(&qword_100024CD8, qword_10001A8D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009CD4(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024CD0, &qword_10001A8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009D40()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025D90);
  sub_100003FD8(v0, qword_100025D90);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100009DD4()
{
  if (qword_100025B90 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025D90);
}

uint64_t sub_100009E38@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025B90 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025D90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_100009EE0()
{
  v0 = sub_100019DFC();
  v82 = *(v0 - 8);
  v83 = v0;
  v1 = *(v82 + 64);
  __chkstk_darwin(v0);
  v81 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100019DDC();
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = *(v85 + 64);
  __chkstk_darwin(v3);
  v84 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002594(&qword_100025020, qword_10001AA80);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v89 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = &v78 - v10;
  v11 = sub_100002594(&qword_100024EE0, "r\x1B");
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v78 - v13;
  v15 = sub_10001981C();
  v87 = *(v15 - 8);
  v88 = v15;
  v16 = *(v87 + 64);
  __chkstk_darwin(v15);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002594(&qword_100024EC8, qword_10001AC30);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v78 - v21;
  v23 = sub_100019E3C();
  v91 = *(v23 - 8);
  v92 = v23;
  v24 = *(v91 + 64);
  __chkstk_darwin(v23);
  v90 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100002594(&qword_100024ED0, "r\x1B");
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v78 - v28;
  v30 = sub_100002594(&qword_100024E28, qword_10001A970);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v78 - v32;
  type metadata accessor for IFPlatformTargetConverter();
  sub_1000198AC();
  v34 = sub_100006B74(v33);
  sub_100002D44(v33, &qword_100024E28, qword_10001A970);
  result = 0;
  if ((v34 & 0x100000000) == 0)
  {
    v36 = [objc_allocWithZone(IFPlatformSchemaIFPlatformClientEvent) init];
    if (v36)
    {
      v80 = v36;
      v37 = [objc_allocWithZone(IFPlatformSchemaIFPlatformTargetContext) init];
      if (v37)
      {
        v38 = v37;
        type metadata accessor for IFPlatformClientEventMetadataConverter();
        sub_1000198DC();
        v39 = sub_1000135FC(v29);
        sub_100002D44(v29, &qword_100024ED0, "r\x1B");
        [v80 setEventMetadata:v39];

        sub_1000198FC();
        v40 = sub_1000198EC();
        v41 = *(v40 - 8);
        if ((*(v41 + 48))(v22, 1, v40) == 1)
        {

          sub_100002D44(v22, &qword_100024EC8, qword_10001AC30);
          return v80;
        }

        if ((*(v41 + 88))(v22, v40) != enum case for IntelligenceFlowTelemetry.Objective.pnr(_:))
        {

          (*(v41 + 8))(v22, v40);
          return v80;
        }

        v79 = v38;
        (*(v41 + 96))(v22, v40);
        v47 = v90;
        v46 = v91;
        v48 = v22;
        v49 = v92;
        (*(v91 + 32))(v90, v48, v92);
        sub_100019E1C();
        v50 = v87;
        v51 = v88;
        if ((*(v87 + 48))(v14, 1, v88) == 1)
        {
          sub_100002D44(v14, &qword_100024EE0, "r\x1B");
        }

        else
        {
          (*(v50 + 32))(v18, v14, v51);
          v52 = objc_allocWithZone(SISchemaUUID);
          v53 = v50;
          isa = sub_1000197FC().super.isa;
          v55 = [v52 initWithNSUUID:isa];

          [v79 setTraceId:v55];
          (*(v53 + 8))(v18, v51);
        }

        v56 = v93;
        sub_100019E2C();
        v57 = sub_100019E0C();
        v58 = *(v57 - 8);
        if ((*(v58 + 48))(v56, 1, v57) == 1)
        {
          goto LABEL_20;
        }

        v64 = v89;
        sub_100007CCC(v56, v89);
        v65 = (*(v58 + 88))(v64, v57);
        if (v65 != enum case for IntelligenceFlowPlatformPnR.StateInfo.started(_:))
        {
          if (v65 == enum case for IntelligenceFlowPlatformPnR.StateInfo.ended(_:))
          {
            v68 = v89;
            (*(v58 + 96))(v89, v57);
            v70 = v84;
            v69 = v85;
            v71 = v86;
            (*(v85 + 32))(v84, v68, v86);
            type metadata accessor for IFPlatformTargetEndedConverter();
            v72 = sub_100013D1C();
            v73 = "setEnded:";
          }

          else
          {
            if (v65 != enum case for IntelligenceFlowPlatformPnR.StateInfo.failed(_:))
            {
              (*(v58 + 8))(v89, v57);
LABEL_20:
              if (qword_100025B90 != -1)
              {
                swift_once();
              }

              v59 = sub_100019F2C();
              sub_100003FD8(v59, qword_100025D90);
              v60 = sub_100019F0C();
              v61 = sub_10001A02C();
              if (os_log_type_enabled(v60, v61))
              {
                v62 = swift_slowAlloc();
                *v62 = 0;
                _os_log_impl(&_mh_execute_header, v60, v61, "failed parsing pnr.stateInfo", v62, 2u);
              }

              v63 = v79;
              goto LABEL_33;
            }

            v74 = v89;
            (*(v58 + 96))(v89, v57);
            v70 = v81;
            v69 = v82;
            v71 = v83;
            (*(v82 + 32))(v81, v74, v83);
            type metadata accessor for IFPlatformTargetFailedConverter();
            v72 = sub_1000149E4();
            v73 = "setFailed:";
          }

          v63 = v79;
          [v79 v73];

          (*(v69 + 8))(v70, v71);
LABEL_33:
          sub_100002D44(v56, &qword_100025020, qword_10001AA80);
          v75 = v80;
          [v80 setIfPlatformTargetContext:v63];

          (*(v46 + 8))(v47, v49);
          return v75;
        }

        v66 = [objc_allocWithZone(IFPlatformSchemaIFPlatformTargetStarted) init];
        if (v66)
        {
          v67 = v66;
          [v66 setIfPlatformTarget:v34];
          v63 = v79;
          [v79 setStartedOrChanged:v67];

          (*(v58 + 8))(v89, v57);
          goto LABEL_33;
        }

        if (qword_100025B90 != -1)
        {
          swift_once();
        }

        v76 = sub_100019F2C();
        sub_100003FD8(v76, qword_100025D90);
        sub_1000017F4(0xD000000000000040, 0x800000010001B6F0, v77);

        (*(v46 + 8))(v47, v49);
        (*(v58 + 8))(v89, v57);
        sub_100002D44(v56, &qword_100025020, qword_10001AA80);
      }

      else
      {
        if (qword_100025B90 != -1)
        {
          swift_once();
        }

        v44 = sub_100019F2C();
        sub_100003FD8(v44, qword_100025D90);
        sub_1000017F4(0xD000000000000038, 0x800000010001B6B0, v45);
      }
    }

    else
    {
      if (qword_100025B90 != -1)
      {
        swift_once();
      }

      v42 = sub_100019F2C();
      sub_100003FD8(v42, qword_100025D90);
      sub_1000017F4(0xD000000000000030, 0x800000010001B670, v43);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10000AAAC()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025DA8);
  sub_100003FD8(v0, qword_100025DA8);
  sub_1000133C4(0, &qword_100024CC0, OS_os_log_ptr);
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_10000AB50()
{
  if (qword_100025BA0 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025DA8);
}

uint64_t sub_10000ABB4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025DA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_10000AC5C()
{
  v0 = sub_100002594(&qword_100024EC8, qword_10001AC30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v20 - v2;
  v4 = sub_100019D7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002594(&qword_100024E28, qword_10001A970);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  sub_1000198AC();
  v13 = sub_10000BE40(v12);
  sub_100002D44(v12, &qword_100024E28, qword_10001A970);
  result = 0;
  if (v13)
  {
    sub_1000198FC();
    v15 = sub_1000198EC();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v3, 1, v15) == 1)
    {
      sub_100002D44(v3, &qword_100024EC8, qword_10001AC30);
    }

    else
    {
      if ((*(v16 + 88))(v3, v15) == enum case for IntelligenceFlowTelemetry.Objective.feedbackLearning(_:))
      {
        (*(v16 + 96))(v3, v15);
        (*(v5 + 32))(v8, v3, v4);
        v19 = sub_100012910();
        (*(v5 + 8))(v8, v4);
        return v19;
      }

      (*(v16 + 8))(v3, v15);
    }

    if (qword_100025BA0 != -1)
    {
      swift_once();
    }

    v17 = sub_100019F2C();
    sub_100003FD8(v17, qword_100025DA8);
    sub_1000017F4(0xD00000000000003DLL, 0x800000010001B780, v18);
    return 0;
  }

  return result;
}

id sub_10000B340()
{
  v0 = [objc_allocWithZone(FLSchemaFLActionEvaluationStarted) init];
  v1 = v0;
  if (v0)
  {
    [v0 setExists:1];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v2 = 0xD000000000000021;
    *(v2 + 8) = 0x800000010001B8B0;
    *(v2 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

id sub_10000B408()
{
  v0 = [objc_allocWithZone(FLSchemaFLActionEvaluationFailed) init];
  v1 = v0;
  if (v0)
  {
    [v0 setExists:1];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v2 = 0xD000000000000020;
    *(v2 + 8) = 0x800000010001B8E0;
    *(v2 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

id sub_10000B570()
{
  v0 = [objc_allocWithZone(FLSchemaFLToolCandidateCategory) init];
  v1 = v0;
  if (v0)
  {
    [v0 setExists:1];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v2 = 0xD00000000000001FLL;
    *(v2 + 8) = 0x800000010001B910;
    *(v2 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_10000B648(uint64_t a1)
{
  v2 = sub_100019A0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.unknown(_:))
  {
    return 0;
  }

  if (v7 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionExecutedSuccessfully(_:))
  {
    return 1;
  }

  if (v7 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionNotExecuted(_:))
  {
    return 2;
  }

  if (v7 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionExecutionFailed(_:))
  {
    return 3;
  }

  if (v7 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionCriticalFailure(_:))
  {
    return 4;
  }

  if (v7 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionCancelled(_:))
  {
    return 5;
  }

  if (v7 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionConfirmationYes(_:))
  {
    return 6;
  }

  if (v7 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionConfirmationNo(_:))
  {
    return 7;
  }

  if (v7 != enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionConfirmationAbandon(_:))
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return 8;
}

id sub_10000B83C()
{
  v0 = [objc_allocWithZone(FLSchemaFLInteractionDonationStarted) init];
  v1 = v0;
  if (v0)
  {
    [v0 setExists:1];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v2 = 0xD000000000000024;
    *(v2 + 8) = 0x800000010001B930;
    *(v2 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

double sub_10000B904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v6 = sub_100002594(&qword_100025230, &qword_10001ACA8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1000197DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000605C(a1, v9, &qword_100025230, &qword_10001ACA8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100002D44(v9, &qword_100025230, &qword_10001ACA8);
    sub_100013288();
    swift_allocError();
    *v15 = v19;
    *(v15 + 8) = a3;
    *(v15 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    sub_10001979C();
    v3 = v16;
    (*(v11 + 8))(v14, v10);
  }

  return v3;
}

id sub_10000BB2C()
{
  v1 = sub_100002594(&qword_100025238, &qword_10001ACB0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_100002594(&qword_100025240, &qword_10001ACB8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = [objc_allocWithZone(FLSchemaFLCandidateInteraction) init];
  if (v9)
  {
    sub_100019B2C();
    v10 = sub_10000EF24(v8);
    sub_100002D44(v8, &qword_100025240, &qword_10001ACB8);
    if (v0)
    {
    }

    else
    {
      [v9 setIdentifier:v10];

      sub_100019B3C();
      v12 = sub_1000108E4(v4);
      sub_100002D44(v4, &qword_100025238, &qword_10001ACB0);
      [v9 setAlignment:v12];
    }
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v11 = 0xD00000000000001ELL;
    *(v11 + 8) = 0x800000010001B960;
    *(v11 + 16) = 0;
    swift_willThrow();
  }

  return v9;
}

char *sub_10000BD1C(char *a1, int64_t a2, char a3)
{
  result = sub_10000BD3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000BD3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002594(&qword_100025348, &qword_10001AE38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_10000BE40(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024E28, qword_10001A970);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  v6 = sub_10001988C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  sub_10000605C(a1, v5, &qword_100024E28, qword_10001A970);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002D44(v5, &qword_100024E28, qword_10001A970);
    if (qword_100025BA0 != -1)
    {
      swift_once();
    }

    v14 = sub_100019F2C();
    sub_100003FD8(v14, qword_100025DA8);
    v15 = sub_100019F0C();
    v16 = sub_10001A01C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "IntelligenceFlow.Telemetry event has no target", v17, 2u);
    }
  }

  else
  {
    v18 = *(v7 + 32);
    v18(v13, v5, v6);
    v18(v11, v13, v6);
    v19 = (*(v7 + 88))(v11, v6);
    if (v19 == enum case for IntelligenceFlowTarget.feedbackLearningEvaluateTask(_:) || v19 == enum case for IntelligenceFlowTarget.feedbackLearningDonateInteraction(_:))
    {
      return 1;
    }

    (*(v7 + 8))(v11, v6);
  }

  return 0;
}

char *sub_10000C110()
{
  v0 = sub_100002594(&qword_100025390, &qword_10001AE70);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v31 - v2;
  v4 = sub_100002594(&qword_1000252E0, &qword_10001ADE8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_100002594(&qword_100024EE0, "r\x1B");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v31 - v10;
  v12 = sub_10001981C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v32 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019D5C();
  v16 = sub_100019D4C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v3, 1, v16) == 1)
  {
    v18 = &qword_100025390;
    v19 = &qword_10001AE70;
    v20 = v3;
LABEL_5:
    sub_100002D44(v20, v18, v19);
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_6:
    sub_100002D44(v11, &qword_100024EE0, "r\x1B");
    sub_100013288();
    swift_allocError();
    *v23 = xmmword_10001AC80;
    *(v23 + 16) = 1;
    swift_willThrow();
    return v11;
  }

  sub_100019D3C();
  (*(v17 + 8))(v3, v16);
  v21 = sub_100019EFC();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v7, 1, v21) == 1)
  {
    v18 = &qword_1000252E0;
    v19 = &qword_10001ADE8;
    v20 = v7;
    goto LABEL_5;
  }

  sub_100019EEC();
  (*(v22 + 8))(v7, v21);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  v25 = v32;
  (*(v13 + 32))(v32, v11, v12);
  v26 = [objc_allocWithZone(FLSchemaFLClientEventMetadata) init];
  if (v26)
  {
    v11 = v26;
    v27 = objc_allocWithZone(SISchemaUUID);
    isa = sub_1000197FC().super.isa;
    v29 = [v27 initWithNSUUID:isa];

    [v11 setFlId:v29];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v30 = 0xD00000000000001DLL;
    *(v30 + 8) = 0x800000010001BD70;
    *(v30 + 16) = 0;
    swift_willThrow();
  }

  (*(v13 + 8))(v25, v12);
  return v11;
}

id sub_10000C5A8(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a3;
  v25 = a2;
  v4 = sub_100002594(&qword_1000252E0, &qword_10001ADE8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_100002594(&qword_100024EE0, "r\x1B");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_10001981C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000605C(a1, v7, &qword_1000252E0, &qword_10001ADE8);
  v17 = sub_100019EFC();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_100002D44(v7, &qword_1000252E0, &qword_10001ADE8);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  else
  {
    sub_100019EEC();
    (*(v18 + 8))(v7, v17);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v16, v11, v12);
      v21 = objc_allocWithZone(SISchemaUUID);
      isa = sub_1000197FC().super.isa;
      v19 = [v21 initWithNSUUID:isa];

      (*(v13 + 8))(v16, v12);
      return v19;
    }
  }

  sub_100002D44(v11, &qword_100024EE0, "r\x1B");
  sub_100013288();
  swift_allocError();
  v19 = v26;
  *v20 = v25;
  *(v20 + 8) = v19;
  *(v20 + 16) = 1;
  swift_willThrow();

  return v19;
}

uint64_t sub_10000C8E0(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025358, &qword_10001AE48);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_100019B5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_10000605C(a1, v5, &qword_100025358, &qword_10001AE48);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002D44(v5, &qword_100025358, &qword_10001AE48);
  }

  else
  {
    v14 = *(v7 + 32);
    v14(v13, v5, v6);
    v14(v11, v13, v6);
    v15 = (*(v7 + 88))(v11, v6);
    if (v15 != enum case for IntelligenceFlowFeedbackLearning.ActionResolutionState.unknown(_:))
    {
      if (v15 == enum case for IntelligenceFlowFeedbackLearning.ActionResolutionState.incomplete(_:))
      {
        return 1;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.ActionResolutionState.complete(_:))
      {
        return 2;
      }

      (*(v7 + 8))(v11, v6);
    }
  }

  return 0;
}

uint64_t sub_10000CB20(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025320, &qword_10001AE18);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_10001995C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_10000605C(a1, v5, &qword_100025320, &qword_10001AE18);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002D44(v5, &qword_100025320, &qword_10001AE18);
  }

  else
  {
    v14 = *(v7 + 32);
    v14(v13, v5, v6);
    v14(v11, v13, v6);
    v15 = (*(v7 + 88))(v11, v6);
    if (v15 != enum case for IntelligenceFlowFeedbackLearning.TaskStatus.unknown(_:))
    {
      if (v15 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.resultUnknown(_:))
      {
        return 1;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.inferredSuccess(_:))
      {
        return 2;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.inferredFailureUnknown(_:))
      {
        return 3;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.inferredFailureExecutionFailure(_:))
      {
        return 4;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.inferredFailureCriticalFailure(_:))
      {
        return 5;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.abandoned(_:))
      {
        return 6;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.cancelled(_:))
      {
        return 7;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.didNotExecute(_:))
      {
        return 8;
      }

      (*(v7 + 8))(v11, v6);
    }
  }

  return 0;
}

uint64_t sub_10000CE08(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025318, &qword_10001AE10);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_100019A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_10000605C(a1, v5, &qword_100025318, &qword_10001AE10);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002D44(v5, &qword_100025318, &qword_10001AE10);
  }

  else
  {
    v14 = *(v7 + 32);
    v14(v13, v5, v6);
    v14(v11, v13, v6);
    v15 = (*(v7 + 88))(v11, v6);
    if (v15 != enum case for IntelligenceFlowFeedbackLearning.TaskPromptStatus.unknown(_:))
    {
      if (v15 == enum case for IntelligenceFlowFeedbackLearning.TaskPromptStatus.none(_:))
      {
        return 1;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.TaskPromptStatus.confirmationYes(_:))
      {
        return 2;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.TaskPromptStatus.confirmationNo(_:))
      {
        return 3;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.TaskPromptStatus.confirmationAbandon(_:))
      {
        return 4;
      }

      (*(v7 + 8))(v11, v6);
    }
  }

  return 0;
}

id sub_10000D080(uint64_t a1)
{
  v3 = sub_100002594(&qword_100025318, &qword_10001AE10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28 - v5;
  v7 = sub_100002594(&qword_100025350, &qword_10001AE40);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = sub_100002594(&qword_100025320, &qword_10001AE18);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v28 - v16;
  v18 = [objc_allocWithZone(FLSchemaFLTaskOutcome) init];
  if (v18)
  {
    v30 = v1;
    v29 = a1;
    sub_10000605C(a1, v13, &qword_100025350, &qword_10001AE40);
    v19 = sub_10001998C();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (v21(v13, 1, v19) == 1)
    {
      sub_100002D44(v13, &qword_100025350, &qword_10001AE40);
      v22 = sub_10001995C();
      (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
    }

    else
    {
      sub_10001996C();
      (*(v20 + 8))(v13, v19);
    }

    v24 = sub_10000CB20(v17);
    sub_100002D44(v17, &qword_100025320, &qword_10001AE18);
    [v18 setTaskStatus:v24];
    sub_10000605C(v29, v11, &qword_100025350, &qword_10001AE40);
    if (v21(v11, 1, v19) == 1)
    {
      sub_100002D44(v11, &qword_100025350, &qword_10001AE40);
      v25 = sub_100019A1C();
      (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    }

    else
    {
      sub_10001997C();
      (*(v20 + 8))(v11, v19);
    }

    v26 = sub_10000CE08(v6);
    sub_100002D44(v6, &qword_100025318, &qword_10001AE10);
    [v18 setPromptStatus:v26];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v23 = 0xD000000000000015;
    *(v23 + 8) = 0x800000010001BBF0;
    *(v23 + 16) = 0;
    swift_willThrow();
  }

  return v18;
}

uint64_t sub_10000D478(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025310, &qword_10001AE08);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_100019D6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_10000605C(a1, v5, &qword_100025310, &qword_10001AE08);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002D44(v5, &qword_100025310, &qword_10001AE08);
  }

  else
  {
    v14 = *(v7 + 32);
    v14(v13, v5, v6);
    v14(v11, v13, v6);
    v15 = (*(v7 + 88))(v11, v6);
    if (v15 != enum case for IntelligenceFlowFeedbackLearning.Evaluator.unknown(_:))
    {
      if (v15 == enum case for IntelligenceFlowFeedbackLearning.Evaluator.actionPrompt(_:))
      {
        return 1;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.Evaluator.fixed(_:))
      {
        return 2;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.Evaluator.taskCompletion(_:))
      {
        return 3;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.Evaluator.majorityMediator(_:))
      {
        return 4;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.Evaluator.waterfallMediator(_:))
      {
        return 5;
      }

      (*(v7 + 8))(v11, v6);
    }
  }

  return 0;
}

uint64_t sub_10000D70C(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025308, &qword_10001AE00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000199AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_10000605C(a1, v5, &qword_100025308, &qword_10001AE00);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002D44(v5, &qword_100025308, &qword_10001AE00);
  }

  else
  {
    v14 = *(v7 + 32);
    v14(v13, v5, v6);
    v14(v11, v13, v6);
    v15 = (*(v7 + 88))(v11, v6);
    if (v15 != enum case for IntelligenceFlowFeedbackLearning.EvaluationVote.unknown(_:))
    {
      if (v15 == enum case for IntelligenceFlowFeedbackLearning.EvaluationVote.abstain(_:))
      {
        return 1;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.EvaluationVote.success(_:))
      {
        return 2;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.EvaluationVote.failure(_:))
      {
        return 3;
      }

      (*(v7 + 8))(v11, v6);
    }
  }

  return 0;
}

id sub_10000D968()
{
  v50 = sub_100019A0C();
  v1 = *(v50 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v50);
  v59 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v58 = &v40 - v5;
  v6 = sub_100002594(&qword_100025308, &qword_10001AE00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v40 - v8;
  v10 = sub_100002594(&qword_100025310, &qword_10001AE08);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v40 - v12;
  v14 = [objc_allocWithZone(FLSchemaFLTaskEvaluationNode) init];
  if (v14)
  {
    v49 = v0;
    sub_100019A8C();
    v15 = sub_10000D478(v13);
    sub_100002D44(v13, &qword_100025310, &qword_10001AE08);
    [v14 setEvaluator:v15];
    sub_100019A6C();
    v16 = sub_10000D70C(v9);
    sub_100002D44(v9, &qword_100025308, &qword_10001AE00);
    v48 = v14;
    [v14 setResult:v16];
    v17 = sub_100019A7C();
    v18 = *(v17 + 16);
    if (v18)
    {
      v60 = &_swiftEmptyArrayStorage;
      sub_10000BD1C(0, v18, 0);
      v20 = *(v1 + 16);
      v19 = v1 + 16;
      v21 = v60;
      v22 = (*(v19 + 64) + 32) & ~*(v19 + 64);
      v46 = v17;
      v23 = v17 + v22;
      v55 = *(v19 + 56);
      v56 = v20;
      v24 = (v19 + 16);
      v25 = (v19 + 72);
      v53 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionExecutedSuccessfully(_:);
      v54 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.unknown(_:);
      v51 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionExecutionFailed(_:);
      v52 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionNotExecuted(_:);
      v47 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionCriticalFailure(_:);
      v45 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionCancelled(_:);
      v43 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionConfirmationNo(_:);
      v44 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionConfirmationYes(_:);
      v57 = v19;
      v41 = (v19 - 8);
      v42 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionConfirmationAbandon(_:);
      v26 = v50;
      while (1)
      {
        v27 = v58;
        v56(v58, v23, v26);
        v28 = v59;
        (*v24)(v59, v27, v26);
        v29 = (*v25)(v28, v26);
        if (v29 != v54)
        {
          if (v29 == v53)
          {
            v30 = 1;
            goto LABEL_22;
          }

          if (v29 == v52)
          {
            v30 = 2;
            goto LABEL_22;
          }

          if (v29 == v51)
          {
            v30 = 3;
            goto LABEL_22;
          }

          if (v29 == v47)
          {
            v30 = 4;
            goto LABEL_22;
          }

          if (v29 == v45)
          {
            v30 = 5;
            goto LABEL_22;
          }

          if (v29 == v44)
          {
            v30 = 6;
            goto LABEL_22;
          }

          if (v29 == v43)
          {
            v30 = 7;
            goto LABEL_22;
          }

          if (v29 == v42)
          {
            v30 = 8;
            goto LABEL_22;
          }

          (*v41)(v59, v26);
        }

        v30 = 0;
LABEL_22:
        v60 = v21;
        v32 = v21[2];
        v31 = v21[3];
        if (v32 >= v31 >> 1)
        {
          sub_10000BD1C((v31 > 1), v32 + 1, 1);
          v26 = v50;
          v21 = v60;
        }

        v21[2] = v32 + 1;
        *(v21 + v32 + 8) = v30;
        v23 += v55;
        if (!--v18)
        {

          goto LABEL_29;
        }
      }
    }

    v21 = &_swiftEmptyArrayStorage;
LABEL_29:
    v34 = v21[2];
    v14 = v48;
    if (v34)
    {
      v60 = &_swiftEmptyArrayStorage;
      sub_10001A0CC();
      v35 = 32;
      do
      {
        v36 = *(v21 + v35);
        sub_10001A19C();
        sub_10001A0AC();
        v37 = v60[2];
        sub_10001A0DC();
        sub_10001A0EC();
        sub_10001A0BC();
        v35 += 4;
        --v34;
      }

      while (v34);
    }

    sub_1000133C4(0, &qword_100025340, NSNumber_ptr);
    isa = sub_100019FDC().super.isa;

    [v14 setSources:isa];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v33 = 0xD00000000000001CLL;
    *(v33 + 8) = 0x800000010001BBD0;
    *(v33 + 16) = 0;
    swift_willThrow();
  }

  return v14;
}

id sub_10000DF44(uint64_t a1)
{
  v3 = sub_100019A9C();
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002594(&qword_100025350, &qword_10001AE40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v47 - v9;
  v11 = sub_100002594(&qword_100025368, &qword_10001AE58);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v47 - v16;
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  v20 = sub_100002594(&qword_100025358, &qword_10001AE48);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v47 - v22;
  v51 = [objc_allocWithZone(FLSchemaFLTaskEvaluation) init];
  if (!v51)
  {
    sub_100013288();
    swift_allocError();
    *v28 = 0xD000000000000018;
    *(v28 + 8) = 0x800000010001BC30;
    *(v28 + 16) = 0;
    swift_willThrow();
    return v51;
  }

  v48 = v1;
  v49 = a1;
  v50 = v3;
  sub_10000605C(a1, v19, &qword_100025368, &qword_10001AE58);
  v24 = sub_1000199EC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v19, 1, v24) == 1)
  {
    sub_100002D44(v19, &qword_100025368, &qword_10001AE58);
    v27 = sub_100019B5C();
    (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  }

  else
  {
    sub_1000199DC();
    (*(v25 + 8))(v19, v24);
  }

  v30 = sub_10000C8E0(v23);
  sub_100002D44(v23, &qword_100025358, &qword_10001AE48);
  v29 = v51;
  [v51 setActionResolutionState:v30];
  sub_10000605C(v49, v17, &qword_100025368, &qword_10001AE58);
  if (v26(v17, 1, v24) == 1)
  {
    sub_100002D44(v17, &qword_100025368, &qword_10001AE58);
    v31 = sub_10001998C();
    (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
  }

  else
  {
    sub_1000199BC();
    (*(v25 + 8))(v17, v24);
  }

  v32 = v48;
  v33 = sub_10000D080(v10);
  sub_100002D44(v10, &qword_100025350, &qword_10001AE40);
  if (v32)
  {

    return v29;
  }

  [v29 setTaskOutcome:v33];

  v34 = v47;
  sub_10000605C(v49, v47, &qword_100025368, &qword_10001AE58);
  if (v26(v34, 1, v24) == 1)
  {
    sub_100002D44(v34, &qword_100025368, &qword_10001AE58);
    isa = 0;
LABEL_20:
    [v29 setEvaluationNodes:isa];

    return v29;
  }

  v36 = sub_1000199CC();
  (*(v25 + 8))(v34, v24);
  v37 = v36;
  v38 = *(v36 + 16);
  if (!v38)
  {

LABEL_19:
    sub_1000133C4(0, &qword_100025370, FLSchemaFLTaskEvaluationNode_ptr);
    isa = sub_100019FDC().super.isa;

    goto LABEL_20;
  }

  v53 = &_swiftEmptyArrayStorage;
  result = sub_10001A0CC();
  v40 = 0;
  v49 = v37 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
  v48 = v52 + 16;
  v41 = (v52 + 8);
  while (v40 < *(v37 + 16))
  {
    v42 = v50;
    (*(v52 + 16))(v6, v49 + *(v52 + 72) * v40, v50);
    sub_10000D968();
    ++v40;
    (*v41)(v6, v42);
    sub_10001A0AC();
    v43 = v38;
    v44 = v6;
    v45 = v37;
    v46 = v53[2];
    sub_10001A0DC();
    v37 = v45;
    v6 = v44;
    v38 = v43;
    sub_10001A0EC();
    result = sub_10001A0BC();
    if (v43 == v40)
    {

      v29 = v51;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E61C(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025360, &qword_10001AE50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_10001999C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_10000605C(a1, v5, &qword_100025360, &qword_10001AE50);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002D44(v5, &qword_100025360, &qword_10001AE50);
  }

  else
  {
    v14 = *(v7 + 32);
    v14(v13, v5, v6);
    v14(v11, v13, v6);
    v15 = (*(v7 + 88))(v11, v6);
    if (v15 != enum case for IntelligenceFlowFeedbackLearning.EvaluationType.unknown(_:))
    {
      if (v15 == enum case for IntelligenceFlowFeedbackLearning.EvaluationType.fastEvaluator(_:))
      {
        return 1;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.EvaluationType.fullEvaluator(_:))
      {
        return 2;
      }

      (*(v7 + 8))(v11, v6);
    }
  }

  return 0;
}

id sub_10000E85C()
{
  v1 = sub_100002594(&qword_1000252E0, &qword_10001ADE8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = [objc_allocWithZone(FLSchemaFLParameterCandidateCategory) init];
  if (v5)
  {
    sub_100019B7C();
    v6 = sub_10000C5A8(v4, 0x6574656D61726170, 0xEF6449656D614E72);
    sub_100002D44(v4, &qword_1000252E0, &qword_10001ADE8);
    if (v0)
    {
    }

    else
    {
      [v5 setParameterNameId:v6];
    }
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v7 = 0xD000000000000024;
    *(v7 + 8) = 0x800000010001BB60;
    *(v7 + 16) = 0;
    swift_willThrow();
  }

  return v5;
}

void *sub_10000E9C4(uint64_t a1)
{
  v2 = sub_100019B8C();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002594(&qword_100025338, &qword_10001AE30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v36 - v8;
  v10 = sub_100019A5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = [objc_allocWithZone(FLSchemaFLCandidateCategory) init];
  if (v18)
  {
    sub_10000605C(a1, v9, &qword_100025338, &qword_10001AE30);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_100002D44(v9, &qword_100025338, &qword_10001AE30);
      sub_100013288();
      swift_allocError();
      *v19 = 0xD000000000000011;
      *(v19 + 8) = 0x800000010001BBB0;
      *(v19 + 16) = 1;
      swift_willThrow();
      v20 = v18;
    }

    else
    {
      (*(v11 + 32))(v17, v9, v10);
      (*(v11 + 16))(v15, v17, v10);
      v22 = (*(v11 + 88))(v15, v10);
      if (v22 == enum case for IntelligenceFlowFeedbackLearning.CandidateCategory.tool(_:))
      {
        v23 = *(v11 + 8);
        v23(v15, v10);
        v24 = [objc_allocWithZone(FLSchemaFLToolCandidateCategory) init];
        v20 = v18;
        if (v24)
        {
          v25 = v24;
          [v24 setExists:1];
          [v18 setTool:v25];
        }

        else
        {
          sub_100013288();
          swift_allocError();
          *v33 = 0xD00000000000001FLL;
          *(v33 + 8) = 0x800000010001B910;
          *(v33 + 16) = 0;
          swift_willThrow();
        }

        v23(v17, v10);
      }

      else
      {
        v20 = v18;
        v26 = v38;
        if (v22 == enum case for IntelligenceFlowFeedbackLearning.CandidateCategory.parameter(_:))
        {
          (*(v11 + 96))(v15, v10);
          v27 = v36;
          v28 = v15;
          v29 = v37;
          (*(v36 + 32))(v5, v28, v37);
          v30 = sub_10000E85C();
          if (v26)
          {
          }

          else
          {
            v34 = v30;
            [v20 setParameter:v30];
          }

          (*(v27 + 8))(v5, v29);
          (*(v11 + 8))(v17, v10);
        }

        else
        {
          sub_100013288();
          swift_allocError();
          *v31 = 0xD000000000000011;
          *(v31 + 8) = 0x800000010001BBB0;
          *(v31 + 16) = 2;
          swift_willThrow();

          v32 = *(v11 + 8);
          v32(v17, v10);
          v32(v15, v10);
        }
      }
    }
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v21 = 0xD00000000000001BLL;
    *(v21 + 8) = 0x800000010001BB90;
    *(v21 + 16) = 0;
    swift_willThrow();
    return 0;
  }

  return v20;
}

uint64_t sub_10000EF24(uint64_t a1)
{
  v3 = sub_100002594(&qword_1000252E0, &qword_10001ADE8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v23 - v5;
  v7 = sub_100002594(&qword_100025240, &qword_10001ACB8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v23 - v9;
  v11 = sub_100019B0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000605C(a1, v10, &qword_100025240, &qword_10001ACB8);
  v16 = 1;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100002D44(v10, &qword_100025240, &qword_10001ACB8);
    sub_100013288();
    swift_allocError();
    *v17 = 0xD000000000000013;
    *(v17 + 8) = 0x800000010001B9E0;
    *(v17 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v18 = [objc_allocWithZone(FLSchemaFLCandidateIdentifier) init];
    if (v18)
    {
      v16 = v18;
      sub_100019AFC();
      v19 = sub_10000C5A8(v6, 0xD00000000000001FLL, 0x800000010001BA20);
      if (!v1)
      {
        v21 = v19;
        sub_100002D44(v6, &qword_1000252E0, &qword_10001ADE8);
        [v16 setCandidateId:v21];

        (*(v12 + 8))(v15, v11);
        return v16;
      }

      sub_100002D44(v6, &qword_1000252E0, &qword_10001ADE8);
    }

    else
    {
      sub_100013288();
      swift_allocError();
      *v20 = 0xD00000000000001DLL;
      *(v20 + 8) = 0x800000010001BA00;
      *(v20 + 16) = 0;
      swift_willThrow();
    }

    (*(v12 + 8))(v15, v11);
  }

  return v16;
}

uint64_t sub_10000F274(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025330, &qword_10001AE28);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_100019B1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_10000605C(a1, v5, &qword_100025330, &qword_10001AE28);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002D44(v5, &qword_100025330, &qword_10001AE28);
  }

  else
  {
    v14 = *(v7 + 32);
    v14(v13, v5, v6);
    v14(v11, v13, v6);
    v15 = (*(v7 + 88))(v11, v6);
    if (v15 != enum case for IntelligenceFlowFeedbackLearning.CandidateResolution.unknown(_:))
    {
      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateResolution.unresolved(_:))
      {
        return 1;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateResolution.resolvedNotSelected(_:))
      {
        return 2;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateResolution.resolvedSelected(_:))
      {
        return 3;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateResolution.executed(_:))
      {
        return 4;
      }

      (*(v7 + 8))(v11, v6);
    }
  }

  return 0;
}

uint64_t sub_10000F4EC(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025328, &qword_10001AE20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000199FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_10000605C(a1, v5, &qword_100025328, &qword_10001AE20);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002D44(v5, &qword_100025328, &qword_10001AE20);
  }

  else
  {
    v14 = *(v7 + 32);
    v14(v13, v5, v6);
    v14(v11, v13, v6);
    v15 = (*(v7 + 88))(v11, v6);
    if (v15 != enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.unknown(_:))
    {
      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.confirmationAbandoned(_:))
      {
        return 1;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.confirmationConfirmed(_:))
      {
        return 2;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.confirmationRejected(_:))
      {
        return 3;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.disambiguationAbandoned(_:))
      {
        return 4;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.disambiguationCandidateSelected(_:))
      {
        return 5;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.disambiguationOtherCandidateSelected(_:))
      {
        return 6;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.disambiguationRejected(_:))
      {
        return 7;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.inferredSuccess(_:))
      {
        return 8;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.inferredFailure(_:))
      {
        return 9;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.unableToDeriveOutcome(_:))
      {
        return 10;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.inferredFromTask(_:))
      {
        return 11;
      }

      (*(v7 + 8))(v11, v6);
    }
  }

  return 0;
}

id sub_10000F828()
{
  v1 = sub_100002594(&qword_100025328, &qword_10001AE20);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v24 - v3;
  v5 = sub_100002594(&qword_100025330, &qword_10001AE28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v9 = sub_100002594(&qword_100025240, &qword_10001ACB8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_100002594(&qword_100025338, &qword_10001AE30);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v24 - v15;
  v17 = [objc_allocWithZone(FLSchemaFLCandidateEvaluation) init];
  if (v17)
  {
    sub_100019ABC();
    v18 = sub_10000E9C4(v16);
    sub_100002D44(v16, &qword_100025338, &qword_10001AE30);
    if (v0)
    {
    }

    else
    {
      [v17 setCandidateCategory:v18];

      sub_100019ACC();
      v19 = sub_10000EF24(v12);
      sub_100002D44(v12, &qword_100025240, &qword_10001ACB8);
      [v17 setCandidateIdentifier:v19];

      sub_100019AAC();
      v22 = sub_10000F274(v8);
      sub_100002D44(v8, &qword_100025330, &qword_10001AE28);
      [v17 setResolution:v22];
      sub_100019ADC();
      v23 = sub_10000F4EC(v4);
      sub_100002D44(v4, &qword_100025328, &qword_10001AE20);
      [v17 setOutcome:v23];
    }
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v20 = 0xD00000000000001DLL;
    *(v20 + 8) = 0x800000010001BC10;
    *(v20 + 16) = 0;
    swift_willThrow();
  }

  return v17;
}

uint64_t sub_10000FB34(uint64_t a1)
{
  v3 = sub_100019AEC();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002594(&qword_100025360, &qword_10001AE50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v34 - v9;
  v11 = sub_100002594(&qword_100025368, &qword_10001AE58);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v34 - v13;
  v15 = sub_100002594(&qword_1000252E0, &qword_10001ADE8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v34 - v17;
  v19 = [objc_allocWithZone(FLSchemaFLActionEvaluationEnded) init];
  if (!v19)
  {
    sub_100013288();
    swift_allocError();
    *v30 = 0xD00000000000001FLL;
    *(v30 + 8) = 0x800000010001BC50;
    *(v30 + 16) = 0;
    swift_willThrow();
    return v19;
  }

  sub_100019BCC();
  v20 = sub_10000C5A8(v18, 0xD000000000000021, 0x800000010001BC70);
  sub_100002D44(v18, &qword_1000252E0, &qword_10001ADE8);
  if (v1)
  {
LABEL_11:

    return v19;
  }

  [v19 setIfSessionId:v20];

  v21 = sub_100019BEC();
  if ((v21 & 0x100000000) != 0)
  {
    sub_100013288();
    swift_allocError();
    *v31 = 0xD000000000000027;
    *(v31 + 8) = 0x800000010001BCA0;
    *(v31 + 16) = 1;
    swift_willThrow();
    goto LABEL_11;
  }

  [v19 setActionStatementId:v21];
  sub_100019BBC();
  v22 = sub_10000DF44(v14);
  sub_100002D44(v14, &qword_100025368, &qword_10001AE58);
  [v19 setTaskEvaluation:v22];

  v23 = sub_100019BFC();
  v24 = *(v23 + 16);
  if (!v24)
  {

LABEL_14:
    sub_1000133C4(0, &qword_100025378, FLSchemaFLCandidateEvaluation_ptr);
    isa = sub_100019FDC().super.isa;

    [v19 setCandidateEvaluations:isa];

    sub_100019BDC();
    v33 = sub_10000E61C(v10);
    sub_100002D44(v10, &qword_100025360, &qword_10001AE50);
    [v19 setEvaluationType:v33];
    return v19;
  }

  v36 = a1;
  v37 = v19;
  v35 = v10;
  v42 = &_swiftEmptyArrayStorage;
  result = sub_10001A0CC();
  v26 = 0;
  v39 = v23 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v38 = v41 + 16;
  v40 = (v41 + 8);
  while (v26 < *(v23 + 16))
  {
    (*(v41 + 16))(v6, v39 + *(v41 + 72) * v26, v3);
    sub_10000F828();
    ++v26;
    (*v40)(v6, v3);
    sub_10001A0AC();
    v27 = v3;
    v28 = v23;
    v29 = v42[2];
    sub_10001A0DC();
    v23 = v28;
    v3 = v27;
    sub_10001A0EC();
    result = sub_10001A0BC();
    if (v24 == v26)
    {

      v10 = v35;
      v19 = v37;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100010078()
{
  v1 = sub_100019C0C();
  v35 = *(v1 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002594(&qword_100025388, &qword_10001AE68);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v34 - v7;
  v9 = sub_100019C1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  sub_100019C2C();
  v17 = 1;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v16, v8, v9);
    v19 = [objc_allocWithZone(FLSchemaFLActionEvaluationContext) init];
    if (v19)
    {
      v17 = v19;
      (*(v10 + 16))(v14, v16, v9);
      v20 = (*(v10 + 88))(v14, v9);
      if (v20 == enum case for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo.started(_:))
      {
        v21 = *(v10 + 8);
        v21(v14, v9);
        v22 = [objc_allocWithZone(FLSchemaFLActionEvaluationStarted) init];
        if (v22)
        {
          v23 = v22;
          [v22 setExists:1];
          [v17 setStartedOrChanged:v23];
LABEL_7:

          v21(v16, v9);
          return v17;
        }

        v28 = 0x800000010001B8B0;
        sub_100013288();
        swift_allocError();
        v30 = 0xD000000000000021;
        goto LABEL_17;
      }

      if (v20 != enum case for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo.ended(_:))
      {
        if (v20 != enum case for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo.failed(_:))
        {
          sub_100013288();
          swift_allocError();
          *v31 = 0xD00000000000001ALL;
          *(v31 + 8) = 0x800000010001BD20;
          *(v31 + 16) = 2;
          swift_willThrow();

          v17 = *(v10 + 8);
          (v17)(v16, v9);
          (v17)(v14, v9);
          return v17;
        }

        v21 = *(v10 + 8);
        v21(v14, v9);
        v27 = [objc_allocWithZone(FLSchemaFLActionEvaluationFailed) init];
        if (v27)
        {
          v23 = v27;
          [v27 setExists:1];
          [v17 setFailed:v23];
          goto LABEL_7;
        }

        v28 = 0x800000010001B8E0;
        sub_100013288();
        swift_allocError();
        v30 = 0xD000000000000020;
LABEL_17:
        *v29 = v30;
        *(v29 + 8) = v28;
        *(v29 + 16) = 0;
        swift_willThrow();

        v21(v16, v9);
        return v17;
      }

      (*(v10 + 96))(v14, v9);
      v25 = v35;
      (*(v35 + 32))(v4, v14, v1);
      v26 = sub_10000FB34(v4);
      if (!v0)
      {
        v33 = v26;
        [v17 setEnded:v26];

        (*(v25 + 8))(v4, v1);
        (*(v10 + 8))(v16, v9);
        return v17;
      }

      (*(v25 + 8))(v4, v1);
    }

    else
    {
      v17 = 0x800000010001BD40;
      sub_100013288();
      swift_allocError();
      *v24 = 0xD000000000000021;
      *(v24 + 8) = 0x800000010001BD40;
      *(v24 + 16) = 0;
      swift_willThrow();
    }

    (*(v10 + 8))(v16, v9);
    return v17;
  }

  sub_100002D44(v8, &qword_100025388, &qword_10001AE68);
  sub_100013288();
  swift_allocError();
  *v18 = 0xD00000000000001ALL;
  *(v18 + 8) = 0x800000010001BD20;
  *(v18 + 16) = 1;
  swift_willThrow();
  return v17;
}

uint64_t sub_100010688(uint64_t a1)
{
  v2 = sub_100002594(&qword_1000252F8, &qword_10001ADF8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_100019D2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_10000605C(a1, v5, &qword_1000252F8, &qword_10001ADF8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002D44(v5, &qword_1000252F8, &qword_10001ADF8);
  }

  else
  {
    v14 = *(v7 + 32);
    v14(v13, v5, v6);
    v14(v11, v13, v6);
    v15 = (*(v7 + 88))(v11, v6);
    if (v15 != enum case for IntelligenceFlowFeedbackLearning.Trigger.unknown(_:))
    {
      if (v15 == enum case for IntelligenceFlowFeedbackLearning.Trigger.triggerUnknown(_:))
      {
        return 1;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.Trigger.realtimeSession(_:))
      {
        return 2;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.Trigger.endOfSession(_:))
      {
        return 3;
      }

      (*(v7 + 8))(v11, v6);
    }
  }

  return 0;
}

uint64_t sub_1000108E4(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025238, &qword_10001ACB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_100019B6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_10000605C(a1, v5, &qword_100025238, &qword_10001ACB0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002D44(v5, &qword_100025238, &qword_10001ACB0);
  }

  else
  {
    v14 = *(v7 + 32);
    v14(v13, v5, v6);
    v14(v11, v13, v6);
    v15 = (*(v7 + 88))(v11, v6);
    if (v15 != enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.unknown(_:))
    {
      if (v15 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.categoryUnknown(_:))
      {
        return 1;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.explicitlyRejected(_:))
      {
        return 2;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.implicitlyRejected(_:))
      {
        return 3;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.executed(_:))
      {
        return 4;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.implicitlyAccepted(_:))
      {
        return 5;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.explicitlyAccepted(_:))
      {
        return 6;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.transientDeviceConfigurationFailure(_:))
      {
        return 7;
      }

      if (v15 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.notSelected(_:))
      {
        return 8;
      }

      (*(v7 + 8))(v11, v6);
    }
  }

  return 0;
}

uint64_t sub_100010BCC(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024EE0, "r\x1B");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v101 = &v82 - v4;
  v100 = sub_10001981C();
  v86 = *(v100 - 8);
  v5 = *(v86 + 64);
  __chkstk_darwin(v100);
  v99 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002594(&qword_1000252E0, &qword_10001ADE8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v106 = &v82 - v12;
  v13 = sub_100002594(&qword_100025240, &qword_10001ACB8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v102 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v108 = &v82 - v17;
  v18 = sub_100002594(&qword_100025238, &qword_10001ACB0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v85 = &v82 - v20;
  v109 = sub_100019B0C();
  v104 = *(v109 - 8);
  v21 = v104[8];
  v22 = __chkstk_darwin(v109);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v107 = &v82 - v25;
  v26 = sub_100002594(&qword_1000252E8, &qword_10001ADF0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v82 - v28;
  v30 = sub_100019A4C();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v36 = v35;
  v38 = v37;
  sub_10000605C(v34, v29, &qword_1000252E8, &qword_10001ADF0);
  if ((*(v36 + 48))(v29, 1, v38) == 1)
  {
    sub_100002D44(v29, &qword_1000252E8, &qword_10001ADF0);
    return 0;
  }

  else
  {
    (*(v36 + 32))(v33, v29, v38);
    v84 = [objc_allocWithZone(FLSchemaFLTupleInteraction) init];
    if (v84)
    {
      v83 = v36;
      v82 = v38;
      result = sub_100019A2C();
      v40 = &_swiftEmptyArrayStorage;
      v110 = &_swiftEmptyArrayStorage;
      v92 = *(result + 16);
      if (v92)
      {
        v41 = 0;
        v95 = v104 + 7;
        v96 = v104 + 2;
        v94 = v104 + 6;
        v91 = (v104 + 4);
        v90 = (v86 + 48);
        v89 = (v86 + 32);
        v88 = (v86 + 8);
        v97 = result;
        v98 = (v104 + 1);
        v105 = v33;
        v87 = v11;
        while (v41 < *(result + 16))
        {
          v93 = v40;
          v42 = v104;
          v43 = result + ((*(v42 + 80) + 32) & ~*(v42 + 80));
          v44 = v104[9];
          v103 = v41;
          v45 = v43 + v44 * v41;
          v46 = v104[2];
          v47 = v107;
          v48 = v109;
          v46(v107, v45, v109);
          v49 = v108;
          v46(v108, v47, v48);
          (v42[7])(v49, 0, 1, v48);
          v50 = v102;
          sub_10000605C(v49, v102, &qword_100025240, &qword_10001ACB8);
          if ((v42[6])(v50, 1, v48) == 1)
          {

            sub_100002D44(v50, &qword_100025240, &qword_10001ACB8);
            sub_100013288();
            swift_allocError();
            *v76 = 0xD000000000000013;
            *(v76 + 8) = 0x800000010001B9E0;
            *(v76 + 16) = 1;
            swift_willThrow();

            sub_100002D44(v108, &qword_100025240, &qword_10001ACB8);
            (*v98)(v107, v109);
            v77 = v83;
            v53 = v105;
            goto LABEL_23;
          }

          v51 = v24;
          (*v91)(v24, v50, v109);
          v52 = [objc_allocWithZone(FLSchemaFLCandidateIdentifier) init];
          v53 = v105;
          if (!v52)
          {

            sub_100013288();
            swift_allocError();
            *v78 = 0xD00000000000001DLL;
            *(v78 + 8) = 0x800000010001BA00;
            *(v78 + 16) = 0;
            swift_willThrow();

            goto LABEL_22;
          }

          v54 = v52;
          v55 = v106;
          sub_100019AFC();
          sub_10000605C(v55, v11, &qword_1000252E0, &qword_10001ADE8);
          v56 = sub_100019EFC();
          v57 = *(v56 - 8);
          if ((*(v57 + 48))(v11, 1, v56) == 1)
          {

            sub_100002D44(v11, &qword_1000252E0, &qword_10001ADE8);
            v63 = v101;
            (*(v86 + 56))(v101, 1, 1, v100);
            goto LABEL_21;
          }

          v58 = v11;
          v59 = v109;
          v60 = v106;
          v61 = v101;
          sub_100019EEC();
          v62 = v58;
          v63 = v61;
          (*(v57 + 8))(v62, v56);
          v64 = v100;
          if ((*v90)(v61, 1, v100) == 1)
          {

LABEL_21:
            v53 = v105;
            sub_100002D44(v63, &qword_100024EE0, "r\x1B");
            sub_100013288();
            swift_allocError();
            *v79 = 0xD00000000000001FLL;
            *(v79 + 8) = 0x800000010001BA20;
            *(v79 + 16) = 1;
            swift_willThrow();

            sub_100002D44(v106, &qword_1000252E0, &qword_10001ADE8);
LABEL_22:
            v80 = *v98;
            v81 = v109;
            (*v98)(v51, v109);
            sub_100002D44(v108, &qword_100025240, &qword_10001ACB8);
            v80(v107, v81);
            v77 = v83;
LABEL_23:
            (*(v77 + 8))(v53, v82);
          }

          v65 = v99;
          (*v89)(v99, v63, v64);
          v66 = objc_allocWithZone(SISchemaUUID);
          isa = sub_1000197FC().super.isa;
          v68 = [v66 initWithNSUUID:isa];

          (*v88)(v65, v64);
          sub_100002D44(v60, &qword_1000252E0, &qword_10001ADE8);
          [v54 setCandidateId:v68];

          v69 = *v98;
          (*v98)(v51, v59);
          sub_100002D44(v108, &qword_100025240, &qword_10001ACB8);
          v69(v107, v59);
          sub_100019FCC();
          v33 = v105;
          if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v70 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_100019FEC();
          }

          v41 = v103 + 1;
          sub_100019FFC();
          v40 = v110;
          v24 = v51;
          v11 = v87;
          result = v97;
          if (v92 == v41)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_16:

        sub_1000133C4(0, &qword_1000252F0, FLSchemaFLCandidateIdentifier_ptr);
        v72 = sub_100019FDC().super.isa;

        v73 = v84;
        [v84 setIdentifiers:v72];

        v74 = v85;
        sub_100019A3C();
        v75 = sub_1000108E4(v74);
        sub_100002D44(v74, &qword_100025238, &qword_10001ACB0);
        [v73 setAlignment:v75];
        (*(v83 + 8))(v33, v82);
        return v73;
      }
    }

    else
    {
      sub_100013288();
      swift_allocError();
      *v71 = 0xD00000000000001ALL;
      *(v71 + 8) = 0x800000010001B9C0;
      *(v71 + 16) = 0;
      swift_willThrow();
      return (*(v36 + 8))(v33, v38);
    }
  }

  return result;
}

uint64_t sub_10001180C(unint64_t a1)
{
  v97 = a1;
  v1 = sub_100002594(&qword_100025238, &qword_10001ACB0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v89 = &v82 - v3;
  v4 = sub_100002594(&qword_100025240, &qword_10001ACB8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v90 = &v82 - v6;
  v7 = sub_100019B4C();
  v91 = *(v7 - 8);
  v8 = *(v91 + 64);
  __chkstk_darwin(v7);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002594(&qword_1000252E8, &qword_10001ADF0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v87 = &v82 - v13;
  v14 = sub_100002594(&qword_1000252F8, &qword_10001ADF8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v88 = &v82 - v16;
  v17 = sub_100002594(&qword_1000252E0, &qword_10001ADE8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v93 = &v82 - v19;
  v20 = sub_1000197DC();
  v98 = *(v20 - 8);
  v21 = *(v98 + 64);
  v22 = __chkstk_darwin(v20);
  v92 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v82 - v24;
  v26 = sub_100002594(&qword_100025230, &qword_10001ACA8);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v96 = &v82 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v82 - v34;
  __chkstk_darwin(v33);
  v37 = &v82 - v36;
  v38 = [objc_allocWithZone(FLSchemaFLInteractionDonationEnded) init];
  v39 = v38;
  if (!v38)
  {
    sub_100013288();
    swift_allocError();
    *v42 = 0xD000000000000022;
    *(v42 + 8) = 0x800000010001BA40;
    *(v42 + 16) = 0;
    swift_willThrow();
    return v39;
  }

  v85 = v7;
  v86 = v10;
  v95 = v38;
  sub_100019C6C();
  sub_10000605C(v37, v35, &qword_100025230, &qword_10001ACA8);
  v40 = *(v98 + 48);
  if (v40(v35, 1, v20) == 1)
  {
    sub_100002D44(v35, &qword_100025230, &qword_10001ACA8);
    sub_100013288();
    swift_allocError();
    *v41 = 0xD000000000000025;
    *(v41 + 8) = 0x800000010001BA70;
    *(v41 + 16) = 1;
    swift_willThrow();
    v39 = v95;

    sub_100002D44(v37, &qword_100025230, &qword_10001ACA8);
    return v39;
  }

  v43 = v98;
  v83 = *(v98 + 32);
  v84 = v98 + 32;
  v83(v25, v35, v20);
  sub_10001979C();
  v45 = v44;
  v46 = *(v43 + 8);
  v98 = v43 + 8;
  v82 = v46;
  v46(v25, v20);
  sub_100002D44(v37, &qword_100025230, &qword_10001ACA8);
  v47 = v95;
  [v95 setAbsoluteTime:v45];
  v48 = v96;
  sub_100019C7C();
  sub_10000605C(v48, v30, &qword_100025230, &qword_10001ACA8);
  if (v40(v30, 1, v20) == 1)
  {
    sub_100002D44(v30, &qword_100025230, &qword_10001ACA8);
    sub_100013288();
    swift_allocError();
    *v49 = 0xD000000000000025;
    *(v49 + 8) = 0x800000010001BAA0;
    *(v49 + 16) = 1;
    swift_willThrow();

    sub_100002D44(v48, &qword_100025230, &qword_10001ACA8);
    return v47;
  }

  v50 = v92;
  v83(v92, v30, v20);
  sub_10001979C();
  v52 = v51;
  v82(v50, v20);
  sub_100002D44(v48, &qword_100025230, &qword_10001ACA8);
  [v47 setDonationTime:v52];
  v53 = v93;
  sub_100019C5C();
  v54 = v94;
  v55 = sub_10000C5A8(v53, 0xD000000000000024, 0x800000010001BAD0);
  v39 = v47;
  if (v54)
  {
    sub_100002D44(v53, &qword_1000252E0, &qword_10001ADE8);
LABEL_14:

    return v39;
  }

  v56 = v55;
  sub_100002D44(v53, &qword_1000252E0, &qword_10001ADE8);
  [v47 setIfSessionId:v56];

  v57 = sub_100019CAC();
  if ((v57 & 0x100000000) != 0)
  {
    v61 = 0x800000010001BB00;
    sub_100013288();
    swift_allocError();
    v63 = 0xD00000000000002ALL;
    goto LABEL_13;
  }

  [v47 setActionStatementId:v57];
  v58 = v88;
  sub_100019C8C();
  v59 = sub_100010688(v58);
  sub_100002D44(v58, &qword_1000252F8, &qword_10001ADF8);
  [v47 setDonationTrigger:v59];
  v60 = sub_100019C9C();
  if (v60 == 2)
  {
    v61 = 0x800000010001BB30;
    sub_100013288();
    swift_allocError();
    v63 = 0xD000000000000028;
LABEL_13:
    *v62 = v63;
    *(v62 + 8) = v61;
    *(v62 + 16) = 1;
    swift_willThrow();
    goto LABEL_14;
  }

  [v47 setWasTupleDonated:v60 & 1];
  v65 = v87;
  sub_100019CBC();
  v66 = sub_100010BCC(v65);
  sub_100002D44(v65, &qword_1000252E8, &qword_10001ADF0);
  [v47 setTuple:v66];

  v67 = sub_100019C4C();
  v68 = *(v67 + 16);
  if (!v68)
  {
LABEL_21:

    sub_1000133C4(0, &qword_100025300, FLSchemaFLCandidateInteraction_ptr);
    isa = sub_100019FDC().super.isa;

    v39 = v95;
    [v95 setCandidates:isa];

    return v39;
  }

  v99 = &_swiftEmptyArrayStorage;
  result = sub_10001A0CC();
  v69 = 0;
  v97 = v67 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
  v96 = (v91 + 16);
  v98 = v91 + 8;
  v70 = v86;
  while (v69 < *(v67 + 16))
  {
    v71 = v67;
    v72 = v85;
    (*(v91 + 16))(v70, v97 + *(v91 + 72) * v69, v85);
    v73 = [objc_allocWithZone(FLSchemaFLCandidateInteraction) init];
    v74 = v90;
    if (!v73)
    {

      sub_100013288();
      swift_allocError();
      *v81 = 0xD00000000000001ELL;
      *(v81 + 8) = 0x800000010001B960;
      *(v81 + 16) = 0;
      swift_willThrow();
      v39 = v95;

      (*v98)(v86, v72);

      return v39;
    }

    v75 = v73;
    sub_100019B2C();
    v76 = sub_10000EF24(v74);
    ++v69;
    sub_100002D44(v74, &qword_100025240, &qword_10001ACB8);
    [v75 setIdentifier:v76];

    v77 = v89;
    sub_100019B3C();
    v78 = sub_1000108E4(v77);
    sub_100002D44(v77, &qword_100025238, &qword_10001ACB0);
    [v75 setAlignment:v78];
    (*v98)(v70, v72);
    sub_10001A0AC();
    v79 = v99[2];
    sub_10001A0DC();
    sub_10001A0EC();
    result = sub_10001A0BC();
    v67 = v71;
    if (v68 == v69)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000123A4()
{
  v1 = sub_100019CCC();
  v32 = *(v1 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002594(&qword_100025380, &qword_10001AE60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v31 - v7;
  v9 = sub_100019CDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  sub_100019CEC();
  v17 = 1;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100002D44(v8, &qword_100025380, &qword_10001AE60);
    sub_100013288();
    swift_allocError();
    *v18 = 0xD00000000000001DLL;
    *(v18 + 8) = 0x800000010001BCD0;
    *(v18 + 16) = 1;
    swift_willThrow();
    return v17;
  }

  (*(v10 + 32))(v16, v8, v9);
  v19 = [objc_allocWithZone(FLSchemaFLInteractionDonationContext) init];
  if (!v19)
  {
    v17 = 0x800000010001BCF0;
    sub_100013288();
    swift_allocError();
    *v24 = 0xD000000000000024;
    *(v24 + 8) = 0x800000010001BCF0;
    *(v24 + 16) = 0;
    swift_willThrow();
LABEL_12:
    (*(v10 + 8))(v16, v9);
    return v17;
  }

  v17 = v19;
  (*(v10 + 16))(v14, v16, v9);
  v20 = (*(v10 + 88))(v14, v9);
  if (v20 != enum case for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo.started(_:))
  {
    if (v20 != enum case for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo.ended(_:))
    {
      sub_100013288();
      swift_allocError();
      *v27 = 0xD00000000000001DLL;
      *(v27 + 8) = 0x800000010001BCD0;
      *(v27 + 16) = 2;
      swift_willThrow();

      v17 = *(v10 + 8);
      (v17)(v16, v9);
      (v17)(v14, v9);
      return v17;
    }

    (*(v10 + 96))(v14, v9);
    v25 = v32;
    (*(v32 + 32))(v4, v14, v1);
    v26 = sub_10001180C(v4);
    if (!v0)
    {
      v30 = v26;
      [v17 setEnded:v26];

      (*(v25 + 8))(v4, v1);
      (*(v10 + 8))(v16, v9);
      return v17;
    }

    (*(v25 + 8))(v4, v1);
    goto LABEL_12;
  }

  v21 = *(v10 + 8);
  v21(v14, v9);
  v22 = [objc_allocWithZone(FLSchemaFLInteractionDonationStarted) init];
  if (v22)
  {
    v23 = v22;
    [v22 setExists:1];
    [v17 setStartedOrChanged:v23];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v28 = 0xD000000000000024;
    *(v28 + 8) = 0x800000010001B930;
    *(v28 + 16) = 0;
    swift_willThrow();
  }

  v21(v16, v9);
  return v17;
}

id sub_100012910()
{
  v1 = sub_100019CFC();
  v74 = *(v1 - 8);
  v75 = v1;
  v2 = *(v74 + 64);
  __chkstk_darwin(v1);
  v72 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100019C3C();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  __chkstk_darwin(v4);
  v73 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002594(&qword_100025398, &qword_10001AE78);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v71 - v9;
  v11 = sub_100019B9C();
  v79 = *(v11 - 8);
  v80 = v11;
  v12 = *(v79 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v78 = &v71 - v16;
  v17 = sub_100002594(&qword_1000253A0, &qword_10001AE80);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v71 - v19;
  v21 = sub_100019D0C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_allocWithZone(FLSchemaFLClientEvent) init];
  v27 = v26;
  if (!v26)
  {
    sub_100013288();
    swift_allocError();
    *v30 = 0xD000000000000015;
    *(v30 + 8) = 0x800000010001BD90;
    *(v30 + 16) = 0;
    swift_willThrow();
    return v27;
  }

  v81 = v26;
  v28 = v21;
  v29 = sub_10000C110();
  if (!v0)
  {
    v31 = v29;
    v71 = 0;
    v32 = v81;
    [v81 setEventMetadata:v29];

    sub_100019D1C();
    v33 = v22;
    if ((*(v22 + 48))(v20, 1, v28) == 1)
    {
      sub_100002D44(v20, &qword_1000253A0, &qword_10001AE80);
      sub_100013288();
      swift_allocError();
      *v34 = 0xD000000000000017;
      *(v34 + 8) = 0x800000010001BDB0;
      *(v34 + 16) = 1;
      swift_willThrow();

      return v32;
    }

    v35 = v20;
    v36 = v25;
    (*(v22 + 32))(v25, v35, v28);
    sub_100019BAC();
    v37 = v79;
    v38 = v80;
    if ((*(v79 + 48))(v10, 1, v80) == 1)
    {
      sub_100002D44(v10, &qword_100025398, &qword_10001AE78);
      sub_100013288();
      swift_allocError();
      *v39 = 0xD00000000000001DLL;
      *(v39 + 8) = 0x800000010001BDD0;
      *(v39 + 16) = 1;
      swift_willThrow();
      v40 = v81;

      v41 = v28;
      v27 = v40;
      (*(v33 + 8))(v36, v41);
      return v27;
    }

    v42 = v78;
    (*(v37 + 32))(v78, v10, v38);
    (*(v37 + 16))(v15, v42, v38);
    v43 = (*(v37 + 88))(v15, v38);
    if (v43 == enum case for IntelligenceFlowFeedbackLearning.Event.EventValue.actionEvaluation(_:))
    {
      (*(v37 + 96))(v15, v38);
      v44 = v73;
      (*(v76 + 32))(v73, v15, v77);
      if (qword_100025BA0 != -1)
      {
        swift_once();
      }

      v45 = sub_100019F2C();
      sub_100003FD8(v45, qword_100025DA8);
      v46 = sub_100019F0C();
      v47 = sub_10001A01C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Making Feedback Learning action Evaluation", v48, 2u);
      }

      v49 = v71;
      v50 = sub_100010078();
      if (v49)
      {
        v51 = v44;
        v52 = v81;

        v54 = v76;
        v53 = v77;
LABEL_23:
        (*(v54 + 8))(v51, v53);
        (*(v37 + 8))(v78, v38);
        v61 = v28;
        v27 = v52;
        (*(v33 + 8))(v36, v61);
        return v27;
      }

      v66 = v50;
      [v81 setEvaluationContext:v50];

      v68 = v76;
      v67 = v77;
    }

    else
    {
      if (v43 != enum case for IntelligenceFlowFeedbackLearning.Event.EventValue.interactionDonation(_:))
      {
        sub_100013288();
        swift_allocError();
        *v62 = xmmword_10001AC90;
        *(v62 + 16) = 2;
        swift_willThrow();
        v63 = v81;

        v64 = *(v37 + 8);
        v64(v78, v38);
        v65 = v28;
        v27 = v63;
        (*(v33 + 8))(v36, v65);
        v64(v15, v38);
        return v27;
      }

      (*(v37 + 96))(v15, v38);
      v44 = v72;
      (*(v74 + 32))(v72, v15, v75);
      if (qword_100025BA0 != -1)
      {
        swift_once();
      }

      v55 = sub_100019F2C();
      sub_100003FD8(v55, qword_100025DA8);
      v56 = sub_100019F0C();
      v57 = sub_10001A01C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Making Feedback Learning interaction donation", v58, 2u);
      }

      v59 = v71;
      v60 = sub_1000123A4();
      if (v59)
      {
        v51 = v44;
        v52 = v81;

        v54 = v74;
        v53 = v75;
        goto LABEL_23;
      }

      v69 = v60;
      [v81 setDonationContext:v60];

      v68 = v74;
      v67 = v75;
    }

    (*(v68 + 8))(v44, v67);
    (*(v37 + 8))(v78, v38);
    (*(v33 + 8))(v36, v28);
    return v81;
  }

  v27 = v81;

  return v27;
}

uint64_t sub_100013270(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_100013288()
{
  result = qword_100025228;
  if (!qword_100025228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025228);
  }

  return result;
}

__n128 sub_10001330C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100013320(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100013368(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000133C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for FLSchemaFLEvaluationSource()
{
  if (!qword_1000253A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000253A8);
    }
  }
}

uint64_t sub_10001345C()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025DC0);
  sub_100003FD8(v0, qword_100025DC0);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_1000134F0()
{
  if (qword_100025C30 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025DC0);
}

uint64_t sub_100013554@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025C30 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025DC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_1000135FC(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024ED0, "r\x1B");
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v46 - v7;
  v9 = sub_100002594(&qword_100024ED8, "Z\x1B");
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  v16 = sub_10001981C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v24 = [objc_allocWithZone(IFPlatformSchemaIFPlatformClientEventMetadata) init];
  if (v24)
  {
    v48 = v17;
    v49 = v16;
    v51 = v24;
    sub_100006940(a1, v8);
    v25 = sub_1000198CC();
    v26 = *(v25 - 8);
    v50 = *(v26 + 48);
    if (v50(v8, 1, v25) == 1)
    {
      sub_100002D44(v8, &qword_100024ED0, "r\x1B");
    }

    else
    {
      v46 = a1;
      v47 = v13;
      sub_1000198BC();
      (*(v26 + 8))(v8, v25);
      v30 = sub_10001994C();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v15, 1, v30) == 1)
      {
        sub_100002D44(v15, &qword_100024ED8, "Z\x1B");
      }

      else
      {
        sub_10001993C();
        (*(v31 + 8))(v15, v30);
        v33 = v48;
        v32 = v49;
        (*(v48 + 32))(v23, v21, v49);
        v34 = objc_allocWithZone(SISchemaUUID);
        isa = sub_1000197FC().super.isa;
        v36 = [v34 initWithNSUUID:isa];

        [v51 setIfSessionId:v36];
        (*(v33 + 8))(v23, v32);
      }

      a1 = v46;
      v13 = v47;
    }

    sub_100006940(a1, v6);
    if (v50(v6, 1, v25) == 1)
    {
      v37 = &qword_100024ED0;
      v38 = "r\x1B";
      v39 = v6;
LABEL_15:
      sub_100002D44(v39, v37, v38);
      return v51;
    }

    sub_1000198BC();
    (*(v26 + 8))(v6, v25);
    v40 = sub_10001994C();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v13, 1, v40) == 1)
    {
      v37 = &qword_100024ED8;
      v38 = "Z\x1B";
      v39 = v13;
      goto LABEL_15;
    }

    v42 = sub_10001992C();
    v44 = v43;
    (*(v41 + 8))(v13, v40);
    result = v51;
    if ((v44 & 1) == 0)
    {
      v45 = v51;
      [v51 setPostingSpanId:v42];
      return v45;
    }
  }

  else
  {
    if (qword_100025C30 != -1)
    {
      swift_once();
    }

    v27 = sub_100019F2C();
    sub_100003FD8(v27, qword_100025DC0);
    sub_1000017F4(0xD000000000000039, 0x800000010001BDF0, v28);
    return 0;
  }

  return result;
}

uint64_t sub_100013B7C()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025DD8);
  sub_100003FD8(v0, qword_100025DD8);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100013C10()
{
  if (qword_100025C38 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025DD8);
}

uint64_t sub_100013C74@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025C38 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025DD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100013D1C()
{
  v0 = sub_100002594(&qword_100024D88, qword_10001A910);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = [objc_allocWithZone(IFPlatformSchemaIFPlatformTargetEnded) init];
  if (!v7)
  {
    if (qword_100025C38 != -1)
    {
      swift_once();
    }

    v14 = sub_100019F2C();
    sub_100003FD8(v14, qword_100025DD8);
    sub_1000017F4(0xD00000000000003ELL, 0x800000010001BE80, v15);
    return 0;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(IFTSchemaIFTIntelligenceFlowError) init];
  if (!v9)
  {
    if (qword_100025C38 != -1)
    {
      swift_once();
    }

    v16 = sub_100019F2C();
    sub_100003FD8(v16, qword_100025DD8);
    sub_1000017F4(0xD000000000000038, 0x800000010001B300, v17);

    return 0;
  }

  v10 = v9;
  sub_100019DCC();
  v11 = sub_100019DAC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v6, 1, v11) == 1)
  {
    sub_1000043E8(v6);
  }

  else
  {
    v18 = sub_100019D8C();
    (*(v12 + 8))(v6, v11);
    if ((v18 & 0x100000000) == 0)
    {
      [v10 setCode:v18];
    }
  }

  sub_100019DCC();
  if (v13(v4, 1, v11) == 1)
  {
    sub_1000043E8(v4);
  }

  else
  {
    sub_100019D9C();
    v20 = v19;
    (*(v12 + 8))(v4, v11);
    if (v20)
    {
      v21 = sub_100019F7C();

      [v10 setDomain:v21];
    }
  }

  [v8 setHandledError:v10];

  return v8;
}

uint64_t sub_100014070()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025DF0);
  sub_100003FD8(v0, qword_100025DF0);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100014104()
{
  if (qword_100025C40 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025DF0);
}

uint64_t sub_100014168@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025C40 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025DF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_100014210(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024ED0, "r\x1B");
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v48 - v7;
  v9 = sub_100002594(&qword_100024ED8, "Z\x1B");
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v16 = sub_100002594(&qword_100024EE0, "r\x1B");
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v48 - v18;
  v20 = sub_10001981C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [objc_allocWithZone(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata) init];
  if (v25)
  {
    v50 = v24;
    v53 = v20;
    v55 = v25;
    sub_100006940(a1, v8);
    v26 = sub_1000198CC();
    v27 = *(v26 - 8);
    v52 = *(v27 + 48);
    v28 = v52(v8, 1, v26);
    v54 = v27;
    if (v28 == 1)
    {
      sub_100002D44(v8, &qword_100024ED0, "r\x1B");
    }

    else
    {
      v51 = a1;
      v49 = v13;
      sub_1000198BC();
      (*(v27 + 8))(v8, v26);
      v32 = sub_10001994C();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v15, 1, v32) != 1)
      {
        sub_10001990C();
        (*(v33 + 8))(v15, v32);
        v38 = v53;
        v39 = (*(v21 + 48))(v19, 1, v53);
        v13 = v49;
        a1 = v51;
        if (v39 != 1)
        {
          v40 = v50;
          (*(v21 + 32))(v50, v19, v38);
          v41 = objc_allocWithZone(SISchemaUUID);
          isa = sub_1000197FC().super.isa;
          v43 = [v41 initWithNSUUID:isa];

          [v55 setIfRequestId:v43];
          a1 = v51;
          (*(v21 + 8))(v40, v38);
LABEL_11:
          v34 = v54;
          sub_100006940(a1, v6);
          if (v52(v6, 1, v26) == 1)
          {
            sub_100002D44(v6, &qword_100024ED0, "r\x1B");
            return v55;
          }

          else
          {
            sub_1000198BC();
            (*(v34 + 8))(v6, v26);
            v35 = sub_10001994C();
            v36 = *(v35 - 8);
            v37 = (*(v36 + 48))(v13, 1, v35);
            v31 = v55;
            if (v37 == 1)
            {
              sub_100002D44(v13, &qword_100024ED8, "Z\x1B");
            }

            else
            {
              v44 = sub_10001992C();
              v46 = v45;
              (*(v36 + 8))(v13, v35);
              if ((v46 & 1) == 0)
              {
                [v31 setPostingSpanId:v44];
              }
            }
          }

          return v31;
        }

LABEL_10:
        sub_100002D44(v19, &qword_100024EE0, "r\x1B");
        goto LABEL_11;
      }

      sub_100002D44(v15, &qword_100024ED8, "Z\x1B");
      v13 = v49;
      a1 = v51;
    }

    (*(v21 + 56))(v19, 1, 1, v53);
    goto LABEL_10;
  }

  if (qword_100025C40 != -1)
  {
    swift_once();
  }

  v29 = sub_100019F2C();
  sub_100003FD8(v29, qword_100025DF0);
  sub_1000017F4(0xD000000000000041, 0x800000010001BF00, v30);
  return 0;
}

uint64_t sub_100014840()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025E08);
  sub_100003FD8(v0, qword_100025E08);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_1000148D8()
{
  if (qword_100025C48 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025E08);
}

uint64_t sub_10001493C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025C48 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025E08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_1000149E4()
{
  v0 = sub_100002594(&qword_100024D88, qword_10001A910);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = [objc_allocWithZone(IFPlatformSchemaIFPlatformTargetFailed) init];
  if (!v7)
  {
    if (qword_100025C48 != -1)
    {
      swift_once();
    }

    v14 = sub_100019F2C();
    sub_100003FD8(v14, qword_100025E08);
    sub_1000017F4(0xD00000000000003FLL, 0x800000010001BFA0, v15);
    return 0;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(IFTSchemaIFTIntelligenceFlowError) init];
  if (!v9)
  {
    if (qword_100025C48 != -1)
    {
      swift_once();
    }

    v16 = sub_100019F2C();
    sub_100003FD8(v16, qword_100025E08);
    sub_1000017F4(0xD000000000000038, 0x800000010001B300, v17);

    return 0;
  }

  v10 = v9;
  sub_100019DEC();
  v11 = sub_100019DAC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v6, 1, v11) == 1)
  {
    sub_1000043E8(v6);
  }

  else
  {
    v18 = sub_100019D8C();
    (*(v12 + 8))(v6, v11);
    if ((v18 & 0x100000000) == 0)
    {
      [v10 setCode:v18];
    }
  }

  sub_100019DEC();
  if (v13(v4, 1, v11) == 1)
  {
    sub_1000043E8(v4);
  }

  else
  {
    sub_100019D9C();
    v20 = v19;
    (*(v12 + 8))(v4, v11);
    if (v20)
    {
      v21 = sub_100019F7C();

      [v10 setDomain:v21];
    }
  }

  [v8 setCriticalError:v10];

  return v8;
}

uint64_t sub_100014D38()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025E20);
  sub_100003FD8(v0, qword_100025E20);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100014DCC()
{
  if (qword_100025C50 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025E20);
}

uint64_t sub_100014E30@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025C50 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025E20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100014ED8(uint64_t a1)
{
  v2 = sub_100019E5C();
  v125 = *(v2 - 8);
  v126 = v2;
  v3 = *(v125 + 64);
  __chkstk_darwin(v2);
  v124 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002594(&qword_100025610, &qword_10001AFE0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v113 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v114 = &v108 - v9;
  v10 = sub_100002594(&qword_100025618, &unk_10001AFE8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v123 = &v108 - v12;
  v13 = sub_100019E8C();
  v116 = *(v13 - 8);
  v117 = v13;
  v14 = *(v116 + 64);
  __chkstk_darwin(v13);
  v115 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002594(&qword_100024EC8, qword_10001AC30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v121 = &v108 - v18;
  v120 = sub_100019EBC();
  v118 = *(v120 - 8);
  v19 = *(v118 + 64);
  __chkstk_darwin(v120);
  v119 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100002594(&qword_100024ED0, "r\x1B");
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v108 - v26;
  v28 = sub_100002594(&qword_100024ED8, "Z\x1B");
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v108 - v33;
  v35 = sub_100002594(&qword_100024EE0, "r\x1B");
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = &v108 - v37;
  v122 = sub_10001981C();
  v127 = *(v122 - 8);
  v39 = *(v127 + 64);
  v40 = __chkstk_darwin(v122);
  v112 = &v108 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v108 - v42;
  v44 = sub_100002594(&qword_100024E28, qword_10001A970);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  v47 = &v108 - v46;
  v128 = a1;
  sub_1000198AC();
  LOBYTE(a1) = sub_100015FD0(v47);
  sub_100002D44(v47, &qword_100024E28, qword_10001A970);
  result = 0;
  if (a1)
  {
    v49 = [objc_allocWithZone(PGSchemaPGClientEventMetadata) init];
    if (!v49)
    {
      if (qword_100025C50 != -1)
      {
        swift_once();
      }

      v52 = sub_100019F2C();
      sub_100003FD8(v52, qword_100025E20);
      sub_1000017F4(0xD00000000000003FLL, 0x800000010001C020, v53);
      return 0;
    }

    v111 = v49;
    sub_1000198DC();
    v50 = sub_1000198CC();
    v51 = *(v50 - 8);
    v110 = *(v51 + 48);
    if (v110(v27, 1, v50) == 1)
    {
      sub_100002D44(v27, &qword_100024ED0, "r\x1B");
    }

    else
    {
      sub_1000198BC();
      v109 = v51;
      (*(v51 + 8))(v27, v50);
      v54 = sub_10001994C();
      v55 = *(v54 - 8);
      if ((*(v55 + 48))(v34, 1, v54) != 1)
      {
        sub_10001990C();
        (*(v55 + 8))(v34, v54);
        v56 = v122;
        v72 = (*(v127 + 48))(v38, 1, v122);
        v51 = v109;
        if (v72 != 1)
        {
          v73 = v127;
          (*(v127 + 32))(v43, v38, v56);
          v74 = objc_allocWithZone(SISchemaUUID);
          isa = sub_1000197FC().super.isa;
          v76 = [v74 initWithNSUUID:isa];

          [v111 setIfRequestId:v76];
          v77 = v73;
          v51 = v109;
          (*(v77 + 8))(v43, v56);
LABEL_12:
          sub_1000198DC();
          v57 = v110(v25, 1, v50);
          v58 = v121;
          if (v57 == 1)
          {
            sub_100002D44(v25, &qword_100024ED0, "r\x1B");
            v59 = v126;
          }

          else
          {
            sub_1000198BC();
            (*(v51 + 8))(v25, v50);
            v60 = sub_10001994C();
            v61 = *(v60 - 8);
            v62 = (*(v61 + 48))(v32, 1, v60);
            v59 = v126;
            if (v62 != 1)
            {
              v78 = sub_10001992C();
              v80 = v79;
              (*(v61 + 8))(v32, v60);
              v64 = v124;
              v63 = v125;
              if ((v80 & 1) == 0)
              {
                [v111 setPostingSpanId:v78];
              }

LABEL_17:
              sub_1000198FC();
              v65 = sub_1000198EC();
              v66 = *(v65 - 8);
              v67 = (*(v66 + 48))(v58, 1, v65);
              v68 = v123;
              if (v67 == 1)
              {
                sub_100002D44(v58, &qword_100024EC8, qword_10001AC30);
LABEL_27:
                if (qword_100025C50 != -1)
                {
                  swift_once();
                }

                v81 = sub_100019F2C();
                sub_100003FD8(v81, qword_100025E20);
                sub_1000017F4(0xD00000000000003ALL, 0x800000010001C060, v82);

                return 0;
              }

              if ((*(v66 + 88))(v58, v65) != enum case for IntelligenceFlowTelemetry.Objective.planGeneration(_:))
              {
                (*(v66 + 8))(v58, v65);
                goto LABEL_27;
              }

              (*(v66 + 96))(v58, v65);
              v69 = v118;
              (*(v118 + 32))(v119, v58, v120);
              sub_100019EAC();
              v70 = sub_100019E9C();
              v71 = *(v70 - 8);
              if ((*(v71 + 48))(v68, 1, v70) == 1)
              {
                sub_100002D44(v68, &qword_100025618, &unk_10001AFE8);
LABEL_40:
                if (qword_100025C50 != -1)
                {
                  swift_once();
                }

                v92 = sub_100019F2C();
                sub_100003FD8(v92, qword_100025E20);
                sub_1000017F4(0xD000000000000043, 0x800000010001C0A0, v93);

                (*(v69 + 8))(v119, v120);
                return 0;
              }

              if ((*(v71 + 88))(v68, v70) != enum case for PlanGeneration.Event.planCreation(_:))
              {
                (*(v71 + 8))(v68, v70);
                goto LABEL_40;
              }

              (*(v71 + 96))(v68, v70);
              v83 = *v68;
              v84 = swift_projectBox();
              (*(v116 + 16))(v115, v84, v117);

              v85 = v114;
              sub_100019E7C();
              v86 = sub_100019E6C();
              v87 = *(v86 - 8);
              if ((*(v87 + 48))(v85, 1, v86) == 1)
              {
                goto LABEL_34;
              }

              v94 = v113;
              sub_10000605C(v85, v113, &qword_100025610, &qword_10001AFE0);
              v95 = (*(v87 + 88))(v94, v86);
              if (v95 == enum case for PlanGeneration.Event.PlanCreation.StateInfo.started(_:))
              {
                (*(v87 + 96))(v94, v86);
                (*(v63 + 32))(v64, v94, v59);
                v96 = v112;
                sub_10001980C();
                v97 = objc_allocWithZone(SISchemaUUID);
                v98 = sub_1000197FC().super.isa;
                v99 = [v97 initWithNSUUID:v98];

                (*(v127 + 8))(v96, v56);
                v100 = v111;
                v101 = sub_100016290(v111, v99);
                if (v101)
                {
                  v102 = v101;
                  v103 = sub_100019E4C();
                  v105 = sub_1000164C4(v100, v99, v103, v104);

                  if (v105)
                  {
                    sub_100002594(&qword_100025620, qword_10001AFF8);
                    v106 = swift_allocObject();
                    *(v106 + 16) = xmmword_10001AFD0;
                    *(v106 + 32) = v102;
                    *(v106 + 40) = v105;

                    (*(v63 + 8))(v64, v59);
                    (*(v116 + 8))(v115, v117);
                    (*(v118 + 8))(v119, v120);
                    sub_100002D44(v114, &qword_100025610, &qword_10001AFE0);
                    return v106;
                  }
                }

                (*(v63 + 8))(v64, v59);
                (*(v116 + 8))(v115, v117);
                (*(v118 + 8))(v119, v120);
                sub_100002D44(v114, &qword_100025610, &qword_10001AFE0);
                return 0;
              }

              if (v95 == enum case for PlanGeneration.Event.PlanCreation.StateInfo.ended(_:))
              {

                (*(v116 + 8))(v115, v117);
                (*(v118 + 8))(v119, v120);
                (*(v87 + 8))(v113, v86);
              }

              else
              {
                v107 = v113;
                if (v95 != enum case for PlanGeneration.Event.PlanCreation.StateInfo.failed(_:))
                {
                  (*(v87 + 8))(v113, v86);
LABEL_34:
                  if (qword_100025C50 != -1)
                  {
                    swift_once();
                  }

                  v88 = sub_100019F2C();
                  sub_100003FD8(v88, qword_100025E20);
                  v89 = sub_100019F0C();
                  v90 = sub_10001A02C();
                  if (os_log_type_enabled(v89, v90))
                  {
                    v91 = swift_slowAlloc();
                    *v91 = 0;
                    _os_log_impl(&_mh_execute_header, v89, v90, "Unhandled plan generation state", v91, 2u);
                    v85 = v114;
                  }

                  (*(v116 + 8))(v115, v117);
                  (*(v118 + 8))(v119, v120);
                  goto LABEL_51;
                }

                (*(v116 + 8))(v115, v117);
                (*(v118 + 8))(v119, v120);
                (*(v87 + 8))(v107, v86);
              }

LABEL_51:
              sub_100002D44(v85, &qword_100025610, &qword_10001AFE0);
              return 0;
            }

            sub_100002D44(v32, &qword_100024ED8, "Z\x1B");
          }

          v64 = v124;
          v63 = v125;
          goto LABEL_17;
        }

LABEL_11:
        sub_100002D44(v38, &qword_100024EE0, "r\x1B");
        goto LABEL_12;
      }

      sub_100002D44(v34, &qword_100024ED8, "Z\x1B");
      v51 = v109;
    }

    v56 = v122;
    (*(v127 + 56))(v38, 1, 1, v122);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100015FD0(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024E28, qword_10001A970);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_10001988C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  sub_10000605C(a1, v5, &qword_100024E28, qword_10001A970);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002D44(v5, &qword_100024E28, qword_10001A970);
    if (qword_100025C50 != -1)
    {
      swift_once();
    }

    v14 = sub_100019F2C();
    sub_100003FD8(v14, qword_100025E20);
    v15 = sub_100019F0C();
    v16 = sub_10001A01C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "IntelligenceFlow.Telemetry event has no target so SELF PlanGeneration client event", v17, 2u);
    }
  }

  else
  {
    v18 = *(v7 + 32);
    v18(v13, v5, v6);
    v18(v11, v13, v6);
    if ((*(v7 + 88))(v11, v6) == enum case for IntelligenceFlowTarget.fullPlannerPromptGeneratorMakePlan(_:))
    {
      return 1;
    }

    (*(v7 + 8))(v11, v6);
  }

  return 0;
}

void *sub_100016290(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(PGSchemaPGClientEvent) init];
  if (!v4)
  {
    if (qword_100025C50 != -1)
    {
      swift_once();
    }

    v10 = sub_100019F2C();
    sub_100003FD8(v10, qword_100025E20);
    sub_1000017F4(0xD000000000000036, 0x800000010001C130, v11);
    return 0;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(PGSchemaPGRequestContext) init];
  if (!v6)
  {
    if (qword_100025C50 != -1)
    {
      swift_once();
    }

    v12 = sub_100019F2C();
    sub_100003FD8(v12, qword_100025E20);
    sub_1000017F4(0xD000000000000040, 0x800000010001C1B0, v13);

    return 0;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(PGSchemaPGRequestStarted) init];
  if (!v8)
  {
    if (qword_100025C50 != -1)
    {
      swift_once();
    }

    v14 = sub_100019F2C();
    sub_100003FD8(v14, qword_100025E20);
    sub_1000017F4(0xD000000000000048, 0x800000010001C200, v15);

    return 0;
  }

  v9 = v8;
  [v8 setLinkId:a2];
  [v7 setStartedOrChanged:v9];
  [v5 setEventMetadata:a1];
  [v5 setPgRequestContext:v7];

  return v5;
}

void *sub_1000164C4(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4)
{
  v7 = [objc_allocWithZone(PGSchemaPGClientEvent) init];
  if (!v7)
  {
    if (qword_100025C50 != -1)
    {
      swift_once();
    }

    v11 = sub_100019F2C();
    sub_100003FD8(v11, qword_100025E20);
    sub_1000017F4(0xD000000000000036, 0x800000010001C130, v12);
    return 0;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(PGSchemaPGPromptTier1) init];
  if (!v9)
  {
    if (qword_100025C50 != -1)
    {
      swift_once();
    }

    v13 = sub_100019F2C();
    sub_100003FD8(v13, qword_100025E20);
    sub_1000017F4(0xD00000000000003CLL, 0x800000010001C170, v14);

    return 0;
  }

  v10 = v9;
  [v9 setLinkId:a2];
  if (a4)
  {
    a4 = sub_100019F7C();
  }

  [v10 setPrompt:a4];

  [v8 setEventMetadata:a1];
  [v8 setPgPromptTier1:v10];

  return v8;
}

uint64_t sub_1000166A8()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025E38);
  sub_100003FD8(v0, qword_100025E38);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_10001673C()
{
  if (qword_100025C58 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025E38);
}

uint64_t sub_1000167A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025C58 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025E38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100016848(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024EC8, qword_10001AC30);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v37 - v7;
  v9 = sub_100019E3C();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  __chkstk_darwin(v9);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002594(&qword_100024ED0, "r\x1B");
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v37 - v14;
  v16 = sub_100002594(&qword_100024E28, qword_10001A970);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v37 - v18;
  type metadata accessor for IFPlatformRequestTargetConverter();
  sub_1000198AC();
  v20 = sub_100016F68(v19);
  sub_100002D44(v19, &qword_100024E28, qword_10001A970);
  v21 = 0;
  if ((v20 & 0x100000000) == 0)
  {
    v22 = [objc_allocWithZone(IFPlatformRequestSchemaIFPlatformRequestClientEvent) init];
    if (v22)
    {
      v21 = v22;
      v38 = v9;
      type metadata accessor for IFPlatformRequestMetadataConverter();
      sub_1000198DC();
      v23 = sub_100014210(v15);
      sub_100002D44(v15, &qword_100024ED0, "r\x1B");
      [v21 setEventMetadata:v23];

      v39 = a1;
      sub_1000198FC();
      v24 = sub_1000198EC();
      v25 = *(v24 - 8);
      v26 = *(v25 + 48);
      if (v26(v8, 1, v24) == 1)
      {
        sub_100002D44(v8, &qword_100024EC8, qword_10001AC30);
      }

      else
      {
        if ((*(v25 + 88))(v8, v24) == enum case for IntelligenceFlowTelemetry.Objective.pnr(_:))
        {
          (*(v25 + 96))(v8, v24);
          v30 = v40;
          v29 = v41;
          v31 = v38;
          (*(v41 + 32))(v40, v8, v38);
          type metadata accessor for IFPlatformRequestContextConverter();
          v42 = 0;
          v32 = sub_100007454(v30, v20);
          [v21 setIfPlatformRequestContext:v32];

          (*(v29 + 8))(v30, v31);
          return v21;
        }

        (*(v25 + 8))(v8, v24);
      }

      sub_1000198FC();
      if (v26(v6, 1, v24) == 1)
      {
        sub_100002D44(v6, &qword_100024EC8, qword_10001AC30);
      }

      else
      {
        v33 = (*(v25 + 88))(v6, v24);
        v34 = enum case for IntelligenceFlowTelemetry.Objective.impendingRequestDetected(_:);
        (*(v25 + 8))(v6, v24);
        if (v33 == v34)
        {
          type metadata accessor for IFPlatformRequestInvokedConverter();
          sub_1000198DC();
          v35 = sub_100006264(v15);
          sub_100002D44(v15, &qword_100024ED0, "r\x1B");
          [v21 setIfPlatformRequestInvoked:v35];
        }
      }
    }

    else
    {
      if (qword_100025C58 != -1)
      {
        swift_once();
      }

      v27 = sub_100019F2C();
      sub_100003FD8(v27, qword_100025E38);
      sub_1000017F4(0xD000000000000038, 0x800000010001C270, v28);
      return 0;
    }
  }

  return v21;
}

uint64_t sub_100016DC8()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025E50);
  sub_100003FD8(v0, qword_100025E50);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100016E5C()
{
  if (qword_100025C60 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025E50);
}

uint64_t sub_100016EC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025C60 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025E50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100016F68(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024E28, qword_10001A970);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v36 - v4;
  v6 = sub_10001988C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v36 - v13;
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  sub_100007160(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000071D0(v5);
    if (qword_100025C60 != -1)
    {
      swift_once();
    }

    v17 = sub_100019F2C();
    sub_100003FD8(v17, qword_100025E50);
    v18 = sub_100019F0C();
    v19 = sub_10001A01C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "IntelligenceFlow.Telemetry event has no target so no platform request event target", v20, 2u);
    }
  }

  else
  {
    (*(v7 + 32))(v16, v5, v6);
    v23 = *(v7 + 16);
    v23(v14, v16, v6);
    v24 = (*(v7 + 88))(v14, v6);
    if (v24 == enum case for IntelligenceFlowTarget.standardPlannerMakePlan(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 1;
      goto LABEL_24;
    }

    if (v24 == enum case for IntelligenceFlowTarget.standardPlannerRun(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 2;
      goto LABEL_24;
    }

    if (v24 == enum case for IntelligenceFlowTarget.queryDecorationServiceHandle(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 101;
      goto LABEL_24;
    }

    if (v24 == enum case for IntelligenceFlowTarget.planOverridesServiceHandle(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 201;
      goto LABEL_24;
    }

    if (v24 == enum case for IntelligenceFlowTarget.fullPlannerServiceHandle(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 301;
      goto LABEL_24;
    }

    if (v24 == enum case for IntelligenceFlowTarget.planResolverServiceHandle(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 401;
      goto LABEL_24;
    }

    if (v24 == enum case for IntelligenceFlowTarget.responseGenerationServiceHandle(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 501;
      goto LABEL_24;
    }

    if (v24 == enum case for IntelligenceFlowTarget.sessionCoordinatorAccept(_:))
    {
      (*(v7 + 8))(v16, v6);
      v22 = 0;
      v21 = 601;
      goto LABEL_24;
    }

    if (qword_100025C60 != -1)
    {
      swift_once();
    }

    v26 = sub_100019F2C();
    sub_100003FD8(v26, qword_100025E50);
    v23(v11, v16, v6);
    v27 = sub_100019F0C();
    v28 = sub_10001A01C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v37 = v29;
      v39 = swift_slowAlloc();
      v40 = v39;
      *v29 = 136315138;
      sub_100007238();
      v38 = v28;
      v30 = sub_10001A13C();
      v32 = v31;
      v33 = *(v7 + 8);
      v33(v11, v6);
      v34 = sub_100001D8C(v30, v32, &v40);

      v35 = v37;
      *(v37 + 1) = v34;
      _os_log_impl(&_mh_execute_header, v27, v38, "Unrecognized IntelligenceFlow.Telemetry target %s so no platform request event target", v35, 0xCu);
      sub_100002334(v39);
    }

    else
    {

      v33 = *(v7 + 8);
      v33(v11, v6);
    }

    v33(v16, v6);
    v33(v14, v6);
  }

  v21 = 0;
  v22 = 1;
LABEL_24:
  v41 = v22;
  return v21 | (v22 << 32);
}

uint64_t sub_1000175D8()
{
  sub_1000028F8();
  sub_10001A03C();

  return sub_100019F3C();
}

uint64_t sub_100017654@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_logger;
  v4 = sub_100019F2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *IFDefaultsLib.userDefaults.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_userDefaults);
  v2 = v1;
  return v1;
}

uint64_t IFDefaultsLib.__allocating_init(domain:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1000028F8();
  sub_10001A03C();
  sub_100019F3C();
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = sub_100019F7C();

  v6 = [v4 initWithSuiteName:v5];

  *(v3 + OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_userDefaults) = v6;
  return v3;
}

uint64_t IFDefaultsLib.init(domain:)()
{
  v1 = v0;
  sub_1000028F8();
  sub_10001A03C();
  sub_100019F3C();
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = sub_100019F7C();

  v4 = [v2 initWithSuiteName:v3];

  *(v1 + OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_userDefaults) = v4;
  return v1;
}

uint64_t IFDefaultsLib.deinit()
{
  v1 = OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_logger;
  v2 = sub_100019F2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t IFDefaultsLib.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_logger;
  v2 = sub_100019F2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t IFDefaultsLib.lastCollectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000197DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  sub_1000197BC();
  v11 = *(v1 + OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_userDefaults);
  if (v11)
  {
    v12 = sub_100019F7C();
    v13 = [v11 valueForKey:v12];

    if (v13)
    {
      sub_10001A05C();
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
    }

    v31 = v29;
    v32 = v30;
    if (*(&v30 + 1))
    {
      sub_100017E40(&v31);
      v14 = sub_100019F7C();
      [v11 doubleForKey:v14];
      v16 = v15;

      v17 = sub_100019F0C();
      v18 = sub_10001A01C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&v31 = v20;
        *v19 = 136315394;
        *(v19 + 4) = sub_100001D8C(0xD000000000000015, 0x800000010001C360, &v31);
        *(v19 + 12) = 2048;
        *(v19 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v17, v18, "The userdefault has key %s with the value %f", v19, 0x16u);
        sub_100002334(v20);
      }

      sub_10001978C();
      sub_1000183E8();
      v21 = sub_100019F6C();
      v22 = *(v4 + 8);
      v23 = (v4 + 32);
      if (v21)
      {
        v22(v10, v3);
        return (*v23)(a1, v8, v3);
      }

      else
      {
        v22(v8, v3);
        return (*v23)(a1, v10, v3);
      }
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  sub_100017E40(&v31);
  v25 = sub_100019F0C();
  v26 = sub_10001A01C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v31 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_100001D8C(0xD000000000000015, 0x800000010001C360, &v31);
    _os_log_impl(&_mh_execute_header, v25, v26, "The userdefault contained no value for %s", v27, 0xCu);
    sub_100002334(v28);
  }

  return (*(v4 + 32))(a1, v10, v3);
}

uint64_t sub_100017E40(uint64_t a1)
{
  v2 = sub_100002594(&qword_1000257F0, &qword_10001B0E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100017ECC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000197DC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return IFDefaultsLib.lastCollectionDate.setter(v7);
}

uint64_t IFDefaultsLib.lastCollectionDate.setter(uint64_t a1)
{
  v2 = v1;
  sub_10001979C();
  v5 = v4;
  v6 = sub_100019F0C();
  v7 = sub_10001A01C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_100001D8C(0xD000000000000015, 0x800000010001C360, &v21);
    *(v8 + 12) = 2048;
    *(v8 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Set key %s to %f", v8, 0x16u);
    sub_100002334(v9);
  }

  v10 = *(v2 + OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_userDefaults);
  if (v10)
  {
    v11 = v10;
    isa = sub_10001A00C().super.super.isa;
    v13 = sub_100019F7C();
    [v11 setValue:isa forKey:v13];
  }

  else
  {
    v14 = sub_100019F0C();
    v15 = sub_10001A01C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100001D8C(0xD000000000000015, 0x800000010001C360, &v21);
      _os_log_impl(&_mh_execute_header, v14, v15, "Fail to set key %s due to empty userdefaults", v16, 0xCu);
      sub_100002334(v17);
    }
  }

  v18 = sub_1000197DC();
  v19 = *(*(v18 - 8) + 8);

  return v19(a1, v18);
}

void (*IFDefaultsLib.lastCollectionDate.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_1000197DC();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  IFDefaultsLib.lastCollectionDate.getter(v8);
  return sub_100018334;
}

void sub_100018334(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    IFDefaultsLib.lastCollectionDate.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    IFDefaultsLib.lastCollectionDate.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t sub_1000183E8()
{
  result = qword_1000257F8;
  if (!qword_1000257F8)
  {
    sub_1000197DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000257F8);
  }

  return result;
}

uint64_t type metadata accessor for IFDefaultsLib()
{
  result = qword_100025C68;
  if (!qword_100025C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100018494()
{
  result = sub_100019F2C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100018558()
{
  sub_1000028F8();
  sub_10001A03C();

  return sub_100019F3C();
}

uint64_t sub_1000185CC@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_100025E78;
  v4 = sub_100019F2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100018664()
{
  v1 = *(v0 + qword_100025E80);
  v2 = *(v0 + qword_100025E80 + 8);

  return v1;
}

uint64_t IFBiomeLib.__allocating_init(stream:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  IFBiomeLib.init(stream:)(a1);
  return v5;
}

uint64_t IFBiomeLib.init(stream:)(uint64_t a1)
{
  sub_1000028F8();
  sub_10001A03C();
  sub_100019F3C();
  v3 = (v1 + qword_100025E80);
  *v3 = 0x656D656C65544649;
  v3[1] = 0xEB00000000797274;
  *(v1 + qword_100025E88) = a1;
  return v1;
}

uint64_t sub_1000187A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[17] = a6;
  v7[18] = v6;
  v7[15] = a4;
  v7[16] = a5;
  v7[13] = a2;
  v7[14] = a3;
  v7[12] = a1;
  v7[19] = *v6;
  v8 = *(*(sub_100002594(&qword_100025230, &qword_10001ACA8) - 8) + 64) + 15;
  v7[20] = swift_task_alloc();

  return _swift_task_switch(sub_100018878, 0, 0);
}

uint64_t sub_100018878()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = sub_1000197DC();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6.super.isa = sub_1000197AC().super.isa;
  isa = 0;
  if ((*(v5 + 48))(v1, 1, v4) != 1)
  {
    v8 = *(v0 + 160);
    isa = sub_1000197AC().super.isa;
    (*(v5 + 8))(v8, v4);
  }

  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v11 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:v6.super.isa endDate:isa maxEvents:0 lastN:0 reversed:0];

  v12 = *(v9 + qword_100025E88);
  v13 = v9 + qword_100025E80;
  v14 = *(v9 + qword_100025E80);
  v15 = *(v13 + 8);
  v16 = *(v10 + 88);
  v17 = *(v10 + 104);
  v18 = v11;
  sub_100019ECC();

  v35 = (v0 + 40);
  v34 = *(v0 + 40);
  v36 = swift_allocObject();
  v37 = v36;
  *(v36 + 16) = 0;
  if (!v34)
  {
    v19 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v19;
    *(v0 + 88) = *(v0 + 48);
    v20 = *(v0 + 80);
    if (!v20)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100018CD0(v0 + 16, v0 + 56);
  v20 = *(v0 + 80);
  if (v20)
  {
LABEL_5:
    v21 = v18;
    v22 = *(v0 + 136);
    v23 = *(v0 + 144);
    v24 = *(v0 + 112);
    v38 = *(v0 + 88);
    v39 = *(v0 + 120);
    sub_100019200((v0 + 56), v20);
    v25 = swift_allocObject();
    v25[2] = v23;
    v25[3] = v37;
    v25[4] = v24;
    v25[5] = v39;
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    *(v26 + 24) = v24;
    *(v26 + 32) = v39;
    *(v26 + 48) = v22;
    *(v26 + 56) = v37;
    v18 = v21;
    v35 = (v0 + 40);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_100019F4C();

    sub_100002334((v0 + 56));
  }

LABEL_6:
  v27 = *(v0 + 144) + qword_100025E78;
  v28 = sub_100019F0C();
  v29 = sub_10001A01C();
  if (!os_log_type_enabled(v28, v29))
  {

    if (!*v35)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v30 = swift_slowAlloc();
  *v30 = 0;
  _os_log_impl(&_mh_execute_header, v28, v29, "loadBiomeEvent completed.", v30, 2u);

  if (*v35)
  {
LABEL_10:
    sub_100002334((v0 + 16));
  }

LABEL_11:
  v31 = *(v0 + 160);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100018CD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100018D34(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7)
{
  v44 = a5;
  v45 = a7;
  v43 = a6;
  v46 = a4;
  v47 = a3;
  v9 = *a2;
  v10 = *(*a2 + 80);
  v11 = sub_10001A04C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = *(v9 + 104);
  v17 = *(v9 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  v20 = __chkstk_darwin(AssociatedTypeWitness);
  v22 = &v43 - v21;
  v23 = *(v10 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  v26 = &v43 - v25;
  (*(v27 + 16))(v22, a1, AssociatedTypeWitness);
  v28 = swift_dynamicCast();
  v29 = *(v23 + 56);
  if (v28)
  {
    v29(v15, 0, 1, v10);
    (*(v23 + 32))(v26, v15, v10);
    v44(v26);
    (*(v23 + 8))(v26, v10);
    v30 = v45;
    result = swift_beginAccess();
    v32 = *(v30 + 16);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      __break(1u);
    }

    else
    {
      *(v30 + 16) = v34;
    }
  }

  else
  {
    v29(v15, 1, 1, v10);
    (*(v12 + 8))(v15, v11);

    v35 = sub_100019F0C();
    v36 = sub_10001A02C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = v38;
      *v37 = 136315138;
      v39 = *(a2 + qword_100025E88);
      v40 = sub_10001A1CC();
      v42 = sub_100001D8C(v40, v41, &v48);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "Error: Biome stream event type is incorrect for stream: %s", v37, 0xCu);
      sub_100002334(v38);
    }

    return v47(0);
  }

  return result;
}

uint64_t IFBiomeLib.deinit()
{
  v1 = qword_100025E78;
  v2 = sub_100019F2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_100025E80 + 8);

  return v0;
}

uint64_t IFBiomeLib.__deallocating_deinit()
{
  IFBiomeLib.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void *sub_100019200(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100019244()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001928C(uint64_t *a1)
{
  v2 = v1[2];
  v4 = v1[4];
  v3 = v1[5];
  v5 = *a1;
  if (*a1)
  {
    v6 = *a1;
    swift_errorRetain();
    v7 = sub_100019F0C();
    v8 = sub_10001A02C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error, sink failed: %@", v9, 0xCu);
      sub_100019724(v10);
    }

    v12 = v5;
  }

  else
  {
    v13 = v1[3];

    v14 = sub_100019F0C();
    v15 = sub_10001A01C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      swift_beginAccess();
      *(v16 + 4) = *(v13 + 16);

      _os_log_impl(&_mh_execute_header, v14, v15, "%ld of events loaded from Biome stream", v16, 0xCu);
    }

    else
    {
    }

    v12 = 0;
  }

  return v4(v12);
}

uint64_t sub_10001947C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000194E0()
{
  result = sub_100019F2C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of IFBiomeLib.loadBiomeEvent(startDate:endDate:completionHandler:receiveEventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 144);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_10000892C;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100019724(uint64_t a1)
{
  v2 = sub_100002594(&qword_1000258A8, &unk_10001B1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}