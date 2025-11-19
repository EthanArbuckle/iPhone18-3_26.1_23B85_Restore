Swift::Int sub_1004C4340()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004C43B0()
{
  String.hash(into:)();
}

Swift::Int sub_1004C440C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004C4478@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A4B0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1004C44D8(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 1717924456;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1004C4504()
{
  if (*v0)
  {
    return 1717924456;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1004C452C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10075A4B0, v3);

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

uint64_t sub_1004C4590(uint64_t a1)
{
  v2 = sub_1004D4090();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C45CC(uint64_t a1)
{
  v2 = sub_1004D4090();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C4608@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1004D32D4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

Swift::Int sub_1004C4638()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1004C46A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004C46F4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A568, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1004C477C@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10075A5A0, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1004C47D4(uint64_t a1)
{
  v2 = sub_1004D3BF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C4810(uint64_t a1)
{
  v2 = sub_1004D3BF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C484C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x67616279656BLL;
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = 0x80000001006C38E0;
  if (v3 == 1)
  {
    v6 = 0xD00000000000001CLL;
  }

  else
  {
    v6 = 0x67616279656BLL;
  }

  if (v3 == 1)
  {
    v4 = 0x80000001006C38E0;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v3)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0x80000001006C38C0;
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0x80000001006C38C0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1004C4928()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004C49CC()
{
  String.hash(into:)();
}

Swift::Int sub_1004C4A5C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004C4AFC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004D34B8(*a1);
  *a2 = result;
  return result;
}

void sub_1004C4B2C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x67616279656BLL;
  if (v2 == 1)
  {
    v4 = 0xD00000000000001CLL;
    v3 = 0x80000001006C38E0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x80000001006C38C0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1004C4B8C()
{
  v1 = 0x67616279656BLL;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t sub_1004C4BE8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004D34B8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1004C4C10(uint64_t a1)
{
  v2 = sub_1004D3C48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C4C4C(uint64_t a1)
{
  v2 = sub_1004D3C48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C4C88(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = Array.init()();
  if ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0)
  {
    while (1)
    {
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      if (v1)
      {
        break;
      }

      type metadata accessor for Array();
      Array.append(_:)();
      if (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter())
      {
        return v2;
      }
    }
  }

  return v2;
}

uint64_t sub_1004C4DB4(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_1007851C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100006D8C(a1, a1[3]);
  sub_1004D3AEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  sub_1001F0C48(&qword_1007851D0);
  sub_1004D3B40();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10[5] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004C4F80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1004D3504(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1004C4FB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684632935;
  if (v2 != 1)
  {
    v5 = 0x636E7973626BLL;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1635017060;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1684632935;
  if (*a2 != 1)
  {
    v8 = 0x636E7973626BLL;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1635017060;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1004C5090()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004C5120()
{
  String.hash(into:)();
}

Swift::Int sub_1004C519C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004C5228@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004D3A54(*a1);
  *a2 = result;
  return result;
}

void sub_1004C5258(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684632935;
  if (v2 != 1)
  {
    v5 = 0x636E7973626BLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1635017060;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1004C52A4()
{
  v1 = 1684632935;
  if (*v0 != 1)
  {
    v1 = 0x636E7973626BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1635017060;
  }
}

unint64_t sub_1004C52EC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004D3A54(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1004C5314(uint64_t a1)
{
  v2 = sub_1004D3AEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C5350(uint64_t a1)
{
  v2 = sub_1004D3AEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C53A4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Platform();
  v10 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 5)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        static Platform.iOS.getter();
LABEL_9:
        (*(v10 + 32))(a2, v6, v4);
        return (*(v10 + 56))(a2, 0, 1, v4);
      }

      goto LABEL_10;
    }

LABEL_8:
    static Platform.macOS.getter();
    goto LABEL_9;
  }

  if (a1 == 6)
  {
    goto LABEL_8;
  }

  if (a1 == 11)
  {
    static Platform.visionOS.getter();
    goto LABEL_9;
  }

LABEL_10:
  v8 = *(v10 + 56);

  return v8(a2, 1, 1, v4);
}

uint64_t sub_1004C5520(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1635018093;
  if (v2 != 1)
  {
    v3 = 1701869940;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 25705;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  v6 = 1635018093;
  if (*a2 != 1)
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 25705;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1004C55FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004C5684()
{
  String.hash(into:)();
}

Swift::Int sub_1004C56F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004C577C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004D3AA0(*a1);
  *a2 = result;
  return result;
}

void sub_1004C57AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 1635018093;
  if (v2 != 1)
  {
    v4 = 1701869940;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 25705;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1004C57F0()
{
  v1 = 1635018093;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_1004C5830@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004D3AA0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1004C5858(uint64_t a1)
{
  v2 = sub_1004C5BB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C5894(uint64_t a1)
{
  v2 = sub_1004C5BB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C58D0(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100785090);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  sub_100006D8C(a1, a1[3]);
  sub_1004C5BB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = type metadata accessor for MediaAPIUpdates.App();
  v15 = *(v3 + *(v9 + 28));
  dispatch thunk of CustomStringConvertible.description.getter();
  LOBYTE(v15) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1001F0C48(&qword_10077E988);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069E680;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000001006CC550;
    v15 = *(v3 + *(v9 + 32));
    *(inited + 48) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 56) = v12;
    v13 = sub_1005288C8(inited);
    swift_setDeallocating();
    sub_1000032A8(inited + 32, &qword_100784360);
    v15 = v13;
    v14[15] = 1;
    sub_1001F0C48(&qword_100781758);
    sub_10036EC94();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_1004C5BB4()
{
  result = qword_100785098;
  if (!qword_100785098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785098);
  }

  return result;
}

uint64_t type metadata accessor for MediaAPIUpdates.App()
{
  result = qword_100785150;
  if (!qword_100785150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1004C5C64@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C5C78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F0E54;

  return sub_1004C2F20(a1, v4, v5, v6);
}

uint64_t sub_1004C5D30(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_1001F0C48(&qword_1007850F0);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for MediaAPIUpdates.App();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = type metadata accessor for DDMPurchaseMethod();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809E0);
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for DDMDeclaration(0);
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_1004C6000, 0, 0);
}

uint64_t sub_1004C6000()
{
  *(v0 + 208) = *(*sub_100006D8C(*(v0 + 24), *(*(v0 + 24) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);

  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_1004C6128;

  return sub_1003B1FCC(sub_1003047B4, 0);
}

uint64_t sub_1004C6128(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_1004D3C9C(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_1004C65EC;
  }

  else
  {
    v6 = sub_1004C62DC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1004C62DC()
{

  return _swift_task_switch(sub_1004C6370, 0, 0);
}

uint64_t sub_1004C6370()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + 16);
  *(v0 + 240) = v2;
  if (v2)
  {
    v3 = *(type metadata accessor for DDMDeclarationStatus(0) - 8);
    v4 = *(v3 + 80);
    *(v0 + 312) = v4;
    v5 = *(v3 + 72);
    *(v0 + 316) = enum case for DDMPurchaseMethod.volumePurchaseProgram(_:);
    *(v0 + 256) = 0;
    *(v0 + 264) = _swiftEmptyArrayStorage;
    *(v0 + 248) = v5;
    v6 = v1 + ((v4 + 32) & ~v4);
    v7 = *(*sub_100006D8C(*(v0 + 24), *(*(v0 + 24) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    *(v0 + 272) = v7;
    *(v0 + 280) = *(v6 + 24);
    *(v0 + 288) = *(v6 + 32);

    return _swift_task_switch(sub_1004C6734, v7, 0);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1004C65EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C6734()
{
  v1 = v0;
  v2 = v0[36];
  v3 = v1[35];
  v4 = *(v1[34] + 112);
  v5 = swift_task_alloc();
  v1[37] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v1[38] = v6;
  *v6 = v1;
  v6[1] = sub_1004C684C;
  v7 = v1[18];

  return sub_1003B0094(v7, sub_100271184, v5, v4);
}

uint64_t sub_1004C684C()
{
  v2 = *v1;

  v3 = *(v2 + 272);
  if (v0)
  {

    v4 = sub_1004C74B8;
    v5 = v3;
  }

  else
  {

    v4 = sub_1004C6A08;
    v5 = 0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1004C6A08()
{
  v91 = v0;
  v1 = *(v0 + 316);
  v2 = *(v0 + 200);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  (*(*(v0 + 160) + 56))(v3, 0, 1, *(v0 + 152));
  sub_1004D2F08(v3, v2, type metadata accessor for DDMDeclaration);
  (*(v6 + 104))(v4, v1, v5);
  LOBYTE(v1) = static DDMPurchaseMethod.== infix(_:_:)();
  (*(v6 + 8))(v4, v5);
  v7 = *(v0 + 200);
  if ((v1 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (*(v7 + *(*(v0 + 152) + 92) + 8) != 1)
  {
    v40 = *(v0 + 168);
    v41 = *(v0 + 200);
    static Logger.updates.getter();
    sub_1004D2D7C(v41, v40, type metadata accessor for DDMDeclaration);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 200);
    v46 = *(v0 + 168);
    v47 = *(v0 + 40);
    v48 = *(v0 + 48);
    v49 = *(v0 + 32);
    if (v44)
    {
      v89 = *(v0 + 48);
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v90 = v51;
      *v50 = 136446210;
      v87 = v45;
      v53 = *(v46 + 48);
      v52 = *(v46 + 56);

      v85 = v49;
      sub_1004D2DE4(v46, type metadata accessor for DDMDeclaration);
      v54 = sub_1002346CC(v53, v52, &v90);

      *(v50 + 4) = v54;
      v55 = "Skipping update checks for %{public}s because this app is pinned to the current version.";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v42, v43, v55, v50, 0xCu);
      sub_10000710C(v51);

      (*(v47 + 8))(v89, v85);
      v7 = v87;
      goto LABEL_20;
    }

LABEL_18:

    sub_1004D2DE4(v46, type metadata accessor for DDMDeclaration);
    (*(v47 + 8))(v48, v49);
    v7 = v45;
    goto LABEL_20;
  }

  v8 = objc_allocWithZone(LSApplicationRecord);
  v9 = String._bridgeToObjectiveC()();
  *(v0 + 16) = 0;
  v10 = [v8 initWithBundleIdentifier:v9 fetchingPlaceholder:0 error:v0 + 16];

  v11 = *(v0 + 16);
  if (!v10)
  {
    v62 = *(v0 + 200);
    v63 = *(v0 + 176);
    v64 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    static Logger.updates.getter();
    sub_1004D2D7C(v62, v63, type metadata accessor for DDMDeclaration);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v65 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 200);
    v46 = *(v0 + 176);
    v48 = *(v0 + 56);
    v49 = *(v0 + 32);
    v47 = *(v0 + 40);
    if (v65)
    {
      v89 = *(v0 + 56);
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v90 = v51;
      *v50 = 136446210;
      v87 = v45;
      v67 = *(v46 + 48);
      v66 = *(v46 + 56);

      v85 = v49;
      sub_1004D2DE4(v46, type metadata accessor for DDMDeclaration);
      v68 = sub_1002346CC(v67, v66, &v90);

      *(v50 + 4) = v68;
      v55 = "Skipping update checks for %{public}s, record not found";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v12 = v11;
  v13 = sub_10060D18C();
  if (!v13 || (v14 = v13, v15 = [v13 managementDeclarationIdentifier], v14, !v15))
  {
    v56 = *(v0 + 200);
    v57 = *(v0 + 184);
    static Logger.updates.getter();
    sub_1004D2D7C(v56, v57, type metadata accessor for DDMDeclaration);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v58 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 200);
    v30 = *(v0 + 184);
    v31 = *(v0 + 64);
    v32 = *(v0 + 32);
    v33 = (*(v0 + 40) + 8);
    if (v58)
    {
      v88 = *(v0 + 32);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v90 = v35;
      *v34 = 136446210;
      v84 = v31;
      v86 = v29;
      v59 = *(v30 + 48);
      v60 = *(v30 + 56);

      sub_1004D2DE4(v30, type metadata accessor for DDMDeclaration);
      v61 = sub_1002346CC(v59, v60, &v90);

      *(v34 + 4) = v61;
      v39 = "Skipping update checks for %{public}s, it is not managed";
      goto LABEL_14;
    }

LABEL_19:

    sub_1004D2DE4(v30, type metadata accessor for DDMDeclaration);
    (*v33)(v31, v32);
    v7 = v29;
    goto LABEL_20;
  }

  v16 = *(v0 + 200);
  v17 = *(v0 + 152);
  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  v20 = *(v0 + 80);

  v21 = (v16 + *(v17 + 52));
  v22 = *v21;
  v23 = v21[1];
  v10 = v10;

  sub_1004C3A00(v10, v22, v23, v20);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v25 = *(v0 + 192);
    v24 = *(v0 + 200);
    sub_1000032A8(*(v0 + 80), &qword_1007850F0);
    static Logger.updates.getter();
    sub_1004D2D7C(v24, v25, type metadata accessor for DDMDeclaration);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v0 + 192);
    v29 = *(v0 + 200);
    v31 = *(v0 + 72);
    v32 = *(v0 + 32);
    v33 = (*(v0 + 40) + 8);
    if (v28)
    {
      v88 = *(v0 + 32);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v90 = v35;
      *v34 = 136446210;
      v84 = v31;
      v86 = v29;
      v36 = *(v30 + 48);
      v37 = *(v30 + 56);

      sub_1004D2DE4(v30, type metadata accessor for DDMDeclaration);
      v38 = sub_1002346CC(v36, v37, &v90);

      *(v34 + 4) = v38;
      v39 = "Skipping update checks for %{public}s, it is invalid";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v26, v27, v39, v34, 0xCu);
      sub_10000710C(v35);

      (*v33)(v84, v88);
      v7 = v86;
LABEL_20:
      sub_1004D2DE4(v7, type metadata accessor for DDMDeclaration);
      v69 = *(v0 + 264);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v76 = *(v0 + 104);
  v75 = *(v0 + 112);
  sub_1004D2F08(*(v0 + 80), v75, type metadata accessor for MediaAPIUpdates.App);
  sub_1004D2D7C(v75, v76, type metadata accessor for MediaAPIUpdates.App);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = *(v0 + 264);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v69 = sub_1003640A8(0, v69[2] + 1, 1, *(v0 + 264));
  }

  v79 = v69[2];
  v78 = v69[3];
  if (v79 >= v78 >> 1)
  {
    v69 = sub_1003640A8(v78 > 1, v79 + 1, 1, v69);
  }

  v80 = *(v0 + 200);
  v82 = *(v0 + 104);
  v81 = *(v0 + 112);
  v83 = *(v0 + 96);

  sub_1004D2DE4(v81, type metadata accessor for MediaAPIUpdates.App);
  sub_1004D2DE4(v80, type metadata accessor for DDMDeclaration);
  v69[2] = v79 + 1;
  sub_1004D2F08(v82, v69 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v79, type metadata accessor for MediaAPIUpdates.App);
LABEL_21:
  v70 = *(v0 + 256) + 1;
  if (v70 == *(v0 + 240))
  {

    v71 = *(v0 + 8);

    return v71(v69);
  }

  else
  {
    *(v0 + 256) = v70;
    *(v0 + 264) = v69;
    v73 = *(v0 + 224) + ((*(v0 + 312) + 32) & ~*(v0 + 312)) + *(v0 + 248) * v70;
    v74 = *(*sub_100006D8C(*(v0 + 24), *(*(v0 + 24) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    *(v0 + 272) = v74;
    *(v0 + 280) = *(v73 + 24);
    *(v0 + 288) = *(v73 + 32);

    return _swift_task_switch(sub_1004C6734, v74, 0);
  }
}

uint64_t sub_1004C74B8()
{

  return _swift_task_switch(sub_1004C754C, 0, 0);
}

uint64_t sub_1004C754C()
{
  v1 = *(v0 + 144);
  (*(*(v0 + 160) + 56))(v1, 1, 1, *(v0 + 152));
  sub_1000032A8(v1, &unk_1007809E0);
  v2 = *(v0 + 256) + 1;
  if (v2 == *(v0 + 240))
  {
    v7 = *(v0 + 264);

    v3 = *(v0 + 8);

    return v3(v7);
  }

  else
  {
    *(v0 + 256) = v2;
    v5 = *(v0 + 224) + ((*(v0 + 312) + 32) & ~*(v0 + 312)) + *(v0 + 248) * v2;
    v6 = *(*sub_100006D8C(*(v0 + 24), *(*(v0 + 24) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    *(v0 + 272) = v6;
    *(v0 + 280) = *(v5 + 24);
    *(v0 + 288) = *(v5 + 32);

    return _swift_task_switch(sub_1004C6734, v6, 0);
  }
}

uint64_t sub_1004C77AC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 464) = a5;
  *(v6 + 472) = a6;
  *(v6 + 448) = a3;
  *(v6 + 456) = a4;
  *(v6 + 440) = a2;
  *(v6 + 704) = a1;
  v7 = sub_1001F0C48(&qword_10077EA50);
  *(v6 + 480) = v7;
  *(v6 + 488) = *(v7 - 8);
  *(v6 + 496) = swift_task_alloc();
  v8 = sub_1001F0C48(&qword_10077EA58);
  *(v6 + 504) = v8;
  *(v6 + 512) = *(v8 - 8);
  *(v6 + 520) = swift_task_alloc();
  v9 = type metadata accessor for URLRequest();
  *(v6 + 528) = v9;
  *(v6 + 536) = *(v9 - 8);
  *(v6 + 544) = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  *(v6 + 552) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v6 + 560) = v10;
  *(v6 + 568) = *(v10 - 8);
  *(v6 + 576) = swift_task_alloc();

  return _swift_task_switch(sub_1004C79DC, 0, 0);
}

uint64_t sub_1004C79DC()
{
  *(v0 + 584) = [objc_allocWithZone(AMSURLSession) init];
  v1 = swift_task_alloc();
  *(v0 + 592) = v1;
  *v1 = v0;
  v1[1] = sub_1004C7A90;

  return sub_100324268(v0 + 272);
}

uint64_t sub_1004C7A90()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_1004C8BE4;
  }

  else
  {
    v2 = sub_1004C7BA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C7BA4()
{
  v1 = v0[73];
  object = v0[56];
  type metadata accessor for AMSCachedBag();
  v3 = static AMSCachedBag.makeBag(bagService:)();
  v0[76] = v3;
  v4 = objc_allocWithZone(AMSMediaTokenService);
  swift_unknownObjectRetain();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithClientIdentifier:v5 bag:v3];
  v0[77] = v6;
  swift_unknownObjectRelease();

  [v6 setAccount:object];
  [v6 setSession:v1];
  v7 = [objc_allocWithZone(AMSMediaProtocolHandler) initWithTokenService:v6];
  [v1 setProtocolHandler:v7];

  v8 = [objc_allocWithZone(AMSMediaResponseDecoder) init];
  [v1 setResponseDecoder:v8];

  v9 = [objc_allocWithZone(AMSMediaRequestEncoder) initWithTokenService:v6 bag:v3];
  v0[78] = v9;
  v50 = v9;
  [v9 setAccount:object];
  if (object)
  {
    v10 = object;
    v11 = sub_10061D17C(v10, 11);
    if (v12 >> 60 == 15)
    {

      countAndFlagsBits = 0;
      object = 0;
    }

    else
    {
      v14 = v11;
      v15 = v12;
      v16 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v16._countAndFlagsBits;
      object = v16._object;

      sub_10020B0E0(v14, v15);
    }
  }

  else
  {
    countAndFlagsBits = 0;
  }

  v0[80] = object;
  v0[79] = countAndFlagsBits;
  v17 = v0[37];
  v18 = sub_100006D8C(v0 + 34, v17);
  v19 = *(v17 - 8);
  v20 = swift_task_alloc();
  v49 = v19;
  (*(v19 + 16))(v20, v18, v17);
  v21 = objc_opt_self();
  v0[81] = v21;
  if ([v21 deviceIsiPad])
  {
    v22 = &AMSMediaTaskPlatformiPad;
LABEL_10:
    v23 = *v22;
    goto LABEL_12;
  }

  if ([v21 deviceIsiPhone])
  {
    v22 = &AMSMediaTaskPlatformiPhone;
    goto LABEL_10;
  }

  v23 = String._bridgeToObjectiveC()();
LABEL_12:
  v24 = v0[71];
  v53 = v0[70];
  v54 = v23;
  v25 = v0[69];
  v27 = v0[57];
  v26 = v0[58];
  v51 = sub_100364D78();
  v29 = v28;

  _StringGuts.grow(_:)(22);

  v30._countAndFlagsBits = v27;
  v30._object = v26;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x736574616470752FLL;
  v31._object = 0xE800000000000000;
  String.append(_:)(v31);
  sub_1004C303C(v54, v0 + 39);
  v48 = v17;
  v32 = v20;
  v34 = v0[42];
  v33 = v0[43];
  sub_100006D8C(v0 + 39, v34);
  (*(v33 + 8))(v34, v33);
  sub_1005D6FB4(v51, v29, v25);
  sub_10000710C((v0 + 39));
  if ((*(v24 + 48))(v25, 1, v53))
  {
    v46 = sub_1000032A8(v0[69], &unk_1007809F0);
    __break(1u);
  }

  else
  {
    v35 = v0[72];
    v36 = v0[71];
    v37 = v0[70];
    v38 = v0[69];
    v52 = v0[65];
    v39 = v0[63];
    v40 = v0[64];

    (*(v36 + 32))(v35, v38, v37);
    (*(v49 + 8))(v32, v48);

    URL._bridgeToObjectiveC()(v41);
    v43 = v42;
    v44 = [v50 requestWithURL:v42];
    v0[82] = v44;

    v0[2] = v0;
    v0[7] = v0 + 53;
    v0[3] = sub_1004C822C;
    swift_continuation_init();
    v0[25] = v39;
    v45 = sub_10020A748(v0 + 22);
    sub_100006190(0, &qword_10077EA60);
    v0[83] = sub_1001F0C48(&unk_10077F940);
    CheckedContinuation.init(continuation:function:)();
    (*(v40 + 32))(v45, v52, v39);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1004C2240;
    v0[21] = &unk_100766E90;
    [v44 resultWithCompletion:?];
    (*(v40 + 8))(v45, v39);
    v46 = (v0 + 2);
  }

  return _swift_continuation_await(v46);
}

uint64_t sub_1004C822C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 672) = v1;
  if (v1)
  {

    v2 = sub_1004C8CAC;
  }

  else
  {
    v2 = sub_1004C8344;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C8344()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[75];
  v6 = v0[55];
  v7 = v0[53];
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

  URLRequest.httpMethod.setter();
  v8._countAndFlagsBits = 0x2D746E65746E6F43;
  v8._object = 0xEC00000065707954;
  v9.value._object = 0x80000001006C4680;
  v9.value._countAndFlagsBits = 0xD000000000000010;
  URLRequest.setValue(_:forHTTPHeaderField:)(v9, v8);

  v10 = [v2 deviceGUID];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[44] = v6;
  v0[45] = v11;
  v0[46] = v13;
  v0[47] = v4;
  v0[48] = v3;
  sub_1004D2E60();
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[85] = v5;
  if (v5)
  {
    v14 = v0[78];
    v15 = v0[77];
    v31 = v0[72];
    v16 = v0[71];
    v17 = v0[68];
    v18 = v0[67];
    v19 = v0[66];
    v29 = v0[70];

    swift_unknownObjectRelease();
    (*(v18 + 8))(v17, v19);
    (*(v16 + 8))(v31, v29);

    sub_10000710C((v0 + 34));
    v20 = v0[73];
    [v20 finishTasksAndInvalidate];

    v21 = v0[1];

    return v21();
  }

  else
  {
    v23 = v0[73];
    v24 = v0[61];
    v30 = v0[62];
    v25 = v0[60];

    URLRequest.httpBody.setter();
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v27 = [v23 dataTaskPromiseWithRequest:isa];
    v0[86] = v27;

    v0[10] = v0;
    v0[15] = v0 + 54;
    v0[11] = sub_1004C87B8;
    swift_continuation_init();
    v0[33] = v25;
    v28 = sub_10020A748(v0 + 30);
    sub_100006190(0, &qword_10077EA68);
    CheckedContinuation.init(continuation:function:)();
    (*(v24 + 32))(v28, v30, v25);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_1004C2254;
    v0[29] = &unk_100766EB8;
    [v27 resultWithCompletion:?];
    (*(v24 + 8))(v28, v25);

    return _swift_continuation_await(v0 + 10);
  }
}

uint64_t sub_1004C87B8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 696) = v1;
  if (v1)
  {
    v2 = sub_1004C8DD4;
  }

  else
  {
    v2 = sub_1004C88C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C88C8()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 432);

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v3 = [v2 data];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_1004D2EB4();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v7 = *(v0 + 624);
  v8 = *(v0 + 616);
  if (v1)
  {
    v9 = v2;
    v10 = *(v0 + 568);
    v29 = *(v0 + 560);
    v30 = *(v0 + 576);
    v27 = *(v0 + 544);
    v11 = *(v0 + 536);
    v12 = *(v0 + 528);
    sub_100007158(v4, v6);

    swift_unknownObjectRelease();
    (*(v11 + 8))(v27, v12);
    (*(v10 + 8))(v30, v29);
    sub_10000710C(v0 + 272);
    v13 = *(v0 + 584);
    [v13 finishTasksAndInvalidate];

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v26 = *(v0 + 576);
    v28 = *(v0 + 584);
    v16 = *(v0 + 568);
    v24 = *(v0 + 544);
    v25 = *(v0 + 560);
    v17 = *(v0 + 536);
    v18 = *(v0 + 528);
    sub_100007158(v4, v6);

    swift_unknownObjectRelease();
    (*(v17 + 8))(v24, v18);
    (*(v16 + 8))(v26, v25);
    v20 = *(v0 + 392);
    v19 = *(v0 + 400);
    v21 = *(v0 + 408);
    v22 = *(v0 + 416);
    sub_10000710C(v0 + 272);
    [v28 finishTasksAndInvalidate];

    v23 = *(v0 + 8);

    return v23(v20, v19, v21, v22);
  }
}

uint64_t sub_1004C8BE4()
{
  v1 = *(v0 + 584);
  [v1 finishTasksAndInvalidate];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004C8CAC()
{
  v1 = v0[82];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  swift_willThrow();

  swift_unknownObjectRelease();
  (*(v5 + 8))(v4, v6);

  sub_10000710C((v0 + 34));
  v7 = v0[73];
  [v7 finishTasksAndInvalidate];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004C8DD4()
{
  v1 = v0[78];
  v2 = v0[77];
  v11 = v0[72];
  v12 = v0[86];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  swift_willThrow();

  swift_unknownObjectRelease();
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v11, v4);

  sub_10000710C((v0 + 34));
  v8 = v0[73];
  [v8 finishTasksAndInvalidate];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004C8F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[50] = a3;
  v4[51] = a4;
  v4[48] = a1;
  v4[49] = a2;
  v4[52] = type metadata accessor for DDMDeclaration(0);
  v4[53] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[54] = v5;
  v4[55] = *(v5 - 8);
  v4[56] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F3A0);
  v4[57] = swift_task_alloc();
  v6 = type metadata accessor for Platform();
  v4[58] = v6;
  v4[59] = *(v6 - 8);
  v4[60] = swift_task_alloc();

  return _swift_task_switch(sub_1004C90B0, 0, 0);
}

uint64_t sub_1004C90B0()
{
  v46 = v0;
  v1 = *(v0 + 400);
  if (*(v1 + *(*(v0 + 416) + 92) + 8) == 1)
  {
    v2 = *(v0 + 384);
    v4 = *v2;
    v3 = v2[1];

    *(v0 + 488) = sub_1005B7724(v4, v3);
    if ((v5 & 1) == 0)
    {
      v7 = *(v0 + 472);
      v6 = *(v0 + 480);
      v8 = *(v0 + 464);
      v9 = *(v0 + 384);
      v10 = *(v0 + 392);
      v11 = *(v9 + *(type metadata accessor for MediaAPIApp(0) + 24));
      v12 = type metadata accessor for MediaAPIUpdates.App();
      (*(v7 + 16))(v6, v10 + *(v12 + 40), v8);
      v13 = sub_10037DE18(v6);
      if (*(v11 + 16))
      {
        v14 = sub_100522C58(v13);
        if (v15)
        {
          v16 = *(v0 + 408);
          v17 = *(v11 + 56) + 184 * v14;
          v18 = *(v17 + 48);
          v20 = *v17;
          v19 = *(v17 + 16);
          *(v0 + 48) = *(v17 + 32);
          *(v0 + 64) = v18;
          *(v0 + 16) = v20;
          *(v0 + 32) = v19;
          v21 = *(v17 + 112);
          v23 = *(v17 + 64);
          v22 = *(v17 + 80);
          *(v0 + 112) = *(v17 + 96);
          *(v0 + 128) = v21;
          *(v0 + 80) = v23;
          *(v0 + 96) = v22;
          v25 = *(v17 + 144);
          v24 = *(v17 + 160);
          v26 = *(v17 + 128);
          *(v0 + 192) = *(v17 + 176);
          *(v0 + 160) = v25;
          *(v0 + 176) = v24;
          *(v0 + 144) = v26;
          *(v0 + 496) = *(*sub_100006D8C(v16, v16[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
          sub_10037E134(v0 + 16, v0 + 200);

          *(v0 + 504) = sub_100625FA0();
          type metadata accessor for ManagedAppDeclarationStatusStore();
          sub_1004D3C9C(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
          v28 = dispatch thunk of Actor.unownedExecutor.getter();

          return _swift_task_switch(sub_1004C9480, v28, v27);
        }
      }
    }
  }

  else
  {
    v29 = *(v0 + 424);
    static Logger.updates.getter();
    sub_1004D2D7C(v1, v29, type metadata accessor for DDMDeclaration);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 440);
    v34 = *(v0 + 448);
    v36 = *(v0 + 424);
    v35 = *(v0 + 432);
    if (v32)
    {
      v44 = *(v0 + 448);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45 = v38;
      *v37 = 136446210;
      v39 = *(v36 + 48);
      v40 = *(v36 + 56);

      sub_1004D2DE4(v36, type metadata accessor for DDMDeclaration);
      v41 = sub_1002346CC(v39, v40, &v45);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "Skipping automatic update for %{public}s because this app is pinned to the current version.", v37, 0xCu);
      sub_10000710C(v38);

      (*(v33 + 8))(v44, v35);
    }

    else
    {

      sub_1004D2DE4(v36, type metadata accessor for DDMDeclaration);
      (*(v33 + 8))(v34, v35);
    }
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1004C9480()
{
  v1 = v0[57];
  v2 = enum case for ManagedAppStatus.UpdateState.available(_:);
  updated = type metadata accessor for ManagedAppStatus.UpdateState();
  v4 = *(updated - 8);
  (*(v4 + 104))(v1, v2, updated);
  (*(v4 + 56))(v1, 0, 1, updated);
  v5 = swift_task_alloc();
  v0[64] = v5;
  *v5 = v0;
  v5[1] = sub_1004C95C4;
  v6 = v0[63];
  v7 = v0[57];
  v8 = v0[50];

  return sub_10030E4E0(v7, v8, 1, v6);
}

uint64_t sub_1004C95C4()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 456);

  sub_1000032A8(v2, &qword_10077F3A0);

  return _swift_task_switch(sub_1004C9728, 0, 0);
}

uint64_t sub_1004C9728()
{
  v1 = *(v0 + 488);
  *(v0 + 520) = *(*sub_100006D8C(*(v0 + 408), *(*(v0 + 408) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
  v2 = swift_task_alloc();
  *(v0 + 528) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;

  v3 = swift_task_alloc();
  *(v0 + 536) = v3;
  *v3 = v0;
  v3[1] = sub_1004C983C;

  return (sub_10052EF68)();
}

uint64_t sub_1004C983C()
{
  v2 = *v1;
  *(v2 + 544) = v0;

  sub_10026E6B8(v2 + 16);

  if (v0)
  {
    v3 = sub_1004C9A24;
  }

  else
  {
    v3 = sub_1004C9998;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C9998()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C9A24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C9AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[113] = a5;
  v5[112] = a4;
  v5[111] = a3;
  v5[110] = a2;
  v5[109] = a1;
  v5[114] = type metadata accessor for AppStorePreflightTask();
  v5[115] = swift_task_alloc();
  type metadata accessor for AppStoreItem(0);
  v5[116] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F340);
  v5[117] = swift_task_alloc();
  v5[118] = type metadata accessor for AppStorePurchaseRequest(0);
  v5[119] = swift_task_alloc();
  type metadata accessor for AppInstall();
  v5[120] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[121] = v6;
  v5[122] = *(v6 - 8);
  v5[123] = swift_task_alloc();
  v5[124] = swift_task_alloc();
  v7 = type metadata accessor for Platform();
  v5[125] = v7;
  v5[126] = *(v7 - 8);
  v5[127] = swift_task_alloc();
  v5[128] = swift_task_alloc();
  v5[129] = type metadata accessor for DDMDeclaration(0);
  v5[130] = swift_task_alloc();
  v5[131] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[132] = v8;
  v5[133] = *(v8 - 8);
  v5[134] = swift_task_alloc();
  v5[135] = swift_task_alloc();
  v9 = type metadata accessor for DDMPurchaseMethod();
  v5[136] = v9;
  v5[137] = *(v9 - 8);
  v5[138] = swift_task_alloc();

  return _swift_task_switch(sub_1004C9DE4, 0, 0);
}

uint64_t sub_1004C9DE4()
{
  v86 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  (*(v2 + 104))(v1, enum case for DDMPurchaseMethod.volumePurchaseProgram(_:), v3);
  v4 = static DDMPurchaseMethod.== infix(_:_:)();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *(v0 + 896);
  if ((*(v5 + *(*(v0 + 1032) + 92) + 8) & 1) == 0)
  {
    v20 = *(v0 + 1048);
    static Logger.updates.getter();
    sub_1004D2D7C(v5, v20, type metadata accessor for DDMDeclaration);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 1080);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = *(v0 + 1048);
    if (v21)
    {
      v73 = *(v0 + 1080);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v74[0] = v15;
      *v14 = 136446210;
      v22 = *(v13 + 48);
      v23 = *(v13 + 56);

      sub_1004D2DE4(v13, type metadata accessor for DDMDeclaration);
      v24 = sub_1002346CC(v22, v23, v74);

      *(v14 + 4) = v24;
      v19 = "Skipping automatic update for %{public}s because this app is pinned to the current version.";
      goto LABEL_8;
    }

LABEL_9:

    sub_1004D2DE4(v13, type metadata accessor for DDMDeclaration);
    (*(v11 + 8))(v10, v12);
    goto LABEL_10;
  }

  if (*(v5 + 40) == 1)
  {
    v6 = *(v0 + 1040);
    static Logger.updates.getter();
    sub_1004D2D7C(v5, v6, type metadata accessor for DDMDeclaration);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = *(v0 + 1040);
    if (v9)
    {
      v73 = *(v0 + 1072);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v74[0] = v15;
      *v14 = 136446210;
      v16 = *(v13 + 48);
      v17 = *(v13 + 56);

      sub_1004D2DE4(v13, type metadata accessor for DDMDeclaration);
      v18 = sub_1002346CC(v16, v17, v74);

      *(v14 + 4) = v18;
      v19 = "Skipping automatic update for %{public}s because automatic updates are explicitly disabled for this app.";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v7, v8, v19, v14, 0xCu);
      sub_10000710C(v15);

      (*(v11 + 8))(v73, v12);
LABEL_10:

      v25 = *(v0 + 8);
LABEL_11:

      return v25();
    }

    goto LABEL_9;
  }

  v27 = *(v0 + 872);
  v29 = *v27;
  v28 = v27[1];

  *(v0 + 1112) = sub_1005B7724(v29, v28);
  if (v30)
  {
    type metadata accessor for InternalError();
    sub_1004D3C9C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v32 = xmmword_1006A2F20;
LABEL_16:
    *v31 = v32;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v25 = *(v0 + 8);
    goto LABEL_11;
  }

  v33 = *(v0 + 1024);
  v34 = *(v0 + 1016);
  v35 = *(v0 + 904);
  v36 = (*sub_100006D8C(v35, v35[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v38 = v36[4];
  v37 = v36[5];
  v39 = v36[3];
  *(v0 + 295) = *(v36 + 95);
  *(v0 + 264) = v38;
  *(v0 + 280) = v37;
  *(v0 + 248) = v39;
  v41 = v36[1];
  v40 = v36[2];
  *(v0 + 200) = *v36;
  *(v0 + 216) = v41;
  *(v0 + 232) = v40;
  sub_10020A7AC(v0 + 200, v0 + 312);
  static Platform.iOS.getter();
  v42 = sub_1004FF904();
  sub_10020A92C(v0 + 200);
  sub_100373074(v33, v34, v42, v74);
  v43 = *(&v74[0] + 1);
  v44 = v74[1];
  v45 = v74[2];
  v46 = v74[3];
  v47 = v75;
  v48 = v76;
  v49 = v77;
  v50 = v78;
  v51 = v79;
  v52 = v80;
  v53 = v81;
  v54 = v82;
  v55 = v83;
  v56 = v84;
  v57 = v85;
  v58 = *(v0 + 1024);
  v59 = *(v0 + 1016);
  v60 = *(v0 + 1008);
  v61 = *(v0 + 1000);
  *(v0 + 16) = *&v74[0];
  *(v0 + 24) = v43;
  *(v0 + 32) = v44;
  *(v0 + 48) = v45;
  *(v0 + 64) = v46;
  *(v0 + 80) = v47;
  *(v0 + 88) = v48;
  *(v0 + 96) = v49;
  *(v0 + 112) = v50;
  *(v0 + 128) = v51;
  *(v0 + 136) = v52;
  *(v0 + 144) = v53;
  *(v0 + 152) = v54;
  *(v0 + 168) = v55;
  *(v0 + 176) = v56;
  *(v0 + 192) = v57;

  v62 = *(v60 + 8);
  v62(v59, v61);
  result = (v62)(v58, v61);
  v63 = *(v0 + 128);
  v64 = *(v63 + 16);
  if (!v64)
  {
LABEL_23:
    sub_10026E6B8(v0 + 16);
    type metadata accessor for InternalError();
    sub_1004D3C9C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v32 = xmmword_1006A2F10;
    goto LABEL_16;
  }

  v65 = 0;
  v66 = (v63 + 48);
  while (1)
  {
    if (v65 >= *(v63 + 16))
    {
      __break(1u);
      return result;
    }

    *(v0 + 1120) = *(v66 - 2);
    *(v0 + 1128) = *(v66 - 1);
    if (*v66 == 1)
    {
      break;
    }

    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v67)
    {
      goto LABEL_25;
    }

    ++v65;

    v66 += 24;
    if (v64 == v65)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  *(v0 + 1136) = *(*sub_100006D8C(*(v0 + 904), v35[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
  v68 = *(v0 + 16);
  v69 = *(v0 + 24);

  UUID.init()();
  v70 = swift_task_alloc();
  *(v0 + 1144) = v70;
  *v70 = v0;
  v70[1] = sub_1004CA6B0;
  v71 = *(v0 + 992);
  v72 = *(v0 + 984);

  return sub_10054ADF8(v72, v68, v69, 0, 2, v71, 0);
}

uint64_t sub_1004CA6B0()
{
  *(*v1 + 1152) = v0;

  if (v0)
  {

    v2 = sub_1004CB34C;
  }

  else
  {
    v2 = sub_1004CA7CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CA7CC()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 896);
  v3 = (v2 + v1[26]);
  v4 = v3[1];
  if (v4)
  {
    v42 = *(v2 + 48);
    v43 = *v3;
    v41 = *(v2 + 56);
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v41 = 0;
  }

  v5 = *(v0 + 936);
  v6 = objc_allocWithZone(AMSBuyParams);

  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithString:v7];

  v39 = sub_100507E64(v8);
  v40 = *(v2 + v1[16]);
  v9 = (v2 + v1[22]);
  v10 = *v9;
  *(v0 + 1160) = *v9;
  v11 = v9[1];
  *(v0 + 1168) = v11;
  sub_100005934(v2 + v1[18], v5, &qword_10077F340);
  v38 = v4;
  v12 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v5, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v0 + 952);
    v16 = *(v0 + 944);
    v37 = *(v0 + 936);
    v17 = *(v0 + 904);
    v18 = *(v0 + 888);
    v19 = (*sub_100006D8C(v17, v17[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v20 = *(v19 + 95);
    v21 = v19[5];
    v22 = v19[3];
    *(v0 + 488) = v19[4];
    *(v0 + 504) = v21;
    *(v0 + 519) = v20;
    *(v0 + 472) = v22;
    v23 = *v19;
    v24 = v19[2];
    *(v0 + 440) = v19[1];
    *(v0 + 456) = v24;
    *(v0 + 424) = v23;
    sub_10020A980(v18, v15 + v16[10]);
    sub_10026E620(v10, v11);
    sub_10020A7AC(v0 + 424, v0 + 536);
    v25 = sub_100625FA0();
    *v15 = v39;
    *(v15 + 8) = v43;
    *(v15 + 16) = v38;
    *(v15 + 24) = v42;
    *(v15 + 32) = v41;
    *(v15 + 40) = v40;
    *(v15 + 48) = v10;
    *(v15 + 56) = v11;
    (*(v13 + 32))(v15 + v16[8], v37, v12);
    v26 = (v15 + v16[9]);
    v27 = *(v0 + 519);
    v29 = *(v0 + 488);
    v28 = *(v0 + 504);
    v26[3] = *(v0 + 472);
    v26[4] = v29;
    v26[5] = v28;
    *(v26 + 95) = v27;
    v31 = *(v0 + 440);
    v30 = *(v0 + 456);
    *v26 = *(v0 + 424);
    v26[1] = v31;
    v26[2] = v30;
    *(v15 + v16[11]) = 0;
    *(v15 + v16[12]) = 0;
    v32 = v15 + v16[13];
    *v32 = 0;
    *(v32 + 8) = 1;
    *(v15 + v16[14]) = v25;
    *(v0 + 1176) = *(*sub_100006D8C(v17, v17[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_purchaseQueue);

    v33 = swift_task_alloc();
    *(v0 + 1184) = v33;
    *v33 = v0;
    v33[1] = sub_1004CAB30;
    v34 = *(v0 + 1112);
    v35 = *(v0 + 952);
    v36 = *(v0 + 928);

    return sub_1005002C0(v36, v34, 0, 0, v35);
  }

  return result;
}

uint64_t sub_1004CAB30()
{
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v2 = sub_1004CAFF4;
  }

  else
  {
    v2 = sub_1004CAC54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CAC54()
{
  v23 = *(v0 + 1168);
  v1 = *(v0 + 1160);
  v2 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 904);
  v6 = *(v0 + 896);
  v7 = *(v0 + 880);
  (*(*(v0 + 976) + 16))(v3, *(v0 + 984), *(v0 + 968));
  sub_1004D2D7C(v2, v3 + v4[5], type metadata accessor for AppStoreItem);
  v8 = v4[6];
  v9 = enum case for AppInstallRequestType.automaticUpdate(_:);
  v10 = type metadata accessor for AppInstallRequestType();
  (*(*(v10 - 8) + 104))(v3 + v8, v9, v10);
  v11 = type metadata accessor for MediaAPIUpdates.App();
  sub_100005934(v7 + *(v11 + 20), v3 + v4[7], &qword_10077E958);
  sub_1004D2D7C(v6, v3 + v4[8], type metadata accessor for DDMDeclaration);
  v12 = (*sub_100006D8C(v5, v5[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v13 = *(v12 + 95);
  v14 = v12[5];
  v15 = v12[3];
  *(v0 + 712) = v12[4];
  *(v0 + 728) = v14;
  *(v0 + 743) = v13;
  *(v0 + 696) = v15;
  v16 = *v12;
  v17 = v12[2];
  *(v0 + 664) = v12[1];
  *(v0 + 680) = v17;
  *(v0 + 648) = v16;
  memmove((v3 + v4[9]), v12, 0x6FuLL);
  v18 = (v3 + v4[10]);
  *v18 = v1;
  v18[1] = v23;
  *(v3 + v4[11]) = 1;
  sub_10026E620(v1, v23);
  sub_10020A7AC(v0 + 648, v0 + 760);
  v19 = swift_task_alloc();
  *(v0 + 1200) = v19;
  *v19 = v0;
  v19[1] = sub_1004CAEA0;
  v20 = *(v0 + 960);
  v21 = *(v0 + 888);

  return sub_100476BD8(v20, v21);
}

uint64_t sub_1004CAEA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1208) = a1;
  *(v4 + 1216) = v1;

  sub_1004D2DE4(*(v3 + 920), type metadata accessor for AppStorePreflightTask);
  if (v1)
  {
    v5 = sub_1004CB29C;
  }

  else
  {
    v5 = sub_1004CB084;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004CAFF4()
{
  v1 = v0[119];

  sub_1004D2DE4(v1, type metadata accessor for AppStorePurchaseRequest);
  v0[155] = v0[149];
  v2 = v0[142];

  return _swift_task_switch(sub_1004CB6C0, v2, 0);
}

uint64_t sub_1004CB084()
{
  v1 = v0[119];
  v2 = v0[116];

  sub_1004D2DE4(v2, type metadata accessor for AppStoreItem);
  sub_1004D2DE4(v1, type metadata accessor for AppStorePurchaseRequest);
  v3 = swift_task_alloc();
  v0[153] = v3;
  *v3 = v0;
  v3[1] = sub_1004CB168;
  v4 = v0[151];
  v5 = v0[120];

  return sub_10054CDE0(v5, v4);
}

uint64_t sub_1004CB168()
{
  *(*v1 + 1232) = v0;

  if (v0)
  {
    v2 = sub_1004CB63C;
  }

  else
  {
    v2 = sub_1004CB4A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CB29C()
{
  v1 = v0[119];
  v2 = v0[116];

  sub_1004D2DE4(v2, type metadata accessor for AppStoreItem);
  sub_1004D2DE4(v1, type metadata accessor for AppStorePurchaseRequest);
  v0[155] = v0[152];
  v3 = v0[142];

  return _swift_task_switch(sub_1004CB6C0, v3, 0);
}

uint64_t sub_1004CB34C()
{
  v1 = v0[122];

  (*(v1 + 8))(v0[124], v0[121]);
  sub_10026E6B8((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_1004CB4A8()
{
  v1 = v0[124];
  v2 = v0[123];
  v3 = v0[122];
  v4 = v0[121];
  v5 = v0[120];

  sub_10026E6B8((v0 + 2));
  sub_1004D2DE4(v5, type metadata accessor for AppInstall);
  v6 = *(v3 + 8);
  v6(v2, v4);
  v6(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004CB63C()
{
  sub_1004D2DE4(v0[120], type metadata accessor for AppInstall);
  v0[155] = v0[154];
  v1 = v0[142];

  return _swift_task_switch(sub_1004CB6C0, v1, 0);
}

uint64_t sub_1004CB6C0()
{
  sub_10054C8D0(*(v0 + 984));

  return _swift_task_switch(sub_1004CB72C, 0, 0);
}

uint64_t sub_1004CB72C()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[121];
  swift_willThrow();

  v4 = *(v2 + 8);
  v4(v1, v3);
  v4(v0[124], v0[121]);
  sub_10026E6B8((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004CB8B0(char a1, char a2, uint64_t a3)
{
  *(v3 + 616) = a3;
  *(v3 + 1377) = a2;
  *(v3 + 1376) = a1;
  v4 = sub_1001F0C48(&qword_10077F378);
  *(v3 + 624) = v4;
  *(v3 + 632) = *(v4 - 8);
  *(v3 + 640) = swift_task_alloc();
  v5 = type metadata accessor for AppState();
  *(v3 + 648) = v5;
  *(v3 + 656) = *(v5 - 8);
  *(v3 + 664) = swift_task_alloc();
  updated = type metadata accessor for AppStateUpdateIdentifier();
  *(v3 + 672) = updated;
  *(v3 + 680) = *(updated - 8);
  *(v3 + 688) = swift_task_alloc();
  *(v3 + 696) = swift_task_alloc();
  sub_1001F0C48(&unk_1007809E0);
  *(v3 + 704) = swift_task_alloc();
  v7 = type metadata accessor for DDMDeclaration(0);
  *(v3 + 712) = v7;
  *(v3 + 720) = *(v7 - 8);
  *(v3 + 728) = swift_task_alloc();
  v8 = type metadata accessor for MediaAPIUpdates.App();
  *(v3 + 736) = v8;
  *(v3 + 744) = *(v8 - 8);
  *(v3 + 752) = swift_task_alloc();
  *(v3 + 760) = swift_task_alloc();
  v9 = type metadata accessor for MediaAPIApp(0);
  *(v3 + 768) = v9;
  *(v3 + 776) = *(v9 - 8);
  *(v3 + 784) = swift_task_alloc();
  *(v3 + 792) = swift_task_alloc();
  *(v3 + 800) = sub_1001F0C48(&qword_1007850A0);
  *(v3 + 808) = swift_task_alloc();
  v10 = sub_1001F0C48(&qword_1007850A8);
  *(v3 + 816) = v10;
  *(v3 + 824) = *(v10 - 8);
  *(v3 + 832) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v3 + 840) = v11;
  *(v3 + 848) = *(v11 - 8);
  *(v3 + 856) = swift_task_alloc();
  *(v3 + 864) = swift_task_alloc();
  *(v3 + 872) = swift_task_alloc();
  *(v3 + 880) = swift_task_alloc();
  *(v3 + 888) = swift_task_alloc();
  *(v3 + 896) = swift_task_alloc();
  *(v3 + 904) = swift_task_alloc();
  v12 = type metadata accessor for BagService();
  *(v3 + 912) = v12;
  *(v3 + 920) = *(v12 - 8);
  *(v3 + 928) = swift_task_alloc();
  *(v3 + 936) = swift_task_alloc();

  return _swift_task_switch(sub_1004CBD5C, 0, 0);
}

uint64_t sub_1004CBD5C()
{
  v1 = v0[77];
  v2 = v1[3];
  v3 = v1[7];
  v4 = sub_100006D8C(v1, v2);
  v0[34] = v2;
  v0[35] = v3;
  v5 = sub_10020A748(v0 + 31);
  (*(*(v2 - 8) + 16))(v5, v4, v2);
  v6 = swift_task_alloc();
  v0[118] = v6;
  *v6 = v0;
  v6[1] = sub_1004CBE4C;

  return sub_1004C5D30((v0 + 31));
}

uint64_t sub_1004CBE4C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 952) = a1;
  *(v3 + 960) = v1;

  if (v1)
  {
    v4 = sub_1004CC27C;
  }

  else
  {
    sub_10000710C(v3 + 248);
    v4 = sub_1004CBF6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004CBF6C()
{
  v1 = *(*(v0 + 952) + 16);
  *(v0 + 968) = v1;
  if (v1)
  {
    v2 = *(v0 + 936);
    v3 = *(v0 + 920);
    v4 = *(v0 + 912);
    v5 = *sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24));
    v6 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService;
    v7 = *(v3 + 16);
    *(v0 + 976) = v7;
    *(v0 + 984) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v2, v5 + v6, v4);
    v8 = swift_task_alloc();
    *(v0 + 992) = v8;
    *v8 = v0;
    v8[1] = sub_1004CC418;

    return sub_100324268(v0 + 288);
  }

  else
  {

    static Logger.updates.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 864);
    v14 = *(v0 + 848);
    v15 = *(v0 + 840);
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "No applicable apps installed, update check completed", v16, 2u);
    }

    (*(v14 + 8))(v13, v15);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1004CC27C()
{
  sub_10000710C(v0 + 248);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004CC418()
{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    (*(v2[115] + 8))(v2[117], v2[114]);

    v3 = sub_1004D29AC;
  }

  else
  {
    v4 = v2[117];
    v5 = v2[115];
    v6 = v2[114];
    v7 = *(v5 + 8);
    v2[126] = v7;
    v2[127] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);
    v3 = sub_1004CC580;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004CC580()
{
  v3 = v0[121];
  sub_100006D8C(v0 + 36, v0[39]);
  v4 = sub_100364D34();
  v0[128] = v4;
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v4;
  if (!v4)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_11;
  }

  if (v4 == -1 && v5 == 0x8000000000000000)
  {
    __break(1u);
    return _swift_continuation_await(v4);
  }

  v2 = v0 + 70;
  static Logger.updates.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[119];
  if (v10)
  {
    v12 = v5 / v6;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412802;
    v15 = sub_100625FA0();
    *(v13 + 4) = v15;
    *v14 = v15;
    *(v13 + 12) = 2048;
    *(v13 + 14) = *(v11 + 16);

    *(v13 + 22) = 2048;
    *(v13 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Polling available updates for %ld app(s) in %ld batch(es)", v13, 0x20u);
    sub_1000032A8(v14, &qword_10077F920);
  }

  else
  {
  }

  v16 = v0[113];
  v17 = v0[106];
  v18 = v0[105];
  v19 = *(v17 + 8);
  v0[129] = v19;
  v0[130] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v16, v18);
  v1 = [objc_opt_self() ams_sharedAccountStore];
  if (qword_10077E590 != -1)
  {
    goto LABEL_16;
  }

LABEL_11:
  v20 = v0[104];
  v21 = v0[103];
  v22 = v0[102];
  v23 = [v1 ams_iTunesAccountsForMediaType:{qword_1007B88D8, v0 + 10}];
  v0[131] = v23;

  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1004CC958;
  swift_continuation_init();
  v0[17] = v22;
  v24 = sub_10020A748(v0 + 14);
  sub_100006190(0, &qword_1007850B0);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v21 + 32))(v24, v20, v22);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100621B1C;
  v0[13] = &unk_100766E68;
  [v23 resultWithCompletion:?];
  (*(v21 + 8))(v24, v22);
  v4 = (v0 + 2);

  return _swift_continuation_await(v4);
}

uint64_t sub_1004CC958()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1056) = v1;
  if (v1)
  {

    v2 = sub_1004D2B40;
  }

  else
  {
    v2 = sub_1004CCA70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CCA70()
{
  v1 = (v0 + 408);
  v2 = (v0 + 440);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);
  v5 = *(v0 + 560);

  NSArray.makeIterator()();
  v6 = (v3 + *(sub_1001F0C48(&qword_1007850B8) + 44));
  *v6 = sub_1004C2FCC;
  v6[1] = 0;
  v7 = (v3 + *(sub_1001F0C48(&qword_1007850C0) + 36));
  *v7 = sub_1004C5C54;
  v7[1] = 0;
  v8 = (v3 + *(v4 + 44));
  *v8 = sub_1004C5C64;
  v8[1] = 0;
  type metadata accessor for NSFastEnumerationIterator();
  sub_1004D3C9C(&qword_1007850C8, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  v9 = *(v0 + 424);
  *(v0 + 440) = *(v0 + 408);
  *(v0 + 456) = v9;
  v42 = v0;
  if (*(v0 + 464))
  {
    v10 = (v0 + 608);
    do
    {
      sub_1001F6498(v2, (v0 + 472));
      sub_10020A6D0(v0 + 472, v0 + 504);
      sub_100006190(0, &qword_100781700);
      if ((swift_dynamicCast() & 1) == 0)
      {
        *v10 = 0;
      }

      sub_10000710C(v0 + 472);
      v12 = *v10;
      if (*v10)
      {
        if ([*v10 ams_isManagedAppleID])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v0 = v42;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }
      }

      dispatch thunk of IteratorProtocol.next()();
      v11 = v1[1];
      *v2 = *v1;
      v2[1] = v11;
    }

    while (*(v0 + 464));
  }

  sub_1000032A8(*(v0 + 808), &qword_1007850A0);
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_13;
    }

LABEL_18:

    v16 = 0;
    goto LABEL_19;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v14 = _swiftEmptyArrayStorage[2];
    if (!v14)
    {
      __break(1u);
      goto LABEL_39;
    }

    v15 = _swiftEmptyArrayStorage[4];
  }

  v16 = v15;

LABEL_19:
  *(v0 + 1064) = v16;
  sub_100006D8C((v42 + 288), *(v0 + 312));
  v0 = v42;
  *(v42 + 1072) = sub_100364C04();
  *(v42 + 1080) = v17;
  if (v17)
  {
    v18 = v17;
    v14 = *(v42 + 1024);
    v1 = *(v42 + 952);
    v19 = *(v1 + 2);
    *(v42 + 1088) = v19;
    if (v14 >= 1 && v19)
    {
      v13 = *(v42 + 744);
      *(v42 + 1368) = enum case for AppStateUpdateIdentifier.managedAppDistribution(_:);
      *(v42 + 1096) = v14;
      if (v14 >= v19)
      {
        v14 = v19;
      }

      v20 = *(v1 + 2);
      if (v20 >= v14)
      {
        LODWORD(v13) = *(v13 + 80);
        *(v42 + 1372) = v13;
        if (v20 == v14)
        {

LABEL_27:
          *(v0 + 1104) = v1;
          v21 = *(v0 + 976);
          v22 = *(v0 + 928);
          v23 = *(v0 + 912);
          v24 = sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24));
          v21(v22, *v24 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService, v23);
          v25 = swift_task_alloc();
          *(v0 + 1112) = v25;
          *v25 = v0;
          v25[1] = sub_1004CD160;
          v26 = *(v0 + 1072);
          v27 = *(v0 + 1064);
          v28 = *(v0 + 928);
          v29 = *(v0 + 1376);

          return sub_1004C77AC(v29, v1, v27, v26, v18, v28);
        }

LABEL_40:
        sub_10037CE6C(v1, v1 + ((v13 + 32) & ~v13), 0, (2 * v14) | 1);
        v1 = v41;
        v18 = *(v0 + 1080);
        goto LABEL_27;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v39 = *(v42 + 1064);
  }

  else
  {

    static Logger.updates.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = sub_100625FA0();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%@] Unable to determine current country code", v33, 0xCu);
      sub_1000032A8(v34, &qword_10077F920);
    }

    v0 = v42;
    v36 = *(v42 + 1032);
    v37 = *(v42 + 872);
    v38 = *(v42 + 840);

    v36(v37, v38);
  }

  sub_10000710C(v0 + 288);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1004CD160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  *(v6 + 1120) = a1;
  *(v6 + 1128) = a2;
  *(v6 + 1136) = a3;
  *(v6 + 1144) = a4;
  *(v6 + 1152) = v4;

  (*(v6 + 1008))(*(v6 + 928), *(v6 + 912));
  if (v4)
  {

    v7 = sub_1004CDD0C;
  }

  else
  {
    v7 = sub_1004CD2B8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1004CD2B8()
{
  v93 = v0;
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1136);
  static Logger.updates.getter();

  sub_1001DFECC(v2, v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  sub_10020B0E0(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v88 = *(v0 + 896);
    v89 = *(v0 + 1032);
    v5 = *(v0 + 840);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v92 = v8;
    *v6 = 138412546;
    v9 = sub_100625FA0();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;

    v10 = Array.description.getter();
    v12 = v11;

    v13 = sub_1002346CC(v10, v12, &v92);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Received response: %s", v6, 0x16u);
    sub_1000032A8(v7, &qword_10077F920);

    sub_10000710C(v8);

    v89(v88, v5);
  }

  else
  {
    v16 = *(v0 + 1032);
    v17 = *(v0 + 896);
    v18 = *(v0 + 840);

    v16(v17, v18);
  }

  v19 = *(v0 + 1120);
  v20 = _swiftEmptyDictionarySingleton;
  *(v0 + 568) = _swiftEmptyDictionarySingleton;
  v91 = *(v19 + 16);
  if (!v91)
  {
LABEL_20:
    *(v0 + 1160) = v20;
    v47 = *(v0 + 744);

    v48 = 0;
    v49 = *(v47 + 72);
    *(v0 + 1168) = v49;
    v50 = *(v0 + 1152);
    while (1)
    {
      *(v0 + 1192) = _swiftEmptyArrayStorage;
      *(v0 + 1184) = v48;
      *(v0 + 1176) = v50;
      v51 = *(v0 + 1160);
      v52 = *(v0 + 760);
      v53 = *(v0 + 736);
      sub_1004D2D7C(*(v0 + 952) + ((*(v0 + 1372) + 32) & ~*(v0 + 1372)) + v49 * v48, v52, type metadata accessor for MediaAPIUpdates.App);
      *(v0 + 576) = *(v52 + *(v53 + 28));
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      if (*(v51 + 16))
      {
        v56 = sub_10052213C(v54, v55);
        v58 = v57;

        if (v58)
        {
          v59 = *(*(*(v0 + 1160) + 56) + 8 * v56);
          if (*(v59 + 16))
          {
            v80 = *(v0 + 760);
            v81 = *(v0 + 736);
            v82 = *(v0 + 616);
            v83 = *(*(v0 + 776) + 80);
            sub_1004D2D7C(v59 + ((v83 + 32) & ~v83), *(v0 + 784), type metadata accessor for MediaAPIApp);
            v84 = *(*sub_100006D8C(v82, v82[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
            *(v0 + 1200) = v84;
            v85 = (v80 + *(v81 + 36));
            *(v0 + 1208) = *v85;
            *(v0 + 1216) = v85[1];

            return _swift_task_switch(sub_1004CE174, v84, 0);
          }
        }
      }

      else
      {
      }

      v20 = *(v0 + 1088);
      v60 = *(v0 + 1184) + 1;
      sub_1004D2DE4(*(v0 + 760), type metadata accessor for MediaAPIUpdates.App);
      if (v60 == v20)
      {
        break;
      }

      v48 = *(v0 + 1184) + 1;
      v49 = *(v0 + 1168);
    }

    v61 = *(v0 + 1144);
    v62 = *(v0 + 1136);
    if (_swiftEmptyArrayStorage[2])
    {
      v20 = *(*sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);

      sub_10066969C(_swiftEmptyArrayStorage);

      sub_10020B0E0(v62, v61);
    }

    else
    {

      sub_10020B0E0(v62, v61);
    }

    v14 = *(v0 + 1096);
    v63 = *(v0 + 1088);
    if (v14 >= v63)
    {
      v78 = *(v0 + 1064);

      sub_10000710C(v0 + 288);

      v79 = *(v0 + 8);

      return v79();
    }

    v64 = *(v0 + 1024);
    v65 = v14 + v64;
    v15 = ((v14 + v64) >> 63) ^ 0x8000000000000000;
    if (__OFADD__(v14, v64))
    {
      v65 = ((v14 + v64) >> 63) ^ 0x8000000000000000;
    }

    *(v0 + 1096) = v65;
    v46 = __OFSUB__(v63, v14);
    v25 = v63 - v14;
    if (v46)
    {
LABEL_58:
      __break(1u);
    }

    else
    {
      if (v64 < v25)
      {
        v25 = v64;
      }

      if (v25 >= v14)
      {
        if (v14 < 0)
        {
          goto LABEL_60;
        }

        v20 = *(v0 + 952);
        v66 = v20[2];
        if (v66 >= v14 && v66 >= v25)
        {
          LODWORD(v15) = *(*(v0 + 744) + 80);
          *(v0 + 1372) = v15;
          if (v66 != v25 - v14)
          {
            goto LABEL_62;
          }

LABEL_43:
          *(v0 + 1104) = v20;
          v67 = *(v0 + 1080);
          v68 = *(v0 + 976);
          v69 = *(v0 + 928);
          v70 = *(v0 + 912);
          v71 = sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24));
          v68(v69, *v71 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService, v70);
          v72 = swift_task_alloc();
          *(v0 + 1112) = v72;
          *v72 = v0;
          v72[1] = sub_1004CD160;
          v73 = *(v0 + 1072);
          v74 = *(v0 + 1064);
          v75 = *(v0 + 928);
          v76 = *(v0 + 1376);

          return sub_1004C77AC(v76, v20, v74, v73, v67, v75);
        }

LABEL_61:
        __break(1u);
LABEL_62:
        sub_10037CE6C(v20, v20 + ((v15 + 32) & ~v15), v14, (2 * v25) | 1);
        v20 = v86;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v21 = 0;
  v22 = *(*(v0 + 776) + 80);
  v23 = (v22 + 32) & ~v22;
  v90 = v19 + v23;
  v87 = v19;
  while (1)
  {
    v25 = *(v19 + 16);
    if (v21 >= v25)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v26 = *(v0 + 792);
    v27 = *(*(v0 + 776) + 72);
    sub_1004D2D7C(v90 + v27 * v21, v26, type metadata accessor for MediaAPIApp);
    v29 = *v26;
    v28 = v26[1];

    v31 = sub_10052213C(v29, v28);
    v25 = v20[2];
    v32 = (v30 & 1) == 0;
    v33 = v25 + v32;
    if (__OFADD__(v25, v32))
    {
      goto LABEL_56;
    }

    v34 = v30;
    if (v20[3] < v33)
    {
      break;
    }

LABEL_13:
    if (v34)
    {

      v37 = v20[7];
      v38 = *(v37 + 8 * v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 8 * v31) = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_1003640D0(0, v38[2] + 1, 1, v38);
        *(v37 + 8 * v31) = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_1003640D0(v40 > 1, v41 + 1, 1, v38);
        *(v37 + 8 * v31) = v38;
      }

      v24 = *(v0 + 792);
      v38[2] = v41 + 1;
      sub_1004D2F08(v24, v38 + v23 + v41 * v27, type metadata accessor for MediaAPIApp);
      v19 = v87;
    }

    else
    {
      v42 = *(v0 + 792);
      sub_1001F0C48(&qword_1007815A8);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_10069E680;
      sub_1004D2F08(v42, v43 + v23, type metadata accessor for MediaAPIApp);
      v20[(v31 >> 6) + 8] |= 1 << v31;
      v44 = (v20[6] + 16 * v31);
      *v44 = v29;
      v44[1] = v28;
      *(v20[7] + 8 * v31) = v43;
      v45 = v20[2];
      v46 = __OFADD__(v45, 1);
      v25 = v45 + 1;
      if (v46)
      {
        goto LABEL_57;
      }

      v20[2] = v25;
    }

    if (v91 == ++v21)
    {
      goto LABEL_20;
    }
  }

  sub_1005BE548(v33, 1);
  v20 = *(v0 + 568);
  v35 = sub_10052213C(v29, v28);
  if ((v34 & 1) == (v36 & 1))
  {
    v31 = v35;
    goto LABEL_13;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1004CDD0C()
{
  static Logger.updates.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412546;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    v4[1] = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Batch failed: %@", v3, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0 + 1032))(*(v0 + 888), *(v0 + 840));
  v7 = *(v0 + 1096);
  v8 = *(v0 + 1088);
  if (v7 < v8)
  {
    v9 = *(v0 + 1024);
    v10 = v7 + v9;
    v11 = ((v7 + v9) >> 63) ^ 0x8000000000000000;
    if (__OFADD__(v7, v9))
    {
      v10 = ((v7 + v9) >> 63) ^ 0x8000000000000000;
    }

    *(v0 + 1096) = v10;
    v12 = __OFSUB__(v8, v7);
    v13 = v8 - v7;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      if (v9 < v13)
      {
        v13 = v9;
      }

      if (v13 >= v7)
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          v1 = *(v0 + 952);
          isa = v1[2].isa;
          if (isa >= v7 && isa >= v13)
          {
            LODWORD(v11) = *(*(v0 + 744) + 80);
            *(v0 + 1372) = v11;
            if (isa == (v13 - v7))
            {

LABEL_16:
              *(v0 + 1104) = v1;
              v15 = *(v0 + 1080);
              v16 = *(v0 + 976);
              v17 = *(v0 + 928);
              v18 = *(v0 + 912);
              v19 = sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24));
              v16(v17, *v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService, v18);
              v20 = swift_task_alloc();
              *(v0 + 1112) = v20;
              *v20 = v0;
              v20[1] = sub_1004CD160;
              v21 = *(v0 + 1072);
              v22 = *(v0 + 1064);
              v23 = *(v0 + 928);
              v24 = *(v0 + 1376);

              return sub_1004C77AC(v24, v1, v22, v21, v15, v23);
            }

LABEL_26:
            sub_10037CE6C(v1, v1 + ((v11 + 32) & ~v11), v7, (2 * v13) | 1);
            v1 = v28;
            goto LABEL_16;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v26 = *(v0 + 1064);

  sub_10000710C(v0 + 288);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1004CE174()
{
  v1 = v0[152];
  v2 = v0[151];
  v3 = *(v0[150] + 112);
  v0[153] = v3;
  v4 = swift_task_alloc();
  v0[154] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v0[73] = v3;
  type metadata accessor for SQLiteConnection();
  sub_1004D3C9C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[155] = v6;
  v0[156] = v5;

  return _swift_task_switch(sub_1004CE25C, v6, v5);
}

uint64_t sub_1004CE25C()
{
  v1 = *(v0 + 1176);
  sub_10053B1A4();
  *(v0 + 1256) = v1;
  if (v1)
  {
    v2 = sub_1004CE37C;
  }

  else
  {
    v2 = sub_1004CE2E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CE2E8()
{
  v0[158] = v0[157];
  v1 = v0[154];
  v2 = swift_task_alloc();
  v0[159] = v2;
  v2[2] = sub_10030124C;
  v2[3] = v1;
  v2[4] = v0 + 73;
  v3 = v0[156];
  v4 = v0[155];

  return _swift_task_switch(sub_1004CE5A8, v4, v3);
}

uint64_t sub_1004CE37C()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[129];
  v5 = v0[110];
  v6 = v0[105];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(5063748, 0xE300000000000000, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    v4(v5, v6);
  }

  else
  {

    v4(v5, v6);
  }

  v0[158] = 0;
  v11 = v0[154];
  v12 = swift_task_alloc();
  v0[159] = v12;
  v12[2] = sub_10030124C;
  v12[3] = v11;
  v12[4] = v0 + 73;
  v13 = v0[156];
  v14 = v0[155];

  return _swift_task_switch(sub_1004CE5A8, v14, v13);
}

uint64_t sub_1004CE5A8()
{
  v1 = v0[158];
  sub_10054329C(sub_1004D2D08, v0[159], v0[88]);
  v0[160] = v1;
  if (v1)
  {

    v2 = sub_1004CE8E0;
  }

  else
  {

    v2 = sub_1004CE678;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CE678()
{
  v1 = v0[91];
  v2 = v0[88];
  v3 = v0[77];
  (*(v0[90] + 56))(v2, 0, 1, v0[89]);
  sub_1004D2F08(v2, v1, type metadata accessor for DDMDeclaration);
  v4 = v3[3];
  v5 = v3[7];
  v6 = sub_100006D8C(v3, v4);
  v0[44] = v4;
  v0[45] = v5;
  v7 = sub_10020A748(v0 + 41);
  (*(*(v4 - 8) + 16))(v7, v6, v4);
  v8 = swift_task_alloc();
  v0[161] = v8;
  *v8 = v0;
  v8[1] = sub_1004CE7C4;
  v9 = v0[98];
  v10 = v0[95];
  v11 = v0[91];

  return sub_1004C8F28(v9, v10, v11, (v0 + 41));
}

uint64_t sub_1004CE7C4()
{
  v2 = *v1;
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v3 = sub_1004CFFEC;
  }

  else
  {
    sub_10000710C(v2 + 328);
    v3 = sub_1004CF59C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004CE8E0()
{
  v1 = *(v0 + 1200);

  return _swift_task_switch(sub_1004CE958, v1, 0);
}

uint64_t sub_1004CE958()
{

  return _swift_task_switch(sub_1004CE9C0, 0, 0);
}

uint64_t sub_1004CE9C0()
{
  v99 = v0;
  v1 = *(v0 + 704);
  (*(*(v0 + 720) + 56))(v1, 1, 1, *(v0 + 712));
  sub_1000032A8(v1, &unk_1007809E0);
  sub_1004D2D28();
  swift_allocError();
  swift_willThrow();
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  static Logger.updates.getter();
  sub_1004D2D7C(v2, v3, type metadata accessor for MediaAPIUpdates.App);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v96 = *(v0 + 1032);
    v94 = *(v0 + 840);
    v95 = *(v0 + 856);
    v6 = *(v0 + 752);
    v7 = *(v0 + 736);
    v8 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v8 = 136315394;
    *(v0 + 592) = *(v6 + *(v7 + 28));
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_1004D2DE4(v6, type metadata accessor for MediaAPIUpdates.App);
    v12 = sub_1002346CC(v9, v11, &v98);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(*(v0 + 544) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = String.init<A>(describing:)();
    v16 = v15;

    v17 = sub_1002346CC(v14, v16, &v98);

    *(v8 + 14) = v17;
    swift_arrayDestroy();

    v96(v95, v94);
  }

  else
  {
    v18 = *(v0 + 1032);
    v19 = *(v0 + 856);
    v20 = *(v0 + 840);
    v21 = *(v0 + 752);

    sub_1004D2DE4(v21, type metadata accessor for MediaAPIUpdates.App);
    v18(v19, v20);
  }

  *(v0 + 1320) = 0;
  v22 = *(v0 + 760);
  v23 = v22[1];
  if (v23)
  {
    v24 = *v22;
    v25 = *(v0 + 616);
    v26 = *(v25 + 24);
    v27 = *(v25 + 72);
    v97 = *(v25 + 48);
    v28 = sub_100006D8C(v25, v26);
    *(v0 + 168) = v26;
    *(v0 + 176) = v97;
    *(v0 + 192) = v27;
    v29 = sub_10020A748((v0 + 144));
    (*(*(v26 - 8) + 16))(v29, v28, v26);
    sub_100006190(0, &qword_100784500);
    v30 = sub_10060BC54(v24, v23, 0, 0, 2);
    if (v30)
    {
      v31 = v30;
      v32 = [v31 iTunesMetadata];
      v33 = [v32 storeItemIdentifier];

      if (v33)
      {
        v34 = [v31 iTunesMetadata];
        v35 = [v34 storeItemIdentifier];
      }

      else
      {
        v35 = 0;
      }

      v60 = *(v0 + 688);
      v61 = *(v0 + 680);
      *v60 = v24;
      *(v60 + 8) = v23;
      *(v60 + 16) = v35;
      *(v60 + 24) = v33 == 0;
      (*(v61 + 104))();

      v62 = [v31 iTunesMetadata];
      v63 = [v62 distributorInfo];

      v64 = [v63 distributorID];
      if (v64)
      {
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        v68 = 0;
        v69 = v67;
LABEL_25:
        *(v0 + 1378) = v68;
        *(v0 + 1352) = v69;
        *(v0 + 1344) = v67;
        *(v0 + 1336) = v65;
        *(v0 + 1328) = v31;
        v70 = swift_task_alloc();
        *(v0 + 1360) = v70;
        *v70 = v0;
        v70[1] = sub_1004D2144;
        v71 = *(v0 + 664);
        v101 = v67;

        return sub_10060FC18(v71, v24, v23, 1, 0, 0, v0 + 144, v65);
      }
    }

    else
    {
      v41 = *(v0 + 688);
      v42 = *(v0 + 680);
      *v41 = v24;
      *(v41 + 8) = v23;
      *(v41 + 16) = 0;
      *(v41 + 24) = 1;
      (*(v42 + 104))();

      v31 = 0;
    }

    v65 = 0;
    v69 = 0;
    v68 = -1;
    v67 = 3;
    goto LABEL_25;
  }

  sub_1004D2DE4(*(v0 + 784), type metadata accessor for MediaAPIApp);
  v36 = *(v0 + 1192);
  v37 = *(v0 + 1088);
  v38 = *(v0 + 1184) + 1;
  sub_1004D2DE4(*(v0 + 760), type metadata accessor for MediaAPIUpdates.App);
  if (v38 == v37)
  {
LABEL_9:

    v39 = *(v0 + 1144);
    v40 = *(v0 + 1136);
    if (*(v36 + 16))
    {
      v37 = *(*sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);

      sub_10066969C(v36);

      sub_10020B0E0(v40, v39);
    }

    else
    {

      sub_10020B0E0(v40, v39);
    }

    v72 = *(v0 + 1096);
    v73 = *(v0 + 1088);
    if (v72 >= v73)
    {
      v90 = *(v0 + 1064);

      sub_10000710C(v0 + 288);

      v91 = *(v0 + 8);

      return v91();
    }

    v74 = *(v0 + 1024);
    v75 = v72 + v74;
    v76 = ((v72 + v74) >> 63) ^ 0x8000000000000000;
    if (__OFADD__(v72, v74))
    {
      v75 = ((v72 + v74) >> 63) ^ 0x8000000000000000;
    }

    *(v0 + 1096) = v75;
    v77 = __OFSUB__(v73, v72);
    v78 = v73 - v72;
    if (v77)
    {
      __break(1u);
    }

    else
    {
      if (v74 < v78)
      {
        v78 = v74;
      }

      if (v78 >= v72)
      {
        if ((v72 & 0x8000000000000000) == 0)
        {
          v37 = *(v0 + 952);
          v79 = *(v37 + 16);
          if (v79 >= v72 && v79 >= v78)
          {
            LODWORD(v76) = *(*(v0 + 744) + 80);
            *(v0 + 1372) = v76;
            if (v79 == v78 - v72)
            {

LABEL_41:
              *(v0 + 1104) = v37;
              v80 = *(v0 + 1080);
              v81 = *(v0 + 976);
              v82 = *(v0 + 928);
              v83 = *(v0 + 912);
              v84 = sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24));
              v81(v82, *v84 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService, v83);
              v85 = swift_task_alloc();
              *(v0 + 1112) = v85;
              *v85 = v0;
              v85[1] = sub_1004CD160;
              v86 = *(v0 + 1072);
              v87 = *(v0 + 1064);
              v88 = *(v0 + 928);
              v89 = *(v0 + 1376);

              return sub_1004C77AC(v89, v37, v87, v86, v80, v88);
            }

LABEL_51:
            sub_10037CE6C(v37, v37 + ((v76 + 32) & ~v76), v72, (2 * v78) | 1);
            v37 = v92;
            goto LABEL_41;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  while (1)
  {
    v44 = *(v0 + 1184) + 1;
    *(v0 + 1192) = v36;
    *(v0 + 1184) = v44;
    *(v0 + 1176) = 0;
    v45 = *(v0 + 1160);
    v46 = *(v0 + 760);
    v47 = *(v0 + 736);
    sub_1004D2D7C(*(v0 + 952) + ((*(v0 + 1372) + 32) & ~*(v0 + 1372)) + *(v0 + 1168) * v44, v46, type metadata accessor for MediaAPIUpdates.App);
    *(v0 + 576) = *(v46 + *(v47 + 28));
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    if (*(v45 + 16))
    {
      break;
    }

LABEL_14:
    v37 = *(v0 + 1088);
    v43 = *(v0 + 1184) + 1;
    sub_1004D2DE4(*(v0 + 760), type metadata accessor for MediaAPIUpdates.App);
    if (v43 == v37)
    {
      goto LABEL_9;
    }
  }

  v50 = sub_10052213C(v48, v49);
  v52 = v51;

  if ((v52 & 1) == 0)
  {
    goto LABEL_14;
  }

  v53 = *(*(*(v0 + 1160) + 56) + 8 * v50);
  if (!*(v53 + 16))
  {
    goto LABEL_14;
  }

  v54 = *(v0 + 760);
  v55 = *(v0 + 736);
  v56 = *(v0 + 616);
  v57 = *(*(v0 + 776) + 80);
  sub_1004D2D7C(v53 + ((v57 + 32) & ~v57), *(v0 + 784), type metadata accessor for MediaAPIApp);
  v58 = *(*sub_100006D8C(v56, v56[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  *(v0 + 1200) = v58;
  v59 = (v54 + *(v55 + 36));
  *(v0 + 1208) = *v59;
  *(v0 + 1216) = v59[1];

  return _swift_task_switch(sub_1004CE174, v58, 0);
}

uint64_t sub_1004CF59C()
{
  v1 = *(v0 + 728);
  if (!*(v1 + 40) || *(v1 + 40) != 1 && *(v0 + 1377) == 1)
  {
    v2 = *(v0 + 616);
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    v5 = sub_100006D8C((v0 + 288), v3);
    *(v0 + 392) = v3;
    *(v0 + 400) = v4;
    v6 = sub_10020A748((v0 + 368));
    (*(*(v3 - 8) + 16))(v6, v5, v3);
    v7 = *(v2 + 24);
    v87 = *(v2 + 40);
    v8 = sub_100006D8C(v2, v7);
    *(v0 + 224) = v7;
    *(v0 + 232) = v87;
    v9 = sub_10020A748((v0 + 200));
    (*(*(v7 - 8) + 16))(v9, v8, v7);
    v10 = swift_task_alloc();
    *(v0 + 1304) = v10;
    *v10 = v0;
    v10[1] = sub_1004D0B88;
    v11 = *(v0 + 784);
    v12 = *(v0 + 760);
    v13 = *(v0 + 728);

    return sub_1004C9AB0(v11, v12, v0 + 368, v13, v0 + 200);
  }

  v15 = *(v0 + 1296);
  sub_1004D2DE4(v1, type metadata accessor for DDMDeclaration);
  *(v0 + 1320) = v15;
  v16 = *(v0 + 760);
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    v19 = *(v0 + 616);
    v20 = *(v19 + 24);
    v21 = *(v19 + 72);
    v88 = *(v19 + 48);
    v22 = sub_100006D8C(v19, v20);
    *(v0 + 168) = v20;
    *(v0 + 176) = v88;
    *(v0 + 192) = v21;
    v23 = sub_10020A748((v0 + 144));
    (*(*(v20 - 8) + 16))(v23, v22, v20);
    sub_100006190(0, &qword_100784500);
    v24 = sub_10060BC54(v18, v17, 0, 0, 2);
    if (v24)
    {
      v25 = v24;
      v26 = [v25 iTunesMetadata];
      v27 = [v26 storeItemIdentifier];

      if (v27)
      {
        v28 = [v25 iTunesMetadata];
        v29 = [v28 storeItemIdentifier];
      }

      else
      {
        v29 = 0;
      }

      v54 = *(v0 + 688);
      v55 = *(v0 + 680);
      *v54 = v18;
      *(v54 + 8) = v17;
      *(v54 + 16) = v29;
      *(v54 + 24) = v27 == 0;
      (*(v55 + 104))();

      v56 = [v25 iTunesMetadata];
      v57 = [v56 distributorInfo];

      v58 = [v57 distributorID];
      if (v58)
      {
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v62 = 0;
        v63 = v61;
LABEL_28:
        *(v0 + 1378) = v62;
        *(v0 + 1352) = v63;
        *(v0 + 1344) = v61;
        *(v0 + 1336) = v59;
        *(v0 + 1328) = v25;
        v64 = swift_task_alloc();
        *(v0 + 1360) = v64;
        *v64 = v0;
        v64[1] = sub_1004D2144;
        v65 = *(v0 + 664);

        return sub_10060FC18(v65, v18, v17, 1, 0, 0, v0 + 144, v59);
      }
    }

    else
    {
      v35 = *(v0 + 688);
      v36 = *(v0 + 680);
      *v35 = v18;
      *(v35 + 8) = v17;
      *(v35 + 16) = 0;
      *(v35 + 24) = 1;
      (*(v36 + 104))();

      v25 = 0;
    }

    v59 = 0;
    v63 = 0;
    v62 = -1;
    v61 = 3;
    goto LABEL_28;
  }

  sub_1004D2DE4(*(v0 + 784), type metadata accessor for MediaAPIApp);
  v30 = *(v0 + 1192);
  v31 = *(v0 + 1088);
  v32 = *(v0 + 1184) + 1;
  sub_1004D2DE4(*(v0 + 760), type metadata accessor for MediaAPIUpdates.App);
  if (v32 == v31)
  {
LABEL_12:

    v33 = *(v0 + 1144);
    v34 = *(v0 + 1136);
    if (*(v30 + 16))
    {
      v31 = *(*sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);

      sub_10066969C(v30);

      sub_10020B0E0(v34, v33);
    }

    else
    {

      sub_10020B0E0(v34, v33);
    }

    v66 = *(v0 + 1096);
    v67 = *(v0 + 1088);
    if (v66 >= v67)
    {
      v84 = *(v0 + 1064);

      sub_10000710C(v0 + 288);

      v85 = *(v0 + 8);

      return v85();
    }

    v68 = *(v0 + 1024);
    v69 = v66 + v68;
    v70 = ((v66 + v68) >> 63) ^ 0x8000000000000000;
    if (__OFADD__(v66, v68))
    {
      v69 = ((v66 + v68) >> 63) ^ 0x8000000000000000;
    }

    *(v0 + 1096) = v69;
    v71 = __OFSUB__(v67, v66);
    v72 = v67 - v66;
    if (v71)
    {
      __break(1u);
    }

    else
    {
      if (v68 < v72)
      {
        v72 = v68;
      }

      if (v72 >= v66)
      {
        if ((v66 & 0x8000000000000000) == 0)
        {
          v31 = *(v0 + 952);
          v73 = *(v31 + 16);
          if (v73 >= v66 && v73 >= v72)
          {
            LODWORD(v70) = *(*(v0 + 744) + 80);
            *(v0 + 1372) = v70;
            if (v73 == v72 - v66)
            {

LABEL_44:
              *(v0 + 1104) = v31;
              v74 = *(v0 + 1080);
              v75 = *(v0 + 976);
              v76 = *(v0 + 928);
              v77 = *(v0 + 912);
              v78 = sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24));
              v75(v76, *v78 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService, v77);
              v79 = swift_task_alloc();
              *(v0 + 1112) = v79;
              *v79 = v0;
              v79[1] = sub_1004CD160;
              v80 = *(v0 + 1072);
              v81 = *(v0 + 1064);
              v82 = *(v0 + 928);
              v83 = *(v0 + 1376);

              return sub_1004C77AC(v83, v31, v81, v80, v74, v82);
            }

LABEL_54:
            sub_10037CE6C(v31, v31 + ((v70 + 32) & ~v70), v66, (2 * v72) | 1);
            v31 = v86;
            goto LABEL_44;
          }

LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  while (1)
  {
    v38 = *(v0 + 1184) + 1;
    *(v0 + 1192) = v30;
    *(v0 + 1184) = v38;
    *(v0 + 1176) = v15;
    v39 = *(v0 + 1160);
    v40 = *(v0 + 760);
    v41 = *(v0 + 736);
    sub_1004D2D7C(*(v0 + 952) + ((*(v0 + 1372) + 32) & ~*(v0 + 1372)) + *(v0 + 1168) * v38, v40, type metadata accessor for MediaAPIUpdates.App);
    *(v0 + 576) = *(v40 + *(v41 + 28));
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    if (*(v39 + 16))
    {
      break;
    }

LABEL_17:
    v31 = *(v0 + 1088);
    v37 = *(v0 + 1184) + 1;
    sub_1004D2DE4(*(v0 + 760), type metadata accessor for MediaAPIUpdates.App);
    if (v37 == v31)
    {
      goto LABEL_12;
    }
  }

  v44 = sub_10052213C(v42, v43);
  v46 = v45;

  if ((v46 & 1) == 0)
  {
    goto LABEL_17;
  }

  v47 = *(*(*(v0 + 1160) + 56) + 8 * v44);
  if (!*(v47 + 16))
  {
    goto LABEL_17;
  }

  v48 = *(v0 + 760);
  v49 = *(v0 + 736);
  v50 = *(v0 + 616);
  v51 = *(*(v0 + 776) + 80);
  sub_1004D2D7C(v47 + ((v51 + 32) & ~v51), *(v0 + 784), type metadata accessor for MediaAPIApp);
  v52 = *(*sub_100006D8C(v50, v50[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  *(v0 + 1200) = v52;
  v53 = (v48 + *(v49 + 36));
  *(v0 + 1208) = *v53;
  *(v0 + 1216) = v53[1];

  return _swift_task_switch(sub_1004CE174, v52, 0);
}

uint64_t sub_1004CFFEC()
{
  sub_1004D2DE4(*(v0 + 728), type metadata accessor for DDMDeclaration);
  sub_10000710C(v0 + 328);
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  static Logger.updates.getter();
  sub_1004D2D7C(v1, v2, type metadata accessor for MediaAPIUpdates.App);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v95 = *(v0 + 1032);
    v93 = *(v0 + 840);
    v94 = *(v0 + 856);
    v5 = *(v0 + 752);
    v6 = *(v0 + 736);
    v7 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v7 = 136315394;
    *(v0 + 592) = *(v5 + *(v6 + 28));
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    sub_1004D2DE4(v5, type metadata accessor for MediaAPIUpdates.App);
    v11 = sub_1002346CC(v8, v10, &v98);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v12 = *(*(v0 + 544) - 8);
    swift_task_alloc();
    (*(v12 + 16))();
    v13 = String.init<A>(describing:)();
    v15 = v14;

    v16 = sub_1002346CC(v13, v15, &v98);

    *(v7 + 14) = v16;
    swift_arrayDestroy();

    v95(v94, v93);
  }

  else
  {
    v17 = *(v0 + 1032);
    v18 = *(v0 + 856);
    v19 = *(v0 + 840);
    v20 = *(v0 + 752);

    sub_1004D2DE4(v20, type metadata accessor for MediaAPIUpdates.App);
    v17(v18, v19);
  }

  *(v0 + 1320) = 0;
  v21 = *(v0 + 760);
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
    v24 = *(v0 + 616);
    v25 = *(v24 + 24);
    v26 = *(v24 + 72);
    v96 = *(v24 + 48);
    v27 = sub_100006D8C(v24, v25);
    *(v0 + 168) = v25;
    *(v0 + 176) = v96;
    *(v0 + 192) = v26;
    v28 = sub_10020A748((v0 + 144));
    (*(*(v25 - 8) + 16))(v28, v27, v25);
    sub_100006190(0, &qword_100784500);
    v29 = sub_10060BC54(v23, v22, 0, 0, 2);
    if (v29)
    {
      v30 = v29;
      v31 = [v30 iTunesMetadata];
      v32 = [v31 storeItemIdentifier];

      if (v32)
      {
        v33 = [v30 iTunesMetadata];
        v34 = [v33 storeItemIdentifier];
      }

      else
      {
        v34 = 0;
      }

      v59 = *(v0 + 688);
      v60 = *(v0 + 680);
      *v59 = v23;
      *(v59 + 8) = v22;
      *(v59 + 16) = v34;
      *(v59 + 24) = v32 == 0;
      (*(v60 + 104))();

      v61 = [v30 iTunesMetadata];
      v62 = [v61 distributorInfo];

      v63 = [v62 distributorID];
      if (v63)
      {
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67 = 0;
        v68 = v66;
LABEL_25:
        *(v0 + 1378) = v67;
        *(v0 + 1352) = v68;
        *(v0 + 1344) = v66;
        *(v0 + 1336) = v64;
        *(v0 + 1328) = v30;
        v69 = swift_task_alloc();
        *(v0 + 1360) = v69;
        *v69 = v0;
        v69[1] = sub_1004D2144;
        v70 = *(v0 + 664);

        return sub_10060FC18(v70, v23, v22, 1, 0, 0, v0 + 144, v64);
      }
    }

    else
    {
      v40 = *(v0 + 688);
      v41 = *(v0 + 680);
      *v40 = v23;
      *(v40 + 8) = v22;
      *(v40 + 16) = 0;
      *(v40 + 24) = 1;
      (*(v41 + 104))();

      v30 = 0;
    }

    v64 = 0;
    v68 = 0;
    v67 = -1;
    v66 = 3;
    goto LABEL_25;
  }

  sub_1004D2DE4(*(v0 + 784), type metadata accessor for MediaAPIApp);
  v35 = *(v0 + 1192);
  v36 = *(v0 + 1088);
  v37 = *(v0 + 1184) + 1;
  sub_1004D2DE4(*(v0 + 760), type metadata accessor for MediaAPIUpdates.App);
  if (v37 == v36)
  {
LABEL_9:

    v38 = *(v0 + 1144);
    v39 = *(v0 + 1136);
    if (*(v35 + 16))
    {
      v36 = *(*sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);

      sub_10066969C(v35);

      sub_10020B0E0(v39, v38);
    }

    else
    {

      sub_10020B0E0(v39, v38);
    }

    v71 = *(v0 + 1096);
    v72 = *(v0 + 1088);
    if (v71 >= v72)
    {
      v89 = *(v0 + 1064);

      sub_10000710C(v0 + 288);

      v90 = *(v0 + 8);

      return v90();
    }

    v73 = *(v0 + 1024);
    v74 = v71 + v73;
    v75 = ((v71 + v73) >> 63) ^ 0x8000000000000000;
    if (__OFADD__(v71, v73))
    {
      v74 = ((v71 + v73) >> 63) ^ 0x8000000000000000;
    }

    *(v0 + 1096) = v74;
    v76 = __OFSUB__(v72, v71);
    v77 = v72 - v71;
    if (v76)
    {
      __break(1u);
    }

    else
    {
      if (v73 < v77)
      {
        v77 = v73;
      }

      if (v77 >= v71)
      {
        if ((v71 & 0x8000000000000000) == 0)
        {
          v36 = *(v0 + 952);
          v78 = *(v36 + 16);
          if (v78 >= v71 && v78 >= v77)
          {
            LODWORD(v75) = *(*(v0 + 744) + 80);
            *(v0 + 1372) = v75;
            if (v78 == v77 - v71)
            {

LABEL_41:
              *(v0 + 1104) = v36;
              v79 = *(v0 + 1080);
              v80 = *(v0 + 976);
              v81 = *(v0 + 928);
              v82 = *(v0 + 912);
              v83 = sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24));
              v80(v81, *v83 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService, v82);
              v84 = swift_task_alloc();
              *(v0 + 1112) = v84;
              *v84 = v0;
              v84[1] = sub_1004CD160;
              v85 = *(v0 + 1072);
              v86 = *(v0 + 1064);
              v87 = *(v0 + 928);
              v88 = *(v0 + 1376);

              return sub_1004C77AC(v88, v36, v86, v85, v79, v87);
            }

LABEL_51:
            sub_10037CE6C(v36, v36 + ((v75 + 32) & ~v75), v71, (2 * v77) | 1);
            v36 = v91;
            goto LABEL_41;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  while (1)
  {
    v43 = *(v0 + 1184) + 1;
    *(v0 + 1192) = v35;
    *(v0 + 1184) = v43;
    *(v0 + 1176) = 0;
    v44 = *(v0 + 1160);
    v45 = *(v0 + 760);
    v46 = *(v0 + 736);
    sub_1004D2D7C(*(v0 + 952) + ((*(v0 + 1372) + 32) & ~*(v0 + 1372)) + *(v0 + 1168) * v43, v45, type metadata accessor for MediaAPIUpdates.App);
    *(v0 + 576) = *(v45 + *(v46 + 28));
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    if (*(v44 + 16))
    {
      break;
    }

LABEL_14:
    v36 = *(v0 + 1088);
    v42 = *(v0 + 1184) + 1;
    sub_1004D2DE4(*(v0 + 760), type metadata accessor for MediaAPIUpdates.App);
    if (v42 == v36)
    {
      goto LABEL_9;
    }
  }

  v49 = sub_10052213C(v47, v48);
  v51 = v50;

  if ((v51 & 1) == 0)
  {
    goto LABEL_14;
  }

  v52 = *(*(*(v0 + 1160) + 56) + 8 * v49);
  if (!*(v52 + 16))
  {
    goto LABEL_14;
  }

  v53 = *(v0 + 760);
  v54 = *(v0 + 736);
  v55 = *(v0 + 616);
  v56 = *(*(v0 + 776) + 80);
  sub_1004D2D7C(v52 + ((v56 + 32) & ~v56), *(v0 + 784), type metadata accessor for MediaAPIApp);
  v57 = *(*sub_100006D8C(v55, v55[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  *(v0 + 1200) = v57;
  v58 = (v53 + *(v54 + 36));
  *(v0 + 1208) = *v58;
  *(v0 + 1216) = v58[1];

  return _swift_task_switch(sub_1004CE174, v57, 0);
}

uint64_t sub_1004D0B88()
{
  v2 = *v1;
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v3 = sub_1004D15A0;
  }

  else
  {
    sub_10000710C(v2 + 200);
    sub_10000710C(v2 + 368);
    v3 = sub_1004D0CAC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004D0CAC()
{
  v1 = *(v0 + 1312);
  sub_1004D2DE4(*(v0 + 728), type metadata accessor for DDMDeclaration);
  *(v0 + 1320) = v1;
  v2 = *(v0 + 760);
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    v5 = *(v0 + 616);
    v6 = *(v5 + 24);
    v7 = *(v5 + 72);
    v74 = *(v5 + 48);
    v8 = sub_100006D8C(v5, v6);
    *(v0 + 168) = v6;
    *(v0 + 176) = v74;
    *(v0 + 192) = v7;
    v9 = sub_10020A748((v0 + 144));
    (*(*(v6 - 8) + 16))(v9, v8, v6);
    sub_100006190(0, &qword_100784500);
    v10 = sub_10060BC54(v4, v3, 0, 0, 2);
    if (v10)
    {
      v11 = v10;
      v12 = [v11 iTunesMetadata];
      v13 = [v12 storeItemIdentifier];

      if (v13)
      {
        v14 = [v11 iTunesMetadata];
        v15 = [v14 storeItemIdentifier];
      }

      else
      {
        v15 = 0;
      }

      v40 = *(v0 + 688);
      v41 = *(v0 + 680);
      *v40 = v4;
      *(v40 + 8) = v3;
      *(v40 + 16) = v15;
      *(v40 + 24) = v13 == 0;
      (*(v41 + 104))();

      v42 = [v11 iTunesMetadata];
      v43 = [v42 distributorInfo];

      v44 = [v43 distributorID];
      if (v44)
      {
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = 0;
        v49 = v47;
LABEL_22:
        *(v0 + 1378) = v48;
        *(v0 + 1352) = v49;
        *(v0 + 1344) = v47;
        *(v0 + 1336) = v45;
        *(v0 + 1328) = v11;
        v50 = swift_task_alloc();
        *(v0 + 1360) = v50;
        *v50 = v0;
        v50[1] = sub_1004D2144;
        v51 = *(v0 + 664);

        return sub_10060FC18(v51, v4, v3, 1, 0, 0, v0 + 144, v45);
      }
    }

    else
    {
      v21 = *(v0 + 688);
      v22 = *(v0 + 680);
      *v21 = v4;
      *(v21 + 8) = v3;
      *(v21 + 16) = 0;
      *(v21 + 24) = 1;
      (*(v22 + 104))();

      v11 = 0;
    }

    v45 = 0;
    v49 = 0;
    v48 = -1;
    v47 = 3;
    goto LABEL_22;
  }

  sub_1004D2DE4(*(v0 + 784), type metadata accessor for MediaAPIApp);
  v16 = *(v0 + 1192);
  v17 = *(v0 + 1088);
  v18 = *(v0 + 1184) + 1;
  sub_1004D2DE4(*(v0 + 760), type metadata accessor for MediaAPIUpdates.App);
  if (v18 == v17)
  {
LABEL_6:

    v19 = *(v0 + 1144);
    v20 = *(v0 + 1136);
    if (*(v16 + 16))
    {
      v17 = *(*sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);

      sub_10066969C(v16);

      sub_10020B0E0(v20, v19);
    }

    else
    {

      sub_10020B0E0(v20, v19);
    }

    v52 = *(v0 + 1096);
    v53 = *(v0 + 1088);
    if (v52 >= v53)
    {
      v70 = *(v0 + 1064);

      sub_10000710C(v0 + 288);

      v71 = *(v0 + 8);

      return v71();
    }

    v54 = *(v0 + 1024);
    v55 = v52 + v54;
    v56 = ((v52 + v54) >> 63) ^ 0x8000000000000000;
    if (__OFADD__(v52, v54))
    {
      v55 = ((v52 + v54) >> 63) ^ 0x8000000000000000;
    }

    *(v0 + 1096) = v55;
    v57 = __OFSUB__(v53, v52);
    v58 = v53 - v52;
    if (v57)
    {
      __break(1u);
    }

    else
    {
      if (v54 < v58)
      {
        v58 = v54;
      }

      if (v58 >= v52)
      {
        if ((v52 & 0x8000000000000000) == 0)
        {
          v17 = *(v0 + 952);
          v59 = *(v17 + 16);
          if (v59 >= v52 && v59 >= v58)
          {
            LODWORD(v56) = *(*(v0 + 744) + 80);
            *(v0 + 1372) = v56;
            if (v59 == v58 - v52)
            {

LABEL_38:
              *(v0 + 1104) = v17;
              v60 = *(v0 + 1080);
              v61 = *(v0 + 976);
              v62 = *(v0 + 928);
              v63 = *(v0 + 912);
              v64 = sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24));
              v61(v62, *v64 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService, v63);
              v65 = swift_task_alloc();
              *(v0 + 1112) = v65;
              *v65 = v0;
              v65[1] = sub_1004CD160;
              v66 = *(v0 + 1072);
              v67 = *(v0 + 1064);
              v68 = *(v0 + 928);
              v69 = *(v0 + 1376);

              return sub_1004C77AC(v69, v17, v67, v66, v60, v68);
            }

LABEL_48:
            sub_10037CE6C(v17, v17 + ((v56 + 32) & ~v56), v52, (2 * v58) | 1);
            v17 = v72;
            goto LABEL_38;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

  while (1)
  {
    v24 = *(v0 + 1184) + 1;
    *(v0 + 1192) = v16;
    *(v0 + 1184) = v24;
    *(v0 + 1176) = v1;
    v25 = *(v0 + 1160);
    v26 = *(v0 + 760);
    v27 = *(v0 + 736);
    sub_1004D2D7C(*(v0 + 952) + ((*(v0 + 1372) + 32) & ~*(v0 + 1372)) + *(v0 + 1168) * v24, v26, type metadata accessor for MediaAPIUpdates.App);
    *(v0 + 576) = *(v26 + *(v27 + 28));
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    if (*(v25 + 16))
    {
      break;
    }

LABEL_11:
    v17 = *(v0 + 1088);
    v23 = *(v0 + 1184) + 1;
    sub_1004D2DE4(*(v0 + 760), type metadata accessor for MediaAPIUpdates.App);
    if (v23 == v17)
    {
      goto LABEL_6;
    }
  }

  v30 = sub_10052213C(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
    goto LABEL_11;
  }

  v33 = *(*(*(v0 + 1160) + 56) + 8 * v30);
  if (!*(v33 + 16))
  {
    goto LABEL_11;
  }

  v34 = *(v0 + 760);
  v35 = *(v0 + 736);
  v36 = *(v0 + 616);
  v37 = *(*(v0 + 776) + 80);
  sub_1004D2D7C(v33 + ((v37 + 32) & ~v37), *(v0 + 784), type metadata accessor for MediaAPIApp);
  v38 = *(*sub_100006D8C(v36, v36[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  *(v0 + 1200) = v38;
  v39 = (v34 + *(v35 + 36));
  *(v0 + 1208) = *v39;
  *(v0 + 1216) = v39[1];

  return _swift_task_switch(sub_1004CE174, v38, 0);
}

uint64_t sub_1004D15A0()
{
  sub_1004D2DE4(*(v0 + 728), type metadata accessor for DDMDeclaration);
  sub_10000710C(v0 + 200);
  sub_10000710C(v0 + 368);
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  static Logger.updates.getter();
  sub_1004D2D7C(v1, v2, type metadata accessor for MediaAPIUpdates.App);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v95 = *(v0 + 1032);
    v93 = *(v0 + 840);
    v94 = *(v0 + 856);
    v5 = *(v0 + 752);
    v6 = *(v0 + 736);
    v7 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v7 = 136315394;
    *(v0 + 592) = *(v5 + *(v6 + 28));
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    sub_1004D2DE4(v5, type metadata accessor for MediaAPIUpdates.App);
    v11 = sub_1002346CC(v8, v10, &v98);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v12 = *(*(v0 + 544) - 8);
    swift_task_alloc();
    (*(v12 + 16))();
    v13 = String.init<A>(describing:)();
    v15 = v14;

    v16 = sub_1002346CC(v13, v15, &v98);

    *(v7 + 14) = v16;
    swift_arrayDestroy();

    v95(v94, v93);
  }

  else
  {
    v17 = *(v0 + 1032);
    v18 = *(v0 + 856);
    v19 = *(v0 + 840);
    v20 = *(v0 + 752);

    sub_1004D2DE4(v20, type metadata accessor for MediaAPIUpdates.App);
    v17(v18, v19);
  }

  *(v0 + 1320) = 0;
  v21 = *(v0 + 760);
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
    v24 = *(v0 + 616);
    v25 = *(v24 + 24);
    v26 = *(v24 + 72);
    v96 = *(v24 + 48);
    v27 = sub_100006D8C(v24, v25);
    *(v0 + 168) = v25;
    *(v0 + 176) = v96;
    *(v0 + 192) = v26;
    v28 = sub_10020A748((v0 + 144));
    (*(*(v25 - 8) + 16))(v28, v27, v25);
    sub_100006190(0, &qword_100784500);
    v29 = sub_10060BC54(v23, v22, 0, 0, 2);
    if (v29)
    {
      v30 = v29;
      v31 = [v30 iTunesMetadata];
      v32 = [v31 storeItemIdentifier];

      if (v32)
      {
        v33 = [v30 iTunesMetadata];
        v34 = [v33 storeItemIdentifier];
      }

      else
      {
        v34 = 0;
      }

      v59 = *(v0 + 688);
      v60 = *(v0 + 680);
      *v59 = v23;
      *(v59 + 8) = v22;
      *(v59 + 16) = v34;
      *(v59 + 24) = v32 == 0;
      (*(v60 + 104))();

      v61 = [v30 iTunesMetadata];
      v62 = [v61 distributorInfo];

      v63 = [v62 distributorID];
      if (v63)
      {
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67 = 0;
        v68 = v66;
LABEL_25:
        *(v0 + 1378) = v67;
        *(v0 + 1352) = v68;
        *(v0 + 1344) = v66;
        *(v0 + 1336) = v64;
        *(v0 + 1328) = v30;
        v69 = swift_task_alloc();
        *(v0 + 1360) = v69;
        *v69 = v0;
        v69[1] = sub_1004D2144;
        v70 = *(v0 + 664);

        return sub_10060FC18(v70, v23, v22, 1, 0, 0, v0 + 144, v64);
      }
    }

    else
    {
      v40 = *(v0 + 688);
      v41 = *(v0 + 680);
      *v40 = v23;
      *(v40 + 8) = v22;
      *(v40 + 16) = 0;
      *(v40 + 24) = 1;
      (*(v41 + 104))();

      v30 = 0;
    }

    v64 = 0;
    v68 = 0;
    v67 = -1;
    v66 = 3;
    goto LABEL_25;
  }

  sub_1004D2DE4(*(v0 + 784), type metadata accessor for MediaAPIApp);
  v35 = *(v0 + 1192);
  v36 = *(v0 + 1088);
  v37 = *(v0 + 1184) + 1;
  sub_1004D2DE4(*(v0 + 760), type metadata accessor for MediaAPIUpdates.App);
  if (v37 == v36)
  {
LABEL_9:

    v38 = *(v0 + 1144);
    v39 = *(v0 + 1136);
    if (*(v35 + 16))
    {
      v36 = *(*sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);

      sub_10066969C(v35);

      sub_10020B0E0(v39, v38);
    }

    else
    {

      sub_10020B0E0(v39, v38);
    }

    v71 = *(v0 + 1096);
    v72 = *(v0 + 1088);
    if (v71 >= v72)
    {
      v89 = *(v0 + 1064);

      sub_10000710C(v0 + 288);

      v90 = *(v0 + 8);

      return v90();
    }

    v73 = *(v0 + 1024);
    v74 = v71 + v73;
    v75 = ((v71 + v73) >> 63) ^ 0x8000000000000000;
    if (__OFADD__(v71, v73))
    {
      v74 = ((v71 + v73) >> 63) ^ 0x8000000000000000;
    }

    *(v0 + 1096) = v74;
    v76 = __OFSUB__(v72, v71);
    v77 = v72 - v71;
    if (v76)
    {
      __break(1u);
    }

    else
    {
      if (v73 < v77)
      {
        v77 = v73;
      }

      if (v77 >= v71)
      {
        if ((v71 & 0x8000000000000000) == 0)
        {
          v36 = *(v0 + 952);
          v78 = *(v36 + 16);
          if (v78 >= v71 && v78 >= v77)
          {
            LODWORD(v75) = *(*(v0 + 744) + 80);
            *(v0 + 1372) = v75;
            if (v78 == v77 - v71)
            {

LABEL_41:
              *(v0 + 1104) = v36;
              v79 = *(v0 + 1080);
              v80 = *(v0 + 976);
              v81 = *(v0 + 928);
              v82 = *(v0 + 912);
              v83 = sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24));
              v80(v81, *v83 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService, v82);
              v84 = swift_task_alloc();
              *(v0 + 1112) = v84;
              *v84 = v0;
              v84[1] = sub_1004CD160;
              v85 = *(v0 + 1072);
              v86 = *(v0 + 1064);
              v87 = *(v0 + 928);
              v88 = *(v0 + 1376);

              return sub_1004C77AC(v88, v36, v86, v85, v79, v87);
            }

LABEL_51:
            sub_10037CE6C(v36, v36 + ((v75 + 32) & ~v75), v71, (2 * v77) | 1);
            v36 = v91;
            goto LABEL_41;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  while (1)
  {
    v43 = *(v0 + 1184) + 1;
    *(v0 + 1192) = v35;
    *(v0 + 1184) = v43;
    *(v0 + 1176) = 0;
    v44 = *(v0 + 1160);
    v45 = *(v0 + 760);
    v46 = *(v0 + 736);
    sub_1004D2D7C(*(v0 + 952) + ((*(v0 + 1372) + 32) & ~*(v0 + 1372)) + *(v0 + 1168) * v43, v45, type metadata accessor for MediaAPIUpdates.App);
    *(v0 + 576) = *(v45 + *(v46 + 28));
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    if (*(v44 + 16))
    {
      break;
    }

LABEL_14:
    v36 = *(v0 + 1088);
    v42 = *(v0 + 1184) + 1;
    sub_1004D2DE4(*(v0 + 760), type metadata accessor for MediaAPIUpdates.App);
    if (v42 == v36)
    {
      goto LABEL_9;
    }
  }

  v49 = sub_10052213C(v47, v48);
  v51 = v50;

  if ((v51 & 1) == 0)
  {
    goto LABEL_14;
  }

  v52 = *(*(*(v0 + 1160) + 56) + 8 * v49);
  if (!*(v52 + 16))
  {
    goto LABEL_14;
  }

  v53 = *(v0 + 760);
  v54 = *(v0 + 736);
  v55 = *(v0 + 616);
  v56 = *(*(v0 + 776) + 80);
  sub_1004D2D7C(v52 + ((v56 + 32) & ~v56), *(v0 + 784), type metadata accessor for MediaAPIApp);
  v57 = *(*sub_100006D8C(v55, v55[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  *(v0 + 1200) = v57;
  v58 = (v53 + *(v54 + 36));
  *(v0 + 1208) = *v58;
  *(v0 + 1216) = v58[1];

  return _swift_task_switch(sub_1004CE174, v57, 0);
}

uint64_t sub_1004D2144()
{
  v1 = *(*v0 + 1344);
  v2 = *(*v0 + 1336);

  sub_1002706F8(v2, v1);

  return _swift_task_switch(sub_1004D2274, 0, 0);
}

uint64_t sub_1004D2274()
{
  v65 = *(v0 + 1378);
  v64 = *(v0 + 1352);
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v62 = *(v0 + 664);
  v63 = *(v0 + 1336);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 624);

  v9 = *(v3 + 32);
  v9(v1, v2, v4);
  sub_10000710C(v0 + 144);
  v10 = *(v8 + 48);
  v11 = v7 + *(v8 + 64);
  v9(v7, v1, v4);
  (*(v5 + 32))(v7 + v10, v62, v6);
  *v11 = v63;
  *(v11 + 8) = v64;
  *(v11 + 16) = v65;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + 1192);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_10036313C(0, v13[2] + 1, 1, *(v0 + 1192));
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_10036313C(v14 > 1, v15 + 1, 1, v13);
  }

  v16 = *(v0 + 640);
  v17 = *(v0 + 632);
  sub_1004D2DE4(*(v0 + 784), type metadata accessor for MediaAPIApp);
  v13[2] = v15 + 1;
  sub_1003D45D0(v16, v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15);
  v18 = *(v0 + 1320);
  v19 = *(v0 + 1088);
  v20 = *(v0 + 1184) + 1;
  sub_1004D2DE4(*(v0 + 760), type metadata accessor for MediaAPIUpdates.App);
  if (v20 == v19)
  {
LABEL_6:

    v21 = *(v0 + 1144);
    v22 = *(v0 + 1136);
    if (v13[2])
    {
      v19 = *(*sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);

      sub_10066969C(v13);

      sub_10020B0E0(v22, v21);
    }

    else
    {

      sub_10020B0E0(v22, v21);
    }

    v40 = *(v0 + 1096);
    v41 = *(v0 + 1088);
    if (v40 >= v41)
    {
      v58 = *(v0 + 1064);

      sub_10000710C(v0 + 288);

      v59 = *(v0 + 8);

      return v59();
    }

    v42 = *(v0 + 1024);
    v43 = v40 + v42;
    v44 = ((v40 + v42) >> 63) ^ 0x8000000000000000;
    if (__OFADD__(v40, v42))
    {
      v43 = ((v40 + v42) >> 63) ^ 0x8000000000000000;
    }

    *(v0 + 1096) = v43;
    v45 = __OFSUB__(v41, v40);
    v46 = v41 - v40;
    if (v45)
    {
      __break(1u);
    }

    else
    {
      if (v42 < v46)
      {
        v46 = v42;
      }

      if (v46 >= v40)
      {
        if ((v40 & 0x8000000000000000) == 0)
        {
          v19 = *(v0 + 952);
          v47 = *(v19 + 16);
          if (v47 >= v40 && v47 >= v46)
          {
            LODWORD(v44) = *(*(v0 + 744) + 80);
            *(v0 + 1372) = v44;
            if (v47 == v46 - v40)
            {

LABEL_30:
              *(v0 + 1104) = v19;
              v48 = *(v0 + 1080);
              v49 = *(v0 + 976);
              v50 = *(v0 + 928);
              v51 = *(v0 + 912);
              v52 = sub_100006D8C(*(v0 + 616), *(*(v0 + 616) + 24));
              v49(v50, *v52 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService, v51);
              v53 = swift_task_alloc();
              *(v0 + 1112) = v53;
              *v53 = v0;
              v53[1] = sub_1004CD160;
              v54 = *(v0 + 1072);
              v55 = *(v0 + 1064);
              v56 = *(v0 + 928);
              v57 = *(v0 + 1376);

              return sub_1004C77AC(v57, v19, v55, v54, v48, v56);
            }

LABEL_40:
            sub_10037CE6C(v19, v19 + ((v44 + 32) & ~v44), v40, (2 * v46) | 1);
            v19 = v60;
            goto LABEL_30;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  while (1)
  {
    v24 = *(v0 + 1184) + 1;
    *(v0 + 1192) = v13;
    *(v0 + 1184) = v24;
    *(v0 + 1176) = v18;
    v25 = *(v0 + 1160);
    v26 = *(v0 + 760);
    v27 = *(v0 + 736);
    sub_1004D2D7C(*(v0 + 952) + ((*(v0 + 1372) + 32) & ~*(v0 + 1372)) + *(v0 + 1168) * v24, v26, type metadata accessor for MediaAPIUpdates.App);
    *(v0 + 576) = *(v26 + *(v27 + 28));
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    if (*(v25 + 16))
    {
      break;
    }

LABEL_10:
    v19 = *(v0 + 1088);
    v23 = *(v0 + 1184) + 1;
    sub_1004D2DE4(*(v0 + 760), type metadata accessor for MediaAPIUpdates.App);
    if (v23 == v19)
    {
      goto LABEL_6;
    }
  }

  v30 = sub_10052213C(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
    goto LABEL_10;
  }

  v33 = *(*(*(v0 + 1160) + 56) + 8 * v30);
  if (!*(v33 + 16))
  {
    goto LABEL_10;
  }

  v34 = *(v0 + 760);
  v35 = *(v0 + 736);
  v36 = *(v0 + 616);
  v37 = *(*(v0 + 776) + 80);
  sub_1004D2D7C(v33 + ((v37 + 32) & ~v37), *(v0 + 784), type metadata accessor for MediaAPIApp);
  v38 = *(*sub_100006D8C(v36, v36[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  *(v0 + 1200) = v38;
  v39 = (v34 + *(v35 + 36));
  *(v0 + 1208) = *v39;
  *(v0 + 1216) = v39[1];

  return _swift_task_switch(sub_1004CE174, v38, 0);
}

uint64_t sub_1004D29AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004D2B40()
{
  v1 = *(v0 + 1048);
  swift_willThrow();

  sub_10000710C(v0 + 288);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1004D2D28()
{
  result = qword_1007850D0;
  if (!qword_1007850D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007850D0);
  }

  return result;
}

uint64_t sub_1004D2D7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004D2DE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1004D2E60()
{
  result = qword_1007850D8;
  if (!qword_1007850D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007850D8);
  }

  return result;
}

unint64_t sub_1004D2EB4()
{
  result = qword_1007850E0;
  if (!qword_1007850E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007850E0);
  }

  return result;
}

uint64_t sub_1004D2F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004D2F70(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1004D2F84(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004D2FAC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004D2FF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1004D30AC()
{
  sub_10038C230();
  if (v0 <= 0x3F)
  {
    sub_100476B28();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Platform();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1004D3178()
{
  result = qword_1007851A0;
  if (!qword_1007851A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007851A0);
  }

  return result;
}

unint64_t sub_1004D31D0()
{
  result = qword_1007851A8;
  if (!qword_1007851A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007851A8);
  }

  return result;
}

unint64_t sub_1004D3228()
{
  result = qword_1007851B0;
  if (!qword_1007851B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007851B0);
  }

  return result;
}

unint64_t sub_1004D3280()
{
  result = qword_1007851B8;
  if (!qword_1007851B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007851B8);
  }

  return result;
}

uint64_t sub_1004D32D4(void *a1)
{
  v3 = sub_1001F0C48(&qword_100785260);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100006D8C(a1, a1[3]);
  sub_1004D4090();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

unint64_t sub_1004D34B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A500, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1004D3504(void *a1)
{
  v3 = sub_1001F0C48(&qword_1007851E8);
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = sub_1001F0C48(&qword_1007851F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = a1[3];
  v19 = a1;
  sub_100006D8C(a1, v10);
  sub_1004D3BF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000710C(v19);
  }

  else
  {
    v11 = v18;
    v17 = v7;
    sub_1004D3C48();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22[0] = 0;
    KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
    v12 = type metadata accessor for MediaAPIApp(0);
    v16 = v27;
    sub_100231ED8(v25, v26);
    sub_1004D3C9C(&qword_100785208, type metadata accessor for MediaAPIApp);
    v10 = sub_1004C4C88(v12);
    LOBYTE(v20) = 1;
    KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
    v16 = v24;
    sub_100231ED8(v22, v23);
    sub_1004D3CE4();
    sub_1004C4C88(&type metadata for MediaAPIUpdates.Response.DeferredUpdate);
    v28 = 2;
    sub_100329ED8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v11 + 8))(v5, v3);
    (*(v17 + 8))(v9, v6);
    v14 = v20;
    v15 = v21;
    sub_10000710C(v22);
    sub_10000710C(v25);

    sub_1001DFECC(v14, v15);
    sub_10000710C(v19);

    sub_10020B0E0(v14, v15);
  }

  return v10;
}

unint64_t sub_1004D3A54(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A5D8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1004D3AA0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A640, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1004D3AEC()
{
  result = qword_1007851C8;
  if (!qword_1007851C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007851C8);
  }

  return result;
}

unint64_t sub_1004D3B40()
{
  result = qword_1007851D8;
  if (!qword_1007851D8)
  {
    sub_1001F76D0(&qword_1007851D0);
    sub_1004D3C9C(&qword_1007851E0, type metadata accessor for MediaAPIUpdates.App);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007851D8);
  }

  return result;
}

unint64_t sub_1004D3BF4()
{
  result = qword_1007851F8;
  if (!qword_1007851F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007851F8);
  }

  return result;
}

unint64_t sub_1004D3C48()
{
  result = qword_100785200;
  if (!qword_100785200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785200);
  }

  return result;
}

uint64_t sub_1004D3C9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004D3CE4()
{
  result = qword_100785210;
  if (!qword_100785210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785210);
  }

  return result;
}

unint64_t sub_1004D3D7C()
{
  result = qword_100785218;
  if (!qword_100785218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785218);
  }

  return result;
}

unint64_t sub_1004D3DD4()
{
  result = qword_100785220;
  if (!qword_100785220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785220);
  }

  return result;
}

unint64_t sub_1004D3E2C()
{
  result = qword_100785228;
  if (!qword_100785228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785228);
  }

  return result;
}

unint64_t sub_1004D3E84()
{
  result = qword_100785230;
  if (!qword_100785230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785230);
  }

  return result;
}

unint64_t sub_1004D3EDC()
{
  result = qword_100785238;
  if (!qword_100785238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785238);
  }

  return result;
}

unint64_t sub_1004D3F34()
{
  result = qword_100785240;
  if (!qword_100785240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785240);
  }

  return result;
}

unint64_t sub_1004D3F8C()
{
  result = qword_100785248;
  if (!qword_100785248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785248);
  }

  return result;
}

unint64_t sub_1004D3FE4()
{
  result = qword_100785250;
  if (!qword_100785250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785250);
  }

  return result;
}

unint64_t sub_1004D403C()
{
  result = qword_100785258;
  if (!qword_100785258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785258);
  }

  return result;
}

unint64_t sub_1004D4090()
{
  result = qword_100785268;
  if (!qword_100785268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785268);
  }

  return result;
}

unint64_t sub_1004D40F8()
{
  result = qword_100785270;
  if (!qword_100785270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785270);
  }

  return result;
}

unint64_t sub_1004D4150()
{
  result = qword_100785278;
  if (!qword_100785278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785278);
  }

  return result;
}

unint64_t sub_1004D41A8()
{
  result = qword_100785280;
  if (!qword_100785280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785280);
  }

  return result;
}

Swift::Int sub_1004D421C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1004D42A0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004D42FC@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A740, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_1004D437C()
{
  result = qword_100785288;
  if (!qword_100785288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785288);
  }

  return result;
}

unint64_t sub_1004D4480()
{
  result = qword_100785290;
  if (!qword_100785290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785290);
  }

  return result;
}

Swift::Int sub_1004D44E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004D45B8()
{
  String.hash(into:)();
}

Swift::Int sub_1004D467C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004D4750@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004D50A8(*a1);
  *a2 = result;
  return result;
}

void sub_1004D4780(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "single_instance_id";
  v4 = 0xD000000000000016;
  v5 = "disabled_install_sheet";
  v6 = 0xD000000000000013;
  if (v2 != 3)
  {
    v6 = 0xD000000000000010;
    v5 = "approved_developers";
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xD000000000000012;
  if (*v1)
  {
    v8 = "distributor_priority_list";
  }

  else
  {
    v7 = 0xD000000000000019;
    v8 = "";
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v7 = v4;
    v9 = v3;
  }

  *a1 = v7;
  a1[1] = v9 | 0x8000000000000000;
}

id sub_1004D49D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureStorageEntity.Entity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004D4A28()
{
  sub_1001F0C48(&qword_1007852C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A8420;
  *(inited + 32) = 3;
  v2 = v0[3];
  v21 = v2;
  if (v2)
  {
    v3 = sub_1001F0C48(&unk_10077FB40);
    v4 = sub_100006DD0(&qword_100780CA8);
    v5 = sub_100006DD0(&qword_100780CC0);
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
  }

  *(inited + 40) = v2;
  *(inited + 64) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = v5;
  *(inited + 88) = 2;
  v6 = v0[2];
  v20 = v6;
  if (v6)
  {
    v7 = sub_1001F0C48(&unk_10077FB40);
    v8 = sub_100006DD0(&qword_100780CA8);
    v9 = sub_100006DD0(&qword_100780CC0);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v6;
  *(inited + 120) = v7;
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  *(inited + 144) = 0;
  v19 = v0[1];
  v10 = v19;
  *(inited + 176) = sub_1001F0C48(&unk_10077FB40);
  *(inited + 184) = sub_100006DD0(&qword_100780CA8);
  *(inited + 192) = sub_100006DD0(&qword_100780CC0);
  *(inited + 152) = v10;
  *(inited + 200) = 4;
  v11 = v0[4];
  v18 = v11;
  if (v11)
  {
    v12 = sub_1001F0C48(&qword_100781758);
    v13 = sub_1004D4DD0(&qword_1007852C8);
    v14 = sub_1004D4DD0(&qword_100781750);
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    *(inited + 216) = 0;
    *(inited + 224) = 0;
  }

  *(inited + 208) = v11;
  *(inited + 232) = v12;
  *(inited + 240) = v13;
  *(inited + 248) = v14;
  *(inited + 256) = 1;
  *(inited + 288) = &type metadata for Int;
  *(inited + 296) = &protocol witness table for Int;
  *(inited + 304) = &protocol witness table for Int;
  *(inited + 264) = 1;
  sub_100005934(&v21, &v17, &qword_100784430);
  sub_100005934(&v20, &v17, &qword_100784430);
  sub_100005934(&v19, &v17, &unk_10077FB40);
  sub_100005934(&v18, &v17, &qword_100782580);
  v15 = sub_100529470(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_1007870B0);
  swift_arrayDestroy();
  return sub_1004E5B64(v15);
}

uint64_t sub_1004D4DD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(&qword_100781758);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004D4E60()
{
  result = qword_1007852D0;
  if (!qword_1007852D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007852D0);
  }

  return result;
}

unint64_t sub_1004D4EB8()
{
  result = qword_100785308;
  if (!qword_100785308)
  {
    sub_1001F76D0(&qword_100785310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785308);
  }

  return result;
}

unint64_t sub_1004D4F1C(void *a1)
{
  a1[1] = sub_1004D4F54();
  a1[2] = sub_1004D4FA8();
  result = sub_1004D4FFC();
  a1[3] = result;
  return result;
}

unint64_t sub_1004D4F54()
{
  result = qword_100785318;
  if (!qword_100785318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785318);
  }

  return result;
}

unint64_t sub_1004D4FA8()
{
  result = qword_100785320;
  if (!qword_100785320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785320);
  }

  return result;
}

unint64_t sub_1004D4FFC()
{
  result = qword_100785328;
  if (!qword_100785328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785328);
  }

  return result;
}

unint64_t sub_1004D5054()
{
  result = qword_100785330;
  if (!qword_100785330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785330);
  }

  return result;
}

unint64_t sub_1004D50A8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A6A8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1004D50F4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FilePath.ComponentView.Index();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v18[-v7];
  type metadata accessor for FilePath.ComponentView();
  sub_1004D6E60(&qword_100780BC8, &type metadata accessor for FilePath.ComponentView);
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v9 = type metadata accessor for FilePath.Component();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_1004D6E60(&qword_100785378, &type metadata accessor for FilePath.ComponentView);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v12 = *(v3 + 8);
    v12(v6, v2);
    v13 = dispatch thunk of Collection.subscript.read();
    v15 = v14;
    v16 = type metadata accessor for FilePath.Component();
    v17 = *(v16 - 8);
    (*(v17 + 16))(a1, v15, v16);
    v13(v18, 0);
    v12(v8, v2);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }
}

uint64_t sub_1004D53C0()
{
  v1 = sub_1001F0C48(&qword_100785338);
  __chkstk_darwin(v1 - 8);
  v116 = &v113 - v2;
  v149 = type metadata accessor for String.Encoding();
  v128 = *(v149 - 8);
  __chkstk_darwin(v149);
  v148 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1001F0C48(&qword_100780BB8);
  v4 = __chkstk_darwin(v147);
  v146 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v145 = &v113 - v6;
  v144 = sub_1001F0C48(&qword_100780BC0);
  __chkstk_darwin(v144);
  v143 = &v113 - v7;
  v8 = sub_1001F0C48(&qword_100785340);
  v9 = __chkstk_darwin(v8 - 8);
  v142 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v120 = &v113 - v11;
  v158 = type metadata accessor for FilePath.Component();
  v135 = *(v158 - 8);
  v12 = __chkstk_darwin(v158);
  v157 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v141 = &v113 - v14;
  v136 = sub_1001F0C48(&qword_100785348);
  __chkstk_darwin(v136);
  v150 = &v113 - v15;
  v131 = sub_1001F0C48(&qword_100785350);
  __chkstk_darwin(v131);
  v121 = &v113 - v16;
  v17 = sub_1001F0C48(&qword_100785358);
  __chkstk_darwin(v17 - 8);
  v132 = &v113 - v18;
  v19 = type metadata accessor for FilePath.ComponentView.Index();
  v159 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v122 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v113 - v23;
  __chkstk_darwin(v22);
  v26 = &v113 - v25;
  v27 = type metadata accessor for FilePath.ComponentView();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v118 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v156 = &v113 - v32;
  v33 = __chkstk_darwin(v31);
  v139 = &v113 - v34;
  __chkstk_darwin(v33);
  v36 = &v113 - v35;
  v37 = type metadata accessor for FilePath();
  v38 = *(v37 - 8);
  v39 = __chkstk_darwin(v37);
  v117 = &v113 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v138 = &v113 - v42;
  v43 = __chkstk_darwin(v41);
  v137 = &v113 - v44;
  __chkstk_darwin(v43);
  v46 = &v113 - v45;
  v115 = v38;
  v48 = *(v38 + 16);
  v47 = (v38 + 16);
  v124 = v0;
  v123 = v49;
  v151 = v48;
  (v48)(&v113 - v45, v0);
  FilePath.components.getter();
  v50 = sub_1004D6E60(&qword_100780BC8, &type metadata accessor for FilePath.ComponentView);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v140 = v50;
  v51 = dispatch thunk of Collection.distance(from:to:)();
  v52 = v159[1];
  v53 = v24;
  v54 = v159 + 1;
  v52(v53, v19);
  v155 = v19;
  v153 = v54;
  v52(v26, v19);
  v55 = *(v28 + 8);
  v154 = v27;
  v56 = v28 + 8;
  v152 = v55;
  v55(v36, v27);
  if (v51 < 2)
  {
    return FilePath.string.getter();
  }

  v57 = v124;
  v58 = v123;
  v59 = v151;
  v151(v46, v124, v123);
  FilePath.components.getter();
  v59(v137, v57, v58);
  v60 = v139;
  FilePath.components.getter();
  FilePath.ComponentView.endIndex.getter();
  v61 = v60;
  v62 = v154;
  v119 = v56;
  v63 = v152;
  v152(v61, v154);
  FilePath.ComponentView.index(before:)();
  v52(v26, v155);
  v63(v36, v62);
  v59(v138, v124, v123);
  FilePath.components.getter();
  v64 = sub_1004D6E60(&qword_100785360, &type metadata accessor for FilePath.ComponentView.Index);
  v65 = v155;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
LABEL_26:
    v47 = sub_100363C8C(0, v47[2] + 1, 1, v47);
    goto LABEL_7;
  }

  v66 = v46;
  v67 = v47;
  v139 = v52;
  v114 = v66;
  v69 = (v159 + 2);
  v68 = v159[2];
  v70 = v132;
  v68(v132, v122, v65);
  v71 = v121;
  v72 = v156;
  sub_100338538(v70, v121);
  sub_1000032A8(v70, &qword_100785358);
  v73 = v152;
  v152(v72, v154);
  v74 = v150;
  sub_100005934(v71, v150, &qword_100785350);
  v75 = (v74 + *(v136 + 36));
  v137 = v69;
  v136 = v68;
  v68(v75, v71, v65);
  v76 = v131;
  v77 = v74;
  v78 = (v74 + *(v131 + 36));
  v138 = v75;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v90 = v65;
    v79 = v77;
    v131 = v77 + *(v76 + 40);
    v130 = (v159 + 4);
    v129 = (v135 + 16);
    ++v128;
    v127 = (v135 + 8);
    v126 = (v135 + 56);
    v125 = (v135 + 48);
    v159 = _swiftEmptyArrayStorage;
    v156 = (v135 + 32);
    v134 = v67;
    v133 = v64;
    v132 = v78;
    while (1)
    {
      v93 = v145;
      v94 = v136;
      (v136)(v145, v79, v90);
      v95 = v147;
      v94(v93 + *(v147 + 48), v78, v90);
      v96 = v146;
      sub_100005934(v93, v146, &qword_100780BB8);
      v97 = *(v95 + 48);
      v98 = *v130;
      v99 = v143;
      (*v130)(v143, v96, v90);
      v100 = v139;
      (v139)(v96 + v97, v90);
      sub_10033B19C(v93, v96);
      v98((v99 + *(v144 + 36)), v96 + *(v95 + 48), v90);
      v100(v96, v90);
      dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
      sub_1000032A8(v99, &qword_100780BC0);
      v101 = dispatch thunk of Collection.subscript.read();
      v102 = v141;
      v103 = v158;
      (*v129)(v141);
      v101(v160, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v160[0] = FilePath.Component.string.getter();
      v160[1] = v104;
      v105 = v148;
      static String.Encoding.ascii.getter();
      sub_100005E50();
      LOBYTE(v97) = StringProtocol.canBeConverted(to:)();
      (*v128)(v105, v149);
      if ((v97 & 1) == 0)
      {
        break;
      }

      v106 = String.count.getter();
      v107 = v142;
      if (v106 <= 2)
      {
        FilePath.Component.init(_:)();
        v80 = v151;
        v108 = v158;
      }

      else
      {
        String.index(_:offsetBy:)();
        String.subscript.getter();

        v108 = v158;
        static String._fromSubstring(_:)();

        FilePath.Component.init(_:)();
        v80 = v151;
      }

      v78 = v132;
      (*v127)(v102, v108);
      if ((*v125)(v107, 1, v108) != 1)
      {
        goto LABEL_20;
      }

      sub_1000032A8(v107, &qword_100785340);
      v73 = v152;
      v91 = v159;
LABEL_13:
      v159 = v91;
      v90 = v155;
      v92 = dispatch thunk of static Equatable.== infix(_:_:)();
      v79 = v150;
      if (v92)
      {
        goto LABEL_5;
      }
    }

    v107 = v142;
    FilePath.Component.init(stringLiteral:)();
    (*v127)(v102, v103);
    (*v126)(v107, 0, 1, v103);
    v80 = v151;
    v108 = v103;
    v78 = v132;
LABEL_20:
    v109 = *v156;
    (*v156)(v157, v107, v108);
    v91 = v159;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v152;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v91 = sub_100363C8C(0, v91[2] + 1, 1, v91);
    }

    v112 = v91[2];
    v111 = v91[3];
    if (v112 >= v111 >> 1)
    {
      v91 = sub_100363C8C(v111 > 1, v112 + 1, 1, v91);
    }

    v91[2] = v112 + 1;
    v109(v91 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v112, v157, v108);
    goto LABEL_13;
  }

  v159 = _swiftEmptyArrayStorage;
  v79 = v74;
  v80 = v151;
LABEL_5:
  sub_1000032A8(v79, &qword_100785348);
  sub_1000032A8(v121, &qword_100785350);
  v80(v117, v124, v123);
  v81 = v118;
  FilePath.components.getter();
  v64 = v120;
  sub_1004D50F4(v120);
  v73(v81, v154);
  v59 = v158;
  result = (*(v135 + 48))(v64, 1, v158);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v47 = v159;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v46 = v122;
  if ((v83 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_7:
  v85 = v47[2];
  v84 = v47[3];
  v86 = v47;
  if (v85 >= v84 >> 1)
  {
    v86 = sub_100363C8C(v84 > 1, v85 + 1, 1, v47);
  }

  v87 = v86;
  *(v86 + 16) = v85 + 1;
  (*(v135 + 32))(v86 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v85, v64, v59);
  FilePath.root.getter();
  v160[0] = v87;
  sub_1001F0C48(&qword_100785368);
  sub_1004D6DFC();
  v88 = v114;
  FilePath.init<A>(root:_:)();
  v89 = FilePath.string.getter();
  (*(v115 + 8))(v88, v123);
  (v139)(v46, v155);
  return v89;
}

void sub_1004D65FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CocoaError.Code();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v10 = type metadata accessor for CocoaError();
  v40 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v46 = 0;
  v15 = a1;
  FilePath.string.getter();
  v16 = String._bridgeToObjectiveC()();

  v42 = v2;
  LOBYTE(a1) = [v2 fileExistsAtPath:v16 isDirectory:&v46];

  if ((a1 & 1) == 0 && (v46 & 1) == 0)
  {
    v37 = v10;
    v17 = v15;
    FilePath.string.getter();
    v18 = String._bridgeToObjectiveC()();

    v45 = 0;
    v19 = [v42 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:&v45];

    if (v19)
    {
      v20 = v45;
      return;
    }

    v21 = v45;
    v22 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v45 = v22;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    v23 = v37;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    v24 = v40;
    v25 = v41;
    (*(v40 + 32))(v41, v14, v23);
    sub_1004D6E60(&qword_100785380, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.code.getter();
    static CocoaError.Code.fileWriteFileExists.getter();
    sub_1004D6E60(&qword_100785388, &type metadata accessor for CocoaError.Code);
    v26 = v39;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v27 = *(v38 + 8);
    v27(v7, v26);
    v27(v9, v26);
    if (v44 == v43)
    {
      v28 = v17;
      v29 = v42;
      sub_1004D6BB4(v28, v42);
      FilePath.string.getter();
      v30 = String._bridgeToObjectiveC()();

      v44 = 0;
      v31 = [v29 createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:0 error:&v44];

      if (v31)
      {
        v32 = *(v40 + 8);
        v33 = v44;
        v32(v41, v23);
LABEL_13:

        return;
      }

      v35 = v44;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v24 = v40;
      v34 = v41;
    }

    else
    {
      v34 = v25;
      CocoaError._nsError.getter();
      swift_willThrow();
    }

    (*(v24 + 8))(v34, v23);
    goto LABEL_13;
  }
}

id sub_1004D6AE0()
{
  FilePath.string.getter();
  v1 = String._bridgeToObjectiveC()();

  v5 = 0;
  v2 = [v0 removeItemAtPath:v1 error:&v5];

  if (v2)
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_1004D6BB4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  v16 = 0;
  FilePath.string.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [a2 fileExistsAtPath:v11 isDirectory:&v16];

  if (v12)
  {
    if ((v16 & 1) == 0)
    {
      sub_1004D6AE0();
    }
  }

  else
  {
    (*(v5 + 16))(v8, a1, v4);
    FilePath.removingLastComponent()();
    FilePath.init(stringLiteral:)();
    sub_1004D6E60(&qword_100785390, &type metadata accessor for FilePath);
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v14 = *(v5 + 8);
    v14(v8, v4);
    if ((v13 & 1) == 0)
    {
      sub_1004D6BB4(v10, a2);
    }

    v14(v10, v4);
  }
}

unint64_t sub_1004D6DFC()
{
  result = qword_100785370;
  if (!qword_100785370)
  {
    sub_1001F76D0(&qword_100785368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785370);
  }

  return result;
}

uint64_t sub_1004D6E60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004D6EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a2;
  v120 = a1;
  v4 = type metadata accessor for Platform();
  v125 = *(v4 - 8);
  v126 = v4;
  __chkstk_darwin(v4);
  v108 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for AppInstallRequestType();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v117 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F0C48(&qword_10077E958);
  __chkstk_darwin(v7 - 8);
  v116 = &v101 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v119 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F0C48(&unk_100780A00);
  __chkstk_darwin(v12 - 8);
  v118 = &v101 - v13;
  v14 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v101 - v15;
  v17 = type metadata accessor for AppInstall();
  v18 = v17[9];
  v19 = type metadata accessor for URL();
  v20 = *(*(v19 - 8) + 56);
  v20(a3 + v18, 1, 1, v19);
  v21 = v17[14];
  v112 = v10;
  v22 = *(v10 + 56);
  v128 = v21;
  v113 = v9;
  v22(a3 + v21, 1, 1, v9);
  v23 = v17[20];
  v24 = type metadata accessor for FilePath();
  v25 = *(v24 - 8);
  v115 = *(v25 + 56);
  v109 = v25 + 56;
  v115(a3 + v23, 1, 1, v24);
  v127 = v17[30];
  v20(a3 + v127, 1, 1, v19);
  v26 = v16;
  v27 = v18;
  v28 = v114;
  v124 = v17[34];
  static Platform.current.getter();
  v122 = (a3 + v17[36]);
  *v122 = xmmword_10069E8A0;
  v123 = (a3 + v17[39]);
  *v123 = xmmword_10069E8A0;
  *a3 = v120;
  *(a3 + 8) = sub_1005E9E20(0, v28);
  *(a3 + 16) = v29 & 1;
  *(a3 + 24) = sub_1005E9CE0(1, v28);
  *(a3 + 32) = v30 & 1;
  *(a3 + 40) = sub_1005E9B90(2, v28);
  *(a3 + 48) = v31 & 1;
  *(a3 + 56) = sub_1005E9A3C(3, v28);
  *(a3 + 64) = v32 & 1;
  sub_1005E9894(4, v28, v16);
  sub_10020AD90(v16, a3 + v27, &unk_1007809F0);
  v33 = v129;
  sub_1005E3D1C(5, v28);
  v129 = v17;
  v121 = v23;
  if (!v33)
  {
    v42 = v118;
    v120 = v24;
    v43 = v119;
    v103 = v26;
    v44 = (a3 + v17[10]);
    *v44 = v34;
    v44[1] = v35;
    sub_1005E3D1C(6, v28);
    v104 = v27;
    v45 = (a3 + v17[11]);
    *v45 = v46;
    v45[1] = v47;
    sub_1005E3D1C(7, v28);
    v102 = 0;
    v48 = (a3 + v17[13]);
    v49 = (a3 + v17[15]);
    v50 = (a3 + v17[12]);
    *v50 = v51;
    v50[1] = v52;
    *v48 = sub_1005E9868(8, v28);
    v48[1] = v53;
    v107 = v53;
    sub_1005E8ECC(9, v28, v42);
    sub_10020AD90(v42, a3 + v128, &unk_100780A00);
    *v49 = sub_1005E9868(10, v28);
    v49[1] = v54;
    v106 = v54;
    v55 = sub_1005E9704(11, v28);
    *(a3 + v17[16]) = v55;
    v56 = sub_1005E3D78(12, v28);
    v105 = v55;
    *(a3 + v17[17]) = v56 & 1;
    *(a3 + v17[18]) = sub_1005E3D78(13, v28) & 1;
    sub_1005E3DD8(14, v28, v43);
    v59 = a3;
    (*(v112 + 32))(a3 + v17[19], v43, v113);
    sub_1005E9868(16, v28);
    if (v60)
    {
      v61 = v116;
      FilePath.init(_:)();
      v62 = 0;
      v63 = v117;
    }

    else
    {
      v62 = 1;
      v63 = v117;
      v61 = v116;
    }

    v115(v61, v62, 1, v120);
    sub_10020AD90(v61, a3 + v23, &qword_10077E958);
    sub_1005E410C(15, v28, v63);
    v64 = v129;
    v65 = (a3 + v129[22]);
    (*(v110 + 32))(a3 + v129[21], v63, v111);
    *v65 = sub_1005E9868(32, v28);
    v65[1] = v66;
    v120 = v66;
    sub_1005E4488(17, v28);
    *(a3 + v64[23]) = v67 & 1;
    *(a3 + v64[24]) = sub_1005E3D78(18, v28) & 1;
    *(a3 + v64[25]) = sub_1005E96D8(19, v28) & 1;
    v68 = sub_1005E3D78(20, v28);
    *(a3 + v129[26]) = v68 & 1;
    v69 = v28;
    v70 = sub_1005E3D78(21, v28);
    *(a3 + v129[27]) = v70 & 1;
    sub_1005E470C(22, v28);
    v72 = v129[31];
    v73 = v129[29];
    *(a3 + v129[28]) = v74;
    *(a3 + v73) = sub_1005E96AC(23, v28);
    v75 = v103;
    sub_1005E9894(24, v28, v103);
    sub_10020AD90(v75, a3 + v127, &unk_1007809F0);
    *(a3 + v72) = sub_1005E95A8(25, v28);
    sub_1005E496C(26, v28);
    v76 = (a3 + v129[32]);
    *v76 = v77;
    v76[1] = v78;
    sub_1005E49C8(27, v28);
    *(a3 + v129[33]) = v79;
    sub_1005E4C2C(29, v28, v108);
    (*(v125 + 40))(a3 + v124, v108, v126);
    sub_1005E4F68(31, v28);
    *(a3 + v129[35]) = v80;
    os_unfair_lock_lock((v28 + 24));
    sub_1005F1C4C((v28 + 16), 33, &v134);
    os_unfair_lock_unlock((v28 + 24));
    sub_100005934(&v134, &v132, &qword_1007854A0);
    if (*(&v133 + 1) == 1)
    {
      sub_1000032A8(&v134, &qword_1007854A0);
      v81 = 0;
      v82 = 0xF000000000000000;
    }

    else
    {
      v130 = v132;
      v131 = v133;
      sub_1005ECE34(&v130, 33, &v135);
      sub_1000032A8(&v130, &qword_100783A30);
      sub_1000032A8(&v134, &qword_1007854A0);
      v82 = *(&v135 + 1);
      v81 = v135;
    }

    v83 = v122;
    sub_1001CEE68(*v122, v122[1]);
    *v83 = v81;
    v83[1] = v82;
    sub_1005E51D8(34, v69);
    v84 = v129[38];
    *(a3 + v129[37]) = v85;
    v119 = sub_1005E92B4(35, v69);
    *(a3 + v84) = v119;
    os_unfair_lock_lock((v69 + 24));
    sub_1005F1C4C((v69 + 16), 36, &v134);
    v109 = 0;
    os_unfair_lock_unlock((v69 + 24));
    sub_100005934(&v134, &v132, &qword_1007854A0);
    if (*(&v133 + 1) == 1)
    {
      sub_1000032A8(&v134, &qword_1007854A0);
      v86 = 0;
      v87 = 0xF000000000000000;
    }

    else
    {
      v130 = v132;
      v131 = v133;
      v88 = v109;
      sub_1005ECC24(&v130, 36, &v135);
      v109 = v88;
      if (v88)
      {
        result = sub_1000032A8(&v130, &qword_100783A30);
        __break(1u);
        return result;
      }

      sub_1000032A8(&v130, &qword_100783A30);
      sub_1000032A8(&v134, &qword_1007854A0);
      v87 = *(&v135 + 1);
      v86 = v135;
    }

    v89 = (a3 + v129[40]);
    v90 = a3 + v129[41];
    v91 = (a3 + v129[42]);
    v92 = v123;
    sub_1001CEE68(*v123, v123[1]);
    *v92 = v86;
    v92[1] = v87;
    *v89 = sub_1005E9868(37, v69);
    v89[1] = v93;
    v115 = v93;
    v94 = sub_1005E9178(38, v69);
    v41 = v95;
    v117 = v94;
    *v90 = v94;
    *(v90 + 8) = v96;
    v116 = v96;
    *(v90 + 16) = v95;
    *v91 = sub_1005E9868(39, v69);
    v91[1] = v97;
    v118 = v97;
    v98 = v109;
    v99 = sub_1005E3D78(40, v69);
    if (!v98)
    {
      v100 = v99;

      *(v59 + v129[43]) = v100 & 1;
      return result;
    }

    LODWORD(v114) = 1;
    v40 = 1;
    v39 = 1;
    v38 = 1;
    v37 = 1;
    v71 = v102;
    a3 = v59;
    sub_1000032A8(v59 + v104, &unk_1007809F0);

    if (v71)
    {
      if (!v114)
      {
LABEL_7:
        v36 = v105;
        goto LABEL_8;
      }
    }

    else
    {

      if ((v114 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_7;
  }

  sub_1000032A8(a3 + v27, &unk_1007809F0);
  v36 = 0;
  v120 = 0;
  v119 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = -1;
LABEL_8:

  sub_1000032A8(a3 + v128, &unk_100780A00);

  if (v40)
  {
    (*(v112 + 8))(a3 + v129[19], v113);
  }

  sub_1000032A8(a3 + v121, &qword_10077E958);
  v57 = v129;
  if (v39)
  {
    (*(v110 + 8))(a3 + v129[21], v111);
  }

  if (v38)
  {
  }

  sub_1000032A8(a3 + v127, &unk_1007809F0);
  if (v37)
  {
    sub_1004D2F70(*(a3 + v57[32]), *(a3 + v57[32] + 8));
  }

  (*(v125 + 8))(a3 + v124, v126);
  sub_1001CEE68(*v122, v122[1]);

  sub_1001CEE68(*v123, v123[1]);

  sub_1003C7500(v117, v116, v41);
}

uint64_t sub_1004D8100()
{
  v1 = v0;
  v2 = sub_1001F0C48(&qword_10077E958);
  __chkstk_darwin(v2 - 8);
  v4 = &v168 - v3;
  v5 = sub_1001F0C48(&unk_100780A00);
  __chkstk_darwin(v5 - 8);
  v7 = &v168 - v6;
  v8 = sub_1001F0C48(&unk_1007809F0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v168 - v12;
  v179 = sub_1001F0C48(&qword_100785398);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_1006AE5F0;
  *(v14 + 32) = 0;
  v178 = v14 + 32;
  if (*(v1 + 16))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
  }

  else
  {
    v16 = *(v1 + 8);
    v19 = &protocol witness table for UInt64;
    v18 = &protocol witness table for UInt64;
    v17 = &type metadata for UInt64;
  }

  *(v14 + 40) = v16;
  *(v14 + 64) = v17;
  *(v14 + 72) = v18;
  *(v14 + 80) = v19;
  *(v14 + 88) = 1;
  if (*(v1 + 32))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
  }

  else
  {
    v20 = *(v1 + 24);
    v23 = &protocol witness table for Int;
    v22 = &protocol witness table for Int;
    v21 = &type metadata for Int;
  }

  v172 = v7;
  *(v14 + 96) = v20;
  *(v14 + 120) = v21;
  *(v14 + 128) = v22;
  *(v14 + 136) = v23;
  *(v14 + 144) = 2;
  if (*(v1 + 48))
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    *(v15 + 160) = 0;
    *(v15 + 168) = 0;
  }

  else
  {
    v24 = *(v1 + 40);
    v26 = sub_1004D9FC4();
    v25 = &type metadata for AppleItemID;
    v27 = sub_1004DA018();
  }

  *(v15 + 152) = v24;
  *(v15 + 176) = v25;
  *(v15 + 184) = v26;
  *(v15 + 192) = v27;
  *(v15 + 200) = 3;
  v28 = *(v1 + 64);
  v175 = v4;
  if (v28)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    *(v15 + 216) = 0;
    *(v15 + 224) = 0;
  }

  else
  {
    v29 = *(v1 + 56);
    v31 = sub_1003818F0();
    v30 = &type metadata for AppleVersionID;
    v32 = sub_1004D9F70();
  }

  *(v15 + 208) = v29;
  *(v15 + 232) = v30;
  *(v15 + 240) = v31;
  *(v15 + 248) = v32;
  *(v15 + 256) = 4;
  v33 = type metadata accessor for AppInstall();
  sub_100005934(v1 + v33[9], v13, &unk_1007809F0);
  v34 = type metadata accessor for URL();
  v35 = *(v34 - 8);
  v173 = *(v35 + 48);
  v174 = v35 + 48;
  v36 = v173(v13, 1, v34);
  v177 = v11;
  v169 = v35;
  if (v36 == 1)
  {
    sub_1000032A8(v13, &unk_1007809F0);
    *(v15 + 264) = 0u;
    *(v15 + 280) = 0u;
    *(v15 + 296) = 0u;
  }

  else
  {
    *(v15 + 288) = v34;
    *(v15 + 296) = sub_1004D9DD8(&qword_100781BB8, &type metadata accessor for URL);
    *(v15 + 304) = sub_1004D9DD8(&qword_100782898, &type metadata accessor for URL);
    v37 = sub_10020A748((v15 + 264));
    (*(v35 + 32))(v37, v13, v34);
  }

  *(v15 + 312) = 5;
  v38 = (v1 + v33[10]);
  v40 = *v38;
  v39 = v38[1];
  *(v15 + 344) = &type metadata for String;
  *(v15 + 352) = &protocol witness table for String;
  *(v15 + 360) = &protocol witness table for String;
  *(v15 + 320) = v40;
  *(v15 + 328) = v39;
  v171 = v39;
  *(v15 + 368) = 6;
  v41 = (v1 + v33[11]);
  v43 = *v41;
  v42 = v41[1];
  *(v15 + 400) = &type metadata for String;
  *(v15 + 408) = &protocol witness table for String;
  *(v15 + 416) = &protocol witness table for String;
  *(v15 + 376) = v43;
  *(v15 + 384) = v42;
  v170 = v42;
  *(v15 + 424) = 7;
  v44 = (v1 + v33[12]);
  v45 = *v44;
  v46 = v44[1];
  *(v15 + 456) = &type metadata for String;
  *(v15 + 464) = &protocol witness table for String;
  *(v15 + 472) = &protocol witness table for String;
  *(v15 + 432) = v45;
  *(v15 + 440) = v46;
  *(v15 + 480) = 8;
  v47 = (v1 + v33[13]);
  v48 = v47[1];
  if (v48)
  {
    v49 = &protocol witness table for String;
    v50 = *v47;
    v51 = &protocol witness table for String;
    v52 = v48;
    v53 = &type metadata for String;
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v49 = 0;
    *(v15 + 504) = 0;
  }

  *(v15 + 488) = v50;
  *(v15 + 496) = v52;
  *(v15 + 512) = v53;
  *(v15 + 520) = v51;
  *(v15 + 528) = v49;
  *(v15 + 536) = 9;
  v54 = v172;
  sub_100005934(v1 + v33[14], v172, &unk_100780A00);
  v55 = type metadata accessor for UUID();
  v56 = *(v55 - 8);
  v57 = (*(v56 + 48))(v54, 1, v55);
  v176 = v34;
  if (v57 == 1)
  {

    sub_1000032A8(v54, &unk_100780A00);
    *(v15 + 544) = 0u;
    *(v15 + 560) = 0u;
    *(v15 + 576) = 0u;
  }

  else
  {
    *(v15 + 568) = v55;
    *(v15 + 576) = sub_1004D9DD8(&qword_100784988, &type metadata accessor for UUID);
    *(v15 + 584) = sub_1004D9DD8(&qword_1007849A0, &type metadata accessor for UUID);
    v58 = sub_10020A748((v15 + 544));
    (*(v56 + 32))(v58, v54, v55);
  }

  *(v15 + 592) = 10;
  v59 = (v1 + v33[15]);
  v60 = v59[1];
  if (v60)
  {
    v61 = &protocol witness table for String;
    v62 = *v59;
    v63 = &protocol witness table for String;
    v64 = v60;
    v65 = &type metadata for String;
  }

  else
  {
    v62 = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    v61 = 0;
    *(v15 + 616) = 0;
  }

  *(v15 + 600) = v62;
  *(v15 + 608) = v64;
  *(v15 + 624) = v65;
  *(v15 + 632) = v63;
  *(v15 + 640) = v61;
  *(v15 + 648) = 11;
  v66 = *(v1 + v33[16]);
  if (v66)
  {
    v67 = sub_1004D9EC8();
    v68 = &type metadata for AnyError;
    v69 = sub_1004D9F1C();
    v70 = v66;
  }

  else
  {
    v70 = 0;
    v68 = 0;
    v67 = 0;
    v69 = 0;
    *(v15 + 664) = 0u;
  }

  *(v15 + 656) = v70;
  *(v15 + 680) = v68;
  *(v15 + 688) = v67;
  *(v15 + 696) = v69;
  *(v15 + 704) = 12;
  v71 = *(v1 + v33[17]);
  *(v15 + 736) = &type metadata for Bool;
  *(v15 + 744) = &protocol witness table for Bool;
  *(v15 + 752) = &protocol witness table for Bool;
  *(v15 + 712) = v71;
  *(v15 + 760) = 13;
  v72 = *(v1 + v33[18]);
  *(v15 + 792) = &type metadata for Bool;
  *(v15 + 800) = &protocol witness table for Bool;
  *(v15 + 808) = &protocol witness table for Bool;
  *(v15 + 768) = v72;
  *(v15 + 816) = 14;
  v73 = v33[19];
  *(v15 + 848) = v55;
  *(v15 + 856) = sub_1004D9DD8(&qword_100784988, &type metadata accessor for UUID);
  *(v15 + 864) = sub_1004D9DD8(&qword_1007849A0, &type metadata accessor for UUID);
  v74 = sub_10020A748((v15 + 824));
  (*(v56 + 16))(v74, v1 + v73, v55);
  *(v15 + 872) = 16;
  v75 = v175;
  sub_100005934(v1 + v33[20], v175, &qword_10077E958);
  v76 = type metadata accessor for FilePath();
  v77 = *(v76 - 8);
  v78 = (*(v77 + 48))(v75, 1, v76);
  v79 = v66;

  if (v78 == 1)
  {
    sub_1000032A8(v75, &qword_10077E958);
    *(v15 + 880) = 0u;
    *(v15 + 896) = 0u;
    *(v15 + 912) = 0u;
  }

  else
  {
    v80 = FilePath.string.getter();
    *(v15 + 904) = &type metadata for String;
    *(v15 + 912) = &protocol witness table for String;
    *(v15 + 920) = &protocol witness table for String;
    *(v15 + 880) = v80;
    *(v15 + 888) = v81;
    (*(v77 + 8))(v75, v76);
  }

  v82 = v176;
  *(v15 + 928) = 15;
  v83 = v33[21];
  v84 = type metadata accessor for AppInstallRequestType();
  *(v15 + 960) = v84;
  *(v15 + 968) = sub_1004D9DD8(&qword_1007853A0, &type metadata accessor for AppInstallRequestType);
  *(v15 + 976) = sub_1004D9DD8(&qword_1007853A8, &type metadata accessor for AppInstallRequestType);
  v85 = sub_10020A748((v15 + 936));
  (*(*(v84 - 8) + 16))(v85, v1 + v83, v84);
  *(v15 + 984) = 32;
  v86 = (v1 + v33[22]);
  v87 = v86[1];
  if (v87)
  {
    v88 = &protocol witness table for String;
    v89 = *v86;
    v90 = &protocol witness table for String;
    v91 = v87;
    v92 = &type metadata for String;
  }

  else
  {
    v89 = 0;
    v91 = 0;
    v92 = 0;
    v90 = 0;
    v88 = 0;
    *(v15 + 1008) = 0;
  }

  *(v15 + 992) = v89;
  *(v15 + 1000) = v91;
  *(v15 + 1016) = v92;
  *(v15 + 1024) = v90;
  *(v15 + 1032) = v88;
  *(v15 + 1040) = 17;
  v93 = *(v1 + v33[23]);
  *(v15 + 1072) = &type metadata for AppInstallIntent;
  *(v15 + 1080) = sub_1004D9420();
  *(v15 + 1088) = sub_1004D9474();
  *(v15 + 1048) = v93;
  *(v15 + 1096) = 18;
  v94 = *(v1 + v33[24]);
  *(v15 + 1128) = &type metadata for Bool;
  *(v15 + 1136) = &protocol witness table for Bool;
  *(v15 + 1144) = &protocol witness table for Bool;
  *(v15 + 1104) = v94;
  *(v15 + 1152) = 19;
  v95 = *(v1 + v33[25]);
  *(v15 + 1184) = &type metadata for Bool;
  *(v15 + 1192) = &protocol witness table for Bool;
  *(v15 + 1200) = &protocol witness table for Bool;
  *(v15 + 1160) = v95;
  *(v15 + 1208) = 20;
  v96 = *(v1 + v33[26]);
  *(v15 + 1240) = &type metadata for Bool;
  *(v15 + 1248) = &protocol witness table for Bool;
  *(v15 + 1256) = &protocol witness table for Bool;
  *(v15 + 1216) = v96;
  *(v15 + 1264) = 21;
  v97 = *(v1 + v33[27]);
  *(v15 + 1296) = &type metadata for Bool;
  *(v15 + 1304) = &protocol witness table for Bool;
  *(v15 + 1312) = &protocol witness table for Bool;
  *(v15 + 1272) = v97;
  *(v15 + 1320) = 22;
  v98 = *(v1 + v33[28]);
  *(v15 + 1352) = type metadata accessor for LogKey();
  *(v15 + 1360) = sub_1004D9DD8(&qword_1007853C0, &type metadata accessor for LogKey);
  *(v15 + 1368) = sub_1004D9DD8(&qword_1007853C8, &type metadata accessor for LogKey);
  *(v15 + 1328) = v98;
  v99 = (v15 + 1384);
  *(v15 + 1376) = 23;
  v100 = *(v1 + v33[29]);
  if (v100 == 2)
  {
    v101 = 0;
    v102 = 0;
    v103 = 0;
    *v99 = 0;
    *(v15 + 1392) = 0;
    *(v15 + 1400) = 0;
  }

  else
  {
    v102 = sub_1004D9E20();
    v103 = sub_1004D9E74();
    *v99 = v100 & 1;
    v101 = &type metadata for ManagementOperation;
  }

  *(v15 + 1408) = v101;
  *(v15 + 1416) = v102;
  *(v15 + 1424) = v103;
  *(v15 + 1432) = 24;
  v104 = v177;
  sub_100005934(v1 + v33[30], v177, &unk_1007809F0);
  if (v173(v104, 1, v82) == 1)
  {

    v105 = v98;
    sub_1000032A8(v104, &unk_1007809F0);
    *(v15 + 1440) = 0u;
    *(v15 + 1456) = 0u;
    *(v15 + 1472) = 0u;
  }

  else
  {
    *(v15 + 1464) = v82;
    *(v15 + 1472) = sub_1004D9DD8(&qword_100781BB8, &type metadata accessor for URL);
    *(v15 + 1480) = sub_1004D9DD8(&qword_100782898, &type metadata accessor for URL);
    v106 = sub_10020A748((v15 + 1440));
    (*(v169 + 32))(v106, v104, v82);

    v107 = v98;
  }

  *(v15 + 1488) = 25;
  v108 = *(v1 + v33[31]);
  if (v108 == 2)
  {
    v109 = 0;
    v110 = 0;
    v111 = 0;
    *(v15 + 1496) = 0;
    *(v15 + 1504) = 0;
    *(v15 + 1512) = 0;
  }

  else
  {
    v110 = sub_1004D9D30();
    v111 = sub_1004D9D84();
    *(v15 + 1496) = v108 & 1;
    *(v15 + 1497) = BYTE1(v108) & 1;
    *(v15 + 1498) = BYTE2(v108) & 1;
    *(v15 + 1499) = HIBYTE(v108) & 1;
    v109 = &type metadata for NetworkPolicy.Decision;
  }

  *(v15 + 1520) = v109;
  *(v15 + 1528) = v110;
  *(v15 + 1536) = v111;
  *(v15 + 1544) = 26;
  v112 = (v1 + v33[32]);
  v113 = *v112;
  v114 = v112[1];
  *(v15 + 1576) = &type metadata for Persona;
  *(v15 + 1584) = sub_1004D94C8();
  *(v15 + 1592) = sub_1004D951C();
  v177 = v113;
  *(v15 + 1552) = v113;
  *(v15 + 1560) = v114;
  *(v15 + 1600) = 27;
  LOBYTE(v113) = *(v1 + v33[33]);
  *(v15 + 1632) = &type metadata for AppInstallPhase;
  *(v15 + 1640) = sub_1004D9570();
  *(v15 + 1648) = sub_1004D95C4();
  *(v15 + 1608) = v113;
  *(v15 + 1656) = 29;
  v115 = v33[34];
  v116 = type metadata accessor for Platform();
  *(v15 + 1688) = v116;
  *(v15 + 1696) = sub_1004D9DD8(&qword_1007853F0, &type metadata accessor for Platform);
  *(v15 + 1704) = sub_1004D9DD8(&qword_1007853F8, &type metadata accessor for Platform);
  v117 = sub_10020A748((v15 + 1664));
  (*(*(v116 - 8) + 16))(v117, v1 + v115, v116);
  *(v15 + 1712) = 31;
  LOBYTE(v115) = *(v1 + v33[35]);
  *(v15 + 1744) = &type metadata for AppInstallPriority;
  *(v15 + 1752) = sub_1004D9618();
  *(v15 + 1760) = sub_1004D966C();
  *(v15 + 1720) = v115;
  *(v15 + 1768) = 33;
  v118 = (v1 + v33[36]);
  v119 = *v118;
  v120 = v118[1];
  if (v120 >> 60 == 15)
  {
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v124 = 0;
    v125 = 0;
    *(v15 + 1792) = 0;
  }

  else
  {
    v124 = sub_1004D9C88();
    v123 = &type metadata for AppStoreReceipt;
    v125 = sub_1004D9CDC();
    v121 = v119;
    v122 = v120;
  }

  *(v15 + 1776) = v121;
  *(v15 + 1784) = v122;
  *(v15 + 1800) = v123;
  *(v15 + 1808) = v124;
  *(v15 + 1816) = v125;
  *(v15 + 1824) = 34;
  v126 = *(v1 + v33[37]);
  *(v15 + 1856) = &type metadata for AppInstallSource;
  *(v15 + 1864) = sub_1004D96C0();
  *(v15 + 1872) = sub_1004D9714();
  *(v15 + 1832) = v126;
  *(v15 + 1880) = 35;
  v127 = *(v1 + v33[38]);
  if (v127)
  {
    v128 = sub_1004D9BE0();
    v129 = &type metadata for StoreMetadata;
    v130 = sub_1004D9C34();
  }

  else
  {
    v129 = 0;
    v128 = 0;
    v130 = 0;
    *(v15 + 1896) = 0u;
  }

  *(v15 + 1888) = v127;
  *(v15 + 1912) = v129;
  *(v15 + 1920) = v128;
  *(v15 + 1928) = v130;
  sub_10026E620(v177, v114);
  sub_1001DFECC(v119, v120);
  v131 = v127;
  v177 = sub_100529078(v15);
  swift_setDeallocating();
  v178 = sub_1001F0C48(&qword_100786F10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A8420;
  *(inited + 32) = 36;
  v133 = (v1 + v33[39]);
  v134 = *v133;
  v135 = v133[1];
  if (v135 >> 60 == 15)
  {
    v136 = 0;
    v137 = 0;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    *(inited + 56) = 0;
  }

  else
  {
    v139 = sub_100329ED8();
    v138 = &type metadata for Data;
    v140 = sub_100329F2C();
    v136 = v134;
    v137 = v135;
  }

  *(inited + 40) = v136;
  *(inited + 48) = v137;
  *(inited + 64) = v138;
  *(inited + 72) = v139;
  *(inited + 80) = v140;
  *(inited + 88) = 37;
  v141 = (v1 + v33[40]);
  v142 = v141[1];
  v179 = v134;
  if (v142)
  {
    v143 = &protocol witness table for String;
    v144 = *v141;
    v145 = &protocol witness table for String;
    v146 = v142;
    v147 = &type metadata for String;
  }

  else
  {
    v144 = 0;
    v146 = 0;
    v147 = 0;
    v145 = 0;
    v143 = 0;
    *(inited + 112) = 0;
  }

  v176 = v135;
  *(inited + 96) = v144;
  *(inited + 104) = v146;
  *(inited + 120) = v147;
  *(inited + 128) = v145;
  *(inited + 136) = v143;
  *(inited + 144) = 38;
  v148 = v1 + v33[41];
  v149 = *v148;
  v150 = *(v148 + 8);
  v151 = *(v148 + 16);
  if (v151 == 255)
  {
    v155 = 0;
    v156 = 0;
    v154 = 0;
    v152 = 0;
    v153 = 0;
    *(inited + 168) = 0;
  }

  else
  {
    v152 = sub_1004D9B38();
    v153 = sub_1004D9B8C();
    *(inited + 168) = v151 & 1;
    v154 = &type metadata for AnyDistributor;
    v155 = v149;
    v156 = v150;
  }

  *(inited + 152) = v155;
  *(inited + 160) = v156;
  *(inited + 176) = v154;
  *(inited + 184) = v152;
  *(inited + 192) = v153;
  *(inited + 200) = 39;
  v157 = (v1 + v33[42]);
  v158 = v157[1];
  if (v158)
  {
    v159 = *v157;
    v160 = &protocol witness table for String;
    v161 = &protocol witness table for String;
    v162 = &type metadata for String;
  }

  else
  {
    v159 = 0;
    v162 = 0;
    v161 = 0;
    v160 = 0;
    *(inited + 224) = 0;
  }

  *(inited + 208) = v159;
  *(inited + 216) = v158;
  *(inited + 232) = v162;
  *(inited + 240) = v161;
  *(inited + 248) = v160;
  *(inited + 256) = 40;
  v163 = *(v1 + v33[43]);
  *(inited + 288) = &type metadata for Bool;
  *(inited + 296) = &protocol witness table for Bool;
  *(inited + 304) = &protocol witness table for Bool;
  *(inited + 264) = v163;
  sub_1001DFECC(v179, v176);

  sub_10032F7B0(v149, v150, v151);

  v164 = sub_100529078(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v165 = v177;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v180[0] = v165;
  sub_1004D97A8(v164, sub_1004D9768, 0, isUniquelyReferenced_nonNull_native, v180);

  return sub_1004E52C4(v180[0]);
}

uint64_t type metadata accessor for AppInstall()
{
  result = qword_100785500;
  if (!qword_100785500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1004D9420()
{
  result = qword_1007853B0;
  if (!qword_1007853B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007853B0);
  }

  return result;
}

unint64_t sub_1004D9474()
{
  result = qword_1007853B8;
  if (!qword_1007853B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007853B8);
  }

  return result;
}

unint64_t sub_1004D94C8()
{
  result = qword_1007853D0;
  if (!qword_1007853D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007853D0);
  }

  return result;
}

unint64_t sub_1004D951C()
{
  result = qword_1007853D8;
  if (!qword_1007853D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007853D8);
  }

  return result;
}

unint64_t sub_1004D9570()
{
  result = qword_1007853E0;
  if (!qword_1007853E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007853E0);
  }

  return result;
}

unint64_t sub_1004D95C4()
{
  result = qword_1007853E8;
  if (!qword_1007853E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007853E8);
  }

  return result;
}

unint64_t sub_1004D9618()
{
  result = qword_100785400;
  if (!qword_100785400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785400);
  }

  return result;
}

unint64_t sub_1004D966C()
{
  result = qword_100785408;
  if (!qword_100785408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785408);
  }

  return result;
}

unint64_t sub_1004D96C0()
{
  result = qword_100785410;
  if (!qword_100785410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785410);
  }

  return result;
}

unint64_t sub_1004D9714()
{
  result = qword_100785418;
  if (!qword_100785418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785418);
  }

  return result;
}

uint64_t sub_1004D9768@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100005934((a1 + 8), (a2 + 8), &qword_100785498);
  *a2 = v3;
  return result;
}

unint64_t sub_1004D97A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v6) = a4;
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v54 = a1;
  v55 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v56 = v8;
  v57 = 0;
  v58 = v11 & v9;
  v59 = a2;
  v60 = a3;

  sub_10051AF34(v50);
  if (*(&v52 + 1) == 1)
  {
    goto LABEL_16;
  }

  v12 = v50[0];
  v47 = v51;
  v48 = v52;
  v49 = v53;
  v13 = *a5;
  result = sub_1005226B0(v50[0]);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  LOBYTE(v20) = v15;
  if (*(v13 + 24) < v19)
  {
    sub_1005BB99C(v19, v6 & 1);
    result = sub_1005226B0(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((v6 & 1) == 0)
  {
    v24 = result;
    sub_1005C4FB0();
    result = v24;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 48 * result;
    sub_100005934(*(*a5 + 56) + 48 * result, v46, &qword_100785498);
    sub_1000032A8(&v47, &qword_100785498);
    sub_10020AD90(v46, *(v22 + 56) + v23, &qword_100785498);
LABEL_15:
    sub_10051AF34(v50);
    if (*(&v52 + 1) == 1)
    {
LABEL_16:
      sub_1001DFE18();
    }

    v12 = &qword_100785498;
    v6 = &unk_1006B5330;
    while (1)
    {
      v20 = v50[0];
      v47 = v51;
      v48 = v52;
      v49 = v53;
      v33 = *a5;
      result = sub_1005226B0(v50[0]);
      v35 = *(v33 + 16);
      v36 = (v34 & 1) == 0;
      v18 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v18)
      {
        goto LABEL_26;
      }

      v38 = v34;
      if (*(v33 + 24) < v37)
      {
        sub_1005BB99C(v37, 1);
        result = sub_1005226B0(v20);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_8;
        }
      }

      if (v38)
      {
        v31 = *a5;
        v32 = 48 * result;
        sub_100005934(*(*a5 + 56) + 48 * result, v46, &qword_100785498);
        sub_1000032A8(&v47, &qword_100785498);
        sub_10020AD90(v46, *(v31 + 56) + v32, &qword_100785498);
      }

      else
      {
        v40 = *a5;
        *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
        *(v40[6] + result) = v20;
        v41 = (v40[7] + 48 * result);
        v42 = v47;
        v43 = v49;
        v41[1] = v48;
        v41[2] = v43;
        *v41 = v42;
        v44 = v40[2];
        v18 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v18)
        {
          goto LABEL_27;
        }

        v40[2] = v45;
      }

      sub_10051AF34(v50);
      if (*(&v52 + 1) == 1)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_13:
  v25 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v25[6] + result) = v12;
  v26 = (v25[7] + 48 * result);
  v27 = v47;
  v28 = v49;
  v26[1] = v48;
  v26[2] = v28;
  *v26 = v27;
  v29 = v25[2];
  v18 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v18)
  {
    v25[2] = v30;
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1004D9B38()
{
  result = qword_100785420;
  if (!qword_100785420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785420);
  }

  return result;
}

unint64_t sub_1004D9B8C()
{
  result = qword_100785428;
  if (!qword_100785428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785428);
  }

  return result;
}

unint64_t sub_1004D9BE0()
{
  result = qword_100785430;
  if (!qword_100785430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785430);
  }

  return result;
}

unint64_t sub_1004D9C34()
{
  result = qword_100785438;
  if (!qword_100785438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785438);
  }

  return result;
}

unint64_t sub_1004D9C88()
{
  result = qword_100785440;
  if (!qword_100785440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785440);
  }

  return result;
}

unint64_t sub_1004D9CDC()
{
  result = qword_100785448;
  if (!qword_100785448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785448);
  }

  return result;
}

unint64_t sub_1004D9D30()
{
  result = qword_100785450;
  if (!qword_100785450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785450);
  }

  return result;
}

unint64_t sub_1004D9D84()
{
  result = qword_100785458;
  if (!qword_100785458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785458);
  }

  return result;
}

uint64_t sub_1004D9DD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004D9E20()
{
  result = qword_100785460;
  if (!qword_100785460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785460);
  }

  return result;
}

unint64_t sub_1004D9E74()
{
  result = qword_100785468;
  if (!qword_100785468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785468);
  }

  return result;
}

unint64_t sub_1004D9EC8()
{
  result = qword_100785470;
  if (!qword_100785470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785470);
  }

  return result;
}

unint64_t sub_1004D9F1C()
{
  result = qword_100785478;
  if (!qword_100785478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785478);
  }

  return result;
}

unint64_t sub_1004D9F70()
{
  result = qword_100785480;
  if (!qword_100785480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785480);
  }

  return result;
}

unint64_t sub_1004D9FC4()
{
  result = qword_100785488;
  if (!qword_100785488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785488);
  }

  return result;
}

unint64_t sub_1004DA018()
{
  result = qword_100785490;
  if (!qword_100785490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785490);
  }

  return result;
}

void sub_1004DA094()
{
  sub_10000585C(319, &qword_100782AF8);
  if (v0 <= 0x3F)
  {
    sub_10000585C(319, &qword_100785510);
    if (v1 <= 0x3F)
    {
      sub_10000585C(319, &qword_100785518);
      if (v2 <= 0x3F)
      {
        sub_10000585C(319, &qword_100782068);
        if (v3 <= 0x3F)
        {
          sub_1004DA4B0(319, &qword_100780B40, &type metadata accessor for URL);
          if (v4 <= 0x3F)
          {
            sub_10000585C(319, &qword_1007819E0);
            if (v5 <= 0x3F)
            {
              sub_1004DA4B0(319, &qword_100785520, &type metadata accessor for UUID);
              if (v6 <= 0x3F)
              {
                sub_1004DA4B0(319, &qword_100785528, sub_1004DA464);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for UUID();
                  if (v8 <= 0x3F)
                  {
                    sub_1004DA4B0(319, &qword_100780B48, &type metadata accessor for FilePath);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for AppInstallRequestType();
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for LogKey();
                        if (v11 <= 0x3F)
                        {
                          sub_10000585C(319, &qword_100785530);
                          if (v12 <= 0x3F)
                          {
                            sub_10000585C(319, &qword_100785538);
                            if (v13 <= 0x3F)
                            {
                              type metadata accessor for Platform();
                              if (v14 <= 0x3F)
                              {
                                sub_10000585C(319, &qword_100782A40);
                                if (v15 <= 0x3F)
                                {
                                  sub_10000585C(319, &qword_100780B50);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_10000585C(319, &qword_100785540);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_10000585C(319, &unk_100785548);
                                      if (v18 <= 0x3F)
                                      {
                                        swift_cvw_initStructMetadataWithLayoutString();
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1004DA464()
{
  result = qword_100780900;
  if (!qword_100780900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100780900);
  }

  return result;
}

void sub_1004DA4B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1004DA508()
{
  result = qword_100785610;
  if (!qword_100785610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785610);
  }

  return result;
}

void sub_1004DA55C(uint64_t a1, void *a2)
{
  v4 = sub_1005359B8(8, a2);
  v6 = v5;
  v7 = type metadata accessor for DDMDeclaration(0);
  if (!v6)
  {
    goto LABEL_7;
  }

  v8 = (a1 + *(v7 + 52));
  if (v4 == *v8 && v6 == v8[1])
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
LABEL_7:
      type metadata accessor for InternalError();
      sub_1004E2F40(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }
  }

  v11 = sub_1004DCC48();
  sub_1004DAA78(v11, a2);
  if (*(a1 + 32) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v13 = String._bridgeToObjectiveC()();
  [a2 setValue:isa forProperty:v13];

  swift_unknownObjectRelease();
}

uint64_t sub_1004DA6EC()
{
  v1 = sub_1001F0C48(&qword_10077F348);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = type metadata accessor for DDMPurchaseMethod();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DDMDeclaration(0);
  (*(v8 + 16))(v10, v0 + *(v11 + 100), v7);
  v12 = (*(v8 + 88))(v10, v7);
  if (v12 == enum case for DDMPurchaseMethod.volumePurchaseProgram(_:))
  {
    if ((*(v0 + 16) & 1) == 0)
    {
      return *(v0 + 8);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v12 == enum case for DDMPurchaseMethod.manifest(_:))
  {
    v13 = *(v0 + 48);

    return v13;
  }

  if (v12 == enum case for DDMPurchaseMethod.preInstalled(_:))
  {
    sub_100005934(v0 + *(v11 + 48), v6, &qword_10077F348);
    v15 = type metadata accessor for ComposedIdentifier();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v6, 1, v15) != 1)
    {
      v13 = ComposedIdentifier.bundleID.getter();
      (*(v16 + 8))(v6, v15);
      return v13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12 == enum case for DDMPurchaseMethod.other(_:))
  {
    sub_100005934(v0 + *(v11 + 48), v4, &qword_10077F348);
    v17 = type metadata accessor for ComposedIdentifier();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v4, 1, v17) != 1)
    {
      v13 = ComposedIdentifier.bundleID.getter();
      (*(v18 + 8))(v4, v17);
      return v13;
    }

    goto LABEL_15;
  }

LABEL_16:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1004DAA78(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 24));
  v3 = *(a1 + 16);

  os_unfair_lock_unlock((a1 + 24));
  v4 = *(v3 + 16);
  if (v4)
  {
    v44 = _swiftEmptyArrayStorage;
    sub_1005264E0(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v34 = v3 + 64;
    v6 = _HashTable.startBucket.getter();
    v7 = 0;
    v35 = *(v3 + 36);
    v31 = v3 + 72;
    v32 = v4;
    v33 = v3;
    do
    {
      if (v6 < 0 || v6 >= 1 << *(v3 + 32))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        return;
      }

      v9 = v6 >> 6;
      if ((*(v34 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_30;
      }

      if (v35 != *(v3 + 36))
      {
        goto LABEL_31;
      }

      v10 = (*(v3 + 48) + 16 * v6);
      v12 = *v10;
      v11 = v10[1];
      sub_100005934(*(v3 + 56) + 32 * v6, v40, &qword_100783A30);
      v38[0] = v12;
      v38[1] = v11;
      v39[0] = v40[0];
      v39[1] = v40[1];
      *&v36 = v12;
      *(&v36 + 1) = v11;
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      sub_100005934(v39, &v36, &qword_100783A30);
      if (v37)
      {
        sub_1001F6498(&v36, (v42 + 8));
      }

      else
      {
        v13 = [objc_allocWithZone(NSNull) init];
        v43 = sub_1004E3180();
        *(&v42[0] + 1) = v13;
        if (v37)
        {
          sub_1000032A8(&v36, &qword_100783A30);
        }
      }

      sub_1000032A8(v38, &qword_100785AC0);
      v44 = v5;
      v15 = v5[2];
      v14 = v5[3];
      v3 = v33;
      if (v15 >= v14 >> 1)
      {
        sub_1005264E0((v14 > 1), v15 + 1, 1);
        v5 = v44;
      }

      v5[2] = v15 + 1;
      v16 = &v5[9 * v15];
      *(v16 + 2) = v41[0];
      v17 = v41[1];
      v18 = v42[0];
      v19 = v42[1];
      v16[12] = v43;
      *(v16 + 4) = v18;
      *(v16 + 5) = v19;
      *(v16 + 3) = v17;
      v8 = 1 << *(v33 + 32);
      if (v6 >= v8)
      {
        goto LABEL_32;
      }

      v20 = *(v34 + 8 * v9);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_33;
      }

      if (v35 != *(v33 + 36))
      {
        goto LABEL_34;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v8 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v9 << 6;
        v23 = v9 + 1;
        v24 = (v31 + 8 * v9);
        while (v23 < (v8 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_100323C00(v6, v35, 0);
            v8 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        sub_100323C00(v6, v35, 0);
      }

LABEL_4:
      ++v7;
      v6 = v8;
    }

    while (v7 != v32);

    if (!v5[2])
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_27:
      v27 = &_swiftEmptyDictionarySingleton;
      goto LABEL_28;
    }
  }

  sub_1001F0C48(&qword_100786EA0);
  v27 = static _DictionaryStorage.allocate(capacity:)();
LABEL_28:
  *&v41[0] = v27;

  sub_100562D84(v28, 1, v41);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setValuesWithDictionary:isa];
}

void *sub_1004DAED8()
{
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069F6E0;
  *(inited + 56) = &type metadata for SQLiteTable;
  *(inited + 64) = &off_10076CDE8;
  v1 = swift_allocObject();
  *(inited + 32) = v1;
  v1[2] = sub_1004DB02C;
  v1[3] = 0;
  v1[4] = 0x6C6365645F6D6464;
  v1[5] = 0xEF6E6F6974617261;
  *(inited + 96) = &type metadata for SQLiteTable;
  *(inited + 104) = &off_10076CDE8;
  v2 = swift_allocObject();
  *(inited + 72) = v2;
  v2[2] = sub_1004DC184;
  v2[3] = 0;
  v2[4] = 0x72756F6A5F6D6464;
  v2[5] = 0xEB000000006C616ELL;
  v3 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077F5F0);
  swift_arrayDestroy();
  return v3;
}

void *sub_1004DB02C()
{
  strcpy(v168, "apple_item_id");
  v168[7] = -4864;
  v0 = 0xE400000000000000;
  v169 = 1112493122;
  v170 = 0xE400000000000000;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 1;
  v163[0] = 0x7475626972747461;
  v163[1] = 0xEA00000000007365;
  v163[2] = 1112493122;
  v163[3] = 0xE400000000000000;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 1;
  v158[0] = 0xD000000000000017;
  v158[1] = 0x80000001006C39D0;
  v1 = swift_dynamicCastMetatype();
  v2 = 0uLL;
  v3 = v1;
  v4 = 1415071060;
  v5 = 0xE400000000000000;
  if (!v1)
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v5 = 0xE700000000000000;
      v4 = 0x52454745544E49;
    }

    else
    {
      v4 = 1279346002;
      if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
      {
        v5 = 0xE400000000000000;
      }

      else
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v4 = 1145656661;
        }

        else
        {
          v4 = 1112493122;
        }

        v5 = 0xE400000000000000;
      }
    }

    v2 = 0uLL;
  }

  v158[2] = v4;
  v158[3] = v5;
  v159 = v2;
  v160 = v2;
  v161 = v2;
  v162 = 1;
  v152[0] = 0x615F70756B636162;
  v152[1] = 0xEF617461645F7070;
  v152[2] = 0x52454745544E49;
  v152[3] = 0xE700000000000000;
  v154 = &type metadata for Bool;
  v155 = &protocol witness table for Bool;
  v156 = &protocol witness table for Bool;
  v153 = 1;
  v157 = 1;
  v147[0] = 0x695F656C646E7562;
  v147[1] = 0xE900000000000064;
  v147[2] = 1415071060;
  v147[3] = 0xE400000000000000;
  v148 = v2;
  v149 = v2;
  v150 = v2;
  v151 = 1;
  v142[0] = 0x6D5F646568636163;
  v142[1] = 0xEF61746164617465;
  v142[2] = 1112493122;
  v142[3] = 0xE400000000000000;
  v143 = v2;
  v144 = v2;
  v145 = v2;
  v146 = 1;
  v6 = 1415071060;
  v137[0] = 0x72616C756C6C6563;
  v137[1] = 0xEF7963696C6F705FLL;
  if (!v3)
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v0 = 0xE700000000000000;
      v6 = 0x52454745544E49;
    }

    else
    {
      v6 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v6 = 1145656661;
        }

        else
        {
          v6 = 1112493122;
        }
      }
    }
  }

  v137[2] = v6;
  v137[3] = v0;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 1;
  v132[0] = 0xD000000000000013;
  v132[1] = 0x80000001006C3A20;
  v7 = 0xE400000000000000;
  v132[2] = 1112493122;
  v132[3] = 0xE400000000000000;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 1;
  strcpy(v125, "declaration_id");
  v125[15] = -18;
  v126 = 1415071060;
  v127 = 0xE400000000000000;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 1;
  v120[0] = 0x746172616C636564;
  v120[1] = 0xEF79656B5F6E6F69;
  v120[2] = 1415071060;
  v120[3] = 0xE400000000000000;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 1;
  strcpy(v113, "install_timing");
  v113[15] = -18;
  v8 = swift_dynamicCastMetatype();
  v9 = 0uLL;
  v10 = 1415071060;
  if (!v8)
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v7 = 0xE700000000000000;
      v10 = 0x52454745544E49;
    }

    else
    {
      v10 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v10 = 1145656661;
        }

        else
        {
          v10 = 1112493122;
        }
      }
    }

    v9 = 0uLL;
  }

  v114 = v10;
  v115 = v7;
  v116 = v9;
  v117 = v9;
  v118 = v9;
  v119 = 1;
  v108[0] = 0xD000000000000019;
  v108[1] = 0x80000001006C3A70;
  v108[2] = 0x52454745544E49;
  v108[3] = 0xE700000000000000;
  v109 = v9;
  v110 = v9;
  v111 = v9;
  v112 = 1;
  v102[0] = 0x62697369765F7369;
  v102[1] = 0xEA0000000000656CLL;
  v102[2] = 0x52454745544E49;
  v102[3] = 0xE700000000000000;
  v104 = &type metadata for Bool;
  v105 = &protocol witness table for Bool;
  v106 = &protocol witness table for Bool;
  v103 = 1;
  v107 = 1;
  v97[0] = 0x65736E6563696CLL;
  v97[1] = 0xE700000000000000;
  type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  if (swift_dynamicCastMetatype())
  {
    v11 = 0xE400000000000000;
    v12 = 1415071060;
  }

  else if (swift_dynamicCastMetatype())
  {
    v11 = 0xE700000000000000;
    v12 = 0x52454745544E49;
  }

  else if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    v11 = 0xE700000000000000;
    v12 = 0x52454745544E49;
  }

  else
  {
    v12 = 1279346002;
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      type metadata accessor for UUID();
      if (swift_dynamicCastMetatype())
      {
        v12 = 1145656661;
      }

      else
      {
        v12 = 1112493122;
      }

      v11 = 0xE400000000000000;
    }
  }

  v97[2] = v12;
  v97[3] = v11;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 1;
  v92[0] = 0xD000000000000010;
  v92[1] = 0x80000001006C3AA0;
  v13 = swift_dynamicCastMetatype();
  v14 = 0uLL;
  v15 = 0xE400000000000000;
  v16 = 1415071060;
  v17 = 0xE400000000000000;
  if (!v13)
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v17 = 0xE700000000000000;
      v16 = 0x52454745544E49;
    }

    else
    {
      v16 = 1279346002;
      if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v16 = 1145656661;
        }

        else
        {
          v16 = 1112493122;
        }

        v17 = 0xE400000000000000;
      }
    }

    v14 = 0uLL;
  }

  v92[2] = v16;
  v92[3] = v17;
  v93 = v14;
  v94 = v14;
  v95 = v14;
  v96 = 1;
  strcpy(v85, "manifest_url");
  HIBYTE(v85[6]) = 0;
  v85[7] = -5120;
  v86 = 1112493122;
  v87 = 0xE400000000000000;
  v88 = v14;
  v89 = v14;
  v90 = v14;
  v91 = 1;
  v80[0] = 1701667182;
  v80[1] = 0xE400000000000000;
  v80[2] = 1415071060;
  v80[3] = 0xE400000000000000;
  v81 = v14;
  v82 = v14;
  v83 = v14;
  v84 = 1;
  v75[0] = 0x616E6F73726570;
  v75[1] = 0xE700000000000000;
  v18 = 1415071060;
  if (!swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v15 = 0xE700000000000000;
      v18 = 0x52454745544E49;
    }

    else
    {
      v18 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v18 = 1145656661;
        }

        else
        {
          v18 = 1112493122;
        }
      }
    }
  }

  v75[2] = v18;
  v75[3] = v15;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 1;
  strcpy(v68, "pinned_version");
  v68[15] = -18;
  v69 = 1112493122;
  v70 = 0xE400000000000000;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 1;
  v63[0] = 0x6D726F6674616C70;
  v63[1] = 0xE800000000000000;
  v63[2] = 1112493122;
  v63[3] = 0xE400000000000000;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 1;
  v58[0] = 0x6573616863727570;
  v58[1] = 0xEF646F6874656D5FLL;
  type metadata accessor for DDMPurchaseMethod();
  v19 = swift_dynamicCastMetatype();
  v20 = 0uLL;
  v21 = 1415071060;
  v22 = 0xE400000000000000;
  if (!v19)
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v22 = 0xE700000000000000;
      v21 = 0x52454745544E49;
    }

    else
    {
      v21 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v21 = 1145656661;
        }

        else
        {
          v21 = 1112493122;
        }
      }

      v22 = 0xE400000000000000;
    }

    v20 = 0uLL;
  }

  v58[2] = v21;
  v58[3] = v22;
  v59 = v20;
  v60 = v20;
  v61 = v20;
  v62 = 1;
  v53[0] = 0x6E5F726F646E6576;
  v53[1] = 0xEB00000000656D61;
  v53[2] = 1415071060;
  v53[3] = 0xE400000000000000;
  v54 = v20;
  v55 = v20;
  v56 = v20;
  v57 = 1;
  strcpy(v52, "declaration_id");
  HIBYTE(v52[1]) = -18;
  v23._countAndFlagsBits = 2019846495;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  v24 = v52[0];
  v25 = v52[1];
  sub_1001F0C48(&unk_100786ED0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1006AE660;
  *(v26 + 56) = &type metadata for SQLiteColumn;
  *(v26 + 64) = &off_10076CDE0;
  v27 = swift_allocObject();
  *(v26 + 32) = v27;
  sub_1002783D8(v168, v27 + 16);
  *(v26 + 96) = &type metadata for SQLiteColumn;
  *(v26 + 104) = &off_10076CDE0;
  v28 = swift_allocObject();
  *(v26 + 72) = v28;
  sub_1002783D8(v163, v28 + 16);
  *(v26 + 136) = &type metadata for SQLiteColumn;
  *(v26 + 144) = &off_10076CDE0;
  v29 = swift_allocObject();
  *(v26 + 112) = v29;
  sub_1002783D8(v158, v29 + 16);
  *(v26 + 176) = &type metadata for SQLiteColumn;
  *(v26 + 184) = &off_10076CDE0;
  v30 = swift_allocObject();
  *(v26 + 152) = v30;
  sub_1002783D8(v152, v30 + 16);
  *(v26 + 216) = &type metadata for SQLiteColumn;
  *(v26 + 224) = &off_10076CDE0;
  v31 = swift_allocObject();
  *(v26 + 192) = v31;
  sub_1002783D8(v147, v31 + 16);
  *(v26 + 256) = &type metadata for SQLiteColumn;
  *(v26 + 264) = &off_10076CDE0;
  v32 = swift_allocObject();
  *(v26 + 232) = v32;
  sub_1002783D8(v142, v32 + 16);
  *(v26 + 296) = &type metadata for SQLiteColumn;
  *(v26 + 304) = &off_10076CDE0;
  v33 = swift_allocObject();
  *(v26 + 272) = v33;
  sub_1002783D8(v137, v33 + 16);
  *(v26 + 336) = &type metadata for SQLiteColumn;
  *(v26 + 344) = &off_10076CDE0;
  v34 = swift_allocObject();
  *(v26 + 312) = v34;
  sub_1002783D8(v132, v34 + 16);
  *(v26 + 376) = &type metadata for SQLiteColumn;
  *(v26 + 384) = &off_10076CDE0;
  v35 = swift_allocObject();
  *(v26 + 352) = v35;
  sub_1002783D8(v125, v35 + 16);
  *(v26 + 416) = &type metadata for SQLiteColumn;
  *(v26 + 424) = &off_10076CDE0;
  v36 = swift_allocObject();
  *(v26 + 392) = v36;
  sub_1002783D8(v120, v36 + 16);
  *(v26 + 456) = &type metadata for SQLiteColumn;
  *(v26 + 464) = &off_10076CDE0;
  v37 = swift_allocObject();
  *(v26 + 432) = v37;
  sub_1002783D8(v113, v37 + 16);
  *(v26 + 496) = &type metadata for SQLiteColumn;
  *(v26 + 504) = &off_10076CDE0;
  v38 = swift_allocObject();
  *(v26 + 472) = v38;
  sub_1002783D8(v108, v38 + 16);
  *(v26 + 536) = &type metadata for SQLiteColumn;
  *(v26 + 544) = &off_10076CDE0;
  v39 = swift_allocObject();
  *(v26 + 512) = v39;
  sub_1002783D8(v102, v39 + 16);
  *(v26 + 576) = &type metadata for SQLiteColumn;
  *(v26 + 584) = &off_10076CDE0;
  v40 = swift_allocObject();
  *(v26 + 552) = v40;
  sub_1002783D8(v97, v40 + 16);
  *(v26 + 616) = &type metadata for SQLiteColumn;
  *(v26 + 624) = &off_10076CDE0;
  v41 = swift_allocObject();
  *(v26 + 592) = v41;
  sub_1002783D8(v92, v41 + 16);
  *(v26 + 656) = &type metadata for SQLiteColumn;
  *(v26 + 664) = &off_10076CDE0;
  v42 = swift_allocObject();
  *(v26 + 632) = v42;
  sub_1002783D8(v85, v42 + 16);
  *(v26 + 696) = &type metadata for SQLiteColumn;
  *(v26 + 704) = &off_10076CDE0;
  v43 = swift_allocObject();
  *(v26 + 672) = v43;
  sub_1002783D8(v80, v43 + 16);
  *(v26 + 736) = &type metadata for SQLiteColumn;
  *(v26 + 744) = &off_10076CDE0;
  v44 = swift_allocObject();
  *(v26 + 712) = v44;
  sub_1002783D8(v75, v44 + 16);
  *(v26 + 776) = &type metadata for SQLiteColumn;
  *(v26 + 784) = &off_10076CDE0;
  v45 = swift_allocObject();
  *(v26 + 752) = v45;
  sub_1002783D8(v68, v45 + 16);
  *(v26 + 816) = &type metadata for SQLiteColumn;
  *(v26 + 824) = &off_10076CDE0;
  v46 = swift_allocObject();
  *(v26 + 792) = v46;
  sub_1002783D8(v63, v46 + 16);
  *(v26 + 856) = &type metadata for SQLiteColumn;
  *(v26 + 864) = &off_10076CDE0;
  v47 = swift_allocObject();
  *(v26 + 832) = v47;
  sub_1002783D8(v58, v47 + 16);
  *(v26 + 896) = &type metadata for SQLiteColumn;
  *(v26 + 904) = &off_10076CDE0;
  v48 = swift_allocObject();
  *(v26 + 872) = v48;
  sub_1002783D8(v53, v48 + 16);
  *(v26 + 936) = &type metadata for SQLiteIndex;
  *(v26 + 944) = &off_10076CDD8;
  v49 = swift_allocObject();
  *(v26 + 912) = v49;
  strcpy((v49 + 16), "declaration_id");
  *(v49 + 31) = -18;
  *(v49 + 32) = v24;
  *(v49 + 40) = v25;
  *(v49 + 48) = 1;
  v50 = sub_1005A83A0(v26);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077F5F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100278434(v53);
  sub_100278434(v58);
  sub_100278434(v63);
  sub_100278434(v68);
  sub_100278434(v75);
  sub_100278434(v80);
  sub_100278434(v85);
  sub_100278434(v92);
  sub_100278434(v97);
  sub_100278434(v108);
  sub_100278434(v113);
  sub_100278434(v120);
  sub_100278434(v125);
  sub_100278434(v132);
  sub_100278434(v137);
  sub_100278434(v142);
  sub_100278434(v147);
  sub_100278434(v158);
  sub_100278434(v163);
  sub_100278434(v168);
  sub_100278434(v102);
  sub_100278434(v152);
  return v50;
}

void *sub_1004DC184()
{
  strcpy(v47, "declaration_id");
  v47[15] = -18;
  v0 = 1415071060;
  v1 = 0xE400000000000000;
  v48 = 1415071060;
  v49 = 0xE400000000000000;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 1;
  v42[0] = 0x746172616C636564;
  v42[1] = 0xEF79656B5F6E6F69;
  v42[2] = 1415071060;
  v42[3] = 0xE400000000000000;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 1;
  v37[0] = 0x7972746E65;
  v37[1] = 0xE500000000000000;
  type metadata accessor for DDMJournalEntry();
  v2 = swift_dynamicCastMetatype();
  v3 = 0uLL;
  v4 = 1415071060;
  v5 = 0xE400000000000000;
  if (!v2)
  {
    v4 = 0x52454745544E49;
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v4 = 1279346002;
      if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
      {
        v5 = 0xE400000000000000;
      }

      else
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v4 = 1145656661;
        }

        else
        {
          v4 = 1112493122;
        }

        v5 = 0xE400000000000000;
      }
    }

    v3 = 0uLL;
  }

  v37[2] = v4;
  v37[3] = v5;
  v38 = v3;
  v39 = v3;
  v40 = v3;
  v41 = 1;
  v32[0] = 0x7065725F7473616CLL;
  v32[1] = 0xEB0000000079616CLL;
  v32[2] = 1112493122;
  v32[3] = 0xE400000000000000;
  v33 = v3;
  v34 = v3;
  v35 = v3;
  v36 = 1;
  strcpy(v25, "replay_count");
  HIBYTE(v25[6]) = 0;
  v25[7] = -5120;
  v26 = 1112493122;
  v27 = 0xE400000000000000;
  v28 = v3;
  v29 = v3;
  v30 = v3;
  v31 = 1;
  v20[0] = 1701869940;
  v20[1] = 0xE400000000000000;
  if (!swift_dynamicCastMetatype())
  {
    v0 = 0x52454745544E49;
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v1 = 0xE700000000000000;
    }

    else
    {
      v0 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v0 = 1145656661;
        }

        else
        {
          v0 = 1112493122;
        }
      }
    }
  }

  v20[2] = v0;
  v20[3] = v1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  strcpy(v19, "declaration_id");
  HIBYTE(v19[1]) = -18;
  v6._countAndFlagsBits = 2019846495;
  v6._object = 0xE400000000000000;
  String.append(_:)(v6);
  v7 = v19[0];
  v8 = v19[1];
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006AE670;
  *(inited + 56) = &type metadata for SQLiteColumn;
  *(inited + 64) = &off_10076CDE0;
  v10 = swift_allocObject();
  *(inited + 32) = v10;
  sub_1002783D8(v47, v10 + 16);
  *(inited + 96) = &type metadata for SQLiteColumn;
  *(inited + 104) = &off_10076CDE0;
  v11 = swift_allocObject();
  *(inited + 72) = v11;
  sub_1002783D8(v42, v11 + 16);
  *(inited + 136) = &type metadata for SQLiteColumn;
  *(inited + 144) = &off_10076CDE0;
  v12 = swift_allocObject();
  *(inited + 112) = v12;
  sub_1002783D8(v37, v12 + 16);
  *(inited + 176) = &type metadata for SQLiteColumn;
  *(inited + 184) = &off_10076CDE0;
  v13 = swift_allocObject();
  *(inited + 152) = v13;
  sub_1002783D8(v32, v13 + 16);
  *(inited + 216) = &type metadata for SQLiteColumn;
  *(inited + 224) = &off_10076CDE0;
  v14 = swift_allocObject();
  *(inited + 192) = v14;
  sub_1002783D8(v25, v14 + 16);
  *(inited + 256) = &type metadata for SQLiteColumn;
  *(inited + 264) = &off_10076CDE0;
  v15 = swift_allocObject();
  *(inited + 232) = v15;
  sub_1002783D8(v20, v15 + 16);
  *(inited + 296) = &type metadata for SQLiteIndex;
  *(inited + 304) = &off_10076CDD8;
  v16 = swift_allocObject();
  *(inited + 272) = v16;
  strcpy((v16 + 16), "declaration_id");
  *(v16 + 31) = -18;
  *(v16 + 32) = v7;
  *(v16 + 40) = v8;
  *(v16 + 48) = 1;
  v17 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077F5F0);
  swift_arrayDestroy();
  sub_100278434(v20);
  sub_100278434(v25);
  sub_100278434(v32);
  sub_100278434(v37);
  sub_100278434(v42);
  sub_100278434(v47);
  return v17;
}

unint64_t sub_1004DC6A8(char a1)
{
  result = 0x74695F656C707061;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0x615F70756B636162;
      break;
    case 4:
      result = 0x695F656C646E7562;
      break;
    case 5:
      result = 0x6D5F646568636163;
      break;
    case 6:
      result = 0x72616C756C6C6563;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
    case 9:
      result = 0x746172616C636564;
      break;
    case 10:
      result = 0x5F6C6C6174736E69;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0x62697369765F7369;
      break;
    case 13:
      result = 0x65736E6563696CLL;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x74736566696E616DLL;
      break;
    case 16:
      result = 1701667182;
      break;
    case 17:
      result = 0x616E6F73726570;
      break;
    case 18:
      result = 0x765F64656E6E6970;
      break;
    case 19:
      result = 0x6D726F6674616C70;
      break;
    case 20:
      result = 0x6573616863727570;
      break;
    case 21:
      result = 0x6E5F726F646E6576;
      break;
    default:
      return result;
  }

  return result;
}