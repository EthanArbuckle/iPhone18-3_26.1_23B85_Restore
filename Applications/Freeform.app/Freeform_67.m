void sub_1009CE67C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 path];
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = _swiftEmptyArrayStorage;
    v6 = (v5 + 16);
    aBlock[4] = sub_1009CEBEC;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100CD0AFC;
    aBlock[3] = &unk_1018903A8;
    v7 = _Block_copy(aBlock);

    [v4 iteratePathElementsWithBlock:v7];

    _Block_release(v7);
    swift_beginAccess();
    v4 = *v6;
  }

  v8 = [a1 lineJoin];
  if (v8 == 2)
  {
    LOBYTE(v44) = 0;
    v29 = 2;
  }

  else if (v8 == 1)
  {
    LOBYTE(v44) = 0;
    v29 = 1;
  }

  else
  {
    if (v8)
    {
      v42 = objc_opt_self();
      v9 = [v42 _atomicIncrementAssertCount];
      v44 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v44);
      StaticString.description.getter();
      v41 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v10 = String._bridgeToObjectiveC()();

      v11 = [v10 lastPathComponent];

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v14 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v9;
      v16 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v16;
      v17 = sub_1005CF04C();
      *(inited + 104) = v17;
      *(inited + 72) = v41;
      *(inited + 136) = &type metadata for String;
      v18 = sub_1000053B0();
      *(inited + 112) = v40;
      *(inited + 120) = v13;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v18;
      *(inited + 152) = 62;
      v19 = v44;
      *(inited + 216) = v16;
      *(inited + 224) = v17;
      *(inited + 192) = v19;
      v20 = v41;
      v21 = v19;
      v22 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v23, "Unknown line end line type. Falling back to archiving miter.", 60, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v24 = swift_allocObject();
      v24[2] = 8;
      v24[3] = 0;
      v24[4] = 0;
      v24[5] = 0;
      v25 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v26 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v27 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v28 = String._bridgeToObjectiveC()();

      [v42 handleFailureInFunction:v26 file:v27 lineNumber:62 isFatal:0 format:v28 args:v25];
    }

    v29 = 0;
    LOBYTE(v44) = 0;
  }

  [a1 endPoint];
  v31 = v30;
  v33 = v32;
  v34 = [a1 isFilled];
  v35 = [a1 identifier];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = v44;
  *a2 = v4;
  *(a2 + 8) = v29;
  *(a2 + 16) = v39;
  *(a2 + 20) = v31;
  *(a2 + 24) = v33;
  *(a2 + 28) = v34;
  *(a2 + 32) = v36;
  *(a2 + 40) = v38;
  *(a2 + 48) = _swiftEmptyDictionarySingleton;
}

uint64_t sub_1009CEBF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696F4A656E696CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E696F50646E65 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C6C69467369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1009CEE00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A0B280);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1009CDE90();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v26) = 0;
  sub_1009CF1DC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v30;
  sub_1005B981C(&qword_101A0B290);
  LOBYTE(v26) = 1;
  sub_1009CF340(&qword_101A0B298);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v30;
  v39 = v31;
  LOBYTE(v26) = 2;
  sub_1009CF230();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v30;
  LOBYTE(v30) = 3;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v10;
  LODWORD(v25) = v12;
  LOBYTE(v30) = 4;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  v23 = v13;
  sub_1005B981C(&unk_101A0D960);
  v40 = 5;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  HIDWORD(v22) = v25 & 1;
  (*(v6 + 8))(v8, v5);
  v25 = v38;
  *&v26 = v9;
  v17 = v23;
  v16 = v24;
  *(&v26 + 1) = v24;
  v18 = v39;
  LOBYTE(v27) = v39;
  *(&v27 + 4) = v11;
  v19 = BYTE4(v22);
  BYTE12(v27) = BYTE4(v22);
  *&v28 = v23;
  *(&v28 + 1) = v15;
  v29 = v38;
  sub_1009CF284(&v26, &v30);
  sub_100005070(a1);
  v30 = v9;
  v31 = v16;
  v32 = v18;
  v33 = v11;
  v34 = v19;
  v35 = v17;
  v36 = v15;
  v37 = v25;
  result = sub_1009CF2BC(&v30);
  v21 = v27;
  *a2 = v26;
  *(a2 + 16) = v21;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  return result;
}

unint64_t sub_1009CF1DC()
{
  result = qword_101A0B288;
  if (!qword_101A0B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B288);
  }

  return result;
}

unint64_t sub_1009CF230()
{
  result = qword_101A0B2A0;
  if (!qword_101A0B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B2A0);
  }

  return result;
}

unint64_t sub_1009CF2EC()
{
  result = qword_101A0B2B0;
  if (!qword_101A0B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B2B0);
  }

  return result;
}

uint64_t sub_1009CF340(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A0B290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1009CF3B0()
{
  result = qword_101A0B2C0;
  if (!qword_101A0B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B2C0);
  }

  return result;
}

unint64_t sub_1009CF404()
{
  result = qword_101A0B2C8;
  if (!qword_101A0B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B2C8);
  }

  return result;
}

unint64_t sub_1009CF458()
{
  result = qword_101A0B2D0;
  if (!qword_101A0B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B2D0);
  }

  return result;
}

unint64_t sub_1009CF4D0()
{
  result = qword_101A0B2D8;
  if (!qword_101A0B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B2D8);
  }

  return result;
}

unint64_t sub_1009CF528()
{
  result = qword_101A0B2E0;
  if (!qword_101A0B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B2E0);
  }

  return result;
}

unint64_t sub_1009CF580()
{
  result = qword_101A0B2E8;
  if (!qword_101A0B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B2E8);
  }

  return result;
}

unint64_t sub_1009CF5D8()
{
  result = qword_101A0B2F0;
  if (!qword_101A0B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B2F0);
  }

  return result;
}

unint64_t sub_1009CF62C()
{
  result = qword_101A0B2F8;
  if (!qword_101A0B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B2F8);
  }

  return result;
}

uint64_t sub_1009CF690(uint64_t a1)
{
  v21 = type metadata accessor for CRLDisjointPosition.Element();
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v25 = _swiftEmptyArrayStorage;
    sub_100034080(0, v5, 0);
    v6 = v25;
    v7 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    do
    {
      sub_1009D1D8C(v7, v4);
      v23 = 40;
      v24 = 0xE100000000000000;
      v22 = *v4;
      v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v9);

      v10._countAndFlagsBits = 8236;
      v10._object = 0xE200000000000000;
      String.append(_:)(v10);
      type metadata accessor for UUID();
      sub_1009D2FF8(&qword_101A02180, &type metadata accessor for UUID);
      v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 41;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13 = v23;
      v14 = v24;
      sub_1009D1E54(v4);
      v25 = v6;
      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        sub_100034080((v15 > 1), v16 + 1, 1);
        v6 = v25;
      }

      v6[2] = v16 + 1;
      v17 = &v6[2 * v16];
      v17[4] = v13;
      v17[5] = v14;
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  v23 = v6;
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v18 = BidirectionalCollection<>.joined(separator:)();

  return v18;
}

uint64_t sub_1009CF93C()
{
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  type metadata accessor for CRLDisjointPosition.Element();
  type metadata accessor for UUID();
  sub_1009D2FF8(&qword_101A02180, &type metadata accessor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 40;
}

void sub_1009CFA40(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v29 = objc_opt_self();
  v6 = [v29 _atomicIncrementAssertCount];
  v30 = [objc_allocWithZone(NSString) init];
  v28 = a3;
  sub_100604538(_swiftEmptyArrayStorage, &v30);
  StaticString.description.getter();
  v7 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v8 lastPathComponent];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v6;
  v15 = sub_1005CF000();
  *(inited + 96) = v15;
  v16 = sub_1009D2FF8(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v16;
  *(inited + 72) = v7;
  *(inited + 136) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 112) = v10;
  *(inited + 120) = v12;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v17;
  *(inited + 152) = 274;
  v18 = v30;
  *(inited + 216) = v15;
  *(inited + 224) = v16;
  *(inited + 192) = v18;
  v19 = v7;
  v20 = v18;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v22, a1, a2, v28, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v23 = swift_allocObject();
  v23[2] = 8;
  v23[3] = 0;
  v23[4] = 0;
  v23[5] = 0;
  v24 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  [v29 handleFailureInFunction:v25 file:v26 lineNumber:274 isFatal:0 format:v27 args:v24];
}

uint64_t sub_1009CFDFC(void *a1)
{
  v3 = sub_1005B981C(&qword_101A0B3E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_1009D16C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for CRLDisjointPosition.Element();
    v8[14] = 1;
    type metadata accessor for UUID();
    sub_1009D2FF8(&qword_1019F43C0, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1009CFFB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = type metadata accessor for UUID();
  v18 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1005B981C(&qword_101A0B3E0);
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v15 - v6;
  v8 = type metadata accessor for CRLDisjointPosition.Element();
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100020E58(a1, a1[3]);
  sub_1009D16C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17 = v8;
    v11 = v20;
    v12 = v21;
    v24 = 0;
    v13 = v22;
    *v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = 1;
    sub_1009D2FF8(&qword_1019F43A8, &type metadata accessor for UUID);
    v16 = v5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v11 + 8))(v7, v13);
    (*(v18 + 32))(v10 + *(v17 + 20), v16, v12);
    sub_1009D1DF0(v10, v19);
  }

  return sub_100005070(a1);
}

uint64_t sub_1009D0298(void *a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0B418);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100020E58(a1, a1[3]);
  sub_1009D19D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1005B981C(&qword_101A0B408);
  sub_1009D2F5C(&qword_101A0B420, &qword_101A0B328);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void sub_1009D042C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CRLDisjointPosition.Element();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a2 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      sub_1009D1D8C(v8, v6);
      Hasher._combine(_:)(*v6);
      type metadata accessor for UUID();
      sub_1009D2FF8(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      sub_1009D1E54(v6);
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

Swift::Int sub_1009D059C(uint64_t a1)
{
  v2 = type metadata accessor for CRLDisjointPosition.Element();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher.init(_seed:)();
  v6 = *(a1 + 16);
  Hasher._combine(_:)(v6);
  if (v6)
  {
    v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    do
    {
      sub_1009D1D8C(v7, v5);
      Hasher._combine(_:)(*v5);
      type metadata accessor for UUID();
      sub_1009D2FF8(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      sub_1009D1E54(v5);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  return Hasher._finalize()();
}

uint64_t sub_1009D0718(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return static UUID.< infix(_:_:)();
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_1009D0740(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    v2 = static UUID.< infix(_:_:)();
  }

  else
  {
    v2 = *a2 < *a1;
  }

  return (v2 & 1) == 0;
}

BOOL sub_1009D078C(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v2 = static UUID.< infix(_:_:)();
  }

  else
  {
    v2 = *a1 < *a2;
  }

  return (v2 & 1) == 0;
}

uint64_t sub_1009D07D4(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    return static UUID.< infix(_:_:)();
  }

  else
  {
    return *a2 < *a1;
  }
}

Swift::Int sub_1009D0834()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  type metadata accessor for UUID();
  sub_1009D2FF8(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1009D08E0()
{
  Hasher._combine(_:)(*v0);
  type metadata accessor for UUID();
  sub_1009D2FF8(&qword_1019FB870, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1009D0974()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  type metadata accessor for UUID();
  sub_1009D2FF8(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1009D0A1C(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return static UUID.== infix(_:_:)();
  }

  else
  {
    return 0;
  }
}

void *sub_1009D0ABC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1009D2DA0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_1009D0B14()
{
  v1 = type metadata accessor for CRLDisjointPosition.Element();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    do
    {
      sub_1009D1D8C(v7, v4);
      Hasher._combine(_:)(*v4);
      type metadata accessor for UUID();
      sub_1009D2FF8(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      sub_1009D1E54(v4);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  return Hasher._finalize()();
}

unint64_t sub_1009D0CA0()
{
  result = qword_101A0B300;
  if (!qword_101A0B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B300);
  }

  return result;
}

uint64_t sub_1009D0D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1009D0E00(uint64_t a1)
{
  v2 = sub_1009D19D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009D0E3C(uint64_t a1)
{
  v2 = sub_1009D19D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009D0E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100039E08();
  v7 = sub_1009D0CA0();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1009D0F8C(uint64_t a1)
{
  v2 = sub_1009D1EB0();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1009D0FD8()
{
  if (*v0)
  {
    return 0x797469746E656469;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_1009D1010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469746E656469 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1009D1124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return static CodingKey<>.intCases.getter(a1, a2, v7, v8);
}

uint64_t sub_1009D1190(uint64_t a1)
{
  v2 = sub_1009D16C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009D11CC(uint64_t a1)
{
  v2 = sub_1009D16C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009D1214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1009D2FF8(&qword_101A0B318, type metadata accessor for CRLDisjointPosition.Element);
  v7 = sub_1009D2FF8(&qword_101A0B3F0, type metadata accessor for CRLDisjointPosition.Element);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1009D13D8(uint64_t a1)
{
  v2 = sub_1009D2FF8(&qword_101A0B3F8, type metadata accessor for CRLDisjointPosition.Element);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_1009D15C0()
{
  result = qword_101A0B330;
  if (!qword_101A0B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B330);
  }

  return result;
}

unint64_t sub_1009D1618()
{
  result = qword_101A0B338;
  if (!qword_101A0B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B338);
  }

  return result;
}

unint64_t sub_1009D1670()
{
  result = qword_101A0B340;
  if (!qword_101A0B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B340);
  }

  return result;
}

unint64_t sub_1009D16C8()
{
  result = qword_101A0B348;
  if (!qword_101A0B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B348);
  }

  return result;
}

unint64_t sub_1009D1720()
{
  result = qword_101A0B350;
  if (!qword_101A0B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B350);
  }

  return result;
}

unint64_t sub_1009D1778()
{
  result = qword_101A0B358;
  if (!qword_101A0B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B358);
  }

  return result;
}

unint64_t sub_1009D1818()
{
  result = qword_101A0B380;
  if (!qword_101A0B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B380);
  }

  return result;
}

unint64_t sub_1009D1870()
{
  result = qword_101A0B388;
  if (!qword_101A0B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B388);
  }

  return result;
}

unint64_t sub_1009D18C8()
{
  result = qword_101A0B390;
  if (!qword_101A0B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B390);
  }

  return result;
}

unint64_t sub_1009D1920()
{
  result = qword_101A0B398;
  if (!qword_101A0B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B398);
  }

  return result;
}

unint64_t sub_1009D1978()
{
  result = qword_101A0B3A0;
  if (!qword_101A0B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B3A0);
  }

  return result;
}

unint64_t sub_1009D19D0()
{
  result = qword_101A0B3A8;
  if (!qword_101A0B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B3A8);
  }

  return result;
}

unint64_t sub_1009D1A28()
{
  result = qword_101A0B3B0;
  if (!qword_101A0B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B3B0);
  }

  return result;
}

unint64_t sub_1009D1A80()
{
  result = qword_101A0B3B8;
  if (!qword_101A0B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B3B8);
  }

  return result;
}

uint64_t sub_1009D1B18(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v25 = type metadata accessor for CRLDisjointPosition.Element();
  v3 = *(v25 - 8);
  v4 = __chkstk_darwin(v25);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v4);
  v9 = (&v24 - v8);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v26 = sub_1005B981C(&qword_101A0B3D0);
  __chkstk_darwin(v26);
  v13 = &v24 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v17 = a1 + v16;
    v18 = *(v3 + 72);
    v19 = v27 + v16;
    while (1)
    {
      result = sub_1009D1D8C(v17, v11);
      v21 = *(v27 + 16);
      if (v15 == v21)
      {
        sub_1009D1E54(v11);
        goto LABEL_10;
      }

      if (v15 >= v21)
      {
        break;
      }

      v22 = *(v26 + 48);
      sub_1009D1DF0(v11, v13);
      sub_1009D1D8C(v19, &v13[v22]);
      sub_1009D1DF0(v13, v9);
      sub_1009D1DF0(&v13[v22], v6);
      if (*v9 != *v6)
      {
        v23 = *v9 < *v6;
LABEL_13:
        sub_1009D1E54(v6);
        sub_1009D1E54(v9);
        return v23 & 1;
      }

      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        v23 = static UUID.< infix(_:_:)();
        goto LABEL_13;
      }

      ++v15;
      sub_1009D1E54(v6);
      sub_1009D1E54(v9);
      v19 += v18;
      v17 += v18;
      if (v14 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v23 = v14 < *(v27 + 16);
    return v23 & 1;
  }

  return result;
}

uint64_t sub_1009D1D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLDisjointPosition.Element();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009D1DF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLDisjointPosition.Element();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009D1E54(uint64_t a1)
{
  v2 = type metadata accessor for CRLDisjointPosition.Element();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1009D1EB0()
{
  result = qword_101A0B3D8;
  if (!qword_101A0B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B3D8);
  }

  return result;
}

uint64_t sub_1009D1F04(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A00170);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for CRLDisjointPosition.Element();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v17 - v10);
  if (*(a1 + 16))
  {
    sub_1009D1D8C(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v4);

    (*(v6 + 56))(v4, 0, 1, v5);
    result = sub_1009D1DF0(v4, v11);
  }

  else
  {

    (*(v6 + 56))(v4, 1, 1, v5);
    v13 = sub_10000C3A0(0xC7uLL) - 99;
    UUID.init()();
    *v11 = v13;
    result = (*(v6 + 48))(v4, 1, v5);
    if (result != 1)
    {
      result = sub_1009D3040(v4);
    }
  }

  v14 = *v11 + 100;
  if (__OFADD__(*v11, 100))
  {
    __break(1u);
  }

  else
  {
    UUID.init()();
    *v9 = v14;
    sub_1005B981C(&qword_1019F49A0);
    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10146C6B0;
    sub_1009D1DF0(v9, v16 + v15);
    sub_1009D1E54(v11);
    return v16;
  }

  return result;
}

uint64_t sub_1009D2168(uint64_t result, uint64_t a2)
{
  if (result >= a2)
  {
    v5 = result - 100;
    if (!__OFSUB__(result, 100))
    {
      if (v5 <= a2)
      {
        v5 = a2;
      }

      v3 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        if (result - 1 > v3)
        {
          if (result - 1 - v3 != -1)
          {
            v4 = result - v3;
            return sub_10000C3A0(v4) + v3;
          }

          goto LABEL_22;
        }

        goto LABEL_20;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (__OFADD__(result, 100))
  {
    __break(1u);
    goto LABEL_25;
  }

  if (result + 100 >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = result + 100;
  }

  v3 = result + 1;
  if (v2 - 1 <= result + 1)
  {
    v5 = v2 + result;
    if (!__OFADD__(v2, result))
    {
      return v5 / 2;
    }

    __break(1u);
LABEL_20:
    v6 = __OFADD__(result, v5);
    v5 += result;
    if (!v6)
    {
      return v5 / 2;
    }

LABEL_27:
    __break(1u);
    return result;
  }

  if (v2 - 1 - (result + 1) != -1)
  {
    v4 = v2 - (result + 1);
    return sub_10000C3A0(v4) + v3;
  }

LABEL_22:
  swift_stdlib_random();
  return 0;
}

uint64_t sub_1009D2244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLDisjointPosition.Element();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v7 = __chkstk_darwin(v6);
  v8 = __chkstk_darwin(v7);
  v9 = __chkstk_darwin(v8);
  v10 = __chkstk_darwin(v9);
  v11 = __chkstk_darwin(v10);
  v13 = (&v81 - v12);
  result = __chkstk_darwin(v11);
  v21 = (&v81 - v20);
  v22 = *(result + 16);
  v23 = *(a2 + 16);
  if (v23 >= v22)
  {
    v24 = *(result + 16);
  }

  else
  {
    v24 = *(a2 + 16);
  }

  if (!(v22 | v23))
  {

    sub_1009CFA40("Supplied positions are both empty! Returning default position.", 62, 2u);
    sub_1005B981C(&qword_1019F49A0);
    v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10146C6B0;
    v27 = sub_10000C3A0(0xC7uLL) - 99;
    UUID.init()();
    result = v26;
    *(v26 + v25) = v27;
    return result;
  }

  v88 = *(result + 16);
  v89 = v5;
  v83 = v15;
  v84 = v16;
  v85 = v23;
  v86 = v18;
  v82 = v19;
  v91 = result;
  v92 = a2;
  v87 = v17;
  v90 = v4;
  v28 = 0;
  v29 = 1;
  while (1)
  {
    if (v24 == v28)
    {
      v37 = v88 >= v85;
      result = v92;
      if (v88 != v85)
      {
        goto LABEL_37;
      }

      sub_1009CFA40("Supplied positions are equal! We can no longer guarantee deterministic ordering between these two!", 98, 2u);
      sub_1005B981C(&qword_1019F49A0);
      v38 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_10146C6B0;
      v40 = sub_10000C3A0(0xC7uLL) - 99;
      UUID.init()();
      *(v39 + v38) = v40;
      v94 = v91;
      sub_10079A678(v39);
      return v94;
    }

    v30 = v28;
    v31 = v92;
    if (v28 >= *(v91 + 16))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v93 = v29;
    v32 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v33 = *(v89 + 72);
    v34 = v91 + v32 + v33 * v28;
    result = sub_1009D1D8C(v34, v21);
    if (v30 >= *(v31 + 16))
    {
      goto LABEL_58;
    }

    v35 = v31 + v32 + v33 * v30;
    sub_1009D1D8C(v35, v13);
    if (*v21 != *v13)
    {
      break;
    }

    v36 = static UUID.== infix(_:_:)();
    sub_1009D1E54(v13);
    result = sub_1009D1E54(v21);
    v29 = v93 + 2;
    v28 = v30 + 1;
    if ((v36 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_1009D1E54(v13);
  result = sub_1009D1E54(v21);
LABEL_16:
  if (v30 >= *(v91 + 16))
  {
    goto LABEL_59;
  }

  v41 = v84;
  result = sub_1009D1D8C(v34, v84);
  v42 = v92;
  if (v30 >= *(v92 + 16))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v43 = v83;
  sub_1009D1D8C(v35, v83);
  if (*v41 == *v43)
  {
    v44 = static UUID.< infix(_:_:)();
  }

  else
  {
    v44 = *v41 < *v43;
  }

  sub_1009D1E54(v43);
  result = sub_1009D1E54(v41);
  if ((v44 & 1) == 0)
  {
LABEL_25:
    v47 = v91;
    if (v30 < *(v91 + 16))
    {
      v45 = v87;
      result = sub_1009D1D8C(v34, v87);
      v34 = v35;
      v46 = v88;
      v24 = v92;
      v48 = *(v92 + 16);
      v88 = v85;
      v92 = v47;
      if (v30 < v48)
      {
        goto LABEL_27;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v30 >= *(v42 + 16))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v45 = v87;
  result = sub_1009D1D8C(v35, v87);
  v24 = v91;
  v46 = v85;
  if (v30 >= *(v91 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_27:
  v49 = v86;
  result = sub_1009D1D8C(v34, v86);
  v50 = *v45;
  v51 = *v49;
  if (__OFSUB__(v50, v51))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v52 = v30 + 1;
  if (v50 - v51 >= 2)
  {

    if (*(v24 + 16) >= v30)
    {
      sub_1005B981C(&qword_1019F49A0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_10146C6B0;
      v54 = sub_1009D2168(v51, v50);
      UUID.init()();
      *(v53 + v32) = v54;
      v94 = sub_100B36CFC(0, v30 + 1, 0, _swiftEmptyArrayStorage);
      v55 = swift_unknownObjectRetain();
      sub_10079A6A4(v55, v24 + v32, 0, v93);
      v56 = v53;
      goto LABEL_55;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v52 < v88)
  {

    v57 = *(v24 + 16);
    if (v57 <= v30)
    {
      goto LABEL_70;
    }

    sub_1005B981C(&qword_1019F49A0);
    result = swift_allocObject();
    *(result + 16) = xmmword_10146C6B0;
    if (v52 < v57)
    {
      v58 = v24 + v32;
      v59 = *(v24 + v32 + v33 * v52);
      v37 = __CFADD__(v59, 100);
      v60 = v59 + 100;
      if (!__OFADD__(v59, 100))
      {
LABEL_52:
        v74 = (result + v32);
        v75 = result;
        v76 = sub_1009D2168(v59, v60);
        UUID.init()();
        *v74 = v76;
        v94 = sub_100B36CFC(0, v30 + 2, 0, _swiftEmptyArrayStorage);
        v77 = swift_unknownObjectRetain();
        sub_10079A6A4(v77, v58, 0, v93 + 2);
        v56 = v75;
        goto LABEL_55;
      }

      __break(1u);
LABEL_37:
      if (v37)
      {
        v61 = result;
      }

      else
      {
        v61 = v91;
      }

      if (v37)
      {
        v62 = v91;
      }

      else
      {
        v62 = result;
      }

      v63 = v89;
      if (!v24)
      {
        goto LABEL_66;
      }

      if (*(v61 + 16) < v24)
      {
LABEL_67:
        __break(1u);
      }

      else
      {
        sub_1005B981C(&qword_1019F49A0);
        v64 = *(v63 + 72);
        v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        result = swift_allocObject();
        *(result + 16) = xmmword_10146C6B0;
        if (v24 < *(v62 + 16))
        {
          v66 = result;
          v67 = v62 + v65 + v64 * v24;
          v68 = v82;
          sub_1009D1D8C(v67, v82);

          v69 = *v68;
          result = sub_1009D1E54(v68);
          if (!__OFSUB__(v69, 100))
          {
            v70 = sub_1009D2168(v69, v69 - 100);
            UUID.init()();
            *(v66 + v65) = v70;
            v94 = sub_100B36CFC(0, v24 + 1, 0, _swiftEmptyArrayStorage);
            v71 = swift_unknownObjectRetain();
            sub_10079A6A4(v71, v61 + v65, 0, (2 * v24) | 1);
            sub_10079A678(v66);

            return v94;
          }

LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }
      }

      __break(1u);
      goto LABEL_69;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v52 >= v46)
  {

    if (*(v24 + 16) <= v30)
    {
      goto LABEL_73;
    }

    sub_1005B981C(&qword_1019F49A0);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_10146C6B0;
    v79 = sub_10000C3A0(0xC7uLL) - 99;
    UUID.init()();
    *(v78 + v32) = v79;
    v94 = sub_100B36CFC(0, v30 + 2, 0, _swiftEmptyArrayStorage);
    v80 = swift_unknownObjectRetain();
    sub_10079A6A4(v80, v24 + v32, 0, v93 + 2);
    v56 = v78;
LABEL_55:
    sub_10079A678(v56);

    sub_1009D1E54(v86);
    sub_1009D1E54(v87);
    return v94;
  }

  v72 = v92;
  v73 = *(v92 + 16);
  if (v73 <= v30)
  {
    goto LABEL_72;
  }

  sub_1005B981C(&qword_1019F49A0);
  result = swift_allocObject();
  *(result + 16) = xmmword_10146C6B0;
  if (v52 >= v73)
  {
    goto LABEL_74;
  }

  v58 = v72 + v32;
  v59 = *(v72 + v32 + v33 * v52);
  v60 = v59 - 100;
  if (!__OFSUB__(v59, 100))
  {
    goto LABEL_52;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_1009D2B3C(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A00170);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for CRLDisjointPosition.Element();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v17 - v10);
  if (*(a1 + 16))
  {
    sub_1009D1D8C(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v4);

    (*(v6 + 56))(v4, 0, 1, v5);
    result = sub_1009D1DF0(v4, v11);
  }

  else
  {

    (*(v6 + 56))(v4, 1, 1, v5);
    v13 = sub_10000C3A0(0xC7uLL) - 99;
    UUID.init()();
    *v11 = v13;
    result = (*(v6 + 48))(v4, 1, v5);
    if (result != 1)
    {
      result = sub_1009D3040(v4);
    }
  }

  v14 = *v11 - 100;
  if (__OFSUB__(*v11, 100))
  {
    __break(1u);
  }

  else
  {
    UUID.init()();
    *v9 = v14;
    sub_1005B981C(&qword_1019F49A0);
    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10146C6B0;
    sub_1009D1DF0(v9, v16 + v15);
    sub_1009D1E54(v11);
    return v16;
  }

  return result;
}

void *sub_1009D2DA0(void *a1)
{
  v3 = sub_1005B981C(&qword_101A0B400);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100020E58(a1, a1[3]);
  sub_1009D19D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005070(a1);
  }

  else
  {
    sub_1005B981C(&qword_101A0B408);
    sub_1009D2F5C(&qword_101A0B410, &qword_101A0B320);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100005070(a1);
  }

  return v7;
}

uint64_t sub_1009D2F5C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A0B408);
    sub_1009D2FF8(a2, type metadata accessor for CRLDisjointPosition.Element);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1009D2FF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1009D3040(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A00170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1009D30F4()
{
  result = qword_101A0B4B8;
  if (!qword_101A0B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B4B8);
  }

  return result;
}

unint64_t sub_1009D314C()
{
  result = qword_101A0B4C0;
  if (!qword_101A0B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B4C0);
  }

  return result;
}

uint64_t sub_1009D3600()
{
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_1009D368C;

  return sub_1009D40E8();
}

uint64_t sub_1009D368C()
{
  v2 = *v1;
  *(v2 + 336) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1009D37C0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1009D37C0()
{
  v51 = v0;
  v1 = *(v0 + 336);
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(v0 + 320) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 32) = v3;
  v7 = inited + 32;
  v49 = v6;
  *(inited + 64) = v6;
  *(inited + 40) = v5;
  v47 = objc_opt_self();
  LODWORD(v8) = [v47 _atomicIncrementAssertCount];
  v50 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v50);
  StaticString.description.getter();
  v9 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 lastPathComponent];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v15 = static OS_os_log.crlAssert;
    v48 = v0;
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_10146CA70;
    *(v16 + 56) = &type metadata for Int32;
    *(v16 + 64) = &protocol witness table for Int32;
    *(v16 + 32) = v8;
    v17 = sub_1005CF000();
    *(v16 + 96) = v17;
    v18 = sub_1005CF04C();
    *(v16 + 72) = v9;
    v19 = v50;
    *(v16 + 136) = &type metadata for String;
    *(v16 + 144) = v49;
    *(v16 + 104) = v18;
    *(v16 + 112) = v12;
    *(v16 + 120) = v14;
    *(v16 + 176) = &type metadata for UInt;
    *(v16 + 184) = &protocol witness table for UInt;
    *(v16 + 152) = 55;
    *(v16 + 216) = v17;
    *(v16 + 224) = v18;
    *(v16 + 192) = v19;
    v20 = v9;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v16);
    swift_setDeallocating();
    v49 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "Unable to create CRLFileItem: %@", 32, 2, inited);

    type metadata accessor for __VaListBuilder();
    v14 = swift_allocObject();
    v14[2] = 8;
    v14[3] = 0;
    v8 = v14 + 3;
    v14[4] = 0;
    v14[5] = 0;
    v9 = *(inited + 16);
    if (!v9)
    {
      break;
    }

    v24 = 0;
    while (1)
    {
      v25 = (v7 + 40 * v24);
      v12 = v25[4];
      sub_100020E58(v25, v25[3]);
      v26 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v0 = *v8;
      v27 = *(v26 + 16);
      v28 = __OFADD__(*v8, v27);
      v29 = *v8 + v27;
      if (v28)
      {
        break;
      }

      v30 = v14[4];
      if (v30 >= v29)
      {
        goto LABEL_19;
      }

      if (v30 + 0x4000000000000000 < 0)
      {
        goto LABEL_32;
      }

      v12 = v14[5];
      if (2 * v30 > v29)
      {
        v29 = 2 * v30;
      }

      v14[4] = v29;
      if ((v29 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_33;
      }

      v31 = v7;
      v32 = inited;
      v33 = v26;
      v34 = swift_slowAlloc();
      v35 = v34;
      v14[5] = v34;
      if (v12)
      {
        if (v34 != v12 || v34 >= &v12[8 * v0])
        {
          memmove(v34, v12, 8 * v0);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v26 = v33;
        inited = v32;
        v7 = v31;
LABEL_19:
        v35 = v14[5];
        if (!v35)
        {
          goto LABEL_26;
        }

        goto LABEL_20;
      }

      v26 = v33;
      inited = v32;
      v7 = v31;
      if (!v35)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_20:
      v37 = *(v26 + 16);
      if (v37)
      {
        v38 = (v26 + 32);
        v39 = *v8;
        while (1)
        {
          v40 = *v38++;
          *&v35[8 * v39] = v40;
          v39 = *v8 + 1;
          if (__OFADD__(*v8, 1))
          {
            break;
          }

          *v8 = v39;
          if (!--v37)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:

      if (++v24 == v9)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

LABEL_27:
  v41 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  [v47 handleFailureInFunction:v42 file:v43 lineNumber:55 isFatal:0 format:v44 args:v41];

  swift_setDeallocating();
  swift_arrayDestroy();

  v45 = *(v48 + 8);

  return v45();
}

uint64_t sub_1009D3EF8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1009D3FA0;

  return sub_1009D3600();
}

uint64_t sub_1009D3FA0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 24);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1009D40E8()
{
  *(v1 + 272) = v0;
  sub_1005B981C(&qword_1019FB750);
  *(v1 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1009D4184, 0, 0);
}

uint64_t sub_1009D4184()
{
  v37 = v0;
  v1 = v0[34];
  v2 = OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_importBoardItemTask;
  if (*(v1 + OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_importBoardItemTask))
  {

    isCancelled = swift_task_isCancelled();

    if (isCancelled)
    {
      v35 = v1;
      v34 = objc_opt_self();
      v4 = [v34 _atomicIncrementAssertCount];
      v36 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v36);
      StaticString.description.getter();
      v5 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v6 = String._bridgeToObjectiveC()();

      v7 = [v6 lastPathComponent];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v11 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v4;
      v13 = sub_1005CF000();
      *(inited + 96) = v13;
      v14 = sub_1005CF04C();
      *(inited + 104) = v14;
      *(inited + 72) = v5;
      *(inited + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(inited + 112) = v8;
      *(inited + 120) = v10;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v15;
      *(inited + 152) = 64;
      v16 = v36;
      *(inited + 216) = v13;
      *(inited + 224) = v14;
      *(inited + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();

      type metadata accessor for __VaListBuilder();
      v21 = swift_allocObject();
      v21[2] = 8;
      v21[3] = 0;
      v21[4] = 0;
      v21[5] = 0;
      v22 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v23 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v25 = String._bridgeToObjectiveC()();

      [v34 handleFailureInFunction:v23 file:v24 lineNumber:64 isFatal:0 format:v25 args:v22];

      v1 = v35;
    }

    if (*(v1 + v2))
    {

      sub_1005B981C(&unk_1019F6B40);
      Task.cancel()();
    }
  }

  v26 = v0[35];
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v28;
  v30 = sub_1006E2398(0, 0, v26, &unk_10148C790, v29);
  v0[36] = v30;
  sub_10000CAAC(v26, &qword_1019FB750);
  *(v1 + v2) = v30;

  v31 = swift_task_alloc();
  v0[37] = v31;
  v32 = sub_1005B981C(&unk_1019F6B40);
  v0[38] = v32;
  *v31 = v0;
  v31[1] = sub_1009D4718;

  return Task.result.getter(v0 + 31, v30, &type metadata for () + 8, v32, &protocol self-conformance witness table for Error);
}

uint64_t sub_1009D4718()
{

  return _swift_task_switch(sub_1009D4830, 0, 0);
}

uint64_t sub_1009D4830()
{
  if (*(v0 + 256))
  {
    *(v0 + 264) = *(v0 + 248);
    swift_willThrowTypedImpl();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1009D48D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a4;
  v5 = type metadata accessor for URL();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();

  return _swift_task_switch(sub_1009D49C4, 0, 0);
}

uint64_t sub_1009D49C4()
{
  v47 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[42] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [v2 delegate];
    if (v3)
    {
      v4 = v3;
      if ([v3 respondsToSelector:"boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:"])
      {
        [v4 boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:v2];
      }

      swift_unknownObjectRelease();
    }

    v5 = *&v2[OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__progress];
    [v5 maxValue];
    [v5 setValue:v6 * 0.01];

    v7 = [v2 URL];
    if (v7)
    {
      v8 = v7;
      v10 = v0[39];
      v9 = v0[40];
      v11 = v0[35];
      v12 = v0[36];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = *(v12 + 32);
      v0[43] = v13;
      v0[44] = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v13(v9, v10, v11);
      v14 = swift_task_alloc();
      v0[45] = v14;
      *v14 = v0;
      v14[1] = sub_1009D506C;
      v15 = v0[40];
      v16 = v0[38];

      return sub_1009D5964(v16, v15);
    }

    v19 = [v2 preinsertionAsset];
    v0[47] = v19;

    if (v19)
    {
      v20 = swift_task_alloc();
      v0[48] = v20;
      *v20 = v0;
      v20[1] = sub_1009D52EC;
      v21 = v0[37];

      return sub_1009D61A4(v21);
    }

    v45 = objc_opt_self();
    v22 = [v45 _atomicIncrementAssertCount];
    v46 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v46);
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    v25 = [v24 lastPathComponent];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v22;
    v31 = sub_1005CF000();
    *(inited + 96) = v31;
    v32 = sub_1005CF04C();
    *(inited + 104) = v32;
    *(inited + 72) = v23;
    *(inited + 136) = &type metadata for String;
    v33 = sub_1000053B0();
    *(inited + 112) = v26;
    *(inited + 120) = v28;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v33;
    *(inited + 152) = 81;
    v34 = v46;
    *(inited + 216) = v31;
    *(inited + 224) = v32;
    *(inited + 192) = v34;
    v35 = v23;
    v36 = v34;
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v37, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v38, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v39 = swift_allocObject();
    v39[2] = 8;
    v39[3] = 0;
    v39[4] = 0;
    v39[5] = 0;
    v40 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    [v45 handleFailureInFunction:v41 file:v42 lineNumber:81 isFatal:0 format:v43 args:v40];

    sub_1009DB968();
    swift_allocError();
    *v44 = 1;
    swift_willThrow();

    v18 = v0[1];
  }

  else
  {

    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_1009D506C()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_1009D5734;
  }

  else
  {
    v2 = sub_1009D5180;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D5180()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[35];
  (*(v0[36] + 8))(v0[40], v4);
  v1(v2, v3, v4);
  v5 = v0[46];
  static Task<>.checkCancellation()();
  if (v5)
  {
    v6 = v0[42];
    (*(v0[36] + 8))(v0[41], v0[35]);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[50] = v9;
    *v9 = v0;
    v9[1] = sub_1009D5568;
    v10 = v0[41];

    return sub_1009D80D8(v10);
  }
}

uint64_t sub_1009D52EC()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1009D57F8;
  }

  else
  {
    v2 = sub_1009D5400;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D5400()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);

  (*(v3 + 32))(v1, v2, v4);
  v5 = *(v0 + 392);
  static Task<>.checkCancellation()();
  if (v5)
  {
    v6 = *(v0 + 336);
    (*(*(v0 + 288) + 8))(*(v0 + 328), *(v0 + 280));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 400) = v9;
    *v9 = v0;
    v9[1] = sub_1009D5568;
    v10 = *(v0 + 328);

    return sub_1009D80D8(v10);
  }
}

uint64_t sub_1009D5568()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_1009D58A4;
  }

  else
  {
    v2 = sub_1009D567C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D567C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1009D5734()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1009D57F8()
{
  v1 = *(v0 + 336);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1009D58A4()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1009D5964(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = type metadata accessor for URL();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_1009D5A28, 0, 0);
}

uint64_t sub_1009D5A28()
{
  v33 = v0;
  if (URL.isFileURL.getter())
  {
    (*(v0[35] + 16))(v0[31], v0[32], v0[34]);
    v1 = [objc_opt_self() defaultManager];
    v2 = sub_100D42FC0();

    if (v2)
    {
      v3 = swift_task_alloc();
      v0[37] = v3;
      *v3 = v0;
      v3[1] = sub_1009D5F20;
      v4 = v0[36];
      v5 = v0[32];

      return sub_1009D74F4(v4, v5);
    }

    static Task<>.checkCancellation()();
  }

  else
  {
    v7 = objc_opt_self();
    v8 = [v7 _atomicIncrementAssertCount];
    v32 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v32);
    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v17 = sub_1005CF000();
    *(inited + 96) = v17;
    v18 = sub_1005CF04C();
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 99;
    v20 = v32;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "Expected a file URL.", 20, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    [v7 handleFailureInFunction:v27 file:v28 lineNumber:99 isFatal:0 format:v29 args:v26];

    sub_1009DB968();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1009D5F20()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1009D6128;
  }

  else
  {
    v2 = sub_1009D6034;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D6034()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[31];
  (*(v2 + 8))(v4, v3);
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[38];
  static Task<>.checkCancellation()();
  if (v5)
  {
    (*(v0[35] + 8))(v0[31], v0[34]);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1009D6128()
{
  (*(v0[35] + 8))(v0[31], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1009D61A4(uint64_t a1)
{
  v2[96] = v1;
  v2[95] = a1;
  sub_1005B981C(&unk_1019F33C0);
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  sub_1005B981C(&unk_101A1B880);
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v3 = type metadata accessor for CRLAssetData();
  v2[101] = v3;
  v2[102] = *(v3 - 8);
  v2[103] = swift_task_alloc();

  return _swift_task_switch(sub_1009D62F0, 0, 0);
}

uint64_t sub_1009D62F0()
{
  v30 = v0;
  v1 = [*(v0 + 768) preinsertionAsset];
  *(v0 + 832) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 840) = v2;
    *v2 = v0;
    v2[1] = sub_1009D67A8;

    return sub_100CF1D24();
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_1005CF000();
    *(inited + 96) = v14;
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 117;
    v17 = v29;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:117 isFatal:0 format:v26 args:v23];

    sub_1009DB968();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_1009D67A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 848) = a1;
  *(v3 + 856) = v1;

  if (v1)
  {
    v4 = sub_1009D7448;
  }

  else
  {
    v4 = sub_1009D68C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1009D68C0()
{
  v90 = v0;
  sub_10000630C(*(v0 + 848) + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v0 + 712);
  sub_1005B981C(&qword_1019FF208);
  type metadata accessor for CRLAssetBackedAssetStorage();
  v1 = swift_dynamicCast();
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 792);
  if (v1)
  {
    sub_1008786E0(*(v0 + 752) + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, *(v0 + 792));

    (*(v2 + 56))(v4, 0, 1, v3);
  }

  else
  {
    (*(v2 + 56))(*(v0 + 792), 1, 1, *(v0 + 808));
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v89[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v89);
    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_1005CF000();
    *(inited + 96) = v15;
    v16 = sub_1005CF04C();
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 122;
    v18 = v89[0];
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:122 isFatal:0 format:v27 args:v24];
  }

  v28 = *(v0 + 816);
  v29 = *(v0 + 808);
  v30 = *(v0 + 800);
  sub_10003DFF8(*(v0 + 792), v30, &unk_101A1B880);
  if ((*(v28 + 48))(v30, 1, v29) == 1)
  {
    v31 = *(v0 + 848);
    v32 = *(v0 + 832);
    sub_10000CAAC(*(v0 + 800), &unk_101A1B880);
    sub_1009DB968();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();

LABEL_19:

    v81 = *(v0 + 8);
    goto LABEL_20;
  }

  v34 = *(v0 + 856);
  sub_1006008F0(*(v0 + 800), *(v0 + 824));
  static Task<>.checkCancellation()();
  if (v34)
  {
    v35 = *(v0 + 848);
    v36 = *(v0 + 832);
    sub_1009DB3B0(*(v0 + 824), type metadata accessor for CRLAssetData);

    goto LABEL_19;
  }

  v37 = [*(v0 + 768) boardItemFactory];
  v38 = *(*&v37[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board] + OBJC_IVAR____TtC8Freeform8CRLBoard_store);

  v39 = *&v38[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v39 + 16));
  v40 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v41 = *&v38[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v41)
  {
    v42 = *&v38[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v43 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v44 = v38;
    v45 = sub_10001F1A0(v44);

    v46 = *&v38[v40];
    *&v38[v40] = v45;
    v42 = v45;

    v41 = 0;
  }

  v47 = *(v0 + 824);
  v48 = *(v0 + 776);
  v49 = *(v39 + 16);
  v50 = v41;
  os_unfair_lock_unlock(v49);
  sub_10108CAF4(v47, 0, 3, 0, 0, v48);

  v51 = type metadata accessor for URL();
  v88 = *(v51 - 8);
  v52 = *(v88 + 48);
  if (v52(v48, 1, v51) == 1)
  {
    v86 = v52;
    v87 = v51;
    v85 = objc_opt_self();
    v53 = [v85 _atomicIncrementAssertCount];
    v89[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v89);
    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v55 = String._bridgeToObjectiveC()();

    v56 = [v55 lastPathComponent];

    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v60 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_10146CA70;
    *(v61 + 56) = &type metadata for Int32;
    *(v61 + 64) = &protocol witness table for Int32;
    *(v61 + 32) = v53;
    v62 = sub_1005CF000();
    *(v61 + 96) = v62;
    v63 = sub_1005CF04C();
    *(v61 + 104) = v63;
    *(v61 + 72) = v54;
    *(v61 + 136) = &type metadata for String;
    v64 = sub_1000053B0();
    *(v61 + 112) = v57;
    *(v61 + 120) = v59;
    *(v61 + 176) = &type metadata for UInt;
    *(v61 + 184) = &protocol witness table for UInt;
    *(v61 + 144) = v64;
    *(v61 + 152) = 128;
    v65 = v89[0];
    *(v61 + 216) = v62;
    *(v61 + 224) = v63;
    *(v61 + 192) = v65;
    v66 = v54;
    v67 = v65;
    v68 = static os_log_type_t.error.getter();
    sub_100005404(v60, &_mh_execute_header, v68, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v61);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v69 = static os_log_type_t.error.getter();
    sub_100005404(v60, &_mh_execute_header, v69, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v70 = swift_allocObject();
    v70[2] = 8;
    v70[3] = 0;
    v70[4] = 0;
    v70[5] = 0;
    v71 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v72 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v73 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v74 = String._bridgeToObjectiveC()();

    [v85 handleFailureInFunction:v72 file:v73 lineNumber:128 isFatal:0 format:v74 args:v71];

    v52 = v86;
    v51 = v87;
  }

  v75 = *(v0 + 784);
  sub_10003DFF8(*(v0 + 776), v75, &unk_1019F33C0);
  v76 = v52(v75, 1, v51);
  v77 = *(v0 + 848);
  v78 = *(v0 + 832);
  v79 = *(v0 + 824);
  if (v76 == 1)
  {
    sub_10000CAAC(*(v0 + 784), &unk_1019F33C0);
    sub_1009DB968();
    swift_allocError();
    *v80 = 1;
    swift_willThrow();

    sub_1009DB3B0(v79, type metadata accessor for CRLAssetData);
    goto LABEL_19;
  }

  v83 = *(v0 + 784);
  v84 = *(v0 + 760);
  sub_1009DB3B0(*(v0 + 824), type metadata accessor for CRLAssetData);

  (*(v88 + 32))(v84, v83, v51);

  v81 = *(v0 + 8);
LABEL_20:

  return v81();
}

uint64_t sub_1009D7448()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1009D74F4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for URL();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1009D75B8, 0, 0);
}

uint64_t sub_1009D75B8()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = sub_100D42FC0();

  if (v2)
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = [objc_allocWithZone(NSFileCoordinator) init];
    v6 = OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_fileCoordinator;
    v0[9] = OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_fileCoordinator;
    v7 = *(v3 + v6);
    *(v3 + v6) = v5;

    v0[2] = 0;
    v8 = swift_allocObject();
    v0[10] = v8;
    swift_unknownObjectWeakInit();
    v9 = swift_task_alloc();
    v0[11] = v9;
    v9[2] = v8;
    v9[3] = v4;
    v9[4] = v0 + 2;
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_1009D77C0;
    v11 = v0[8];
    v12 = v0[6];

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000023, 0x800000010157F480, sub_1009DBA10, v9, v12);
  }

  else
  {
    sub_1009DB9BC();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1009D77C0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1009D7990;
  }

  else
  {

    v2 = sub_1009D78E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D78E4()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v5 + v1);
  *(v5 + v1) = 0;

  (*(v4 + 32))(v6, v2, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1009D7990()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1009D7A0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1005B981C(&qword_101A0B540);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_fileCoordinator);
    if (v12)
    {
      v13 = v12;
      URL._bridgeToObjectiveC()(v14);
      v16 = v15;
      (*(v7 + 16))(v9, a1, v6);
      v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = v11;
      (*(v7 + 32))(v18 + v17, v9, v6);
      v19 = swift_allocObject();
      *(v19 + 16) = sub_1009DBA1C;
      *(v19 + 24) = v18;
      aBlock[4] = sub_100055B68;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100055A5C;
      aBlock[3] = &unk_101890700;
      v20 = _Block_copy(aBlock);
      v11 = v11;

      aBlock[0] = *a4;
      [v13 coordinateReadingItemAtURL:v16 options:8 error:aBlock byAccessor:v20];
      _Block_release(v20);

      v21 = aBlock[0];
      v22 = *a4;
      *a4 = aBlock[0];
      v23 = v21;

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_1009DB9BC();
  v26 = swift_allocError();
  *v27 = 1;
  aBlock[0] = v26;
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1009D7D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = objc_allocWithZone(CRLTemporaryDirectory);
  v38 = 0;
  v17 = [v16 initWithError:&v38];
  v35 = a1;
  v36 = v15;
  if (v17)
  {
    v34 = v8;
    v18 = v38;
    [v17 setAssociatedLifetimeObject:a2];
    URL.lastPathComponent.getter();
    v19 = [v17 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.appendingPathComponent(_:)();

    (*(v6 + 8))(v11, v5);
    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    URL._bridgeToObjectiveC()(v23);
    v25 = v24;
    v38 = 0;
    LOBYTE(v19) = [v15 copyItemAtURL:v22 toURL:v24 error:&v38];

    if (v19)
    {
      v26 = v38;

      v27 = *(v6 + 16);
      goto LABEL_9;
    }

    v30 = v38;
    v29 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v8 = v34;
  }

  else
  {
    v28 = v38;
    v29 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v27 = *(v6 + 16);
  v27(v8, v35, v5);
  if (v17)
  {
    (*(v6 + 8))(v14, v5);
  }

  (*(v6 + 32))(v14, v8, v5);
  v38 = v29;
  sub_1005B981C(&qword_101A0B540);
  CheckedContinuation.resume(throwing:)();
LABEL_9:
  v31 = v36;
  v27(v11, v14, v5);
  sub_1005B981C(&qword_101A0B540);
  CheckedContinuation.resume(returning:)();

  return (*(v6 + 8))(v14, v5);
}

uint64_t sub_1009D80D8(uint64_t a1)
{
  v2[183] = v1;
  v2[177] = a1;
  v3 = type metadata accessor for CRLAssetData();
  v2[189] = v3;
  v2[195] = *(v3 - 8);
  v2[201] = swift_task_alloc();
  v2[207] = swift_task_alloc();
  v2[213] = swift_task_alloc();
  v2[219] = sub_1005B981C(&unk_101A1B880);
  v2[225] = swift_task_alloc();
  v2[231] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[237] = v4;
  v5 = *(v4 - 8);
  v2[243] = v5;
  v2[249] = *(v5 + 64);
  v2[255] = swift_task_alloc();
  v2[261] = swift_task_alloc();
  v2[267] = swift_task_alloc();
  v2[268] = swift_task_alloc();
  v2[269] = swift_task_alloc();

  return _swift_task_switch(sub_1009D8290, 0, 0);
}

uint64_t sub_1009D8290()
{
  v1 = v0[269];
  v2 = v0[243];
  v3 = v0[237];
  v4 = v0[183];
  v5 = v0[177];
  v6 = *(v2 + 16);
  v0[270] = v6;
  v0[271] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = [v4 preinsertionAsset];
  if (v7)
  {
    v8 = *&v7[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename];
    v9 = *&v7[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename + 8];
    v10 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v0[273] = v9;
  v0[272] = v8;
  v0[274] = type metadata accessor for MainActor();
  v0[275] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009D83B4, v12, v11);
}

uint64_t sub_1009D83B4()
{
  v1 = v0[270];
  v2 = v0[269];
  v3 = v0[268];
  v4 = v0[237];

  v1(v3, v2, v4);
  objc_allocWithZone(type metadata accessor for CRLFileURLMetadataProvider(0));
  if (URL.isFileURL.getter())
  {
    v5 = v0[267];
    (v0[270])(v5, v0[268], v0[237]);
    v6 = sub_100FC6CE8(v5);
    v0[276] = v6;
    v0[277] = 0;
    v13 = v6;
    v14 = v0[273];
    v15 = v0[272];
    v16 = v0[269];
    v17 = v0[268];
    v18 = v0[243];
    v19 = v0[237];
    v20 = *(v18 + 8);
    v0[278] = v20;
    v0[279] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v17, v19);
    v20(v16, v19);
    v21 = &v13[OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase_filename];
    *v21 = v15;
    *(v21 + 1) = v14;

    v22 = sub_1009D8620;
  }

  else
  {
    v7 = v0[268];
    v8 = v0[243];
    v9 = v0[237];
    sub_100928838();
    v10 = swift_allocError();
    *v11 = 5;
    swift_willThrow();
    v12 = *(v8 + 8);
    v12(v7, v9);
    swift_deallocPartialClassInstance();
    v0[283] = v10;
    v12(v0[269], v0[237]);

    v22 = sub_1009D8B54;
  }

  return _swift_task_switch(v22, 0, 0);
}

uint64_t sub_1009D8620()
{
  v1 = *(v0 + 2208);
  v2 = [*(v0 + 1464) boardItemFactory];
  v3 = *&v2[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];

  type metadata accessor for CRLBoardItemImporterHelper();
  v4 = swift_allocObject();
  *(v0 + 2240) = v4;
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  *(v0 + 2248) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v6 = v1;

  swift_asyncLet_begin();
  v7 = swift_task_alloc();
  *(v0 + 2256) = v7;
  *v7 = v0;
  v7[1] = sub_1009D8794;

  return sub_100FC8014(250.0, 150.0, 150.0);
}

uint64_t sub_1009D8794(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  *(v4 + 1360) = a3;
  *(v4 + 1352) = a2;
  *(v4 + 1344) = a1;
  *(v4 + 1336) = v3;
  *(v4 + 2448) = a3;

  return _swift_task_switch(sub_1009D88A4, 0, 0);
}

uint64_t sub_1009D88A4()
{
  if (*(v0 + 2448))
  {
    *(v0 + 2272) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 2280) = v2;
    *(v0 + 2288) = v1;

    return _swift_task_switch(sub_1009D8C4C, v2, v1);
  }

  else
  {
    v3 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{*(v0 + 1344), *(v0 + 1352)}];
    v4 = *(v0 + 2216);
    *(v0 + 2352) = v3;
    static Task<>.checkCancellation()();
    *(v0 + 2360) = v4;
    if (v4)
    {

      v5 = *(v0 + 1848);

      return _swift_asyncLet_finish(v0 + 16, v5, sub_1009D9C8C, v0 + 1296);
    }

    else
    {
      v6 = *(v0 + 2240);
      v7 = *(v0 + 2040);
      v8 = *(v0 + 1992);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1896);
      v11 = *(v0 + 1464);
      (*(v0 + 2160))(v7, *(v0 + 1416), v10);
      v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
      v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      v14 = swift_allocObject();
      *(v0 + 2368) = v14;
      *(v14 + 16) = v6;
      (*(v9 + 32))(v14 + v12, v7, v10);
      *(v14 + v13) = v11;

      v15 = v11;
      swift_asyncLet_begin();
      v16 = OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__progress;
      *(v0 + 2376) = OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__progress;
      [*&v15[v16] maxValue];
      *(v0 + 2384) = v17;
      [*&v15[v16] setValue:v17 * 0.2];
      v18 = *(v0 + 1848);

      return _swift_asyncLet_get_throwing(v0 + 16, v18, sub_1009D9288, v0 + 1376);
    }
  }
}

uint64_t sub_1009D8B54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1009D8C4C()
{
  v1 = *(v0 + 2224);
  v2 = *(v0 + 2088);
  v3 = *(v0 + 1896);
  (*(v0 + 2160))(v2, *(v0 + 2208) + OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase_url, v3);
  v4 = objc_allocWithZone(QLThumbnailGenerationRequest);
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = [v4 initWithFileAtURL:v6 size:4 scale:250.0 representationTypes:{250.0, 1.0}];
  *(v0 + 2296) = v8;

  v1(v2, v3);
  [v8 setIconMode:0];
  v9 = swift_task_alloc();
  *(v0 + 2304) = v9;
  *(v9 + 16) = v8;
  v10 = swift_task_alloc();
  *(v0 + 2312) = v10;
  *(v10 + 16) = v8;
  v11 = static MainActor.shared.getter();
  *(v0 + 2320) = v11;
  v12 = swift_task_alloc();
  *(v0 + 2328) = v12;
  v13 = sub_1005B981C(&unk_101A265A0);
  *v12 = v0;
  v12[1] = sub_1009D8E34;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 1368, &unk_10148C758, v9, sub_100911B3C, v10, v11, &protocol witness table for MainActor, v13);
}

uint64_t sub_1009D8E34()
{
  v2 = *v1;
  *(*v1 + 2336) = v0;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 2288);
    v5 = *(v2 + 2280);

    return _swift_task_switch(sub_1009D8F8C, v5, v4);
  }
}

uint64_t sub_1009D8F8C()
{

  *(v0 + 2344) = *(v0 + 1368);

  return _swift_task_switch(sub_1009D9008, 0, 0);
}

uint64_t sub_1009D9008()
{
  v1 = *(v0 + 2344);
  if (v1)
  {
    [*(v0 + 2344) size];
    v4 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{v2, v3}];
  }

  else
  {
    v4 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{250.0, 150.0}];
  }

  v5 = *(v0 + 2336);
  *(v0 + 2352) = v4;
  static Task<>.checkCancellation()();
  *(v0 + 2360) = v5;
  if (v5)
  {

    v6 = *(v0 + 1848);

    return _swift_asyncLet_finish(v0 + 16, v6, sub_1009D9C8C, v0 + 1296);
  }

  else
  {
    v7 = *(v0 + 2240);
    v8 = *(v0 + 2040);
    v9 = *(v0 + 1992);
    v10 = *(v0 + 1944);
    v11 = *(v0 + 1896);
    v12 = *(v0 + 1464);
    (*(v0 + 2160))(v8, *(v0 + 1416), v11);
    v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = swift_allocObject();
    *(v0 + 2368) = v15;
    *(v15 + 16) = v7;
    (*(v10 + 32))(v15 + v13, v8, v11);
    *(v15 + v14) = v12;

    v16 = v12;
    swift_asyncLet_begin();
    v17 = OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__progress;
    *(v0 + 2376) = OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__progress;
    [*&v16[v17] maxValue];
    *(v0 + 2384) = v18;
    [*&v16[v17] setValue:v18 * 0.2];
    v19 = *(v0 + 1848);

    return _swift_asyncLet_get_throwing(v0 + 16, v19, sub_1009D9288, v0 + 1376);
  }
}

uint64_t sub_1009D9288()
{
  *(v1 + 2392) = v0;
  if (v0)
  {
    v2 = sub_1009D9DBC;
  }

  else
  {
    v2 = sub_1009D92BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D92BC()
{
  v1 = *(v0 + 1800);
  v2 = *(v0 + 1560);
  v3 = *(v0 + 1512);
  sub_1009DB8F8(*(v0 + 1848), v1);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    sub_10000CAAC(*(v0 + 1800), &unk_101A1B880);
LABEL_7:
    sub_1009DB968();
    *(v0 + 2440) = swift_allocError();
    *v12 = 1;
    swift_willThrow();
    v8 = sub_1009D9AC8;
    v9 = *(v0 + 1704);
    v10 = v0 + 656;
    v11 = v0 + 1520;
    goto LABEL_8;
  }

  v4 = *(v0 + 2352);
  sub_1006008F0(*(v0 + 1800), *(v0 + 1656));
  if (!v4)
  {
    sub_1009DB3B0(*(v0 + 1656), type metadata accessor for CRLAssetData);
    goto LABEL_7;
  }

  v5 = *(v0 + 2392);
  v6 = *(v0 + 2352);
  static Task<>.checkCancellation()();
  *(v0 + 2400) = v5;
  if (v5)
  {
    v7 = *(v0 + 2352);
    sub_1009DB3B0(*(v0 + 1656), type metadata accessor for CRLAssetData);

    v8 = sub_1009D9FA0;
    v9 = *(v0 + 1704);
    v10 = v0 + 656;
    v11 = v0 + 1616;
LABEL_8:

    return _swift_asyncLet_finish(v10, v9, v8, v11);
  }

  *(v0 + 2408) = [*(v0 + 1464) boardItemFactory];
  v13 = *(v0 + 1704);

  return _swift_asyncLet_get_throwing(v0 + 656, v13, sub_1009D9498, v0 + 1712);
}

uint64_t sub_1009D9498()
{
  *(v1 + 2416) = v0;
  if (v0)
  {

    v2 = sub_1009DA164;
  }

  else
  {
    v2 = sub_1009D9518;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D9518()
{
  v1 = *(v0 + 2416);
  v2 = *(v0 + 2408);
  v3 = *(v0 + 2352);
  v4 = *(v0 + 1656);
  v5 = *(v0 + 1608);
  v6 = *(v0 + 1464);
  sub_1008786E0(*(v0 + 1704), v5);
  v7 = sub_10110D7C4(v5, v4, v3);

  sub_1009DB3B0(v5, type metadata accessor for CRLAssetData);
  v8 = OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__boardItem;
  v9 = *(v6 + OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__boardItem);
  *(v6 + OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__boardItem) = v7;

  static Task<>.checkCancellation()();
  *(v0 + 2424) = v1;
  if (v1)
  {
    v10 = *(v0 + 2352);
    sub_1009DB3B0(*(v0 + 1656), type metadata accessor for CRLAssetData);

    v11 = sub_1009DA3B4;
    v12 = *(v0 + 1704);
    v13 = v0 + 656;
    v14 = v0 + 1856;
  }

  else
  {
    [*(*(v0 + 1464) + *(v0 + 2376)) setValue:*(v0 + 2384) * 0.9];
    if (*(v6 + v8))
    {
      v15 = *(v0 + 2352);
      v16 = *(v0 + 1656);
      [*(*(v0 + 1464) + *(v0 + 2376)) setValue:*(v0 + 2384)];
      sub_1009DA8AC();

      sub_1009DB3B0(v16, type metadata accessor for CRLAssetData);
      v11 = sub_1009D973C;
      v12 = *(v0 + 1704);
      v13 = v0 + 656;
      v14 = v0 + 2048;
    }

    else
    {
      v17 = *(v0 + 2352);
      v18 = *(v0 + 1656);
      sub_1009DB968();
      *(v0 + 2432) = swift_allocError();
      *v19 = 1;
      swift_willThrow();

      sub_1009DB3B0(v18, type metadata accessor for CRLAssetData);
      v11 = sub_1009D9904;
      v12 = *(v0 + 1704);
      v13 = v0 + 656;
      v14 = v0 + 1952;
    }
  }

  return _swift_asyncLet_finish(v13, v12, v11, v14);
}

uint64_t sub_1009D9758()
{
  v1 = *(v0 + 1848);

  return _swift_asyncLet_finish(v0 + 16, v1, sub_1009D97C4, v0 + 2096);
}

uint64_t sub_1009D97E0()
{
  v1 = *(v0 + 2208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1009D9920()
{
  v1 = *(v0 + 1848);

  return _swift_asyncLet_finish(v0 + 16, v1, sub_1009D998C, v0 + 2000);
}

uint64_t sub_1009D99A8()
{
  v1 = *(v0 + 2208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1009D9AE4()
{
  v1 = *(v0 + 1848);

  return _swift_asyncLet_finish(v0 + 16, v1, sub_1009D9B50, v0 + 1568);
}

uint64_t sub_1009D9B6C()
{
  v1 = *(v0 + 2208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1009D9CA8()
{
  v1 = *(v0 + 2208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1009D9DF8()
{
  v1 = *(v0 + 1848);

  return _swift_asyncLet_finish(v0 + 16, v1, sub_1009D9E64, v0 + 1472);
}

uint64_t sub_1009D9E80()
{
  v1 = *(v0 + 2208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1009D9FBC()
{
  v1 = *(v0 + 1848);

  return _swift_asyncLet_finish(v0 + 16, v1, sub_1009DA028, v0 + 1664);
}

uint64_t sub_1009DA044()
{
  v1 = *(v0 + 2208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1009DA164()
{
  v1 = *(v0 + 1656);

  sub_1009DB3B0(v1, type metadata accessor for CRLAssetData);
  v2 = *(v0 + 1704);

  return _swift_asyncLet_finish(v0 + 656, v2, sub_1009DA1F0, v0 + 1760);
}

uint64_t sub_1009DA20C()
{
  v1 = *(v0 + 1848);

  return _swift_asyncLet_finish(v0 + 16, v1, sub_1009DA278, v0 + 1808);
}

uint64_t sub_1009DA294()
{
  v1 = *(v0 + 2208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1009DA3D0()
{
  v1 = *(v0 + 1848);

  return _swift_asyncLet_finish(v0 + 16, v1, sub_1009DA43C, v0 + 1904);
}

uint64_t sub_1009DA458()
{
  v1 = *(v0 + 2208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1009DA578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002D3D4;

  return sub_100F7F768(a1, a3, 1);
}

uint64_t sub_1009DA62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1009DA650, 0, 0);
}

uint64_t sub_1009DA650()
{
  v1 = [*(v0 + 40) preinsertionAsset];
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1009DA70C;
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);

  return sub_100F7F410(v4, v3, v1);
}

uint64_t sub_1009DA70C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1009DA848, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1009DA848()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_1009DA8AC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v8 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  v14 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  v20 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__boardItem);
  if (!v20)
  {
    return;
  }

  type metadata accessor for CRLFileItem();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    return;
  }

  v22 = v21;
  v69 = v2;
  v67 = v10;
  if (**(v21 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A241E8)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v65 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v62 = v4;
  v68 = v1;
  swift_beginAccess();
  v66 = v20;

  v64 = sub_1005B981C(&qword_101A0B528);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  sub_1008786E0(v7, v13);
  sub_1009DB3B0(v7, type metadata accessor for CRLFileItemAtomicDataStruct);
  v63 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store;
  v23 = *(v22 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v24 = *&v23[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v24 + 16));
  v25 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v26 = *&v23[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v26)
  {
    v27 = *&v23[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v28 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v29 = v23;
    v30 = sub_10001F1A0(v29);

    v31 = *&v23[v25];
    *&v23[v25] = v30;
    v27 = v30;

    v26 = 0;
  }

  v32 = *(v24 + 16);
  v33 = v26;
  os_unfair_lock_unlock(v32);
  sub_10108CAF4(v13, 0, 3, 0, 0, v19);

  sub_1009DB3B0(v13, type metadata accessor for CRLAssetData);
  v35 = v68;
  v34 = v69;
  v36 = *(v69 + 48);
  if (v36(v19, 1, v68) == 1)
  {
    v37 = v66;

    sub_10000CAAC(v19, &unk_1019F33C0);
    return;
  }

  v60 = v36;
  v59 = URL.pathExtension.getter();
  v61 = v38;
  v58 = *(v34 + 8);
  v58(v19, v35);
  if (**(v22 + v65) != &off_101A241E8)
  {
    goto LABEL_19;
  }

  swift_beginAccess();

  CRRegister.wrappedValue.getter();
  swift_endAccess();

  sub_1008786E0(v7, v67);
  sub_1009DB3B0(v7, type metadata accessor for CRLFileItemAtomicDataStruct);
  v39 = *(v22 + v63);
  v40 = v66;

  v41 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v41 + 16));
  v42 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v43 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v43)
  {
    v44 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v45 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v46 = v39;
    v47 = sub_10001F1A0(v46);

    v48 = *&v39[v42];
    *&v39[v42] = v47;
    v44 = v47;

    v35 = v68;
    v43 = 0;
  }

  v49 = *(v41 + 16);
  v50 = v43;
  os_unfair_lock_unlock(v49);
  v51 = v67;
  sub_10108CAF4(v67, 0, 3, 0, 0, v16);

  if (v60(v16, 1, v35) == 1)
  {

    sub_10000CAAC(v16, &unk_1019F33C0);
  }

  else
  {
    v52 = v62;
    (*(v69 + 32))(v62, v16, v35);
    URL._bridgeToObjectiveC()(v53);
    v55 = v54;
    v56 = [v54 crl_fileSize];

    v58(v52, v35);
    sub_100C7BB1C(v59, v61, v56);
  }

  sub_1009DB3B0(v51, type metadata accessor for CRLAssetData);
}

id sub_1009DAFE4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__progress;
  *&v3[v6] = [objc_allocWithZone(CRLBasicProgress) initWithMaxValue:100.0];
  *&v3[OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_maximumLongEdge] = 0x406F400000000000;
  *&v3[OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_defaultShortEdge] = 0x4062C00000000000;
  *&v3[OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_importBoardItemTask] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_fileCoordinator] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__boardItem] = 0;
  v7 = OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__error;
  v3[OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__error] = 3;
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for CRLFileItemImporter();
  v10 = objc_msgSendSuper2(&v13, "initWithURL:boardItemFactory:", v9, a2);

  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

id sub_1009DB1AC(void *a1, void *a2)
{
  v5 = OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__progress;
  *&v2[v5] = [objc_allocWithZone(CRLBasicProgress) initWithMaxValue:100.0];
  *&v2[OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_maximumLongEdge] = 0x406F400000000000;
  *&v2[OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_defaultShortEdge] = 0x4062C00000000000;
  *&v2[OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_importBoardItemTask] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform19CRLFileItemImporter_fileCoordinator] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__boardItem] = 0;
  v2[OBJC_IVAR____TtC8Freeform19CRLFileItemImporter__error] = 3;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for CRLFileItemImporter();
  v6 = objc_msgSendSuper2(&v8, "initWithData:boardItemFactory:", a1, a2);

  if (v6)
  {
  }

  return v6;
}

id sub_1009DB2EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFileItemImporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1009DB3B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1009DB410()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-v5];
  v7 = [objc_opt_self() defaultManager];
  if ((URL.isFileURL.getter() & 1) != 0 && (v16 = 0, URL.path.getter(), v8 = String._bridgeToObjectiveC()(), , v9 = [v7 fileExistsAtPath:v8 isDirectory:&v16], v8, v9) && (v16 & 1) == 0)
  {
  }

  else
  {
    v10 = sub_100D42FC0();

    if ((v10 & 1) == 0)
    {
      v11 = 0;
      return v11 & 1;
    }
  }

  UTType.init(_:)();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_10000CAAC(v6, &unk_1019F8DB0);
    v11 = 1;
  }

  else
  {
    static UTType.url.getter();
    v12 = UTType.conforms(to:)();
    v13 = *(v1 + 8);
    v13(v3, v0);
    v13(v6, v0);
    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_1009DB690(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002D3D4;

  return sub_1009DA578(a1, v5, v4);
}

uint64_t sub_1009DB73C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_100FC8AC4(a1, v4);
}

uint64_t sub_1009DB7DC(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1009DA62C(a1, v6, v1 + v5, v7);
}

uint64_t sub_1009DB8F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A1B880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1009DB968()
{
  result = qword_101A0B530;
  if (!qword_101A0B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B530);
  }

  return result;
}

unint64_t sub_1009DB9BC()
{
  result = qword_101A0B538;
  if (!qword_101A0B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B538);
  }

  return result;
}

uint64_t sub_1009DBA1C(uint64_t a1)
{
  v3 = *(sub_1005B981C(&qword_101A0B540) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1009D7D2C(a1, v4, v5);
}

uint64_t sub_1009DBA9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1009D48D4(a1, v4, v5, v6);
}

uint64_t sub_1009DBB50()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D3D4;

  return sub_1009D3EF8(v2, v3);
}

unint64_t sub_1009DBC10()
{
  result = qword_101A0B548;
  if (!qword_101A0B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B548);
  }

  return result;
}

uint64_t sub_1009DBCAC()
{
  result = sub_100006370(319, &qword_101A00E68);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1009DBD58@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a3;
  v5 = type metadata accessor for UUID();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v56 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = &v51 - v8;
  v9 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v9 - 8);
  v59 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v14 = type metadata accessor for CRLProto_Data(0);
  v61 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = (&v51 - v18);
  v20 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v20 - 8);
  v21 = type metadata accessor for CRLProto_RealTimeEnter(0);
  __chkstk_darwin(v21);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  sub_100024E98(a1, a2);
  BinaryDecodingOptions.init()();
  sub_1009DCEC4(&qword_101A0B5E8, type metadata accessor for CRLProto_RealTimeEnter);
  v24 = v62;
  Message.init(serializedData:extensions:partial:options:)();
  if (v24)
  {
    return sub_10002640C(a1, a2);
  }

  v52 = v16;
  v53 = v21;
  v62 = a1;
  v54 = a2;
  sub_10084DD24(&v23[*(v21 + 24)], v13);
  v26 = *(v61 + 6);
  v27 = v26(v13, 1, v14);
  v61 = v26;
  if (v27 == 1)
  {
    *v19 = xmmword_10146F370;
    UnknownStorage.init()();
    v28 = v14;
    if (v26(v13, 1, v14) != 1)
    {
      sub_1009DCE5C(v13);
    }
  }

  else
  {
    v28 = v14;
    sub_100683F6C(v13, v19);
  }

  v30 = *v19;
  v29 = v19[1];
  sub_100024E98(*v19, v29);
  sub_1009DCF0C(v19, type metadata accessor for CRLProto_Data);
  sub_100006370(0, &qword_101A1AEB0);
  sub_100006370(0, &qword_101A00E68);
  v31 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  sub_10002640C(v30, v29);
  v32 = v59;
  sub_10084DD24(&v23[*(v53 + 28)], v59);
  v33 = v28;
  v34 = v28;
  v35 = v61;
  v36 = v23;
  if (v61(v32, 1, v34) == 1)
  {
    v37 = v52;
    *v52 = xmmword_10146F370;
    UnknownStorage.init()();
    if (v35(v32, 1, v33) != 1)
    {
      sub_1009DCE5C(v32);
    }
  }

  else
  {
    v37 = v52;
    sub_100683F6C(v32, v52);
  }

  v38 = *v37;
  v39 = v37[1];
  sub_100024E98(*v37, v39);
  sub_1009DCF0C(v37, type metadata accessor for CRLProto_Data);
  v40 = v60;
  UUID.init(crl_data:)(v38, v39);
  v41 = v62;
  v42 = *(v36 + *(v53 + 32));
  v43 = v56;
  v44 = v57;
  v45 = v58;
  (*(v57 + 16))(v56, v40, v58);
  if (v31)
  {
    v46 = *v36;
    LODWORD(v61) = (v42 == 2) | v42;
    sub_10002640C(v41, v54);
    (*(v44 + 8))(v40, v45);
    sub_1009DCF0C(v36, type metadata accessor for CRLProto_RealTimeEnter);
    v47 = v55;
    *v55 = v31;
    v48 = type metadata accessor for CRLRealTimeEnter(0);
    result = (*(v44 + 32))(v47 + v48[5], v43, v45);
    *(v47 + v48[6]) = v46;
    *(v47 + v48[7]) = v61 & 1;
  }

  else
  {
    sub_1006B305C();
    swift_allocError();
    *v49 = 0;
    swift_willThrow();
    sub_10002640C(v41, v54);
    v50 = *(v44 + 8);
    v50(v43, v45);
    v50(v40, v45);
    return sub_1009DCF0C(v36, type metadata accessor for CRLProto_RealTimeEnter);
  }

  return result;
}

uint64_t sub_1009DC47C()
{
  v1 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v1 - 8);
  v60 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v62 = v52 - v4;
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = (v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v58 = (v52 - v9);
  __chkstk_darwin(v10);
  v12 = (v52 - v11);
  v13 = type metadata accessor for CRLProto_RealTimeEnter(0);
  __chkstk_darwin(v13);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = 0;
  UnknownStorage.init()();
  v16 = v13[6];
  v66 = v6;
  v19 = *(v6 + 56);
  v17 = v6 + 56;
  v18 = v19;
  v19(&v15[v16], 1, 1, v5);
  v64 = v13[7];
  v19(&v15[v64], 1, 1, v5);
  v20 = v13[8];
  v15[v20] = 2;
  v63 = xmmword_10146F370;
  *v12 = xmmword_10146F370;
  UnknownStorage.init()();
  sub_1009DCE5C(&v15[v16]);
  sub_100683F6C(v12, &v15[v16]);
  v19(&v15[v16], 0, 1, v5);
  v61 = v0;
  v21 = v65;
  v22 = sub_1009DCA30();
  v65 = v21;
  if (v21)
  {
    goto LABEL_11;
  }

  v24 = v22;
  v52[0] = v23;
  v52[1] = v13;
  v54 = v12;
  v55 = v20;
  v56 = v17;
  v57 = v18;
  v25 = v62;
  sub_10084DD24(&v15[v16], v62);
  v26 = v66 + 48;
  v27 = *(v66 + 48);
  v28 = v27(v25, 1, v5);
  v53 = v27;
  v66 = v26;
  if (v28 == 1)
  {
    v29 = v58;
    *v58 = v63;
    UnknownStorage.init()();
    v30 = v5;
    v31 = v5;
    v32 = v29;
    v33 = v27(v25, 1, v31);
    v34 = v64;
    if (v33 != 1)
    {
      sub_1009DCE5C(v62);
    }
  }

  else
  {
    v30 = v5;
    v32 = v58;
    sub_100683F6C(v25, v58);
    v34 = v64;
  }

  sub_10002640C(*v32, *(v32 + 1));
  v35 = v52[0];
  *v32 = v24;
  *(v32 + 1) = v35;
  sub_1009DCE5C(&v15[v16]);
  sub_100683F6C(v32, &v15[v16]);
  v36 = &v15[v16];
  v37 = v30;
  v38 = v57;
  v57(v36, 0, 1, v30);
  v39 = v54;
  *v54 = v63;
  UnknownStorage.init()();
  sub_1009DCE5C(&v15[v34]);
  sub_100683F6C(v39, &v15[v34]);
  v38(&v15[v34], 0, 1, v30);
  v40 = type metadata accessor for CRLRealTimeEnter(0);
  v16 = v61;
  v41 = UUID.crl_data()();
  v62 = v42;
  v43 = v60;
  sub_10084DD24(&v15[v34], v60);
  v44 = v53;
  if (v53(v43, 1, v37) == 1)
  {
    v45 = v59;
    *v59 = v63;
    UnknownStorage.init()();
    if (v44(v43, 1, v37) != 1)
    {
      sub_1009DCE5C(v43);
    }
  }

  else
  {
    v45 = v59;
    sub_100683F6C(v43, v59);
  }

  sub_10002640C(*v45, *(v45 + 1));
  v46 = v62;
  *v45 = v41;
  *(v45 + 1) = v46;
  v47 = v64;
  sub_1009DCE5C(&v15[v64]);
  sub_100683F6C(v45, &v15[v47]);
  v57(&v15[v47], 0, 1, v37);
  v48 = *(v40 + 28);
  *v15 = *(v16 + *(v40 + 24));
  v15[v55] = *(v16 + v48);
  sub_1009DCEC4(&qword_101A0B5E8, type metadata accessor for CRLProto_RealTimeEnter);
  v49 = v65;
  v50 = Message.serializedData(partial:)();
  if (v49)
  {
LABEL_11:
    sub_1009DCF0C(v15, type metadata accessor for CRLProto_RealTimeEnter);
  }

  else
  {
    v16 = v50;
    sub_1009DCF0C(v15, type metadata accessor for CRLProto_RealTimeEnter);
  }

  return v16;
}

void *sub_1009DCA30()
{
  v5 = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:&v5];
  v2 = v5;
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1009DCB08()
{
  v0 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v21 - v1;
  v3 = type metadata accessor for CRLProto_Data(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v21 - v8);
  v10 = type metadata accessor for CRLProto_RealTimeLeave(0);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v24 = v10;
  v13 = *(v10 + 20);
  v14 = *(v4 + 56);
  v14(&v12[v13], 1, 1, v3);
  v21 = xmmword_10146F370;
  *v9 = xmmword_10146F370;
  UnknownStorage.init()();
  sub_1009DCE5C(&v12[v13]);
  sub_100683F6C(v9, &v12[v13]);
  v23 = v14;
  v14(&v12[v13], 0, 1, v3);
  v15 = v2;
  v22 = UUID.crl_data()();
  v17 = v16;
  sub_10084DD24(&v12[v13], v2);
  v18 = *(v4 + 48);
  if (v18(v15, 1, v3) == 1)
  {
    *v6 = v21;
    UnknownStorage.init()();
    if (v18(v15, 1, v3) != 1)
    {
      sub_1009DCE5C(v15);
    }
  }

  else
  {
    sub_100683F6C(v15, v6);
  }

  sub_10002640C(*v6, *(v6 + 1));
  *v6 = v22;
  *(v6 + 1) = v17;
  sub_1009DCE5C(&v12[v13]);
  sub_100683F6C(v6, &v12[v13]);
  v23(&v12[v13], 0, 1, v3);
  sub_1009DCEC4(&qword_1019F67E0, type metadata accessor for CRLProto_RealTimeLeave);
  v19 = Message.serializedData(partial:)();
  sub_1009DCF0C(v12, type metadata accessor for CRLProto_RealTimeLeave);
  return v19;
}

uint64_t sub_1009DCE5C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019F67C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1009DCEC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1009DCF0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1009DCFB4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1009DD020()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_1009DD074()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_alert];
  if (v1)
  {
    v2 = swift_allocObject();
    v2[3] = 0;
    v2[4] = 0;
    v2[2] = v0;
    aBlock[4] = sub_100674A10;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_101890A50;
    v3 = _Block_copy(aBlock);
    v4 = v1;
    v5 = v0;

    [v4 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for CRLInsertEditURLAlert();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for CRLInsertEditURLAlert()
{
  result = qword_101A0B758;
  if (!qword_101A0B758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1009DD290()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_1009DD3B8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_1009DD4A4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_1009DD588(uint64_t a1, uint64_t a2, char a3)
{
  v24 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  v12 = sub_1005B981C(&unk_101A0B780);
  v13 = __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = *(v6 + 48);
  v17 = v16(a1, 1, v5, v13);
  if (a3)
  {
    if (v17 != 1)
    {
      v20 = *(v12 + 48);
      sub_10001ACF0(a1, v15);
      sub_10001ACF0(v24, &v15[v20]);
      if ((v16)(v15, 1, v5) == 1)
      {
        if ((v16)(&v15[v20], 1, v5) == 1)
        {
          sub_10000CAAC(v15, &unk_1019F33C0);
          v18 = 0;
          return v18 & 1;
        }
      }

      else
      {
        sub_10001ACF0(v15, v11);
        if ((v16)(&v15[v20], 1, v5) != 1)
        {
          (*(v6 + 32))(v8, &v15[v20], v5);
          sub_1009DF064();
          v21 = dispatch thunk of static Equatable.== infix(_:_:)();
          v22 = *(v6 + 8);
          v22(v8, v5);
          v22(v11, v5);
          sub_10000CAAC(v15, &unk_1019F33C0);
          v18 = v21 ^ 1;
          return v18 & 1;
        }

        (*(v6 + 8))(v11, v5);
      }

      sub_10000CAAC(v15, &unk_101A0B780);
      v18 = 1;
      return v18 & 1;
    }

    v18 = 0;
  }

  else
  {
    v18 = v17 != 1;
  }

  return v18 & 1;
}

void sub_1009DD894(void *a1)
{
  v2 = v1;
  v4 = sub_1009DDB48();
  v5 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_alert);
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_alert) = v4;
  v6 = v4;

  v7 = v2 + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(ObjectType, v8);
    swift_unknownObjectRelease();
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_1009DF740;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = *"";
  v12[2] = sub_100007638;
  v12[3] = &unk_101890A00;
  v11 = _Block_copy(v12);

  [a1 presentViewController:v6 animated:1 completion:v11];
  _Block_release(v11);
  sub_1011047E4(v6);
}

void sub_1009DD9FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong beginningOfDocument];
    v3 = [v1 endOfDocument];
    v4 = [v1 textRangeFromPosition:v2 toPosition:v3];

    [v1 setSelectedTextRange:v4];
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v1);
  }
}

unint64_t sub_1009DDB48()
{
  sub_1009DD290();
  sub_1009DD3B8();
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = sub_1009DF0BC();
  [v3 _setHeaderContentViewController:v4];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = sub_1009DF438;
  v33 = v5;
  v28 = _NSConcreteStackBlock;
  v29 = *"";
  v30 = sub_10068B39C;
  v31 = &unk_101890910;
  v6 = _Block_copy(&v28);

  [v3 addTextFieldWithConfigurationHandler:v6];
  _Block_release(v6);
  sub_1009DD4A4();
  v7 = String._bridgeToObjectiveC()();

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = sub_1009DF440;
  v33 = v8;
  v28 = _NSConcreteStackBlock;
  v29 = *"";
  v30 = sub_100007638;
  v31 = &unk_101890938;
  v9 = _Block_copy(&v28);

  v32 = CRLWPShapeLayout.descendersCannotClip.getter;
  v33 = 0;
  v28 = _NSConcreteStackBlock;
  v29 = *"";
  v30 = sub_1006651B4;
  v31 = &unk_101890960;
  v10 = _Block_copy(&v28);
  [v3 _addActionWithTitle:v7 style:0 handler:v9 shouldDismissHandler:v10];
  _Block_release(v10);
  _Block_release(v9);

  v11 = [v3 actions];
  sub_100006370(0, &qword_101A0B790);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_10:

    v17 = 0;
    goto LABEL_11;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_3:
  v14 = __OFSUB__(v13, 1);
  result = v13 - 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v16 = *(v12 + 8 * result + 32);
LABEL_8:
  v17 = v16;

LABEL_11:
  v18 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_replaceAction);
  *(v0 + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_replaceAction) = v17;
  v19 = v17;

  if (v17)
  {
    [v19 setEnabled:0];
  }

  v20 = [objc_opt_self() mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = String._bridgeToObjectiveC()();

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = sub_1009DF448;
  v33 = v25;
  v28 = _NSConcreteStackBlock;
  v29 = *"";
  v30 = sub_100007638;
  v31 = &unk_101890988;
  v26 = _Block_copy(&v28);

  v32 = CRLWPShapeLayout.columnsAreLeftToRight.getter;
  v33 = 0;
  v28 = _NSConcreteStackBlock;
  v29 = *"";
  v30 = sub_1006651B4;
  v31 = &unk_1018909B0;
  v27 = _Block_copy(&v28);
  [v3 _addActionWithTitle:v24 style:1 handler:v26 shouldDismissHandler:v27];
  _Block_release(v27);
  _Block_release(v26);

  return v3;
}

void sub_1009DE0DC(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_role) == 1)
    {
      v11 = OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_initialURL;
      swift_beginAccess();
      sub_10001ACF0(&v10[v11], v8);
      if ((*(v3 + 48))(v8, 1, v2))
      {
        sub_10000CAAC(v8, &unk_1019F33C0);
        v12 = 0;
      }

      else
      {
        (*(v3 + 16))(v5, v8, v2);
        sub_10000CAAC(v8, &unk_1019F33C0);
        sub_1007AE4C0();
        (*(v3 + 8))(v5, v2);
        v12 = String._bridgeToObjectiveC()();
      }

      v17 = &selRef_setText_;
    }

    else
    {
      v13 = [objc_opt_self() mainBundle];
      v14 = String._bridgeToObjectiveC()();
      v15 = String._bridgeToObjectiveC()();
      v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();

      v17 = &selRef_setPlaceholder_;
    }

    [a1 *v17];

    [a1 setAutocorrectionType:1];
    [a1 setAutocapitalizationType:0];
    [a1 setSpellCheckingType:1];
    [a1 setKeyboardType:3];
    [a1 setTextAlignment:0];
    [a1 makeTextWritingDirectionLeftToRight:0];
    [a1 setSemanticContentAttribute:3];
    [a1 setClearButtonMode:1];
    [a1 setDelegate:v10];
    v18 = *&v10[OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_textField];
    *&v10[OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_textField] = a1;
    v19 = a1;
  }
}

void sub_1009DE4B8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&unk_101A0B780);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_1005B981C(&unk_1019F33C0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *&Strong[OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_textField];
    if (!v15)
    {

      return;
    }

    v32 = v1;
    v16 = v15;
    [v16 resignFirstResponder];
    v34 = sub_1009DF450(v16);
    [v34 startAnimating];
    v33 = v16;
    v17 = [v16 text];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    sub_1007ACDB8(v19, v21, v12);

    v22 = &v14[OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_delegate];
    if (!swift_unknownObjectWeakLoadStrong())
    {

LABEL_17:
      sub_10000CAAC(v12, &unk_1019F33C0);
      return;
    }

    v31 = *(v22 + 1);
    v23 = OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_initialURL;
    swift_beginAccess();
    v24 = *(v4 + 48);
    sub_10001ACF0(v12, v6);
    sub_10001ACF0(&v14[v23], &v6[v24]);
    v25 = *(v32 + 48);
    if (v25(v6, 1, v0) == 1)
    {
      if (v25(&v6[v24], 1, v0) == 1)
      {
        sub_10000CAAC(v6, &unk_1019F33C0);
        v26 = 0;
LABEL_16:
        ObjectType = swift_getObjectType();
        (*(v31 + 8))(v12, v26 & 1, ObjectType);

        swift_unknownObjectRelease();
        goto LABEL_17;
      }
    }

    else
    {
      sub_10001ACF0(v6, v10);
      if (v25(&v6[v24], 1, v0) != 1)
      {
        v27 = v32;
        (*(v32 + 32))(v3, &v6[v24], v0);
        sub_1009DF064();
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        v29 = *(v27 + 8);
        v29(v3, v0);
        v29(v10, v0);
        sub_10000CAAC(v6, &unk_1019F33C0);
        v26 = v28 ^ 1;
        goto LABEL_16;
      }

      (*(v32 + 8))(v10, v0);
    }

    sub_10000CAAC(v6, &unk_101A0B780);
    v26 = 1;
    goto LABEL_16;
  }
}

void sub_1009DE928()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_delegate;
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v1 + 8);

    if (v3)
    {
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1009DE9C8(uint64_t a1, void (*a2)(void))
{
  v4 = *(a1 + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_alert);
  *(a1 + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_alert) = 0;

  v5 = *(a1 + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_textField);
  *(a1 + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_textField) = 0;

  v6 = *(a1 + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_replaceAction);
  *(a1 + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_replaceAction) = 0;

  if (a2)
  {
    a2();
  }
}

void sub_1009DEA70()
{
  sub_10084E720();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1009DEB20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v29 - v16;
  v18 = [a1 text];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 stringByReplacingCharactersInRange:a2 withString:{a3, v21}];

    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v23;
  }

  else
  {
  }

  if (String.count.getter() < 1)
  {

    v26 = 0;
  }

  else
  {
    sub_1007ACDB8(a4, a5, v17);

    v24 = *(v5 + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_role);
    v25 = OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_initialURL;
    swift_beginAccess();
    sub_10001ACF0(v5 + v25, v13);
    v26 = sub_1009DD588(v17, v13, v24);
    sub_10000CAAC(v13, &unk_1019F33C0);
    sub_10000CAAC(v17, &unk_1019F33C0);
  }

  v27 = *(v5 + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_replaceAction);
  [v27 setEnabled:v26 & 1];

  return 1;
}

uint64_t sub_1009DEE1C(void *a1)
{
  v3 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v19 - v8;
  v10 = [a1 text];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (String.count.getter() < 1)
  {

LABEL_5:
    v17 = 0;
    return v17 & 1;
  }

  sub_1007ACDB8(v12, v14, v9);

  v15 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_role);
  v16 = OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_initialURL;
  swift_beginAccess();
  sub_10001ACF0(v1 + v16, v5);
  v17 = sub_1009DD588(v9, v5, v15);
  sub_10000CAAC(v5, &unk_1019F33C0);
  sub_10000CAAC(v9, &unk_1019F33C0);
  return v17 & 1;
}

unint64_t sub_1009DF010()
{
  result = qword_101A0B770;
  if (!qword_101A0B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B770);
  }

  return result;
}

unint64_t sub_1009DF064()
{
  result = qword_101A00190;
  if (!qword_101A00190)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00190);
  }

  return result;
}

id sub_1009DF0BC()
{
  v0 = [objc_allocWithZone(UIViewController) init];
  v1 = [objc_allocWithZone(UIView) init];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v5];
  [v0 setView:v1];
  v6 = objc_opt_self();
  sub_1005B981C(&unk_1019F4D60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10147AD40;
  v8 = [v5 topAnchor];
  v9 = [v1 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:16.0];

  *(v7 + 32) = v10;
  v11 = [v5 centerXAnchor];
  v12 = [v1 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v7 + 40) = v13;
  v14 = [v5 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v7 + 48) = v16;
  v17 = [v5 widthAnchor];
  v18 = [v17 constraintEqualToConstant:32.0];

  *(v7 + 56) = v18;
  v19 = [v5 heightAnchor];

  v20 = [v19 constraintEqualToConstant:32.0];
  *(v7 + 64) = v20;
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:isa];

  return v0;
}

id sub_1009DF450(void *a1)
{
  v2 = [objc_allocWithZone(UIActivityIndicatorView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_allocWithZone(UIView) init];
  [v3 addSubview:v2];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  sub_1005B981C(&unk_1019F4D60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146E8B0;
  v6 = [v2 topAnchor];
  v7 = [v3 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:0.0];

  *(v5 + 32) = v8;
  v9 = [v2 leadingAnchor];
  v10 = [v3 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:0.0];

  *(v5 + 40) = v11;
  v12 = [v2 bottomAnchor];
  v13 = [v3 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];

  *(v5 + 48) = v14;
  v15 = [v2 trailingAnchor];

  v16 = [v3 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-0.0];

  *(v5 + 56) = v17;
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];

  [a1 setRightView:v3];
  [a1 setRightViewMode:3];

  return v2;
}

void sub_1009DF770(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = &_swiftEmptyArrayStorage;
    sub_100034080(0, v2 & ~(v2 >> 63), 0);
    v36 = &_swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_100724EDC(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 zoneName];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = v36[2];
        v18 = v36[3];
        if (v19 >= v18 >> 1)
        {
          sub_100034080((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_1005B981C(&qword_101A0BA68);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_1000341AC(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1000341AC(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_1000341AC(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void *sub_1009DFAD8(uint64_t a1)
{
  v3 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v39 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v47 = &_swiftEmptyArrayStorage;
    sub_100776C64(0, v6 & ~(v6 >> 63), 0);
    v42 = v47;
    if (v40)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v8 = *(a1 + 36);
    }

    v44 = result;
    v45 = v8;
    v46 = v40 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v31[1] = v1;
      v9 = 0;
      v37 = v39 + 32;
      v38 = (v39 + 104);
      v36 = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v33 = a1 + 56;
      v34 = v10;
      v32 = a1 + 64;
      v35 = v6;
      while (v9 < v6)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_37;
        }

        v13 = v44;
        v14 = v46;
        v41 = v45;
        sub_100724EDC(v44, v45, v46, a1);
        v16 = v15;
        *v5 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v15];
        (*v38)(v5, v36, v3);

        v17 = v42;
        v47 = v42;
        v19 = v42[2];
        v18 = v42[3];
        if (v19 >= v18 >> 1)
        {
          sub_100776C64(v18 > 1, v19 + 1, 1);
          v17 = v47;
        }

        v17[2] = v19 + 1;
        v20 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v42 = v17;
        result = (*(v39 + 32))(v17 + v20 + *(v39 + 72) * v19, v5, v3);
        if (v40)
        {
          if (!v14)
          {
            goto LABEL_42;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v35;
          sub_1005B981C(&qword_101A0BA68);
          v11 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v11(v43, 0);
          if (v9 == v6)
          {
LABEL_34:
            sub_1000341AC(v44, v45, v46);
            return v42;
          }
        }

        else
        {
          if (v14)
          {
            goto LABEL_43;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v21 = 1 << *(a1 + 32);
          if (v13 >= v21)
          {
            goto LABEL_38;
          }

          v22 = v13 >> 6;
          v23 = *(v33 + 8 * (v13 >> 6));
          if (((v23 >> v13) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v41)
          {
            goto LABEL_40;
          }

          v24 = v23 & (-2 << (v13 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v32 + 8 * v22);
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                result = sub_1000341AC(v13, v41, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_33;
              }
            }

            result = sub_1000341AC(v13, v41, 0);
          }

LABEL_33:
          v30 = *(a1 + 36);
          v44 = v21;
          v45 = v30;
          v46 = 0;
          v6 = v35;
          if (v9 == v35)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void *sub_1009DFF2C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      sub_100006370(0, &unk_101A22DC0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1007C8B7C(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1009DFFF0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      type metadata accessor for CRLSyncRecordGroup();
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1007C8A78(a1);
    if (v5)
    {
    }
  }

  return 0;
}

NSString sub_1009E00A0()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6ED0 = result;
  return result;
}

Swift::Int sub_1009E00D8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  return Hasher._finalize()();
}

uint64_t sub_1009E0124()
{
  if (*v0)
  {
    return 0x5320646572616853;
  }

  else
  {
    return 0x2065746176697250;
  }
}

uint64_t sub_1009E0184(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return _swift_task_switch(sub_1009E01A8, v2, 0);
}

uint64_t sub_1009E01A8()
{
  v1 = v0[14];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if ((v2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLCloudAccountChangeObserverWrapper();
    sub_10002C5F0(&qword_101A0BA80, 255, type metadata accessor for CRLCloudAccountChangeObserverWrapper);
    Set.Iterator.init(_cocoa:)();
    result = v0[2];
    v4 = v0[3];
    v6 = v0[4];
    v5 = v0[5];
    v7 = v0[6];
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v5 = 0;
  }

  v0[16] = v4;
  v0[17] = v6;
  v0[15] = result;
  if (result < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v11 = v5;
  v12 = v7;
  v13 = v5;
  if (v7)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(result + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    while (1)
    {
      v0[19] = v13;
      v0[20] = v14;
      v0[18] = v15;
      if (!v15)
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      v0[21] = Strong;
      if (Strong)
      {
        v19 = *(v15 + 24);
        ObjectType = swift_getObjectType();
        v24 = (*(v19 + 8) + **(v19 + 8));
        v21 = swift_task_alloc();
        v0[22] = v21;
        *v21 = v0;
        v21[1] = sub_1009E0508;
        v23 = v0[12];
        v22 = v0[13];

        return v24(v23, v22, ObjectType, v19);
      }

      result = v0[15];
      v5 = v13;
      v7 = v14;
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      v16 = __CocoaSet.Iterator.next()();
      if (!v16)
      {
        break;
      }

      v0[11] = v16;
      type metadata accessor for CRLCloudAccountChangeObserverWrapper();
      swift_dynamicCast();
      v15 = v0[10];
      v13 = v5;
      v14 = v7;
    }

LABEL_19:
    sub_100035F90();
    v18 = v0[1];

    return v18();
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= ((v0[17] + 64) >> 6))
      {
        goto LABEL_19;
      }

      v12 = *(v0[16] + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1009E0508()
{
  v1 = *(*v0 + 112);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1009E0634, v1, 0);
}

uint64_t sub_1009E0634()
{

  v1 = v0[19];
  v2 = v0[20];
  result = v0[15];
  if (result < 0)
  {
    goto LABEL_7;
  }

LABEL_2:
  v4 = v1;
  v5 = v2;
  v6 = v1;
  if (v2)
  {
LABEL_6:
    v7 = (v5 - 1) & v5;
    v8 = *(*(result + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v5)))));

    while (1)
    {
      v0[19] = v6;
      v0[20] = v7;
      v0[18] = v8;
      if (!v8)
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      v0[21] = Strong;
      if (Strong)
      {
        v12 = *(v8 + 24);
        ObjectType = swift_getObjectType();
        v17 = (*(v12 + 8) + **(v12 + 8));
        v14 = swift_task_alloc();
        v0[22] = v14;
        *v14 = v0;
        v14[1] = sub_1009E0508;
        v16 = v0[12];
        v15 = v0[13];

        return v17(v16, v15, ObjectType, v12);
      }

      v1 = v6;
      v2 = v7;
      result = v0[15];
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_2;
      }

LABEL_7:
      v9 = __CocoaSet.Iterator.next()();
      if (!v9)
      {
        break;
      }

      v0[11] = v9;
      type metadata accessor for CRLCloudAccountChangeObserverWrapper();
      swift_dynamicCast();
      v8 = v0[10];
      v6 = v1;
      v7 = v2;
    }

LABEL_13:
    sub_100035F90();
    v11 = v0[1];

    return v11();
  }

  else
  {
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v6 >= ((v0[17] + 64) >> 6))
      {
        goto LABEL_13;
      }

      v5 = *(v0[16] + 8 * v6);
      ++v4;
      if (v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1009E08C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_1009E08E4, 0, 0);
}

uint64_t sub_1009E08E4()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC8Freeform17CRLSyncController_accountChangeObserverManager);
  *(v0 + 64) = v1;

  return _swift_task_switch(sub_1009E0964, v1, 0);
}

uint64_t sub_1009E0964()
{
  v1 = *(v0 + 56);
  type metadata accessor for CRLCloudAccountChangeObserverWrapper();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = v1;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  sub_100ED7F30(v2);
  swift_endAccess();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1009E0A48(uint64_t a1)
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v2 = OBJC_IVAR____TtC8Freeform17CRLSyncController_latestFetchedSyncMetadata;
  swift_beginAccess();
  sub_10002C638(&v6, a1 + v2, &qword_101A0BA20);
  swift_endAccess();
  v3 = sub_10002AB3C();
  *(&v7 + 1) = type metadata accessor for CKSyncEngine();
  v8 = &off_1019FF6E8;
  *&v6 = v3;
  v4 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine;
  swift_beginAccess();
  sub_10002C638(&v6, a1 + v4, &qword_101A0BA28);
  return swift_endAccess();
}

uint64_t sub_1009E0B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_10002C5F0(&qword_1019F4D10, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_1009E0E30(uint64_t a1, char a2)
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v20[-v6];
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(a1 + 16);
    if (!result)
    {
      return result;
    }
  }

  v9 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine;
  swift_beginAccess();
  sub_10000BE14(v2 + v9, &v21, &qword_101A0BA28);
  if (v22)
  {
    sub_100050F74(&v21, v23);
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_10000630C(v23, &v21);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    sub_100050F74(&v21, v11 + 32);
    *(v11 + 72) = a1;
    *(v11 + 80) = v2;
    *(v11 + 88) = a2;

    v12 = v2;
    sub_100796D54(0, 0, v7, &unk_10148CEC8, v11);

    v13 = v23;
  }

  else
  {
    sub_10000CAAC(&v21, &qword_101A0BA28);
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v16 = inited;
    *(inited + 16) = xmmword_10146C6B0;
    if (*(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v17 = 0x5320646572616853;
    }

    else
    {
      v17 = 0x2065746176697250;
    }

    if (*(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v18 = 0xEC00000065706F63;
    }

    else
    {
      v18 = 0xED000065706F6353;
    }

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v19, "<%{public}@> Can't fetchRecords. There is no syncEngine set", 59, 2, v16);
    swift_setDeallocating();
    v13 = (v16 + 32);
  }

  return sub_100005070(v13);
}

uint64_t sub_1009E1118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 464) = a7;
  *(v7 + 360) = a5;
  *(v7 + 368) = a6;
  *(v7 + 352) = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  *(v7 + 376) = v8;
  *(v7 + 384) = *(v8 - 8);
  *(v7 + 392) = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  *(v7 + 400) = v9;
  *(v7 + 408) = *(v9 - 8);
  *(v7 + 416) = swift_task_alloc();

  return _swift_task_switch(sub_1009E123C, 0, 0);
}

uint64_t sub_1009E123C()
{
  v1 = *(v0 + 360);
  sub_100020E58(*(v0 + 352), *(*(v0 + 352) + 24));
  v2 = sub_100676954(v1);
  *(v0 + 424) = v2;
  *(v0 + 432) = CKSyncEngine.database.getter();
  v3 = swift_task_alloc();
  *(v0 + 440) = v3;
  *v3 = v0;
  v3[1] = sub_1009E130C;

  return CKDatabase.records(for:desiredKeys:)(v2, 0);
}

uint64_t sub_1009E130C(uint64_t a1)
{
  v3 = *v2;
  v3[56] = a1;
  v3[57] = v1;

  if (v1)
  {
    v4 = sub_1009E1B3C;
  }

  else
  {
    v5 = v3[54];

    v4 = sub_1009E142C;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1009E142C()
{
  v1 = 0;
  v2 = v0[56];
  v4 = v2 + 64;
  v3 = *(v2 + 64);
  v44 = v0[46];
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v43 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope;
  v8 = (63 - v5) >> 6;
  v45 = v0[56];
  if ((v6 & v3) != 0)
  {
    do
    {
LABEL_11:
      while (1)
      {
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = v11 | (v1 << 6);
        v13 = *(*(v2 + 48) + 8 * v12);
        v14 = *(v2 + 56) + 16 * v12;
        v15 = *v14;
        if (*(v14 + 8))
        {
          break;
        }

        v9 = v13;
        sub_1006CE2EC(v15, 0);
        sub_100ADDF48(v15);

        sub_1006CCCD4(v15, 0);
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      v0[39] = v15;
      sub_1006CE2EC(v15, 1);
      v47 = v13;
      sub_1006CE2EC(v15, 1);
      sub_1005B981C(&unk_1019F6B40);
      type metadata accessor for CKError(0);
      if (swift_dynamicCast())
      {
        v42 = v0[40];
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v40 = static OS_os_log.dataSync;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        v17 = inited;
        *(inited + 16) = xmmword_10146BDE0;
        if (*(v44 + v43))
        {
          v18 = 0x5320646572616853;
        }

        else
        {
          v18 = 0x2065746176697250;
        }

        if (*(v44 + v43))
        {
          v19 = 0xEC00000065706F63;
        }

        else
        {
          v19 = 0xED000065706F6353;
        }

        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        v17[4] = v18;
        v17[5] = v19;
        v0[42] = v42;
        sub_10002C5F0(&qword_1019F3348, 255, type metadata accessor for CKError);
        v20 = _BridgedStoredNSError.errorCode.getter();
        v17[12] = &type metadata for Int;
        v17[13] = &protocol witness table for Int;
        v17[9] = v20;
        v21 = static os_log_type_t.error.getter();
        sub_100005404(v40, &_mh_execute_header, v21, "<%{public}@> Received cloud error fetching %d", 45, 2, v17);

        sub_1006CCCD4(v15, 1);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
      }

      else
      {
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v41 = static OS_os_log.dataSync;
        sub_1005B981C(&qword_1019F54E0);
        v22 = swift_initStackObject();
        v23 = v22;
        *(v22 + 16) = xmmword_10146BDE0;
        if (*(v44 + v43))
        {
          v24 = 0x5320646572616853;
        }

        else
        {
          v24 = 0x2065746176697250;
        }

        if (*(v44 + v43))
        {
          v25 = 0xEC00000065706F63;
        }

        else
        {
          v25 = 0xED000065706F6353;
        }

        *(v22 + 56) = &type metadata for String;
        v26 = sub_1000053B0();
        v23[8] = v26;
        v23[4] = v24;
        v23[5] = v25;
        swift_getErrorValue();
        v27 = Error.localizedDescription.getter();
        v23[12] = &type metadata for String;
        v23[13] = v26;
        v23[9] = v27;
        v23[10] = v28;
        v29 = static os_log_type_t.error.getter();
        sub_100005404(v41, &_mh_execute_header, v29, "<%{public}@> Unexpected error received, fetching records to overwrite. error: %@", 80, 2, v23);

        sub_1006CCCD4(v15, 1);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
      }

      swift_arrayDestroy();
      v2 = v45;
    }

    while (v7);
  }

  while (1)
  {
LABEL_7:
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v1;
    if (v7)
    {
      v1 = v10;
      goto LABEL_11;
    }
  }

  if (sub_100ADE160(_swiftEmptyDictionarySingleton))
  {
  }

  else
  {
    v30 = v0[52];
    v31 = v0[49];
    v46 = v0[51];
    v48 = v0[50];
    v32 = v0[47];
    v33 = v0[48];
    v34 = *(v0 + 464);
    v35 = v0[46];
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = _swiftEmptyDictionarySingleton;
    *(v36 + 32) = v34;
    v0[34] = sub_1009F7944;
    v0[35] = v36;
    v0[30] = _NSConcreteStackBlock;
    v0[31] = *"";
    v0[32] = sub_100007638;
    v0[33] = &unk_101890F18;
    v37 = _Block_copy(v0 + 30);
    v38 = v35;
    static DispatchQoS.unspecified.getter();
    v0[43] = _swiftEmptyArrayStorage;
    sub_10002C5F0(&qword_1019F4D10, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);
    (*(v33 + 8))(v31, v32);
    (*(v46 + 8))(v30, v48);
  }

  v39 = v0[1];

  v39();
}

uint64_t sub_1009E1B3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1009E1BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 585) = v13;
  *(v8 + 584) = a7;
  *(v8 + 472) = a6;
  *(v8 + 480) = a8;
  *(v8 + 456) = a4;
  *(v8 + 464) = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 488) = v9;
  *(v8 + 496) = *(v9 - 8);
  *(v8 + 504) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 512) = v10;
  *(v8 + 520) = *(v10 - 8);
  *(v8 + 528) = swift_task_alloc();

  return _swift_task_switch(sub_1009E1CF8, 0, 0);
}

uint64_t sub_1009E1CF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 536) = Strong;
  if (!Strong)
  {
LABEL_4:

    v4 = *(v0 + 8);

    return v4();
  }

  v2 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    v3 = *(v0 + 464);
    swift_beginAccess();
    sub_1010F63BC(v3);
    swift_endAccess();

    goto LABEL_4;
  }

  sub_100020E58(*(v0 + 472), *(*(v0 + 472) + 24));
  *(v0 + 544) = CKSyncEngine.database.getter();
  v6 = swift_task_alloc();
  *(v0 + 552) = v6;
  *v6 = v0;
  v6[1] = sub_1009E1E78;
  v7 = *(v0 + 480);
  v8 = *(v0 + 584);
  v9 = *(v0 + 464);

  return sub_10083FBFC(v9, v8, v7);
}

uint64_t sub_1009E1E78(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 560) = a1;
  *(v4 + 568) = a2;
  *(v4 + 576) = v2;

  if (v2)
  {
    v5 = sub_1009E26C0;
  }

  else
  {

    v5 = sub_1009E1F9C;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1009E1F9C()
{
  v1 = v0[70];
  v49 = v0[67];
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v47 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope;
  v6 = (63 - v4) >> 6;

  v7 = 0;
  for (i = v1; v5; v1 = i)
  {
LABEL_10:
    while (1)
    {
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = *(v1 + 56) + ((v7 << 10) | (16 * v9));
      v11 = *v10;
      if (*(v10 + 8))
      {
        break;
      }

      sub_100ADDF48(v11);
      sub_1006CCCD4(v11, 0);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v0[52] = v11;
    sub_1006CE2EC(v11, 1);
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v45 = v0[53];
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v44 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      v13 = inited;
      *(inited + 16) = xmmword_10146BDE0;
      if (*(v49 + v47))
      {
        v14 = 0x5320646572616853;
      }

      else
      {
        v14 = 0x2065746176697250;
      }

      if (*(v49 + v47))
      {
        v15 = 0xEC00000065706F63;
      }

      else
      {
        v15 = 0xED000065706F6353;
      }

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      v13[4] = v14;
      v13[5] = v15;
      v0[55] = v45;
      sub_10002C5F0(&qword_1019F3348, 255, type metadata accessor for CKError);
      v16 = _BridgedStoredNSError.errorCode.getter();
      v13[12] = &type metadata for Int;
      v13[13] = &protocol witness table for Int;
      v13[9] = v16;
      v17 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v17, "<%{public}@> Received cloud record error fetching records for ZoneID %d", 71, 2, v13);
    }

    else
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v46 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      v18 = swift_initStackObject();
      v19 = v18;
      *(v18 + 16) = xmmword_10146BDE0;
      if (*(v49 + v47))
      {
        v20 = 0x5320646572616853;
      }

      else
      {
        v20 = 0x2065746176697250;
      }

      if (*(v49 + v47))
      {
        v21 = 0xEC00000065706F63;
      }

      else
      {
        v21 = 0xED000065706F6353;
      }

      *(v18 + 56) = &type metadata for String;
      v22 = sub_1000053B0();
      v19[8] = v22;
      v19[4] = v20;
      v19[5] = v21;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v19[12] = &type metadata for String;
      v19[13] = v22;
      v19[9] = v23;
      v19[10] = v24;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v46, &_mh_execute_header, v25, "<%{public}@> Unexpected record error received, fetching records for zoneID to overwrite. error: %@", 98, 2, v19);
    }

    sub_1006CCCD4(v11, 1);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
  }

  while (1)
  {
LABEL_6:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  v26 = v0[71];

  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = (v0[71] + 48);
    do
    {
      v29 = *(v28 - 2);
      v30 = *(v28 - 1);
      v31 = *v28;
      v28 += 3;
      v32 = v29;

      sub_100ADEA78(v32, v30, v31);

      --v27;
    }

    while (v27);
  }

  v33 = v0[67];
  v34 = v0[66];
  v35 = v0[63];
  v50 = v0[65];
  v52 = v0[64];
  v36 = v0[61];
  v48 = v0[62];
  v37 = *(v0 + 585);
  v38 = v0[58];

  v39 = swift_allocObject();
  *(v39 + 16) = v33;
  *(v39 + 24) = v38;
  *(v39 + 32) = _swiftEmptyDictionarySingleton;
  *(v39 + 40) = v37;
  v0[40] = sub_1009F48E4;
  v0[41] = v39;
  v0[36] = _NSConcreteStackBlock;
  v0[37] = *"";
  v0[38] = sub_100007638;
  v0[39] = &unk_101890BA8;
  v40 = _Block_copy(v0 + 36);
  v41 = v33;
  v42 = v38;
  static DispatchQoS.unspecified.getter();
  v0[56] = _swiftEmptyArrayStorage;
  sub_10002C5F0(&qword_1019F4D10, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);

  (*(v48 + 8))(v35, v36);
  (*(v50 + 8))(v34, v52);

  v43 = v0[1];

  v43();
}

uint64_t sub_1009E26C0()
{
  v1 = v0[72];
  v2 = v0[67];
  v3 = v0[66];
  v15 = v0[65];
  v16 = v0[64];
  v13 = v0[63];
  v4 = v0[61];
  v14 = v0[62];
  v5 = *(v0 + 585);
  v6 = v0[58];

  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v6;
  *(v7 + 32) = v1;
  *(v7 + 40) = v5;
  v0[34] = sub_1009F48D4;
  v0[35] = v7;
  v0[30] = _NSConcreteStackBlock;
  v0[31] = *"";
  v0[32] = sub_100007638;
  v0[33] = &unk_101890B58;
  v8 = _Block_copy(v0 + 30);
  v9 = v2;
  v10 = v6;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[51] = _swiftEmptyArrayStorage;
  sub_10002C5F0(&qword_1019F4D10, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v14 + 8))(v13, v4);
  (*(v15 + 8))(v3, v16);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1009E2954(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  swift_beginAccess();
  sub_1010F63BC(a2);
  swift_endAccess();

  return sub_1009E34C4(a3, a4);
}

uint64_t sub_1009E29E4(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v80 = a4;
  v82 = a2;
  v79 = sub_1005B981C(&qword_101A0BA08);
  __chkstk_darwin(v79);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v74 - v9;
  v78 = type metadata accessor for CRLZoneSyncResultScenarios();
  __chkstk_darwin(v78);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v17 - 8);
  v76 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v77 = &v74 - v20;
  swift_beginAccess();
  v81 = a1;
  sub_1010F63BC(v82);
  swift_endAccess();

  v84 = a3;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  type metadata accessor for CKError(0);
  v22 = v21;
  if (swift_dynamicCast())
  {
    v23 = v22;
    v24 = v12;
    v25 = v83;
    v84 = v83;
    v74 = sub_10002C5F0(&qword_1019F3348, 255, type metadata accessor for CKError);
    v75 = v23;
    _BridgedStoredNSError.code.getter();
    LOBYTE(v23) = (v83 < 0x25) & (0x1000A002D8uLL >> v83);
    Date.init()();
    v76 = v25;
    v26 = _convertErrorToNSError(_:)();
    CKRetryAfterSecondsForError();

    v27 = v77;
    Date.advanced(by:)();
    (*(v14 + 8))(v16, v13);
    (*(v14 + 56))(v27, 0, 1, v13);
    v28 = v23 ^ 1;
    *v10 = v23;
    v29 = v79;
    sub_10000BE14(v27, &v10[*(v79 + 48)], &qword_101A0A320);
    *v24 = 0;
    *(v24 + 4) = v28;
    sub_10003DFF8(v10, v7, &qword_101A0BA08);
    v30 = *(v29 + 48);
    v31 = v78;
    v32 = (v24 + *(v78 + 36));
    *v32 = *v7;
    sub_10003DFF8(&v7[v30], &v32[v30], &qword_101A0A320);
    *(v24 + *(v31 + 40)) = _swiftEmptyArrayStorage;
    sub_1005B981C(&qword_101A0BA10);
    v33 = (sub_1005B981C(&qword_101A0BA18) - 8);
    v34 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10146C6B0;
    v36 = (v35 + v34);
    v37 = v33[14];
    v38 = v82;
    *v36 = v82;
    sub_1009F5EFC(v24, v36 + v37, type metadata accessor for CRLZoneSyncResultScenarios);
    v39 = v38;
    v40 = sub_100BD7B1C(v35);
    swift_setDeallocating();
    sub_10000CAAC(v36, &qword_101A0BA18);
    swift_deallocClassInstance();
    sub_100BF3BF4(v40, v80);

    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v41 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v43 = inited;
    *(inited + 16) = xmmword_10146BDE0;
    if (*(v81 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v44 = 0x5320646572616853;
    }

    else
    {
      v44 = 0x2065746176697250;
    }

    if (*(v81 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v45 = 0xEC00000065706F63;
    }

    else
    {
      v45 = 0xED000065706F6353;
    }

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    v43[4] = v44;
    v43[5] = v45;
    v46 = v76;
    v84 = v76;
    v47 = _BridgedStoredNSError.errorCode.getter();
    v43[12] = &type metadata for Int;
    v43[13] = &protocol witness table for Int;
    v43[9] = v47;
    v48 = static os_log_type_t.error.getter();
    sub_100005404(v41, &_mh_execute_header, v48, "<%{public}@> Received cloud error fetching records for ZoneID %d", 64, 2, v43);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    sub_10002C420(v24, type metadata accessor for CRLZoneSyncResultScenarios);
    return sub_10000CAAC(v27, &qword_101A0A320);
  }

  else
  {
    v74 = v14;
    v75 = v10;
    v77 = v7;
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    v51 = swift_initStackObject();
    v52 = v51;
    *(v51 + 16) = xmmword_10146BDE0;
    if (*(v81 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v53 = 0x5320646572616853;
    }

    else
    {
      v53 = 0x2065746176697250;
    }

    if (*(v81 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v54 = 0xEC00000065706F63;
    }

    else
    {
      v54 = 0xED000065706F6353;
    }

    *(v51 + 56) = &type metadata for String;
    v55 = sub_1000053B0();
    v52[8] = v55;
    v52[4] = v53;
    v52[5] = v54;
    swift_getErrorValue();
    v56 = Error.localizedDescription.getter();
    v52[12] = &type metadata for String;
    v52[13] = v55;
    v52[9] = v56;
    v52[10] = v57;
    v58 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v58, "<%{public}@> Received error fetching records for ZoneID <%{public}@>", 68, 2, v52);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    sub_1005B981C(&qword_101A0BA10);
    v59 = (sub_1005B981C(&qword_101A0BA18) - 8);
    v60 = (*(*v59 + 80) + 32) & ~*(*v59 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_10146C6B0;
    v62 = (v61 + v60);
    v63 = v62 + v59[14];
    v64 = v82;
    *v62 = v82;
    v65 = v76;
    (*(v74 + 56))(v76, 1, 1, v13);
    v66 = v75;
    *v75 = 0;
    v67 = v79;
    sub_10003DFF8(v65, v66 + *(v79 + 48), &qword_101A0A320);
    *v63 = 0;
    v63[4] = 0;
    v68 = v77;
    sub_10003DFF8(v66, v77, &qword_101A0BA08);
    v69 = *(v67 + 48);
    v70 = v78;
    v71 = &v63[*(v78 + 36)];
    *v71 = *v68;
    sub_10003DFF8(&v68[v69], &v71[v69], &qword_101A0A320);
    *&v63[*(v70 + 40)] = _swiftEmptyArrayStorage;
    v72 = v64;
    v73 = sub_100BD7B1C(v61);
    swift_setDeallocating();
    sub_10000CAAC(v62, &qword_101A0BA18);
    swift_deallocClassInstance();
    sub_100BF3BF4(v73, v80);
  }
}

uint64_t sub_1009E3418(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC8Freeform17CRLSyncController_targetedFetchTasks;
  swift_beginAccess();
  v7 = a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + v6);
  *(a1 + v6) = 0x8000000000000000;
  sub_100A9F5C0(a3, v7, isUniquelyReferenced_nonNull_native);

  *(a1 + v6) = v10;
  return swift_endAccess();
}

uint64_t sub_1009E34C4(_BYTE *a1, int a2)
{
  v73 = sub_1005B981C(&qword_101A0BA08);
  __chkstk_darwin(v73);
  v72 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = v62 - v7;
  v8 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v8 - 8);
  v70 = v62 - v9;
  v69 = type metadata accessor for CRLZoneSyncResultScenarios();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v76 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = v62 - v12;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = (v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13, v15);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v62[1] = *(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_dataSource);
  v63 = a2;
  sub_100DD41D8(a1, a2);
  if (qword_1019F2270 != -1)
  {
LABEL_32:
    swift_once();
  }

  v20 = static OS_os_log.dataSync;
  v21 = static os_log_type_t.default.getter();
  sub_100005404(v20, &_mh_execute_header, v21, "_persistDirectlyIntoDataModel some side-channel fetched changes", 63, 2, _swiftEmptyArrayStorage);
  v22 = a1 + 64;
  v23 = 1 << a1[32];
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a1 + 8);
  v26 = (v23 + 63) >> 6;

  v27 = 0;
  v28 = _swiftEmptyDictionarySingleton;
  v64 = a1 + 64;
  v65 = v26;
  v66 = a1;
  while (1)
  {
    if (!v25)
    {
      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v29 >= v26)
        {

          sub_100BF3BF4(v28, v63);
        }

        v25 = *&v22[8 * v29];
        ++v27;
        if (v25)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v29 = v27;
LABEL_13:
    v30 = __clz(__rbit64(v25)) | (v29 << 6);
    v31 = *(*(a1 + 6) + 8 * v30);
    v32 = *(a1 + 7) + 32 * v30;
    v33 = *(v32 + 8);
    v74 = *v32;
    v75 = v31;
    v34 = *(v32 + 16);
    v35 = *(v32 + 24);
    v36 = *(v32 + 25);
    v37 = *(v32 + 26);
    v77 = v33;
    if (v33 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_15:
        v38 = 1;
        goto LABEL_18;
      }
    }

    else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    v38 = (*(v34 + 16) != 0) | v35 | v36 | v37;
LABEL_18:
    v39 = type metadata accessor for Date();
    v40 = v70;
    (*(*(v39 - 8) + 56))(v70, 1, 1, v39);
    v41 = v71;
    *v71 = 0;
    v42 = v73;
    sub_10003DFF8(v40, v41 + *(v73 + 48), &qword_101A0A320);
    v43 = v68;
    *v68 = v38 & 1;
    *(v43 + 1) = 0;
    v44 = v72;
    sub_10003DFF8(v41, v72, &qword_101A0BA08);
    v45 = *(v42 + 48);
    v46 = v69;
    v47 = (v43 + *(v69 + 36));
    *v47 = *v44;
    sub_10003DFF8(&v44[v45], &v47[v45], &qword_101A0A320);
    *(v43 + *(v46 + 40)) = _swiftEmptyArrayStorage;
    sub_1009F7758(v43, v76, type metadata accessor for CRLZoneSyncResultScenarios);
    v48 = v74;
    a1 = v75;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v28;
    v51 = sub_1007C8A78(v48);
    v52 = v28[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      goto LABEL_29;
    }

    v55 = v50;
    if (v28[3] < v54)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100AA9EFC();
    }

LABEL_24:
    v25 &= v25 - 1;
    v28 = v78;
    if (v55)
    {
      sub_1009F77C0(v76, v78[7] + *(v67 + 72) * v51);
    }

    else
    {
      v78[(v51 >> 6) + 8] |= 1 << v51;
      *(v28[6] + 8 * v51) = v48;
      sub_1009F7758(v76, v28[7] + *(v67 + 72) * v51, type metadata accessor for CRLZoneSyncResultScenarios);

      v58 = v28[2];
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_30;
      }

      v28[2] = v60;
    }

    v27 = v29;
    v26 = v65;
    a1 = v66;
    v22 = v64;
  }

  sub_100A931B4(v54, isUniquelyReferenced_nonNull_native);
  v56 = sub_1007C8A78(v48);
  if ((v55 & 1) == (v57 & 1))
  {
    v51 = v56;
    goto LABEL_24;
  }

  sub_100006370(0, &qword_1019F69D0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1009E3BB0()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_75;
  }

  v7 = OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask;
  if (*(v0 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask))
  {
    if (qword_1019F2270 != -1)
    {
      goto LABEL_76;
    }

    goto LABEL_4;
  }

  v95 = v0;
  v0 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLSyncController_dataSource);
  v18 = sub_100BF25A8();
  v97 = *(v18 + 16);
  if (!v97)
  {

    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v83 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v10 = inited;
    *(inited + 16) = xmmword_10146C6B0;
    if (*(v95 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v85 = 0x5320646572616853;
    }

    else
    {
      v85 = 0x2065746176697250;
    }

    if (*(v95 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v86 = 0xEC00000065706F63;
    }

    else
    {
      v86 = 0xED000065706F6353;
    }

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(v10 + 32) = v85;
    v13 = v10 + 32;
    *(v10 + 40) = v86;
    v14 = static os_log_type_t.default.getter();
    v15 = "<%{public}@> Received an empty change set from the data source. There is no need to sendChanges to CloudKit";
    v16 = v83;
    v17 = 107;
    goto LABEL_11;
  }

  v94 = v7;
  v19 = 0;
  v102 = &_swiftEmptyDictionarySingleton;
  v96 = _swiftEmptyArrayStorage;
  while (v19 < *(v18 + 16))
  {
    v98 = *(v18 + 16 * v19 + 32);
    ObjectType = swift_getObjectType();
    v100[0] = v98;
    v21 = *(*(&v98 + 1) + 8);
    v22 = *(v21 + 8);
    swift_unknownObjectRetain();
    v23 = v22(ObjectType, v21);
    v24 = [v23 zoneID];

    v0 = v102;
    if (v102[2])
    {
      sub_1007C8A78(v24);
      if (v25)
      {
        goto LABEL_30;
      }
    }

    v26 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100[0] = v0;
    v28 = sub_1007C8A78(v26);
    v30 = v0[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_73;
    }

    v34 = v29;
    if (v0[3] < v33)
    {
      sub_100A92A04(v33, isUniquelyReferenced_nonNull_native);
      v0 = v100[0];
      v28 = sub_1007C8A78(v26);
      if ((v34 & 1) != (v35 & 1))
      {
        sub_100006370(0, &qword_1019F69D0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_24:
      v36 = v100[0];
      if ((v34 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v0 = v100;
    v37 = v28;
    sub_100AA9D08();
    v28 = v37;
    v36 = v100[0];
    if ((v34 & 1) == 0)
    {
LABEL_27:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      *(v36[6] + 8 * v28) = v26;
      *(v36[7] + 8 * v28) = _swiftEmptyArrayStorage;
      v38 = v36[2];
      v32 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v32)
      {
        goto LABEL_74;
      }

      v36[2] = v39;
      goto LABEL_29;
    }

LABEL_25:
    *(v36[7] + 8 * v28) = _swiftEmptyArrayStorage;

LABEL_29:
    v102 = v36;
LABEL_30:
    v0 = sub_1011257F0(v100, v24);
    v41 = *v40;
    if (*v40)
    {
      v42 = v40;
      swift_unknownObjectRetain();
      v43 = swift_isUniquelyReferenced_nonNull_native();
      *v42 = v41;
      if ((v43 & 1) == 0)
      {
        v41 = sub_100B383E4(0, v41[2] + 1, 1, v41);
        *v42 = v41;
      }

      v45 = v41[2];
      v44 = v41[3];
      if (v45 >= v44 >> 1)
      {
        v41 = sub_100B383E4((v44 > 1), v45 + 1, 1, v41);
        *v42 = v41;
      }

      v41[2] = v45 + 1;
      *&v41[2 * v45 + 4] = v98;
    }

    (v0)(v100, 0);
    ++v19;

    swift_unknownObjectRelease();
    if (v97 == v19)
    {

      v46 = v102;

      sub_100DCA8A8(v47);
      v49 = v48;
      v50 = *(v95 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider + 24);
      v97 = v95 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider;
      v0 = *sub_100020E58((v95 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider), v50);
      *&v98 = sub_100EED608(v49);

      v101 = _swiftEmptyArrayStorage;
      v51 = 1 << *(v46 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & v46[8];
      v54 = (v51 + 63) >> 6;

      v55 = 0;
      if (v53)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v56 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_72;
        }

        if (v56 >= v54)
        {
          break;
        }

        v53 = v46[v56 + 8];
        ++v55;
        if (v53)
        {
          v55 = v56;
          do
          {
LABEL_42:
            v57 = (v55 << 9) | (8 * __clz(__rbit64(v53)));
            v58 = *(v46[6] + v57);
            v59 = *(v46[7] + v57);
            type metadata accessor for CRLSyncRecordGroup();
            swift_allocObject();
            v60 = v58;
            swift_bridgeObjectRetain_n();
            v61 = v60;
            sub_101088570(v61, v59);

            v0 = &v101;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v96 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v53 &= v53 - 1;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v96 = v101;
          }

          while (v53);
        }
      }

      sub_10000630C(v97, v100);
      v62 = sub_10002A948(v100, v100[3]);
      __chkstk_darwin(v62);
      v64 = (&v94 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v65 + 16))(v64);
      v66 = *v64;
      v67 = type metadata accessor for CRLBoardSyncLogicProvider();
      v99[3] = v67;
      v99[4] = &off_1018A8500;
      v99[0] = v66;
      type metadata accessor for CRLSyncControllerSaveTask();
      v68 = swift_allocObject();
      v69 = sub_10002A948(v99, v67);
      __chkstk_darwin(v69);
      v71 = (&v94 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v72 + 16))(v71);
      v73 = *v71;

      v75 = sub_1009F48F4(v74, v73, v68);

      sub_100005070(v99);
      sub_100005070(v100);
      v77 = v94;
      v76 = v95;
      *(v95 + v94) = v75;

      swift_beginAccess();
      v78 = v98;

      sub_100637378(v79);
      swift_endAccess();

      v80 = *(v76 + v77);
      if (v80)
      {
        swift_beginAccess();
        v81 = *(v80 + 40);
        if ((v81 & 0xC000000000000001) != 0)
        {

          v82 = __CocoaSet.count.getter();

          if (!v82)
          {
            goto LABEL_69;
          }

LABEL_60:
          if (qword_1019F2270 != -1)
          {
            swift_once();
          }

          v87 = static OS_os_log.dataSync;
          sub_1005B981C(&qword_1019F54E0);
          v88 = swift_initStackObject();
          v89 = v88;
          *(v88 + 16) = xmmword_10146C6B0;
          if (*(v95 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
          {
            v90 = 0x5320646572616853;
          }

          else
          {
            v90 = 0x2065746176697250;
          }

          if (*(v95 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
          {
            v91 = 0xEC00000065706F63;
          }

          else
          {
            v91 = 0xED000065706F6353;
          }

          *(v88 + 56) = &type metadata for String;
          *(v88 + 64) = sub_1000053B0();
          *(v89 + 32) = v90;
          *(v89 + 40) = v91;
          v92 = static os_log_type_t.default.getter();
          sub_100005404(v87, &_mh_execute_header, v92, "<%{public}@> Attempting to re-save zones whose data was reset", 61, 2, v89);
          swift_setDeallocating();
          sub_100005070(v89 + 32);
          sub_1009E4E48(v78);
          goto LABEL_69;
        }

        if (*(v81 + 16))
        {
          goto LABEL_60;
        }
      }

LABEL_69:

      return sub_1009E52A4();
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  swift_once();
LABEL_4:
  v8 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v9 = swift_initStackObject();
  v10 = v9;
  *(v9 + 16) = xmmword_10146C6B0;
  if (*(v0 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v11 = 0x5320646572616853;
  }

  else
  {
    v11 = 0x2065746176697250;
  }

  if (*(v0 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v12 = 0xEC00000065706F63;
  }

  else
  {
    v12 = 0xED000065706F6353;
  }

  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000053B0();
  *(v10 + 32) = v11;
  v13 = v10 + 32;
  *(v10 + 40) = v12;
  v14 = static os_log_type_t.default.getter();
  v15 = "<%{public}@> Attempting to sendChanges while there is an ongoing save task.";
  v16 = v8;
  v17 = 75;
LABEL_11:
  sub_100005404(v16, &_mh_execute_header, v14, v15, v17, 2, v10);
  swift_setDeallocating();
  sub_100005070(v13);
  return sub_1009E52A4();
}

uint64_t sub_1009E4740()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v12 = inited;
  *(inited + 16) = xmmword_10146C6B0;
  if (v1[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
  {
    v13 = 0x5320646572616853;
  }

  else
  {
    v13 = 0x2065746176697250;
  }

  if (v1[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
  {
    v14 = 0xEC00000065706F63;
  }

  else
  {
    v14 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  v15 = static os_log_type_t.default.getter();
  sub_100005404(v10, &_mh_execute_header, v15, "<%{public}@> Current save task finished", 39, 2, v12);
  swift_setDeallocating();
  sub_100005070(v12 + 32);
  v16 = *&v1[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue];
  *v9 = v16;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v18)
  {
    v20 = OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask;
    if (*&v1[OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask])
    {
      swift_beginAccess();

      sub_100049B7C(v21);
      v23 = v22;
      sub_100006370(0, &qword_1019F2D90);
      v24 = static OS_dispatch_queue.main.getter();
      v25 = swift_allocObject();
      *(v25 + 16) = v1;
      *(v25 + 24) = v23;
      aBlock[4] = sub_1009F7750;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_101890EA0;
      v26 = _Block_copy(aBlock);
      v27 = v1;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10002C5F0(&qword_1019F4D10, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400);
      sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
      v28 = v31;
      v29 = v34;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      (*(v33 + 8))(v28, v29);
      (*(v30 + 8))(v5, v32);
    }

    *&v1[v20] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1009E4CA8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  if (qword_1019F1AA8 != -1)
  {
    swift_once();
  }

  v5 = qword_101AD6ED0;
  sub_1005B981C(&qword_1019FB8A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_1005B981C(&unk_1019F52B0);
  *(inited + 72) = a2;

  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_1019FB8B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 postNotificationName:v5 object:a1 userInfo:isa];
}

uint64_t sub_1009E4E48(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (qword_1019F2270 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = static OS_os_log.dataSync;
  v30 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v11 = inited;
  *(inited + 16) = xmmword_10146BDE0;
  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v12 = 0x5320646572616853;
  }

  else
  {
    v12 = 0x2065746176697250;
  }

  if (*(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v13 = 0xEC00000065706F63;
  }

  else
  {
    v13 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  v14 = sub_1000053B0();
  v11[8] = v14;
  v28 = v13;
  v29 = v12;
  v11[4] = v12;
  v11[5] = v13;
  sub_1009DF770(a1);
  v31 = a1;
  v16 = v15;
  v11[12] = sub_1005B981C(&unk_1019F4D80);
  v11[13] = sub_10001A2F8(&unk_101A10AA0, &unk_1019F4D80);
  v11[9] = v16;
  v17 = static os_log_type_t.default.getter();
  sub_100005404(v9, &_mh_execute_header, v17, "<%{public}@> Informing sync engine of zones to be created: %{public}@", 69, 2, v11);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v18 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine;
  swift_beginAccess();
  sub_10000BE14(v1 + v18, &v32, &qword_101A0BA28);
  if (v33)
  {
    sub_100050F74(&v32, v34);
    v19 = sub_1009DFAD8(v31);
    sub_100020E58(v34, v34[3]);
    CKSyncEngine.state.getter();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = *(AssociatedConformanceWitness + 72);
    v22 = swift_checkMetadataState();
    v21(v19, v22, AssociatedConformanceWitness);

    v23 = v34;
  }

  else
  {
    sub_10000CAAC(&v32, &qword_101A0BA28);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_10146C6B0;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v14;
    v25 = v28;
    *(v24 + 32) = v29;
    *(v24 + 40) = v25;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v26, "<%{public}@> SyncEngine not found while attempting to inform of zones to create", 79, 2, v24);
    swift_setDeallocating();
    v23 = (v24 + 32);
  }

  return sub_100005070(v23);
}

uint64_t sub_1009E52A4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_1019F2270 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v9 = inited;
  v22 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  if (*(v0 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v10 = 0x5320646572616853;
  }

  else
  {
    v10 = 0x2065746176697250;
  }

  if (*(v0 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v11 = 0xEC00000065706F63;
  }

  else
  {
    v11 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  v12 = sub_1000053B0();
  v9[8] = v12;
  v9[4] = v10;
  v9[5] = v11;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v7, &_mh_execute_header, v13, "<%{public}@> Informing sync engine that we have changes to send", 63, 2, v9);
  swift_setDeallocating();
  sub_100005070((v9 + 4));
  v14 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine;
  swift_beginAccess();
  sub_10000BE14(v0 + v14, &v23, &qword_101A0BA28);
  if (v24)
  {
    sub_100050F74(&v23, v25);
    sub_100020E58(v25, v25[3]);
    CKSyncEngine.state.getter();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = *(AssociatedConformanceWitness + 32);
    v17 = swift_checkMetadataState();
    v16(1, v17, AssociatedConformanceWitness);

    v18 = v25;
  }

  else
  {
    sub_10000CAAC(&v23, &qword_101A0BA28);
    v19 = swift_initStackObject();
    *(v19 + 16) = v22;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = v12;
    *(v19 + 32) = v10;
    *(v19 + 40) = v11;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v7, &_mh_execute_header, v20, "<%{public}@> SyncEngine not found while attempting to inform of changes to send", 79, 2, v19);
    swift_setDeallocating();
    v18 = (v19 + 32);
  }

  return sub_100005070(v18);
}

uint64_t sub_1009E565C()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.Scope();
  v5 = *(Changes - 8);
  __chkstk_darwin(Changes);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChangesOptions = type metadata accessor for CKSyncEngine.FetchChangesOptions();
  v8 = *(ChangesOptions - 8);
  v9 = __chkstk_darwin(ChangesOptions);
  v36 = v10;
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v1[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue];
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v34 = v4;
    if (qword_1019F2270 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v21 = inited;
  *(inited + 16) = xmmword_10146C6B0;
  if (v1[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
  {
    v22 = 0x5320646572616853;
  }

  else
  {
    v22 = 0x2065746176697250;
  }

  if (v1[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
  {
    v23 = 0xEC00000065706F63;
  }

  else
  {
    v23 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  v24 = static os_log_type_t.default.getter();
  sub_100005404(v19, &_mh_execute_header, v24, "<%{public}@> [Fetch] Fetching all changes", 41, 2, v21);
  swift_setDeallocating();
  sub_100005070(v21 + 32);
  (*(v5 + 104))(v7, enum case for CKSyncEngine.FetchChangesOptions.Scope.all(_:), Changes);
  CKSyncEngine.FetchChangesOptions.init(scope:operationGroup:)();
  sub_100020E58(&v1[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncPriorityProvider], *&v1[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncPriorityProvider + 24]);
  type metadata accessor for CRLSyncPriorityProvider();
  sub_1006C3518();
  CKSyncEngine.FetchChangesOptions.prioritizedZoneIDs.setter();
  v25 = CKSyncEngine.FetchChangesOptions.defaultZoneConfiguration.modify();
  CKSyncEngine.FetchChangesOptions.ZoneConfiguration.shouldFetchAssetContents.setter();
  v25(v39, 0);
  v26 = type metadata accessor for TaskPriority();
  v27 = v34;
  (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
  v29 = v37;
  v28 = ChangesOptions;
  (*(v8 + 16))(v37, v12, ChangesOptions);
  v30 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 4) = v1;
  (*(v8 + 32))(&v31[v30], v29, v28);
  v32 = v1;
  sub_10064191C(0, 0, v27, &unk_10148CE98, v31);

  return (*(v8 + 8))(v12, v28);
}

uint64_t sub_1009E5BB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchedRecords;
  swift_beginAccess();

  sub_100BF27B0(v4, a1);

  *(v1 + v3) = _swiftEmptyDictionarySingleton;
}

void sub_1009E5CCC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v11 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
  if (!v11 || (v12 = *(v11 + 64)) == 0)
  {
    if (qword_1019F2270 == -1)
    {
LABEL_9:
      v27 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      v29 = inited;
      *(inited + 16) = xmmword_10146BDE0;
      if (*(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v30 = 0x5320646572616853;
      }

      else
      {
        v30 = 0x2065746176697250;
      }

      if (*(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v31 = 0xEC00000065706F63;
      }

      else
      {
        v31 = 0xED000065706F6353;
      }

      *(inited + 56) = &type metadata for String;
      v32 = sub_1000053B0();
      v29[4] = v30;
      v29[8] = v32;
      v29[5] = v31;
      v73 = 0x203A65707954;
      v74 = 0xE600000000000000;
      v33._countAndFlagsBits = CKRecord.recordType.getter();
      String.append(_:)(v33);

      v34._countAndFlagsBits = 0x203A444920;
      v34._object = 0xE500000000000000;
      String.append(_:)(v34);
      v35 = [a1 recordID];
      v36 = [v35 recordName];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40._countAndFlagsBits = v37;
      v40._object = v39;
      String.append(_:)(v40);

      v41 = v73;
      v42 = v74;
      v29[12] = &type metadata for String;
      v29[13] = v32;
      v29[9] = v41;
      v29[10] = v42;
      v43 = static os_log_type_t.error.getter();
      sub_100005404(v27, &_mh_execute_header, v43, "<%{public}@> There is no ongoing batch save in the save task. We can't process the save results of record %{public}@", 116, 2, v29);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
LABEL_16:
      swift_arrayDestroy();
      return;
    }

LABEL_32:
    swift_once();
    goto LABEL_9;
  }

  v13 = [a1 recordID];
  v14 = sub_100B51038(v13);
  if (!v14)
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v71 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    v48 = swift_initStackObject();
    v49 = v48;
    *(v48 + 16) = xmmword_10146C4D0;
    if (*(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v50 = 0x5320646572616853;
    }

    else
    {
      v50 = 0x2065746176697250;
    }

    if (*(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v51 = 0xEC00000065706F63;
    }

    else
    {
      v51 = 0xED000065706F6353;
    }

    *(v48 + 56) = &type metadata for String;
    v52 = sub_1000053B0();
    v49[4] = v50;
    v49[8] = v52;
    v49[5] = v51;
    v73 = 0x203A65707954;
    v74 = 0xE600000000000000;
    v53._countAndFlagsBits = CKRecord.recordType.getter();
    String.append(_:)(v53);

    v54._countAndFlagsBits = 0x203A444920;
    v54._object = 0xE500000000000000;
    String.append(_:)(v54);
    v55 = [a1 recordID];
    v56 = [v55 recordName];

    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60._countAndFlagsBits = v57;
    v60._object = v59;
    String.append(_:)(v60);

    v61 = v73;
    v62 = v74;
    v49[12] = &type metadata for String;
    v49[13] = v52;
    v49[9] = v61;
    v49[10] = v62;
    v63 = [*(v12[2] + 16) zoneName];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v49[17] = &type metadata for String;
    v49[18] = v52;
    v49[14] = v64;
    v49[15] = v66;
    v67 = static os_log_type_t.error.getter();
    sub_100005404(v71, &_mh_execute_header, v67, "<%{public}@> Did not find a local change record for record %{public}@ in batch with zone ID: %{public}@", 103, 2, v49);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    goto LABEL_16;
  }

  v16 = v14;
  v17 = v15;
  swift_beginAccess();
  v18 = v12[6];

  v19 = sub_1009DFF2C(v13, v18);

  if (v19 && (v19, v20 = (v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider), v21 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider + 24), v22 = v20[4], sub_100020E58(v20, v21), (v23 = (*(*(v22 + 16) + 8))(a1, v21)) != 0))
  {
    v25 = v23;
    v26 = v24;
    v17 |= 0x4000000000000000uLL;
    swift_unknownObjectRetain();
    a1 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    v44 = [a1 recordChangeTag];
    if (v44)
    {

      v45 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
      [a1 encodeSystemFieldsWithCoder:v45];
      v46 = [v45 encodedData];
      v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v47;
    }

    else
    {
      v25 = 0;
      v26 = 0xF000000000000000;
    }

    v68 = a1;
  }

  v73 = v16;
  v74 = v17;
  v75 = v25;
  v76 = v26;
  v77 = a1;
  swift_beginAccess();
  sub_1009F5E18(v16, v17, v25, v26, a1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v12[8];
  v12[8] = 0x8000000000000000;
  sub_100A9F750(&v73, v13, isUniquelyReferenced_nonNull_native);

  v12[8] = v72;
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_1009F5D34(v16, v17, v25, v26, a1);
}

void sub_1009E6450(void *a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  v13 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  v14 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
  if (!v14 || (v15 = *(v14 + 64)) == 0)
  {
    v127 = a2;
    if (qword_1019F2270 == -1)
    {
LABEL_17:
      v126 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      v36 = inited;
      *(inited + 16) = xmmword_10146BDE0;
      if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v37 = 0x5320646572616853;
      }

      else
      {
        v37 = 0x2065746176697250;
      }

      if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
      {
        v38 = 0xEC00000065706F63;
      }

      else
      {
        v38 = 0xED000065706F6353;
      }

      *(inited + 56) = &type metadata for String;
      v39 = v3;
      v40 = sub_1000053B0();
      v36[4] = v37;
      v36[8] = v40;
      v36[5] = v38;
      v131 = 0x203A65707954;
      v132 = 0xE600000000000000;
      v41._countAndFlagsBits = CKRecord.recordType.getter();
      String.append(_:)(v41);

      v42._countAndFlagsBits = 0x203A444920;
      v42._object = 0xE500000000000000;
      String.append(_:)(v42);
      v43 = [a1 recordID];
      v44 = [v43 recordName];

      v45 = a1;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v49._countAndFlagsBits = v46;
      a1 = v45;
      v49._object = v48;
      String.append(_:)(v49);

      v50 = v131;
      v51 = v132;
      v36[12] = &type metadata for String;
      v36[13] = v40;
      v3 = v39;
      v36[9] = v50;
      v36[10] = v51;
      v52 = static os_log_type_t.error.getter();
      sub_100005404(v126, &_mh_execute_header, v52, "<%{public}@> Failed to find the current batch to handle save failure for record %{public}@", 90, 2, v36);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      goto LABEL_24;
    }

LABEL_61:
    swift_once();
    goto LABEL_17;
  }

  v130 = a2;
  type metadata accessor for CKError(0);
  sub_10002C5F0(&qword_1019F3348, 255, type metadata accessor for CKError);

  _BridgedStoredNSError.code.getter();
  v16 = __ROR8__(v129 - 14, 1);
  if (v16 > 5)
  {
    if (v16 != 6)
    {
      if (v16 != 7)
      {
        goto LABEL_29;
      }

      sub_1009E757C(v15, a1, a2);
LABEL_42:

      goto LABEL_25;
    }

    v126 = v15;
    v127 = a2;
    v79 = v3;
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v80 = 0xEC00000065706F63;
    v81 = 0x5320646572616853;
    v82 = static OS_os_log.dataSync;
    v122 = sub_1005B981C(&qword_1019F54E0);
    v83 = swift_initStackObject();
    v84 = v83;
    v121 = xmmword_10146BDE0;
    *(v83 + 16) = xmmword_10146BDE0;
    v125 = v79;
    v85 = *(v79 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope);
    if (!*(v79 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v81 = 0x2065746176697250;
      v80 = 0xED000065706F6353;
    }

    *(v83 + 56) = &type metadata for String;
    v86 = sub_1000053B0();
    v84[8] = v86;
    v84[4] = v81;
    v124 = v84 + 4;
    v84[5] = v80;
    v131 = 0x203A65707954;
    v132 = 0xE600000000000000;
    v87._countAndFlagsBits = CKRecord.recordType.getter();
    v88 = a1;
    String.append(_:)(v87);

    v89._countAndFlagsBits = 0x203A444920;
    v89._object = 0xE500000000000000;
    String.append(_:)(v89);
    v90 = [a1 recordID];
    v91 = [v90 recordName];

    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;

    v95._countAndFlagsBits = v92;
    v95._object = v94;
    String.append(_:)(v95);

    v96 = v131;
    v97 = v132;
    v84[12] = &type metadata for String;
    v84[13] = v86;
    v84[9] = v96;
    v84[10] = v97;
    v98 = static os_log_type_t.default.getter();
    v123 = v82;
    sub_100005404(v82, &_mh_execute_header, v98, "<%{public}@> Failed to save a record due to zone not found for record %{public}@", 80, 2, v84);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    if (v85)
    {
      v99 = swift_initStackObject();
      *(v99 + 16) = v121;
      *(v99 + 56) = &type metadata for String;
      *(v99 + 64) = v86;
      strcpy((v99 + 32), "Shared Scope");
      *(v99 + 45) = 0;
      *(v99 + 46) = -5120;
      v131 = 0x203A65707954;
      v132 = 0xE600000000000000;
      v100._countAndFlagsBits = CKRecord.recordType.getter();
      String.append(_:)(v100);

      v101._countAndFlagsBits = 0x203A444920;
      v101._object = 0xE500000000000000;
      String.append(_:)(v101);
      v102 = [v88 recordID];
      v103 = [v102 recordName];

      v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = v105;

      v107._countAndFlagsBits = v104;
      v107._object = v106;
      String.append(_:)(v107);

      v108 = v131;
      v109 = v132;
      *(v99 + 96) = &type metadata for String;
      *(v99 + 104) = v86;
      *(v99 + 72) = v108;
      *(v99 + 80) = v109;
      v110 = static os_log_type_t.default.getter();
      sub_100005404(v123, &_mh_execute_header, v110, "<%{public}@> Marking zoneNotFound failure as unrecoverable for shared record %{public}@", 87, 2, v99);
      swift_setDeallocating();
      swift_arrayDestroy();
      v111 = v127;
      v3 = v125;
      sub_1009E7F70(v126, v88, v127);

      a1 = v88;
      a2 = v111;
      goto LABEL_25;
    }

    v3 = v125;
    sub_1009F5A18(v126);

    a1 = v88;
LABEL_24:
    a2 = v127;
    goto LABEL_25;
  }

  if (!v16)
  {
    v76 = v3;
    v77 = related decl 'e' for CKErrorCode.serverRecord.getter();
    if (v77)
    {
      v78 = v77;
      sub_1009F4C48(v15, v77);

      v3 = v76;
      goto LABEL_42;
    }

    v126 = v15;
    v127 = a2;
    v112 = a1;
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v113 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    v114 = swift_initStackObject();
    v115 = v114;
    *(v114 + 16) = xmmword_10146C6B0;
    if (*(v76 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v116 = 0x5320646572616853;
    }

    else
    {
      v116 = 0x2065746176697250;
    }

    if (*(v76 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v117 = 0xEC00000065706F63;
    }

    else
    {
      v117 = 0xED000065706F6353;
    }

    *(v114 + 56) = &type metadata for String;
    *(v114 + 64) = sub_1000053B0();
    *(v115 + 32) = v116;
    v118 = v115 + 32;
    *(v115 + 40) = v117;
    v119 = static os_log_type_t.error.getter();
    sub_100005404(v113, &_mh_execute_header, v119, "<%{public}@> Could not merge conflict because serverRecord does not exist on the CKError. This is an internal CloudKit error", 124, 2, v115);
    v3 = v76;
    swift_setDeallocating();
    sub_100005070(v118);
    v128 = 1;
    sub_1009F47A4(_swiftEmptyArrayStorage);
    _BridgedStoredNSError.init(_:userInfo:)();
    v120 = v131;
    a1 = v112;
    sub_1009E7B4C(v126, v112, v131);

    goto LABEL_24;
  }

  if (v16 == 4)
  {
    v126 = v15;
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v127 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    v17 = swift_initStackObject();
    v18 = v17;
    *(v17 + 16) = xmmword_10146BDE0;
    if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v19 = 0x5320646572616853;
    }

    else
    {
      v19 = 0x2065746176697250;
    }

    if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v20 = 0xEC00000065706F63;
    }

    else
    {
      v20 = 0xED000065706F6353;
    }

    *(v17 + 56) = &type metadata for String;
    v21 = sub_1000053B0();
    v18[4] = v19;
    v125 = v18 + 4;
    v18[8] = v21;
    v18[5] = v20;
    v131 = 0x203A65707954;
    v132 = 0xE600000000000000;
    v22._countAndFlagsBits = CKRecord.recordType.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0x203A444920;
    v23._object = 0xE500000000000000;
    String.append(_:)(v23);
    v24 = [a1 recordID];
    v25 = [v24 recordName];

    v26 = a1;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v3;
    v30 = v29;

    v31._countAndFlagsBits = v27;
    a1 = v26;
    v31._object = v30;
    String.append(_:)(v31);
    v3 = v28;

    v32 = v131;
    v33 = v132;
    v18[12] = &type metadata for String;
    v18[13] = v21;
    v18[9] = v32;
    v18[10] = v33;
    v34 = static os_log_type_t.default.getter();
    sub_100005404(v127, &_mh_execute_header, v34, "<%{public}@> Failed to save a record due to atomic batch save failure. Record %{public}@", 88, 2, v18);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    goto LABEL_25;
  }

LABEL_29:
  v131 = a2;
  _BridgedStoredNSError.code.getter();
  if (v128 > 0x24 || ((1 << v128) & 0x1000A002D8) == 0)
  {
    sub_1009E7F70(v15, a1, a2);
    goto LABEL_42;
  }

  v126 = v15;
  v127 = a2;
  v53 = v3;
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v125 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v54 = swift_initStackObject();
  v55 = v54;
  *(v54 + 16) = xmmword_10146D2A0;
  if (*(v53 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v56 = 0x5320646572616853;
  }

  else
  {
    v56 = 0x2065746176697250;
  }

  if (*(v53 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v57 = 0xEC00000065706F63;
  }

  else
  {
    v57 = 0xED000065706F6353;
  }

  *(v54 + 56) = &type metadata for String;
  v58 = sub_1000053B0();
  v55[4] = v56;
  v124 = v55 + 4;
  v55[8] = v58;
  v55[5] = v57;
  v131 = 0x203A65707954;
  v132 = 0xE600000000000000;
  v59._countAndFlagsBits = CKRecord.recordType.getter();
  v60 = a1;
  String.append(_:)(v59);

  v61._countAndFlagsBits = 0x203A444920;
  v61._object = 0xE500000000000000;
  String.append(_:)(v61);
  v62 = [a1 recordID];
  v63 = [v62 recordName];

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  a1 = v60;
  v67._countAndFlagsBits = v64;
  v67._object = v66;
  String.append(_:)(v67);

  v68 = v131;
  v69 = v132;
  v55[12] = &type metadata for String;
  v55[13] = v58;
  v55[9] = v68;
  v55[10] = v69;
  a2 = v127;
  v70 = sub_100B6FCD4(v127);
  v55[17] = &type metadata for String;
  v55[18] = v58;
  v55[14] = v70;
  v55[15] = v71;
  v131 = a2;
  v72 = a2;
  v73 = String.init<A>(reflecting:)();
  v55[22] = &type metadata for String;
  v55[23] = v58;
  v55[19] = v73;
  v55[20] = v74;
  v75 = static os_log_type_t.default.getter();
  sub_100005404(v125, &_mh_execute_header, v75, "<%{public}@> Failed to save record due to a retriable error. Record %{public}@ Error: %{public}@ <%@>", 101, 2, v55);
  v3 = v53;
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  sub_1009E7B4C(v126, a1, v72);

LABEL_25:
  sub_1009E72C8(v3, a2, a1);
}

void sub_1009E72C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
  if (v5 && (v6 = *(v5 + 64)) != 0)
  {
    v8 = *(*(v6 + 16) + 16);

    v25 = v8;
    sub_1009F55E8(a2);
  }

  else
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v11 = inited;
    *(inited + 16) = xmmword_10146BDE0;
    v12 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope) == 0;
    if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
    {
      v13 = 0x5320646572616853;
    }

    else
    {
      v13 = 0x2065746176697250;
    }

    if (v12)
    {
      v14 = 0xED000065706F6353;
    }

    else
    {
      v14 = 0xEC00000065706F63;
    }

    *(inited + 56) = &type metadata for String;
    v15 = sub_1000053B0();
    v11[4] = v13;
    v11[8] = v15;
    v11[5] = v14;
    v16._countAndFlagsBits = CKRecord.recordType.getter();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 0x203A444920;
    v17._object = 0xE500000000000000;
    String.append(_:)(v17);
    v18 = [a3 recordID];
    v19 = [v18 recordName];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v11[12] = &type metadata for String;
    v11[13] = v15;
    v11[9] = 0x203A65707954;
    v11[10] = 0xE600000000000000;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v24, "<%{public}@> Failed to find the current batch to notify throttler about save failure for record %{public}@", 106, 2, v11);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
  }
}

void sub_1009E757C(uint64_t a1, void *a2, void *a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v58 = a3;
    v59 = a1;
    if (qword_1019F2270 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v61 = static OS_os_log.dataSync;
  v60 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v15 = inited;
  v56 = xmmword_10146BDE0;
  *(inited + 16) = xmmword_10146BDE0;
  if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v16 = 0x5320646572616853;
  }

  else
  {
    v16 = 0x2065746176697250;
  }

  if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v17 = 0xEC00000065706F63;
  }

  else
  {
    v17 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  v18 = sub_1000053B0();
  v15[8] = v18;
  v62 = v3;
  v63 = 0x203A65707954;
  v15[4] = v16;
  v15[5] = v17;
  v64 = 0xE600000000000000;
  v19._countAndFlagsBits = CKRecord.recordType.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x203A444920;
  v20._object = 0xE500000000000000;
  String.append(_:)(v20);
  v57 = a2;
  v21 = [a2 recordID];
  v22 = [v21 recordName];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);
  v27 = v61;

  v28 = v63;
  v29 = v64;
  v15[12] = &type metadata for String;
  v15[13] = v18;
  v15[9] = v28;
  v15[10] = v29;
  v30 = static os_log_type_t.default.getter();
  sub_100005404(v27, &_mh_execute_header, v30, "<%{public}@> Encountered .userDeletedZone error while saving record {%@}. It needs to be recreated.", 99, 2, v15);
  swift_setDeallocating();
  v31 = sub_1005B981C(&unk_1019F5670);
  v32 = v62;
  swift_arrayDestroy();
  if (*(v32 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask))
  {
    v55[1] = v31;
    v33 = v17;
    v34 = v59;
    v35 = *(*(v59 + 16) + 16);
    sub_100020E58((v32 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider), *(v32 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider + 24));

    v36 = v35;
    if (sub_100EED28C())
    {
      swift_beginAccess();
      sub_100E71568(v65, v36);
      swift_endAccess();

      v38 = v57;
      v37 = v58;
    }

    else
    {
      v41 = swift_initStackObject();
      *(v41 + 16) = v56;
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = v18;
      v55[0] = v18;
      *(v41 + 32) = v16;
      *(v41 + 40) = v33;
      v63 = 0x203A65707954;
      v64 = 0xE600000000000000;
      v38 = v57;
      v42._countAndFlagsBits = CKRecord.recordType.getter();
      v43 = v36;
      String.append(_:)(v42);

      v44._countAndFlagsBits = 0x203A444920;
      v44._object = 0xE500000000000000;
      String.append(_:)(v44);
      v45 = [v38 recordID];
      v46 = [v45 recordName];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v36 = v43;
      v50._countAndFlagsBits = v47;
      v50._object = v49;
      String.append(_:)(v50);
      v34 = v59;

      v51 = v63;
      v52 = v64;
      v53 = v55[0];
      *(v41 + 96) = &type metadata for String;
      *(v41 + 104) = v53;
      *(v41 + 72) = v51;
      *(v41 + 80) = v52;
      v54 = static os_log_type_t.error.getter();
      sub_100005404(v61, &_mh_execute_header, v54, "<%{public}@> Encountered .userDeletedZone error while saving a record that should not recreate a metadata zone {%@}.", 116, 2, v41);
      swift_setDeallocating();
      swift_arrayDestroy();
      v37 = v58;
    }

    sub_1009E7F70(v34, v38, v37);
  }

  else
  {
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_10146C6B0;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = v18;
    *(v39 + 32) = v16;
    *(v39 + 40) = v17;
    v40 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v40, "<%{public}@> Could not find active save task for handling zone-not-found error", 78, 2, v39);
    swift_setDeallocating();
    sub_100005070(v39 + 32);
  }
}

uint64_t sub_1009E7B4C(uint64_t a1, void *a2, void *a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v14)
  {
    v36 = a2;
    v11 = a3;
    if (qword_1019F2270 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = static OS_os_log.dataSync;
  v34 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v17 = inited;
  *(inited + 16) = xmmword_10146BDE0;
  v18 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope) == 0;
  if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v19 = 0x5320646572616853;
  }

  else
  {
    v19 = 0x2065746176697250;
  }

  if (v18)
  {
    v20 = 0xED000065706F6353;
  }

  else
  {
    v20 = 0xEC00000065706F63;
  }

  *(inited + 56) = &type metadata for String;
  v21 = sub_1000053B0();
  v17[8] = v21;
  v33 = v19;
  v17[4] = v19;
  v17[5] = v20;
  v38[0] = v11;
  type metadata accessor for CKError(0);
  sub_10002C5F0(&qword_1019F3348, 255, type metadata accessor for CKError);
  v22 = _BridgedStoredNSError.errorCode.getter();
  v17[12] = &type metadata for Int;
  v17[13] = &protocol witness table for Int;
  v17[9] = v22;
  v23 = static os_log_type_t.default.getter();
  v35 = v15;
  sub_100005404(v15, &_mh_execute_header, v23, "<%{public}@> Received retriable cloud error %d", 46, 2, v17);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v24 = [v36 recordID];
  v25 = sub_100B51038(v24);
  if (v25)
  {
    v38[0] = v25;
    v38[1] = v26 | 0x8000000000000000;
    v38[3] = 0;
    v38[4] = 0;
    v38[2] = v11;
    swift_beginAccess();
    swift_unknownObjectRetain_n();
    v27 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(a1 + 64);
    *(a1 + 64) = 0x8000000000000000;
    sub_100A9F750(v38, v24, isUniquelyReferenced_nonNull_native);

    *(a1 + 64) = v37;
    swift_endAccess();

    return swift_unknownObjectRelease_n();
  }

  else
  {
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_10146C6B0;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = v21;
    *(v30 + 32) = v33;
    *(v30 + 40) = v20;
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v31, "<%{public}@> Failed to find the local change to populate an error while saving.", 79, 2, v30);

    swift_setDeallocating();
    return sub_100005070(v30 + 32);
  }
}

uint64_t sub_1009E7F70(uint64_t a1, void *a2, void *a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 1);
  v9 = __chkstk_darwin(v7);
  v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v14)
  {
    v36 = a2;
    v7 = a3;
    if (qword_1019F2270 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = static OS_os_log.dataSync;
  v33[1] = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v17 = inited;
  *(inited + 16) = xmmword_10146BDE0;
  if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v18 = 0x5320646572616853;
  }

  else
  {
    v18 = 0x2065746176697250;
  }

  if (*(v3 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v19 = 0xEC00000065706F63;
  }

  else
  {
    v19 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  v20 = sub_1000053B0();
  v35 = v3;
  v21 = v20;
  v17[8] = v20;
  v33[0] = v18;
  v17[4] = v18;
  v17[5] = v19;
  v38[0] = v7;
  type metadata accessor for CKError(0);
  sub_10002C5F0(&qword_1019F3348, 255, type metadata accessor for CKError);
  v22 = _BridgedStoredNSError.errorCode.getter();
  v17[12] = &type metadata for Int;
  v17[13] = &protocol witness table for Int;
  v17[9] = v22;
  v23 = static os_log_type_t.default.getter();
  v34 = v15;
  sub_100005404(v15, &_mh_execute_header, v23, "<%{public}@> Received unrecoverable cloud error %d", 50, 2, v17);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v24 = [v36 recordID];
  v25 = sub_100B51038(v24);
  if (v25)
  {
    v38[0] = v25;
    v38[1] = v26 | 0x8000000000000000;
    v38[3] = 0;
    v38[4] = 0;
    v38[2] = v7;
    swift_beginAccess();
    v27 = v7;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(a1 + 64);
    *(a1 + 64) = 0x8000000000000000;
    sub_100A9F750(v38, v24, isUniquelyReferenced_nonNull_native);

    *(a1 + 64) = v37;
    swift_endAccess();

    result = swift_unknownObjectRelease();
    v30 = *(v35 + OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask);
    if (v30)
    {
      *(v30 + 56) = 1;
    }
  }

  else
  {
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_10146C6B0;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = v21;
    *(v31 + 32) = v33[0];
    *(v31 + 40) = v19;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v32, "<%{public}@> Failed to find the local change to populate an error while saving.", 79, 2, v31);

    swift_setDeallocating();
    return sub_100005070(v31 + 32);
  }

  return result;
}