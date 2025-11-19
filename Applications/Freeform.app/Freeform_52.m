uint64_t sub_10084BD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v14 == a3)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  a2 = 0;
  a3 = 0xE000000000000000;
LABEL_9:
  (*(v8 + 8))(a1, v7);
  (*(v8 + 32))(v13, v10, v7);
  v17 = &v13[*(v11 + 20)];
  *v17 = a2;
  *(v17 + 1) = a3;
  return sub_1000461D0(v13, v20, type metadata accessor for CRLBoardIdentifierStorage);
}

uint64_t sub_10084BF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  if ((a2 || a3 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v8 == v4)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  v37 = a1;
  v38 = a4;
  v39 = v4;
  v11 = objc_opt_self();
  v12 = [v11 _atomicIncrementAssertCount];
  v40 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v40);
  StaticString.description.getter();
  v13 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v14 lastPathComponent];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v19 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v12;
  v21 = sub_1005CF000();
  *(inited + 96) = v21;
  v22 = sub_1000325B8(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v22;
  *(inited + 72) = v13;
  *(inited + 136) = &type metadata for String;
  v23 = sub_1000053B0();
  *(inited + 112) = v16;
  *(inited + 120) = v18;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v23;
  *(inited + 152) = 32;
  v24 = v40;
  *(inited + 216) = v21;
  *(inited + 224) = v22;
  *(inited + 192) = v24;
  v25 = v13;
  v26 = v24;
  v27 = static os_log_type_t.error.getter();
  sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v28 = static os_log_type_t.error.getter();
  sub_100005404(v19, &_mh_execute_header, v28, "globallyScopedOwnerName must be globally scoped.", 48, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v29 = swift_allocObject();
  v29[2] = 8;
  v29[3] = 0;
  v29[4] = 0;
  v29[5] = 0;
  v30 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  [v11 handleFailureInFunction:v31 file:v32 lineNumber:32 isFatal:0 format:v33 args:v30];

  a4 = v38;
  v4 = v39;
  a1 = v37;
LABEL_14:
  v34 = type metadata accessor for UUID();
  (*(*(v34 - 8) + 32))(a4, a1, v34);
  result = type metadata accessor for CRLBoardIdentifierStorage(0);
  v36 = (a4 + *(result + 20));
  *v36 = a2;
  v36[1] = v4;
  return result;
}

uint64_t sub_10084C3F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A045A8);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_10084DCD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    sub_1000325B8(&qword_101A04558, type metadata accessor for CRLBoardIdentifierStorage);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    sub_1000461D0(v13, v11, type metadata accessor for CRLBoardIdentifierStorage);
    sub_1000461D0(v11, v12, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  }

  return sub_100005070(a1);
}

uint64_t sub_10084C668(uint64_t a1)
{
  v2 = sub_10084DCD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10084C6A4(uint64_t a1)
{
  v2 = sub_10084DCD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10084C73C(uint64_t a1)
{
  v2 = sub_1000459CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10084C778(uint64_t a1)
{
  v2 = sub_1000459CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10084C7F8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = sub_1005B981C(a4);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_100020E58(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  sub_1000325B8(&qword_101A04560, type metadata accessor for CRLBoardIdentifierStorage);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v9 + 8))(v11, v8);
}

Swift::Int sub_10084C978()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000325B8(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10084CA1C(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000325B8(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

void sub_10084CADC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_1000325B8(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
}

Swift::Int sub_10084CB84(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000325B8(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t sub_10084CC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && ((v6 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v11 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_10084CD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  v15[0] = a2;
  v15[1] = a3;
  sub_100017CD8();
  v9 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  v10 = *(v9 + 16);

  if (v10)
  {
    static String._fromSubstring(_:)();
  }

  UUID.init(uuidString:)();

  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {

    sub_10000CAAC(v8, &qword_1019F6990);
    sub_10084DC7C();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    return v9;
  }

  result = (*(v12 + 32))(a1, v8, v11);
  if (v10 <= 1)
  {

    return 0;
  }

  if (*(v9 + 16) >= 2uLL)
  {

    v9 = static String._fromSubstring(_:)();

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10084CFB4(void *a1)
{
  v3 = sub_1005B981C(&qword_101A045D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_100045E58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_1000325B8(&qword_1019F43C0, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for CRLBoardIdentifierStorage(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10084D170(uint64_t a1)
{
  v2 = sub_100045E58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10084D1AC(uint64_t a1)
{
  v2 = sub_100045E58();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10084D200()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000325B8(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10084D2A8()
{
  type metadata accessor for UUID();
  sub_1000325B8(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10084D344()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000325B8(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10084D3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10084D4B8(void *a1)
{
  a1[1] = sub_1000325B8(&qword_101A04558, type metadata accessor for CRLBoardIdentifierStorage);
  a1[2] = sub_1000325B8(&qword_101A04560, type metadata accessor for CRLBoardIdentifierStorage);
  result = sub_1000325B8(&qword_101A04568, type metadata accessor for CRLBoardIdentifierStorage);
  a1[3] = result;
  return result;
}

uint64_t sub_10084D5AC(void *a1)
{
  a1[1] = sub_1000325B8(&qword_1019F43A0, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  a1[2] = sub_1000325B8(&qword_1019F43B8, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  result = sub_1000325B8(&qword_101A04578, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  a1[3] = result;
  return result;
}

void *sub_10084D6A0(uint64_t a1, uint64_t a2)
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

  sub_1005B981C(&qword_101A045A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_10084D714(uint64_t a1, unint64_t a2)
{
  sub_100024E98(a1, a2);
  sub_10084D7BC(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_10084D780@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_10084D7BC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_10002640C(a1, a2);
      return &_swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_10084D6A0(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_10002640C(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10084D938(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_10084DAE4()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = UUID.crl_data()();
  v11 = v4;
  v12 = v5;
  if (String.count.getter() >= 1)
  {
    static String.Encoding.utf8.getter();
    v6 = String.data(using:allowLossyConversion:)();
    v8 = v7;
    (*(v1 + 8))(v3, v0);
    if (v8 >> 60 == 15)
    {
      sub_10084DC7C();
      swift_allocError();
      *v9 = 2;
      swift_willThrow();
      sub_10002640C(v11, v12);
    }

    else
    {
      Data.append(_:)();
      sub_100025870(v6, v8);
      return v11;
    }
  }

  return v4;
}

unint64_t sub_10084DC7C()
{
  result = qword_101A04588;
  if (!qword_101A04588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04588);
  }

  return result;
}

unint64_t sub_10084DCD0()
{
  result = qword_101A045B0;
  if (!qword_101A045B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A045B0);
  }

  return result;
}

uint64_t sub_10084DD24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F67C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10084DDB8()
{
  result = qword_101A045F0;
  if (!qword_101A045F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A045F0);
  }

  return result;
}

unint64_t sub_10084DE10()
{
  result = qword_101A045F8;
  if (!qword_101A045F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A045F8);
  }

  return result;
}

unint64_t sub_10084DE68()
{
  result = qword_101A04600;
  if (!qword_101A04600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04600);
  }

  return result;
}

unint64_t sub_10084DEC0()
{
  result = qword_101A04608;
  if (!qword_101A04608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04608);
  }

  return result;
}

unint64_t sub_10084DF18()
{
  result = qword_101A04630;
  if (!qword_101A04630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04630);
  }

  return result;
}

unint64_t sub_10084DF70()
{
  result = qword_101A04638;
  if (!qword_101A04638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04638);
  }

  return result;
}

id sub_10084E378()
{
  v1 = OBJC_IVAR____TtC8Freeform28CRLSEExtensionContextManager____lazy_storage___presentedItemOperationQueue;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLSEExtensionContextManager____lazy_storage___presentedItemOperationQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLSEExtensionContextManager____lazy_storage___presentedItemOperationQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(NSOperationQueue) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    [v4 setMaxConcurrentOperationCount:1];
    [v4 setQualityOfService:17];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_10084E58C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSEExtensionContextManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLSEExtensionContextManager()
{
  result = qword_101A046E0;
  if (!qword_101A046E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10084E684()
{
  sub_10084E720();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10084E720()
{
  if (!qword_101A046F0)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A046F0);
    }
  }
}

uint64_t sub_10084E778(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F33C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10084E81C()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static AttributedString.version = result;
  return result;
}

uint64_t *AttributedString.version.unsafeMutableAddressor()
{
  if (qword_1019F1698 != -1)
  {
    swift_once();
  }

  return &static AttributedString.version;
}

id static AttributedString.version.getter()
{
  if (qword_1019F1698 != -1)
  {
    swift_once();
  }

  v1 = static AttributedString.version;

  return v1;
}

uint64_t sub_10084E94C(void *a1)
{
  a1[2] = sub_10084E9D8(&qword_101A046F8);
  a1[3] = sub_10084E9D8(&qword_101A04700);
  result = sub_10084E9D8(&qword_101A04708);
  a1[4] = result;
  return result;
}

uint64_t sub_10084E9D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttributedString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10084EB28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSBoardItemQuickLookPreviewViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10084EC08(void *a1, uint64_t a2)
{
  sub_1005B981C(&unk_1019F6B30);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146C6B0;
  (*(v5 + 16))(v7 + v6, a2, v4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = String._bridgeToObjectiveC()();

  [a1 replaceCanvasElementInfo:0 withFilesAtURLs:isa allowedTypes:0 actionString:v14 completion:0];
}

uint64_t sub_10084F0BC(const char *a1, uint64_t a2)
{
  sub_100601584(a2, v20);
  v4 = v21;
  if (v21)
  {
    v5 = sub_100020E58(v20, v21);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100005070(v20);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for CRLiOSBoardItemQuickLookPreviewViewController();
  v19.receiver = v2;
  v19.super_class = v11;
  v12 = objc_msgSendSuper2(&v19, "canPerformAction:withSender:", a1, v10);
  swift_unknownObjectRelease();
  v13 = NSStringFromSelector(a1);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == 0x6572507478656E5FLL && v16 == 0xEC00000077656976 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v14 == 0xD000000000000010 && 0x800000010156EC60 == v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v12 = 0;
  }

  if (v14 == 0x6953656C67676F74 && v16 == 0xEE003A7261626564)
  {

    return 1;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    return 1;
  }

  return v12;
}

void sub_10084F498()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v59 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v49 - v12;
  __chkstk_darwin(v14);
  v18 = v49 - v17;
  if (*(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_shouldSaveMarkedUpItem) != 1)
  {
    return;
  }

  v56 = v15;
  v57 = v16;
  v54 = v2;
  v55 = v1;
  v19 = OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_previewItem;
  v20 = *(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_previewItem);
  if (v20 && (type metadata accessor for CRLFileRepPlaceHolder(), (v21 = swift_dynamicCastClass()) != 0))
  {
    v58 = *(v21 + OBJC_IVAR____TtC8Freeform21CRLFileRepPlaceHolder_fileRep);
    swift_unknownObjectRetain();
    v22 = [v58 interactiveCanvasController];
    if (v22)
    {
      v52 = v22;
      v53 = v20;
      v23 = [v22 editorController];
      if (v23)
      {
        v24 = v23;
        v51 = v5;
        v25 = [v23 mostSpecificCurrentEditorOfClass:0];

        v26 = v25;
        if (v25)
        {
          aBlock[6] = &OBJC_PROTOCOL___CRLMediaReplacing;
          v27 = swift_dynamicCastObjCProtocolConditional();
          if (v27)
          {
            v28 = v27;
            v29 = *(v0 + v19);
            if (v29)
            {
              v30 = [v29 previewItemURL];
              if (v30)
              {
                v49[1] = v26;
                v31 = v30;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                v32 = v57;
                v49[0] = *(v57 + 32);
                v33 = v13;
                v34 = v56;
                (v49[0])(v18, v33, v56);
                sub_100618868();
                v50 = static OS_dispatch_queue.main.getter();
                (*(v32 + 16))(v10, v18, v34);
                v35 = (*(v32 + 80) + 24) & ~*(v32 + 80);
                v36 = swift_allocObject();
                *(v36 + 16) = v28;
                (v49[0])(v36 + v35, v10, v34);
                aBlock[4] = sub_1008501CC;
                aBlock[5] = v36;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = *"";
                aBlock[2] = sub_100007638;
                aBlock[3] = &unk_101889360;
                v37 = _Block_copy(aBlock);
                swift_unknownObjectRetain();

                static DispatchQoS.unspecified.getter();
                aBlock[0] = _swiftEmptyArrayStorage;
                sub_1005D91D8();
                sub_1005B981C(&unk_1019FF400);
                sub_10000D494();
                v38 = v55;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                v39 = v50;
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v37);
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                (*(v54 + 8))(v4, v38);
                (*(v59 + 8))(v7, v51);
                (*(v57 + 8))(v18, v34);
              }

              else
              {
                if (qword_1019F20A8 != -1)
                {
                  swift_once();
                }

                v47 = static OS_os_log.crlError;
                v48 = static os_log_type_t.default.getter();
                sub_100005404(v47, &_mh_execute_header, v48, "Cannot get previewItemURL", 25, 2, _swiftEmptyArrayStorage);
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
              }
            }

            else
            {
              __break(1u);
            }

            return;
          }
        }

        swift_unknownObjectRelease();
      }

      if (qword_1019F20A8 != -1)
      {
        swift_once();
      }

      v45 = static OS_os_log.crlError;
      v46 = static os_log_type_t.default.getter();
      sub_100005404(v45, &_mh_execute_header, v46, "Cannot get Media Replacing Editor", 33, 2, _swiftEmptyArrayStorage);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1019F20A8 != -1)
      {
        swift_once();
      }

      v42 = static OS_os_log.crlError;
      v43 = static os_log_type_t.default.getter();
      sub_100005404(v42, &_mh_execute_header, v43, "Cannot get ICC in QLPreview", 27, 2, _swiftEmptyArrayStorage);
      swift_unknownObjectRelease();
      v44 = v58;
    }
  }

  else
  {
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v40 = static OS_os_log.crlError;
    v41 = static os_log_type_t.default.getter();

    sub_100005404(v40, &_mh_execute_header, v41, "Cannot get fileRep in QLPreview", 31, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_10084FC24()
{
  v1 = OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_previewOriginView;
  [*(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_previewOriginView) removeFromSuperview];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_onDismiss);

  v3(v4);
}

uint64_t sub_10084FC98(void *a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLFileRepPlaceHolder();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlError;
    v23 = static os_log_type_t.default.getter();
    sub_100005404(v22, &_mh_execute_header, v23, "Cannot get fileRep in QLPreview", 31, 2, _swiftEmptyArrayStorage);
    return 0;
  }

  v11 = *(v10 + OBJC_IVAR____TtC8Freeform21CRLFileRepPlaceHolder_fileRep);
  swift_unknownObjectRetain();
  v12 = [v11 interactiveCanvasController];
  if (!v12)
  {

    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlError;
    v25 = static os_log_type_t.default.getter();
    sub_100005404(v24, &_mh_execute_header, v25, "Cannot get ICC in QLPreview", 27, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();

    return 0;
  }

  v13 = v12;
  v14 = [v12 editingCoordinator];
  if (!v14)
  {

    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v26 = static OS_os_log.crlError;
    v27 = static os_log_type_t.default.getter();
    sub_100005404(v26, &_mh_execute_header, v27, "Cannot get the main board in QLPreview", 38, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();

    return 0;
  }

  v40 = v7;
  v15 = v14;
  v16 = *&v14[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard];

  LOBYTE(v15) = [v11 isLocked];
  if (v15)
  {
    goto LABEL_25;
  }

  v38 = v3;
  v39 = v16;
  v17 = *(*&v16[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] + 16);
  if (!v17 || ((, v18 = v17, (v19 = [v18 currentUserParticipant]) == 0) ? (v21 = objc_msgSend(v18, "publicPermission")) : (v20 = v19, v37 = objc_msgSend(v19, "permission"), v20, v21 = v37), v18, , v21 != 2))
  {
    v28 = [a1 previewItemURL];
    if (v28)
    {
      v29 = v28;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v30);
      v32 = v31;
      (*(v40 + 8))(v9, v6);
    }

    else
    {
      v32 = 0;
    }

    v16 = v39;
    v33 = [objc_allocWithZone(NSItemProvider) initWithContentsOfURL:v32];

    if (v33)
    {
      static UTType.pdf.getter();
      UTType.identifier.getter();
      (*(v38 + 8))(v5, v2);
      v34 = String._bridgeToObjectiveC()();

      v35 = [v33 hasRepresentationConformingToTypeIdentifier:v34 fileOptions:0];

      swift_unknownObjectRelease();
      return v35;
    }

LABEL_25:
    swift_unknownObjectRelease();

    return 0;
  }

  swift_unknownObjectRelease();

  return 0;
}

void sub_1008501CC()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10084EC08(v2, v3);
}

unint64_t sub_100850234()
{
  result = qword_101A049A0;
  if (!qword_101A049A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A049A0);
  }

  return result;
}

unint64_t sub_10085028C()
{
  result = qword_101A049A8;
  if (!qword_101A049A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A049A8);
  }

  return result;
}

uint64_t sub_100850330@<X0>(uint64_t *a1@<X8>)
{
  v57 = a1;
  v56 = type metadata accessor for InputConnectionBehavior();
  v59 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v2 - 8);
  v48 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v37 - v5;
  v6 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v6 - 8);
  v47 = &v37 - v7;
  v8 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v8 - 8);
  v51 = &v37 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v53 = type metadata accessor for LocalizedStringResource();
  v58 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v50 = &v37 - v18;
  v46 = sub_1005B981C(&qword_1019F6278);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v11 + 104);
  v20(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v49 = v19;
  v37 = v10;
  v20(v13, v19, v10);
  v39 = v11 + 104;
  v38 = v20;
  v21 = v51;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v22 = *(v58 + 56);
  v58 += 56;
  v45 = v22;
  v22(v21, 0, 1, v53);
  v23 = type metadata accessor for CRLBoardEntity();
  (*(*(v23 - 8) + 56))(v47, 1, 1, v23);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20(v13, v19, v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = v54;
  IntentDialog.init(_:)();
  v25 = type metadata accessor for IntentDialog();
  v43 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v44 = v26 + 56;
  v42 = v27;
  v27(v24, 0, 1, v25);
  v27(v48, 1, 1, v25);
  v40 = enum case for InputConnectionBehavior.default(_:);
  v28 = *(v59 + 104);
  v59 += 104;
  v41 = v28;
  v28(v55);
  sub_100852AB0(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  v29 = v51;
  *v57 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v48 = sub_1005B981C(&qword_1019F8AF8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = v49;
  v31 = v37;
  v32 = v38;
  v38(v13, v49, v37);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v13, v30, v31);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v45(v29, 0, 1, v53);
  v62 = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v13, v49, v31);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v33 = v54;
  IntentDialog.init(_:)();
  v42(v33, 0, 1, v43);
  v41(v55, v40, v56);
  v34 = IntentParameter<>.init(title:description:default:supportedTypeIdentifiers:requestValueDialog:inputConnectionBehavior:)();
  v35 = v57;
  v57[1] = v34;
  sub_1005B981C(&qword_1019F6280);
  v60 = 0xD00000000000001FLL;
  v61 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v35[2] = AppDependency.__allocating_init(key:manager:)();
  v35[6] = &type metadata for CRLInsertFilesToBoardIntentPerformer;
  v35[7] = &off_101887238;
  result = swift_allocObject();
  v35[3] = result;
  *(result + 40) = &type metadata for CRLAppIntentsBoardItemsImporter;
  *(result + 48) = &off_101891740;
  return result;
}

uint64_t sub_100850D28(uint64_t a1)
{
  v2[79] = v1;
  v2[78] = a1;
  v2[80] = type metadata accessor for CRLBoardEntity();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6260);
  v2[86] = swift_task_alloc();
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[87] = v3;
  v2[88] = *(v3 - 8);
  v2[89] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[90] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[91] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v2[92] = swift_task_alloc();
  v4 = type metadata accessor for IntentDialog();
  v2[93] = v4;
  v2[94] = *(v4 - 8);
  v2[95] = swift_task_alloc();
  sub_1005B981C(&unk_1019F8DB0);
  v2[96] = swift_task_alloc();
  v5 = type metadata accessor for IntentFile();
  v2[97] = v5;
  v2[98] = *(v5 - 8);
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();

  return _swift_task_switch(sub_100851004, 0, 0);
}

uint64_t sub_100851004()
{
  v102 = v0;
  IntentParameter.wrappedValue.getter();
  v3 = v0[74];
  v98 = *(v3 + 2);
  if (v98)
  {
    v4 = 0;
    v5 = v0[98];
    v96 = (v5 + 16);
    v88 = (v5 + 32);
    v6 = _swiftEmptyArrayStorage;
    v97 = v5;
    v95 = (v5 + 8);
    v7 = _swiftEmptyArrayStorage;
    v94 = v0[74];
    while (v4 < *(v3 + 2))
    {
      v8 = v0[96];
      v9 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v2 = *(v97 + 72);
      (*(v97 + 16))(v0[100], &v3[v9 + v2 * v4], v0[97]);
      IntentFile.type.getter();
      v10 = type metadata accessor for UTType();
      v1 = *(v10 - 8);
      v100 = v10;
      if ((*(v1 + 48))(v8, 1) == 1)
      {
        sub_10000CAAC(v0[96], &unk_1019F8DB0);
      }

      else
      {
        v93 = v9;
        sub_1005B981C(&qword_101A054A0);
        *(swift_allocObject() + 16) = xmmword_10146BDE0;
        static UTType.image.getter();
        static UTType.movie.getter();
        UTType.identifier.getter();
        v11 = String._bridgeToObjectiveC()();

        v12 = [objc_opt_self() typeWithIdentifier:v11];

        if (v12)
        {
          v13 = v0[96];
          isa = Array._bridgeToObjectiveC()().super.isa;

          v15 = [v12 crl_conformsToAnyUTType:isa];

          v16 = *(v1 + 8);
          v1 += 8;
          v16(v13, v100);
          v3 = v94;
          if (v15)
          {
            v17 = *v88;
            (*v88)(v0[99], v0[100], v0[97]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1007769E4(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v1 = v9;
            v19 = _swiftEmptyArrayStorage[2];
            v18 = _swiftEmptyArrayStorage[3];
            if (v19 >= v18 >> 1)
            {
              sub_1007769E4(v18 > 1, v19 + 1, 1);
            }

            v20 = v0[99];
            v21 = v0[97];
            _swiftEmptyArrayStorage[2] = v19 + 1;
            v17(_swiftEmptyArrayStorage + v9 + v19 * v2, v20, v21);
            v3 = v94;
            goto LABEL_5;
          }
        }

        else
        {
          v93 = _swiftEmptyArrayStorage;
          v92 = objc_opt_self();
          v22 = [v92 _atomicIncrementAssertCount];
          v101[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, v101);
          StaticString.description.getter();
          v90 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v23 = String._bridgeToObjectiveC()();

          v24 = [v23 lastPathComponent];

          v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v91 = v0[96];
          v27 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v22;
          v29 = sub_1005CF000();
          *(inited + 96) = v29;
          v30 = sub_100852AB0(&qword_1019F52E0, sub_1005CF000);
          *(inited + 104) = v30;
          *(inited + 72) = v90;
          *(inited + 136) = &type metadata for String;
          v31 = sub_1000053B0();
          *(inited + 112) = v89;
          *(inited + 120) = v26;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 144) = v31;
          *(inited + 152) = 14;
          v32 = v101[0];
          *(inited + 216) = v29;
          *(inited + 224) = v30;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 192) = v32;
          v33 = v90;
          v34 = v32;
          v35 = static os_log_type_t.error.getter();
          sub_100005404(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v36 = static os_log_type_t.error.getter();
          sub_100005404(v27, &_mh_execute_header, v36, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v37 = swift_allocObject();
          v37[2] = 8;
          v37[3] = 0;
          v37[4] = 0;
          v37[5] = 0;
          v38 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v39 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v40 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v2 = String._bridgeToObjectiveC()();

          [v92 handleFailureInFunction:v39 file:v40 lineNumber:14 isFatal:0 format:v2 args:v38];

          v41 = *(v1 + 8);
          v1 += 8;
          v41(v91, v100);
          v3 = v94;
        }
      }

      (*v95)(v0[100], v0[97]);
LABEL_5:
      ++v4;
      v6 = _swiftEmptyArrayStorage;
      if (v98 == v4)
      {
        goto LABEL_19;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_25:
    v54 = static OS_os_log.crlAssert;
    v55 = swift_initStackObject();
    *(v55 + 16) = xmmword_10146CA70;
    *(v55 + 56) = &type metadata for Int32;
    *(v55 + 64) = &protocol witness table for Int32;
    *(v55 + 72) = v2;
    *(v55 + 32) = v97;
    *(v55 + 96) = v1;
    *(v55 + 104) = v4;
    *(v55 + 136) = &type metadata for String;
    v56 = sub_1000053B0();
    *(v55 + 112) = v3;
    *(v55 + 120) = v6;
    *(v55 + 176) = &type metadata for UInt;
    *(v55 + 144) = v56;
    *(v55 + 152) = 74;
    v57 = v101[0];
    *(v55 + 216) = v1;
    *(v55 + 224) = v4;
    *(v55 + 184) = &protocol witness table for UInt;
    *(v55 + 192) = v57;
    v58 = v2;
    v59 = v57;
    v60 = static os_log_type_t.error.getter();
    sub_100005404(v54, &_mh_execute_header, v60, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v55);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v61 = static os_log_type_t.error.getter();
    sub_100005404(v54, &_mh_execute_header, v61, "expected equality between two values of type %{public}@", 55, 2, v0);

    type metadata accessor for __VaListBuilder();
    v1 = swift_allocObject();
    *(v1 + 16) = 8;
    *(v1 + 24) = 0;
    v4 = v1 + 24;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    LODWORD(v97) = v0;
    v62 = v0[2];
    v0 = v100;
    if (v62)
    {
      v2 = 0;
      while (1)
      {
        v63 = &v100[5 * v2];
        v3 = v63[3];
        sub_100020E58(v63, v3);
        v64 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v6 = *v4;
        v65 = *(v64 + 16);
        v66 = __OFADD__(*v4, v65);
        v67 = *v4 + v65;
        if (v66)
        {
          goto LABEL_56;
        }

        v68 = *(v1 + 32);
        if (v68 >= v67)
        {
          goto LABEL_42;
        }

        if (v68 + 0x4000000000000000 < 0)
        {
          goto LABEL_57;
        }

        v3 = *(v1 + 40);
        if (2 * v68 > v67)
        {
          v67 = 2 * v68;
        }

        *(v1 + 32) = v67;
        if ((v67 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_58;
        }

        v69 = v64;
        v70 = swift_slowAlloc();
        v71 = v70;
        *(v1 + 40) = v70;
        if (v3)
        {
          break;
        }

        v64 = v69;
        if (!v71)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

LABEL_43:
        v73 = *(v64 + 16);
        if (v73)
        {
          v74 = (v64 + 32);
          v75 = *v4;
          while (1)
          {
            v76 = *v74++;
            *&v71[8 * v75] = v76;
            v75 = *v4 + 1;
            if (__OFADD__(*v4, 1))
            {
              break;
            }

            *v4 = v75;
            if (!--v73)
            {
              goto LABEL_27;
            }
          }

          __break(1u);
          goto LABEL_55;
        }

LABEL_27:

        v2 = v2 + 1;
        if (v2 == v62)
        {
          goto LABEL_50;
        }
      }

      if (v70 != v3 || v70 >= &v3[8 * v6])
      {
        memmove(v70, v3, 8 * v6);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v64 = v69;
LABEL_42:
      v71 = *(v1 + 40);
      if (!v71)
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    }

LABEL_50:
    v77 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v78 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v79 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v80 = String._bridgeToObjectiveC()();

    [v96 handleFailureInFunction:v78 file:v79 lineNumber:74 isFatal:0 format:v80 args:v77];

    v0 = v98;
    v7 = v93;
    if (!v93[2])
    {
      goto LABEL_51;
    }

LABEL_21:
    v47 = v0[79];
    sub_100020E58(v47 + 3, v47[6]);
    v0[102] = *v47;
    IntentParameter.wrappedValue.getter();
    AppDependency.wrappedValue.getter();
    v0[72] = &type metadata for CRLBoardLibraryProvidingDependency;
    v0[73] = &off_1018AD9D0;
    v48 = swift_task_alloc();
    v0[103] = v48;
    *v48 = v0;
    v48[1] = sub_100852040;
    v49 = v0[85];

    return sub_1007D0658(v7, v49, (v0 + 69));
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_19:
  v0[101] = _swiftEmptyArrayStorage;

  IntentParameter.wrappedValue.getter();
  v42 = *(v0[75] + 16);

  v43 = _swiftEmptyArrayStorage[2];
  sub_1005B981C(&qword_1019F54E0);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_10146C6B0;
  v0[76] = &type metadata for Int;
  sub_1005B981C(&qword_1019FB560);
  String.init<A>(describing:)();
  v45 = String._bridgeToObjectiveC()();

  v1 = sub_1005CF000();
  *(v44 + 56) = v1;
  v46 = sub_100852AB0(&qword_1019F52E0, sub_1005CF000);
  *(v44 + 32) = v45;
  v100 = (v44 + 32);
  *(v44 + 64) = v46;
  if (v42 != v43)
  {
    v4 = v46;
    v93 = _swiftEmptyArrayStorage;
    v98 = v0;
    v96 = objc_opt_self();
    LODWORD(v97) = [v96 _atomicIncrementAssertCount];
    v101[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v44, v101);
    StaticString.description.getter();
    v2 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v0 = v44;
    v51 = String._bridgeToObjectiveC()();

    v52 = [v51 lastPathComponent];

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v53;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_59;
    }

    goto LABEL_25;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    goto LABEL_21;
  }

LABEL_51:
  v81 = v0[95];
  v82 = v0[94];
  v99 = v0[93];
  v83 = v0[89];
  v84 = v0[88];
  v85 = v0[87];
  v86 = v0[86];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v84 + 104))(v83, enum case for LocalizedStringResource.BundleDescription.main(_:), v85);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  IntentDialog.init(_:)();
  IntentParameter.projectedValue.getter();
  (*(v82 + 16))(v86, v81, v99);
  (*(v82 + 56))(v86, 0, 1, v99);
  type metadata accessor for AppIntentError();
  sub_100852AB0(&qword_1019F8B08, &type metadata accessor for AppIntentError);
  swift_allocError();
  IntentParameter.needsValueError(_:)();

  sub_10000CAAC(v86, &qword_1019F6260);
  swift_willThrow();
  (*(v82 + 8))(v81, v99);

  v87 = v0[1];

  return v87();
}

uint64_t sub_100852040()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  if (v0)
  {
    sub_100689004(*(v2 + 680));

    v3 = sub_10085239C;
  }

  else
  {
    v4 = *(v2 + 680);

    sub_100689004(v4);
    sub_100005070(v2 + 552);
    v3 = sub_10085219C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10085219C()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v5 = sub_100B0768C();
  sub_1006B05D0(v2, v3);
  sub_1006B05D0(v3, v4);
  IntentParameter.wrappedValue.setter();
  sub_100689004(v3);
  sub_100689004(v2);
  v0[77] = v5;
  sub_100852AB0(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100689004(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10085239C()
{
  sub_100005070(v0 + 552);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008524D4()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_10061655C(v6, qword_101AD6760);
  sub_1005EB3DC(v6, qword_101AD6760);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1008526CC()
{
  v0 = sub_1005B981C(&qword_101A049C8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1005B981C(&qword_101A049D0);
  __chkstk_darwin(v1);
  sub_100852A5C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 543450177;
  v2._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A049D8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A049E0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1008528C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F16A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1005EB3DC(v2, qword_101AD6760);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100852974(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_100850D28(a1);
}

uint64_t sub_100852A10(uint64_t a1)
{
  v2 = sub_100852A5C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100852A5C()
{
  result = qword_101A049C0;
  if (!qword_101A049C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A049C0);
  }

  return result;
}

uint64_t sub_100852AB0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100852B64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSApplication();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id TSContentLanguage.Constants.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TSContentLanguage.Constants();
  return objc_msgSendSuper2(&v2, "init");
}

id TSContentLanguage.Constants.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TSContentLanguage.Constants();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t static TSContentLanguage.replacesInvalidValuesWithDefaultValuesUserInfoKey.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  CodingUserInfoKey.init(rawValue:)();
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t static TSContentLanguage.Validation.collectionCountIsInRange(_:collection:)(void *a1, void *a2)
{
  sub_100020E58(a1, a1[3]);
  sub_100020E58(a2, a2[3]);
  dispatch thunk of Collection.count.getter();
  result = dispatch thunk of RangeExpression.contains(_:)();
  if ((result & 1) == 0)
  {
    sub_100852F1C();
    swift_allocError();
    v6 = v5;
    sub_10000630C(a1, v5);
    sub_10000630C(a2, v6 + 40);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_100852F1C()
{
  result = qword_101A04A18;
  if (!qword_101A04A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04A18);
  }

  return result;
}

uint64_t static TSContentLanguage.Validation.numberIsInRange<A, B>(_:number:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  __chkstk_darwin(a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of RangeExpression.contains(_:)();
  if ((result & 1) == 0)
  {
    v18 = a4;
    v19 = a5;
    v14 = sub_10002C58C(&v17);
    (*(*(a4 - 8) + 16))(v14, a1, a4);
    (*(v10 + 16))(v12, a2, a3);
    type metadata accessor for TSContentLanguage.Validation.Error.NumberOutOfRange();
    swift_getWitnessTable();
    swift_allocError();
    sub_100853100(&v17, v12, a3, v15);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100853100@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100050F74(a1, a4);
  v7 = type metadata accessor for TSContentLanguage.Validation.Error.NumberOutOfRange();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 28);

  return v8(v9, a2, a3);
}

uint64_t sub_100853218()
{
  swift_getExtendedExistentialTypeMetadata();
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1008532B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 40) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100853438(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 40] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

uint64_t sub_100853694(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1008536AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100853708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_10085375C(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1008537A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = a1;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_10064191C(0, 0, v10, &unk_1014A0130, v14);
}

uint64_t sub_1008539A4(uint64_t a1)
{
  v2 = v1;
  v4 = _s15AppExRepBackendC12BackendStateOMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState);
  sub_100866D48(a1, v6, _s15AppExRepBackendC12BackendStateOMa);
  v8 = *(*v7 + 136);

  v8(v6);

  v9 = v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v12 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_uuid;
    sub_100854018(v14);
    (*(v10 + 8))(v2 + v12, v14, ObjectType, v10);
    swift_unknownObjectRelease();
    sub_100863E38(v14);
  }

  return sub_100866DB0(a1, _s15AppExRepBackendC12BackendStateOMa);
}

uint64_t sub_100853B24(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  _s15AppExRepBackendC12BackendStateOMa(0);
  v2[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v4;
  v2[14] = v3;

  return _swift_task_switch(sub_100853BE8, v4, v3);
}

uint64_t sub_100853BE8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState);
  sub_100866D48(v0[9], v1, _s15AppExRepBackendC12BackendStateOMa);
  v4 = *(*v3 + 136);

  v4(v1);

  v5 = v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v7 = v0[10];
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v10 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_uuid;
    sub_100854018(v0 + 2);
    v14 = (*(v8 + 16) + **(v8 + 16));
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = sub_100853E08;

    return v14(v7 + v10, v0 + 2, ObjectType, v8);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100853E08()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_100853F98;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_100863E38(v2 + 16);
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_100853F2C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100853F2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100853F98()
{

  sub_100863E38(v0 + 16);
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_100854018(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = _s15AppExRepBackendC12BackendStateOMa(0);
  __chkstk_darwin(v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(**(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState) + 128);

  v7(v8);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v24 = *v6;
      v30 = v6[1];
      v31 = v24;
      v25 = v6[2];
      v14 = v6[4];
      v13 = v6[5];
      v16 = v6[6];
      v10 = v6[7];
      v11 = v6[8];
      v15 = v6[9];
      v12 = v6[10];

      if (!(v15 >> 62))
      {
        sub_100863E8C(v14, v13, v16, v10, v11, v15);
        v13 = 0;
        v16 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v15 = 0x8000000000000000;
        v14 = 2;
      }
    }

    else
    {
      sub_100866DB0(v6, _s15AppExRepBackendC12BackendStateOMa);
      v13 = 0;
      v16 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v15 = 0x8000000000000000;
      v14 = 1;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v17 = *v6;
    v18 = v6[1];
    v19 = v6[2];
    v14 = v6[4];
    v13 = v6[5];
    v16 = v6[6];
    v10 = v6[7];
    v11 = v6[8];
    v15 = v6[9];
    v12 = v6[10];
    v30 = v6[11];
    v31 = v17;
    v20 = v6[13];
    v28 = v6[12];
    v29 = v18;
    v26 = v20;
    v27 = v19;
    v21 = v6[14];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!(v15 >> 62))
    {
      v22 = *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_metalLayer);
      if (v22)
      {

        v23 = v22;
        sub_100863E8C(v14, v13, v16, v10, v11, v15);
        v15 = v23[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_hasDrawnFrame];
      }

      else
      {
        sub_100863E8C(v14, v13, v16, v10, v11, v15);
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v15 = 0x4000000000000000;
        v14 = 0xD00000000000001CLL;
        v16 = 3;
        v13 = 0x800000010156F3F0;
      }
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v14 = *v6;
    v13 = v6[1];
    v15 = 0x4000000000000000;
    v16 = *(v6 + 16);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v16 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v15 = 0x8000000000000000;
  }

  *a1 = v14;
  a1[1] = v13;
  a1[2] = v16;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = v15;
  a1[6] = v12;
}

uint64_t sub_10085433C(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  type metadata accessor for MainActor();
  v2[18] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v4;
  v2[20] = v3;

  return _swift_task_switch(sub_1008543D4, v4, v3);
}

uint64_t sub_1008543D4()
{
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[17];
  v3 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v9 = sub_100C69B58();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v11 = static os_log_type_t.debug.getter();
  sub_100005404(v3, &_mh_execute_header, v11, "(AppEx:CoreRE) [%{public}@] loadScene(%@)", 41, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v12 = swift_task_alloc();
  v0[21] = v12;
  *(v12 + 16) = v2;
  *(v12 + 24) = v1;
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_100854640;

  return sub_100858068(v13, 0x6E65635364616F6CLL, 0xEB00000000292865, dword_101482000);
}

uint64_t sub_100854640()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_1008547C0;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_10085475C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10085475C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008547C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100854830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[30] = a2;
  v3[31] = a3;
  sub_1005B981C(&qword_101A04BE8);
  v3[32] = swift_task_alloc();
  v4 = sub_1005B981C(&qword_101A04BF0);
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v5 = sub_1005B981C(&qword_101A04BF8);
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  type metadata accessor for CRLUSDRendering.SceneRequest(0);
  v3[39] = swift_task_alloc();
  v6 = _s15AppExRepBackendC12BackendStateOMa(0);
  v3[40] = v6;
  v3[41] = *(v6 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MainActor();
  v3[49] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[50] = v8;
  v3[51] = v7;

  return _swift_task_switch(sub_100854A98, v8, v7);
}

uint64_t sub_100854A98()
{
  v1 = *(v0 + 240);
  sub_100856BF4();
  *(v0 + 416) = CACurrentMediaTime();
  v2 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState;
  *(v0 + 424) = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState;
  v3 = *(**(v1 + v2) + 128);

  v3(v4);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 3)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v11 = *(v0 + 368);
      sub_100866DB0(*(v0 + 376), _s15AppExRepBackendC12BackendStateOMa);
      swift_storeEnumTagMultiPayload();
      sub_1008539A4(v11);
      v12 = swift_task_alloc();
      *(v0 + 640) = v12;
      *v12 = v0;
      v12[1] = sub_1008567D0;
      v13 = *(v0 + 248);

      return sub_10085433C(v13);
    }

    else
    {
      v14 = *(v0 + 368);
      sub_100866D48(*(v0 + 248), v14, type metadata accessor for CRLUSDRendering.SceneRequest);
      swift_storeEnumTagMultiPayload();
      sub_1008539A4(v14);
      type metadata accessor for CRLUSDRenderingExtensionConnector();
      swift_initStaticObject();
      v15 = swift_task_alloc();
      *(v0 + 432) = v15;
      *v15 = v0;
      v15[1] = sub_100854DA0;

      return sub_100B81A40();
    }
  }

  else
  {
    v6 = *(v0 + 248);
    sub_100866DB0(*(v0 + 376), _s15AppExRepBackendC12BackendStateOMa);
    v7 = swift_task_alloc();
    *(v0 + 608) = v7;
    *(v7 + 16) = v6;
    v8 = swift_task_alloc();
    *(v0 + 616) = v8;
    *(v8 + 16) = v6;
    v9 = swift_task_alloc();
    *(v0 + 624) = v9;
    *v9 = v0;
    v9[1] = sub_1008565C0;

    return sub_100857998(sub_100866FA8, v7, &unk_101482030, v8);
  }
}

uint64_t sub_100854DA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[55] = a1;
  v4[56] = v1;

  if (v1)
  {
    v6 = v4[50];
    v7 = v4[51];

    return _swift_task_switch(sub_10085690C, v6, v7);
  }

  else
  {
    v8 = v4[30];

    v9 = v8;
    v10 = swift_task_alloc();
    v4[57] = v10;
    *v10 = v5;
    v10[1] = sub_100854F50;
    v11 = v4[30];

    return sub_1008659F4(a1, v11);
  }
}

uint64_t sub_100854F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v7[58] = a1;
  v7[59] = a2;
  v7[60] = a3;
  v7[61] = a4;
  v7[62] = v4;

  v8 = v6[51];
  v9 = v6[50];
  if (v4)
  {
    v10 = sub_100855514;
  }

  else
  {
    v10 = sub_10085509C;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10085509C()
{
  v1 = *(**(*(v0 + 240) + *(v0 + 424)) + 128);

  v1(v2);

  if (swift_getEnumCaseMultiPayload())
  {
    v3 = *(v0 + 480);
    v4 = *(v0 + 360);

    sub_100866DB0(v4, _s15AppExRepBackendC12BackendStateOMa);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    sub_100866CE0(*(v0 + 360), *(v0 + 312), type metadata accessor for CRLUSDRendering.SceneRequest);
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 480);
    v23 = *(v0 + 488);
    v20 = *(v0 + 464);
    v21 = *(v0 + 472);
    v7 = *(v0 + 416);
    v24 = *(v0 + 440);
    v8 = *(v0 + 368);
    v9 = static OS_os_log.crlThreeDimensionalObjects;
    *(v0 + 504) = static OS_os_log.crlThreeDimensionalObjects;
    *(v0 + 512) = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(v0 + 520) = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_uuid;
    UUID.uuidString.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    v11 = static String._fromSubstring(_:)();
    v13 = v12;

    *(inited + 56) = &type metadata for String;
    v14 = sub_1000053B0();
    *(v0 + 528) = v14;
    *(inited + 64) = v14;
    *(inited + 32) = v11;
    *(inited + 40) = v13;
    v15 = CACurrentMediaTime();
    *(inited + 96) = &type metadata for Double;
    *(inited + 104) = &protocol witness table for Double;
    *(inited + 72) = (v15 - v7) * 1000.0;
    v16 = static os_log_type_t.debug.getter();
    sub_100005404(v9, &_mh_execute_header, v16, "(AppEx:CoreRE) [%{public}@] loadScene() +%{public}.0fms: extension renderer connected", 85, 2, inited);
    swift_setDeallocating();
    *(v0 + 536) = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    *v8 = v20;
    *(v8 + 8) = v21;
    *(v8 + 16) = v22;
    *(v8 + 24) = v23;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 72) = xmmword_101481DF0;
    swift_storeEnumTagMultiPayload();

    v17 = v22;

    sub_1008539A4(v8);
    sub_1008570B8(v24);
    *(v0 + 544) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 552) = v19;
    *(v0 + 560) = v18;

    return _swift_task_switch(sub_100855610, v19, v18);
  }
}

uint64_t sub_100855514()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100855610()
{
  v1 = v0[59];
  v2 = v0[39];
  v3 = swift_task_alloc();
  v0[71] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[72] = v4;
  *v4 = v0;
  v4[1] = sub_100855714;

  return sub_1008636BC(0x6E65635364616F6CLL, 0xED0000293A5F2865, sub_1008670D0, v3);
}

uint64_t sub_100855714()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  v3 = *(v2 + 560);
  v4 = *(v2 + 552);
  if (v0)
  {
    v5 = sub_100855D20;
  }

  else
  {
    v5 = sub_10085586C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10085586C()
{

  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return _swift_task_switch(sub_1008558D0, v1, v2);
}

uint64_t sub_1008558D0()
{
  v1 = *(v0 + 368);
  v2 = *(**(*(v0 + 240) + *(v0 + 424)) + 128);

  v2(v3);

  v4 = sub_10085727C(v1);
  sub_100866DB0(v1, _s15AppExRepBackendC12BackendStateOMa);
  if (v4)
  {

    v5 = *(v0 + 528);
    v6 = *(v0 + 504);
    v26 = *(v0 + 480);
    v7 = *(v0 + 416);
    v27 = *(v0 + 312);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    UUID.uuidString.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    v9 = static String._fromSubstring(_:)();
    v11 = v10;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v5;
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    v12 = CACurrentMediaTime();
    *(inited + 96) = &type metadata for Double;
    *(inited + 104) = &protocol witness table for Double;
    *(inited + 72) = (v12 - v7) * 1000.0;
    v13 = static os_log_type_t.debug.getter();
    sub_100005404(v6, &_mh_execute_header, v13, "(AppEx:CoreRE) [%{public}@] loadScene() +%{public}.0fms: scene loaded", 69, 2, inited);

    swift_setDeallocating();
    swift_arrayDestroy();
    sub_100866DB0(v27, type metadata accessor for CRLUSDRendering.SceneRequest);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v17 = *(v0 + 272);
    v16 = *(v0 + 280);
    v18 = *(v0 + 264);
    v19 = *(**(*(v0 + 240) + *(v0 + 424)) + 152);

    v21 = v19(v20);

    (*(v17 + 16))(v16, v21 + *(*v21 + 96), v18);

    AsyncStream.makeAsyncIterator()();
    (*(v17 + 8))(v16, v18);
    v22 = static MainActor.shared.getter();
    *(v0 + 592) = v22;
    v23 = swift_task_alloc();
    *(v0 + 600) = v23;
    *v23 = v0;
    v23[1] = sub_100855EC4;
    v24 = *(v0 + 288);
    v25 = *(v0 + 256);

    return AsyncStream.Iterator.next(isolation:)(v25, v22, &protocol witness table for MainActor, v24);
  }
}

uint64_t sub_100855D20()
{

  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return _swift_task_switch(sub_100855D84, v1, v2);
}

uint64_t sub_100855D84()
{
  v1 = v0[60];
  v2 = v0[39];

  sub_100866DB0(v2, type metadata accessor for CRLUSDRendering.SceneRequest);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100855EC4()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return _swift_task_switch(sub_100856008, v3, v2);
}

uint64_t sub_100856008()
{
  v1 = *(v0 + 256);
  if ((*(*(v0 + 328) + 48))(v1, 1, *(v0 + 320)) == 1)
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

LABEL_34:
    v27 = *(v0 + 528);
    v28 = *(v0 + 504);
    v38 = *(v0 + 480);
    v29 = *(v0 + 416);
    v41 = *(v0 + 312);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    UUID.uuidString.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    v31 = static String._fromSubstring(_:)();
    v33 = v32;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v27;
    *(inited + 32) = v31;
    *(inited + 40) = v33;
    v34 = CACurrentMediaTime();
    *(inited + 96) = &type metadata for Double;
    *(inited + 104) = &protocol witness table for Double;
    *(inited + 72) = (v34 - v29) * 1000.0;
    v35 = static os_log_type_t.debug.getter();
    sub_100005404(v28, &_mh_execute_header, v35, "(AppEx:CoreRE) [%{public}@] loadScene() +%{public}.0fms: scene loaded", 69, 2, inited);

    swift_setDeallocating();
    swift_arrayDestroy();
    sub_100866DB0(v41, type metadata accessor for CRLUSDRendering.SceneRequest);

    v36 = *(v0 + 8);

    return v36();
  }

  sub_100866CE0(v1, *(v0 + 352), _s15AppExRepBackendC12BackendStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v14 = *(v0 + 336);
    sub_100866D48(*(v0 + 352), v14, _s15AppExRepBackendC12BackendStateOMa);
    v15 = *(v14 + 16);
    v39 = *(v14 + 40);
    v16 = *(v14 + 56);
    v40 = *(v14 + 48);
    v42 = *(v14 + 32);
    v17 = *(v14 + 64);
    v18 = *(v14 + 72);
    v19 = *(v14 + 80);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (!(v18 >> 62))
    {

      goto LABEL_33;
    }

    if (v18 >> 62 != 2 || v19 || v18 != 0x8000000000000000 || v42 != 2 || v40 | v39 | v16 | v17)
    {
      sub_100863E8C(v42, v39, v40, v16, v17, v18);

      goto LABEL_33;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {

      goto LABEL_33;
    }

    v3 = *(v0 + 344);
    sub_100866D48(*(v0 + 352), v3, _s15AppExRepBackendC12BackendStateOMa);

    v4 = *(v3 + 64);
    v5 = *(v3 + 72);
    if (v5 >> 62)
    {
      v6 = *(v3 + 32);
      v7 = *(v3 + 40);
      v8 = *(v3 + 48);
      v9 = *(v3 + 56);
      if (v5 >> 62 != 2 || *(v3 + 80) != 0 || v5 != 0x8000000000000000 || v6 != 2 || (v8 | v7 | v9 | v4) != 0)
      {
        sub_100863E8C(v6, v7, v8, v9, v4, v5);

LABEL_33:
        v25 = *(v0 + 296);
        v24 = *(v0 + 304);
        v26 = *(v0 + 288);
        sub_100866DB0(*(v0 + 352), _s15AppExRepBackendC12BackendStateOMa);
        (*(v25 + 8))(v24, v26);
        goto LABEL_34;
      }
    }

    else
    {
    }
  }

  sub_100866DB0(*(v0 + 352), _s15AppExRepBackendC12BackendStateOMa);
  v20 = static MainActor.shared.getter();
  *(v0 + 592) = v20;
  v21 = swift_task_alloc();
  *(v0 + 600) = v21;
  *v21 = v0;
  v21[1] = sub_100855EC4;
  v22 = *(v0 + 288);
  v23 = *(v0 + 256);

  return AsyncStream.Iterator.next(isolation:)(v23, v20, &protocol witness table for MainActor, v22);
}

uint64_t sub_1008565C0()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_100856AEC;
  }

  else
  {

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_1008566E8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008566E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008567D0()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);
  if (v0)
  {
    v5 = sub_1008569FC;
  }

  else
  {
    v5 = sub_1008676EC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10085690C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008569FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100856AEC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100856BF4()
{
  v1 = *(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_metalLayer);
  if (v1)
  {
    v2 = v0;
    v3 = &v1[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData];
    v4 = *&v1[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData];
    v5 = *&v1[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData + 8];
    v6 = *&v1[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData + 16];
    v7 = *&v1[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData + 24];
    *v3 = 0u;
    *(v3 + 1) = 0u;
    v8 = v1;
    sub_100863DD8(v4, v5, v6, v7);
    sub_100B4F184();
    v36 = *&v8[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_frameNumber];
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v11 = v8;

    sub_1005B981C(&qword_101A04C10);
    sub_1008672AC();
    v12 = Publisher<>.sink(receiveValue:)();

    *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_firstFrameRenderedSubscription) = v12;
  }

  else
  {
    v13 = objc_opt_self();
    v14 = [v13 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36);
    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v14;
    v23 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v23;
    v24 = sub_1005CF04C();
    *(inited + 104) = v24;
    *(inited + 72) = v15;
    *(inited + 136) = &type metadata for String;
    v25 = sub_1000053B0();
    *(inited + 112) = v18;
    *(inited + 120) = v20;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v25;
    *(inited + 152) = 387;
    v26 = v36;
    *(inited + 216) = v23;
    *(inited + 224) = v24;
    *(inited + 192) = v26;
    v27 = v15;
    v28 = v26;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v30, "USD renderer configuration mismatch - expected to find metal layer.", 67, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v31 = swift_allocObject();
    v31[2] = 8;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    [v13 handleFailureInFunction:v33 file:v34 lineNumber:387 isFatal:0 format:v35 args:v32];
  }
}

uint64_t sub_1008570B8(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = *(a1 + 16);
  v13 = sub_1008670EC;
  v14 = v4;
  v9 = _NSConcreteStackBlock;
  v10 = *"";
  v11 = sub_100007638;
  v12 = &unk_1018899F8;
  v6 = _Block_copy(&v9);

  [v5 setInterruptionHandler:v6];
  _Block_release(v6);
  v13 = sub_1008670EC;
  v14 = v4;
  v9 = _NSConcreteStackBlock;
  v10 = *"";
  v11 = sub_100007638;
  v12 = &unk_101889A20;
  v7 = _Block_copy(&v9);

  [v5 setInvalidationHandler:v7];
  _Block_release(v7);
}

uint64_t sub_10085727C(uint64_t a1)
{
  v2 = _s15AppExRepBackendC12BackendStateOMa(0);
  __chkstk_darwin(v2);
  v4 = (&v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  sub_100866D48(a1, &v35 - v9, _s15AppExRepBackendC12BackendStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_100866D48(v10, v4, _s15AppExRepBackendC12BackendStateOMa);
    v22 = v4[2];
    v23 = v4[4];
    v37 = v4[5];
    v38 = v23;
    v24 = v4[7];
    v36 = v4[6];
    v25 = v4[8];
    v26 = v4[9];
    v27 = v4[10];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v28 = v4[14];

    if (!(v26 >> 62))
    {

      goto LABEL_37;
    }

    LOBYTE(v16) = v36;
    v15 = v37;
    v30 = v26 >> 62 == 2 && v27 == 0 && v26 == 0x8000000000000000;
    v14 = v38;
    if (!v30 || v38 != 2 || (v36 | v37 | v24 | v25) != 0)
    {
      v17 = v24;
      v12 = v25;
      v13 = v26;
LABEL_33:
      sub_100863E8C(v14, v15, v16, v17, v12, v13);
      goto LABEL_37;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_37:
      v33 = 1;
      goto LABEL_38;
    }

    sub_100866D48(v10, v7, _s15AppExRepBackendC12BackendStateOMa);

    v12 = *(v7 + 8);
    v13 = *(v7 + 9);
    if (!(v13 >> 62))
    {

      v33 = 0;
      goto LABEL_38;
    }

    v14 = *(v7 + 4);
    v15 = *(v7 + 5);
    v16 = *(v7 + 6);
    v17 = *(v7 + 7);
    if (v13 >> 62 != 2 || *(v7 + 10) != 0 || v13 != 0x8000000000000000 || v14 != 2 || (v16 | v15 | v17 | v12) != 0)
    {
      goto LABEL_33;
    }
  }

  v33 = 0;
LABEL_38:
  sub_100866DB0(v10, _s15AppExRepBackendC12BackendStateOMa);
  return v33;
}

uint64_t sub_100857530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a6;
  v6[4] = type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v6[6] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[7] = v8;
  v6[8] = v7;

  return _swift_task_switch(sub_1008575D8, v8, v7);
}

uint64_t sub_1008575D8()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1008576D4;

  return sub_1008636BC(0x6E65635364616F6CLL, 0xED0000293A5F2865, sub_100867700, v1);
}

uint64_t sub_1008576D4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1008578B0;
  }

  else
  {
    v5 = sub_10085782C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10085782C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100867720, v1, v0);
}

uint64_t sub_1008578B0()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100857934, v1, v0);
}

uint64_t sub_100857934()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100857998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for CRLUSDRendering.SceneRequest(0);
  v5[7] = swift_task_alloc();
  v5[8] = _s15AppExRepBackendC12BackendStateOMa(0);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v7;
  v5[13] = v6;

  return _swift_task_switch(sub_100857AA0, v7, v6);
}

uint64_t sub_100857AA0()
{
  v1 = *(**(*(v0 + 48) + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState) + 128);

  v1(v2);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = *(v0 + 80);
      v6 = *(v0 + 72);
      v7 = *(v0 + 56);
      v8 = *(v0 + 16);

      sub_100866CE0(v5, v7, type metadata accessor for CRLUSDRendering.SceneRequest);
      v8(v7);
      sub_100866D48(v7, v6, type metadata accessor for CRLUSDRendering.SceneRequest);
      swift_storeEnumTagMultiPayload();
      sub_1008539A4(v6);
      sub_100866DB0(v7, type metadata accessor for CRLUSDRendering.SceneRequest);
      v9 = 0;
LABEL_10:

      v23 = *(v0 + 8);

      return v23(v9);
    }

    v25 = *(v0 + 80);
    v29 = v25[1];
    v30 = *v25;
    v17 = *(v25 + 4);
    v18 = *(v25 + 5);
    v19 = *(v25 + 6);
    v20 = *(v25 + 7);
    v21 = *(v25 + 8);
    v22 = *(v25 + 9);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v4 = *(v0 + 80);

        sub_100866DB0(v4, _s15AppExRepBackendC12BackendStateOMa);
      }

      else
      {
      }

      v9 = 1;
      goto LABEL_10;
    }

    v10 = *(v0 + 80);
    v29 = v10[1];
    v30 = *v10;
    v11 = *(v10 + 5);
    v27 = *(v10 + 4);
    v12 = *(v10 + 6);
    v13 = *(v10 + 7);
    v14 = *(v10 + 8);
    v15 = *(v10 + 9);
    v16 = *(v10 + 14);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v17 = v27;
    v18 = v11;
    LOBYTE(v19) = v12;
    v20 = v13;
    v21 = v14;
    v22 = v15;
  }

  sub_100863E8C(v17, v18, v19, v20, v21, v22);
  *(v0 + 112) = v30;
  *(v0 + 128) = v29;
  v28 = (*(v0 + 32) + **(v0 + 32));
  v26 = swift_task_alloc();
  *(v0 + 144) = v26;
  *v26 = v0;
  v26[1] = sub_100857DE8;

  return v28(v0 + 160, v30, *(&v30 + 1), v29, *(&v29 + 1));
}

uint64_t sub_100857DE8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = v2[12];
    v4 = v2[13];
    v5 = sub_100857FA8;
  }

  else
  {
    v6 = v2[16];

    v3 = v2[12];
    v4 = v2[13];
    v5 = sub_100857F24;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100857F24()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100857FA8()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100858068(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = v5;
  v7[37] = a3;
  v7[38] = v4;
  v7[36] = a2;
  v7[39] = _s15AppExRepBackendC12BackendStateOMa(0);
  v7[40] = swift_task_alloc();
  v7[41] = type metadata accessor for MainActor();
  v7[42] = static MainActor.shared.getter();
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v7[43] = v9;
  *v9 = v7;
  v9[1] = sub_1008581C4;

  return v11(a1);
}

uint64_t sub_1008581C4()
{
  *(*v1 + 352) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10085838C;
  }

  else
  {
    v4 = sub_10085831C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10085831C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10085838C()
{

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 296);
  v17 = *(v0 + 288);
  v18 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v7;
  *(inited + 64) = v7;
  *(inited + 72) = v17;
  *(inited + 80) = v2;
  swift_getErrorValue();

  v8 = Error.localizedDescription.getter();
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  v10 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v10, "(AppEx:CoreRE) [%{public}@] %{public}@ error: %{public}@", 56, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  *(v0 + 264) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 216);
    v12 = *(v0 + 224);
    v13 = *(v0 + 232);
  }

  else
  {
    *(v0 + 272) = *(v0 + 352);
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 240);
      v12 = *(v0 + 248);
      v13 = 4;
    }

    else
    {
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = 2;
    }
  }

  v14 = *(v0 + 320);
  *v14 = v11;
  *(v14 + 8) = v12;
  *(v14 + 16) = v13;
  swift_storeEnumTagMultiPayload();
  sub_1008539A4(v14);
  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1008586A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for CRLUSDRendering.SceneRequest(0);
  v3[6] = swift_task_alloc();
  v3[7] = _s15AppExRepBackendC12BackendStateOMa(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for MainActor();
  v3[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v5;
  v3[13] = v4;

  return _swift_task_switch(sub_1008587B0, v5, v4);
}

uint64_t sub_1008587B0()
{
  v0[14] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[15] = v2;
  v0[16] = v1;

  return _swift_task_switch(sub_10085883C, v2, v1);
}

uint64_t sub_10085883C()
{
  v1 = *(**(*(v0 + 24) + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState) + 128);

  v1(v2);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = *(v0 + 64);
      v6 = *(v0 + 72);
      v7 = *(v0 + 48);
      v9 = *(v0 + 32);
      v8 = *(v0 + 40);

      sub_100866CE0(v6, v7, type metadata accessor for CRLUSDRendering.SceneRequest);
      v10 = v7 + *(v8 + 20);
      *v10 = *v9;
      v11 = *(v9 + 16);
      v12 = *(v9 + 32);
      v13 = *(v9 + 48);
      *(v10 + 64) = *(v9 + 64);
      *(v10 + 32) = v12;
      *(v10 + 48) = v13;
      *(v10 + 16) = v11;
      sub_100866D48(v7, v5, type metadata accessor for CRLUSDRendering.SceneRequest);
      swift_storeEnumTagMultiPayload();
      sub_1008539A4(v5);
      sub_100866DB0(v7, type metadata accessor for CRLUSDRendering.SceneRequest);
      v14 = 0;
LABEL_10:
      **(v0 + 16) = v14;
      v28 = *(v0 + 96);
      v29 = *(v0 + 104);
      v30 = sub_100858AEC;
      goto LABEL_13;
    }

    v31 = *(v0 + 72);
    v36 = v31[1];
    v37 = *v31;
    v22 = *(v31 + 4);
    v23 = *(v31 + 5);
    v24 = *(v31 + 6);
    v25 = *(v31 + 7);
    v26 = *(v31 + 8);
    v27 = *(v31 + 9);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v4 = *(v0 + 72);

        sub_100866DB0(v4, _s15AppExRepBackendC12BackendStateOMa);
      }

      else
      {
      }

      v14 = 1;
      goto LABEL_10;
    }

    v15 = *(v0 + 72);
    v36 = v15[1];
    v37 = *v15;
    v16 = *(v15 + 5);
    v35 = *(v15 + 4);
    v17 = *(v15 + 6);
    v18 = *(v15 + 7);
    v19 = *(v15 + 8);
    v20 = *(v15 + 9);
    v21 = *(v15 + 14);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v22 = v35;
    v23 = v16;
    LOBYTE(v24) = v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
  }

  sub_100863E8C(v22, v23, v24, v25, v26, v27);
  *(v0 + 152) = v36;
  *(v0 + 136) = v37;
  *(v0 + 168) = static MainActor.shared.getter();
  *(v0 + 176) = static MainActor.shared.getter();
  v32 = dispatch thunk of Actor.unownedExecutor.getter();
  v29 = v33;
  *(v0 + 184) = v32;
  *(v0 + 192) = v33;
  v30 = sub_100858B78;
  v28 = v32;
LABEL_13:

  return _swift_task_switch(v30, v28, v29);
}

uint64_t sub_100858AEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100858B78()
{
  v1 = v0[18];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[25] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_100858C7C;

  return sub_1008636BC(0x6353657461647075, 0xEF293A5F28656E65, sub_100866EE0, v3);
}

uint64_t sub_100858C7C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_100858F54;
  }

  else
  {
    v5 = sub_100858DD4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100858DD4()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100858E58, v1, v0);
}

uint64_t sub_100858E58()
{
  v1 = v0[19];

  v2 = v0[15];
  v3 = v0[16];

  return _swift_task_switch(sub_100858EE8, v2, v3);
}

uint64_t sub_100858EE8()
{

  **(v0 + 16) = 0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return _swift_task_switch(sub_100858AEC, v1, v2);
}

uint64_t sub_100858F54()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100858FD8, v1, v0);
}

uint64_t sub_100858FD8()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return _swift_task_switch(sub_10085903C, v1, v2);
}

uint64_t sub_10085903C()
{
  v1 = v0[19];

  v2 = v0[12];
  v3 = v0[13];

  return _swift_task_switch(sub_1008590CC, v2, v3);
}

uint64_t sub_1008590CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100859158(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_1008591F8, v5, v4);
}

uint64_t sub_1008591F8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 16);
  sub_1005B981C(&qword_101A04BE0);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = xmmword_10146C6B0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v0 + 72) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;

  return _swift_task_switch(sub_1008592CC, v5, v4);
}

uint64_t sub_1008592CC()
{
  v1 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_10085939C;
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);

  return sub_1008661A8(0xD000000000000010, 0x800000010156F620, v4, v4, v3);
}

uint64_t sub_10085939C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    v6 = sub_1008595BC;
  }

  else
  {

    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    v6 = sub_1008594F4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1008594F4()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_100859558, v1, v2);
}

uint64_t sub_100859558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008595BC()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_100859628, v1, v2);
}

uint64_t sub_100859628()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10085968C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for CRLUSDRendering.SceneRequest(0);
  v3[5] = swift_task_alloc();
  v3[6] = _s15AppExRepBackendC12BackendStateOMa(0);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v5;
  v3[12] = v4;

  return _swift_task_switch(sub_100859794, v5, v4);
}

uint64_t sub_100859794()
{
  v0[13] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[14] = v2;
  v0[15] = v1;

  return _swift_task_switch(sub_100859820, v2, v1);
}

uint64_t sub_100859820()
{
  v1 = *(**(*(v0 + 24) + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState) + 128);

  v1(v2);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = *(v0 + 56);
      v6 = *(v0 + 64);
      v7 = *(v0 + 40);

      sub_100866CE0(v6, v7, type metadata accessor for CRLUSDRendering.SceneRequest);
      sub_100866D48(v7, v5, type metadata accessor for CRLUSDRendering.SceneRequest);
      swift_storeEnumTagMultiPayload();
      sub_1008539A4(v5);
      sub_100866DB0(v7, type metadata accessor for CRLUSDRendering.SceneRequest);
      v8 = 0;
LABEL_10:
      **(v0 + 16) = v8;
      v22 = *(v0 + 88);
      v23 = *(v0 + 96);

      return _swift_task_switch(sub_100859AE8, v22, v23);
    }

    v24 = *(v0 + 64);
    v30 = v24[1];
    v31 = *v24;
    v16 = *(v24 + 4);
    v17 = *(v24 + 5);
    v18 = *(v24 + 6);
    v19 = *(v24 + 7);
    v20 = *(v24 + 8);
    v21 = *(v24 + 9);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v4 = *(v0 + 64);

        sub_100866DB0(v4, _s15AppExRepBackendC12BackendStateOMa);
      }

      else
      {
      }

      v8 = 1;
      goto LABEL_10;
    }

    v9 = *(v0 + 64);
    v30 = v9[1];
    v31 = *v9;
    v10 = *(v9 + 5);
    v29 = *(v9 + 4);
    v11 = *(v9 + 6);
    v12 = *(v9 + 7);
    v13 = *(v9 + 8);
    v14 = *(v9 + 9);
    v15 = *(v9 + 14);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v16 = v29;
    v17 = v10;
    LOBYTE(v18) = v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
  }

  sub_100863E8C(v16, v17, v18, v19, v20, v21);
  *(v0 + 128) = v31;
  *(v0 + 144) = v30;
  v25 = swift_task_alloc();
  *(v0 + 160) = v25;
  *v25 = v0;
  v25[1] = sub_100859B74;
  v26 = *(v0 + 24);
  v27 = *(v0 + 32);

  return sub_100859E38(v0 + 176, v31, *(&v31 + 1), v30, *(&v30 + 1), v26, v27);
}

uint64_t sub_100859AE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100859B74()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[14];
    v4 = v2[15];
    v5 = sub_100859D1C;
  }

  else
  {
    v6 = v2[18];

    v3 = v2[14];
    v4 = v2[15];
    v5 = sub_100859CB0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100859CB0()
{

  **(v0 + 16) = 0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_100859AE8, v1, v2);
}

uint64_t sub_100859D1C()
{
  v1 = v0[18];

  v2 = v0[11];
  v3 = v0[12];

  return _swift_task_switch(sub_100859DAC, v2, v3);
}

uint64_t sub_100859DAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100859E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[30] = a3;
  v7[33] = type metadata accessor for MainActor();
  v7[34] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[35] = v9;
  v7[36] = v8;

  return _swift_task_switch(sub_100859ED8, v9, v8);
}

uint64_t sub_100859ED8()
{
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlThreeDimensionalObjects;
  v0[37] = static OS_os_log.crlThreeDimensionalObjects;
  v0[38] = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v0[39] = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_uuid;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v3 = static String._fromSubstring(_:)();
  v5 = v4;

  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  v0[40] = v6;
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v7 = Array.description.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.debug.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "(AppEx:CoreRE) [%{public}@] BEGIN performActions(%{public}@)", 60, 2, inited);
  swift_setDeallocating();
  v0[41] = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v0[42] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[43] = v11;
  v0[44] = v10;

  return _swift_task_switch(sub_10085A114, v11, v10);
}

uint64_t sub_10085A114()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = swift_task_alloc();
  v0[45] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_10085A210;

  return sub_1008636BC(0xD000000000000012, 0x800000010156F680, sub_100866E34, v3);
}

uint64_t sub_10085A210()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 352);
  v4 = *(v2 + 344);
  if (v0)
  {
    v5 = sub_10085A368;
  }

  else
  {
    v5 = sub_10085A430;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10085A368()
{

  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return _swift_task_switch(sub_10085A3CC, v1, v2);
}

uint64_t sub_10085A3CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10085A430()
{

  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return _swift_task_switch(sub_10085A494, v1, v2);
}

uint64_t sub_10085A494()
{
  v1 = v0[40];
  v2 = v0[37];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = Array.description.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v1;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.debug.getter();
  sub_100005404(v2, &_mh_execute_header, v9, "(AppEx:CoreRE) [%{public}@] END performActions(%{public}@) END", 62, 2, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10 = v0[1];

  return v10();
}

uint64_t sub_10085A630(uint64_t a1, uint64_t a2, float a3)
{
  *(v3 + 456) = a3;
  *(v3 + 200) = a1;
  *(v3 + 208) = a2;
  type metadata accessor for CRLUSDRendering.SceneRequest(0);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = _s15AppExRepBackendC12BackendStateOMa(0);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = type metadata accessor for MainActor();
  *(v3 + 256) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 264) = v5;
  *(v3 + 272) = v4;

  return _swift_task_switch(sub_10085A738, v5, v4);
}

uint64_t sub_10085A738()
{
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlThreeDimensionalObjects;
  v0[35] = static OS_os_log.crlThreeDimensionalObjects;
  v0[36] = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[37] = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_uuid;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v3 = static String._fromSubstring(_:)();
  v5 = v4;

  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  v0[38] = v6;
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v7 = static os_log_type_t.debug.getter();
  sub_100005404(v1, &_mh_execute_header, v7, "(AppEx:CoreRE) [%{public}@] BEGIN takeSnapshot()", 48, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v0[39] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[40] = v9;
  v0[41] = v8;

  return _swift_task_switch(sub_10085A930, v9, v8);
}

uint64_t sub_10085A930()
{
  v1 = *(**(*(v0 + 208) + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState) + 128);

  v1(v2);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = *(v0 + 232);
      v6 = *(v0 + 240);
      v7 = *(v0 + 216);

      sub_100866CE0(v6, v7, type metadata accessor for CRLUSDRendering.SceneRequest);
      sub_100866D48(v7, v5, type metadata accessor for CRLUSDRendering.SceneRequest);
      swift_storeEnumTagMultiPayload();
      sub_1008539A4(v5);
      sub_100866DB0(v7, type metadata accessor for CRLUSDRendering.SceneRequest);
      v8 = 0;
      v9 = 1;
LABEL_10:
      *(v0 + 461) = v9;
      *(v0 + 440) = v8;
      *(v0 + 448) = 0;
      v23 = *(v0 + 264);
      v24 = *(v0 + 272);
      v25 = sub_10085B1A8;
      goto LABEL_13;
    }

    v26 = *(v0 + 240);
    v31 = v26[1];
    v32 = *v26;
    v17 = *(v26 + 4);
    v18 = *(v26 + 5);
    v19 = *(v26 + 6);
    v20 = *(v26 + 7);
    v21 = *(v26 + 8);
    v22 = *(v26 + 9);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v4 = *(v0 + 240);

        sub_100866DB0(v4, _s15AppExRepBackendC12BackendStateOMa);
      }

      else
      {
      }

      v9 = 0;
      v8 = 1;
      goto LABEL_10;
    }

    v10 = *(v0 + 240);
    v31 = v10[1];
    v32 = *v10;
    v11 = *(v10 + 5);
    v30 = *(v10 + 4);
    v12 = *(v10 + 6);
    v13 = *(v10 + 7);
    v14 = *(v10 + 8);
    v15 = *(v10 + 9);
    v16 = *(v10 + 14);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v17 = v30;
    v18 = v11;
    LOBYTE(v19) = v12;
    v20 = v13;
    v21 = v14;
    v22 = v15;
  }

  sub_100863E8C(v17, v18, v19, v20, v21, v22);
  *(v0 + 336) = v32;
  *(v0 + 352) = v31;
  *(v0 + 368) = static MainActor.shared.getter();
  *(v0 + 376) = static MainActor.shared.getter();
  v27 = dispatch thunk of Actor.unownedExecutor.getter();
  v24 = v28;
  *(v0 + 384) = v27;
  *(v0 + 392) = v28;
  v25 = sub_10085ABB8;
  v23 = v27;
LABEL_13:

  return _swift_task_switch(v25, v23, v24);
}

uint64_t sub_10085ABB8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 456);
  v3 = swift_task_alloc();
  *(v0 + 400) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 408) = v4;
  *v4 = v0;
  v4[1] = sub_10085ACBC;

  return sub_100860FE0(0xD000000000000011, 0x800000010156F580, sub_100866CC0, v3);
}

uint64_t sub_10085ACBC(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 416) = v3;

  if (v3)
  {

    v9 = *(v8 + 384);
    v10 = *(v8 + 392);
    v11 = sub_10085AFA4;
  }

  else
  {
    *(v8 + 460) = a3;
    *(v8 + 424) = a2;
    *(v8 + 432) = a1;

    v9 = *(v8 + 384);
    v10 = *(v8 + 392);
    v11 = sub_10085AE18;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10085AE18()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10085AE9C, v1, v0);
}

uint64_t sub_10085AE9C()
{
  v1 = v0[44];

  v2 = v0[40];
  v3 = v0[41];

  return _swift_task_switch(sub_10085AF2C, v2, v3);
}

uint64_t sub_10085AF2C()
{
  v1 = *(v0 + 460);

  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  *(v0 + 461) = v1 & 1;
  *(v0 + 440) = v2;
  *(v0 + 448) = v3;
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);

  return _swift_task_switch(sub_10085B1A8, v4, v5);
}

uint64_t sub_10085AFA4()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10085B028, v1, v0);
}

uint64_t sub_10085B028()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_10085B08C, v1, v2);
}

uint64_t sub_10085B08C()
{
  v1 = v0[44];

  v2 = v0[33];
  v3 = v0[34];

  return _swift_task_switch(sub_10085B11C, v2, v3);
}

uint64_t sub_10085B11C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10085B1A8()
{
  v18 = *(v0 + 461);
  v1 = *(v0 + 440);
  v2 = *(v0 + 304);
  v16 = *(v0 + 448);
  v17 = *(v0 + 280);
  v3 = *(v0 + 200);

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v2;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v8 = v1 == 1;
  v9 = 0x7220746C75736572;
  if (v1 == 1)
  {
    v9 = 0xD000000000000012;
  }

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v2;
  if (v1 == 1)
  {
    v10 = 0x800000010156F5A0;
  }

  else
  {
    v10 = 0xEF64656E72757465;
  }

  *(inited + 72) = v9;
  *(inited + 80) = v10;
  if (v1 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v1;
  }

  if (v1 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v16;
  }

  v13 = static os_log_type_t.debug.getter();
  sub_100005404(v17, &_mh_execute_header, v13, "(AppEx:CoreRE) [%{public}@] END takeSnapshot() (%@)", 51, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  *v3 = v11;
  *(v3 + 8) = v12;
  *(v3 + 16) = (v8 | v18) & 1;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10085B3E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = a3;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a2;
  v11[5] = v9;
  sub_10064191C(0, 0, v7, &unk_101482098, v11);
}

uint64_t sub_10085B51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = _s15AppExRepBackendC12BackendStateOMa(0);
  v5[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10085B5E4, v7, v6);
}

uint64_t sub_10085B5E4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(v0[13] + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_hasDrawnFrame) == 1)
    {
      v3 = *(**(Strong + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState) + 128);

      v3(v4);

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v6 = v0[15];
      if (EnumCaseMultiPayload != 2)
      {

        sub_100866DB0(v6, _s15AppExRepBackendC12BackendStateOMa);
        goto LABEL_11;
      }

      sub_100866DB0(v0[15], _s15AppExRepBackendC12BackendStateOMa);
      v7 = &v2[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 1);
        ObjectType = swift_getObjectType();
        v10 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_uuid;
        sub_100854018(v0 + 2);
        (*(v8 + 8))(&v2[v10], v0 + 2, ObjectType, v8);
        swift_unknownObjectRelease();
        sub_100863E38((v0 + 2));
      }

      v11 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_firstFrameRenderedSubscription;
      if (*&v2[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_firstFrameRenderedSubscription])
      {

        AnyCancellable.cancel()();
      }

      *&v2[v11] = 0;
    }
  }

LABEL_11:

  v12 = v0[1];

  return v12();
}

uint64_t sub_10085B7F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a1;
  v9[5] = a2;
  sub_10064191C(0, 0, v6, &unk_101482048, v9);
}

uint64_t sub_10085B920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[10] = _s15AppExRepBackendC12BackendStateOMa(0);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10085B9F4, v7, v6);
}

uint64_t sub_10085B9F4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_weakLoadStrong();
    if (!v3)
    {

      goto LABEL_12;
    }

    v4 = v3;
    v5 = *(**&v2[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState] + 128);

    v5(v6);

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v8 = v0[12];
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *v8;
      v10 = v8[2];
      v12 = v8[4];
      v13 = v8[5];
      v14 = v8[6];
      v15 = v8[7];
      v16 = v8[8];
      v17 = v8[9];
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {

        sub_100866DB0(v8, _s15AppExRepBackendC12BackendStateOMa);
        goto LABEL_12;
      }

      v9 = *v8;
      v10 = v8[2];
      v25 = v8[5];
      v26 = v8[4];
      v23 = v8[7];
      v24 = v8[6];
      v21 = v8[9];
      v22 = v8[8];
      v11 = v8[14];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v13 = v25;
      v12 = v26;
      v15 = v23;
      LOBYTE(v14) = v24;
      v17 = v21;
      v16 = v22;
    }

    sub_100863E8C(v12, v13, v14, v15, v16, v17);

    if (v9 == v4)
    {
      v18 = v0[11];
      *v18 = xmmword_101463530;
      *(v18 + 16) = 4;
      swift_storeEnumTagMultiPayload();
      sub_1008539A4(v18);
    }
  }

LABEL_12:

  v19 = v0[1];

  return v19();
}

uint64_t sub_10085BC4C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 368) = a2;
  *(v4 + 376) = v3;
  *(v4 + 544) = a3;
  *(v4 + 360) = a1;
  v5 = *(a2 + 16);
  *(v4 + 384) = *a2;
  *(v4 + 400) = v5;
  *(v4 + 416) = *(a2 + 32);
  *(v4 + 432) = *(a2 + 48);
  *(v4 + 440) = _s15AppExRepBackendC12BackendStateOMa(0);
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 504) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 512) = v7;
  *(v4 + 520) = v6;

  return _swift_task_switch(sub_10085BD80, v7, v6);
}

uint64_t sub_10085BD80()
{
  v80 = v0;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 376);
  v4 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState;
  v5 = *(**(v3 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState) + 128);

  v5(v6);

  sub_100866CE0(v1, v2, _s15AppExRepBackendC12BackendStateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 488);
  if (EnumCaseMultiPayload == 2)
  {
    v73 = v4;
    v76 = v3;
    v65 = v8[2];
    v11 = v8[5];
    v63 = v8[4];
    v12 = v8[6];
    v13 = v8[7];
    v14 = v8[8];
    v15 = v8[9];
    v16 = v8[14];
    swift_unknownObjectRelease();
    v9 = v65;
    swift_unknownObjectRelease();
    v10 = v63;
    swift_unknownObjectRelease();

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v73 = v4;
    v76 = v3;
    v9 = v8[2];
    v10 = v8[4];
    v11 = v8[5];
    v12 = v8[6];
    v13 = v8[7];
    v14 = v8[8];
    v15 = v8[9];
LABEL_6:

    sub_100863E8C(v10, v11, v12, v13, v14, v15);
    v3 = v76;
    v4 = v73;
    goto LABEL_7;
  }

  v26 = *(v0 + 472);
  v25 = *(v0 + 480);
  sub_100866DB0(v8, _s15AppExRepBackendC12BackendStateOMa);
  v27 = *(**(v3 + v4) + 128);

  v27(v28);

  sub_100866CE0(v25, v26, _s15AppExRepBackendC12BackendStateOMa);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v62 = *(v0 + 472);

    sub_100866DB0(v62, _s15AppExRepBackendC12BackendStateOMa);
    goto LABEL_13;
  }

  v29 = *(v0 + 368);
  sub_100866DB0(*(v0 + 472), _s15AppExRepBackendC12BackendStateOMa);
  if (*(v29 + 40) >> 62 != 1)
  {
LABEL_12:

LABEL_13:
    v30 = objc_opt_self();
    v31 = [v30 _atomicIncrementAssertCount];
    v79 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v79);
    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    v34 = [v33 lastPathComponent];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v31;
    v40 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v40;
    v41 = sub_1005CF04C();
    *(inited + 104) = v41;
    *(inited + 72) = v32;
    *(inited + 136) = &type metadata for String;
    v42 = sub_1000053B0();
    *(inited + 112) = v35;
    *(inited + 120) = v37;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v42;
    *(inited + 152) = 441;
    v43 = v79;
    *(inited + 216) = v40;
    *(inited + 224) = v41;
    *(inited + 192) = v43;
    v44 = v32;
    v45 = v43;
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v47 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v47, "Unexpected remote USD renderer state change.", 44, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v48 = swift_allocObject();
    v48[2] = 8;
    v48[3] = 0;
    v48[4] = 0;
    v48[5] = 0;
    v49 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    [v30 handleFailureInFunction:v50 file:v51 lineNumber:441 isFatal:0 format:v52 args:v49];

    goto LABEL_24;
  }

LABEL_7:
  v17 = *(**(v3 + v4) + 128);

  v17(v18);

  v19 = swift_getEnumCaseMultiPayload();
  v20 = *(v0 + 456);
  v21 = *(v0 + 464);
  if (v19 == 2)
  {
    v53 = *(v0 + 432);
    v23 = *(v0 + 368);
    v75 = *(v0 + 384);
    v78 = *(v0 + 416);
    v66 = *v20;
    v68 = *(v0 + 400);
    v64 = *(v20 + 16);
    v70 = *(v20 + 104);
    v72 = *(v20 + 88);
    sub_100863E8C(*(v20 + 32), *(v20 + 40), *(v20 + 48), *(v20 + 56), *(v20 + 64), *(v20 + 72));
    *v21 = v66;
    *(v21 + 16) = v64;
    *(v21 + 32) = v75;
    *(v21 + 48) = v68;
    *(v21 + 64) = v78;
    *(v21 + 80) = v53;
    *(v21 + 88) = v72;
    *(v21 + 104) = v70;
    swift_storeEnumTagMultiPayload();
    v24 = v0 + 16;
  }

  else
  {
    if (v19 != 1)
    {
      v54 = *(**(v3 + v4) + 128);

      v54(v55);

      sub_100866DB0(v20, _s15AppExRepBackendC12BackendStateOMa);
      goto LABEL_19;
    }

    v22 = *(v0 + 432);
    v23 = *(v0 + 368);
    v74 = *(v0 + 384);
    v77 = *(v0 + 416);
    v69 = *v20;
    v71 = *(v0 + 400);
    v67 = *(v20 + 16);
    sub_100863E8C(*(v20 + 32), *(v20 + 40), *(v20 + 48), *(v20 + 56), *(v20 + 64), *(v20 + 72));
    *v21 = v69;
    *(v21 + 16) = v67;
    *(v21 + 32) = v74;
    *(v21 + 48) = v71;
    *(v21 + 64) = v77;
    *(v21 + 80) = v22;
    swift_storeEnumTagMultiPayload();
    v24 = v0 + 304;
  }

  sub_100863F4C(v23, v24);
LABEL_19:
  if (*(v0 + 544) == 1)
  {
    v56 = swift_task_alloc();
    *(v0 + 528) = v56;
    *v56 = v0;
    v56[1] = sub_10085C688;
    v57 = *(v0 + 464);

    return sub_100853B24(v57);
  }

  v59 = *(v0 + 464);
  v60 = *(v0 + 448);

  sub_100866D48(v59, v60, _s15AppExRepBackendC12BackendStateOMa);
  sub_1008539A4(v60);
  sub_100866DB0(v59, _s15AppExRepBackendC12BackendStateOMa);
LABEL_24:

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_10085C688()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  v3 = *(v2 + 520);
  v4 = *(v2 + 512);
  if (v0)
  {
    v5 = sub_10085C89C;
  }

  else
  {
    v5 = sub_10085C7C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10085C7C4()
{
  v1 = *(v0 + 464);

  sub_100866DB0(v1, _s15AppExRepBackendC12BackendStateOMa);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10085C89C()
{
  v1 = *(v0 + 464);

  sub_100866DB0(v1, _s15AppExRepBackendC12BackendStateOMa);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10085C978(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  if (static UUID.== infix(_:_:)())
  {
    v58 = a1;
    v59 = v6;
    v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = v5;
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v56 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v57 = v2;
    UUID.uuidString.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    v12 = static String._fromSubstring(_:)();
    v14 = v13;

    *(inited + 56) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 64) = v15;
    *(inited + 32) = v12;
    *(inited + 40) = v14;
    v16 = *(a2 + 16);
    v63[0] = *a2;
    v63[1] = v16;
    v63[2] = *(a2 + 32);
    v64 = *(a2 + 48);
    sub_100863F4C(a2, &v62);
    v17 = String.init<A>(describing:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v15;
    *(inited + 72) = v17;
    *(inited + 80) = v18;
    v19 = static os_log_type_t.debug.getter();
    sub_100005404(v56, &_mh_execute_header, v19, "(AppEx:CoreRE) [%{public}@] new remote state: %{public}@", 56, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v20 = type metadata accessor for TaskPriority();
    v21 = *(*(v20 - 8) + 56);
    v55 = v10;
    v21(v10, 1, 1, v20);
    v22 = v59;
    v23 = v60;
    v24 = v61;
    (*(v59 + 16))(v60, v58, v61);
    type metadata accessor for MainActor();
    sub_100863F4C(a2, v63);
    v25 = v57;
    v26 = static MainActor.shared.getter();
    v27 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v28 = swift_allocObject();
    *(v28 + 2) = v26;
    *(v28 + 3) = &protocol witness table for MainActor;
    *(v28 + 4) = v25;
    (*(v22 + 32))(&v28[v27], v23, v24);
    v29 = &v28[(v7 + v27 + 15) & 0xFFFFFFFFFFFFFFF0];
    v30 = *(a2 + 16);
    *v29 = *a2;
    *(v29 + 1) = v30;
    *(v29 + 2) = *(a2 + 32);
    *(v29 + 6) = *(a2 + 48);
    sub_10064191C(0, 0, v55, &unk_101481F70, v28);
  }

  else
  {
    v31 = objc_opt_self();
    v32 = [v31 _atomicIncrementAssertCount];
    *&v63[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v63);
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    v35 = [v34 lastPathComponent];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v39 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_10146CA70;
    *(v40 + 56) = &type metadata for Int32;
    *(v40 + 64) = &protocol witness table for Int32;
    *(v40 + 32) = v32;
    v41 = sub_100006370(0, &qword_1019F4D30);
    *(v40 + 96) = v41;
    v42 = sub_1005CF04C();
    *(v40 + 104) = v42;
    *(v40 + 72) = v33;
    *(v40 + 136) = &type metadata for String;
    v43 = sub_1000053B0();
    *(v40 + 112) = v36;
    *(v40 + 120) = v38;
    *(v40 + 176) = &type metadata for UInt;
    *(v40 + 184) = &protocol witness table for UInt;
    *(v40 + 144) = v43;
    *(v40 + 152) = 468;
    v44 = *&v63[0];
    *(v40 + 216) = v41;
    *(v40 + 224) = v42;
    *(v40 + 192) = v44;
    v45 = v33;
    v46 = v44;
    v47 = static os_log_type_t.error.getter();
    sub_100005404(v39, &_mh_execute_header, v47, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v40);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v48 = static os_log_type_t.error.getter();
    sub_100005404(v39, &_mh_execute_header, v48, "Unexpected remote USD renderer UUID.", 36, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v49 = swift_allocObject();
    v49[2] = 8;
    v49[3] = 0;
    v49[4] = 0;
    v49[5] = 0;
    v50 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    [v31 handleFailureInFunction:v51 file:v52 lineNumber:468 isFatal:0 format:v53 args:v50];
  }
}

uint64_t sub_10085D0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = type metadata accessor for MainActor();
  v6[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_10085D1A0;

  return sub_10085BC4C(a5, a6, 0);
}

uint64_t sub_10085D1A0()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10085D2FC;
  }

  else
  {
    v4 = sub_1000875FC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10085D2FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10085D368(uint64_t a1, uint64_t a2)
{
  v3[73] = v2;
  v3[72] = a2;
  v3[71] = a1;
  v4 = type metadata accessor for UUID();
  v3[74] = v4;
  v5 = *(v4 - 8);
  v3[75] = v5;
  v3[76] = *(v5 + 64);
  v3[77] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750);
  v3[78] = swift_task_alloc();

  return _swift_task_switch(sub_10085D470, 0, 0);
}

uint64_t sub_10085D470()
{
  v75 = v0;
  if (static UUID.== infix(_:_:)())
  {
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 576);
    v2 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C4D0;
    UUID.uuidString.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    v4 = static String._fromSubstring(_:)();
    v6 = v5;

    *(inited + 56) = &type metadata for String;
    v7 = sub_1000053B0();
    *(inited + 32) = v4;
    *(inited + 64) = v7;
    *(inited + 40) = v6;
    v8 = *v1;
    v9 = *(v1 + 16);
    v10 = *(v1 + 32);
    *(v0 + 64) = *(v1 + 48);
    *(v0 + 32) = v9;
    *(v0 + 48) = v10;
    *(v0 + 16) = v8;
    sub_100863F4C(v1, v0 + 304);
    v11 = String.init<A>(describing:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v7;
    *(inited + 72) = v11;
    *(inited + 80) = v12;
    Hasher.init(_seed:)();
    v13 = *v1;
    v14 = *(v1 + 16);
    v16 = *(v1 + 32);
    v15 = *(v1 + 40);
    v17 = *(v1 + 48);
    v73 = v2;
    if (v15 >> 62)
    {
      if (v15 >> 62 == 1)
      {
        v18 = v14.i8[0];
        v70 = v13;
        Hasher._combine(_:)(4uLL);
        sub_100C6F158(v74, v70.i64[0], v70.i64[1], v18);
      }

      else
      {
        v44 = vorrq_s8(v14, vdupq_laneq_s64(v13, 1)).u64[0];
        if (v15 != 0x8000000000000000 || v44 | v13.i64[0] | v14.i64[1] | v16 | v17)
        {
          if (v15 == 0x8000000000000000 && v13.i64[0] == 1 && !(v17 | v16 | v44 | v14.i64[1]))
          {
            v45 = 1;
          }

          else
          {
            v45 = 2;
          }
        }

        else
        {
          v45 = 0;
        }

        Hasher._combine(_:)(v45);
      }
    }

    else
    {
      v68 = v14;
      v71 = v13;
      Hasher._combine(_:)(3uLL);
      sub_100865528(v71);
      sub_100865528(v68);
      sub_10086537C(v74, v16);
      Hasher._combine(_:)(v15 & 1);
      sub_100865210(v74, v17);
    }

    v46 = *(v0 + 624);
    v47 = *(v0 + 616);
    v72 = *(v0 + 608);
    v48 = *(v0 + 600);
    v49 = *(v0 + 592);
    v67 = v46;
    v69 = *(v0 + 584);
    v50 = *(v0 + 576);
    v51 = *(v0 + 568);
    v52 = Hasher._finalize()();
    *(inited + 136) = &type metadata for Int;
    *(inited + 144) = &protocol witness table for Int;
    *(inited + 112) = v52 % 10000;
    v53 = static os_log_type_t.debug.getter();
    sub_100005404(v73, &_mh_execute_header, v53, "(AppEx:CoreRE) [%{public}@] new remote state: %{public}@", 56, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v54 = type metadata accessor for TaskPriority();
    (*(*(v54 - 8) + 56))(v46, 1, 1, v54);
    v55 = v49;
    (*(v48 + 16))(v47, v51, v49);
    type metadata accessor for MainActor();
    sub_100863F4C(v50, v0 + 512);
    v56 = v69;
    v57 = static MainActor.shared.getter();
    v58 = (*(v48 + 80) + 40) & ~*(v48 + 80);
    v59 = swift_allocObject();
    *(v59 + 2) = v57;
    *(v59 + 3) = &protocol witness table for MainActor;
    *(v59 + 4) = v56;
    (*(v48 + 32))(&v59[v58], v47, v55);
    v60 = &v59[(v72 + v58 + 15) & 0xFFFFFFFFFFFFFFF0];
    v62 = *(v50 + 16);
    v61 = *(v50 + 32);
    v63 = *v50;
    *(v60 + 6) = *(v50 + 48);
    *(v60 + 1) = v62;
    *(v60 + 2) = v61;
    *v60 = v63;
    v64 = sub_100796D54(0, 0, v67, &unk_101481F58, v59);
    *(v0 + 632) = v64;
    v65 = swift_task_alloc();
    *(v0 + 640) = v65;
    v66 = sub_1005B981C(&unk_1019F6B40);
    *v65 = v0;
    v65[1] = sub_10085DD7C;

    return Task.value.getter(v66, v64, &type metadata for () + 8, v66, &protocol self-conformance witness table for Error);
  }

  else
  {
    v19 = objc_opt_self();
    v20 = [v19 _atomicIncrementAssertCount];
    v74[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v74);
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    v23 = [v22 lastPathComponent];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_10146CA70;
    *(v28 + 56) = &type metadata for Int32;
    *(v28 + 64) = &protocol witness table for Int32;
    *(v28 + 32) = v20;
    v29 = sub_100006370(0, &qword_1019F4D30);
    *(v28 + 96) = v29;
    v30 = sub_1005CF04C();
    *(v28 + 104) = v30;
    *(v28 + 72) = v21;
    *(v28 + 136) = &type metadata for String;
    v31 = sub_1000053B0();
    *(v28 + 112) = v24;
    *(v28 + 120) = v26;
    *(v28 + 176) = &type metadata for UInt;
    *(v28 + 184) = &protocol witness table for UInt;
    *(v28 + 144) = v31;
    *(v28 + 152) = 490;
    v32 = v74[0];
    *(v28 + 216) = v29;
    *(v28 + 224) = v30;
    *(v28 + 192) = v32;
    v33 = v21;
    v34 = v32;
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v28);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v36, "Unexpected remote USD renderer UUID.", 36, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v37 = swift_allocObject();
    v37[2] = 8;
    v37[3] = 0;
    v37[4] = 0;
    v37[5] = 0;
    v38 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    [v19 handleFailureInFunction:v39 file:v40 lineNumber:490 isFatal:0 format:v41 args:v38];

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_10085DD7C()
{
  *(*v1 + 648) = v0;

  if (v0)
  {

    v2 = sub_10085DF10;
  }

  else
  {
    v2 = sub_10085DE98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10085DE98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10085DF10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10085DF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = type metadata accessor for MainActor();
  v6[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_10085E048;

  return sub_10085BC4C(a5, a6, 1);
}

uint64_t sub_10085E048()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1008676F4;
  }

  else
  {
    v4 = sub_100867724;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10085E1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[83] = v5;
  v6[82] = a5;
  v6[81] = a4;
  v6[80] = a3;
  v6[79] = a2;
  v6[84] = _s15AppExRepBackendC12BackendStateOMa(0);
  v6[85] = swift_task_alloc();
  v6[86] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[87] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[88] = v8;
  v6[89] = v7;

  return _swift_task_switch(sub_10085E28C, v8, v7);
}

uint64_t sub_10085E28C()
{
  v92 = v0;
  v1 = v0[83];
  v2 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_metalLayer);
  v0[90] = v2;
  if (v2)
  {
    v3 = *(**(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState) + 128);
    v4 = v2;

    v3(v5);

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v90 = v4;
    if (EnumCaseMultiPayload == 2)
    {
      v31 = v0[86];
      v87 = v31[1];
      v88 = *v31;
      v85 = v31[2];
      v86 = v31[3];
      v83 = *(v31 + 9);
      v84 = *(v31 + 8);
      v82 = *(v31 + 10);
      v32 = *(v31 + 14);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = v0[86];
      v87 = v7[1];
      v88 = *v7;
      v85 = v7[2];
      v86 = v7[3];
      v83 = *(v7 + 9);
      v84 = *(v7 + 8);
      v82 = *(v7 + 10);
LABEL_9:
      if (qword_1019F21E0 != -1)
      {
        swift_once();
      }

      v33 = v0[85];
      v34 = v0[82];
      v80 = v0[81];
      v35 = v0[80];
      v36 = v0;
      v37 = v0[79];
      v81 = v36;
      v78 = static OS_os_log.crlThreeDimensionalObjects;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      UUID.uuidString.getter();
      String.index(_:offsetBy:)();
      String.subscript.getter();

      v39 = static String._fromSubstring(_:)();
      v41 = v40;

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v39;
      *(inited + 40) = v41;
      v42 = [v37 width];
      *(inited + 96) = &type metadata for Int;
      *(inited + 104) = &protocol witness table for Int;
      *(inited + 72) = v42;
      v43 = [v37 height];
      *(inited + 136) = &type metadata for Int;
      *(inited + 144) = &protocol witness table for Int;
      *(inited + 112) = v43;
      v44 = static os_log_type_t.debug.getter();
      sub_100005404(v78, &_mh_execute_header, v44, "(AppEx:CoreRE) [%{public}@] new texture data received (%{public}lu x %{public}lu)", 81, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v45 = &v90[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData];
      v46 = *&v90[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData];
      v79 = *&v90[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData + 8];
      v47 = *&v90[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData + 16];
      v48 = *&v90[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData + 24];
      *v45 = v37;
      *(v45 + 1) = v35;
      *(v45 + 2) = v80;
      *(v45 + 3) = v34;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v49 = v34;
      sub_100863DD8(v46, v79, v47, v48);
      sub_100B4F184();
      *v33 = v88;
      *(v33 + 16) = v87;
      *(v33 + 32) = v85;
      *(v33 + 48) = v86;
      *(v33 + 64) = v84;
      *(v33 + 72) = v83;
      *(v33 + 80) = v82;
      *(v33 + 88) = v37;
      *(v33 + 96) = v35;
      *(v33 + 104) = v80;
      *(v33 + 112) = v49;
      swift_storeEnumTagMultiPayload();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v50 = v49;
      v51 = swift_task_alloc();
      v81[91] = v51;
      *v51 = v81;
      v51[1] = sub_10085EE0C;
      v52 = v81[85];

      return sub_100853B24(v52);
    }

    v54 = objc_opt_self();
    v55 = [v54 _atomicIncrementAssertCount];
    v91 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v91);
    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    v58 = [v57 lastPathComponent];

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v89 = v0[86];
    v62 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v63 = swift_initStackObject();
    *(v63 + 16) = xmmword_10146CA70;
    *(v63 + 56) = &type metadata for Int32;
    *(v63 + 64) = &protocol witness table for Int32;
    *(v63 + 32) = v55;
    v64 = sub_100006370(0, &qword_1019F4D30);
    *(v63 + 96) = v64;
    v65 = sub_1005CF04C();
    *(v63 + 104) = v65;
    *(v63 + 72) = v56;
    *(v63 + 136) = &type metadata for String;
    v66 = sub_1000053B0();
    *(v63 + 112) = v59;
    *(v63 + 120) = v61;
    *(v63 + 176) = &type metadata for UInt;
    *(v63 + 184) = &protocol witness table for UInt;
    *(v63 + 144) = v66;
    *(v63 + 152) = 528;
    v67 = v91;
    *(v63 + 216) = v64;
    *(v63 + 224) = v65;
    *(v63 + 192) = v67;
    v68 = v56;
    v69 = v67;
    v70 = static os_log_type_t.error.getter();
    sub_100005404(v62, &_mh_execute_header, v70, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v63);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v71 = static os_log_type_t.error.getter();
    sub_100005404(v62, &_mh_execute_header, v71, "Unexpected state for receiving texture data.", 44, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v72 = swift_allocObject();
    v72[2] = 8;
    v72[3] = 0;
    v72[4] = 0;
    v72[5] = 0;
    v73 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v74 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v75 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v76 = String._bridgeToObjectiveC()();

    [v54 handleFailureInFunction:v74 file:v75 lineNumber:528 isFatal:0 format:v76 args:v73];

    sub_100866DB0(v89, _s15AppExRepBackendC12BackendStateOMa);
  }

  else
  {

    v8 = objc_opt_self();
    v9 = [v8 _atomicIncrementAssertCount];
    v91 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v91);
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_10146CA70;
    *(v17 + 56) = &type metadata for Int32;
    *(v17 + 64) = &protocol witness table for Int32;
    *(v17 + 32) = v9;
    v18 = sub_100006370(0, &qword_1019F4D30);
    *(v17 + 96) = v18;
    v19 = sub_1005CF04C();
    *(v17 + 104) = v19;
    *(v17 + 72) = v10;
    *(v17 + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(v17 + 112) = v13;
    *(v17 + 120) = v15;
    *(v17 + 176) = &type metadata for UInt;
    *(v17 + 184) = &protocol witness table for UInt;
    *(v17 + 144) = v20;
    *(v17 + 152) = 510;
    v21 = v91;
    *(v17 + 216) = v18;
    *(v17 + 224) = v19;
    *(v17 + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v17);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "USD renderer configuration mismatch - expected to find metal layer.", 67, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v26[4] = 0;
    v26[5] = 0;
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    [v8 handleFailureInFunction:v28 file:v29 lineNumber:510 isFatal:0 format:v30 args:v27];
  }

  v77 = v0[1];

  return v77();
}

uint64_t sub_10085EE0C()
{
  v2 = *v1;
  *(*v1 + 736) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = sub_10085EFE8;
  }

  else
  {
    v5 = sub_10085EF48;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10085EF48()
{
  v1 = v0[90];
  v2 = v0[85];

  sub_100866DB0(v2, _s15AppExRepBackendC12BackendStateOMa);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10085EFE8()
{
  v1 = v0[90];
  v2 = v0[85];

  sub_100866DB0(v2, _s15AppExRepBackendC12BackendStateOMa);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10085F090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[35] = a5;
  v6[36] = v5;
  v6[33] = a3;
  v6[34] = a4;
  v6[31] = a1;
  v6[32] = a2;
  v7 = type metadata accessor for UUID();
  v6[37] = v7;
  v8 = *(v7 - 8);
  v6[38] = v8;
  v6[39] = *(v8 + 64);
  v6[40] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750);
  v6[41] = swift_task_alloc();

  return _swift_task_switch(sub_10085F198, 0, 0);
}

uint64_t sub_10085F198()
{
  v51 = v0;
  if (static UUID.== infix(_:_:)())
  {
    v2 = v0[40];
    v1 = v0[41];
    v3 = v0[38];
    v48 = v0[39];
    v49 = v1;
    v5 = v0[36];
    v4 = v0[37];
    v47 = v4;
    v6 = v0[34];
    v7 = v0[33];
    v45 = v0[32];
    v46 = v0[35];
    v8 = v0[31];
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
    (*(v3 + 16))(v2, v8, v4);
    type metadata accessor for MainActor();
    v10 = v5;
    swift_unknownObjectRetain();
    v11 = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v12 = v46;
    v13 = static MainActor.shared.getter();
    v14 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = v13;
    *(v15 + 3) = &protocol witness table for MainActor;
    *(v15 + 4) = v10;
    (*(v3 + 32))(&v15[v14], v2, v47);
    v16 = &v15[(v48 + v14 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v16 = v45;
    *(v16 + 1) = v11;
    *(v16 + 2) = v6;
    *(v16 + 3) = v12;
    v17 = sub_100796D54(0, 0, v49, &unk_101481F28, v15);
    v0[42] = v17;
    v18 = swift_task_alloc();
    v0[43] = v18;
    v19 = sub_1005B981C(&unk_1019F6B40);
    *v18 = v0;
    v18[1] = sub_10085F7A4;

    return Task.value.getter(v19, v17, &type metadata for () + 8, v19, &protocol self-conformance witness table for Error);
  }

  else
  {
    v20 = objc_opt_self();
    v21 = [v20 _atomicIncrementAssertCount];
    v50 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v50);
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v23 lastPathComponent];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v21;
    v30 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v30;
    v31 = sub_1005CF04C();
    *(inited + 104) = v31;
    *(inited + 72) = v22;
    *(inited + 136) = &type metadata for String;
    v32 = sub_1000053B0();
    *(inited + 112) = v25;
    *(inited + 120) = v27;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v32;
    *(inited + 152) = 537;
    v33 = v50;
    *(inited + 216) = v30;
    *(inited + 224) = v31;
    *(inited + 192) = v33;
    v34 = v22;
    v35 = v33;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v37, "Unexpected remote USD renderer UUID.", 36, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v38 = swift_allocObject();
    v38[2] = 8;
    v38[3] = 0;
    v38[4] = 0;
    v38[5] = 0;
    v39 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    [v20 handleFailureInFunction:v40 file:v41 lineNumber:537 isFatal:0 format:v42 args:v39];

    v43 = v0[1];

    return v43();
  }
}

uint64_t sub_10085F7A4()
{
  *(*v1 + 352) = v0;

  if (v0)
  {

    v2 = sub_10085F934;
  }

  else
  {
    v2 = sub_10085F8C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10085F8C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10085F934()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10085F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = type metadata accessor for MainActor();
  v8[3] = static MainActor.shared.getter();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_10085FA90;

  return sub_10085E1A4(a5, a6, a7, a8, v16);
}

uint64_t sub_10085FA90()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10085FC50;
  }

  else
  {
    v4 = sub_10085FBEC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10085FBEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10085FC50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10085FDB8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10085FE9C()
{
  type metadata accessor for CRLUSDRendering.SceneRequest(319);
  if (v0 <= 0x3F)
  {
    sub_10085FF2C();
    if (v1 <= 0x3F)
    {
      sub_10085FF90();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10085FF2C()
{
  if (!qword_101A04BA8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_101A04BA8);
    }
  }
}

void sub_10085FF90()
{
  if (!qword_101A04BB0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_101A04BB0);
    }
  }
}

uint64_t sub_100860010(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_10085D368(a1, a2);
}

uint64_t sub_1008600B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10002D4C8;

  return sub_10085F090(a1, a2, a3, a4, a5);
}

uint64_t sub_100860178@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1008601F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_10085433C(a1);
}

uint64_t sub_100860284(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_10086031C, v4, v3);
}

uint64_t sub_10086031C()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1008603E0;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1008663FC(0x6353657461647075, 0xED00002928656E65, v3, v3, v4);
}

uint64_t sub_1008603E0()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(*v1 + 64) = v0;

  v4 = *(v2 + 48);
  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100860598;
  }

  else
  {
    v6 = sub_100860534;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100860534()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100860598()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008605FC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D3D4;

  return sub_100859158(a1, a2);
}

uint64_t sub_1008606A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100860738, v4, v3);
}

uint64_t sub_100860738()
{
  v1 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_100860800;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1008661A8(0xD000000000000010, 0x800000010156F620, v3, v3, v4);
}

uint64_t sub_100860800()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(*v1 + 64) = v0;

  v4 = *(v2 + 48);
  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1008676F8;
  }

  else
  {
    v6 = sub_100867728;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100860978(float a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  type metadata accessor for MainActor();
  *(v2 + 24) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return _swift_task_switch(sub_100860A14, v4, v3);
}

uint64_t sub_100860A14()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100860ADC;
  v3 = *(v0 + 16);
  v4 = *(v0 + 80);

  return sub_1008666C8(0x70616E53656B6174, 0xEE002928746F6873, v3, v3, v4);
}

uint64_t sub_100860ADC(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 16);
  *(*v4 + 56) = v3;

  if (v3)
  {
    v10 = *(v8 + 32);
    v11 = *(v8 + 40);
    v12 = sub_100860CA8;
  }

  else
  {
    *(v8 + 84) = a3;
    *(v8 + 64) = a2;
    *(v8 + 72) = a1;
    v10 = *(v8 + 32);
    v11 = *(v8 + 40);
    v12 = sub_100860C38;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_100860C38()
{
  v1 = *(v0 + 84);

  v2 = *(v0 + 8);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  return v2(v3, v4, v1 & 1);
}

uint64_t sub_100860CA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100860D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a3;
  v5[7] = a4;
  v5[4] = a1;
  v5[5] = a2;
  v5[3] = v4;
  v5[8] = type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[10] = v7;
  v5[11] = v6;

  return _swift_task_switch(sub_100860DB0, v7, v6);
}

uint64_t sub_100860DB0()
{
  v8 = *(v0 + 48);
  v1 = static MainActor.shared.getter();
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = v0 + 24;
  *(v2 + 24) = v8;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = type metadata accessor for CRLUSDRendererExtensionShared.AsyncRendererSenderProxy();
  *v3 = v0;
  v3[1] = sub_100860EBC;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, &protocol witness table for MainActor, v5, v6, sub_100867248, v2, v4);
}

uint64_t sub_100860EBC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_100867718;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_10086771C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100860FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a3;
  v5[9] = a4;
  v5[6] = a1;
  v5[7] = a2;
  v5[5] = v4;
  v5[10] = type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v7;
  v5[13] = v6;

  return _swift_task_switch(sub_100861084, v7, v6);
}

uint64_t sub_100861084()
{
  v8 = *(v0 + 64);
  v1 = static MainActor.shared.getter();
  *(v0 + 112) = v1;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *(v2 + 16) = v0 + 40;
  *(v2 + 24) = v8;
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  v4 = sub_1005B981C(qword_101A0BFA0);
  *v3 = v0;
  v3[1] = sub_10086119C;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, &protocol witness table for MainActor, v5, v6, sub_100866E10, v2, v4);
}

uint64_t sub_10086119C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_10086132C;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1008612C0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008612C0()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_10086132C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008613A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a3;
  v5[7] = a4;
  v5[4] = a1;
  v5[5] = a2;
  v5[3] = v4;
  v5[8] = type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[10] = v7;
  v5[11] = v6;

  return _swift_task_switch(sub_100861448, v7, v6);
}

uint64_t sub_100861448()
{
  v8 = *(v0 + 48);
  v1 = static MainActor.shared.getter();
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = v0 + 24;
  *(v2 + 24) = v8;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = sub_1005B981C(&unk_1019FB790);
  *v3 = v0;
  v3[1] = sub_100861560;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, &protocol witness table for MainActor, v5, v6, sub_1008673E4, v2, v4);
}

uint64_t sub_100861560()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1008616EC;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_100861684;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100861684()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1008616EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100861764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v5[2] = v4;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_100861808, v7, v6);
}

uint64_t sub_100861808()
{
  v7 = *(v0 + 40);
  v1 = static MainActor.shared.getter();
  *(v0 + 88) = v1;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *(v2 + 16) = v0 + 16;
  *(v2 + 24) = v7;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_100861910;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 120, v1, &protocol witness table for MainActor, v4, v5, sub_100867280, v2, &type metadata for Int32);
}

uint64_t sub_100861910()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_100861A9C;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_100861A34;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100861A34()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100861A9C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100861B14(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v6 = sub_1005B981C(&qword_101A04C00);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(a2 + 16);
  (*(v7 + 16))(&v17 - v9, a1, v6, v8);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_100867258;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100863184;
  aBlock[3] = &unk_101889B38;
  v14 = _Block_copy(aBlock);

  v15 = [v11 remoteObjectProxyWithErrorHandler:v14];
  _Block_release(v14);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100064288(aBlock, v19);
  sub_100006370(0, &qword_1019F54D0);
  swift_dynamicCast();
  v19[0] = v18;
  v16 = v18;
  a3(v19, a1);

  sub_100005070(aBlock);
}

void sub_100861D88(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v6 = sub_1005B981C(&unk_101A050F0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(a2 + 16);
  (*(v7 + 16))(&v17 - v9, a1, v6, v8);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_100867418;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100863184;
  aBlock[3] = &unk_101889D18;
  v14 = _Block_copy(aBlock);

  v15 = [v11 remoteObjectProxyWithErrorHandler:v14];
  _Block_release(v14);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100064288(aBlock, v19);
  sub_100006370(0, &qword_1019F54D0);
  swift_dynamicCast();
  v19[0] = v18;
  v16 = v18;
  a3(v19, a1);

  sub_100005070(aBlock);
}

void sub_100861FFC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v6 = sub_1005B981C(&unk_101A050F0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(a2 + 16);
  (*(v7 + 16))(&v17 - v9, a1, v6, v8);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_1008676F0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100863184;
  aBlock[3] = &unk_101889958;
  v14 = _Block_copy(aBlock);

  v15 = [v11 remoteObjectProxyWithErrorHandler:v14];
  _Block_release(v14);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100064288(aBlock, v19);
  sub_100006370(0, &qword_1019F54D0);
  swift_dynamicCast();
  v19[0] = v18;
  v16 = v18;
  a3(v19, a1);

  sub_100005070(aBlock);
}

void sub_100862270(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v6 = sub_1005B981C(&qword_101A1B3C0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(a2 + 16);
  (*(v7 + 16))(&v17 - v9, a1, v6, v8);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_100866E20;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100863184;
  aBlock[3] = &unk_101889908;
  v14 = _Block_copy(aBlock);

  v15 = [v11 remoteObjectProxyWithErrorHandler:v14];
  _Block_release(v14);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100064288(aBlock, v19);
  sub_100006370(0, &qword_1019F54D0);
  swift_dynamicCast();
  v19[0] = v18;
  v16 = v18;
  a3(v19, a1);

  sub_100005070(aBlock);
}

void sub_1008624E4(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v6 = sub_1005B981C(&qword_101A04C28);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(a2 + 16);
  (*(v7 + 16))(&v17 - v9, a1, v6, v8);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_1008673F4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100863184;
  aBlock[3] = &unk_101889CC8;
  v14 = _Block_copy(aBlock);

  v15 = [v11 remoteObjectProxyWithErrorHandler:v14];
  _Block_release(v14);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100064288(aBlock, v19);
  sub_100006370(0, &qword_1019F54D0);
  swift_dynamicCast();
  v19[0] = v18;
  v16 = v18;
  a3(v19, a1);

  sub_100005070(aBlock);
}

void sub_100862758(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v6 = sub_1005B981C(&qword_101A04C20);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(a2 + 16);
  (*(v7 + 16))(&v17 - v9, a1, v6, v8);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_1008673D0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100863184;
  aBlock[3] = &unk_101889C78;
  v14 = _Block_copy(aBlock);

  v15 = [v11 remoteObjectProxyWithErrorHandler:v14];
  _Block_release(v14);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100064288(aBlock, v19);
  sub_100006370(0, &qword_1019F54D0);
  swift_dynamicCast();
  v19[0] = v18;
  v16 = v18;
  a3(v19, a1);

  sub_100005070(aBlock);
}

void sub_1008629CC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v6 = sub_1005B981C(&qword_101A04C08);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(a2 + 16);
  (*(v7 + 16))(&v17 - v9, a1, v6, v8);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_10086726C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100863184;
  aBlock[3] = &unk_101889B88;
  v14 = _Block_copy(aBlock);

  v15 = [v11 remoteObjectProxyWithErrorHandler:v14];
  _Block_release(v14);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100064288(aBlock, v19);
  sub_100006370(0, &qword_1019F54D0);
  swift_dynamicCast();
  v19[0] = v18;
  v16 = v18;
  a3(v19, a1);

  sub_100005070(aBlock);
}

void sub_100862C40(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v6 = sub_1005B981C(&qword_101A135D0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(a2 + 16);
  (*(v7 + 16))(&v17 - v9, a1, v6, v8);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_100867290;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100863184;
  aBlock[3] = &unk_101889BD8;
  v14 = _Block_copy(aBlock);

  v15 = [v11 remoteObjectProxyWithErrorHandler:v14];
  _Block_release(v14);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100064288(aBlock, v19);
  sub_100006370(0, &qword_1019F54D0);
  swift_dynamicCast();
  v19[0] = v18;
  v16 = v18;
  a3(v19, a1);

  sub_100005070(aBlock);
}

void sub_100862EB4(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v6 = sub_1005B981C(&unk_101A050F0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(a2 + 16);
  (*(v7 + 16))(&v17 - v9, a1, v6, v8);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_1008676F0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100863184;
  aBlock[3] = &unk_101889AE8;
  v14 = _Block_copy(aBlock);

  v15 = [v11 remoteObjectProxyWithErrorHandler:v14];
  _Block_release(v14);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100064288(aBlock, v19);
  sub_100006370(0, &qword_1019F54D0);
  swift_dynamicCast();
  v19[0] = v18;
  v16 = v18;
  a3(v19, a1);

  sub_100005070(aBlock);
}

uint64_t sub_100863128(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_errorRetain();
  sub_1005B981C(a3);
  return CheckedContinuation.resume(throwing:)();
}

void sub_100863184(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1008631EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v5[2] = v4;
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[10] = v7;
  v5[11] = v6;

  return _swift_task_switch(sub_1008632A8, v7, v6);
}

uint64_t sub_1008632A8()
{
  v7 = *(v0 + 40);
  v1 = static MainActor.shared.getter();
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = v0 + 16;
  *(v2 + 24) = v7;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_1008633AC;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v1, &protocol witness table for MainActor, v4, v5, sub_100867408, v2, &type metadata for () + 8);
}

uint64_t sub_1008633AC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1008635B8;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1008634D0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008634D0()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100863554, v1, v0);
}

uint64_t sub_100863554()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008635B8()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100863658, v1, v0);
}

uint64_t sub_100863658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008636BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v5[2] = v4;
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[10] = v7;
  v5[11] = v6;

  return _swift_task_switch(sub_100863778, v7, v6);
}

uint64_t sub_100863778()
{
  v7 = *(v0 + 40);
  v1 = static MainActor.shared.getter();
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = v0 + 16;
  *(v2 + 24) = v7;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_10086387C;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v1, &protocol witness table for MainActor, v4, v5, sub_100866E50, v2, &type metadata for () + 8);
}

uint64_t sub_10086387C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_100863A24;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1008639A0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008639A0()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10086772C, v1, v0);
}

uint64_t sub_100863A24()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008676FC, v1, v0);
}

uint64_t sub_100863AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v5[2] = v4;
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[10] = v7;
  v5[11] = v6;

  return _swift_task_switch(sub_100863B80, v7, v6);
}

uint64_t sub_100863B80()
{
  v7 = *(v0 + 40);
  v1 = static MainActor.shared.getter();
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = v0 + 16;
  *(v2 + 24) = v7;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_10086387C;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v1, &protocol witness table for MainActor, v4, v5, sub_100867238, v2, &type metadata for () + 8);
}

uint64_t sub_100863C84(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10002D3D4;

  return sub_10085F9A0(a1, v5, v6, v7, v1 + v4, v9, v10, v11);
}

void sub_100863DD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100863E8C(uint64_t result, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 62 == 1)
  {

    return sub_100863EEC(result, a2, a3);
  }

  else if (!(a6 >> 62))
  {
  }

  return result;
}

uint64_t sub_100863EEC(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 < 4u)
  {
  }

  if (a3 == 4)
  {
    return sub_100863F38(result, a2);
  }

  if (a3 == 5)
  {
  }

  return result;
}

uint64_t sub_100863F38(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_100863FA8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_10085DF80(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

uint64_t sub_1008640D4(uint64_t a1)
{
  v2 = v1;
  v29 = _s15AppExRepBackendC12BackendStateOMa(0);
  __chkstk_darwin(v29);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1005B981C(&qword_101A04C50);
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = (&v24 - v6);
  v8 = sub_1005B981C(&qword_101A04BF0);
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_1005B981C(&qword_101A04C58);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v17 = v2 + *(*v2 + 88);
  v26 = a1;
  sub_100866D48(a1, v17, _s15AppExRepBackendC12BackendStateOMa);
  v18 = sub_1005B981C(&qword_101A04C60);
  v19 = *(v18 - 8);
  (*(v19 + 56))(v16, 1, 1, v18);
  *v7 = 1;
  (*(v5 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v28);
  v30 = v16;
  v20 = v27;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v20 + 16))(v2 + *(*v2 + 96), v10, v8);
  sub_10000BE14(v16, v13, &qword_101A04C58);
  result = (*(v19 + 48))(v13, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v19 + 32))(v2 + *(*v2 + 104), v13, v18);
    v22 = v26;
    sub_100866D48(v26, v25, _s15AppExRepBackendC12BackendStateOMa);
    sub_1005B981C(&qword_101A04C68);
    swift_allocObject();
    v23 = CurrentValueSubject.init(_:)();
    sub_100866DB0(v22, _s15AppExRepBackendC12BackendStateOMa);
    (*(v20 + 8))(v10, v8);
    *(v2 + *(*v2 + 112)) = v23;
    sub_10000CAAC(v16, &qword_101A04C58);
    return v2;
  }

  return result;
}

uint64_t sub_10086453C(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v29 = a4;
  v31 = a1;
  v32 = a2;
  v28 = sub_1005B981C(&qword_101A04C98);
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = (&v27 - v10);
  v30 = sub_1005B981C(&qword_101A04CA0);
  v27 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v27 - v12;
  v14 = sub_1005B981C(&qword_101A04CA8);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  v20 = v29;
  *(v5 + 4) = a3;
  *(v5 + 5) = v20;
  v21 = sub_1005B981C(&qword_101A04CB0);
  v22 = *(v21 - 8);
  (*(v22 + 56))(v19, 1, 1, v21);
  *v11 = 1;
  (*(v9 + 104))(v11, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v28);
  v23 = a3;
  v33 = v19;
  v24 = v27;
  v28 = v23;
  sub_100867608(v31, v32, v23, v20);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v24 + 16))(&v5[*(*v5 + 96)], v13, v30);
  sub_10000BE14(v19, v16, &qword_101A04CA8);
  result = (*(v22 + 48))(v16, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v22 + 32))(&v5[*(*v5 + 104)], v16, v21);
    v34 = v31;
    v35 = v32;
    v36 = v28;
    v37 = v29;
    sub_1005B981C(&qword_101A04CB8);
    swift_allocObject();
    v26 = CurrentValueSubject.init(_:)();
    (*(v24 + 8))(v13, v30);
    *&v5[*(*v5 + 112)] = v26;
    sub_10000CAAC(v19, &qword_101A04CA8);
    return v5;
  }

  return result;
}

uint64_t sub_100864928(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v29 = a4;
  v31 = a1;
  v32 = a2;
  v28 = sub_1005B981C(&qword_101A04C70);
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = (&v27 - v10);
  v30 = sub_1005B981C(&qword_101A04C78);
  v27 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v27 - v12;
  v14 = sub_1005B981C(&qword_101A04C80);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  v20 = v29;
  *(v5 + 4) = a3;
  *(v5 + 5) = v20;
  v21 = sub_1005B981C(&qword_101A04C88);
  v22 = *(v21 - 8);
  (*(v22 + 56))(v19, 1, 1, v21);
  *v11 = 1;
  (*(v9 + 104))(v11, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v28);
  v23 = a3;
  v33 = v19;
  v24 = v27;
  v28 = v23;
  sub_100867608(v31, v32, v23, v20);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v24 + 16))(&v5[*(*v5 + 96)], v13, v30);
  sub_10000BE14(v19, v16, &qword_101A04C80);
  result = (*(v22 + 48))(v16, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v22 + 32))(&v5[*(*v5 + 104)], v16, v21);
    v34 = v31;
    v35 = v32;
    v36 = v28;
    v37 = v29;
    sub_1005B981C(&qword_101A04C90);
    swift_allocObject();
    v26 = CurrentValueSubject.init(_:)();
    (*(v24 + 8))(v13, v30);
    *&v5[*(*v5 + 112)] = v26;
    sub_10000CAAC(v19, &qword_101A04C80);
    return v5;
  }

  return result;
}

uint64_t sub_100864D14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  sub_10000CAAC(a2, a3);
  v8 = sub_1005B981C(a5);
  v11 = *(v8 - 8);
  (*(v11 + 16))(a2, a1, v8);
  v9 = *(v11 + 56);

  return v9(a2, 0, 1, v8);
}

void sub_100864DE8(__int128 *a1, uint64_t a2)
{
  v42 = a1;
  v44 = type metadata accessor for AnyCRValue();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A04C30);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (v37 - v10);
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  v37[1] = v3 + 16;
  v43 = (v3 + 32);
  v39 = v3;
  v40 = a2;
  v41 = (v3 + 8);

  v17 = 0;
  v38 = v8;
  v37[0] = v11;
  v45 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v18 << 6);
      v23 = v39;
      v24 = *(*(v40 + 48) + 8 * v22);
      v25 = v44;
      (*(v39 + 16))(v5, *(v40 + 56) + *(v39 + 72) * v22, v44);
      v26 = sub_1005B981C(&qword_101A04C38);
      v27 = *(v26 + 48);
      v28 = v38;
      *v38 = v24;
      v29 = *(v23 + 32);
      v8 = v28;
      v29(&v28[v27], v5, v25);
      (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
      v20 = v18;
      v11 = v37[0];
LABEL_13:
      sub_10086742C(v8, v11);
      v30 = sub_1005B981C(&qword_101A04C38);
      if ((*(*(v30 - 8) + 48))(v11, 1, v30) == 1)
      {
        break;
      }

      v31 = *v11;
      v32 = v44;
      (*v43)(v5, v11 + *(v30 + 48), v44);
      v33 = v42[3];
      v48 = v42[2];
      v49 = v33;
      v50 = *(v42 + 8);
      v34 = v42[1];
      v46 = *v42;
      v47 = v34;
      Hasher._combine(_:)(v31);
      sub_10086749C();
      dispatch thunk of Hashable.hash(into:)();
      (*v41)(v5, v32);
      v35 = Hasher._finalize()();
      v17 = v20;
      v45 ^= v35;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    Hasher._combine(_:)(v45);
  }

  else
  {
LABEL_5:
    if (v16 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    else
    {
      v19 = v16;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
        v36 = sub_1005B981C(&qword_101A04C38);
        (*(*(v36 - 8) + 56))(v8, 1, 1, v36);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_100865210(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        String.hash(into:)();

        String.hash(into:)();

        v7 ^= Hasher._finalize()();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

void sub_10086537C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = *(*(a2 + 48) + 16 * v11 + 8);
    v13 = *(*(a2 + 56) + 8 * v11);

    if (!v12)
    {
LABEL_20:

      Hasher._combine(_:)(v8);
      return;
    }

    String.hash(into:)();

    if (v13 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v13 & 1);
      Hasher._combine(_:)(BYTE1(v13) & 1);
      Hasher._combine(_:)(BYTE2(v13) & 1);
      Hasher._combine(_:)(BYTE3(v13) & 1);
      if ((v13 & 0x7FFFFF00000000) == 0 && (v13 & 0x7F80000000000000) == 0)
      {
        v15 = 0;
      }

      else
      {
        v15 = HIDWORD(v13);
      }

      Hasher._combine(_:)(v15);
    }

    v6 &= v6 - 1;
    v8 ^= Hasher._finalize()();
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_20;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_100865528(__n128 a1)
{
  if (a1.n128_f32[0] == 0.0)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = a1.n128_f32[0];
  }

  Hasher._combine(_:)(LODWORD(v1));
  v2 = a1.n128_f32[1];
  if (a1.n128_f32[1] == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v2));
  v3 = a1.n128_f32[2];
  if (a1.n128_f32[2] == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v3));
}

uint64_t sub_1008655A0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_100863E8C(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40));

  return _swift_deallocObject(v0, v5 + 56, v3 | 0xF);
}

uint64_t sub_100865690(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D3D4;

  return sub_10085D0D8(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

id sub_1008657BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = ~a3;
  ObjectType = swift_getObjectType();
  v7 = _s15AppExRepBackendC12BackendStateOMa(0);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = &v4[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_delegate];
  *&v4[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_metalLayer;
  *&v4[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_metalLayer] = 0;
  v15 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend__backendState;
  swift_storeEnumTagMultiPayload();
  sub_100866D48(v12, v9, _s15AppExRepBackendC12BackendStateOMa);
  sub_1005B981C(&qword_101A04C48);
  swift_allocObject();
  v16 = sub_1008640D4(v9);
  sub_100866DB0(v12, _s15AppExRepBackendC12BackendStateOMa);
  *&v4[v15] = v16;
  *&v4[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_firstFrameRenderedSubscription] = 0;
  UUID.init()();
  *(v13 + 1) = a2;
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_flags] = v22 & 1 | a3 & 0xFFFFFFFFFFFFFFFDLL;
  v17 = [objc_allocWithZone(_s10MetalLayerCMa()) init];
  [v17 setFrame:{0.0, 0.0, 300.0, 300.0}];
  v18 = *&v4[v14];
  *&v4[v14] = v17;
  v19 = v17;

  v24.receiver = v4;
  v24.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v24, "init");

  return v20;
}

uint64_t sub_1008659F4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v6;
  v2[14] = v5;

  return _swift_task_switch(sub_100865B00, v6, v5);
}

uint64_t sub_100865B00()
{
  receiver = v0[5].receiver;
  v2 = v0[3].receiver;
  super_class = v0[3].super_class;
  v4 = v0[2].super_class;
  v5 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_uuid;
  v6 = *(super_class + 2);
  v0[7].super_class = v6;
  v0[8].receiver = ((super_class + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  (v6)(receiver, v4 + v5, v2);
  v7 = type metadata accessor for CRLUSDRendererExtensionShared.RendererDelegateReceiverProxy();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared29RendererDelegateReceiverProxy_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_101889830;
  swift_unknownObjectWeakAssign();
  v0[1].receiver = v8;
  v0[1].super_class = v7;

  v9 = objc_msgSendSuper2(v0 + 1, "init");
  v0[8].super_class = v9;
  v0[9].receiver = *(v4 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_flags);
  v10 = v9;
  v0[9].super_class = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[10].receiver = v12;
  v0[10].super_class = v11;

  return _swift_task_switch(sub_100865C4C, v12, v11);
}

uint64_t sub_100865C4C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[10];
  v4 = swift_task_alloc();
  v0[22] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_100865D50;

  return sub_100860D0C(0xD00000000000002CLL, 0x800000010156F7C0, sub_1008671B4, v4);
}

uint64_t sub_100865D50(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {

    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_100866070;
  }

  else
  {
    v4[25] = a1;

    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_100865E98;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100865E98()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100865F08, v1, v2);
}

uint64_t sub_100865F08()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];

  v1(v2, v3, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, v2, v5);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v10 = AnyCancellable.init(_:)();

  (*(v4 + 8))(v3, v5);

  v11 = v0[1];
  v12 = v0[25];
  v13 = v0[17];
  v14 = v0[4];

  return v11(v14, v12, v13, v10);
}

uint64_t sub_100866070()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_1008660E0, v1, v2);
}

uint64_t sub_1008660E0()
{
  v1 = v0[17];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];

  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1008661A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  v5[39] = _s15AppExRepBackendC12BackendStateOMa(0);
  v5[40] = swift_task_alloc();
  v5[41] = type metadata accessor for MainActor();
  v5[42] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[43] = v8;
  *v8 = v5;
  v8[1] = sub_1008662A4;

  return sub_10085968C(v5 + 233, a4, a5);
}

uint64_t sub_1008662A4()
{
  *(*v1 + 352) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1008676C0;
  }

  else
  {
    v4 = sub_1008676BC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1008663FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  v5[39] = _s15AppExRepBackendC12BackendStateOMa(0);
  v5[40] = swift_task_alloc();
  v5[41] = type metadata accessor for MainActor();
  v5[42] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[43] = v8;
  *v8 = v5;
  v8[1] = sub_1008664F8;

  return sub_1008586A4(v5 + 233, a4, a5);
}

uint64_t sub_1008664F8()
{
  *(*v1 + 352) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10085838C;
  }

  else
  {
    v4 = sub_100866650;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100866650()
{

  v1 = *(v0 + 233);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1008666C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v5[42] = _s15AppExRepBackendC12BackendStateOMa(0);
  v5[43] = swift_task_alloc();
  v5[44] = type metadata accessor for MainActor();
  v5[45] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[46] = v8;
  *v8 = v5;
  v8[1] = sub_1008667C4;

  return sub_10085A630((v5 + 27), a4, a5);
}

uint64_t sub_1008667C4()
{
  *(*v1 + 376) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1008669A8;
  }

  else
  {
    v4 = sub_10086691C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10086691C()
{

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);

  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_1008669A8()
{

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 376);
  v2 = *(v0 + 320);
  v17 = *(v0 + 312);
  v18 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v7;
  *(inited + 64) = v7;
  *(inited + 72) = v17;
  *(inited + 80) = v2;
  swift_getErrorValue();

  v8 = Error.localizedDescription.getter();
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  v10 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v10, "(AppEx:CoreRE) [%{public}@] %{public}@ error: %{public}@", 56, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  *(v0 + 288) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 240);
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
  }

  else
  {
    *(v0 + 296) = *(v0 + 376);
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 264);
      v12 = *(v0 + 272);
      v13 = 4;
    }

    else
    {
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = 2;
    }
  }

  v14 = *(v0 + 344);
  *v14 = v11;
  *(v14 + 8) = v12;
  *(v14 + 16) = v13;
  swift_storeEnumTagMultiPayload();
  sub_1008539A4(v14);
  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100866CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100866D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100866DB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100866EFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002D4C8;

  return sub_100854830(a1, v5, v4);
}

uint64_t sub_100866FA8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_100866DB0(a1, type metadata accessor for CRLUSDRendering.SceneRequest);
  return sub_100866D48(v3, a1, type metadata accessor for CRLUSDRendering.SceneRequest);
}

uint64_t sub_100867000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 16);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10002D4C8;

  return sub_100857530(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_1008670F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_10085B920(a1, v4, v5, v7, v6);
}

uint64_t sub_1008671D4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1008537A8(v2, v3);
}

unint64_t sub_1008672AC()
{
  result = qword_101A04C18;
  if (!qword_101A04C18)
  {
    sub_1005C4E5C(&qword_101A04C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04C18);
  }

  return result;
}

uint64_t sub_100867310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_10085B51C(a1, v4, v5, v7, v6);
}

uint64_t sub_10086742C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A04C30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10086749C()
{
  result = qword_101A04C40;
  if (!qword_101A04C40)
  {
    type metadata accessor for AnyCRValue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04C40);
  }

  return result;
}

uint64_t sub_10086756C(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 < 4u)
  {
  }

  if (a3 == 4)
  {
    return sub_1008675B8(result, a2);
  }

  if (a3 == 5)
  {
  }

  return result;
}

uint64_t sub_1008675B8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_100867608(uint64_t result, unint64_t a2, void *a3, unint64_t a4)
{
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 == 2)
    {

      return sub_10086756C(result, a2, a3);
    }
  }

  else
  {
    if (v5)
    {

      v7 = a3;
    }
  }

  return result;
}

uint64_t sub_100867730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a3;
  v26 = a2;
  v8 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0;
  *(v5 + 136) = 0;
  v15 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_acknowledgeQueue;
  type metadata accessor for CRLUSDRendering.TaskQueue();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v16 + 128) = _swiftEmptyArrayStorage;
  *(v16 + 112) = xmmword_101482150;
  *(v5 + v15) = v16;
  v17 = v5 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  *(v17 + 40) = xmmword_101482160;
  if (qword_1019F1AB0 != -1)
  {
    swift_once();
  }

  sub_10000BE14(a1, v10, &qword_1019F6990);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    UUID.init()();
    if (v18(v10, 1, v11) != 1)
    {
      sub_10000CAAC(v10, &qword_1019F6990);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  (*(v12 + 32))(v5 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_uuid, v14, v11);
  *(v5 + 24) = v25;
  swift_unknownObjectWeakAssign();
  *(v5 + 40) = a4;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0xC000000000000000;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0;
  if ((a4 & 2) != 0)
  {
    v19 = [objc_allocWithZone(_s10MetalLayerCMa()) init];
    v20 = *(v5 + 32);
    *(v5 + 32) = v19;
    v21 = v19;

    [v21 setFrame:{0.0, 0.0, 300.0, 300.0}];
    v27 = *&v21[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_frameNumber];
    swift_allocObject();
    swift_weakInit();

    sub_1005B981C(&qword_101A04C10);
    sub_1008672AC();
    v22 = Publisher<>.sink(receiveValue:)();

    swift_unknownObjectRelease();

    sub_10000CAAC(a1, &qword_1019F6990);

    *(v5 + 136) = v22;
  }

  else
  {
    sub_10000CAAC(a1, &qword_1019F6990);
    swift_unknownObjectRelease();
  }

  return v5;
}

void *sub_100867B4C()
{
  v0 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v0 - 8);
  v2 = &v22 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = result[4];
    if (!v5)
    {
    }

    if ((*(v5 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_hasDrawnFrame) & 1) != 0 && (v6 = result[9], v6 >> 62 == 1))
    {
      v8 = result[15];
      v7 = result[16];
      v9 = result[13];
      v10 = result[14];
      v11 = result[12];
      v27 = result[11];
      v28 = v11;
      v26 = result[10];
      v12 = result[7];
      v34 = result[8];
      v13 = v34;
      v32 = v9;
      v33 = v12;
      v23 = result[6];
      v14 = v23;
      v24 = v6;
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
      v25 = type metadata accessor for MainActor();
      v31 = v7;
      v30 = v8;
      v29 = v10;
      sub_10086E7D8(v14, v12, v13, v6);
      v16 = v5;
      v17 = v23;
      v18 = v24;
      sub_10086E7D8(v23, v33, v34, v24);
      v19 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      v20[4] = v17;
      sub_10064191C(0, 0, v2, &unk_1014825E0, v20);
      sub_10086E484(v17, v33, v34, v18);

      if (!v4[17])
      {
        goto LABEL_9;
      }
    }

    else
    {
      v21 = v5;
      if (!v4[17])
      {
LABEL_9:

        v4[17] = 0;
      }
    }

    AnyCancellable.cancel()();

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_100867E24()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10007EE50;

  return sub_100CEDA50();
}

void *sub_100867ED0()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  v5 = v0[9];
  if (v5 >> 62 == 1)
  {
    v6 = v0[16];
    v17[1] = v0[15];
    v7 = v0[13];
    v17[2] = v0[14];
    v17[3] = v6;
    v17[4] = v0[12];
    v17[5] = v7;
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v17[0] = type metadata accessor for MainActor();
    sub_10086E7D8(v10, v9, v8, v5);

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v10;
    sub_10064191C(0, 0, v4, &unk_1014825F0, v13);
    sub_10086E484(v10, v9, v8, v5);
  }

  sub_1000C1024((v1 + 2));

  sub_10086E484(v1[6], v1[7], v1[8], v1[9]);

  v14 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_uuid;
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);

  sub_10086E5CC(*(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState), *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 8), *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 16), *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 24), *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 32), *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 40));
  return v1;
}

uint64_t sub_100868174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10086820C, v6, v5);
}

uint64_t sub_10086820C()
{

  if (qword_1019F1AB0 != -1)
  {
    swift_once();
  }

  sub_1009FA388(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008682AC()
{
  sub_100867ED0();

  return swift_deallocClassInstance();
}

uint64_t _s10RepBackendCMa()
{
  result = qword_101A04CF8;
  if (!qword_101A04CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100868358()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100868430(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100868448(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_100868464(uint64_t a1)
{
  v1 = *(a1 + 24) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_100868480(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1008684A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 > 0x80000000FFFFFFFFLL)
  {
    v3 = ~HIDWORD(v2);
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1008684F4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 32;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100868574(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16);
    *(result + 24) = a2 << 62;
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 3);
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0;
    *(result + 24) = 0xC000000000000000;
  }

  return result;
}

unint64_t sub_1008685D4()
{
  result = qword_101A04DB8;
  if (!qword_101A04DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04DB8);
  }

  return result;
}

unint64_t sub_10086862C()
{
  result = qword_101A04DC0;
  if (!qword_101A04DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04DC0);
  }

  return result;
}

unint64_t sub_100868684()
{
  result = qword_101A04DC8;
  if (!qword_101A04DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04DC8);
  }

  return result;
}

unint64_t sub_1008686DC()
{
  result = qword_101A04DD0;
  if (!qword_101A04DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04DD0);
  }

  return result;
}

uint64_t sub_100868730(uint64_t *a1)
{
  if (a1[3] >> 62 == 1)
  {
    v2 = *a1;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 72) >> 62 == 1)
  {
    v3 = *(v1 + 48);

    if (!v2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if (!v2)
    {
      goto LABEL_14;
    }
  }

  if (!v3 || v2 != v3)
  {
    if (qword_1019F1AB0 != -1)
    {
      swift_once();
    }

    sub_1009FA388(v2);
  }

LABEL_14:
}

uint64_t sub_10086880C()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = *(v1 + 72) >> 62;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v5 = *(v1 + 64);
      v4 = *(v1 + 56);
      sub_10086756C(v2, v4, *(v1 + 64));
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0x4000000000000000;
    }

    else
    {
      v2 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0x8000000000000000;
    }
  }

  else if (v3)
  {
    v10 = v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_sceneDescription;
    v2 = *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_sceneDescription);
    v4 = *(v10 + 8);
    v5 = *(v10 + 16);
    v6 = *(v10 + 24);
    v7 = *(v10 + 32);
    v9 = *(v10 + 40);
    v8 = *(v10 + 48);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0x8000000000000000;
    v2 = 2;
  }

  v36 = v9;
  v34 = v7;
  v35 = v4;
  v37[0] = v2;
  v37[1] = v4;
  v37[2] = v5;
  v37[3] = v6;
  v37[4] = v7;
  v37[5] = v9;
  v37[6] = v8;
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v33 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v32 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_uuid;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v12 = static String._fromSubstring(_:)();
  v14 = v13;

  *(inited + 56) = &type metadata for String;
  v15 = sub_1000053B0();
  *(inited + 64) = v15;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  v16 = v34;
  sub_10086E56C(v2, v35, v5, v6, v34, v36);
  v17 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v15;
  *(inited + 72) = v17;
  *(inited + 80) = v18;
  v19 = static os_log_type_t.debug.getter();
  sub_100005404(v33, &_mh_execute_header, v19, "(CoreRE) [%{public}@] new state: %{public}@", 43, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 8);
    v23 = v20;
    v16 = v34;
    v22(v1 + v32, v37, ObjectType, v23);
    swift_unknownObjectRelease();
  }

  sub_100863E8C(v2, v35, v5, v6, v16, v36);
  v24 = v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState;
  v25 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState);
  v26 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 8);
  v27 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 16);
  v28 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 24);
  v29 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 32);
  v30 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 40);
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  *(v24 + 40) = xmmword_101482160;
  return sub_10086E5CC(v25, v26, v27, v28, v29, v30);
}

uint64_t sub_100868BA4()
{
  v1[3] = v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_100868C3C, v3, v2);
}

uint64_t sub_100868C3C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_acknowledgeQueue);
  *(v0 + 56) = v1;
  swift_weakInit();

  return _swift_task_switch(sub_100868CB8, v1, 0);
}

uint64_t sub_100868CB8()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 56);
  v2 = sub_10086E50C();
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_100868DE8;
  v4 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v1, v2, 0xD000000000000013, 0x800000010156F8C0, sub_10086E564, v4, &type metadata for () + 8);
}

uint64_t sub_100868DE8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_100869010;
  }

  else
  {
    v4 = sub_100868F14;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100868F14()
{
  v1 = v0[9];
  v2 = static Task<>.checkCancellation()();
  if (v1)
  {
    v5 = v0[7];
    v6 = *(v5 + 120);
    v7 = __OFSUB__(v6, 1);
    v8 = v6 - 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      *(v5 + 120) = v8;
      sub_100C72384();
      v0[12] = v1;
      v3 = v0[5];
      v4 = v0[6];
      v2 = sub_10086925C;
    }

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_100869030;

    return sub_10086CF2C(v9, (v0 + 2));
  }
}

uint64_t sub_100869030()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1008691DC;
  }

  else
  {
    v4 = sub_10086915C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10086915C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = v3[7];
  v6 = *(v5 + 120);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 120) = v8;
    sub_100C72384();
    swift_weakDestroy();
    a2 = v3[5];
    a3 = v3[6];
    a1 = sub_100658F10;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1008691DC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = v3[7];
  v6 = *(v5 + 120);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 120) = v8;
    sub_100C72384();
    v3[12] = v3[11];
    a2 = v3[5];
    a3 = v3[6];
    a1 = sub_10086925C;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10086925C()
{

  swift_weakDestroy();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008692D0(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  type metadata accessor for MainActor();
  v2[18] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v4;
  v2[20] = v3;

  return _swift_task_switch(sub_100869368, v4, v3);
}