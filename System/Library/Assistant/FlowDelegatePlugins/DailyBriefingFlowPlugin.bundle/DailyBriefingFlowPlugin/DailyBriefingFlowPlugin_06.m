void fatalError(_:file:line:)(uint64_t (*a1)(void))
{
  v2 = a1();
  v4 = v3;
  if (qword_DA9D0 != -1)
  {
    sub_82CC8();
    swift_once();
  }

  v5 = sub_A43D4();
  sub_48A4(v5, qword_E0BA0);

  sub_82CA4();
  sub_8130C(v2, v4, v6, 0x80000000000B2D40, 0xD000000000000018, 0x80000000000B2D70, v7);

  sub_82D08();
  v8 = static FatalError.fatalErrorClosure;

  (a1)(v9);
  v8();
}

id sub_817C0()
{
  if (qword_DA930 != -1)
  {
    sub_82C28();
  }

  return sub_82B78(qword_E09E8, &xmmword_E0A40);
}

id sub_81814()
{
  if (qword_DA940 != -1)
  {
    sub_82C08();
  }

  return sub_82B78(qword_E09F8, &xmmword_E0A60);
}

id sub_81868()
{
  if (qword_DA920 != -1)
  {
    sub_82B58();
  }

  return sub_82B78(qword_E09D8, &xmmword_E0A80);
}

id sub_818BC()
{
  if (qword_DA938 != -1)
  {
    sub_82B98();
  }

  return sub_82B78(qword_E09F0, &qword_E0AA0);
}

id sub_81910()
{
  if (qword_DA930 != -1)
  {
    sub_82C28();
  }

  return sub_82B78(qword_E09E8, &qword_E0AC0);
}

id sub_81964()
{
  if (qword_DA920 != -1)
  {
    sub_82B58();
  }

  return sub_82B78(qword_E09D8, &qword_E0AE0);
}

id sub_819B8()
{
  if (qword_DA920 != -1)
  {
    sub_82B58();
  }

  return sub_82B78(qword_E09D8, &qword_E0B00);
}

id sub_81A0C()
{
  if (qword_DA920 != -1)
  {
    sub_82B58();
  }

  return sub_82B78(qword_E09D8, &qword_E0B20);
}

id sub_81A60()
{
  if (qword_DA938 != -1)
  {
    sub_82B98();
  }

  return sub_82B78(qword_E09F0, &qword_E0B40);
}

id sub_81AB4()
{
  if (qword_DA920 != -1)
  {
    sub_82B58();
  }

  return sub_82B78(qword_E09D8, &qword_E0B60);
}

id sub_81B08()
{
  if (qword_DA920 != -1)
  {
    sub_82B58();
  }

  return sub_82B78(qword_E09D8, &qword_E0B80);
}

uint64_t sub_81B5C()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0BA0);
  sub_48A4(v0, qword_E0BA0);
  return sub_A43C4();
}

uint64_t sub_81BE0()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0BB8);
  sub_82BE8();
  sub_82C68();
  return sub_A43C4();
}

uint64_t sub_81C50()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0BD0);
  sub_82BE8();
  return sub_82BB8();
}

uint64_t sub_81CA4()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0BE8);
  sub_82BE8();
  return sub_82BB8();
}

uint64_t sub_81CF8()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0C00);
  sub_82BE8();
  return sub_82BB8();
}

uint64_t sub_81D4C()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0C18);
  sub_82BE8();
  sub_82C68();
  return sub_A43C4();
}

uint64_t sub_81DBC()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0C30);
  sub_82BE8();
  sub_82C68();
  return sub_A43C4();
}

uint64_t sub_81E2C()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0C48);
  sub_82BE8();
  return sub_82BB8();
}

uint64_t sub_81E80()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0C60);
  sub_82BE8();
  sub_82C68();
  return sub_A43C4();
}

id sub_81EF0()
{
  if (qword_DA928 != -1)
  {
    sub_82C48();
  }

  return sub_82B78(qword_E09E0, &qword_E0C78);
}

id sub_81F44()
{
  if (qword_DA928 != -1)
  {
    sub_82C48();
  }

  return sub_82B78(qword_E09E0, &qword_E0C98);
}

id sub_81F98()
{
  if (qword_DA930 != -1)
  {
    sub_82C28();
  }

  return sub_82B78(qword_E09E8, &qword_E0CB8);
}

id sub_81FEC()
{
  if (qword_DA940 != -1)
  {
    sub_82C08();
  }

  return sub_82B78(qword_E09F8, &qword_E0CD8);
}

id sub_82040()
{
  if (qword_DA940 != -1)
  {
    sub_82C08();
  }

  return sub_82B78(qword_E09F8, &qword_E0CF8);
}

id sub_82094()
{
  if (qword_DA938 != -1)
  {
    sub_82B98();
  }

  return sub_82B78(qword_E09F0, &qword_E0D18);
}

id sub_820E8()
{
  if (qword_DA938 != -1)
  {
    sub_82B98();
  }

  return sub_82B78(qword_E09F0, &qword_E0D38);
}

id sub_8213C()
{
  if (qword_DA948 != -1)
  {
    swift_once();
  }

  return sub_82B78(qword_E0A00, &qword_E0D58);
}

id sub_821A0()
{
  if (qword_DA920 != -1)
  {
    sub_82B58();
  }

  return sub_82B78(qword_E09D8, &qword_E0D78);
}

id sub_821F4()
{
  if (qword_DA938 != -1)
  {
    sub_82B98();
  }

  return sub_82B78(qword_E09F0, &qword_E0D98);
}

id sub_82248()
{
  if (qword_DA938 != -1)
  {
    sub_82B98();
  }

  return sub_82B78(qword_E09F0, &qword_E0DB8);
}

id sub_8229C()
{
  if (qword_DA920 != -1)
  {
    sub_82B58();
  }

  return sub_82B78(qword_E09D8, &qword_E0DD8);
}

id sub_822F0()
{
  if (qword_DA938 != -1)
  {
    sub_82B98();
  }

  return sub_82B78(qword_E09F0, &qword_E0DF8);
}

void (*static FatalError.fatalErrorClosure.getter())()
{
  swift_beginAccess();
  v0 = static FatalError.fatalErrorClosure;

  return v0;
}

uint64_t static FatalError.fatalErrorClosure.setter(void (*a1)(), uint64_t a2)
{
  sub_82D28();
  static FatalError.fatalErrorClosure = a1;
  qword_DF670 = a2;
}

uint64_t static FatalError.replaceFatalError(closure:)(void (*a1)(), uint64_t a2)
{
  sub_82D28();
  static FatalError.fatalErrorClosure = a1;
  qword_DF670 = a2;
}

uint64_t static FatalError.restoreFatalError()()
{
  swift_beginAccess();
  static FatalError.fatalErrorClosure = sub_82454;
  qword_DF670 = 0;
}

uint64_t sub_8257C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_82640(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_B924(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_761C(v11);
  return v7;
}

unint64_t sub_82640(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_82740(a5, a6);
    *a1 = v9;
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
    result = sub_A4B94();
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

char *sub_82740(uint64_t a1, unint64_t a2)
{
  v4 = sub_8278C(a1, a2);
  sub_828A4(&off_CEA60);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_8278C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_A46E4())
  {
    result = sub_82988(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_A4B44();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_A4B94();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_828A4(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_829F8(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_82988(uint64_t a1, uint64_t a2)
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

  sub_4BF0(&qword_DF680, qword_AB1D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_829F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_4BF0(&qword_DF680, qword_AB1D0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_82AEC(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DF678, &qword_AB1C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_82B58()
{

  return swift_once();
}

id sub_82B78@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 2;
  *(a2 + 24) = a1;

  return a1;
}

uint64_t sub_82B98()
{

  return swift_once();
}

uint64_t sub_82BB8()
{

  return sub_A43C4();
}

uint64_t sub_82C08()
{

  return swift_once();
}

uint64_t sub_82C28()
{

  return swift_once();
}

uint64_t sub_82C48()
{

  return swift_once();
}

uint64_t sub_82C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return StringProtocol.range<A>(of:options:range:locale:)(v8 - 136, 0, 0, 0, 1, v7, a7, a7);
}

uint64_t sub_82CDC()
{
}

uint64_t sub_82D08()
{

  return swift_beginAccess();
}

uint64_t sub_82D28()
{

  return swift_beginAccess();
}

uint64_t sub_82D48@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*v1 + 232))();
  if (v3 == 6)
  {
    v4 = 1;
  }

  else
  {
    v5 = v3;
    sub_A3734();
    sub_D6E0(v5);
    sub_A3724();
    sub_1C450(0);
    sub_A36A4();
    v4 = 0;
  }

  v6 = sub_A3744();

  return sub_A924(a1, v4, 1, v6);
}

uint64_t sub_82DF4()
{
  sub_761C((v0 + 16));
  v1 = *(v0 + 56);

  sub_A8A8(*(v0 + 64), *(v0 + 72));

  sub_761C((v0 + 112));
  v2 = *(v0 + 152);

  v3 = *(v0 + 160);

  sub_761C((v0 + 168));
  sub_A72C(*(v0 + 208), *(v0 + 216));
  return v0;
}

uint64_t sub_82E5C()
{
  v1 = *(v0 + 80);
  sub_4BF0(&qword_DF900, &unk_AB490);
  sub_A4974();
  return v3;
}

uint64_t sub_82ED4(void *a1, __int16 a2)
{
  v3 = v2;
  v6 = *(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_83D90;
  *(v8 + 24) = v7;
  v11[4] = sub_253D8;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_50578;
  v11[3] = &unk_D2A48;
  v9 = _Block_copy(v11);

  sub_83DC4(a1, a2);

  dispatch_sync(v6, v9);
  sub_A72C(a1, a2);
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_8306C()
{
  v1 = *(v0 + 16);
  v2 = sub_82E5C();
  if (BYTE1(v3) == 255)
  {
    sub_24824();
    v2 = swift_allocError();
    v4 = v3;
    LOBYTE(v3) = 0;
    *v4 = 2;
    v5 = 1;
  }

  else
  {
    v5 = (v3 >> 8) & 1;
  }

  v6 = v3 | (v5 << 8);
  v7 = *(v0 + 8);

  return v7(v2, v6);
}

unint64_t sub_8312C(char a1)
{
  sub_A4B54(28);

  v2 = 0xEF64656C6C617473;
  v3._countAndFlagsBits = 0x6E49746F4E707061;
  switch(a1)
  {
    case 1:
      v2 = 0x80000000000AD260;
      v3._countAndFlagsBits = 0xD000000000000012;
      break;
    case 2:
      v2 = 0x80000000000AD280;
      v3._countAndFlagsBits = 0xD000000000000015;
      break;
    case 3:
      break;
    default:
      v2 = 0x80000000000AD240;
      v3._countAndFlagsBits = 0xD000000000000014;
      break;
  }

  v3._object = v2;
  sub_A46D4(v3);

  return 0xD00000000000001ALL;
}

unint64_t sub_8324C(char a1)
{
  result = 0x6E49746F4E707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_83300(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFBC0;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_83364@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_83300(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_83394@<X0>(unint64_t *a1@<X8>)
{
  result = sub_8324C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_83414(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFC40;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  return v4 != 0;
}

BOOL sub_83468@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_83414(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_834E4()
{
  v0 = sub_A4124();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v16 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v7 = sub_A43D4();
  sub_48A4(v7, qword_E0BA0);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_A4B54(31);

  v17 = 0xD00000000000001DLL;
  v18 = 0x80000000000B4090;
  sub_A40D4();
  sub_A40C4();
  sub_A40B4();

  sub_A4134();

  v8 = sub_A4104();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v6, v0);
  v19._countAndFlagsBits = v8;
  v19._object = v10;
  sub_A46D4(v19);

  sub_810AC(v17, v18, 0xD00000000000002ALL, 0x80000000000B40B0, 0xD000000000000011, 0x80000000000B40E0);

  sub_A40C4();
  sub_A40B4();

  sub_A4134();

  v12 = v16;
  (*(v1 + 104))(v16, enum case for NetworkAvailability.Status.unavailable(_:), v0);
  v13 = sub_A4114();
  v11(v12, v0);
  v11(v6, v0);
  return v13 & 1;
}

id sub_837CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  *a2 = v2;
  v3 = *(a1 + 216);
  *(a2 + 8) = v3;
  return sub_83DC4(v2, v3);
}

void sub_83808(uint64_t a1, void *a2, __int16 a3)
{
  v3 = *(a1 + 208);
  *(a1 + 208) = a2;
  v4 = *(a1 + 216);
  *(a1 + 216) = a3;
  sub_83DC4(a2, a3);

  sub_A72C(v3, v4);
}

void sub_83860(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for CommonSpecs;
  *(a1 + 32) = &off_D2128;
  *a1 = 3;
}

uint64_t sub_83880(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v28 = a7;
  v29 = a8;
  v15 = swift_allocObject();
  v16 = a9[3];
  v17 = sub_A7C4(a9, v16);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  *(v15 + 192) = type metadata accessor for OfflineStateProvider();
  *(v15 + 200) = &off_D29E8;
  *(v15 + 168) = v22;
  v23 = sub_A3584();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(v15 + 56) = sub_A3574();
  sub_2505C();
  *(v15 + 64) = swift_allocError();
  *(v15 + 72) = 1;
  *(v15 + 208) = 0;
  *(v15 + 216) = -256;
  *(v15 + 80) = a1;
  *(v15 + 88) = a2;
  *(v15 + 96) = a3;
  *(v15 + 104) = a4;
  sub_A814(a5, v15 + 16);
  sub_A814(a6, v15 + 112);
  v26 = v29;
  *(v15 + 152) = v28;
  *(v15 + 160) = v26;
  sub_761C(a9);
  return v15;
}

uint64_t sub_83A4C()
{
  sub_2505C();
  v1 = swift_allocError();
  v2 = *(v0 + 8);

  return v2(v1, 1);
}

uint64_t sub_83AC4()
{
  sub_82DF4();

  return _swift_deallocClassInstance(v0, 218, 7);
}

uint64_t sub_83B28(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_83B3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_83B7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_83BEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 321))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_83C2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 320) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 321) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 321) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_83CE8()
{
  result = qword_DF8B8;
  if (!qword_DF8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8B8);
  }

  return result;
}

uint64_t sub_83D3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  if (v2 >> 8 <= 0xFE)
  {
    sub_A744(*(v0 + 24), v2, BYTE1(v2) & 1);
  }

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_83DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_83DC4(id result, __int16 a2)
{
  if (HIBYTE(a2) != 255)
  {
    return sub_A88C(result, a2, HIBYTE(a2) & 1);
  }

  return result;
}

_BYTE *sub_83DF8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x83EC4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_83EF8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x83F94);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_83FD0()
{
  result = qword_DF908;
  if (!qword_DF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF908);
  }

  return result;
}

unint64_t sub_8402C()
{
  result = qword_DF910;
  if (!qword_DF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF910);
  }

  return result;
}

uint64_t sub_840D4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_8410C();
  return v3;
}

uint64_t sub_8410C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_logger;
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v2 = sub_A43D4();
  sub_48A4(v2, qword_E0BA0);
  sub_18594(v2);
  (*(v3 + 16))(v0 + v1);
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_signpostId;
  v5 = sub_A43A4();
  sub_A924(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_signPost;
  if (qword_DA988 != -1)
  {
    swift_once();
  }

  v7 = v0 + v6;
  v8 = byte_E0A90;
  v9 = qword_E0A98;
  *v7 = xmmword_E0A80;
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  v10 = v9;
  return v0;
}

uint64_t sub_84228(uint64_t a1)
{
  if (sub_845B0(a1))
  {
    sub_A3384();
  }

  else
  {

    return static FlowSearchResult.noFlow.getter();
  }
}

uint64_t sub_84290(uint64_t a1)
{
  v3 = sub_4BF0(&qword_DFAD8, &qword_AB858);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_36194();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = sub_A43A4();
  sub_AA64();
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  sub_AA54();
  v19 = v18 - v17;
  v20 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_signpostId;
  swift_beginAccess();
  sub_86578(v1 + v20, v10);
  if (sub_CF2C(v10, 1, v11) == 1)
  {
    sub_865E8(v10);
  }

  else
  {
    (*(v13 + 32))(v19, v10, v11);
    v34 = v7;
    v21 = a1;
    v22 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_signPost);
    v23 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_signPost + 8);
    v24 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_signPost + 24);
    v25 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_signPost + 16);
    sub_A49A4();
    a1 = v21;
    sub_A4364();
    (*(v13 + 8))(v19, v11);
    v26 = v34;
    sub_A924(v34, 1, 1, v11);
    swift_beginAccess();
    sub_86650(v26, v1 + v20);
    swift_endAccess();
  }

  v27 = sub_845B0(a1);
  if (v27)
  {
    return v27;
  }

  sub_81094(0xD000000000000013, 0x80000000000B4400, 0xD000000000000035, 0x80000000000B4200, 0xD000000000000013, 0x80000000000B4420);
  type metadata accessor for NoOpFlow();
  v35 = swift_allocObject();
  sub_86950();
  sub_8688C(v29, v30, v31);
  v28 = sub_A3324();

  return v28;
}

uint64_t sub_845B0(uint64_t a1)
{
  sub_A3924();
  sub_AA64();
  v194 = v4;
  v195 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_36194();
  v192 = v7 - v8;
  __chkstk_darwin(v9);
  v193 = &v192 - v10;
  v11 = sub_A4004();
  sub_AA64();
  v199 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  sub_36194();
  v196 = (v16 - v17);
  __chkstk_darwin(v18);
  v198 = &v192 - v19;
  v20 = sub_A38F4();
  sub_AA64();
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v25);
  sub_AA54();
  v28 = (v27 - v26);
  v29 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_logger;
  sub_86930();
  sub_A4B54(49);

  *&v228[0] = 0xD00000000000002FLL;
  *(&v228[0] + 1) = 0x80000000000B4260;
  sub_A3904();
  sub_7584(&v223, v224);
  v229._countAndFlagsBits = sub_D58C();
  sub_A46D4(v229);

  sub_761C(&v223);
  v203 = 0xD00000000000001DLL;
  v204 = "ld never be called.";
  v200 = "iefing plugin for deviceState: ";
  v201 = v1;
  v202 = v29;
  sub_86968();
  sub_810AC(v30, v31, v32, v33, v34, v35);

  v36 = *(v22 + 16);
  v197 = a1;
  v36(v28, a1, v20);
  v37 = (*(v22 + 88))(v28, v20);
  if (v37 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v38 = sub_869C8();
    v39(v38);
    v41 = v198;
    v40 = v199;
    v42 = *(v199 + 32);
    v42(v198, v28, v11);
    sub_869AC();
    sub_86968();
    sub_810C4(v43, v44, v45, v46, v47, v48);
    v49 = v196;
    (*(v40 + 16))(v196, v41, v11);
    v50 = type metadata accessor for DailyBriefingNLv3Intent();
    v51 = sub_5D78(v50);
    v42((v51 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingNLv3Intent_intent), v49, v11);
    if (sub_84088())
    {
      v203 = v11;

      sub_A3904();
      sub_A3454();
      if (qword_DA838 != -1)
      {
        sub_254B0();
      }

      v52 = qword_E0608;
      v53 = type metadata accessor for DBSiriKitEventSender();
      inited = swift_initStaticObject();
      v224 = v53;
      v225 = &off_D1B20;
      sub_868D4();
      v226 = sub_8688C(v55, 255, v56);
      *&v223 = inited;
      v57 = objc_allocWithZone(AFLocationService);
      v204 = v52;

      v58 = [v57 init];
      v221 = sub_867C0();
      v222 = &off_D1BB0;
      v220[0] = v58;
      v218 = v50;
      v219 = &off_D2208;
      *&v217 = v51;
      v215 = &type metadata for SiriDBFeatureFlagsImpl;
      v216 = &off_D1E00;
      v212 = &type metadata for RequestOriginUtil;
      v213 = &off_D1958;
      sub_86980();
      v59 = swift_allocObject();
      sub_8698C(v59);
      v60 = type metadata accessor for GuardFlow();
      v61 = sub_5D78(v60);
      sub_A7C4(v214, &type metadata for SiriDBFeatureFlagsImpl);
      sub_A7C4(v211, &type metadata for RequestOriginUtil);
      v202 = &v192;
      sub_AA64();
      v63 = *(v62 + 64);
      __chkstk_darwin(v64);
      sub_AA54();
      v67 = v66 - v65;
      (*(v68 + 16))(v66 - v65);
      v209 = &type metadata for SiriDBFeatureFlagsImpl;
      v210 = &off_D1E00;
      v206 = &type metadata for RequestOriginUtil;
      v207 = &off_D1958;
      sub_86980();
      v69 = swift_allocObject();
      *&v205 = v69;
      v70 = *(v67 + 16);
      *(v69 + 16) = *v67;
      *(v69 + 32) = v70;
      *(v69 + 48) = *(v67 + 32);
      v71 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_logger;
      v72 = qword_DA9D0;

      if (v72 != -1)
      {
        sub_58D8();
      }

      v73 = sub_A43D4();
      sub_48A4(v73, qword_E0BA0);
      sub_18594(v73);
      (*(v74 + 16))(v61 + v71);

      *(v61 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_state) = 0;
      *(v61 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent) = 0;
      sub_A814(&v217, v61 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_dbIntent);
      sub_A814(v228, v61 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState);
      sub_A814(v227, v61 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_aceService);
      *(v61 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_knowledgeStore) = v204;
      sub_A814(&v208, v61 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_featureFlags);
      sub_A82C(&v223, (v61 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_siriKitEventSender));
      sub_A814(&v205, v61 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_requestOriginUtil);
      sub_761C(v211);
      sub_761C(v214);
      sub_86838(v220);
      *&v223 = v61;
      sub_868EC();
      sub_8688C(v75, 255, v76);
      v77 = sub_A3324();

      (*(v199 + 8))(v198, v203);
      return v77;
    }

    type metadata accessor for DBSiriKitEventSender();
    swift_initStaticObject();
    *&v223 = 0;
    *(&v223 + 1) = 0xE000000000000000;
    sub_A4B54(36);
    sub_86974();
    v230._countAndFlagsBits = 0xD000000000000022;
    v230._object = 0x80000000000B43D0;
    sub_A46D4(v230);
    sub_A4C44();
    sub_86904();
    sub_4D424();

    *&v223 = 0;
    *(&v223 + 1) = 0xE000000000000000;
    sub_A4B54(36);

    *&v223 = 0xD000000000000022;
    *(&v223 + 1) = 0x80000000000B43D0;
    sub_8688C(&qword_DFAE8, 255, &type metadata accessor for NLIntent);
    v118 = v198;
    v231._countAndFlagsBits = sub_A4E24();
    sub_A46D4(v231);

    sub_869AC();
    sub_86968();
    sub_810C4(v119, v120, v121, v122, v123, v124);

    (*(v199 + 8))(v118, v11);
    return 0;
  }

  if (v37 == enum case for Parse.NLv4IntentOnly(_:))
  {
    v78 = sub_869C8();
    v79(v78);
    v80 = *v28;
    sub_86940();
    sub_869E4();
    v81 = v203;
    sub_86968();
    sub_810C4(v82, v83, v84, v85, v86, v87);
    v88 = type metadata accessor for DailyBriefingNLv4Intent();
    swift_allocObject();
    v89 = swift_unknownObjectRetain();
    v90 = sub_57024(v89);
    if (!v90)
    {
      sub_86930();
      sub_A4B54(45);
      sub_86974();
      sub_86940();
      v234._countAndFlagsBits = v174 - 10;
      v234._object = (v175 | 0x8000000000000000);
      sub_A46D4(v234);
      sub_869D8();
      sub_A4C44();
      sub_86968();
      sub_81094(v176, v177, v178, v179, v81, v180);

      type metadata accessor for DBSiriKitEventSender();
      swift_initStaticObject();
      sub_86930();
      sub_A4B54(36);
      sub_86974();
      sub_86940();
      v235._countAndFlagsBits = v181 - 19;
      v235._object = (v182 | 0x8000000000000000);
      sub_A46D4(v235);
      sub_869D8();
      sub_A4C44();
      sub_86904();
      sub_4D424();
      swift_unknownObjectRelease();

      return 0;
    }

    v91 = v90;
    v203 = v80;

    sub_A3904();
    sub_A3454();
    v92 = v91;
    if (qword_DA838 != -1)
    {
      sub_254B0();
    }

    v93 = qword_E0608;
    v94 = type metadata accessor for DBSiriKitEventSender();
    v95 = swift_initStaticObject();
    v224 = v94;
    v225 = &off_D1B20;
    sub_868D4();
    v226 = sub_8688C(v96, 255, v97);
    *&v223 = v95;
    v98 = objc_allocWithZone(AFLocationService);
    v204 = v93;

    v99 = [v98 init];
    v221 = sub_867C0();
    v222 = &off_D1BB0;
    v220[0] = v99;
    v218 = v88;
    v219 = &off_D1E18;
    *&v217 = v92;
    v215 = &type metadata for SiriDBFeatureFlagsImpl;
    v216 = &off_D1E00;
    v212 = &type metadata for RequestOriginUtil;
    v213 = &off_D1958;
    sub_86980();
    v100 = swift_allocObject();
    sub_8698C(v100);
    v101 = type metadata accessor for GuardFlow();
    v102 = sub_5D78(v101);
    sub_A7C4(v214, &type metadata for SiriDBFeatureFlagsImpl);
    sub_A7C4(v211, &type metadata for RequestOriginUtil);
    v202 = &v192;
    sub_AA64();
    v104 = *(v103 + 64);
    __chkstk_darwin(v105);
    sub_AA54();
    v108 = v107 - v106;
    (*(v109 + 16))(v107 - v106);
    v209 = &type metadata for SiriDBFeatureFlagsImpl;
    v210 = &off_D1E00;
    v206 = &type metadata for RequestOriginUtil;
    v207 = &off_D1958;
    sub_86980();
    v110 = swift_allocObject();
    *&v205 = v110;
    v111 = *(v108 + 16);
    *(v110 + 16) = *v108;
    *(v110 + 32) = v111;
    *(v110 + 48) = *(v108 + 32);
    v112 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_logger;
    v113 = qword_DA9D0;

    if (v113 != -1)
    {
      sub_58D8();
    }

    v114 = sub_A43D4();
    sub_48A4(v114, qword_E0BA0);
    sub_18594(v114);
    (*(v115 + 16))(v102 + v112);

    *(v102 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_state) = 0;
    *(v102 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent) = 0;
    sub_A814(&v217, v102 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_dbIntent);
    sub_A814(v228, v102 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState);
    sub_A814(v227, v102 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_aceService);
    *(v102 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_knowledgeStore) = v204;
    sub_A814(&v208, v102 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_featureFlags);
    sub_A82C(&v223, (v102 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_siriKitEventSender));
    sub_A814(&v205, v102 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_requestOriginUtil);
    sub_761C(v211);
    sub_761C(v214);
    sub_86838(v220);
    *&v223 = v102;
    sub_868EC();
    sub_8688C(v116, 255, v117);
    v77 = sub_A3324();

    swift_unknownObjectRelease();
  }

  else
  {
    if (v37 != enum case for Parse.uso(_:))
    {
      sub_86930();
      sub_A4B54(41);
      sub_86974();
      v232._countAndFlagsBits = 0xD000000000000027;
      v198 = "makeDailyBriefingFlow(parse:)";
      v199 = 0xD000000000000027;
      v232._object = 0x80000000000B42B0;
      sub_A46D4(v232);
      sub_869D8();
      sub_A4C44();
      sub_86968();
      sub_81094(v168, v169, v170, v171, v172, v173);

      type metadata accessor for DBSiriKitEventSender();
      swift_initStaticObject();
      sub_86930();
      sub_A4B54(41);
      sub_86974();
      v233._countAndFlagsBits = v199;
      v233._object = (v198 | 0x8000000000000000);
      sub_A46D4(v233);
      sub_869D8();
      sub_A4C44();
      sub_86904();
      sub_4D424();

      (*(v22 + 8))(v28, v20);
      return 0;
    }

    v125 = sub_869C8();
    v126(v125);
    v128 = v193;
    v127 = v194;
    v129 = v28;
    v130 = v195;
    (*(v194 + 32))(v193, v129, v195);
    sub_86940();
    sub_869E4();
    v131 = v203;
    sub_86968();
    sub_810C4(v132, v133, v134, v135, v136, v137);
    v138 = type metadata accessor for DailyBriefingNLv4Intent();
    v139 = *(v127 + 16);
    v140 = v192;
    v139(v192, v128, v130);
    v141 = sub_56DA0(v140);
    if (!v141)
    {
      sub_86930();
      sub_A4B54(55);
      sub_86974();
      v236._object = 0x80000000000B4360;
      v236._countAndFlagsBits = 0xD000000000000035;
      sub_A46D4(v236);
      sub_A4C44();
      sub_86968();
      sub_81094(v183, v184, v185, v186, v131, v187);

      type metadata accessor for DBSiriKitEventSender();
      swift_initStaticObject();
      sub_86930();
      sub_A4B54(46);
      sub_86974();
      sub_86940();
      v237._countAndFlagsBits = v188 - 9;
      v237._object = (v189 | 0x8000000000000000);
      sub_A46D4(v237);
      sub_A4C44();
      sub_86904();
      v190 = v194;
      sub_4D424();

      (*(v190 + 8))(v128, v195);
      return 0;
    }

    v142 = v141;

    sub_A3904();
    sub_A3454();
    if (qword_DA838 != -1)
    {
      sub_254B0();
    }

    v143 = qword_E0608;
    v144 = type metadata accessor for DBSiriKitEventSender();
    v145 = swift_initStaticObject();
    v224 = v144;
    v225 = &off_D1B20;
    sub_868D4();
    v226 = sub_8688C(v146, 255, v147);
    *&v223 = v145;
    v148 = objc_allocWithZone(AFLocationService);
    v204 = v143;

    v149 = [v148 init];
    v221 = sub_867C0();
    v222 = &off_D1BB0;
    v220[0] = v149;
    v218 = v138;
    v219 = &off_D1E18;
    *&v217 = v142;
    v215 = &type metadata for SiriDBFeatureFlagsImpl;
    v216 = &off_D1E00;
    v212 = &type metadata for RequestOriginUtil;
    v213 = &off_D1958;
    sub_86980();
    v150 = swift_allocObject();
    sub_8698C(v150);
    v151 = type metadata accessor for GuardFlow();
    v152 = sub_5D78(v151);
    sub_A7C4(v214, &type metadata for SiriDBFeatureFlagsImpl);
    sub_A7C4(v211, &type metadata for RequestOriginUtil);
    v203 = &v192;
    sub_AA64();
    v154 = *(v153 + 64);
    __chkstk_darwin(v155);
    sub_AA54();
    v158 = v157 - v156;
    (*(v159 + 16))(v157 - v156);
    v209 = &type metadata for SiriDBFeatureFlagsImpl;
    v210 = &off_D1E00;
    v206 = &type metadata for RequestOriginUtil;
    v207 = &off_D1958;
    sub_86980();
    v160 = swift_allocObject();
    *&v205 = v160;
    v161 = *(v158 + 16);
    *(v160 + 16) = *v158;
    *(v160 + 32) = v161;
    *(v160 + 48) = *(v158 + 32);
    v162 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_logger;
    v163 = qword_DA9D0;

    if (v163 != -1)
    {
      sub_58D8();
    }

    v164 = sub_A43D4();
    sub_48A4(v164, qword_E0BA0);
    sub_18594(v164);
    (*(v165 + 16))(v152 + v162);

    *(v152 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_state) = 0;
    *(v152 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent) = 0;
    sub_A814(&v217, v152 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_dbIntent);
    sub_A814(v228, v152 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState);
    sub_A814(v227, v152 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_aceService);
    *(v152 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_knowledgeStore) = v204;
    sub_A814(&v208, v152 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_featureFlags);
    sub_A82C(&v223, (v152 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_siriKitEventSender));
    sub_A814(&v205, v152 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_requestOriginUtil);
    sub_761C(v211);
    sub_761C(v214);
    sub_86838(v220);
    *&v223 = v152;
    sub_868EC();
    sub_8688C(v166, 255, v167);
    v77 = sub_A3324();

    (*(v194 + 8))(v193, v195);
  }

  return v77;
}

uint64_t sub_85A24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v35 - v8;
  v10 = sub_4BF0(&qword_DFAD8, &qword_AB858);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_36194();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  sub_810AC(0xD000000000000013, 0x80000000000B4240, 0xD000000000000035, 0x80000000000B4200, 0x722870756D726177, 0xEE00293A64496665);
  v18 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_signpostId;
  swift_beginAccess();
  sub_86578(v2 + v18, v17);
  v19 = sub_A43A4();
  v20 = sub_CF2C(v17, 1, v19);
  sub_865E8(v17);
  if (v20 == 1)
  {
    v21 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_signPost);
    v22 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_signPost + 8);
    v23 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_signPost + 24);
    v36 = v9;
    v24 = a2;
    v25 = a1;
    v26 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_signPost + 16);
    v27 = v23;
    sub_A4384();
    sub_A49B4();
    a1 = v25;
    a2 = v24;
    v9 = v36;
    sub_A4374();
    sub_A924(v14, 0, 1, v19);
    swift_beginAccess();
    sub_86650(v14, v3 + v18);
    swift_endAccess();
  }

  v28 = sub_A4814();
  sub_A924(v9, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = a1;
  v29[5] = a2;

  sub_89E10(0, 0, v9, &unk_AB868, v29);

  if (qword_DA890 != -1)
  {
    swift_once();
  }

  sub_1EFFC(a1, a2);
  if (qword_DA8C8 != -1)
  {
    swift_once();
  }

  v30 = qword_E08A0;
  v31 = *(qword_E08A0 + 80);
  v32 = *(qword_E08A0 + 88);
  v33 = *(qword_E08A0 + 96);
  *(qword_E08A0 + 88) = 0;
  *(v30 + 96) = 0;
  *(v30 + 80) = 0;
  return sub_2F2F4(v31, v32);
}

uint64_t sub_85D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_85DA4, 0, 0);
}

uint64_t sub_85DA4()
{
  if (qword_DA830 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v0[4] = qword_E0600;

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_85E94;
  v3 = v0[2];

  return sub_2970();
}

uint64_t sub_85E94()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  sub_AA9C();

  return v6();
}

uint64_t sub_85F9C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_logger;
  v2 = sub_A43D4();
  sub_18594(v2);
  (*(v3 + 8))(v0 + v1);
  sub_865E8(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingFlowPlugin_signpostId);

  return v0;
}

uint64_t sub_8601C()
{
  sub_85F9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DailyBriefingFlowPlugin()
{
  result = qword_DF948;
  if (!qword_DF948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_860C8()
{
  v0 = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_8619C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_8619C()
{
  if (!qword_DF958)
  {
    sub_A43A4();
    v0 = sub_A4A24();
    if (!v1)
    {
      atomic_store(v0, &qword_DF958);
    }
  }
}

uint64_t sub_86218@<X0>(uint64_t *a1@<X8>)
{
  result = sub_840D4();
  *a1 = result;
  return result;
}

uint64_t sub_862B4()
{
  sub_5950();
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v1 = *(v0 + 16);
  v2 = sub_A43D4();
  sub_48A4(v2, qword_E0BA0);
  sub_81094(0xD000000000000023, 0x80000000000B41D0, 0xD000000000000035, 0x80000000000B4200, 0x2865747563657865, 0xE900000000000029);
  sub_A3664();
  sub_AA9C();

  return v3();
}

uint64_t sub_86398()
{
  type metadata accessor for NoOpFlow();
  sub_86950();
  sub_8688C(v0, v1, v2);
  return sub_A3334();
}

uint64_t sub_8645C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_A648;

  return sub_86294(a1);
}

uint64_t sub_864F4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NoOpFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_86578(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DFAD8, &qword_AB858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_865E8(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DFAD8, &qword_AB858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_86650(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DFAD8, &qword_AB858);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_866C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_86700(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_A648;

  return sub_85D84(a1, v4, v5, v7, v6);
}

unint64_t sub_867C0()
{
  result = qword_DFAE0;
  if (!qword_DFAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DFAE0);
  }

  return result;
}

uint64_t sub_86804()
{
  sub_761C((v0 + 16));
  sub_86980();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_8688C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_86904()
{
  v2 = *(v0 - 216);
  v3 = *(v0 - 208);
  *(v0 - 216) = 0;

  return sub_931E8(4, 3, v2, v3);
}

void sub_86974()
{
  v1 = *(v0 - 208);
  *(v0 - 216) = *(v0 - 216);
  *(v0 - 208) = v1;
}

uint64_t sub_8698C(uint64_t a1)
{
  *(v1 + 184) = a1;

  return sub_39FC8(v2 - 256, a1 + 16);
}

void sub_869AC()
{
  v1 = v0[11];
  v2 = v0[12] | 0x8000000000000000;
  v3 = v0[8] | 0x8000000000000000;
  v4 = v0[9] + v0[10];
}

uint64_t sub_869F8()
{
  if (qword_DAA88 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaPlayerIntent();
  sub_87780(&qword_DFB08);
  sub_A3C14();
  if (v3)
  {
    v0 = 0;
  }

  else
  {
    if (qword_DAA90 != -1)
    {
      swift_once();
    }

    sub_A3C14();
    v0 = v2 ^ 1;
  }

  return v0 & 1;
}

uint64_t sub_86B04()
{
  if (qword_DAA80 != -1)
  {
    swift_once();
  }
}

uint64_t sub_86B60()
{
  sub_4BF0(&qword_DC2D8, &qword_A7D90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_A9830;
  if (qword_DAA88 != -1)
  {
    swift_once();
  }

  v1 = qword_DFAF8;
  *(v0 + 56) = sub_4BF0(&qword_DFB18, qword_AB878);
  *(v0 + 64) = sub_1E530(&qword_DFC40, &qword_DFB18, qword_AB878);
  *(v0 + 32) = v1;
  v2 = qword_DAA90;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_DFB00;
  *(v0 + 96) = sub_4BF0(&qword_DFB10, &qword_AB870);
  *(v0 + 104) = sub_1E530(&qword_DFC48, &qword_DFB10, &qword_AB870);
  *(v0 + 72) = v3;
  v4 = sub_A3AD4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  result = sub_A3AC4();
  qword_DFAF0 = result;
  return result;
}

uint64_t sub_86D20()
{
  v0 = sub_4BF0(&qword_DFB18, qword_AB878);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_A3AE4();
  qword_DFAF8 = result;
  return result;
}

uint64_t sub_86D90()
{
  v0 = sub_4BF0(&qword_DFB10, &qword_AB870);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_A3AE4();
  qword_DFB00 = result;
  return result;
}

uint64_t sub_86DF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_A4004();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_86E78(uint64_t a1)
{
  v2 = sub_87780(&qword_DFC08);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_86EE0(uint64_t a1)
{
  v2 = sub_87780(&qword_DFC08);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_86F38(uint64_t a1)
{
  v2 = sub_87780(&qword_DFC08);

  return NLIntentWrapper.description.getter(a1, v2);
}

BOOL sub_86F90(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFC78;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  return v4 != 0;
}

BOOL sub_87000@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_86F90(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for MediaPlayerIntent()
{
  result = qword_DFB78;
  if (!qword_DFB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_870DC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFCD8;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  return v4 != 0;
}

BOOL sub_8714C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_870DC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

_BYTE *sub_871A4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x87240);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_8728C(uint64_t a1, uint64_t a2)
{
  v4 = sub_A4004();

  return sub_CF2C(a1, a2, v4);
}

uint64_t sub_872E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_A4004();

  return sub_A924(a1, a2, a2, v4);
}

uint64_t sub_87334()
{
  result = sub_A4004();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_8740C()
{
  result = qword_DFBB8;
  if (!qword_DFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBB8);
  }

  return result;
}

uint64_t sub_874B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v10, v11, v12);
}

unint64_t sub_87588()
{
  result = qword_DFBD0;
  if (!qword_DFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBD0);
  }

  return result;
}

unint64_t sub_875E0()
{
  result = qword_DFBD8;
  if (!qword_DFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBD8);
  }

  return result;
}

unint64_t sub_87638()
{
  result = qword_DFBE0;
  if (!qword_DFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBE0);
  }

  return result;
}

unint64_t sub_876D4()
{
  result = qword_DFBF8;
  if (!qword_DFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBF8);
  }

  return result;
}

unint64_t sub_8772C()
{
  result = qword_DFC00;
  if (!qword_DFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC00);
  }

  return result;
}

uint64_t sub_87780(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MediaPlayerIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_877C4()
{
  result = qword_DFC10;
  if (!qword_DFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC10);
  }

  return result;
}

unint64_t sub_87818()
{
  result = qword_DFC18;
  if (!qword_DFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC18);
  }

  return result;
}

unint64_t sub_8786C()
{
  result = qword_DFC20;
  if (!qword_DFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC20);
  }

  return result;
}

unint64_t sub_878C0()
{
  result = qword_DFC28;
  if (!qword_DFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC28);
  }

  return result;
}

unint64_t sub_87914()
{
  result = qword_DFC30;
  if (!qword_DFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC30);
  }

  return result;
}

unint64_t sub_87968()
{
  result = qword_DFC38;
  if (!qword_DFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC38);
  }

  return result;
}

uint64_t sub_879D0()
{
  type metadata accessor for DBSiriKitEventSender();
  inited = swift_initStaticObject();
  sub_A37F4();
  v1 = type metadata accessor for DailyBriefingOutputPublisher();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  result = sub_898D4(inited, &v6, v4);
  qword_E0E28 = result;
  return result;
}

uint64_t sub_87A40(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 216) = a4;
  *(v5 + 224) = v4;
  *(v5 + 145) = a2;
  *(v5 + 200) = a1;
  *(v5 + 208) = a3;
  v6 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v6);
  v8 = *(v7 + 64);
  *(v5 + 232) = sub_10AAC();
  v9 = sub_A3944();
  *(v5 + 240) = v9;
  sub_5940(v9);
  *(v5 + 248) = v10;
  v12 = *(v11 + 64);
  *(v5 + 256) = sub_10AAC();
  v13 = sub_A4C34();
  *(v5 + 264) = v13;
  sub_5940(v13);
  *(v5 + 272) = v14;
  v16 = *(v15 + 64);
  *(v5 + 280) = sub_10AAC();
  v17 = sub_A4C24();
  *(v5 + 288) = v17;
  sub_5940(v17);
  *(v5 + 296) = v18;
  v20 = *(v19 + 64) + 15;
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  v21 = sub_A44F4();
  *(v5 + 320) = v21;
  sub_5940(v21);
  *(v5 + 328) = v22;
  v24 = *(v23 + 64);
  *(v5 + 336) = sub_10AAC();
  v25 = sub_4BF0(&qword_DFD68, &unk_ABCA0);
  sub_10A88(v25);
  v27 = *(v26 + 64) + 15;
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  v28 = sub_A43D4();
  *(v5 + 360) = v28;
  sub_5940(v28);
  *(v5 + 368) = v29;
  v31 = *(v30 + 64);
  *(v5 + 376) = sub_10AAC();

  return _swift_task_switch(sub_87CA8, 0, 0);
}

uint64_t sub_87CA8()
{
  v1 = v0;
  v2 = v0[46];
  v3 = v0[44];
  v4 = v0[45];
  v53 = v0[47];
  v55 = v0[40];
  v5 = v0[28];
  v6 = v0[26];
  v7 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_logger;
  v1[48] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_logger;
  sub_A4B54(36);

  v8 = v6[3];
  v9 = v6[4];
  sub_7584(v6, v8);
  v59._countAndFlagsBits = (*(v9 + 8))(v8, v9);
  sub_A46D4(v59);

  v60._countAndFlagsBits = 0xD000000000000021;
  v60._object = 0x80000000000B45F0;
  sub_A46D4(v60);
  sub_89BA8();
  sub_810AC(v10, v11, v12, v13, v14, v15);

  v57 = sub_88F70();
  (*(v2 + 16))(v53, v5 + v7, v4);
  v16 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_previousDialogRenderingCompletedAt;
  v1[49] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_previousDialogRenderingCompletedAt;
  sub_1A684();
  swift_beginAccess();
  sub_B8BC(v5 + v16, v3, &qword_DFD68, &unk_ABCA0);
  v17 = sub_CF2C(v3, 1, v55);
  v18 = v1[44];
  if (v17)
  {
    sub_89AA0(v1[44]);
    v19 = 0;
  }

  else
  {
    v20 = v1[41];
    v21 = v1[42];
    v22 = v1[40];
    (*(v20 + 16))(v21, v1[44], v22);
    sub_89AA0(v18);
    v19 = sub_A44E4();
    (*(v20 + 8))(v21, v22);
  }

  v23 = v1[46];
  v24 = v1[47];
  v25 = v1[38];
  v26 = v1[37];
  v52 = v1[39];
  v54 = v1[36];
  v56 = v1[35];
  v49 = v1[28];
  v50 = v1[45];
  v51 = v1[26];
  v1[21] = v19;
  *(v1 + 176) = v17 != 0;
  sub_4BF0(&qword_DFD70, qword_ABCB0);
  v61._countAndFlagsBits = sub_A4644();
  sub_A46D4(v61);

  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  sub_A46D4(v62);

  sub_89BA8();
  sub_810C4(v27, v28, v29, v30, v31, v32);

  (*(v23 + 8))(v24, v50);
  v33 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_siriKitEventSender;
  v1[50] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_siriKitEventSender;
  v34 = *sub_7584((v49 + v33), *(v49 + v33 + 24));
  v36 = v6[3];
  v35 = v6[4];
  sub_7584(v51, v36);
  sub_1A684();
  sub_4DB30(v37, v38, v39, v40, v34, v36, v35);
  sub_A4C04();
  sub_8DD08(v57);
  sub_A4C14();
  v41 = *(v26 + 8);
  v1[51] = v41;
  v1[52] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v25, v54);
  v1[17] = 0;
  v1[16] = 0;
  *(v1 + 144) = 1;
  sub_A4EB4();
  v42 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
  v43 = swift_task_alloc();
  v1[53] = v43;
  v44 = sub_89B08(&qword_DFD78, &type metadata accessor for ContinuousClock);
  *v43 = v1;
  v43[1] = sub_88118;
  v45 = v1[39];
  v46 = v1[35];
  v47 = v1[33];

  return static Task<>.sleep<A>(until:tolerance:clock:)(v45, v1 + 16, v46, v47, v44);
}

uint64_t sub_88118()
{
  v2 = *v1;
  sub_25540();
  *v4 = v3;
  v6 = v5[53];
  v7 = v5[52];
  v8 = v5[51];
  v9 = v5[39];
  v10 = v5[36];
  v11 = v5[35];
  v12 = v5[34];
  v13 = v5[33];
  v14 = *v1;
  sub_25540();
  *v15 = v14;
  *(v16 + 432) = v0;

  (*(v12 + 8))(v11, v13);
  v8(v9, v10);
  if (v0)
  {
    v17 = sub_88884;
  }

  else
  {
    v17 = sub_882EC;
  }

  return _swift_task_switch(v17, 0, 0);
}

uint64_t sub_882EC()
{
  if (*(v0 + 145))
  {
    v1 = *(v0 + 224) + *(v0 + 384);
    sub_89BA8();
    sub_810AC(v2, v3, v4, v5, v6, v7);
    sub_89B50();

    sub_255F0();

    return v8(0, 0);
  }

  else
  {
    v11 = *(v0 + 248);
    v10 = *(v0 + 256);
    v13 = *(v0 + 232);
    v12 = *(v0 + 240);
    v14 = *(v0 + 216);
    v15 = *(v0 + 224);
    v16 = *(v0 + 200);
    v17 = v15 + *(v0 + 384);
    sub_89BA8();
    sub_810AC(v18, v19, v20, v21, v22, v23);
    sub_4BF0(&qword_DBB70, &unk_A6E90);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_A6E80;
    *(v24 + 32) = v16;
    sub_B8BC(v14, v13, &qword_DB5A8, &unk_A67C0);
    v25 = v16;
    sub_A3934();
    v26 = *(v15 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_publisher + 24);
    v27 = *(v15 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_publisher + 32);
    sub_7584((v15 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_publisher), v26);
    *(v0 + 40) = v12;
    *(v0 + 48) = &protocol witness table for AceOutput;
    v28 = sub_76B0((v0 + 16));
    (*(v11 + 16))(v28, v10, v12);
    v29 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
    v30 = swift_task_alloc();
    *(v0 + 440) = v30;
    *v30 = v0;
    v30[1] = sub_885A4;

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 16, v26, v27);
  }
}

uint64_t sub_885A4()
{
  v2 = *v1;
  sub_25540();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *v1;
  sub_25540();
  *v7 = v6;
  *(v2 + 448) = v0;

  if (v0)
  {
    v8 = sub_88A18;
  }

  else
  {
    sub_761C((v2 + 16));
    v8 = sub_886B8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_886B8()
{
  v1 = v0[49];
  v2 = v0[43];
  v3 = v0[40];
  v4 = v0[31];
  v19 = v0[32];
  v5 = v0[30];
  v6 = v0[28];
  v7 = v0[26];
  v8 = (v6 + v0[50]);
  v9 = v6 + v0[48];
  sub_810AC(0xD00000000000001DLL, 0x80000000000B4700, 0xD00000000000003ALL, 0x80000000000B4500, 0xD00000000000003BLL, 0x80000000000B4620);
  sub_A44C4();
  sub_A924(v2, 0, 1, v3);
  swift_beginAccess();
  sub_89A30(v2, v6 + v1);
  swift_endAccess();
  v10 = *sub_7584(v8, v8[3]);
  v11 = v7[3];
  v12 = v7[4];
  sub_7584(v7, v11);
  sub_1A684();
  sub_4DB30(v13, v14, v15, v16, v10, v11, v12);
  (*(v4 + 8))(v19, v5);
  sub_89B50();

  sub_255F0();

  return v17(0, 0);
}

uint64_t sub_88884()
{
  v1 = v0[54];
  v2 = v0[48];
  v3 = v0[28];
  sub_A4B54(47);
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  v7._object = 0x80000000000B4690;
  v7._countAndFlagsBits = 0xD00000000000002DLL;
  sub_A46D4(v7);
  v0[23] = v1;
  sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_A4C44();
  sub_81094(v0[19], v0[20], 0xD00000000000003ALL, 0x80000000000B4500, 0xD00000000000003BLL, 0x80000000000B4620);

  sub_89B7C();

  sub_255F0();

  return v4(v1, 1);
}

uint64_t sub_88A18()
{
  v1 = v0[56];
  v2 = v0[48];
  v3 = v0[31];
  v10 = v0[30];
  v11 = v0[32];
  v4 = v0[28];
  sub_761C(v0 + 2);
  sub_A4B54(40);

  swift_getErrorValue();
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[12];
  v13._countAndFlagsBits = sub_A4EC4();
  sub_A46D4(v13);

  sub_81094(0xD000000000000026, 0x80000000000B45A0, 0xD00000000000003ALL, 0x80000000000B4500, 0xD00000000000003BLL, 0x80000000000B4620);

  (*(v3 + 8))(v11, v10);
  sub_89B7C();

  sub_255F0();

  return v8(v1, 1);
}

uint64_t sub_88BB4(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return _swift_task_switch(sub_88BD4, 0, 0);
}

uint64_t sub_88BD4()
{
  v1 = v0[11];
  v2 = (v0[12] + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_publisher);
  v3 = v2[3];
  v4 = v2[4];
  sub_7584(v2, v3);
  v5 = sub_A3944();
  v0[5] = v5;
  v0[6] = &protocol witness table for AceOutput;
  v6 = sub_76B0(v0 + 2);
  (*(*(v5 - 8) + 16))(v6, v1, v5);
  v7 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_88CF8;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v3, v4);
}

uint64_t sub_88CF8()
{
  v2 = *v1;
  sub_25540();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  sub_25540();
  *v7 = v6;
  *(v2 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_88E2C, 0, 0);
  }

  else
  {
    sub_761C((v2 + 16));
    v8 = *(v6 + 8);

    return v8();
  }
}

uint64_t sub_88E2C()
{
  v1 = v0[14];
  v2 = v0[12];
  sub_761C(v0 + 2);
  sub_A4B54(40);

  swift_getErrorValue();
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[9];
  v9._countAndFlagsBits = sub_A4EC4();
  sub_A46D4(v9);

  sub_81094(0xD000000000000026, 0x80000000000B45A0, 0xD00000000000003ALL, 0x80000000000B4500, 0xD000000000000010, 0x80000000000B45D0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_88F70()
{
  v1 = v0;
  v2 = sub_A4444();
  v3 = sub_591C(v2);
  v49 = v4;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v3);
  v48 = (v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = v43 - v9;
  v11 = sub_4BF0(&qword_DFD68, &unk_ABCA0);
  v12 = sub_10A88(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v43 - v15;
  v17 = sub_A44F4();
  v18 = sub_591C(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v18);
  v25 = v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v43 - v26;
  v28 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_previousDialogRenderingCompletedAt;
  sub_1A684();
  swift_beginAccess();
  v29 = v1 + v28;
  v30 = v17;
  sub_B8BC(v29, v16, &qword_DFD68, &unk_ABCA0);
  if (sub_CF2C(v16, 1, v17) == 1)
  {
    sub_89AA0(v16);
    sub_810C4(0xD000000000000036, 0x80000000000B4540, 0xD00000000000003ALL, 0x80000000000B4500, 0xD000000000000014, 0x80000000000B4580);
    return 0;
  }

  (*(v20 + 32))(v27, v16, v17);
  sub_A44C4();
  sub_A44D4();
  v32 = *(v20 + 8);
  v32(v25, v17);
  v33 = sub_1490C();
  v34 = v49;
  v35 = v49 + 8;
  v43[0] = *(v49 + 8);
  result = (v43[0])(v10, v2);
  v46 = v27;
  v47 = v20 + 8;
  v44 = v32;
  v45 = v30;
  v43[1] = v35;
  if (v33 > 0)
  {
    v36 = 0;
    goto LABEL_6;
  }

  v36 = -v33;
  if (!__OFSUB__(0, v33))
  {
LABEL_6:
    v37 = v48;
    *v48 = v36;
    (*(v34 + 104))(v37, enum case for DispatchTimeInterval.milliseconds(_:), v2);
    v51[0] = 0;
    v51[1] = 0xE000000000000000;
    sub_A4B54(17);

    strcpy(v51, "Time elapsed: ");
    HIBYTE(v51[1]) = -18;
    v50 = v33;
    v52._countAndFlagsBits = sub_A4E24();
    sub_A46D4(v52);

    v53._countAndFlagsBits = 44;
    v53._object = 0xE100000000000000;
    sub_A46D4(v53);
    v38 = v51[0];
    v39 = v51[1];
    strcpy(v51, "Delay time: ");
    BYTE5(v51[1]) = 0;
    HIWORD(v51[1]) = -5120;
    (*(v34 + 16))(v10, v37, v2);
    v54._countAndFlagsBits = sub_A4644();
    sub_A46D4(v54);

    v40 = v51[0];
    v41 = v51[1];
    v51[0] = v38;
    v51[1] = v39;

    v55._countAndFlagsBits = v40;
    v55._object = v41;
    sub_A46D4(v55);

    sub_810C4(v51[0], v51[1], 0xD00000000000003ALL, 0x80000000000B4500, 0xD000000000000014, 0x80000000000B4580);

    v42 = sub_14AB4();
    (v43[0])(v37, v2);
    result = v44(v46, v45);
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v42 > -9.22337204e18)
    {
      if (v42 < 9.22337204e18)
      {
        return v42;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_89494()
{
  v1 = sub_4BF0(&qword_DFD68, &unk_ABCA0);
  v2 = sub_10A88(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = sub_A44F4();
  sub_A924(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_previousDialogRenderingCompletedAt;
  sub_89BB4();
  sub_89A30(v6, v0 + v8);
  swift_endAccess();
  sub_810AC(0xD000000000000033, 0x80000000000B44C0, 0xD00000000000003ALL, 0x80000000000B4500, 0x5368736572666572, 0xEE00292865746174);
}

uint64_t sub_895A8()
{
  v1 = sub_4BF0(&qword_DFD68, &unk_ABCA0);
  v2 = sub_10A88(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  sub_A44C4();
  v7 = sub_A44F4();
  sub_A924(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_previousDialogRenderingCompletedAt;
  sub_89BB4();
  sub_89A30(v6, v0 + v8);
  return swift_endAccess();
}

uint64_t sub_89660()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_publisher));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_siriKitEventSender));
  sub_89AA0(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_previousDialogRenderingCompletedAt);
  return v0;
}

uint64_t sub_896F0()
{
  sub_89660();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DailyBriefingOutputPublisher()
{
  result = qword_DFC80;
  if (!qword_DFC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_8979C()
{
  v0 = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_8987C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_8987C()
{
  if (!qword_DFC90)
  {
    sub_A44F4();
    v0 = sub_A4A24();
    if (!v1)
    {
      atomic_store(v0, &qword_DFC90);
    }
  }
}

uint64_t sub_898D4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v13 = type metadata accessor for DBSiriKitEventSender();
  v14 = &off_D1B20;
  v15 = sub_89B08(&qword_DB598, type metadata accessor for DBSiriKitEventSender);
  *&v12 = a1;
  v6 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_logger;
  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v7 = sub_A43D4();
  v8 = sub_48A4(v7, qword_E0BA0);
  (*(*(v7 - 8) + 16))(a3 + v6, v8, v7);
  v9 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_previousDialogRenderingCompletedAt;
  v10 = sub_A44F4();
  sub_A924(a3 + v9, 1, 1, v10);
  sub_A82C(&v12, (a3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_siriKitEventSender));
  sub_A814(a2, a3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_publisher);
  return a3;
}

uint64_t sub_89A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DFD68, &unk_ABCA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_89AA0(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DFD68, &unk_ABCA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_89B08(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_89B50()
{
  v2 = v0[47];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[42];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[35];
  v9 = v0[32];
  v10 = v0[29];
}

uint64_t sub_89B7C()
{
  v2 = v0[47];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[35];
  v9 = v0[32];
  v10 = v0[29];
}

uint64_t sub_89BB4()
{

  return swift_beginAccess();
}

BOOL sub_89C14(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFD38;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  return v4 != 0;
}

BOOL sub_89C68@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_89C14(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MapsDialogs(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x89D80);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_89DBC()
{
  result = qword_DFD80;
  if (!qword_DFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD80);
  }

  return result;
}

uint64_t sub_89E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v11 = sub_10A88(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_8C6DC(v14, v24);
  v15 = sub_A4814();
  v16 = sub_CF2C(v5, 1, v15);

  if (v16 == 1)
  {
    sub_183F0(v5);
  }

  else
  {
    sub_A4804();
    sub_18594(v15);
    (*(v17 + 8))(v5, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_183F0(a3);
    sub_8C6B4();
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_A47C4();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_A4674();
  sub_8C6B4();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;

  v22 = swift_task_create();

  sub_183F0(a3);

  return v22;
}

uint64_t sub_8A090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v11 = sub_10A88(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_8C6DC(v14, v24);
  v15 = sub_A4814();
  v16 = sub_CF2C(v5, 1, v15);

  if (v16 == 1)
  {
    sub_183F0(v5);
  }

  else
  {
    sub_A4804();
    sub_18594(v15);
    (*(v17 + 8))(v5, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_183F0(a3);
    sub_8C6B4();
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    sub_A3684();
    return swift_task_create();
  }

  swift_getObjectType();
  sub_A47C4();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_A4674();
  sub_8C6B4();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  sub_A3684();

  v22 = swift_task_create();

  sub_183F0(a3);

  return v22;
}

uint64_t sub_8A31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_18380(a3, v26 - v11);
  v13 = sub_A4814();
  v14 = sub_CF2C(v12, 1, v13);

  if (v14 == 1)
  {
    sub_183F0(v12);
  }

  else
  {
    sub_A4804();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_A47C4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_A4674() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_4BF0(&qword_DC738, &qword_AAF90);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_183F0(a3);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_183F0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_4BF0(&qword_DC738, &qword_AAF90);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_8A5FC()
{
  type metadata accessor for InitialFlow();
  sub_8C4C8(&qword_DD100, type metadata accessor for InitialFlow);
  return sub_A3334();
}

uint64_t sub_8A68C()
{
  sub_5950();
  v1[121] = v0;
  v1[120] = v2;
  v3 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  sub_10A88(v3);
  v5 = *(v4 + 64) + 15;
  v1[122] = swift_task_alloc();
  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_8A71C()
{
  v1 = v0[121];
  v0[123] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_logger;
  sub_AA40();
  sub_810AC(0xD000000000000013, v2 | 0x8000000000000000, v3 + 22, v4 | 0x8000000000000000, v5, 0xE900000000000029);
  v6 = *sub_7584((v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_siriKitEventSender), *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_siriKitEventSender + 24));
  sub_931E8(131, 4, 0, 0);
  sub_4D424();

  v7 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_aceService;
  v0[124] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_aceService;
  v8 = (v1 + v7);
  v9 = *(v1 + v7 + 24);
  v10 = *(v1 + v7 + 32);
  sub_7584(v8, v9);
  v0[125] = sub_A37C4();
  v0[126] = v11;
  if (qword_DA830 != -1)
  {
    swift_once();
  }

  v0[127] = qword_E0600;

  v12 = swift_task_alloc();
  v0[128] = v12;
  *v12 = v0;
  v12[1] = sub_8A8EC;

  return sub_2970();
}

uint64_t sub_8A8EC()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 1024);
  v3 = *(v1 + 1016);
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_8A9F8()
{
  sub_AB40();
  if (qword_DA890 != -1)
  {
    swift_once();
  }

  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[122];
  v0[129] = qword_E0798;
  sub_1EFFC(v2, v1);

  v4 = sub_A4814();
  v0[130] = v4;
  sub_A924(v3, 1, 1, v4);
  sub_8C6B4();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = sub_8C6CC();
  sub_89E10(v6, v7, v3, v8, v9);

  if (qword_DA8C8 != -1)
  {
    swift_once();
  }

  v10 = qword_E08A0;
  v0[131] = qword_E08A0;
  v11 = v10[10];
  v12 = v10[11];
  v13 = v10[12];
  v10[10] = 0;
  v10[11] = 0;
  v10[12] = 0;
  sub_2F2F4(v11, v12);
  if (qword_DAA98 != -1)
  {
    swift_once();
  }

  v14 = v0[121];
  v0[132] = qword_E0E28;
  sub_89494();
  sub_7584((v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_requestOriginUtil), *(v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_requestOriginUtil + 24));
  v15 = swift_task_alloc();
  v0[133] = v15;
  *v15 = v0;
  v15[1] = sub_8ABE4;

  return sub_39A18();
}

uint64_t sub_8ABE4()
{
  sub_5950();
  sub_AAA8();
  v2 = v1;
  v3 = *(v1 + 1064);
  v11 = *v0;
  *(v2 + 1072) = v4;
  *(v2 + 1080) = v5;
  *(v2 + 337) = v6;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_8ACDC()
{
  v79 = v0;
  v1 = *(v0 + 968);
  sub_8B89C(*(v0 + 1072), *(v0 + 1080), *(v0 + 337));
  v2 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_flowSpecs);
  v3 = *(v2 + 16);
  v77 = v0;
  if (v3)
  {
    v4 = *(v0 + 968);
    sub_A4BD4();
    v70 = *(v4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_queue);
    v72 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_deviceState;
    v75 = v4;
    v5 = (v2 + 32);
    v68 = *(v4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_templatingService);
    do
    {
      v6 = *v5;
      sub_79468(*(v0 + 968) + *(v0 + 992), v0 + 672);
      sub_79468(v75 + v72, v0 + 712);
      v7 = qword_DA838;
      v76 = v70;

      if (v7 != -1)
      {
        sub_8C680();
        swift_once();
      }

      v8 = *(v0 + 1080);
      v9 = *(v0 + 1072);
      v10 = qword_E0608;
      v11 = *(v77 + 337);
      v12 = type metadata accessor for OfflineStateProvider();
      v13 = swift_allocObject();
      v78[3] = v12;
      v78[4] = &off_D29E8;
      v78[0] = v13;
      v14 = *(v6 + 256);

      v0 = v77;
      v14(v76, v9, v8, v11, v77 + 672, v77 + 712, v10, v68, v78);
      sub_A4BB4();
      v15 = _swiftEmptyArrayStorage[2];
      sub_A4BE4();
      sub_A4BF4();
      sub_A4BC4();
      ++v5;
      --v3;
    }

    while (v3);
  }

  v16 = *(v0 + 1040);
  v17 = *(v0 + 1032);
  v18 = *(v0 + 992);
  v19 = *(v0 + 976);
  v20 = *(v0 + 968);
  v21 = type metadata accessor for DBExecutor(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  sub_16364(v24);
  v26 = v25;
  sub_A924(v19, 1, 1, v16);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v26;

  v28 = sub_8C6CC();
  v29 = v19;
  v30 = v20;
  sub_89E10(v28, v31, v29, v32, v27);

  sub_79468(v20 + v18, v0 + 40);
  v33 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_deviceState;
  sub_79468(v30 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_deviceState, v0 + 80);
  *(v0 + 144) = type metadata accessor for AppDetecter();
  *(v0 + 152) = &off_D0F20;
  *(v0 + 120) = v17;
  v34 = sub_A3584();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();

  v67 = sub_A3574();
  if (qword_DA838 != -1)
  {
    sub_8C680();
    swift_once();
  }

  v66 = *(v0 + 337);
  v37 = *(v0 + 1080);
  v38 = *(v0 + 1072);
  v39 = *(v0 + 1056);
  v40 = *(v77 + 1048);
  v71 = *(v77 + 984);
  v41 = *(v77 + 968);
  v42 = qword_E0608;
  sub_79468(v30 + v33, v77 + 752);
  v73 = v30;
  v43 = *(v41 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_templatingService);
  v69 = v33;
  v44 = type metadata accessor for TemplatingProvider();
  swift_allocObject();
  v45 = sub_5E154((v77 + 752), v43);
  *(v77 + 200) = v44;
  *(v77 + 208) = &off_D1F98;
  *(v77 + 176) = v45;
  *(v77 + 240) = type metadata accessor for AMSSearchService();
  *(v77 + 248) = &off_D1398;
  *(v77 + 216) = v40;
  *(v77 + 280) = type metadata accessor for DailyBriefingOutputPublisher();
  *(v77 + 288) = &off_D2D00;
  *(v77 + 256) = v39;
  sub_79468(v41 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_offlineStateProvider, v77 + 296);
  v46 = *(v41 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_platformSupportsNews);
  *(v77 + 16) = v38;
  *(v77 + 24) = v37;
  *(v77 + 32) = v66;
  *(v77 + 160) = v67;
  *(v77 + 168) = v42;
  *(v77 + 336) = v46;
  swift_retain_n();

  sub_AA40();
  sub_810AC(0xD000000000000019, 0x80000000000B47A0, v47 + 16, 0x80000000000B4770, v48, 0xE900000000000029);
  sub_1A2C4(v77 + 16, v77 + 344);
  sub_79468(v73 + v69, v77 + 792);
  v74 = v44;
  swift_allocObject();
  v49 = sub_5E154((v77 + 792), v43);
  v50 = qword_DA8A0;

  if (v50 != -1)
  {
    swift_once();
  }

  sub_79468(&unk_E07B0, v77 + 832);
  sub_A7C4(v77 + 832, *(v77 + 856));
  *(v77 + 896) = &type metadata for CATProvider;
  *(v77 + 904) = &off_D0FD0;
  v52 = type metadata accessor for GreetingFlow();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  v55 = swift_allocObject();
  sub_A7C4(v77 + 872, &type metadata for CATProvider);
  *(v77 + 936) = &type metadata for CATProvider;
  *(v77 + 944) = &off_D0FD0;
  v56 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_logger;
  if (qword_DA9F0 != -1)
  {
    swift_once();
  }

  v57 = *(v77 + 976);
  v58 = *(v77 + 968);
  v59 = *(v77 + 960);
  v60 = sub_A43D4();
  sub_48A4(v60, qword_E0C00);
  sub_18594(v60);
  (*(v61 + 16))(v55 + v56);
  *(v55 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_name) = 0;
  *(v55 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_state) = 0;
  sub_1A2C4(v77 + 344, v55 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_flowParams);
  *(v55 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_allFlowSpecs) = _swiftEmptyArrayStorage;
  *(v55 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_executor) = v51;
  v62 = (v55 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_templatingProvider);
  v62[3] = v74;
  v62[4] = &off_D1F98;
  *v62 = v49;
  sub_1A564(v77 + 344);
  sub_A814((v77 + 912), v55 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_catProvider);
  sub_761C((v77 + 872));
  sub_761C((v77 + 832));
  *(v77 + 952) = v55;
  sub_8C6B4();
  v63 = swift_allocObject();
  *(v63 + 16) = sub_8C430;
  *(v63 + 24) = v58;
  sub_8C4C8(&qword_DF4B8, type metadata accessor for GreetingFlow);

  sub_A3624();

  sub_1A564(v77 + 16);

  sub_AA9C();

  return v64();
}

uint64_t sub_8B510()
{
  sub_5950();
  if (qword_DA950 != -1)
  {
    sub_8C694();
  }

  v1 = qword_E0A08;
  *(v0 + 16) = qword_E0A08;

  return _swift_task_switch(sub_8B5A4, v1, 0);
}

uint64_t sub_8B5A4()
{
  sub_5950();
  v1 = *(v0 + 16);
  sub_7BC0C();

  sub_AA9C();

  return v2();
}

uint64_t sub_8B624()
{
  sub_5950();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_callbackState);
  *(v0 + 24) = v1;

  return _swift_task_switch(sub_8B6A4, v1, 0);
}

uint64_t sub_8B6A4()
{
  sub_5950();
  v1 = v0[3];
  sub_160F4();

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_8B740;
  v3 = v0[2];

  return sub_16664();
}

uint64_t sub_8B740()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  sub_AA9C();

  return v5();
}

uint64_t sub_8B820(uint64_t a1)
{
  v1 = *sub_7584((a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_siriKitEventSender), *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_siriKitEventSender + 24));
  sub_931E8(131, 4, 0, 0);
  sub_4D424();
}

uint64_t sub_8B89C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = a3;
  v6 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v7 = sub_10A88(v6);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = &v20 - v11;
  if (v5 == 1)
  {
    v13 = [objc_allocWithZone(CLLocation) initWithLatitude:*&a1 longitude:*&a2];
    MapsSuggestionsSetMostRecentLocation();

    v14 = sub_A4814();
    sub_A924(v12, 1, 1, v14);
    sub_8C6B4();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v16 = sub_8C6CC();
    sub_8A31C(v16, v17, v12, v18, v19);
  }

  return result;
}

uint64_t sub_8B9D0()
{
  sub_5950();
  if (qword_DA950 != -1)
  {
    sub_8C694();
  }

  *(v0 + 88) = qword_E0A08;

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_8BA98;

  return sub_7B77C();
}

uint64_t sub_8BA98()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_8BB98()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v1[2] = *(v0 + 48);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  sub_AA9C();
  return v5();
}

uint64_t sub_8BBCC()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_logger;
  v2 = sub_A43D4();
  sub_18594(v2);
  (*(v3 + 8))(v0 + v1);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_aceService));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_deviceState));
  v4 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_flowSpecs);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_siriKitEventSender));
  v5 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_templatingService);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_offlineStateProvider));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_outputPublisherAsync));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_requestOriginUtil));
  return v0;
}

uint64_t sub_8BCB8()
{
  sub_8BBCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for InitialFlow()
{
  result = qword_DFDB0;
  if (!qword_DFDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8BD64()
{
  result = sub_A43D4();
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

uint64_t sub_8BE68()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_A648;

  return sub_8A68C();
}

uint64_t sub_8BF04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InitialFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_8BF40()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_8C6B4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_8BF74()
{
  sub_AB40();
  sub_8C6C0();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_A648;
  v3 = sub_8C66C();

  return sub_8B9B0(v3);
}

uint64_t sub_8C004(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3FF68;

  return v7(a1);
}

uint64_t sub_8C0FC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3D378;

  return v7(a1);
}

uint64_t sub_8C1F4()
{
  sub_AB40();
  sub_8C6C0();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v3 = sub_8C64C(v1);

  return v4(v3);
}

uint64_t sub_8C284()
{
  v1 = *(v0 + 24);

  sub_8C6B4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_8C2B8()
{
  sub_AB40();
  sub_8C6C0();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_18540;
  sub_8C66C();

  return sub_8B4F4();
}

uint64_t sub_8C348()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8C388()
{
  sub_AB40();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_18584(v6);
  *v7 = v8;
  v7[1] = sub_18540;

  return sub_8B604(v2, v3, v4, v5);
}

uint64_t sub_8C438()
{
  sub_AB40();
  sub_8C6C0();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v3 = sub_8C64C(v1);

  return v4(v3);
}

uint64_t sub_8C4C8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8C510()
{
  sub_AB40();
  sub_8C6C0();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v3 = sub_8C64C(v1);

  return v4(v3);
}

uint64_t sub_8C5A0()
{
  sub_AB40();
  sub_8C6C0();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v3 = sub_8C64C(v1);

  return v4(v3);
}

uint64_t sub_8C64C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_8C694()
{

  return swift_once();
}

uint64_t sub_8C6DC@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_18380(v2, &a2 - a1);
}

uint64_t RREntity.init<A>(_:appBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = sub_4BF0(&qword_DFEB0, &qword_A93F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_4BF0(&qword_DD468, &qword_A9068);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - v14;
  v26 = a1;
  v16 = *(a3 + 8);
  if (!sub_8C9E8(a2, v16))
  {

LABEL_7:
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v20 = sub_A43D4();
    sub_48A4(v20, qword_E0BA0);
    sub_81094(0xD000000000000019, 0x80000000000B10B0, 0xD000000000000036, 0x80000000000B1040, 0xD000000000000014, 0x80000000000B10D0);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v26 = a1;
  (*(v16 + 16))(a2, v16);
  if (!v17)
  {

    goto LABEL_7;
  }

  v18 = sub_A43F4();
  sub_A924(v11, 1, 1, v18);
  sub_A4404();
  v19 = sub_A4434();
  sub_A924(v15, 0, 1, v19);
  if (!sub_CF2C(v15, 1, v19))
  {
    (*(*(v19 - 8) + 32))(a4, v15, v19);
    v22 = a4;
    v23 = 0;
    v21 = v19;
    return sub_A924(v22, v23, 1, v21);
  }

  sub_8CCB0(v15);
LABEL_10:
  v21 = sub_A4434();
  v22 = a4;
  v23 = 1;
  return sub_A924(v22, v23, 1, v21);
}

uint64_t sub_8C9E8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_A4A24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v28 - v8;
  (*(a2 + 24))(a1, a2);
  if (sub_CF2C(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v9, v5);
LABEL_6:
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v13 = sub_A43D4();
    sub_48A4(v13, qword_E0BA0);
    sub_4CA90();
    sub_4CA7C();
    sub_81094(v14, v15, v16, v17, v18, v19);
    return 0;
  }

  sub_A3BA4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = v29;
  v11 = sub_A3C34();
  if (!v11)
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v21 = sub_A43D4();
    sub_48A4(v21, qword_E0BA0);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_A4B54(28);

    v29 = 0xD00000000000001ALL;
    v30 = 0x80000000000B1130;
    v28[1] = v10;

    v31._countAndFlagsBits = sub_A4644();
    sub_A46D4(v31);

    sub_4CA90();
    sub_4CA7C();
    sub_81094(v22, v23, v24, v25, v26, v27);

    return 0;
  }

  v12 = v11;

  return v12;
}

uint64_t sub_8CCB0(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DD468, &qword_A9068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8CD18()
{
  v0 = sub_A41D4();
  sub_5D78(v0);
  sub_A41C4();
  sub_A2E54();
  sub_A41B4();

  v1 = sub_A41A4();

  return v1;
}

uint64_t sub_8CD90()
{
  v0 = sub_A4224();
  sub_5D78(v0);
  sub_A4214();
  sub_A4204();

  v1 = sub_A41F4();

  return v1;
}

void sub_8CE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_25714();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_A42E4();
  v25 = sub_10A88(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_AA54();
  v30 = v29 - v28;
  v31 = sub_4BF0(&qword_DD220, qword_A9B20);
  v32 = sub_10A88(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_36194();
  v37 = v35 - v36;
  __chkstk_darwin(v38);
  v40 = &a9 - v39;
  v41 = sub_A2EA4();
  v42 = sub_591C(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v42);
  sub_AA54();
  v49 = v48 - v47;
  v50 = 0;
  if ((sub_4CAE4() & 1) == 0)
  {
    v51 = [v23 temporalEventTrigger];
    if (v51)
    {
      v52 = v51;
      v53 = [v51 dateComponentsRange];

      v54 = [v53 startDate];
      if (v54)
      {
        sub_A2E74();

        v55 = 0;
      }

      else
      {
        v55 = 1;
      }

      sub_A924(v37, v55, 1, v41);
      sub_5C674(v37, v40);
      if (sub_CF2C(v40, 1, v41) != 1)
      {
        (*(v44 + 32))(v49, v40, v41);
        sub_A41E4();
        v50 = sub_8CD18();
        (*(v44 + 8))(v49, v41);
        goto LABEL_10;
      }
    }

    else
    {
      sub_A924(v40, 1, 1, v41);
    }

    sub_AD70(v40, &qword_DD220, qword_A9B20);
    v50 = 0;
  }

LABEL_10:
  v56 = [v23 title];
  v57 = [v56 spokenPhrase];

  sub_A45F4();
  sub_10A94();
  LOBYTE(v56) = sub_4CAE4();

  v58 = type metadata accessor for DBReminder();
  sub_5D78(v58);
  sub_B9A4(v30, v50, v56 & 1);
  sub_2569C();
}

void sub_8D0FC()
{
  sub_25714();
  v1 = v0;
  v2 = *v0;
  v4 = *(v0 + 8);
  v3 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = type metadata accessor for WeatherAirQuality();

  v10 = sub_99CA4(v1);
  v11 = *(v9 + 48);
  v12 = *(v9 + 52);
  swift_allocObject();
  sub_9A754(v2, v3, v5, v4, v6, v7, v8, v10 & 1);
  sub_8DC4C(v1);
  sub_2569C();
}

void sub_8D1AC()
{
  sub_25714();
  v1 = v0;
  v3 = v2;
  v41 = sub_A2EA4();
  v4 = sub_591C(v41);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_36194();
  v40 = v9 - v10;
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = sub_4BF0(&qword_DB760, qword_A6AE8);
  v15 = sub_10A88(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = sub_A42E4();
  v21 = sub_10A88(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_AA54();
  v26 = v25 - v24;
  v27 = type metadata accessor for CurrentWeatherForecast();
  sub_13894(*(v3 + v27[7]));
  sub_10A94();
  sub_A4164();
  v28 = sub_4BF0(&qword_DB768, &unk_A9650);
  (*(*(v28 - 8) + 16))(v19, v3, v28);
  sub_A924(v19, 0, 1, v28);
  v29 = sub_8D910(v19, v1);
  sub_AD70(v19, &qword_DB760, qword_A6AE8);
  if (v29)
  {
    v30 = v27[5];
    v39 = sub_8D910(v3 + v30, v1);
    v31 = v27[6];
    v38 = sub_8D910(v3 + v31, v1);
    v32 = *(v6 + 16);
    v33 = v41;
    v32(v13, v3 + v27[8], v41);
    LOBYTE(v30) = sub_C9CC(v3, v3 + v30, v13);
    v34 = sub_CC44(v3, v3 + v31, v13);
    v35 = v40;
    v32(v40, v13, v33);
    v36 = sub_67C20(v35);
    sub_8DCA0(v3);
    v37 = type metadata accessor for WeatherCurrent();
    sub_5D78(v37);
    sub_6200(v26, v29, v39, v38, v13, v30 & 1, v34, v36 == 1);
    sub_2569C();
  }

  else
  {
    __break(1u);
  }
}

void sub_8D488()
{
  sub_25714();
  v1 = v0;
  v2 = sub_A2EA4();
  v3 = sub_591C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_AA54();
  v10 = v9 - v8;
  v61 = sub_A42E4();
  v11 = sub_591C(v61);
  v64 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_36194();
  v17 = v15 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v54 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v54 - v23;
  __chkstk_darwin(v22);
  v65 = &v54 - v25;
  sub_10A94();
  sub_10A94();
  sub_A41E4();
  sub_A2E94();
  v26 = sub_8CD18();
  v27 = *(v5 + 8);
  v28 = sub_8DCFC();
  v27(v28);
  sub_A2E94();
  v62 = sub_8CD18();
  v29 = sub_8DCFC();
  v60 = v27;
  v27(v29);
  v30 = sub_1BF68(v1);
  if (v30 < 1)
  {
    goto LABEL_9;
  }

  v31 = v30;
  v57 = v26;
  v63 = v5;
  sub_1BF70(0, (v1 & 0xC000000000000001) == 0, v1);
  v58 = v24;
  v59 = v1 & 0xC000000000000001;
  v56 = v17;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v33 = sub_A4B74();
  }

  else
  {
    v32 = *(v1 + 32);
  }

  v34 = *(v33 + 16);

  sub_13894(v34);
  sub_10A94();
  v36 = v64;
  v35 = v65;
  v37 = v61;
  v55 = *(v64 + 8);
  v55(v65, v61);
  v38 = *(v36 + 32);
  v64 = v36 + 32;
  v54 = v38;
  v38(v35, v21, v37);
  if (v59)
  {
    v39 = sub_A4B74();
  }

  else
  {
    v39 = *(v1 + 32);
  }

  v40 = *(v63 + 16);
  v63 += 16;
  v40(v10, v39 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_startTime, v2);

  v26 = sub_8CD18();

  v41 = sub_8DCFC();
  v60(v41);
  if (v31 == 1)
  {
    v24 = v58;
LABEL_9:

    v42 = v62;
    goto LABEL_16;
  }

  v43 = v59;
  sub_1BF70(1, v59 == 0, v1);
  v57 = v26;
  v44 = v40;
  if (v43)
  {
    v46 = sub_A4B74();
  }

  else
  {
    v45 = *(v1 + 40);
  }

  v47 = *(v46 + 16);

  sub_13894(v47);
  v48 = v56;
  sub_10A94();
  v24 = v58;
  v49 = v61;
  v55(v58, v61);
  v54(v24, v48, v49);
  if (v59)
  {
    v50 = sub_A4B74();
  }

  else
  {
    v50 = *(v1 + 40);
  }

  v26 = v57;

  v44(v10, v50 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_startTime, v2);

  v51 = sub_8CD18();

  v52 = sub_8DCFC();
  v60(v52);
  v42 = v51;
LABEL_16:
  v53 = type metadata accessor for WeatherExpected();
  sub_5D78(v53);
  sub_14CEC(v65, v24, v26, v42);
  sub_2569C();
}

uint64_t sub_8D910(uint64_t a1, char a2)
{
  v4 = sub_4BF0(&qword_DF4B0, &qword_AC5F0);
  v5 = sub_10A88(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = sub_4BF0(&qword_DB760, qword_A6AE8);
  v11 = sub_10A88(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = sub_4BF0(&qword_DB768, &unk_A9650);
  v17 = sub_591C(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_36194();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v27 = &v34 - v26;
  sub_CEBC(a1, v15);
  if (sub_CF2C(v15, 1, v16) == 1)
  {
    sub_AD70(v15, &qword_DB760, qword_A6AE8);
    return 0;
  }

  else
  {
    (*(v19 + 32))(v27, v15, v16);
    v29 = [objc_opt_self() *off_D2F50[a2]];
    sub_A2B64();

    sub_A2B54();
    v30 = *(v19 + 8);
    v30(v24, v16);
    v31 = sub_A4154();
    sub_5D78(v31);
    sub_A4144();
    sub_A4194();

    sub_10A94();
    v32 = sub_A42E4();
    sub_A924(v9, 0, 1, v32);
    sub_A4184();

    sub_AD70(v9, &qword_DF4B0, &qword_AC5F0);
    v28 = sub_A4174();

    v30(v27, v16);
  }

  return v28;
}

uint64_t sub_8DCA0(uint64_t a1)
{
  v2 = type metadata accessor for CurrentWeatherForecast();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8DD3C()
{
  type metadata accessor for WarningsFlow();
  sub_93328(&qword_DC0E8, type metadata accessor for WarningsFlow);
  return sub_A3334();
}

uint64_t sub_8DDCC()
{
  sub_5950();
  v1[5] = v2;
  v1[6] = v0;
  v3 = *(*(sub_4BF0(&qword_DB5A8, &unk_A67C0) - 8) + 64);
  v1[7] = sub_10AAC();
  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_8DE54()
{
  sub_59C4();
  v1 = v0[6];
  v0[8] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_logger;
  sub_490E0();
  sub_810AC(v2, v3, v4, v5, 0x2865747563657865, 0xE900000000000029);
  v6 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_siriKitEventSender;
  v0[9] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_siriKitEventSender;
  v7 = (v1 + v6);
  sub_934EC((v1 + v6), *(v1 + v6 + 24));
  sub_9339C();
  sub_4D424();

  v8 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  v0[10] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  sub_934EC((v1 + v8 + 280), *(v1 + v8 + 304));
  if (sub_834E4())
  {
    sub_490E0();
    sub_810AC(v9, v10, v11, v12, 0x2865747563657865, 0xE900000000000029);
    v13 = sub_7584(v7, v7[3]);
    sub_93408(v13);
    sub_9339C();
    sub_4D424();

    swift_task_alloc();
    sub_1A6A0();
    v0[11] = v14;
    *v14 = v15;
    sub_93504(v14);
    sub_1A6C8();

    return sub_90F8C();
  }

  else
  {
    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    sub_933DC(v18);
    sub_1A6C8();

    return sub_8FCB4();
  }
}

uint64_t sub_8E06C()
{
  sub_5950();
  sub_934E0();
  v2 = *(v0 + 88);
  v3 = *v1;
  sub_5930();
  *v4 = v3;

  v5 = *(v0 + 56);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_8E16C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 272) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_8E254()
{
  sub_AB40();
  if (*(v0 + 272) == 1)
  {
    v1 = *(v0 + 64);
    v2 = (*(v0 + 48) + *(v0 + 72));
    sub_AA40();
    sub_93418();
    sub_810C4(v3, v4, v5, v6, v7, v8);
    v9 = sub_7584(v2, v2[3]);
    sub_93408(v9);
    sub_9339C();
    sub_4D424();

    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    sub_933DC(v10);

    return sub_91960();
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 152) = v12;
    *v12 = v0;
    sub_933DC(v12);

    return sub_90288();
  }
}

uint64_t sub_8E3C0()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 104);
  *v2 = *v0;
  *(v1 + 112) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_8E4A8()
{
  sub_AB40();
  sub_93458();
  *(v1 + 120) = v0;
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  sub_9346C(v2);

  return sub_2D78C(6, v0, v3);
}

uint64_t sub_8E54C()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 128);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_8E630()
{
  sub_25654();
  v1 = *(v0 + 112);
  sub_9342C();
  v2 = sub_A3744();
  sub_9347C(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v5 = sub_933EC(v4);

  return sub_87A40(v5, v6, v7, v8);
}

uint64_t sub_8E6E8()
{
  sub_59C4();
  v3 = v2;
  v5 = v4;
  sub_934E0();
  sub_5930();
  *v6 = v0;
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[9];
  v10 = v0[7];
  v11 = v0[6];
  v12 = *v1;
  *v6 = *v1;

  sub_A8A8(v5, v3 & 1);

  sub_1085C(v10, &qword_DB5A8, &unk_A67C0);
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v12;
  v13[1] = sub_8E8AC;
  v14 = v0[15];
  sub_59E4();

  return sub_95A4C(v15, v16);
}

uint64_t sub_8E8AC()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 144);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_8E990()
{
  sub_5950();
  v1 = v0[14];
  v2 = v0[5];
  sub_A3664();

  v3 = v0[7];

  sub_AA9C();

  return v4();
}

uint64_t sub_8E9F8()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 152);
  *v2 = *v0;
  *(v1 + 273) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_8EAE0()
{
  sub_AB40();
  if (*(v0 + 273) == 1)
  {
    v1 = *(v0 + 64);
    v2 = (*(v0 + 48) + *(v0 + 72));
    sub_AA40();
    sub_810C4(0xD000000000000025, v3 | 0x8000000000000000, v4 + 5, v5 | 0x8000000000000000, v6, 0xE900000000000029);
    v7 = sub_7584(v2, v2[3]);
    sub_93408(v7);
    sub_9339C();
    sub_4D424();

    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    sub_933DC(v8);

    return sub_91ED8();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    sub_933DC(v10);

    return sub_909FC();
  }
}

uint64_t sub_8EC58()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 160);
  *v2 = *v0;
  *(v1 + 168) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_8ED40()
{
  sub_AB40();
  sub_93458();
  v2 = swift_task_alloc();
  *(v1 + 176) = v2;
  *v2 = v1;
  sub_9346C(v2);

  return sub_2D78C(7, v0, v3);
}

uint64_t sub_8EDE0()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 176);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_8EEC4()
{
  sub_25654();
  v1 = *(v0 + 168);
  sub_9342C();
  v2 = sub_A3744();
  sub_9347C(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v5 = sub_933EC(v4);

  return sub_87A40(v5, v6, v7, v8);
}

uint64_t sub_8EF7C(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *v2;
  sub_5930();
  *v7 = v6;
  v8 = v5[23];
  v9 = v5[21];
  v10 = v5[7];
  v11 = *v2;
  *v7 = *v2;

  sub_A8A8(a1, a2 & 1);

  sub_1085C(v10, &qword_DB5A8, &unk_A67C0);
  v12 = swift_task_alloc();
  v6[24] = v12;
  *v12 = v11;
  v12[1] = sub_8F13C;
  v13 = v5[6];
  v14 = v5[5];

  return sub_90F8C();
}

uint64_t sub_8F13C()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 192);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_8F220()
{
  sub_5950();

  v1 = *(v0 + 56);

  sub_AA9C();

  return v2();
}

uint64_t sub_8F280()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 200);
  *v2 = *v0;
  *(v1 + 274) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_8F368()
{
  sub_AB40();
  sub_AA40();
  if (*(v0 + 274) == 1)
  {
    v1 = *(v0 + 48);
    v2 = (v1 + *(v0 + 72));
    v3 = v1 + *(v0 + 64);
    sub_93418();
    sub_810C4(v4, v5, v6, v7, v8, v9);
    v10 = sub_7584(v2, v2[3]);
    sub_93408(v10);
    sub_9339C();
    sub_4D424();

    type metadata accessor for ModeInfoProvider();
    *(v0 + 208) = swift_initStackObject();
    *(v0 + 216) = sub_5FB74();
    v11 = swift_task_alloc();
    *(v0 + 224) = v11;
    *v11 = v0;
    sub_933DC(v11);

    return sub_92208();
  }

  else
  {
    v13 = *(v0 + 48);
    v14 = (v13 + *(v0 + 72));
    v15 = v13 + *(v0 + 64);
    sub_93418();
    sub_810AC(v16, v17, v18, v19, v20, v21);
    sub_934EC(v14, v14[3]);
    sub_9339C();
    sub_4D424();

    swift_task_alloc();
    sub_1A6A0();
    *(v0 + 264) = v22;
    *v22 = v23;
    sub_93504(v22);

    return sub_90F8C();
  }
}

uint64_t sub_8F55C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 224);
  *v2 = *v0;
  *(v1 + 232) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_8F644()
{
  sub_AB40();
  sub_93458();
  v2 = swift_task_alloc();
  *(v1 + 240) = v2;
  *v2 = v1;
  sub_9346C(v2);

  return sub_2D78C(5, v0, v3);
}

uint64_t sub_8F6E4()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 240);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_8F7C8()
{
  sub_25654();
  v1 = *(v0 + 232);
  sub_9342C();
  v2 = sub_A3744();
  sub_9347C(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  *v4 = v0;
  v5 = sub_933EC(v4);

  return sub_87A40(v5, v6, v7, v8);
}

uint64_t sub_8F880()
{
  sub_AB40();
  v2 = v1;
  v4 = v3;
  sub_AAA8();
  v6 = v5[31];
  v7 = v5[29];
  v8 = v5[7];
  v9 = *v0;
  sub_5930();
  *v10 = v9;

  sub_A8A8(v4, v2 & 1);

  sub_1085C(v8, &qword_DB5A8, &unk_A67C0);
  v11 = sub_AA8C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_8F9C4()
{
  sub_5950();
  v1 = v0[27];
  sub_5FDC0();
  swift_task_alloc();
  sub_1A6A0();
  v0[32] = v2;
  *v2 = v3;
  v2[1] = sub_8FA64;
  v4 = v0[5];
  v5 = v0[6];

  return sub_90F8C();
}

uint64_t sub_8FA64()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 256);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_8FB48()
{
  sub_5950();
  v1 = *(v0 + 216);

  v2 = *(v0 + 56);

  sub_AA9C();

  return v3();
}

uint64_t sub_8FBB4()
{
  sub_5950();
  sub_934E0();
  v2 = *(v0 + 264);
  v3 = *v1;
  sub_5930();
  *v4 = v3;

  v5 = *(v0 + 56);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_8FCB4()
{
  *(v1 + 16) = v0;
  v2 = sub_AA8C();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_8FCDC()
{
  sub_AB40();
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams);
  v2 = sub_7584(v1 + 13, v1[16]);
  *(v0 + 64) = sub_A1F80(*v2, v1 + 8);
  v3 = v1[19];
  *(v0 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  sub_9346C(v4);

  return sub_2D0B0(6, v3, v5);
}

uint64_t sub_8FDB0()
{
  sub_AB40();
  sub_934E0();
  sub_5930();
  *v2 = v0;
  v3 = *(v0 + 32);
  v4 = *v1;
  sub_25540();
  *v5 = v4;
  *(v0 + 65) = v6;

  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v4;
  v7[1] = sub_8FEEC;
  v8 = *(v0 + 24);

  return sub_44F0(1);
}

uint64_t sub_8FEEC()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_8FFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_40250();
  sub_40244();
  v17 = *(v16 + 65);
  v18 = *(v16 + 64);
  v40 = *(v16 + 16);
  v19 = sub_4F034(*(v16 + 48), *(v16 + 56));
  LODWORD(v39) = sub_4ED80(v19);
  sub_2E7A0();
  sub_A4B54(20);

  sub_933C0();
  v41 = v22;
  v42 = v21 | 0xED00002000000000;
  HIDWORD(v39) = (v39 & ~v18) & v17 & 1;
  if ((v39 & ~v18) & v17)
  {
    v20._countAndFlagsBits = 1702195828;
  }

  else
  {
    v20._countAndFlagsBits = 0x65736C6166;
  }

  sub_93578(v20);

  sub_9351C();
  sub_2E7A0();
  sub_A4B54(41);

  if (v18)
  {
    v23._countAndFlagsBits = 1702195828;
  }

  else
  {
    v23._countAndFlagsBits = 0x65736C6166;
  }

  if (v18)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  v23._object = v24;
  sub_A46D4(v23);

  v43._countAndFlagsBits = 0xD000000000000015;
  v43._object = 0x80000000000B49A0;
  sub_A46D4(v43);
  if (v17)
  {
    v25._countAndFlagsBits = 1702195828;
  }

  else
  {
    v25._countAndFlagsBits = 0x65736C6166;
  }

  if (v17)
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  v25._object = v26;
  sub_A46D4(v25);

  v44._countAndFlagsBits = 44;
  v44._object = 0xE100000000000000;
  sub_A46D4(v44);

  v45._countAndFlagsBits = 0x736E497070417369;
  v45._object = 0xEF3A64656C6C6174;
  sub_A46D4(v45);

  sub_2E7A0();
  sub_A4B54(21);

  if (v39)
  {
    v27._countAndFlagsBits = 1702195828;
  }

  else
  {
    v27._countAndFlagsBits = 0x65736C6166;
  }

  if (v39)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  v27._object = v28;
  sub_A46D4(v27);

  sub_93540();

  v46._countAndFlagsBits = 0xD000000000000012;
  v46._object = 0x80000000000B4A00;
  sub_A46D4(v46);

  sub_934A4(v41, v29, 0xD00000000000002ALL, 0x80000000000B4830, 0xD000000000000018);

  sub_49144();
  sub_25660();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, v41, v42, a14, a15, a16);
}

uint64_t sub_90288()
{
  *(v1 + 16) = v0;
  v2 = sub_AA8C();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_902B0()
{
  sub_AB40();
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  v0[3] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  v3 = v1 + v2;
  v4 = *(v1 + v2 + 152);
  v0[4] = v4;
  v5 = *sub_7584((v1 + v2 + 104), *(v1 + v2 + 128));
  v6 = sub_2567C(&dword_ACB78);
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_9037C;

  return v8(v4, v5, v3 + 64);
}

uint64_t sub_9037C()
{
  sub_25654();
  sub_934E0();
  sub_5930();
  *v2 = v0;
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *v1;
  sub_25540();
  *v6 = v5;
  *(v0 + 64) = v7;

  v8 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_now;
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v5;
  v9[1] = sub_904E0;
  v10 = *(v0 + 32);

  return sub_2D0B0(7, v10, v4 + v8);
}

uint64_t sub_904E0()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 48);
  *v2 = *v0;
  *(v1 + 65) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_905C8()
{
  sub_5950();
  v2 = v1[2] + v1[3];
  sub_934EC((v2 + 200), *(v2 + 224));
  v3 = sub_2567C(&unk_ACB80);
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_90674;
  v4 = v1[4];

  return v6(v4, v0);
}

uint64_t sub_90674()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 56);
  *v2 = *v0;
  *(v1 + 66) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_9075C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_40250();
  a22 = v24;
  a23 = v25;
  sub_40244();
  a21 = v23;
  LODWORD(v49) = *(v23 + 66);
  v26 = *(v23 + 65);
  v27 = *(v23 + 64);
  v28 = v26 & (v49 ^ 1);
  v50 = *(v23 + 16);
  *&a12 = 0;
  if (v27)
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  if (v27)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  *(&a12 + 1) = 0xE000000000000000;
  sub_A4B54(18);

  sub_933C0();
  *&a12 = v32;
  *(&a12 + 1) = v31 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  HIDWORD(v49) = v27 & v28;
  if ((v27 & v28) != 0)
  {
    v33._countAndFlagsBits = 1702195828;
  }

  else
  {
    v33._countAndFlagsBits = 0x65736C6166;
  }

  if ((v27 & v28) != 0)
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  v33._object = v34;
  sub_A46D4(v33);

  v51._countAndFlagsBits = 1043148064;
  v51._object = 0xE400000000000000;
  sub_A46D4(v51);
  v35 = a12;
  sub_2E7A0();
  sub_A4B54(44);

  *&a12 = 0xD000000000000011;
  *(&a12 + 1) = 0x80000000000B49C0;
  v52._countAndFlagsBits = v30;
  v52._object = v29;
  sub_A46D4(v52);

  v53._countAndFlagsBits = 0xD000000000000015;
  v53._object = 0x80000000000B49A0;
  sub_A46D4(v53);
  if (v26)
  {
    v36._countAndFlagsBits = 1702195828;
  }

  else
  {
    v36._countAndFlagsBits = 0x65736C6166;
  }

  sub_93578(v36);

  v54._countAndFlagsBits = 8236;
  v54._object = 0xE200000000000000;
  sub_A46D4(v54);
  a12 = v35;

  sub_9355C();

  v37 = a12;
  sub_2E7A0();
  sub_A4B54(16);

  strcpy(&a12, " isNewsStale:");
  HIWORD(a12) = -4864;
  if (v49)
  {
    v38._countAndFlagsBits = 1702195828;
  }

  else
  {
    v38._countAndFlagsBits = 0x65736C6166;
  }

  sub_93578(v38);

  sub_93540();
  a12 = v37;

  sub_9355C();

  sub_934A4(a12, v39, 0xD00000000000002ALL, 0x80000000000B4830, 0xD00000000000001ELL);

  sub_49144();
  sub_25660();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, a12, *(&a12 + 1), a13, a14, a15);
}

uint64_t sub_909FC()
{
  *(v1 + 16) = v0;
  v2 = sub_AA8C();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_90A24()
{
  sub_5950();
  v1 = v0[2] + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  if (!*(v1 + 16) || *(v1 + 16) == 2 && (!*(v1 + 8) ? (v2 = *v1 == 1) : (v2 = 0), v2))
  {
    v0[3] = *(v1 + 152);
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_90B6C;

    return sub_4F0F8();
  }

  else
  {
    sub_810AC(0xD00000000000003ALL, 0x80000000000B4920, 0xD00000000000002ALL, 0x80000000000B4830, 0xD000000000000016, 0x80000000000B4960);
    sub_49144();

    return v3(0);
  }
}

uint64_t sub_90B6C()
{
  sub_25654();
  sub_934E0();
  sub_5930();
  *v2 = v0;
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *v1;
  sub_25540();
  *v6 = v5;
  *(v0 + 48) = v7;

  v8 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_now;
  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  *v9 = v5;
  v9[1] = sub_90CD0;
  v10 = *(v0 + 24);

  return sub_2D0B0(5, v10, v4 + v8);
}

uint64_t sub_90CD0()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 49) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_90DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_40250();
  sub_40244();
  v17 = *(v16 + 49);
  v18 = *(v16 + 48);
  v35 = *(v16 + 16);
  sub_A4B54(19);

  sub_933C0();
  v36 = v20;
  v37 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  HIDWORD(a10) = (v18 ^ 1) & v17;
  if (HIDWORD(a10))
  {
    v21._countAndFlagsBits = 1702195828;
  }

  else
  {
    v21._countAndFlagsBits = 0x65736C6166;
  }

  if (((v18 ^ 1) & v17) != 0)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  v21._object = v22;
  sub_A46D4(v21);

  sub_9351C();
  sub_A4B54(45);

  if (v18)
  {
    v23._countAndFlagsBits = 1702195828;
  }

  else
  {
    v23._countAndFlagsBits = 0x65736C6166;
  }

  sub_93578(v23);

  v38._countAndFlagsBits = 0xD000000000000015;
  v38._object = 0x80000000000B49A0;
  sub_A46D4(v38);
  if (v17)
  {
    v24._countAndFlagsBits = 1702195828;
  }

  else
  {
    v24._countAndFlagsBits = 0x65736C6166;
  }

  sub_93578(v24);

  sub_93540();

  sub_9355C();

  sub_934A4(v36, v25, 0xD00000000000002ALL, 0x80000000000B4830, 0xD000000000000016);

  sub_49144();
  sub_25660();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, v36, a10, v35, v36, v37, a14, a15, a16);
}

uint64_t sub_90F8C()
{
  sub_5950();
  *(v1 + 338) = v2;
  *(v1 + 337) = v3;
  *(v1 + 456) = v4;
  *(v1 + 464) = v0;
  v5 = sub_A4C34();
  *(v1 + 472) = v5;
  sub_5940(v5);
  *(v1 + 480) = v6;
  v8 = *(v7 + 64);
  *(v1 + 488) = sub_10AAC();
  v9 = sub_A4C24();
  *(v1 + 496) = v9;
  sub_5940(v9);
  *(v1 + 504) = v10;
  v12 = *(v11 + 64) + 15;
  *(v1 + 512) = swift_task_alloc();
  *(v1 + 520) = swift_task_alloc();
  v13 = sub_A2EA4();
  *(v1 + 528) = v13;
  sub_5940(v13);
  *(v1 + 536) = v14;
  v16 = *(v15 + 64);
  *(v1 + 544) = sub_10AAC();
  v17 = sub_A3684();
  *(v1 + 552) = v17;
  sub_5940(v17);
  *(v1 + 560) = v18;
  v20 = *(v19 + 64);
  *(v1 + 568) = sub_10AAC();
  v21 = sub_AA8C();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_91130()
{
  sub_59C4();
  v1 = *(v0 + 544);
  v2 = *(v0 + 464);
  v3 = *(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_specExecutionStatus);
  sub_1A2C4(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams, v0 + 16);
  sub_A2E94();
  v4 = type metadata accessor for DBSiriKitEventSender();
  inited = swift_initStaticObject();
  v6 = type metadata accessor for NewsFlow();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  *(v0 + 368) = v4;
  *(v0 + 376) = &off_D1B20;
  *(v0 + 384) = sub_93328(&qword_DB598, type metadata accessor for DBSiriKitEventSender);
  *(v0 + 344) = inited;
  v10 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_logger;
  if (qword_DA9E8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 544);
  v12 = *(v0 + 536);
  v13 = *(v0 + 528);
  v14 = *(v0 + 337);
  v15 = sub_A43D4();
  v16 = sub_48A4(v15, qword_E0BE8);
  (*(*(v15 - 8) + 16))(v9 + v10, v16, v15);
  v17 = v9 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_name;
  *(v17 + 24) = &type metadata for SupportedFeatures;
  *(v17 + 32) = &off_D2110;
  *v17 = 4;
  *(v9 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_state) = 3;
  *(v9 + 16) = v3;
  sub_1A2C4(v0 + 16, v9 + 24);
  (*(v12 + 16))(v9 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_now, v11, v13);

  if (v14)
  {
    LOBYTE(v18) = 0;
  }

  else
  {
    v18 = sub_92C60(v3)[2];

    if (v18)
    {
      v19 = *(v0 + 112);
      sub_7584((v0 + 80), *(v0 + 104));
      LOBYTE(v18) = sub_A3524();
    }
  }

  v20 = *(v0 + 568);
  v21 = *(v0 + 338);
  (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  *(v9 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_shouldDialog) = v18 & 1;
  sub_A82C((v0 + 344), (v9 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender));
  sub_1A564(v0 + 16);
  *(v0 + 440) = v9;
  sub_93328(&qword_DFFE8, type metadata accessor for NewsFlow);
  sub_A3644();

  if ((v21 & 1) == 0)
  {
    v40 = sub_93370();
    v41(v40);

    sub_AA9C();
    sub_59E4();

    __asm { BRAA            X1, X16 }
  }

  v22 = *(v0 + 520);
  v24 = *(v0 + 504);
  v23 = *(v0 + 512);
  v26 = *(v0 + 488);
  v25 = *(v0 + 496);
  v27 = *(v0 + 464);
  *(v0 + 576) = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_logger;
  sub_810C4(0xD000000000000028, 0x80000000000B4800, 0xD00000000000002ALL, 0x80000000000B4830, 0xD000000000000049, 0x80000000000B4860);
  sub_A4C04();
  sub_A4C14();
  v28 = *(v24 + 8);
  *(v0 + 584) = v28;
  *(v0 + 592) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v23, v25);
  *(v0 + 416) = 0;
  *(v0 + 424) = 0;
  *(v0 + 432) = 1;
  sub_A4EB4();
  v29 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
  v30 = swift_task_alloc();
  *(v0 + 600) = v30;
  sub_93328(&qword_DFD78, &type metadata accessor for ContinuousClock);
  *v30 = v0;
  v30[1] = sub_9160C;
  v31 = *(v0 + 520);
  v32 = *(v0 + 488);
  v33 = *(v0 + 472);
  sub_59E4();

  return static Task<>.sleep<A>(until:tolerance:clock:)(v34, v35, v36, v37, v38);
}

uint64_t sub_9160C()
{
  sub_25654();
  sub_AAA8();
  v5 = v4;
  sub_25540();
  *v6 = v5;
  v8 = *(v7 + 600);
  v9 = *v2;
  sub_5930();
  *v10 = v9;
  *(v5 + 608) = v0;

  v11 = sub_934C4();
  v12(v11);
  if (v0)
  {
    v3(v0, v1);
    v13 = sub_917EC;
  }

  else
  {
    v3(0, v1);
    v13 = sub_91754;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_91754()
{
  sub_25654();
  v0 = sub_93370();
  v1(v0);

  sub_AA9C();

  return v2();
}

void sub_917EC()
{
  sub_59C4();
  v1 = v0[76];
  v2 = v0[72];
  v3 = v0[58];
  sub_A4B54(58);
  v23._countAndFlagsBits = 0xD000000000000038;
  v23._object = 0x80000000000B48B0;
  sub_A46D4(v23);
  swift_getErrorValue();
  v5 = v0[49];
  v4 = v0[50];
  v6 = v0[51];
  v24._countAndFlagsBits = sub_A4EC4();
  sub_A46D4(v24);

  sub_93590();
  sub_490E0();
  sub_81094(v7, v8, v9, v10, v11, v12);

  sub_93590();
  sub_490E0();
  sub_810AC(v13, v14, v15, v16, v17, v18);

  v19 = sub_93370();
  v20(v19);

  sub_AA9C();
  sub_1A6C8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_91960()
{
  sub_5950();
  v1[2] = v0;
  v2 = sub_A35B4();
  v1[3] = v2;
  sub_5940(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = sub_10AAC();
  v6 = sub_A37A4();
  v1[6] = v6;
  sub_5940(v6);
  v1[7] = v7;
  v9 = *(v8 + 64);
  v1[8] = sub_10AAC();
  v10 = sub_A3784();
  v1[9] = v10;
  sub_5940(v10);
  v1[10] = v11;
  v13 = *(v12 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v14 = sub_AA8C();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_91ABC()
{
  sub_5950();
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  v0[14] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  sub_934EC((v1 + v2 + 160), *(v1 + v2 + 184));
  v0[15] = sub_5E040();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_91B70;

  return sub_59EA0();
}

uint64_t sub_91B70()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 128);
  v5 = *(v3 + 120);
  v6 = *v0;
  sub_5930();
  *v7 = v6;
  *(v9 + 136) = v8;

  v10 = sub_AA8C();

  return _swift_task_switch(v10, v11, v12);
}

void sub_91C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_40250();
  sub_40244();
  v17 = v16[17];
  v18 = *(v17 + 16);
  if (!v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v19 = v16[10];
  v20 = *(v19 + 16);
  v21 = v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v20(v16[13], v21, v16[9]);
  if (v18 == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = *(v16[10] + 72);
  v20(v16[12], v21 + v22, v16[9]);
  if (v18 < 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v16[17];
  v20(v16[11], v21 + 2 * v22, v16[9]);

  v24 = sub_A3774();
  if (!*(v24 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v25 = v16[12];
  v50 = v16[11];
  v26 = v16[10];
  v48 = v16[13];
  v49 = v16[9];
  v28 = v16[7];
  v27 = v16[8];
  v29 = v16[5];
  v30 = v16[6];
  v31 = v16[4];
  v46 = v16[3];
  v32 = v16[2] + v16[14];
  (*(v28 + 16))(v27, v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v30);

  sub_A3794();
  (*(v28 + 8))(v27, v30);
  v33 = sub_A35A4();
  v35 = v34;
  (*(v31 + 8))(v29, v46);
  sub_72CBC((v32 + 64), v33, v35, v25);

  v36 = *(v32 + 144);
  v47 = sub_935A4();

  v37 = *(v26 + 8);
  v37(v50, v49);
  v37(v25, v49);
  v37(v48, v49);

  sub_49144();
  sub_25660();

  v40(v38, v39, v40, v41, v42, v43, v44, v45, v47, v29, v48, v49, v50, a14, a15, a16);
}

uint64_t sub_91ED8()
{
  sub_5950();
  v1[2] = v0;
  v2 = sub_A3784();
  v1[3] = v2;
  sub_5940(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = sub_10AAC();
  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_91F7C()
{
  sub_AB40();
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  v0[6] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  sub_934EC((v1 + v2 + 160), *(v1 + v2 + 184));
  v0[7] = sub_5E040();
  v3 = sub_92C60(*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_specExecutionStatus))[2];

  swift_task_alloc();
  sub_1A6A0();
  v0[8] = v4;
  *v4 = v5;
  v4[1] = sub_92064;
  v6 = v0[5];

  return sub_5A664(v6, v3 != 0);
}

uint64_t sub_92064()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_92164()
{
  sub_AB40();
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v0[2] + v0[6] + 144);
  v5 = sub_935A4();
  (*(v3 + 8))(v1, v2);

  sub_49144();

  return v6(v5);
}

uint64_t sub_92208()
{
  sub_5950();
  v1[7] = v0;
  v2 = *(*(sub_4BF0(&qword_DDCA0, &qword_A9AF0) - 8) + 64);
  v1[8] = sub_10AAC();
  v3 = sub_A3784();
  v1[9] = v3;
  sub_5940(v3);
  v1[10] = v4;
  v6 = *(v5 + 64);
  v1[11] = sub_10AAC();
  v7 = type metadata accessor for LocationWarningTemplatingResult(0);
  v1[12] = v7;
  v8 = *(*(v7 - 8) + 64);
  v1[13] = sub_10AAC();
  v9 = sub_AA8C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_92304()
{
  sub_5950();
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  v0[14] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  sub_934EC((v1 + v2 + 160), *(v1 + v2 + 184));
  v0[15] = sub_5E040();
  sub_A3904();
  swift_task_alloc();
  sub_1A6A0();
  v0[16] = v3;
  *v3 = v4;
  v3[1] = sub_923C8;
  v5 = v0[13];

  return sub_5A0DC();
}

uint64_t sub_923C8()
{
  sub_5950();
  sub_AAA8();
  v2 = v1;
  sub_25540();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *(v4 + 120);
  v7 = *v0;
  sub_5930();
  *v8 = v7;

  sub_761C((v2 + 16));
  v9 = sub_AA8C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_924CC()
{
  sub_25654();
  v1 = v0[8];
  v2 = v0[9];
  sub_92B30(v0[13] + *(v0[12] + 20), v1);
  v3 = sub_CF2C(v1, 1, v2);
  v5 = v0[13];
  v4 = v0[14];
  if (v3 == 1)
  {
    v6 = v0[7] + v4;
    sub_1085C(v0[8], &qword_DDCA0, &qword_A9AF0);
    v7 = *(v6 + 144);
    v8 = sub_935A4();
  }

  else
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    v12 = v0[7] + v4;
    (*(v10 + 32))(v9, v0[8], v11);
    sub_7228C(v9, (v12 + 64));
    v13 = *(v12 + 144);
    v8 = sub_935A4();

    (*(v10 + 8))(v9, v11);
  }

  v14 = v0[11];
  v15 = v0[8];
  sub_92BA0(v0[13]);

  sub_49144();

  return v16(v8);
}

uint64_t sub_92638()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_logger;
  v2 = sub_A43D4();
  sub_5908(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_specExecutionStatus);

  sub_1A564(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_name));
  v5 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_now;
  v6 = sub_A2EA4();
  sub_5908(v6);
  (*(v7 + 8))(v0 + v5);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_siriKitEventSender));
  return v0;
}

uint64_t sub_92700()
{
  sub_92638();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for WarningsFlow()
{
  result = qword_DFEE0;
  if (!qword_DFEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_927AC()
{
  result = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_A2EA4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_9289C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_9294C;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_9294C()
{
  sub_5950();
  v2 = v1;
  sub_AAA8();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_5930();
  *v6 = v5;

  sub_49144();

  return v7(v2);
}

uint64_t sub_92A58()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_A648;

  return sub_8DDCC();
}

uint64_t sub_92AF4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WarningsFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_92B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_92BA0(uint64_t a1)
{
  v2 = type metadata accessor for LocationWarningTemplatingResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_92BFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_ABF70;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t *sub_92C60(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_92EAC(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = (&v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_92BFC(0, v4, v5);
  v6 = sub_92DC4(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_92DC4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (!*(*(a3 + 56) + v11))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_92F24(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_92F24(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_92EAC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_92DC4(v5, a2, a3);

    return v6;
  }

  return result;
}

void *sub_92F24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) != a3)
  {
    sub_4BF0(&qword_DFFE0, qword_AC0A0);
    v8 = sub_A4CC4();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v11 = 0;
    v12 = v8 + 64;
    while (1)
    {
      if (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        goto LABEL_16;
      }

      v14 = v11;
      do
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          JUMPOUT(0x931D4);
        }

        if (v11 >= a2)
        {
          return v9;
        }

        v15 = a1[v11];
        ++v14;
      }

      while (!v15);
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
LABEL_16:
      v16 = v13 | (v11 << 6);
      v17 = *(*(v4 + 48) + v16);
      v30 = *(*(v4 + 56) + v16);
      v18 = *(v9 + 40);
      sub_A4F14();
      sub_A46A4();

      v19 = sub_A4F44();
      v20 = -1 << *(v9 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) != 0)
      {
        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        do
        {
          if (++v22 == v25 && (v24 & 1) != 0)
          {
            goto LABEL_30;
          }

          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v22);
        }

        while (v27 == -1);
        v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      }

      *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v9 + 48) + v23) = v17;
      *(*(v9 + 56) + v23) = v30;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_31;
      }

      if (!v5)
      {
        return v9;
      }
    }
  }

  return v4;
}

uint64_t sub_931E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_A3444();
  v11[3] = &type metadata for CommonSpecs;
  v11[4] = &off_D2128;
  LOBYTE(v11[0]) = a2;
  sub_A760(v11, v10);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  sub_A814(v10, v7 + 32);
  v8 = sub_A3434();
  sub_761C(v11);
  return v8;
}

uint64_t sub_932E8()
{
  v1 = *(v0 + 24);

  sub_761C((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_93328(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_93370()
{
  v1 = v0[71];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[65];
  v5 = v0[64];
  v6 = v0[61];
  result = v0[57];
  v8 = *(v0[70] + 32);
  return result;
}

uint64_t sub_9339C()
{

  return sub_931E8(131, 1, 0, 0);
}

uint64_t sub_933DC(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 48);
  return result;
}

uint64_t sub_933EC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 56);
  return v3;
}

uint64_t sub_9347C(uint64_t a1)
{
  result = sub_A924(v1, 1, 1, a1);
  v4 = *v2;
  return result;
}

void sub_934A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_810AC(a1, v6, a3, a4, a5, v5 | 0x8000000000000000);
}

uint64_t sub_934C4()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[65];
  result = v0[61];
  v5 = v0[62];
  v6 = v0[59];
  v7 = *(v0[60] + 8);
  return result;
}

uint64_t *sub_934EC(void *a1, uint64_t a2)
{
  result = sub_7584(a1, a2);
  v3 = *result;
  return result;
}

uint64_t sub_93504(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 40);
  v4 = *(v2 + 48);
  return result;
}

void sub_9351C()
{
  v1._countAndFlagsBits = 0x203E2D2D20;
  v1._object = 0xE500000000000000;

  sub_A46D4(v1);
}

void sub_93540()
{
  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;

  sub_A46D4(v1);
}

void sub_9355C()
{
  v3._countAndFlagsBits = v0;
  v3._object = v1;

  sub_A46D4(v3);
}

void sub_93578(Swift::String a1)
{
  a1._object = v1;

  sub_A46D4(a1);
}

uint64_t sub_935A4()
{

  return sub_A3564();
}

_BYTE *storeEnumTagSinglePayload for WarningsDialogs(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x93688);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_936C0(char a1)
{
  v2._countAndFlagsBits = 0xD000000000000010;
  v3 = "ted";
  switch(a1)
  {
    case 1:
      v3 = "LocationDisabled";
      v2._countAndFlagsBits = 0xD000000000000019;
      break;
    case 2:
      v3 = "LocationDisabledForDevice";
      v2._countAndFlagsBits = 0xD000000000000016;
      break;
    case 3:
      v3 = "PodcastAppNotInstalled";
      v2._countAndFlagsBits = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  v2._object = (v3 | 0x8000000000000000);
  sub_A46D4(v2);

  return 0xD000000000000016;
}

unint64_t sub_9379C(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_93828(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFD70;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_93898@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_93828(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_938C8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_9379C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_938F8()
{
  result = qword_DFFF0;
  if (!qword_DFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFFF0);
  }

  return result;
}

void *sub_93954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_556BC(*(a1 + 16), 0);
  sub_95148();
  v4 = v3;
  sub_4CA74();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v2;
}

void *sub_939E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_55C7C(*(a1 + 16), 0);
  v4 = sub_95294(&v6, (v3 + 32), v2, a1);
  sub_4CA74();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void sub_93A74()
{
  sub_25714();
  v0 = sub_A3004();
  v1 = sub_591C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_AA54();
  v8 = v7 - v6;
  v9 = sub_A2D04();
  v10 = sub_591C(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_AA54();
  sub_A2FD4();
  sub_4BF0(&qword_DE7C0, &qword_AC620);
  v13 = sub_A2FE4();
  sub_591C(v13);
  v15 = v14;
  v17 = *(v16 + 72);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_A6E70;
  (*(v15 + 104))(v19 + v18, enum case for Calendar.Component.hour(_:), v13);
  sub_608AC(v19);
  sub_A2F64();

  (*(v3 + 8))(v8, v0);
  sub_A2C84();
  v20 = sub_955A0();
  v21(v20, v9);
  sub_9555C();
  sub_2569C();
}

void sub_93C84()
{
  sub_25714();
  v1 = v0;
  v32 = sub_A3004();
  v2 = sub_591C(v32);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_AA54();
  v9 = v8 - v7;
  v31 = sub_A2D04();
  v10 = sub_591C(v31);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_AA54();
  v30 = sub_A2EA4();
  v13 = sub_591C(v30);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_AA54();
  v20 = v19 - v18;
  sub_4F704(v1, v19 - v18);
  sub_A2FD4();
  sub_4BF0(&qword_DE7C0, &qword_AC620);
  v21 = sub_A2FE4();
  sub_591C(v21);
  v23 = v22;
  v25 = *(v24 + 72);
  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_A6E70;
  (*(v23 + 104))(v27 + v26, enum case for Calendar.Component.hour(_:), v21);
  sub_608AC(v27);
  sub_A2F64();

  (*(v4 + 8))(v9, v32);
  sub_A2C84();
  v28 = sub_955A0();
  v29(v28, v31);
  (*(v15 + 8))(v20, v30);
  sub_9555C();
  sub_2569C();
}

void sub_93F24()
{
  sub_25714();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v46 = sub_A2EA4();
  v6 = sub_591C(v46);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_AA54();
  v13 = v12 - v11;
  if (!*(v5 + 16))
  {

    goto LABEL_22;
  }

  v45 = v1;
  if (qword_DA910 != -1)
  {
    sub_95504();
  }

  v14 = sub_A43D4();
  sub_48A4(v14, qword_E0920);
  sub_A4B54(28);

  v48._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v48);

  v49._countAndFlagsBits = 0x497472617473202CLL;
  v49._object = 0xEE00203A7865646ELL;
  sub_A46D4(v49);
  v50._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v50);

  sub_95588();
  sub_810AC(v15, v16, v17, v18, v19, v20);

  v21 = type metadata accessor for CurrentWeatherForecast();
  (*(v8 + 16))(v13, v5 + *(v21 + 32) + ((*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80)), v46);
  v22 = type metadata accessor for WeatherFilteredConditionsProvider();
  if (v45)
  {
    v23 = sub_9554C();
    v26 = sub_6A11C(v23, v24, v25);
    sub_9554C();
    sub_93C84();
  }

  else
  {
    sub_9554C();
    sub_93A74();
    v26 = v28;
    v29 = sub_9554C();
    v27 = sub_69E8C(v29, v30, v31);
  }

  if (v27 < v26)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (__OFADD__(v27, 1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v3 = sub_95458(v26, v27 + 1, v5);
  v22 = v32;
  v5 = v33;
  v26 = v34;
  if (v34)
  {
    sub_A4E64();
    swift_unknownObjectRetain_n();
    v37 = swift_dynamicCastClass();
    if (!v37)
    {
      swift_unknownObjectRelease();
      v37 = _swiftEmptyArrayStorage;
    }

    v38 = v37[2];

    if (!__OFSUB__(v26 >> 1, v5))
    {
      if (v38 == (v26 >> 1) - v5)
      {
        v36 = swift_dynamicCastClass();
        if (!v36)
        {
          swift_unknownObjectRelease();
          v36 = _swiftEmptyArrayStorage;
        }

        goto LABEL_18;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    swift_unknownObjectRelease();
  }

  sub_95068(v3, v22, v5, v26);
  v36 = v35;
LABEL_18:
  if (v36[2])
  {
    sub_A4B54(50);

    v47 = v36[2];
    v51._countAndFlagsBits = sub_A4E24();
    sub_A46D4(v51);

    sub_95588();
    sub_810AC(v39, v40, v41, v42, v43, v44);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v8 + 8))(v13, v46);
LABEL_22:
  sub_2569C();
}

void *sub_94350()
{
  sub_946BC();
  v1 = v0;
  v2 = sub_1BF68(v0);
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      if (qword_DA910 != -1)
      {
        sub_95504();
      }

      v6 = sub_A43D4();
      sub_48A4(v6, qword_E0920);
      sub_95578();
      sub_95524(v7 | 1, v8);
      return v1;
    }

    if (v2)
    {
      type metadata accessor for WeatherConditionEvent();
      v14 = sub_26478(v1);
      if (v14)
      {
        v15 = v14;

        sub_A4744();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_A4784();
        }

        sub_A47A4();
        v16 = sub_265A0(v1);

        if (v16)
        {
          v17 = *(v16 + 16);
          v18 = sub_13894(*(v15 + 16));
          v20 = v19;
          if (v18 == sub_13894(v17) && v20 == v21)
          {
          }

          else
          {
            v23 = sub_A4E44();

            if ((v23 & 1) == 0)
            {

              sub_A4744();
              if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                sub_A4784();
              }

              sub_A47A4();
            }
          }

          v1 = sub_266A0();
        }

        else
        {

          return _swiftEmptyArrayStorage;
        }

        return v1;
      }
    }

    else
    {

      if (qword_DA910 != -1)
      {
        sub_95504();
      }

      v3 = sub_A43D4();
      sub_48A4(v3, qword_E0920);
      sub_95578();
      sub_95524(v4 - 4, v5);
    }

    return _swiftEmptyArrayStorage;
  }

  if (qword_DA910 != -1)
  {
    sub_95504();
  }

  v9 = sub_A43D4();
  sub_48A4(v9, qword_E0920);
  sub_95578();
  sub_95524(v10 | 3, v11);
  type metadata accessor for WeatherConditionEvent();
  v12 = sub_266A0();

  return v12;
}

void sub_946BC()
{
  sub_25714();
  v70 = v0;
  v2 = v1;
  v4 = v3;
  v68 = sub_A2EA4();
  v5 = sub_591C(v68);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_AA54();
  v67 = v11 - v10;
  v12 = type metadata accessor for CurrentWeatherForecast();
  v13 = sub_591C(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_AA54();
  v69 = v19 - v18;
  v20 = type metadata accessor for WeatherConditionEvent();
  sub_80EB8();
  v66 = v20;
  v21 = sub_A4544();
  v22 = *(v4 + 16);
  if (v22)
  {
    v23 = 0x6E61636972727568;
    v24 = v4 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v65 = (v7 + 16);
    v72 = *(v15 + 72);
    v25 = v69;
    while (1)
    {
      sub_56784(v24, v25);
      v73 = *(v25 + *(v12 + 28));
      if ((v2 & 1) == 0)
      {
        break;
      }

      v26 = 0xE900000000000065;
      v27 = v23;
      switch(v70)
      {
        case 1:
          v26 = 0xE700000000000000;
          v27 = 0x6F64616E726F74;
          break;
        case 2:
          v27 = 0x6C616369706F7274;
          v26 = 0xED00006D726F7453;
          break;
        case 3:
          v26 = 0xE800000000000000;
          v27 = 0x6472617A7A696C62;
          break;
        case 4:
          v26 = 0xE400000000000000;
          v27 = 1818845544;
          break;
        case 5:
          v27 = 0x737265646E756874;
          v28 = 1836216180;
          goto LABEL_28;
        case 6:
          v26 = 0xE500000000000000;
          v27 = 0x7465656C73;
          break;
        case 7:
          v26 = 0xE500000000000000;
          v29 = 2003791475;
          goto LABEL_24;
        case 8:
          v27 = 0x53676E69776F6C62;
          v30 = 7827310;
          goto LABEL_26;
        case 9:
          v26 = 0xE500000000000000;
          v29 = 1852399986;
          goto LABEL_24;
        case 10:
          v26 = 0xE500000000000000;
          v29 = 1802464627;
          goto LABEL_24;
        case 11:
          v26 = 0xE400000000000000;
          v27 = 1953723748;
          break;
        case 12:
          v26 = 0xE500000000000000;
          v29 = 1684957559;
          goto LABEL_24;
        case 13:
          v26 = 0xE500000000000000;
          v29 = 1734831974;
LABEL_24:
          v27 = v29 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 14:
          v26 = 0xE400000000000000;
          v27 = 1702519144;
          break;
        case 15:
          v26 = 0xE600000000000000;
          v27 = 0x7964756F6C63;
          break;
        case 16:
          v27 = 0x6C43796C74726170;
          v28 = 2036626799;
          goto LABEL_28;
        case 17:
          v26 = 0xE500000000000000;
          v27 = 0x7261656C63;
          break;
        case 18:
          v26 = 0xE400000000000000;
          v27 = 1684828003;
          break;
        case 19:
          v26 = 0xE300000000000000;
          v27 = 7630696;
          break;
        case 20:
          v27 = 0x6F6C43646578696DLL;
          v30 = 7955573;
LABEL_26:
          v26 = v30 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 21:
          v27 = 0x656C43646578696DLL;
          v26 = 0xEA00000000007261;
          break;
        case 22:
          v27 = 0x6C69617641746F6ELL;
          v28 = 1701601889;
LABEL_28:
          v26 = v28 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      v31 = v23;
      v32 = 0xE900000000000065;
      switch(*(v25 + *(v12 + 28)))
      {
        case 1:
          v32 = 0xE700000000000000;
          v31 = 0x6F64616E726F74;
          break;
        case 2:
          v31 = 0x6C616369706F7274;
          v32 = 0xED00006D726F7453;
          break;
        case 3:
          v32 = 0xE800000000000000;
          v31 = 0x6472617A7A696C62;
          break;
        case 4:
          v32 = 0xE400000000000000;
          v31 = 1818845544;
          break;
        case 5:
          v31 = 0x737265646E756874;
          v33 = 1836216180;
          goto LABEL_54;
        case 6:
          v32 = 0xE500000000000000;
          v31 = 0x7465656C73;
          break;
        case 7:
          v32 = 0xE500000000000000;
          v34 = 2003791475;
          goto LABEL_50;
        case 8:
          v31 = 0x53676E69776F6C62;
          v35 = 7827310;
          goto LABEL_52;
        case 9:
          v32 = 0xE500000000000000;
          v34 = 1852399986;
          goto LABEL_50;
        case 0xA:
          v32 = 0xE500000000000000;
          v34 = 1802464627;
          goto LABEL_50;
        case 0xB:
          v32 = 0xE400000000000000;
          v31 = 1953723748;
          break;
        case 0xC:
          v32 = 0xE500000000000000;
          v34 = 1684957559;
          goto LABEL_50;
        case 0xD:
          v32 = 0xE500000000000000;
          v34 = 1734831974;
LABEL_50:
          v31 = v34 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 0xE:
          v32 = 0xE400000000000000;
          v31 = 1702519144;
          break;
        case 0xF:
          v32 = 0xE600000000000000;
          v31 = 0x7964756F6C63;
          break;
        case 0x10:
          v31 = 0x6C43796C74726170;
          v33 = 2036626799;
          goto LABEL_54;
        case 0x11:
          v32 = 0xE500000000000000;
          v31 = 0x7261656C63;
          break;
        case 0x12:
          v32 = 0xE400000000000000;
          v31 = 1684828003;
          break;
        case 0x13:
          v32 = 0xE300000000000000;
          v31 = 7630696;
          break;
        case 0x14:
          v31 = 0x6F6C43646578696DLL;
          v35 = 7955573;
LABEL_52:
          v32 = v35 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x15:
          v31 = 0x656C43646578696DLL;
          v32 = 0xEA00000000007261;
          break;
        case 0x16:
          v31 = 0x6C69617641746F6ELL;
          v33 = 1701601889;
LABEL_54:
          v32 = v33 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      if (v27 == v31 && v26 == v32)
      {
      }

      else
      {
        v37 = sub_A4E44();

        if ((v37 & 1) == 0)
        {
          break;
        }
      }

      sub_8DCA0(v25);
LABEL_76:
      v24 += v72;
      if (!--v22)
      {
        goto LABEL_77;
      }
    }

    if (*(v21 + 16) && (v38 = sub_A0E60(v73), (v39 & 1) != 0))
    {
      v40 = *(*(v21 + 56) + 8 * v38);

      sub_8DCA0(v25);
      v41 = *(v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count);
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_80;
      }

      *(v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count) = v43;
    }

    else
    {
      v71 = v22;
      v44 = v23;
      v45 = v2;
      v46 = v25;
      v47 = v12;
      (*v65)(v67, v46 + *(v12 + 32), v68);
      v48 = *(v66 + 48);
      v49 = *(v66 + 52);
      swift_allocObject();
      v50 = sub_2622C(v73, v67, 1);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v21;
      v52 = sub_A0E60(v73);
      v54 = *(v21 + 16);
      v55 = (v53 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        sub_A4EA4();
        __break(1u);
        JUMPOUT(0x94ED4);
      }

      v57 = v52;
      v58 = v53;
      sub_4BF0(&qword_DFFF8, qword_AC188);
      if (sub_A4C54(isUniquelyReferenced_nonNull_native, v56))
      {
        v59 = sub_A0E60(v73);
        if ((v58 & 1) != (v60 & 1))
        {
          goto LABEL_81;
        }

        v57 = v59;
      }

      v12 = v47;
      v25 = v69;
      v21 = v74;
      if (v58)
      {
        v61 = v74[7];
        v62 = *(v61 + 8 * v57);
        *(v61 + 8 * v57) = v50;

        sub_8DCA0(v69);
      }

      else
      {
        v74[(v57 >> 6) + 8] |= 1 << v57;
        *(v74[6] + v57) = v73;
        *(v74[7] + 8 * v57) = v50;

        sub_8DCA0(v69);
        v63 = v74[2];
        v42 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v42)
        {
          goto LABEL_79;
        }

        v74[2] = v64;
      }

      v2 = v45;
      v23 = v44;
      v22 = v71;
    }

    goto LABEL_76;
  }

LABEL_77:
  sub_939E4(v21);
  sub_2569C();
}

void sub_94F8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_4BF0(&qword_DBB70, &unk_A6E90);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_1BBF0();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_95068(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_558A8((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(type metadata accessor for CurrentWeatherForecast() - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_95148()
{
  sub_25714();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    sub_2569C();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(v3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_95294(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_953EC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_95458(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(type metadata accessor for CurrentWeatherForecast() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_95504()
{

  return swift_once();
}

void sub_95524(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_810AC(a1, a2 | 0x8000000000000000, v4 + 42, v2 | 0x8000000000000000, 0xD000000000000020, v3 | 0x8000000000000000);
}

uint64_t sub_9555C()
{
  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v0;
  }

  if (v3 >= *(v2 - 88))
  {
    return *(v2 - 88);
  }

  else
  {
    return v3;
  }
}

unint64_t sub_955B4(char a1)
{
  v2._countAndFlagsBits = sub_95610(a1);
  sub_A46D4(v2);

  return 0xD000000000000014;
}

unint64_t sub_95610(char a1)
{
  result = 0x6564756C636E6F43;
  switch(a1)
  {
    case 1:
      result = 19279;
      break;
    case 2:
      result = 0x7055746867756143;
      break;
    case 3:
      result = 0x69616D6F44646441;
      break;
    case 4:
      result = 0x6F4465766F6D6552;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      v3 = 9;
      goto LABEL_12;
    case 7:
      result = 7562585;
      break;
    case 8:
      result = 28494;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      v3 = 5;
LABEL_12:
      result = v3 | 0xD000000000000012;
      break;
    case 11:
      result = 0x656E696C66664FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_95784(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFDF0;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_957F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_95784(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_95824@<X0>(unint64_t *a1@<X8>)
{
  result = sub_95610(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CommonDialogs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CommonDialogs(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x959ACLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_959E8()
{
  result = qword_E0000;
  if (!qword_E0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0000);
  }

  return result;
}

uint64_t sub_95A4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_95A6C, 0, 0);
}

uint64_t sub_95A6C()
{
  sub_5950();
  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v1 = sub_A43D4();
  sub_48A4(v1, qword_E0BA0);
  sub_810C4(0xD000000000000010, 0x80000000000B4CD0, 0xD00000000000002ELL, 0x80000000000B4CF0, 0xD000000000000019, 0x80000000000B4D20);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_95B90;
  v3 = *(v0 + 16);

  return sub_4F0F8();
}

uint64_t sub_95B90()
{
  sub_5950();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 32);
  v5 = *v0;

  if (v2)
  {
    v6 = swift_task_alloc();
    *(v3 + 40) = v6;
    *v6 = v5;
    v6[1] = sub_95D00;
    v7 = *(v3 + 16);

    return sub_4EE58(3, 0);
  }

  else
  {

    return _swift_task_switch(sub_95DF8, 0, 0);
  }
}

uint64_t sub_95D00()
{
  sub_5950();
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_95DF8, 0, 0);
}

uint64_t sub_95DF8()
{
  sub_5950();
  v1 = *sub_7584(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_4D81C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_95E60()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0008);
  v1 = sub_48A4(v0, qword_E0008);
  if (qword_DA9D8 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0BB8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_95F28()
{
  sub_5950();
  *(v0 + 88) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 16) = v4;
  v5 = sub_4BF0(&qword_DD4A0, &qword_A9200);
  *(v0 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v0 + 48) = swift_task_alloc();
  sub_40210();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_95FC8()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v5[2] = 0x4018000000000000;
  v5[3] = &unk_AC330;
  v5[4] = v4;
  v5[5] = 0xD00000000000001ELL;
  v5[6] = 0x80000000000B4D40;
  v6 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  swift_task_alloc();
  sub_1A6A0();
  *(v0 + 72) = v7;
  *v7 = v8;
  v7[1] = sub_96108;
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v9, v10, v10, 0, 0, &unk_AC338, v5, v10);
}

uint64_t sub_96108()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  v4 = v2[9];
  v5 = *v1;
  sub_5930();
  *v6 = v5;
  v3[10] = v0;

  if (!v0)
  {
    v7 = v3[7];
    v8 = v3[8];
  }

  sub_40210();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_96218()
{
  sub_5950();
  sub_98AA4(*(v0 + 48), *(v0 + 16), &qword_DD4A0, &qword_A9200);
  v1 = *(v0 + 48);

  sub_AA9C();

  return v2();
}

uint64_t sub_9628C()
{
  v1 = v0[7];
  v2 = v0[8];

  if (qword_DAAA0 != -1)
  {
    sub_99198();
  }

  v3 = v0[10];
  v4 = v0[5];
  v5 = v0[2];
  v6 = sub_A43D4();
  sub_48A4(v6, qword_E0008);
  sub_810AC(0xD000000000000015, 0x80000000000B4D60, 0xD00000000000002CLL, 0x80000000000B4D80, 0xD00000000000001ELL, 0x80000000000B4D40);
  sub_9678C();
  v7 = swift_allocError();
  *v8 = 8;

  *v5 = v7;
  swift_storeEnumTagMultiPayload();
  v9 = v0[6];

  sub_AA9C();

  return v10();
}

uint64_t sub_963D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_963FC, 0, 0);
}

uint64_t sub_963FC()
{
  sub_5950();
  if (qword_DAAA0 != -1)
  {
    sub_99198();
  }

  v1 = sub_A43D4();
  sub_48A4(v1, qword_E0008);
  sub_810AC(0xD00000000000001ELL, 0x80000000000B4DB0, 0xD00000000000002CLL, 0x80000000000B4D80, 0xD00000000000001ELL, 0x80000000000B4D40);
  swift_task_alloc();
  sub_1A6A0();
  *(v0 + 40) = v2;
  *v2 = v3;
  v2[1] = sub_96518;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = *(v0 + 48);

  return sub_967E0(v6, v4, v5, v7);
}

uint64_t sub_96518()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  sub_AA9C();

  return v5();
}

uint64_t sub_96608(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  swift_task_alloc();
  sub_1A6A0();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_A648;

  return sub_963D4(a1, v4, v5, v6);
}

uint64_t sub_966B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  v5 = v0[6];
  swift_task_alloc();
  sub_1A6A0();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_A648;

  return sub_3B8A0();
}

unint64_t sub_9678C()
{
  result = qword_E0020;
  if (!qword_E0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0020);
  }

  return result;
}

uint64_t sub_967E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 80) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(sub_4BF0(&qword_E0028, &qword_AC348) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v6 = type metadata accessor for AggregateCommonForecast();
  *(v4 + 48) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_968B4, 0, 0);
}

uint64_t sub_968B4()
{
  if (*(v0 + 80) >= 2u)
  {
    if (qword_DAAA0 != -1)
    {
      sub_99198();
    }

    v8 = *(v0 + 16);
    v9 = sub_A43D4();
    sub_48A4(v9, qword_E0008);
    sub_99230("Failed to fetch weather.");
    sub_24824();
    v10 = swift_allocError();
    *v11 = 1;
    *v8 = v10;
    sub_4BF0(&qword_DD4A0, &qword_A9200);
    swift_storeEnumTagMultiPayload();
    v12 = *(v0 + 56);
    v13 = *(v0 + 40);

    sub_AA9C();

    return v14();
  }

  else
  {
    v2 = *(v0 + 24);
    v1 = *(v0 + 32);
    if (qword_DAAA0 != -1)
    {
      sub_99198();
    }

    v3 = sub_A43D4();
    *(v0 + 64) = sub_48A4(v3, qword_E0008);
    sub_99230("Returning weatherKit response.");
    swift_task_alloc();
    sub_1A6A0();
    *(v0 + 72) = v4;
    *v4 = v5;
    v4[1] = sub_96AC8;
    v6 = *(v0 + 40);

    return sub_96D9C(v6, v2, v1);
  }
}

uint64_t sub_96AC8()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 72);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  sub_40210();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_96BB0()
{
  v1 = v0[5];
  v2 = sub_CF2C(v1, 1, v0[6]);
  v3 = v0[2];
  if (v2 == 1)
  {
    v4 = v0[8];
    sub_11E34(v1, &qword_E0028, &qword_AC348);
    sub_810AC(0xD000000000000018, 0x80000000000B4E20, 0xD00000000000002CLL, 0x80000000000B4D80, 0xD00000000000001FLL, 0x80000000000B4E00);
    sub_9678C();
    v5 = swift_allocError();
    *v6 = 0;
    *v3 = v5;
  }

  else
  {
    v7 = v0[7];
    sub_989BC(v1, v7, type metadata accessor for AggregateCommonForecast);
    sub_97844(v7, v3);
    sub_98464(v7);
  }

  sub_4BF0(&qword_DD4A0, &qword_A9200);
  swift_storeEnumTagMultiPayload();
  v8 = v0[7];
  v9 = v0[5];

  sub_AA9C();

  return v10();
}

uint64_t type metadata accessor for AggregateCommonForecast()
{
  result = qword_E00B0;
  if (!qword_E00B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_96D9C(uint64_t a1, double a2, double a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 48) = a1;
  v4 = sub_4BF0(&qword_E0038, &qword_AC368);
  *(v3 + 72) = v4;
  v5 = *(v4 - 8);
  *(v3 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v7 = sub_4BF0(&qword_E0040, &qword_AC370);
  *(v3 + 96) = v7;
  v8 = *(v7 - 8);
  *(v3 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v10 = sub_4BF0(&qword_E0048, &qword_AC378);
  *(v3 + 120) = v10;
  v11 = *(v10 - 8);
  *(v3 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v13 = sub_4BF0(&qword_E0050, &qword_AC380);
  *(v3 + 144) = v13;
  v14 = *(v13 - 8);
  *(v3 + 152) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v16 = sub_4BF0(&qword_E0030, &qword_AC360);
  *(v3 + 168) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v18 = sub_4BF0(&qword_DE088, qword_A9A40);
  *(v3 + 184) = v18;
  v19 = *(v18 - 8);
  *(v3 + 192) = v19;
  v20 = *(v19 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  v21 = sub_4BF0(&qword_DE070, &qword_A9A30);
  *(v3 + 208) = v21;
  v22 = *(v21 - 8);
  *(v3 + 216) = v22;
  v23 = *(v22 + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  v24 = sub_A30F4();
  *(v3 + 232) = v24;
  v25 = *(v24 - 8);
  *(v3 + 240) = v25;
  v26 = *(v25 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_9710C, 0, 0);
}

uint64_t sub_9710C()
{
  v1 = *(v0 + 29);
  v2 = *(v0 + 26);
  v3 = *(v0 + 23);
  v4 = *(v0 + 20);
  v28 = *(v0 + 21);
  v5 = *(v0 + 17);
  v6 = *(v0 + 14);
  v7 = *(v0 + 11);
  v9 = v0[7];
  v8 = v0[8];
  sub_A3164();
  *(v0 + 32) = sub_A3154();
  v10 = [objc_allocWithZone(CLLocation) initWithLatitude:v9 longitude:v8];
  *(v0 + 33) = v10;
  sub_A3134();
  sub_A3124();
  sub_A3114();
  sub_A3104();
  v11 = async function pointer to WeatherService.weather<A, B, C, D>(for:including:_:_:_:)[1];
  swift_task_alloc();
  sub_1A6A0();
  *(v0 + 34) = v12;
  *v12 = v13;
  v12[1] = sub_9728C;
  v14 = *(v0 + 31);
  v15 = *(v0 + 28);
  v16 = *(v0 + 25);
  v17 = *(v0 + 22);
  v18 = *(v0 + 20);
  v19 = *(v0 + 17);
  v20 = *(v0 + 14);
  v26 = *(v0 + 23);
  v27 = *(v0 + 21);
  v24 = *(v0 + 29);
  v25 = *(v0 + 26);
  v23 = *(v0 + 11);

  return WeatherService.weather<A, B, C, D>(for:including:_:_:_:)(v14, v15, v16, v17, v10, v18, v19, v20);
}

uint64_t sub_9728C()
{
  sub_AAA8();
  v3 = *(v2 + 272);
  v30 = *(v2 + 160);
  sub_10938();
  v5 = *(v4 + 152);
  v29 = *(v6 + 144);
  sub_10938();
  v28 = *(v7 + 136);
  sub_10938();
  v9 = *(v8 + 128);
  v27 = *(v10 + 120);
  sub_10938();
  v26 = *(v11 + 112);
  sub_10938();
  v13 = *(v12 + 104);
  v15 = v14[12];
  v16 = v14[11];
  v17 = v14[10];
  v18 = v14[9];
  v19 = *v1;
  sub_5930();
  *v20 = v19;
  *(v21 + 280) = v0;

  (*(v17 + 8))(v16, v18);
  (*(v13 + 8))(v26, v15);
  (*(v9 + 8))(v28, v27);
  (*(v5 + 8))(v30, v29);
  sub_40210();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_974FC()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  v8 = *(v0 + 192);
  v13 = *(v0 + 184);
  v14 = *(v0 + 200);
  v15 = *(v0 + 176);
  v9 = *(v0 + 48);

  (*(v3 + 32))(v9, v2, v4);
  v10 = type metadata accessor for AggregateCommonForecast();
  (*(v7 + 32))(v9 + v10[5], v5, v6);
  (*(v8 + 32))(v9 + v10[6], v14, v13);
  sub_98AA4(v15, v9 + v10[7], &qword_E0030, &qword_AC360);
  sub_A924(v9, 0, 1, v10);
  sub_99200();

  sub_AA9C();

  return v11();
}

uint64_t sub_97674()
{
  if (qword_DAAA0 != -1)
  {
    sub_99198();
  }

  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[6];
  v5 = sub_A43D4();
  sub_48A4(v5, qword_E0008);
  sub_A4B54(40);

  sub_10944();
  v13 = v6;
  swift_getErrorValue();
  v8 = v0[2];
  v7 = v0[3];
  v9 = v0[4];
  v15._countAndFlagsBits = sub_A4EC4();
  sub_A46D4(v15);

  sub_81094(0xD000000000000026, v13, 0xD00000000000002CLL, 0x80000000000B4D80, 0xD000000000000017, 0x80000000000B4F70);

  v10 = type metadata accessor for AggregateCommonForecast();
  sub_A924(v4, 1, 1, v10);
  sub_99200();

  sub_AA9C();

  return v11();
}

uint64_t sub_97844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v139 = sub_4BF0(&qword_DB768, &unk_A9650);
  v3 = sub_591C(v139);
  v138 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v137 = &v126 - v7;
  v130 = sub_A2EA4();
  v8 = sub_591C(v130);
  v129 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_AA54();
  v146 = v13 - v12;
  v128 = type metadata accessor for WeatherState();
  v14 = sub_7A14(v128);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_AA54();
  v131 = v18 - v17;
  v133 = sub_A43D4();
  v19 = sub_591C(v133);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_AA54();
  v26 = v25 - v24;
  v27 = sub_4BF0(&qword_E0030, &qword_AC360);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v126 - v29;
  v31 = sub_A31D4();
  v32 = sub_591C(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  sub_AA54();
  v39 = v38 - v37;
  v40 = type metadata accessor for CurrentWeatherForecast();
  v41 = sub_7A14(v40);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  sub_AA54();
  v46 = v45 - v44;
  v47 = type metadata accessor for AggregateCommonForecast();
  sub_58F50(a1 + v47[6], v46);
  v134 = v40;
  v48 = *(v40 + 28);
  v145 = v46;
  v135 = *(v46 + v48);
  v150 = 0;
  v49 = v47[7];
  v136 = a1;
  sub_9894C(a1 + v49, v30);
  if (sub_CF2C(v30, 1, v31) == 1)
  {
    sub_11E34(v30, &qword_E0030, &qword_AC360);
    v50 = 0;
    v143 = 0;
    v144 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
  }

  else
  {
    (*(v34 + 32))(v39, v30, v31);
    sub_52400(v151);
    v51 = v151[0];
    v50 = v152;
    v143 = v153;
    v144 = v154;
    v142 = v155;
    v141 = v156;
    v140 = v157;
    (*(v34 + 8))(v39, v31);
    sub_40210();
    sub_98A60(v52, v53, v54, 0);
    v150 = v51;
  }

  v55 = v133;
  if (qword_DAAA0 != -1)
  {
    sub_99198();
  }

  v56 = sub_48A4(v55, qword_E0008);
  (*(v21 + 16))(v26, v56, v55);
  v158 = 0;
  v159 = 0xE000000000000000;
  sub_A4B54(25);

  sub_10944();
  v148 = 0xD000000000000016;
  v149 = v57;
  v58 = v144;
  v127 = v50;
  if (v144)
  {
    LOBYTE(v158) = v150 & 1;
    v159 = v50;
    v160 = v143;
    v161 = v144;
    v162 = v142;
    v163 = v141;
    v164 = v140;
    v59._countAndFlagsBits = sub_52128();
    object = v59._object;
  }

  else
  {
    object = 0xE300000000000000;
    v59._countAndFlagsBits = 4999502;
  }

  v59._object = object;
  sub_A46D4(v59);

  v165._countAndFlagsBits = 44;
  v165._object = 0xE100000000000000;
  sub_A46D4(v165);
  v62 = v148;
  v61 = v149;
  v148 = 0;
  v149 = 0xE000000000000000;
  sub_A4B54(26);

  sub_10944();
  v148 = 0xD000000000000018;
  v149 = v63;
  if (v58 && (v150 & 1) != 0)
  {
    v64 = 0xE400000000000000;
    v65._countAndFlagsBits = 1702195828;
  }

  else
  {
    v64 = 0xE500000000000000;
    v65._countAndFlagsBits = 0x65736C6166;
  }

  v65._object = v64;
  sub_A46D4(v65);

  v67 = v148;
  v66 = v149;
  v148 = v62;
  v149 = v61;

  v166._countAndFlagsBits = v67;
  v166._object = v66;
  sub_A46D4(v166);

  sub_99260();
  sub_810C4(v68, v69, v70, v71, v72, v73);

  (*(v21 + 8))(v26, v55);
  v74 = sub_59680(v136 + v47[5]);
  v148 = 0;
  v149 = 0xE000000000000000;
  sub_A4B54(47);

  sub_10944();
  v148 = 0xD00000000000002DLL;
  v149 = v75;
  v147 = *(v74 + 16);
  v167._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v167);

  sub_99260();
  sub_810AC(v76, v77, v78, v79, v80, v81);

  v82 = v135;
  v83 = sub_984C0(v145 + *(v134 + 32), v74, v135);

  sub_A2E94();
  v84 = [objc_opt_self() fahrenheit];
  v85 = v137;
  v86 = v139;
  sub_A2B64();

  sub_A2B54();
  v88 = v87;
  (*(v138 + 8))(v85, v86);
  v89 = sub_13894(v82);
  v91 = v90;
  v92 = sub_1BF68(v83);
  v93 = _swiftEmptyArrayStorage;
  if (v92)
  {
    v94 = v92;
    v148 = _swiftEmptyArrayStorage;
    sub_7AC94(0, v92 & ~(v92 >> 63), 0);
    if (v94 < 0)
    {
      __break(1u);
      JUMPOUT(0x98408);
    }

    v138 = v91;
    v139 = v89;
    v95 = 0;
    v93 = v148;
    do
    {
      if ((v83 & 0xC000000000000001) != 0)
      {
        v96 = sub_A4B74();
      }

      else
      {
        v97 = *(v83 + 8 * v95 + 32);
      }

      v98 = *(v96 + 16);

      v99 = 0xE900000000000065;
      v100 = 0x6E61636972727568;
      switch(v98)
      {
        case 1:
          v99 = 0xE700000000000000;
          v100 = 0x6F64616E726F74;
          break;
        case 2:
          v100 = 0x6C616369706F7274;
          v99 = 0xED00006D726F7453;
          break;
        case 3:
          v99 = 0xE800000000000000;
          v100 = 0x6472617A7A696C62;
          break;
        case 4:
          v99 = 0xE400000000000000;
          v100 = 1818845544;
          break;
        case 5:
          v100 = 0x737265646E756874;
          v101 = 1836216180;
          goto LABEL_43;
        case 6:
          v99 = 0xE500000000000000;
          v100 = 0x7465656C73;
          break;
        case 7:
          v99 = 0xE500000000000000;
          v102 = 2003791475;
          goto LABEL_39;
        case 8:
          v100 = 0x53676E69776F6C62;
          v103 = 7827310;
          goto LABEL_41;
        case 9:
          v99 = 0xE500000000000000;
          v102 = 1852399986;
          goto LABEL_39;
        case 10:
          v99 = 0xE500000000000000;
          v102 = 1802464627;
          goto LABEL_39;
        case 11:
          v99 = 0xE400000000000000;
          v100 = 1953723748;
          break;
        case 12:
          v99 = 0xE500000000000000;
          v102 = 1684957559;
          goto LABEL_39;
        case 13:
          v99 = 0xE500000000000000;
          v102 = 1734831974;
LABEL_39:
          v100 = v102 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 14:
          v99 = 0xE400000000000000;
          v100 = 1702519144;
          break;
        case 15:
          v99 = 0xE600000000000000;
          v100 = 0x7964756F6C63;
          break;
        case 16:
          v100 = 0x6C43796C74726170;
          v101 = 2036626799;
          goto LABEL_43;
        case 17:
          v99 = 0xE500000000000000;
          v100 = 0x7261656C63;
          break;
        case 18:
          v99 = 0xE400000000000000;
          v100 = 1684828003;
          break;
        case 19:
          v99 = 0xE300000000000000;
          v100 = 7630696;
          break;
        case 20:
          v100 = 0x6F6C43646578696DLL;
          v103 = 7955573;
LABEL_41:
          v99 = v103 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 21:
          v99 = 0xEA00000000007261;
          v100 = 0x656C43646578696DLL;
          break;
        case 22:
          v100 = 0x6C69617641746F6ELL;
          v101 = 1701601889;
LABEL_43:
          v99 = v101 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      v148 = v93;
      v105 = v93[2];
      v104 = v93[3];
      if (v105 >= v104 >> 1)
      {
        sub_7AC94((v104 > 1), v105 + 1, 1);
        v93 = v148;
      }

      ++v95;
      v93[2] = v105 + 1;
      v106 = &v93[2 * v105];
      v106[4] = v100;
      v106[5] = v99;
    }

    while (v94 != v95);
    v89 = v139;
    v91 = v138;
  }

  v107 = v131;
  (*(v129 + 32))(v131, v146, v130);
  v108 = v128;
  *(v107 + *(v128 + 20)) = v88;
  v109 = (v107 + *(v108 + 24));
  *v109 = v89;
  v109[1] = v91;
  *(v107 + *(v108 + 28)) = v93;
  v110 = v132;
  sub_989BC(v145, v132, type metadata accessor for CurrentWeatherForecast);
  v111 = v150;
  v112 = type metadata accessor for WeatherPreprocessingResult(0);
  *(v110 + v112[5]) = v83;
  v113 = (v110 + v112[6]);
  v114 = v127;
  *v113 = v111;
  v113[1] = v114;
  v115 = v144;
  v113[2] = v143;
  v113[3] = v115;
  v116 = v141;
  v113[4] = v142;
  v113[5] = v116;
  v113[6] = v140;
  sub_989BC(v107, v110 + v112[7], type metadata accessor for WeatherState);
  v117 = sub_991E0();
  sub_98A1C(v117, v118, v119, v120);
  v121 = sub_991E0();
  return sub_98A60(v121, v122, v123, v124);
}