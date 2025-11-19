progressd::ClassKitServiceConnection::Environment_optional __swiftcall ClassKitServiceConnection.Environment.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 4)
  {
    return 3;
  }

  else
  {
    return (0x2010003u >> (8 * rawValue));
  }
}

Swift::Int sub_100002218()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100002290()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

void *sub_1000022D4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t variable initialization expression of MultimediaRecordResponseItem._multimediaRecord@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Ckcode_RecordTransport();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t sub_1000023AC()
{
  result = qword_10024AB10;
  if (!qword_10024AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10024AB10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClassKitServiceConnection.Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassKitServiceConnection.Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000286C(uint64_t *a1, uint64_t *a2)
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

void sub_1000028EC(uint64_t a1@<X8>)
{
  sub_100007538();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_100002928(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_100007538();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

Swift::Int sub_10000296C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000029D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007D5C();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100002A24()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static ParentEntityType.allCases.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  static ParentEntityType.allCases = a1;
}

uint64_t sub_100002BA0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static ParentEntityType.allCases;
}

uint64_t HelloRequest.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HelloRequest.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_100002D20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100002DBC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100002E9C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1(0) + 20);
  return UnknownStorage.init()();
}

uint64_t MultimediaRecordsRequest.zoneOwnerName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MultimediaRecordsRequest.zoneOwnerName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MultimediaRecordsRequest.orgID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MultimediaRecordsRequest.orgID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MultimediaRecordsRequest.multimediaRequestItems.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t MultimediaRecordsRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = &_swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for MultimediaRecordsRequest(0) + 32);
  return UnknownStorage.init()();
}

uint64_t MultimediaRecordRequestItem.parentEntityType.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t MultimediaRecordRequestItem.parentEntityType.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_100003140@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000031DC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t MultimediaRecordRequestItem.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = &_swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for MultimediaRecordRequestItem(0) + 32);
  return UnknownStorage.init()();
}

uint64_t MultimediaRecordsResponse.multimediaRecords.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MultimediaRecordsResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for MultimediaRecordsResponse(0) + 20);
  return UnknownStorage.init()();
}

uint64_t MultimediaRecordResponseItem.multimediaRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(sub_10000286C(&qword_10024AB28, &qword_1001A7590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v11 - v4;
  v6 = type metadata accessor for MultimediaRecordResponseItem(0);
  sub_100007644(v1 + *(v6 + 24), v5);
  v7 = type metadata accessor for Ckcode_RecordTransport();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  Ckcode_RecordTransport.init()();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100009244(v5, &qword_10024AB28, &qword_1001A7590);
  }

  return result;
}

uint64_t MultimediaRecordResponseItem.multimediaRecord.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MultimediaRecordResponseItem(0) + 24);
  sub_100009244(v1 + v3, &qword_10024AB28, &qword_1001A7590);
  v4 = type metadata accessor for Ckcode_RecordTransport();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*MultimediaRecordResponseItem.multimediaRecord.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10000286C(&qword_10024AB28, &qword_1001A7590) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Ckcode_RecordTransport();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for MultimediaRecordResponseItem(0) + 24);
  *(v4 + 12) = v14;
  sub_100007644(v1 + v14, v7);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    Ckcode_RecordTransport.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100009244(v7, &qword_10024AB28, &qword_1001A7590);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_100003810;
}

void sub_100003810(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_100009244(v9 + v3, &qword_10024AB28, &qword_1001A7590);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_100009244(v9 + v3, &qword_10024AB28, &qword_1001A7590);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL MultimediaRecordResponseItem.hasMultimediaRecord.getter()
{
  v1 = (*(*(sub_10000286C(&qword_10024AB28, &qword_1001A7590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v8 - v2;
  v4 = type metadata accessor for MultimediaRecordResponseItem(0);
  sub_100007644(v0 + *(v4 + 24), v3);
  v5 = type metadata accessor for Ckcode_RecordTransport();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100009244(v3, &qword_10024AB28, &qword_1001A7590);
  return v6;
}

Swift::Void __swiftcall MultimediaRecordResponseItem.clearMultimediaRecord()()
{
  v1 = *(type metadata accessor for MultimediaRecordResponseItem(0) + 24);
  sub_100009244(v0 + v1, &qword_10024AB28, &qword_1001A7590);
  v2 = type metadata accessor for Ckcode_RecordTransport();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t MultimediaRecordResponseItem.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for MultimediaRecordResponseItem(0);
  v3 = &a1[*(v2 + 20)];
  UnknownStorage.init()();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Ckcode_RecordTransport();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_100003BF8()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000092A4(v0, static ParentEntityType._protobuf_nameMap);
  sub_1000076B4(v0, static ParentEntityType._protobuf_nameMap);
  sub_10000286C(&qword_10024B018, &qword_1001A7F98);
  v1 = (sub_10000286C(&qword_10024B020, &qword_1001A7FA0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1001A74B0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "UNKNOWN_PARENT_ENTITY_TYPE";
  *(v4 + 8) = 26;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "HANDOUT";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "HANDOUT_ATTACHMENT";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "SURVEY_STEP";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SURVEY_STEP_ANSWER";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "MULTIPLE_CHOICE_OPTION_ITEM";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "STATE_CHANGE_PAYLOAD";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100004098@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t (*sub_1000040CC(uint64_t a1, uint64_t a2))()
{
  result = ParentEntityType.rawValue.getter;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_100004124(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000076EC(&qword_10024AFF8, type metadata accessor for HelloRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000041C8(uint64_t a1)
{
  v2 = sub_1000076EC(&qword_10024ABB0, type metadata accessor for HelloRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100004238()
{
  sub_1000076EC(&qword_10024ABB0, type metadata accessor for HelloRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000042B8(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  sub_1000076EC(&qword_10024AB30, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10000440C()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t sub_1000044A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    v11 = v4 + *(a4(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100004564(void *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3(0) + 20);
  type metadata accessor for UnknownStorage();
  sub_1000076EC(&qword_10024AB30, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10000468C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000076EC(&qword_10024AFF0, type metadata accessor for HelloResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10000472C(uint64_t a1)
{
  v2 = sub_1000076EC(&qword_10024ABC8, type metadata accessor for HelloResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100004798()
{
  sub_1000076EC(&qword_10024ABC8, type metadata accessor for HelloResponse);

  return Message.hash(into:)();
}

uint64_t sub_10000483C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000092A4(v0, static MultimediaRecordsRequest._protobuf_nameMap);
  sub_1000076B4(v0, static MultimediaRecordsRequest._protobuf_nameMap);
  sub_10000286C(&qword_10024B018, &qword_1001A7F98);
  v1 = (sub_10000286C(&qword_10024B020, &qword_1001A7FA0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001A74C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "zone_name";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone_owner_name";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "org_id";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "multimedia_request_items";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t MultimediaRecordsRequest.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_4;
        }

        if (result == 4)
        {
          type metadata accessor for MultimediaRecordRequestItem(0);
          sub_1000076EC(&qword_10024AB48, type metadata accessor for MultimediaRecordRequestItem);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t MultimediaRecordsRequest.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        if (!*(v0[6] + 16) || (type metadata accessor for MultimediaRecordRequestItem(0), sub_1000076EC(&qword_10024AB48, type metadata accessor for MultimediaRecordRequestItem), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
        {
          v10 = v0 + *(type metadata accessor for MultimediaRecordsRequest(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100004DB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t (*sub_100004DF4(uint64_t a1, uint64_t a2))()
{
  result = ParentEntityType.rawValue.getter;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_100004E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000076EC(&qword_10024AFE8, type metadata accessor for MultimediaRecordsRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100004EE8(uint64_t a1)
{
  v2 = sub_1000076EC(&qword_10024ABE0, type metadata accessor for MultimediaRecordsRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100004F54()
{
  sub_1000076EC(&qword_10024ABE0, type metadata accessor for MultimediaRecordsRequest);

  return Message.hash(into:)();
}

uint64_t sub_100004FF8()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000092A4(v0, static MultimediaRecordRequestItem._protobuf_nameMap);
  sub_1000076B4(v0, static MultimediaRecordRequestItem._protobuf_nameMap);
  sub_10000286C(&qword_10024B018, &qword_1001A7F98);
  v1 = (sub_10000286C(&qword_10024B020, &qword_1001A7FA0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001A74C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "record_name";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parent_object_id";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parent_entity_type";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "asset_field_names";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t MultimediaRecordRequestItem.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_100007D5C();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t MultimediaRecordRequestItem.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (!v0[4] || (v9 = v0[4], v10 = *(v0 + 40), sub_100007D5C(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
      {
        if (!*(v0[6] + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v1))
        {
          v8 = v0 + *(type metadata accessor for MultimediaRecordRequestItem(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100005508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t sub_10000554C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000055C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100005664(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000076EC(&qword_10024AFE0, type metadata accessor for MultimediaRecordRequestItem);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100005704(uint64_t a1)
{
  v2 = sub_1000076EC(&qword_10024AB48, type metadata accessor for MultimediaRecordRequestItem);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100005770()
{
  sub_1000076EC(&qword_10024AB48, type metadata accessor for MultimediaRecordRequestItem);

  return Message.hash(into:)();
}

uint64_t sub_100005834(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = type metadata accessor for _NameMap();
  sub_1000092A4(v9, a2);
  sub_1000076B4(v9, a2);
  sub_10000286C(&qword_10024B018, &qword_1001A7F98);
  v10 = (sub_10000286C(&qword_10024B020, &qword_1001A7FA0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001A74D0;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t MultimediaRecordsResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for MultimediaRecordResponseItem(0);
        sub_1000076EC(&qword_10024AB68, type metadata accessor for MultimediaRecordResponseItem);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t MultimediaRecordsResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for MultimediaRecordResponseItem(0), sub_1000076EC(&qword_10024AB68, type metadata accessor for MultimediaRecordResponseItem), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for MultimediaRecordsResponse(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static MultimediaRecordsResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_100006C28(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for MultimediaRecordsResponse(0) + 20);
  type metadata accessor for UnknownStorage();
  sub_1000076EC(&qword_10024AB30, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100005CA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t sub_100005D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000076EC(&qword_10024AFD8, type metadata accessor for MultimediaRecordsResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100005DA0(uint64_t a1)
{
  v2 = sub_1000076EC(&qword_10024AC08, type metadata accessor for MultimediaRecordsResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100005E0C()
{
  sub_1000076EC(&qword_10024AC08, type metadata accessor for MultimediaRecordsResponse);

  return Message.hash(into:)();
}

uint64_t sub_100005E88(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_100006C28(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  sub_1000076EC(&qword_10024AB30, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100005F58()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000092A4(v0, static MultimediaRecordResponseItem._protobuf_nameMap);
  sub_1000076B4(v0, static MultimediaRecordResponseItem._protobuf_nameMap);
  sub_10000286C(&qword_10024B018, &qword_1001A7F98);
  v1 = (sub_10000286C(&qword_10024B020, &qword_1001A7FA0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001A74E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "multimedia_record";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10000614C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for _NameMap();

  return sub_1000076B4(v3, a2);
}

uint64_t sub_1000061C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_1000076B4(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t MultimediaRecordResponseItem.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      sub_1000062EC();
    }
  }

  return result;
}

uint64_t sub_1000062EC()
{
  v0 = *(type metadata accessor for MultimediaRecordResponseItem(0) + 24);
  type metadata accessor for Ckcode_RecordTransport();
  sub_1000076EC(&qword_10024B010, &type metadata accessor for Ckcode_RecordTransport);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t MultimediaRecordResponseItem.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    result = sub_10000644C(v0);
    if (!v1)
    {
      v6 = v0 + *(type metadata accessor for MultimediaRecordResponseItem(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_10000644C(uint64_t a1)
{
  v2 = sub_10000286C(&qword_10024AB28, &qword_1001A7590);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Ckcode_RecordTransport();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MultimediaRecordResponseItem(0);
  sub_100007644(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100009244(v5, &qword_10024AB28, &qword_1001A7590);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1000076EC(&qword_10024B010, &type metadata accessor for Ckcode_RecordTransport);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return (*(v7 + 8))(v10, v6);
}

Swift::Int sub_1000066A0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_1000076EC(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100006728@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Ckcode_RecordTransport();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1000067B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100006824(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000068C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000076EC(&qword_10024AFD0, type metadata accessor for MultimediaRecordResponseItem);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100006968@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_1000076B4(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100006A04(uint64_t a1)
{
  v2 = sub_1000076EC(&qword_10024AB68, type metadata accessor for MultimediaRecordResponseItem);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_100006A70()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100006AC8()
{
  sub_1000076EC(&qword_10024AB68, type metadata accessor for MultimediaRecordResponseItem);

  return Message.hash(into:)();
}

Swift::Int sub_100006B44()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100006B98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100006C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Ckcode_RecordTransport();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (__chkstk_darwin)();
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(sub_10000286C(&qword_10024AB28, &qword_1001A7590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v10 = &v41 - v9;
  v47 = sub_10000286C(&qword_10024B000, &qword_1001A7F90);
  v11 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v13 = &v41 - v12;
  v49 = type metadata accessor for MultimediaRecordResponseItem(0);
  v14 = *(*(v49 - 8) + 64);
  v15 = (__chkstk_darwin)();
  v50 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v19 = (&v41 - v18);
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
LABEL_22:
    v39 = 0;
    return v39 & 1;
  }

  if (v20 && a1 != a2)
  {
    v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = a1 + v21;
    v23 = a2 + v21;
    v24 = (v5 + 48);
    v42 = (v5 + 32);
    v43 = (v5 + 8);
    v46 = *(v17 + 72);
    v48 = v13;
    while (1)
    {
      sub_100009308(v22, v19, type metadata accessor for MultimediaRecordResponseItem);
      v25 = v50;
      sub_100009308(v23, v50, type metadata accessor for MultimediaRecordResponseItem);
      v26 = *v19 == *v25 && v19[1] == v25[1];
      if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v27 = v48;
      v28 = *(v49 + 24);
      v29 = *(v47 + 48);
      sub_100007644(v19 + v28, v48);
      sub_100007644(v50 + v28, v27 + v29);
      v30 = *v24;
      if ((*v24)(v27, 1, v4) == 1)
      {
        if (v30(v27 + v29, 1, v4) != 1)
        {
          goto LABEL_20;
        }

        sub_100009244(v27, &qword_10024AB28, &qword_1001A7590);
      }

      else
      {
        sub_100007644(v27, v10);
        if (v30(v27 + v29, 1, v4) == 1)
        {
          (*v43)(v10, v4);
LABEL_20:
          sub_100009244(v27, &qword_10024B000, &qword_1001A7F90);
          break;
        }

        v31 = v27 + v29;
        v32 = v4;
        v33 = v10;
        v34 = v44;
        (*v42)(v44, v31, v32);
        sub_1000076EC(&qword_10024B008, &type metadata accessor for Ckcode_RecordTransport);
        v45 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *v43;
        v36 = v34;
        v10 = v33;
        v4 = v32;
        (*v43)(v36, v32);
        v35(v10, v32);
        sub_100009244(v48, &qword_10024AB28, &qword_1001A7590);
        if ((v45 & 1) == 0)
        {
          break;
        }
      }

      v37 = *(v49 + 20);
      type metadata accessor for UnknownStorage();
      sub_1000076EC(&qword_10024AB30, &type metadata accessor for UnknownStorage);
      v38 = v50;
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100009370(v38, type metadata accessor for MultimediaRecordResponseItem);
      sub_100009370(v19, type metadata accessor for MultimediaRecordResponseItem);
      if (v39)
      {
        v23 += v46;
        v22 += v46;
        if (--v20)
        {
          continue;
        }
      }

      return v39 & 1;
    }

    sub_100009370(v50, type metadata accessor for MultimediaRecordResponseItem);
    sub_100009370(v19, type metadata accessor for MultimediaRecordResponseItem);
    goto LABEL_22;
  }

  v39 = 1;
  return v39 & 1;
}

uint64_t sub_1000071A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultimediaRecordRequestItem(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = (&v29 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_50:
    v28 = 0;
    return v28 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v28 = 1;
    return v28 & 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v30 = a1 + v14;
  v15 = a2 + v14;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_100009308(v30 + v16 * v13, v11, type metadata accessor for MultimediaRecordRequestItem);
    if (v13 == v12)
    {
      break;
    }

    sub_100009308(v15 + v16 * v13, v8, type metadata accessor for MultimediaRecordRequestItem);
    v18 = *v11 == *v8 && v11[1] == *(v8 + 1);
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v11[2] != *(v8 + 2) || v11[3] != *(v8 + 3)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_49;
    }

    v19 = v11[4];
    v20 = *(v8 + 4);
    if (v8[40] == 1)
    {
      if (v20 <= 2)
      {
        if (v20)
        {
          if (v20 == 1)
          {
            if (v19 != 1)
            {
              goto LABEL_49;
            }
          }

          else if (v19 != 2)
          {
            goto LABEL_49;
          }
        }

        else if (v19)
        {
          goto LABEL_49;
        }
      }

      else if (v20 > 4)
      {
        if (v20 == 5)
        {
          if (v19 != 5)
          {
            goto LABEL_49;
          }
        }

        else if (v19 != 6)
        {
          goto LABEL_49;
        }
      }

      else if (v20 == 3)
      {
        if (v19 != 3)
        {
          goto LABEL_49;
        }
      }

      else if (v19 != 4)
      {
        goto LABEL_49;
      }
    }

    else if (v19 != v20)
    {
      goto LABEL_49;
    }

    v21 = v11[6];
    v22 = *(v8 + 6);
    v23 = *(v21 + 16);
    if (v23 != *(v22 + 16))
    {
      goto LABEL_49;
    }

    if (v23 && v21 != v22)
    {
      v24 = (v21 + 40);
      v25 = (v22 + 40);
      while (1)
      {
        v26 = *(v24 - 1) == *(v25 - 1) && *v24 == *v25;
        if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        v24 += 2;
        v25 += 2;
        if (!--v23)
        {
          goto LABEL_32;
        }
      }

LABEL_49:
      sub_100009370(v8, type metadata accessor for MultimediaRecordRequestItem);
      sub_100009370(v11, type metadata accessor for MultimediaRecordRequestItem);
      goto LABEL_50;
    }

LABEL_32:
    v27 = *(v4 + 32);
    type metadata accessor for UnknownStorage();
    sub_1000076EC(&qword_10024AB30, &type metadata accessor for UnknownStorage);
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100009370(v8, type metadata accessor for MultimediaRecordRequestItem);
    sub_100009370(v11, type metadata accessor for MultimediaRecordRequestItem);
    if ((v28 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v28 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000760C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007644(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000286C(&qword_10024AB28, &qword_1001A7590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000076B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000076EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s9progressd28MultimediaRecordResponseItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Ckcode_RecordTransport();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000286C(&qword_10024AB28, &qword_1001A7590);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_10000286C(&qword_10024B000, &qword_1001A7F90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v26 = type metadata accessor for MultimediaRecordResponseItem(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  sub_100007644(a1 + v17, v16);
  sub_100007644(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_100009244(v16, &qword_10024AB28, &qword_1001A7590);
LABEL_12:
      v23 = *(v26 + 20);
      type metadata accessor for UnknownStorage();
      sub_1000076EC(&qword_10024AB30, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_100007644(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_100009244(v16, &qword_10024B000, &qword_1001A7F90);
    goto LABEL_10;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1000076EC(&qword_10024B008, &type metadata accessor for Ckcode_RecordTransport);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_100009244(v16, &qword_10024AB28, &qword_1001A7590);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s9progressd27MultimediaRecordRequestItemV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v7 <= 2)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          if (v6 != 1)
          {
            return 0;
          }
        }

        else if (v6 != 2)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }
    }

    else if (v7 > 4)
    {
      if (v7 == 5)
      {
        if (v6 != 5)
        {
          return 0;
        }
      }

      else if (v6 != 6)
      {
        return 0;
      }
    }

    else if (v7 == 3)
    {
      if (v6 != 3)
      {
        return 0;
      }
    }

    else if (v6 != 4)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (sub_100006B98(a1[6], *(a2 + 48)))
  {
    v8 = *(type metadata accessor for MultimediaRecordRequestItem(0) + 32);
    type metadata accessor for UnknownStorage();
    sub_1000076EC(&qword_10024AB30, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t _s9progressd24MultimediaRecordsRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1000071A8(a1[6], a2[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for MultimediaRecordsRequest(0) + 32);
  type metadata accessor for UnknownStorage();
  sub_1000076EC(&qword_10024AB30, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_100007D5C()
{
  result = qword_10024AB58;
  if (!qword_10024AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10024AB58);
  }

  return result;
}

unint64_t sub_100007DB4()
{
  result = qword_10024AB80;
  if (!qword_10024AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10024AB80);
  }

  return result;
}

unint64_t sub_100007E0C()
{
  result = qword_10024AB88;
  if (!qword_10024AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10024AB88);
  }

  return result;
}

unint64_t sub_100007E64()
{
  result = qword_10024AB90;
  if (!qword_10024AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10024AB90);
  }

  return result;
}

unint64_t sub_100007EBC()
{
  result = qword_10024AB98;
  if (!qword_10024AB98)
  {
    sub_100007F20(&qword_10024ABA0, &qword_1001A7680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10024AB98);
  }

  return result;
}

uint64_t sub_100007F20(uint64_t *a1, uint64_t *a2)
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

uint64_t initializeBufferWithCopyOfBuffer for ParentEntityType(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ParentEntityType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ParentEntityType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10000868C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000086A8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100008720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000087E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100008884()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100008930()
{
  sub_100008E94(319, &unk_10024ADB0, type metadata accessor for MultimediaRecordRequestItem, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100008A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100008AD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100008B74()
{
  sub_100008C18();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100008C18()
{
  if (!qword_10024AE58)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10024AE58);
    }
  }
}

uint64_t sub_100008C7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100008D3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100008DE0()
{
  sub_100008E94(319, &unk_10024AF00, type metadata accessor for MultimediaRecordResponseItem, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100008E94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100008F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000286C(&qword_10024AB28, &qword_1001A7590);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100009050(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000286C(&qword_10024AB28, &qword_1001A7590);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100009180()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100008E94(319, &unk_10024AF98, &type metadata accessor for Ckcode_RecordTransport, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100009244(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000286C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_1000092A4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100009308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100009370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int sub_100009440()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000094B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100009508@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v186 = a2;
  v172 = a1;
  v162 = a3;
  v3 = type metadata accessor for ArchiveFlags();
  v4 = *(v3 - 8);
  v178 = v3;
  v179 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v165 = v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v177 = v157 - v8;
  v9 = type metadata accessor for ArchiveCompression();
  v175 = *(v9 - 8);
  v176 = v9;
  v10 = *(v175 + 64);
  __chkstk_darwin(v9);
  v174 = v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000286C(&qword_10024B050, &qword_1001A7FD0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v164 = v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v171 = v157 - v17;
  __chkstk_darwin(v16);
  v19 = v157 - v18;
  v20 = type metadata accessor for FilePath();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v169 = v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = v157 - v25;
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v180 = v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v173 = v157 - v33;
  v34 = __chkstk_darwin(v32);
  v170 = v157 - v35;
  v36 = __chkstk_darwin(v34);
  v168 = v157 - v37;
  v38 = __chkstk_darwin(v36);
  v167 = v157 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = v157 - v41;
  __chkstk_darwin(v40);
  v44 = v157 - v43;
  v45 = [objc_allocWithZone(NSFileManager) init];
  v184 = v28;
  v46 = *(v28 + 16);
  v181 = v45;
  v182 = v28 + 16;
  v46(v44, v186, v27);
  v185 = v44;
  v186 = v27;
  v183 = v46;
  v46(v42, v44, v27);
  FilePath.init(_:)();
  v47 = v21[6];
  if (v47(v19, 1, v20) == 1)
  {
    sub_10000E678(v19);
    if (qword_10024AB00 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000076B4(v48, qword_10024DCA8);
    v49 = v180;
    v50 = v186;
    v183(v180, v185, v186);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v187 = v54;
      *v53 = 136315138;
      sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v58 = *(v184 + 8);
      v58(v49, v186);
      v59 = sub_10000D120(v55, v57, &v187);

      *(v53 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, "compress(directoryURL:) could not create a file path to the archive at %s", v53, 0xCu);
      sub_10000E6E0(v54);
      v50 = v186;
    }

    else
    {

      v58 = *(v184 + 8);
      v58(v49, v50);
    }

    sub_10000E838();
    swift_allocError();
    *v90 = 0;
    swift_willThrow();

    return (v58)(v185, v50);
  }

  v163 = v21;
  v60 = v21[4];
  v180 = v20;
  v60(v26, v19, v20);
  type metadata accessor for ArchiveByteStream();
  v161 = v26;
  v61 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  if (v61)
  {
    v62 = v61;
    v158 = v47;
    v157[0] = v60;
    v157[1] = v21 + 4;
    v63 = v174;
    static ArchiveCompression.lzfse.getter();
    v187 = &_swiftEmptyArrayStorage;
    v64 = sub_10000E72C(&qword_10024B060, &type metadata accessor for ArchiveFlags);
    v65 = sub_10000286C(&qword_10024B068, &qword_1001A7FD8);
    v66 = sub_10000E774();
    v67 = v177;
    v159 = v65;
    v160 = v66;
    v68 = v178;
    v173 = v64;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v69 = v67;
    v70 = static ArchiveByteStream.compressionStream(using:writingTo:blockSize:flags:threadCount:)();
    v72 = v179 + 8;
    v71 = *(v179 + 8);
    v71(v69, v68);
    (*(v175 + 8))(v63, v176);
    v176 = v62;
    if (!v70)
    {
      if (qword_10024AB00 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      sub_1000076B4(v104, qword_10024DCA8);
      v105 = v170;
      v80 = v186;
      v183(v170, v185, v186);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v187 = v109;
        *v108 = 136315138;
        sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v112 = v111;
        v88 = *(v184 + 8);
        v88(v105, v186);
        v113 = sub_10000D120(v110, v112, &v187);
        v80 = v186;

        *(v108 + 4) = v113;
        _os_log_impl(&_mh_execute_header, v106, v107, "compress(directoryURL:) could not create compression stream for %s", v108, 0xCu);
        sub_10000E6E0(v109);
      }

      else
      {

        v88 = *(v184 + 8);
        v88(v105, v80);
      }

      sub_10000E838();
      swift_allocError();
      *v144 = 0;
      swift_willThrow();
      dispatch thunk of ArchiveByteStream.close()();
      v145 = v161;

      (v163[1])(v145, v180);
      return (v88)(v185, v80);
    }

    v179 = type metadata accessor for ArchiveStream();
    v187 = &_swiftEmptyArrayStorage;
    v73 = v69;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v175 = v70;
    v74 = static ArchiveStream.encodeStream(writingTo:selectUsing:flags:threadCount:)();
    v71(v73, v68);
    if (!v74)
    {
      if (qword_10024AB00 != -1)
      {
        swift_once();
      }

      v116 = type metadata accessor for Logger();
      sub_1000076B4(v116, qword_10024DCA8);
      v117 = v168;
      v80 = v186;
      v183(v168, v185, v186);
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v187 = v121;
        *v120 = 136315138;
        sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
        v122 = dispatch thunk of CustomStringConvertible.description.getter();
        v124 = v123;
        v88 = *(v184 + 8);
        v88(v117, v186);
        v125 = sub_10000D120(v122, v124, &v187);
        v80 = v186;

        *(v120 + 4) = v125;
        _os_log_impl(&_mh_execute_header, v118, v119, "compress(directoryURL:) could not create encoding stream for %s", v120, 0xCu);
        sub_10000E6E0(v121);
      }

      else
      {

        v88 = *(v184 + 8);
        v88(v117, v80);
      }

      sub_10000E838();
      swift_allocError();
      *v146 = 0;
      swift_willThrow();
      dispatch thunk of ArchiveByteStream.close()();
      goto LABEL_43;
    }

    v177 = v71;
    v75 = v172;
    v183(v42, v172, v186);
    v76 = v171;
    FilePath.init(_:)();
    v77 = v180;
    if (v158(v76, 1, v180) == 1)
    {
      sub_10000E678(v76);
      if (qword_10024AB00 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      sub_1000076B4(v78, qword_10024DCA8);
      v79 = v167;
      v80 = v186;
      v183(v167, v75, v186);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v187 = v84;
        *v83 = 136315138;
        sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
        v85 = dispatch thunk of CustomStringConvertible.description.getter();
        v87 = v86;
        v88 = *(v184 + 8);
        v88(v79, v186);
        v89 = sub_10000D120(v85, v87, &v187);
        v80 = v186;

        *(v83 + 4) = v89;
        _os_log_impl(&_mh_execute_header, v81, v82, "compress(directoryURL:) could not create a file path to the following directory %s", v83, 0xCu);
        sub_10000E6E0(v84);
      }

      else
      {

        v88 = *(v184 + 8);
        v88(v79, v80);
      }

      sub_10000E838();
      swift_allocError();
      *v147 = 0;
      swift_willThrow();
      dispatch thunk of ArchiveStream.close()();

      dispatch thunk of ArchiveByteStream.close()();
LABEL_43:

      dispatch thunk of ArchiveByteStream.close()();

      (v163[1])(v161, v180);
      return (v88)(v185, v80);
    }

    v126 = v169;
    (v157[0])(v169, v76, v77);
    v127 = type metadata accessor for ArchiveHeader.FieldKeySet();
    v128 = *(v127 + 48);
    v129 = *(v127 + 52);
    swift_allocObject();
    if (ArchiveHeader.FieldKeySet.init(_:)())
    {
      v179 = v72;
      v130 = v163;
      v131 = v126;
      v132 = v164;
      (v163[7])(v164, 1, 1, v77);
      v187 = &_swiftEmptyArrayStorage;
      v133 = v165;
      v134 = v178;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v135 = v166;
      ArchiveStream.writeDirectoryContents(archiveFrom:path:keySet:selectUsing:flags:threadCount:)();
      v136 = v186;
      if (v135)
      {
        v137 = v186;
        (v177)(v133, v134);
        sub_10000E678(v132);
        if (qword_10024AB00 != -1)
        {
          swift_once();
        }

        v138 = type metadata accessor for Logger();
        sub_1000076B4(v138, qword_10024DCA8);
        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.debug.getter();
        v141 = v137;
        if (os_log_type_enabled(v139, v140))
        {
          v142 = swift_slowAlloc();
          *v142 = 0;
          _os_log_impl(&_mh_execute_header, v139, v140, "compress(directoryURL:) could not write directory to the encoding stream", v142, 2u);
        }

        swift_willThrow();

        v143 = v163[1];
        v143(v169, v180);
        dispatch thunk of ArchiveStream.close()();

        dispatch thunk of ArchiveByteStream.close()();

        dispatch thunk of ArchiveByteStream.close()();

        v143(v161, v180);
      }

      else
      {

        (v177)(v133, v134);
        sub_10000E678(v132);
        v155 = v130[1];
        v155(v131, v77);
        v183(v162, v185, v136);
        dispatch thunk of ArchiveStream.close()();
        v141 = v136;

        dispatch thunk of ArchiveByteStream.close()();

        dispatch thunk of ArchiveByteStream.close()();
        v156 = v161;

        v155(v156, v180);
      }

      return (*(v184 + 8))(v185, v141);
    }

    else
    {
      v148 = v186;
      if (qword_10024AB00 != -1)
      {
        swift_once();
      }

      v149 = type metadata accessor for Logger();
      sub_1000076B4(v149, qword_10024DCA8);
      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        *v152 = 0;
        _os_log_impl(&_mh_execute_header, v150, v151, "compress(directoryURL:) could not create a key set", v152, 2u);
      }

      sub_10000E838();
      swift_allocError();
      *v153 = 0;
      swift_willThrow();
      v154 = v163[1];
      v154(v126, v180);
      dispatch thunk of ArchiveStream.close()();

      dispatch thunk of ArchiveByteStream.close()();

      dispatch thunk of ArchiveByteStream.close()();

      v154(v161, v180);
      return (*(v184 + 8))(v185, v148);
    }
  }

  else
  {
    if (qword_10024AB00 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_1000076B4(v92, qword_10024DCA8);
    v93 = v173;
    v94 = v186;
    v183(v173, v185, v186);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v187 = v98;
      *v97 = 136315138;
      sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
      v99 = dispatch thunk of CustomStringConvertible.description.getter();
      v101 = v100;
      v102 = *(v184 + 8);
      v102(v93, v186);
      v103 = sub_10000D120(v99, v101, &v187);
      v94 = v186;

      *(v97 + 4) = v103;
      _os_log_impl(&_mh_execute_header, v95, v96, "compress(directoryURL:) could not write to file located at %s", v97, 0xCu);
      sub_10000E6E0(v98);
    }

    else
    {

      v102 = *(v184 + 8);
      v102(v93, v94);
    }

    v114 = v163;
    sub_10000E838();
    swift_allocError();
    *v115 = 0;
    swift_willThrow();

    (v114[1])(v161, v180);
    return (v102)(v185, v94);
  }
}

uint64_t sub_10000AEAC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v235 = a2;
  v3 = type metadata accessor for UUID();
  v249 = *(v3 - 8);
  v250 = v3;
  v4 = v249[8];
  __chkstk_darwin(v3);
  v248 = v221 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for ArchiveFlags();
  isa = v255[-1].isa;
  v6 = *(isa + 8);
  v7 = __chkstk_darwin(v255);
  v240 = v221 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v254 = v221 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v238 = v221 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v237 = v221 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = v221 - v18;
  v20 = __chkstk_darwin(v17);
  v251 = v221 - v21;
  v22 = __chkstk_darwin(v20);
  v247 = v221 - v23;
  v24 = __chkstk_darwin(v22);
  v246 = v221 - v25;
  v26 = __chkstk_darwin(v24);
  v242 = v221 - v27;
  v28 = __chkstk_darwin(v26);
  v239 = v221 - v29;
  v30 = __chkstk_darwin(v28);
  v236 = v221 - v31;
  v32 = __chkstk_darwin(v30);
  v252 = v221 - v33;
  __chkstk_darwin(v32);
  v35 = v221 - v34;
  v36 = sub_10000286C(&qword_10024B050, &qword_1001A7FD0);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v244 = v221 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = v221 - v40;
  v42 = type metadata accessor for FilePath();
  v43 = *(v42 - 8);
  v44 = v43[8];
  v45 = __chkstk_darwin(v42);
  v245 = v221 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v48 = v221 - v47;
  v256 = a1;
  v257 = v11;
  v50 = *(v11 + 16);
  v49 = (v11 + 16);
  v51 = a1;
  v52 = v50;
  v258 = v10;
  v50(v35, v51, v10);
  FilePath.init(_:)();
  v243 = v43[6];
  if (v243(v41, 1, v42) == 1)
  {
    sub_10000E678(v41);
    if (qword_10024AB00 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000076B4(v53, qword_10024DCA8);
    v54 = v258;
    v52(v19, v256, v258);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v259 = v58;
      *v57 = 136315138;
      sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v257 + 8))(v19, v54);
      v62 = sub_10000D120(v59, v61, &v259);

      *(v57 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v55, v56, "uncompress(archiveAt:) could not create a file path to the archive at %s", v57, 0xCu);
      sub_10000E6E0(v58);
    }

    else
    {

      (*(v257 + 8))(v19, v54);
    }

    sub_10000E838();
    swift_allocError();
    *v108 = 1;
    return swift_willThrow();
  }

  else
  {
    v234 = v43;
    v63 = v43[4];
    v229 = v43 + 4;
    v228 = v63;
    v63(v48, v41, v42);
    type metadata accessor for ArchiveByteStream();
    v233 = v48;
    v64 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
    v65 = v42;
    if (v64)
    {
      v66 = v64;
      v227 = v35;
      v251 = v49;
      v232 = v42;
      v231 = v52;
      v259 = &_swiftEmptyArrayStorage;
      v67 = sub_10000E72C(&qword_10024B060, &type metadata accessor for ArchiveFlags);
      v68 = sub_10000286C(&qword_10024B068, &qword_1001A7FD8);
      v69 = sub_10000E774();
      v71 = v254;
      v70 = v255;
      v230 = v67;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v72 = v71;
      v73 = static ArchiveByteStream.decompressionStream(readingFrom:flags:threadCount:)();
      v74 = isa + 8;
      v75 = *(isa + 1);
      v75(v72, v70);
      if (v73)
      {
        v247 = v66;
        v76 = type metadata accessor for ArchiveStream();
        v259 = &_swiftEmptyArrayStorage;
        v225 = v68;
        v224 = v69;
        v77 = v72;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v223 = v76;
        v78 = static ArchiveStream.decodeStream(readingFrom:selectUsing:flags:threadCount:)();
        v75(v77, v70);
        v226 = v78;
        if (v78)
        {
          v221[1] = v74;
          v222 = v75;
          v246 = v73;
          v79 = [objc_allocWithZone(NSFileManager) init];
          v80 = [v79 temporaryDirectory];
          v81 = v227;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v82 = v248;
          UUID.init()();
          UUID.uuidString.getter();
          (v249[1])(v82, v250);
          v83 = v252;
          URL.appendingPathComponent(_:isDirectory:)();

          v84 = v257 + 8;
          v85 = *(v257 + 8);
          v85(v81, v258);
          URL._bridgeToObjectiveC()(v86);
          v88 = v87;
          v259 = 0;
          v89 = [v79 createDirectoryAtURL:v87 withIntermediateDirectories:1 attributes:0 error:&v259];

          v90 = v259;
          if (v89)
          {
            v249 = v79;
            v250 = v85;
            v257 = v84;
            v231(v81, v83, v258);
            v91 = v90;
            v92 = v244;
            FilePath.init(_:)();
            v93 = v232;
            if (v243(v92, 1, v232) == 1)
            {
              sub_10000E678(v92);
              if (qword_10024AB00 != -1)
              {
                swift_once();
              }

              v94 = type metadata accessor for Logger();
              sub_1000076B4(v94, qword_10024DCA8);
              v95 = v242;
              v96 = v258;
              v231(v242, v83, v258);
              v97 = Logger.logObject.getter();
              v98 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v97, v98))
              {
                v99 = swift_slowAlloc();
                v100 = swift_slowAlloc();
                v259 = v100;
                *v99 = 136315138;
                sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
                v101 = dispatch thunk of CustomStringConvertible.description.getter();
                v103 = v102;
                v104 = v95;
                v105 = v250;
                v250(v104, v96);
                v106 = sub_10000D120(v101, v103, &v259);
                v107 = v105;

                *(v99 + 4) = v106;
                _os_log_impl(&_mh_execute_header, v97, v98, "uncompress(archiveAt:) could not create a file path to the following destination %s", v99, 0xCu);
                sub_10000E6E0(v100);
              }

              else
              {

                v107 = v250;
                v250(v95, v96);
              }

              v188 = v234;
              v189 = v249;
              sub_10000E838();
              swift_allocError();
              *v190 = 1;
              swift_willThrow();

              v107(v252, v96);
              dispatch thunk of ArchiveStream.close()();

              dispatch thunk of ArchiveByteStream.close()();

              dispatch thunk of ArchiveByteStream.close()();
              (v188[1])(v233, v232);
            }

            else
            {
              v228(v245, v92, v93);
              sub_10000286C(&qword_10024B088, &qword_1001A7FE8);
              v157 = *(isa + 9);
              v158 = (*(isa + 80) + 32) & ~*(isa + 80);
              v159 = swift_allocObject();
              v159[1] = xmmword_1001A74D0;
              static ArchiveFlags.ignoreOperationNotPermitted.getter();
              v259 = v159;
              v161 = v254;
              v160 = v255;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v162 = static ArchiveStream.extractStream(extractingTo:selectUsing:flags:threadCount:)();
              v222(v161, v160);
              if (v162)
              {
                v259 = &_swiftEmptyArrayStorage;
                v163 = v240;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                v164 = v241;
                static ArchiveStream.process(readingFrom:writingTo:selectUsing:flags:threadCount:)();
                v165 = v258;
                if (v164)
                {
                  v222(v163, v160);
                  v166 = v252;
                  if (qword_10024AB00 != -1)
                  {
                    swift_once();
                  }

                  v167 = type metadata accessor for Logger();
                  sub_1000076B4(v167, qword_10024DCA8);
                  v168 = v237;
                  v169 = v231;
                  v231(v237, v256, v165);
                  v170 = v238;
                  v169(v238, v166, v165);
                  v171 = Logger.logObject.getter();
                  v172 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v171, v172))
                  {
                    v173 = swift_slowAlloc();
                    v255 = v171;
                    v174 = v168;
                    v175 = v173;
                    v256 = swift_slowAlloc();
                    v259 = v256;
                    *v175 = 136315394;
                    sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
                    LODWORD(v254) = v172;
                    v176 = dispatch thunk of CustomStringConvertible.description.getter();
                    v178 = v177;
                    v179 = v174;
                    v180 = v250;
                    v250(v179, v258);
                    v181 = sub_10000D120(v176, v178, &v259);
                    v166 = v252;

                    *(v175 + 4) = v181;
                    *(v175 + 12) = 2080;
                    v182 = dispatch thunk of CustomStringConvertible.description.getter();
                    v183 = v170;
                    v185 = v184;
                    v180(v183, v258);
                    v186 = sub_10000D120(v182, v185, &v259);
                    v165 = v258;

                    *(v175 + 14) = v186;
                    v187 = v255;
                    _os_log_impl(&_mh_execute_header, v255, v254, "uncompress(archiveAt:) could not process the archive located at %s extracting to %s", v175, 0x16u);
                    swift_arrayDestroy();
                  }

                  else
                  {

                    v214 = v250;
                    v250(v170, v165);
                    v214(v168, v165);
                  }

                  v215 = v234;
                  swift_willThrow();
                  dispatch thunk of ArchiveStream.close()();
                  v216 = v232;

                  v213 = v215[1];
                  v213(v245, v216);
                  v250(v166, v165);
                  dispatch thunk of ArchiveStream.close()();
                }

                else
                {
                  v222(v163, v160);
                  v211 = v252;
                  v231(v235, v252, v165);
                  dispatch thunk of ArchiveStream.close()();
                  v212 = v234;

                  v213 = v212[1];
                  v213(v245, v232);
                  v250(v211, v165);
                  dispatch thunk of ArchiveStream.close()();
                }

                dispatch thunk of ArchiveByteStream.close()();
              }

              else
              {
                v191 = v258;
                if (qword_10024AB00 != -1)
                {
                  swift_once();
                }

                v192 = type metadata accessor for Logger();
                sub_1000076B4(v192, qword_10024DCA8);
                v193 = v236;
                v194 = v231;
                v231(v236, v256, v191);
                v195 = v239;
                v194(v239, v252, v191);
                v196 = Logger.logObject.getter();
                v197 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v196, v197))
                {
                  v198 = swift_slowAlloc();
                  v256 = swift_slowAlloc();
                  v259 = v256;
                  *v198 = 136315394;
                  sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
                  v199 = dispatch thunk of CustomStringConvertible.description.getter();
                  v201 = v200;
                  v202 = v193;
                  v203 = v250;
                  v250(v202, v258);
                  v204 = sub_10000D120(v199, v201, &v259);
                  v191 = v258;

                  *(v198 + 4) = v204;
                  *(v198 + 12) = 2080;
                  v205 = v239;
                  v206 = dispatch thunk of CustomStringConvertible.description.getter();
                  v208 = v207;
                  v203(v205, v191);
                  v209 = sub_10000D120(v206, v208, &v259);
                  v210 = v203;

                  *(v198 + 14) = v209;
                  _os_log_impl(&_mh_execute_header, v196, v197, "uncompress(archiveAt:) could not extract the archive located at %s to %s", v198, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {

                  v210 = v250;
                  v250(v195, v191);
                  v210(v193, v191);
                }

                v217 = v234;
                v218 = v232;
                v219 = v249;
                sub_10000E838();
                swift_allocError();
                *v220 = 1;
                swift_willThrow();

                v213 = v217[1];
                v213(v245, v218);
                v210(v252, v191);
                dispatch thunk of ArchiveStream.close()();

                dispatch thunk of ArchiveByteStream.close()();
              }

              dispatch thunk of ArchiveByteStream.close()();
              v213(v233, v232);
            }
          }

          else
          {
            v150 = v259;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            v85(v83, v258);
            dispatch thunk of ArchiveStream.close()();
            v151 = v234;
            v152 = v232;

            dispatch thunk of ArchiveByteStream.close()();

            dispatch thunk of ArchiveByteStream.close()();
            (v151[1])(v233, v152);
          }
        }

        else
        {
          if (qword_10024AB00 != -1)
          {
            swift_once();
          }

          v138 = type metadata accessor for Logger();
          sub_1000076B4(v138, qword_10024DCA8);
          v139 = v246;
          v140 = v258;
          v231(v246, v256, v258);
          v141 = Logger.logObject.getter();
          v142 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v259 = v144;
            *v143 = 136315138;
            sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
            v145 = dispatch thunk of CustomStringConvertible.description.getter();
            v146 = v140;
            v148 = v147;
            (*(v257 + 8))(v139, v146);
            v149 = sub_10000D120(v145, v148, &v259);

            *(v143 + 4) = v149;
            _os_log_impl(&_mh_execute_header, v141, v142, "uncompress(archiveAt:) could not decode the archive stream for the archive at %s", v143, 0xCu);
            sub_10000E6E0(v144);
          }

          else
          {

            (*(v257 + 8))(v139, v140);
          }

          v155 = v234;
          sub_10000E838();
          swift_allocError();
          *v156 = 1;
          swift_willThrow();
          dispatch thunk of ArchiveByteStream.close()();

          dispatch thunk of ArchiveByteStream.close()();
          (v155[1])(v233, v232);
        }
      }

      else
      {
        if (qword_10024AB00 != -1)
        {
          swift_once();
        }

        v122 = type metadata accessor for Logger();
        sub_1000076B4(v122, qword_10024DCA8);
        v123 = v247;
        v124 = v258;
        v231(v247, v256, v258);
        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.debug.getter();
        v127 = os_log_type_enabled(v125, v126);
        v128 = v232;
        if (v127)
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v259 = v130;
          *v129 = 136315138;
          sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
          v131 = dispatch thunk of CustomStringConvertible.description.getter();
          v132 = v124;
          v134 = v133;
          (*(v257 + 8))(v123, v132);
          v135 = sub_10000D120(v131, v134, &v259);

          *(v129 + 4) = v135;
          _os_log_impl(&_mh_execute_header, v125, v126, "uncompress(archiveAt:) could not create a decompression stream for the archive at %s", v129, 0xCu);
          sub_10000E6E0(v130);
        }

        else
        {

          (*(v257 + 8))(v123, v124);
        }

        v153 = v234;
        sub_10000E838();
        swift_allocError();
        *v154 = 1;
        swift_willThrow();
        dispatch thunk of ArchiveByteStream.close()();
        (v153[1])(v233, v128);
      }
    }

    else
    {
      if (qword_10024AB00 != -1)
      {
        swift_once();
      }

      v110 = type metadata accessor for Logger();
      sub_1000076B4(v110, qword_10024DCA8);
      v111 = v251;
      v112 = v258;
      v52(v251, v256, v258);
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v259 = v116;
        *v115 = 136315138;
        sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
        v117 = dispatch thunk of CustomStringConvertible.description.getter();
        v118 = v112;
        v120 = v119;
        (*(v257 + 8))(v111, v118);
        v121 = sub_10000D120(v117, v120, &v259);

        *(v115 + 4) = v121;
        _os_log_impl(&_mh_execute_header, v113, v114, "uncompress(archiveAt:) could not create a read file stream for the archive at %s", v115, 0xCu);
        sub_10000E6E0(v116);
      }

      else
      {

        (*(v257 + 8))(v111, v112);
      }

      v136 = v233;
      sub_10000E838();
      swift_allocError();
      *v137 = 1;
      swift_willThrow();
      return (v234[1])(v136, v65);
    }
  }
}

id _s9progressd18ClassKitServiceAPIO14HelloOperationCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000D09C()
{
  v0 = type metadata accessor for Logger();
  sub_1000092A4(v0, qword_10024DCA8);
  sub_1000076B4(v0, qword_10024DCA8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000D120(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000D1EC(v11, 0, 0, 1, a1, a2);
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
    sub_10000E7D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000E6E0(v11);
  return v7;
}

unint64_t sub_10000D1EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000D2F8(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_10000D2F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000D344(a1, a2);
  sub_10000D474(&off_100201AC8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000D344(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000D560(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000D560(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_10000D474(uint64_t result)
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

  result = sub_10000D5D4(result, v12, 1, v3);
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

void *sub_10000D560(uint64_t a1, uint64_t a2)
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

  sub_10000286C(&qword_10024B078, &qword_1001A7FE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000D5D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000286C(&qword_10024B078, &qword_1001A7FE0);
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

uint64_t sub_10000D6C8(uint64_t a1)
{
  v2 = type metadata accessor for ArchiveFlags();
  v103 = *(v2 - 8);
  v104 = v2;
  v3 = *(v103 + 64);
  __chkstk_darwin(v2);
  v5 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v100 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = v96 - v12;
  v14 = __chkstk_darwin(v11);
  v102 = v96 - v15;
  v16 = __chkstk_darwin(v14);
  v101 = (v96 - v17);
  v18 = __chkstk_darwin(v16);
  v99 = v96 - v19;
  __chkstk_darwin(v18);
  v21 = v96 - v20;
  v22 = sub_10000286C(&qword_10024B050, &qword_1001A7FD0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v96 - v24;
  v26 = type metadata accessor for FilePath();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v6;
  v107 = v7;
  v31 = *(v7 + 16);
  v105 = a1;
  v32 = a1;
  v33 = v31;
  (v31)(v21, v32, v6);
  FilePath.init(_:)();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_10000E678(v25);
    if (qword_10024AB00 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076B4(v34, qword_10024DCA8);
    v35 = v106;
    (v33)(v13, v105, v106);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v108 = v39;
      *v38 = 136315138;
      sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v107 + 8))(v13, v35);
      v43 = sub_10000D120(v40, v42, &v108);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "isAppleArchive(fileURL:) could not create a file path for %s", v38, 0xCu);
      sub_10000E6E0(v39);
    }

    else
    {

      (*(v107 + 8))(v13, v35);
    }
  }

  else
  {
    (*(v27 + 32))(v30, v25, v26);
    type metadata accessor for ArchiveByteStream();
    v98 = v30;
    v44 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
    if (v44)
    {
      v45 = v44;
      v102 = v26;
      v97 = v27;
      v108 = &_swiftEmptyArrayStorage;
      v46 = sub_10000E72C(&qword_10024B060, &type metadata accessor for ArchiveFlags);
      sub_10000286C(&qword_10024B068, &qword_1001A7FD8);
      sub_10000E774();
      v47 = v104;
      v96[2] = v46;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v48 = v47;
      v49 = static ArchiveByteStream.decompressionStream(readingFrom:flags:threadCount:)();
      v50 = *(v103 + 8);
      v50(v5, v48);
      if (v49)
      {
        v101 = v33;
        v96[1] = v45;
        type metadata accessor for ArchiveStream();
        v108 = &_swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v103 = v49;
        v51 = static ArchiveStream.decodeStream(readingFrom:selectUsing:flags:threadCount:)();
        v50(v5, v48);
        if (v51)
        {
          dispatch thunk of ArchiveStream.readHeader()();
          v52 = v102;

          dispatch thunk of ArchiveStream.close()();
          v92 = v98;

          dispatch thunk of ArchiveByteStream.close()();

          dispatch thunk of ArchiveByteStream.close()();
          (*(v97 + 8))(v92, v52);

          return 1;
        }

        v79 = v101;
        if (qword_10024AB00 != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        sub_1000076B4(v80, qword_10024DCA8);
        v81 = v99;
        v82 = v106;
        v79(v99, v105, v106);
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v108 = v86;
          *v85 = 136315138;
          sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
          v87 = dispatch thunk of CustomStringConvertible.description.getter();
          v89 = v88;
          (*(v107 + 8))(v81, v82);
          v90 = sub_10000D120(v87, v89, &v108);

          *(v85 + 4) = v90;
          _os_log_impl(&_mh_execute_header, v83, v84, "isAppleArchive(fileURL:) could not decode the archive stream for %s", v85, 0xCu);
          sub_10000E6E0(v86);
        }

        else
        {

          (*(v107 + 8))(v81, v82);
        }

        v93 = v102;
        v94 = v98;
        dispatch thunk of ArchiveByteStream.close()();

        dispatch thunk of ArchiveByteStream.close()();
        (*(v97 + 8))(v94, v93);
      }

      else
      {
        if (qword_10024AB00 != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        sub_1000076B4(v66, qword_10024DCA8);
        v67 = v101;
        v68 = v106;
        (v33)(v101, v105, v106);
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.debug.getter();
        v71 = os_log_type_enabled(v69, v70);
        v72 = v102;
        if (v71)
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v108 = v74;
          *v73 = 136315138;
          sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
          v75 = dispatch thunk of CustomStringConvertible.description.getter();
          v77 = v76;
          (*(v107 + 8))(v67, v68);
          v78 = sub_10000D120(v75, v77, &v108);

          *(v73 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v69, v70, "isAppleArchive(fileURL:) could not create a decompression stream for %s", v73, 0xCu);
          sub_10000E6E0(v74);
        }

        else
        {

          (*(v107 + 8))(v67, v68);
        }

        v91 = v98;
        dispatch thunk of ArchiveByteStream.close()();
        (*(v97 + 8))(v91, v72);
      }
    }

    else
    {
      if (qword_10024AB00 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_1000076B4(v53, qword_10024DCA8);
      v54 = v102;
      v55 = v106;
      (v33)(v102, v105, v106);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = v27;
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v108 = v60;
        *v59 = 136315138;
        sub_10000E72C(&qword_10024B058, &type metadata accessor for URL);
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v26;
        v64 = v63;
        (*(v107 + 8))(v54, v55);
        v65 = sub_10000D120(v61, v64, &v108);

        *(v59 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v56, v57, "isAppleArchive(fileURL:) could not create a read file stream for %s", v59, 0xCu);
        sub_10000E6E0(v60);

        (*(v58 + 8))(v98, v62);
      }

      else
      {

        (*(v107 + 8))(v54, v55);
        (*(v27 + 8))(v98, v26);
      }
    }
  }

  return 0;
}

uint64_t sub_10000E678(uint64_t a1)
{
  v2 = sub_10000286C(&qword_10024B050, &qword_1001A7FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E6E0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000E72C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000E774()
{
  result = qword_10024B070;
  if (!qword_10024B070)
  {
    sub_100007F20(&qword_10024B068, &qword_1001A7FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10024B070);
  }

  return result;
}

uint64_t sub_10000E7D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000E838()
{
  result = qword_10024B080;
  if (!qword_10024B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10024B080);
  }

  return result;
}

unint64_t sub_10000E8A0()
{
  result = qword_10024B090;
  if (!qword_10024B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10024B090);
  }

  return result;
}

id MultimediaRecordRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MultimediaRecordRequest.init()()
{
  v1 = &v0[OBJC_IVAR____TtC9progressd23MultimediaRecordRequest_zoneName];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR____TtC9progressd23MultimediaRecordRequest_zoneOwnerName];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  v3 = &v0[OBJC_IVAR____TtC9progressd23MultimediaRecordRequest_orgID];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC9progressd23MultimediaRecordRequest_requestItems] = &_swiftEmptyArrayStorage;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MultimediaRecordRequest();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10000EE94(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

uint64_t sub_10000EF18(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_10000EF78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_10000EFF0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t MultimediaRecordRequestItems.parentEntityType.getter()
{
  v1 = OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_parentEntityType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MultimediaRecordRequestItems.parentEntityType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_parentEntityType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10000F2C4(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_10000F380(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id MultimediaRecordRequestItems.init()()
{
  v1 = &v0[OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_recordName];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_parentObjectID];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_parentEntityType] = 0;
  *&v0[OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_assetFieldNames] = &_swiftEmptyArrayStorage;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MultimediaRecordRequestItems();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t ClassKitServiceOperations.fetchRecordsforDownloading(isDraft:request:progressBlock:recordResultBlock:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a5;
  v30 = a7;
  v13 = sub_10000286C(&qword_10024B0D8, &qword_1001A80B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v29 - v15;
  v17 = type metadata accessor for MultimediaRecordsRequest(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000106EC(a2, v21);
  sub_100011528(v21, v16, type metadata accessor for MultimediaRecordsRequest);
  (*(v18 + 56))(v16, 0, 1, v17);
  v22 = objc_allocWithZone(sub_10000286C(&qword_10024B0E0, &qword_1001A80B8));
  v23 = CKCodeOperation.init(functionName:request:)();
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;

  dispatch thunk of CKCodeOperation.perRecordProgressBlock.setter();
  v25 = swift_allocObject();
  *(v25 + 16) = v29;
  *(v25 + 24) = a6;

  dispatch thunk of CKCodeOperation.perRecordResultBlock.setter();
  v26 = swift_allocObject();
  *(v26 + 16) = v30;
  *(v26 + 24) = a8;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  if (qword_10024AB08 != -1)
  {
    swift_once();
  }

  v27 = *(qword_10024DCC0 + 56);
  CKCodeService.add<A, B>(_:)();

  return sub_1000115F8(v21, type metadata accessor for MultimediaRecordsRequest);
}

void sub_10000FA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_10000FAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100011390();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t ClassKitServiceOperations.fetchRecordsforStreaming(isDraft:request:progressBlock:recordResultBlock:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a5;
  v30 = a7;
  v13 = sub_10000286C(&qword_10024B0D8, &qword_1001A80B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v29 - v15;
  v17 = type metadata accessor for MultimediaRecordsRequest(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000106EC(a2, v21);
  sub_100011528(v21, v16, type metadata accessor for MultimediaRecordsRequest);
  (*(v18 + 56))(v16, 0, 1, v17);
  v22 = objc_allocWithZone(sub_10000286C(&qword_10024B0E0, &qword_1001A80B8));
  v23 = CKCodeOperation.init(functionName:request:)();
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;

  dispatch thunk of CKCodeOperation.perRecordProgressBlock.setter();
  v25 = swift_allocObject();
  *(v25 + 16) = v29;
  *(v25 + 24) = a6;

  dispatch thunk of CKCodeOperation.perRecordResultBlock.setter();
  v26 = swift_allocObject();
  *(v26 + 16) = v30;
  *(v26 + 24) = a8;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  if (qword_10024AB08 != -1)
  {
    swift_once();
  }

  v27 = *(qword_10024DCC0 + 56);
  CKCodeService.add<A, B>(_:)();

  return sub_1000115F8(v21, type metadata accessor for MultimediaRecordsRequest);
}

uint64_t sub_10000FE58(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v38 = a1;
  v39 = a3;
  v34 = a2;
  v3 = sub_10000286C(&qword_10024AB28, &qword_1001A7590);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for Ckcode_RecordTransport();
  v35 = *(v7 - 8);
  v8 = *(v35 + 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MultimediaRecordResponseItem(0);
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MultimediaRecordsResponse(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = (&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10000286C(&qword_10024B240, &qword_1001A8178);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v33 - v21);
  sub_100011458(v38, &v33 - v21, &qword_10024B240, &qword_1001A8178);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    swift_errorRetain();
    v34(&_swiftEmptyArrayStorage, v23);
  }

  else
  {
    sub_100011590(v22, v18, type metadata accessor for MultimediaRecordsResponse);
    v33 = v18;
    v25 = *v18;
    v40 = &_swiftEmptyArrayStorage;
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = sub_100011390();
      v37 = *(v11 + 24);
      v38 = v27;
      v28 = v25 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v36 = *(v36 + 72);
      v29 = (v35 + 48);
      v30 = (v35 + 32);
      v35 = &_swiftEmptyArrayStorage;
      do
      {
        sub_100011528(v28, v14, type metadata accessor for MultimediaRecordResponseItem);
        sub_100011458(&v14[v37], v6, &qword_10024AB28, &qword_1001A7590);
        v31 = *v29;
        if ((*v29)(v6, 1, v7) == 1)
        {
          Ckcode_RecordTransport.init()();
          if (v31(v6, 1, v7) != 1)
          {
            sub_1000114C0(v6);
          }
        }

        else
        {
          (*v30)(v10, v6, v7);
        }

        v32 = CKRecord.init(_:)();
        sub_1000115F8(v14, type metadata accessor for MultimediaRecordResponseItem);
        if (v32)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v35 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v35 = v40;
        }

        v28 += v36;
        --v26;
      }

      while (v26);
    }

    else
    {
      v35 = &_swiftEmptyArrayStorage;
    }

    v34(v35, 0);

    return sub_1000115F8(v33, type metadata accessor for MultimediaRecordsResponse);
  }
}

uint64_t sub_100010444(uint64_t a1, void (*a2)(void, void, uint64_t))
{
  v4 = type metadata accessor for HelloResponse(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000286C(&qword_10024B238, &unk_1001A8168);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v14 - v10);
  sub_100011458(a1, &v14 - v10, &qword_10024B238, &unk_1001A8168);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    swift_errorRetain();
    a2(0, 0, v12);
  }

  else
  {
    sub_100011590(v11, v7, type metadata accessor for HelloResponse);
    a2(*v7, v7[1], 0);
    return sub_1000115F8(v7, type metadata accessor for HelloResponse);
  }
}

void sub_10001065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_1000106EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = type metadata accessor for MultimediaRecordRequestItem(0);
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v45);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v11 = a2 + *(type metadata accessor for MultimediaRecordsRequest(0) + 32);
  UnknownStorage.init()();
  v12 = (a1 + OBJC_IVAR____TtC9progressd23MultimediaRecordRequest_zoneName);
  swift_beginAccess();
  v13 = v12[1];
  *a2 = *v12;
  a2[1] = v13;
  v14 = (a1 + OBJC_IVAR____TtC9progressd23MultimediaRecordRequest_zoneOwnerName);
  swift_beginAccess();
  v15 = v14[1];
  a2[2] = *v14;
  a2[3] = v15;
  v16 = (a1 + OBJC_IVAR____TtC9progressd23MultimediaRecordRequest_orgID);
  swift_beginAccess();
  v17 = v16[1];
  a2[4] = *v16;
  a2[5] = v17;
  v42 = a2;
  v18 = OBJC_IVAR____TtC9progressd23MultimediaRecordRequest_requestItems;
  result = swift_beginAccess();
  v20 = *(a1 + v18);
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_17:

    v24 = &_swiftEmptyArrayStorage;
LABEL_18:
    v42[6] = v24;
    return result;
  }

  if (v20 < 0)
  {
    v40 = *(a1 + v18);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v21 = result;
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v21 >= 1)
  {
    v43 = v20 & 0xC000000000000001;

    v22 = v20;
    v23 = 0;
    v24 = &_swiftEmptyArrayStorage;
    v44 = v21;
    v25 = v20;
    do
    {
      if (v43)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v22 + 8 * v23 + 32);
      }

      v27 = v26;
      v28 = &v10[*(v45 + 32)];
      UnknownStorage.init()();
      v29 = &v27[OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_recordName];
      swift_beginAccess();
      v30 = *v29;
      v31 = *(v29 + 1);
      *v10 = v30;
      *(v10 + 1) = v31;
      v32 = &v27[OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_parentObjectID];
      swift_beginAccess();
      v33 = *v32;
      v34 = *(v32 + 1);
      *(v10 + 2) = v33;
      *(v10 + 3) = v34;
      v35 = OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_parentEntityType;
      swift_beginAccess();
      v36 = *&v27[v35];
      *(v10 + 4) = v36;
      v10[40] = v36 < 7;
      v37 = OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_assetFieldNames;
      swift_beginAccess();
      *(v10 + 6) = *&v27[v37];
      sub_100011528(v10, v8, type metadata accessor for MultimediaRecordRequestItem);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_100010F44(0, v24[2] + 1, 1, v24);
      }

      v39 = v24[2];
      v38 = v24[3];
      if (v39 >= v38 >> 1)
      {
        v24 = sub_100010F44(v38 > 1, v39 + 1, 1, v24);
      }

      ++v23;

      v24[2] = v39 + 1;
      sub_100011590(v8, v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v39, type metadata accessor for MultimediaRecordRequestItem);
      sub_1000115F8(v10, type metadata accessor for MultimediaRecordRequestItem);
      v22 = v25;
    }

    while (v44 != v23);

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_100010B28()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id ClassKitServiceOperations.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClassKitServiceOperations();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100010BEC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_100010C24()
{
  type metadata accessor for ServerInteraction();
  v0 = swift_allocObject();
  result = sub_100010CD8(1);
  qword_10024DCC0 = v0;
  return result;
}

uint64_t sub_100010C64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100010C8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if ((a3 & 1) == 0)
  {
    a2 = 0;
  }

  return v4(a1, a2);
}

void *sub_100010CD8(char a1)
{
  v2 = v1;
  v2[2] = 0xD00000000000001ALL;
  v2[3] = 0x80000001001C58D0;
  v2[4] = 0x74694B7373616C43;
  v2[5] = 0xEF65636976726553;
  v2[6] = 0;
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() containerWithIdentifier:v4];

  v6 = a1 & 1;
  if (a1)
  {
    v7 = 6254687;
  }

  else
  {
    v7 = 6251615;
  }

  v21 = v2[4];
  v22 = v2[5];

  v8._countAndFlagsBits = v7;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 3157553;
  v9._object = 0xE300000000000000;
  String.append(_:)(v9);

  v10 = [v5 organizationCloudDatabase];
  v11 = [v10 databaseScope];

  v12 = sub_100002584(v11, v6);
  v14 = v13;
  v15 = v2[6];
  v2[6] = v12;

  v16 = String._bridgeToObjectiveC()();

  v17 = [v5 organizationCloudDatabase];
  v18 = [v17 databaseScope];

  v19 = [v5 codeServiceWithName:v16 databaseScope:v18];

  v2[7] = v19;
  return v2;
}

uint64_t sub_100010EF4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocClassInstance(v0, 64, 7);
}

size_t sub_100010F44(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10000286C(&qword_10024B248, &unk_1001A8180);
  v10 = *(type metadata accessor for MultimediaRecordRequestItem(0) - 8);
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
  v15 = *(type metadata accessor for MultimediaRecordRequestItem(0) - 8);
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

uint64_t _s9progressd25ClassKitServiceOperationsC21checkConnectionStatus10completionyySSSg_s5Error_pSgtc_tF_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HelloRequest(0);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10024AB08 != -1)
  {
    result = swift_once();
  }

  if (*(qword_10024DCC0 + 48))
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    __chkstk_darwin(v9);
    *&v10[-16] = 0xD000000000000014;
    *&v10[-8] = 0x80000001001C58B0;
    sub_100011400();

    static Message.with(_:)();
    ClassKitServiceAPIAsyncClient.hello(_:completion:)(v8);

    return sub_1000115F8(v8, type metadata accessor for HelloRequest);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001132C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100011390()
{
  result = qword_10024B230;
  if (!qword_10024B230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10024B230);
  }

  return result;
}

unint64_t sub_100011400()
{
  result = qword_10024ABB0;
  if (!qword_10024ABB0)
  {
    type metadata accessor for HelloRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10024ABB0);
  }

  return result;
}

uint64_t sub_100011458(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000286C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000114C0(uint64_t a1)
{
  v2 = sub_10000286C(&qword_10024AB28, &qword_1001A7590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100011590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000115F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ClassKitServiceAPIAsyncClient.__allocating_init(codeService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ClassKitServiceAPIAsync.hello(name:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for HelloRequest(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  v19 = a2;
  sub_1000128A4(&qword_10024ABB0, type metadata accessor for HelloRequest);
  static Message.with(_:)();
  (*(a6 + 8))(v15, a3, a4, a5, a6);
  return sub_1000128EC(v15, type metadata accessor for HelloRequest);
}

uint64_t ClassKitServiceAPI.HelloOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10000286C(&qword_10024B250, &unk_1001A8190);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100011458(a1, v6, &qword_10024B250, &unk_1001A8190);
  v8 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(a1, &qword_10024B250, &unk_1001A8190);
  return v8;
}

uint64_t ClassKitServiceAPI.HelloOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10000286C(&qword_10024B250, &unk_1001A8190);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100011458(a1, &v7 - v4, &qword_10024B250, &unk_1001A8190);
  v5 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(a1, &qword_10024B250, &unk_1001A8190);
  return v5;
}

uint64_t ClassKitServiceAPI.GetPublishedDownloadURLAssetByRecordNameOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10000286C(&qword_10024B0D8, &qword_1001A80B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100011458(a1, v6, &qword_10024B0D8, &qword_1001A80B0);
  v8 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(a1, &qword_10024B0D8, &qword_1001A80B0);
  return v8;
}

uint64_t ClassKitServiceAPI.GetPublishedDownloadURLAssetByRecordNameOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10000286C(&qword_10024B0D8, &qword_1001A80B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100011458(a1, &v7 - v4, &qword_10024B0D8, &qword_1001A80B0);
  v5 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(a1, &qword_10024B0D8, &qword_1001A80B0);
  return v5;
}

uint64_t ClassKitServiceAPI.GetPublishedStreamingURLAssetRecordNameOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10000286C(&qword_10024B0D8, &qword_1001A80B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100011458(a1, v6, &qword_10024B0D8, &qword_1001A80B0);
  v8 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(a1, &qword_10024B0D8, &qword_1001A80B0);
  return v8;
}

uint64_t ClassKitServiceAPI.GetPublishedStreamingURLAssetRecordNameOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10000286C(&qword_10024B0D8, &qword_1001A80B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100011458(a1, &v7 - v4, &qword_10024B0D8, &qword_1001A80B0);
  v5 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(a1, &qword_10024B0D8, &qword_1001A80B0);
  return v5;
}

uint64_t ClassKitServiceAPI.GetDraftDownloadURLAssetByRecordNameOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10000286C(&qword_10024B0D8, &qword_1001A80B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100011458(a1, v6, &qword_10024B0D8, &qword_1001A80B0);
  v8 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(a1, &qword_10024B0D8, &qword_1001A80B0);
  return v8;
}

uint64_t ClassKitServiceAPI.GetDraftDownloadURLAssetByRecordNameOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10000286C(&qword_10024B0D8, &qword_1001A80B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100011458(a1, &v7 - v4, &qword_10024B0D8, &qword_1001A80B0);
  v5 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(a1, &qword_10024B0D8, &qword_1001A80B0);
  return v5;
}

uint64_t ClassKitServiceAPI.GetDraftStreamingURLAssetRecordNameOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_10000286C(&qword_10024B0D8, &qword_1001A80B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100011458(a1, v6, &qword_10024B0D8, &qword_1001A80B0);
  v8 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(a1, &qword_10024B0D8, &qword_1001A80B0);
  return v8;
}

uint64_t ClassKitServiceAPI.GetDraftStreamingURLAssetRecordNameOperation.init(request:)(uint64_t a1)
{
  v2 = sub_10000286C(&qword_10024B0D8, &qword_1001A80B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100011458(a1, &v7 - v4, &qword_10024B0D8, &qword_1001A80B0);
  v5 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(a1, &qword_10024B0D8, &qword_1001A80B0);
  return v5;
}

uint64_t sub_100012194(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(result + 8);
    v5 = result;

    *v5 = a2;
    v5[1] = a3;
  }

  return result;
}

uint64_t ClassKitServiceAPIAsync.getPublishedDownloadURLAssetByRecordName(zoneName:zoneOwnerName:orgID:multimediaRequestItems:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = a8;
  v23 = a9;
  v24 = a10;
  v18 = type metadata accessor for MultimediaRecordsRequest(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  sub_1000128A4(&qword_10024ABE0, type metadata accessor for MultimediaRecordsRequest);
  static Message.with(_:)();
  (*(a11 + 16))(v21, v25, v23, v24, a11);
  return sub_1000128EC(v21, type metadata accessor for MultimediaRecordsRequest);
}

uint64_t ClassKitServiceAPIAsync.getPublishedStreamingURLAssetRecordName(zoneName:zoneOwnerName:orgID:multimediaRequestItems:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = a8;
  v23 = a9;
  v24 = a10;
  v18 = type metadata accessor for MultimediaRecordsRequest(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  sub_1000128A4(&qword_10024ABE0, type metadata accessor for MultimediaRecordsRequest);
  static Message.with(_:)();
  (*(a11 + 24))(v21, v25, v23, v24, a11);
  return sub_1000128EC(v21, type metadata accessor for MultimediaRecordsRequest);
}

uint64_t ClassKitServiceAPIAsync.getDraftDownloadURLAssetByRecordName(zoneName:zoneOwnerName:orgID:multimediaRequestItems:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = a8;
  v23 = a9;
  v24 = a10;
  v18 = type metadata accessor for MultimediaRecordsRequest(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  sub_1000128A4(&qword_10024ABE0, type metadata accessor for MultimediaRecordsRequest);
  static Message.with(_:)();
  (*(a11 + 32))(v21, v25, v23, v24, a11);
  return sub_1000128EC(v21, type metadata accessor for MultimediaRecordsRequest);
}

uint64_t ClassKitServiceAPIAsync.getDraftStreamingURLAssetRecordName(zoneName:zoneOwnerName:orgID:multimediaRequestItems:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = a8;
  v23 = a9;
  v24 = a10;
  v18 = type metadata accessor for MultimediaRecordsRequest(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  sub_1000128A4(&qword_10024ABE0, type metadata accessor for MultimediaRecordsRequest);
  static Message.with(_:)();
  (*(a11 + 40))(v21, v25, v23, v24, a11);
  return sub_1000128EC(v21, type metadata accessor for MultimediaRecordsRequest);
}

uint64_t sub_10001276C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = result;
  if (a3)
  {
    v15 = *(result + 8);

    *v13 = a2;
    v13[1] = a3;
  }

  if (a5)
  {
    v17 = v13[3];

    v13[2] = a4;
    v13[3] = a5;
  }

  if (a7)
  {
    v18 = v13[5];

    v13[4] = a6;
    v13[5] = a7;
  }

  if (*(a8 + 16))
  {
    v19 = v13[6];

    v13[6] = a8;
  }

  return result;
}

uint64_t sub_100012850(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = *(result + 8);
    v5 = result;

    *v5 = v3;
    v5[1] = v2;
  }

  return result;
}

uint64_t sub_1000128A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000128EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void ClassKitServiceAPIAsyncClient.hello(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000286C(&qword_10024B250, &unk_1001A8190);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  sub_100012D0C(a1, &v15 - v9, type metadata accessor for HelloRequest);
  v11 = type metadata accessor for HelloRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for ClassKitServiceAPI.HelloOperation(0));
  sub_100011458(v10, v8, &qword_10024B250, &unk_1001A8190);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(v10, &qword_10024B250, &unk_1001A8190);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  v14 = *(v2 + 16);
  CKCodeService.add<A, B>(_:)();
}

void ClassKitServiceAPIAsyncClient.getPublishedDownloadURLAssetByRecordName(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000286C(&qword_10024B0D8, &qword_1001A80B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  sub_100012D0C(a1, &v15 - v9, type metadata accessor for MultimediaRecordsRequest);
  v11 = type metadata accessor for MultimediaRecordsRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for ClassKitServiceAPI.GetPublishedDownloadURLAssetByRecordNameOperation(0));
  sub_100011458(v10, v8, &qword_10024B0D8, &qword_1001A80B0);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(v10, &qword_10024B0D8, &qword_1001A80B0);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  v14 = *(v2 + 16);
  CKCodeService.add<A, B>(_:)();
}

uint64_t sub_100012D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void ClassKitServiceAPIAsyncClient.getPublishedStreamingURLAssetRecordName(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000286C(&qword_10024B0D8, &qword_1001A80B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  sub_100012D0C(a1, &v15 - v9, type metadata accessor for MultimediaRecordsRequest);
  v11 = type metadata accessor for MultimediaRecordsRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for ClassKitServiceAPI.GetPublishedStreamingURLAssetRecordNameOperation(0));
  sub_100011458(v10, v8, &qword_10024B0D8, &qword_1001A80B0);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(v10, &qword_10024B0D8, &qword_1001A80B0);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  v14 = *(v2 + 16);
  CKCodeService.add<A, B>(_:)();
}

void ClassKitServiceAPIAsyncClient.getDraftDownloadURLAssetByRecordName(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000286C(&qword_10024B0D8, &qword_1001A80B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  sub_100012D0C(a1, &v15 - v9, type metadata accessor for MultimediaRecordsRequest);
  v11 = type metadata accessor for MultimediaRecordsRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for ClassKitServiceAPI.GetDraftDownloadURLAssetByRecordNameOperation(0));
  sub_100011458(v10, v8, &qword_10024B0D8, &qword_1001A80B0);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(v10, &qword_10024B0D8, &qword_1001A80B0);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  v14 = *(v2 + 16);
  CKCodeService.add<A, B>(_:)();
}

void ClassKitServiceAPIAsyncClient.getDraftStreamingURLAssetRecordName(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000286C(&qword_10024B0D8, &qword_1001A80B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  sub_100012D0C(a1, &v15 - v9, type metadata accessor for MultimediaRecordsRequest);
  v11 = type metadata accessor for MultimediaRecordsRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for ClassKitServiceAPI.GetDraftStreamingURLAssetRecordNameOperation(0));
  sub_100011458(v10, v8, &qword_10024B0D8, &qword_1001A80B0);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_100009244(v10, &qword_10024B0D8, &qword_1001A80B0);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  v14 = *(v2 + 16);
  CKCodeService.add<A, B>(_:)();
}

uint64_t ClassKitServiceAPIAsyncClient.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

BOOL sub_100013568(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  if (a1)
  {
    if ([v9 isPersonSearch])
    {
      v11 = [v9 predicateForPersons];
      v12 = objc_opt_class();
      v13 = [v9 personSortDescriptors];
      [a1 searchFor:v12 predicate:v11 sortDescriptors:v13 limit:a4 offset:a3 block:v10];

      v14 = [a1 personIDsMatchingConstraintsForSearchSpecification:v9];
      if ([v14 count])
      {
        v15 = [v9 predicateForPersonsWithPersonIDs:v14];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    if ([v9 isClassMemberSearch])
    {
      v16 = [a1 personIDsForClassMembersMatchingConstraintsForSearchSpecification:v9];
      if ([v16 count])
      {
        v17 = [v9 predicateForPersonsWithObjectIDs:v16];

        v15 = v17;
      }
    }

    if ([v9 isGroupMemberSearch])
    {
      v18 = [a1 personIDsForGroupMembersMatchingConstraintsForSearchSpecification:v9];
      if ([v18 count])
      {
        v19 = [v9 predicateForPersonsWithObjectIDs:v18];

        v15 = v19;
      }
    }

    if (v15)
    {
      v20 = objc_opt_class();
      v21 = [v9 personSortDescriptors];
      [a1 searchFor:v20 predicate:v15 sortDescriptors:v21 limit:a4 offset:a3 block:v10];
    }

    if ([v9 isClassSearch])
    {
      v22 = [v9 predicateForClasses];
      v23 = objc_opt_class();
      v24 = [v9 classSortDescriptors];
      [a1 searchFor:v23 predicate:v22 sortDescriptors:v24 limit:a4 offset:a3 block:v10];
    }

    if ([v9 isGroupSearch])
    {
      v25 = [v9 predicateForGroups];
      v26 = objc_opt_class();
      v27 = [v9 groupSortDescriptors];
      [a1 searchFor:v26 predicate:v25 sortDescriptors:v27 limit:a4 offset:a3 block:v10];
    }

    if ([v9 isLocationSearch])
    {
      v28 = [a1 locationSearchPredicateForSearchSpec:v9];
      v29 = objc_opt_class();
      v30 = [v9 locationSortDescriptors];
      [a1 searchFor:v29 predicate:v28 sortDescriptors:v30 limit:a4 offset:a3 block:v10];
    }

    if ([v9 isOrganizationSearch])
    {
      v31 = [a1 organizationSearchPredicateForSearchSpec:v9];
      v32 = objc_opt_class();
      v33 = [v9 organizationSortDescriptors];
      [a1 searchFor:v32 predicate:v31 sortDescriptors:v33 limit:a4 offset:a3 block:v10];
    }
  }

  return a1 != 0;
}

void sub_100013A38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100013AF0;
  v5[3] = &unk_100202000;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  sub_1000B9298(v2, v3, 1, v4, v5);
}

void sub_100013AF0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, *(a1 + 32));
  [*(a1 + 40) addObject:v3];
}

id sub_100014180(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1 = [a1 prlSelectColumn:@"personID" havingPrivilege:a2 whereConstraintColumn:@"locationID" hasValues:a3];
    v3 = vars8;
  }

  return a1;
}

id sub_1000141C8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (!v5)
    {
      v6 = @"❌✋🔒";
    }

    v7 = a3;
    v8 = [a1 prlConstraintSQLOnColumn:@"locationID" andValues:v7];
    v9 = [NSString stringWithFormat:@"select objectID from CLSPerson where CLSPerson.objectid NOT IN( select distinct personID from PDPersonRoleLocation as PRL  join PDRolePrivilege as P  on PRL.roleID = P.roleID and P.privilegeName =?  %@)", v8];;
    v10 = [[NSMutableArray alloc] initWithObjects:{v6, 0}];
    [v10 addObjectsFromArray:v7];

    a1 = [a1 objectIDsForSQL:v9 resultColumnName:@"objectID" bindings:v10];
  }

  return a1;
}

id sub_100014D0C(id a1, void *a2, char a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    if (a3)
    {
      v12 = off_100200D08;
LABEL_7:
      a1 = [objc_alloc(*v12) initWithDatabase:a1 objectsMatching:v9 enumerationBlock:v10 finishBlock:v11];
      goto LABEL_9;
    }

    v13 = sub_1000BA854(a1);
    if (v13)
    {
      v14 = v13[8];

      if (v14 == 1)
      {
        v12 = off_100200D10;
        goto LABEL_7;
      }
    }

    a1 = 0;
  }

LABEL_9:

  return a1;
}

uint64_t sub_100015328(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_30;
  }

  if (![v3 length])
  {
    CLSInitLog();
    v16 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      a1 = 2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "tried to query authorization status for empty objectID", buf, 2u);
    }

    else
    {
      a1 = 2;
    }

    goto LABEL_30;
  }

  *buf = 0;
  v35 = buf;
  v36 = 0x2020000000;
  v37 = 2;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001577C;
  v26[3] = &unk_1002020F0;
  v26[4] = a1;
  v5 = v4;
  v27 = v5;
  v28 = &v30;
  v29 = buf;
  v6 = objc_retainBlock(v26);
  v7 = (v6[2])();
  if ((v31[3] & 1) == 0)
  {
    v8 = objc_opt_class();
    v38[0] = v5;
    v38[1] = &off_10021B510;
    v9 = [NSArray arrayWithObjects:v38 count:2];
    v10 = [a1 select:v8 where:@"parentObjectID = ? and domain = ?" bindings:v9];

    v11 = [a1 select:objc_opt_class() identity:v5];
    v12 = v11;
    if (!v10 || !v11)
    {
      goto LABEL_26;
    }

    v13 = [v10 ownerPersonID];
    if (!v13)
    {
      v22 = sub_1000711FC(a1);
      v21 = [v22 objectID];
      if (!v21)
      {

        goto LABEL_22;
      }
    }

    v25 = [v10 ownerPersonID];
    if (v25)
    {
      v24 = sub_1000711FC(a1);
      v23 = [v24 objectID];
      if (v23)
      {
        v20 = [v10 ownerPersonID];
        v14 = sub_1000711FC(a1);
        v15 = [v14 objectID];
        v19 = [v20 isEqualToString:v15];

        if (v13)
        {

          if (!v19)
          {
            goto LABEL_26;
          }
        }

        else
        {

          if ((v19 & 1) == 0)
          {
LABEL_26:

            goto LABEL_27;
          }
        }

LABEL_22:
        v17 = [v10 state];
        if (v17 == 1 || [v10 state] == 2)
        {
          sub_100160444(a1, v12, v17 != 1);
        }

        v7 = (v6[2])(v6);
        goto LABEL_26;
      }

      if (!v13)
      {
        goto LABEL_19;
      }
    }

    else if (!v13)
    {
LABEL_19:

      goto LABEL_27;
    }
  }

LABEL_27:
  if ((v7 & 1) == 0)
  {
    *(v35 + 3) = 2;
  }

  a1 = *(v35 + 3);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(buf, 8);
LABEL_30:

  return a1;
}

void sub_100015748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

id sub_10001577C(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001581C;
  v7[3] = &unk_100202078;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 48);
  v5 = sub_10010BE68(v2, v7);

  return v5;
}

void sub_10001581C(uint64_t a1)
{
  v6 = *(a1 + 32);
  v2 = [NSArray arrayWithObjects:&v6 count:1];
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100015900;
  v4[3] = &unk_100202050;
  v5 = *(a1 + 48);
  sub_1000B9298(v3, @"select statusID, deniedCount, authorizedCount from AuthStatus where identifier = ? and parentStatusID is null limit 1", 1, v2, v4);
}

void sub_100015900(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v10 = v3;
  v4 = sub_10016D778(v3, @"deniedCount");
  v5 = [v4 integerValue];

  if (v5 >= 1)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = 2;
LABEL_5:
    *(v6 + 24) = v7;
    goto LABEL_6;
  }

  v8 = sub_10016D778(v10, @"authorizedCount");
  v9 = [v8 integerValue];

  v6 = *(*(a1 + 40) + 8);
  if (v9 >= 1)
  {
    v7 = 1;
    goto LABEL_5;
  }

  *(v6 + 24) = 0;
LABEL_6:
}

void sub_100015C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100015CBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100015CD4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(*(a1 + 48) + 8) + 40);
  if (v3)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
    v4 = *(*(*(a1 + 48) + 8) + 40);
    v17[0] = *(a1 + 32);
    v17[1] = v4;
    v5 = [NSArray arrayWithObjects:v17 count:2];
    v6 = @"select statusID, deniedCount, authorizedCount from AuthStatus where identifier = ? and parentStatusID = ? limit 1";
  }

  else
  {
    v18 = *(a1 + 32);
    v5 = [NSArray arrayWithObjects:&v18 count:1];
    v6 = @"select statusID, deniedCount, authorizedCount from AuthStatus where identifier = ? and parentStatusID is null limit 1";
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100015CBC;
  v15 = sub_100015CCC;
  v16 = 0;
  v7 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100015EC0;
  v9[3] = &unk_1002020A0;
  v9[4] = &v11;
  v10 = *(a1 + 64);
  if (sub_1000B9298(v7, v6, 1, v5, v9))
  {
    v8 = v12[5];
    if (v8)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
    }
  }

  _Block_object_dispose(&v11, 8);

  objc_autoreleasePoolPop(v2);
}

void sub_100015EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100015EC0(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = sub_10016D778(v5, @"statusID");
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = sub_10016D778(v5, @"deniedCount");
  *(*(a1[5] + 8) + 24) = [v9 integerValue];

  v10 = sub_10016D778(v5, @"authorizedCount");

  *(*(a1[6] + 8) + 24) = [v10 integerValue];
  *a3 = 1;
}

uint64_t sub_100015F80(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40));
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];

  v12[0] = *(a1 + 32);
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = v5;
  if (!v5)
  {
    v6 = +[NSNull null];
  }

  v12[1] = v6;
  v12[2] = v4;
  v7 = [NSArray arrayWithObjects:v12 count:3];
  if (!v5)
  {
  }

  v8 = sub_1000B9298(*(a1 + 40), @"insert into AuthStatus (identifier, parentStatusID, statusID) values(?,?,?)", 1, v7, 0);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v4;

  objc_autoreleasePoolPop(v2);
  return v8;
}

id sub_1000160C4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a1)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_10;
  }

  if ((a2 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    CLSInitLog();
    v6 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = NSStringFromAuthorizationStatus();
      v9 = NSStringFromAuthorizationStatus();
      v10 = NSStringFromAuthorizationStatus();
      *buf = 138412802;
      *&buf[4] = v8;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attempted to set authorization status: '%@'; only are: ['%@', '%@'] are allowed;", buf, 0x20u);
    }

    goto LABEL_5;
  }

  v21 = 0;
  *buf = 0;
  v20 = 0;
  v12 = [a1 _statusID:&v20 deniedCount:&v21 authCount:buf forHandoutAssignedItem:v5];
  v13 = v20;
  v14 = v13;
  if (v12)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000162B0;
    v16[3] = &unk_100202118;
    v19 = a2;
    v17 = v13;
    v18 = a1;
    v11 = [a1 performTransaction:v16 forWriting:1];
  }

  else
  {
    v11 = 0;
  }

LABEL_10:
  return v11;
}

uint64_t sub_1000162B0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    v9 = &off_10021B540;
    v3 = &off_10021B528;
    v4 = &v9;
  }

  else
  {
    if (v2 != 2)
    {
      return 0;
    }

    v10 = &off_10021B528;
    v3 = &off_10021B540;
    v4 = &v10;
  }

  v5 = *(a1 + 32);
  v4[1] = v3;
  v4[2] = v5;
  v6 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];
  v7 = sub_1000B9298(*(a1 + 40), @"update AuthStatus set deniedCount = ?, authorizedCount = ? where statusID = ?", 1, v6, 0);

  return v7;
}

id sub_10001639C(id a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a1)
  {
    goto LABEL_22;
  }

  if ((a2 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v11 = [a1 _statusID:&v35 deniedCount:&v36 authCount:&v37 forHandoutAssignedItem:v5];
    v12 = v35;
    v13 = v12;
    if (v11)
    {
      if (a2 == 2)
      {
        if (v36)
        {
          v14 = 0;
          v36 = 0;
          v15 = v37;
LABEL_12:
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_1000167E8;
          v26[3] = &unk_100202168;
          v29 = v14;
          v30 = v15;
          v27 = v12;
          v28 = a1;
          a1 = [a1 performTransaction:v26 forWriting:1];

LABEL_21:
          goto LABEL_22;
        }

        CLSInitLog();
        v16 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
        {
          v17 = v16;
          v18 = NSStringFromAuthorizationStatus();
          v19 = NSStringFromAuthorizationStatus();
          *buf = 138412802;
          v39 = v18;
          v40 = 2112;
          v41 = v5;
          v42 = 2112;
          v43 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "tried remove '%@' for HandoutAssignedItem id: ['%@']; which is not %@';", buf, 0x20u);
        }

        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_1000167D0;
        v33[3] = &unk_100202140;
        v33[4] = a1;
        v34 = v13;
        [a1 performTransaction:v33 forWriting:1];
        v20 = v34;
      }

      else
      {
        if (v37)
        {
          v15 = --v37;
          v14 = v36;
          goto LABEL_12;
        }

        CLSInitLog();
        v21 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
        {
          v22 = v21;
          v23 = NSStringFromAuthorizationStatus();
          v24 = NSStringFromAuthorizationStatus();
          *buf = 138412802;
          v39 = v23;
          v40 = 2112;
          v41 = v5;
          v42 = 2112;
          v43 = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "tried remove '%@' for HandoutAssignedItem id: ['%@']; which is not %@';", buf, 0x20u);
        }

        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1000167DC;
        v31[3] = &unk_100202140;
        v31[4] = a1;
        v32 = v13;
        [a1 performTransaction:v31 forWriting:1];
        v20 = v32;
      }
    }

    a1 = 0;
    goto LABEL_21;
  }

  CLSInitLog();
  v6 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = NSStringFromAuthorizationStatus();
    v9 = NSStringFromAuthorizationStatus();
    v10 = NSStringFromAuthorizationStatus();
    *buf = 138412802;
    v39 = v8;
    v40 = 2112;
    v41 = v9;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attempted to set authorization status: '%@'; only are: ['%@', '%@'] are allowed;", buf, 0x20u);
  }

  a1 = 0;
LABEL_22:

  return a1;
}

id sub_1000167E8(uint64_t a1)
{
  v2 = [NSNumber numberWithInteger:*(a1 + 48)];
  v3 = [NSNumber numberWithInteger:*(a1 + 56), v2];
  v4 = *(a1 + 32);
  v8[1] = v3;
  v8[2] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:3];

  if (sub_1000B9298(*(a1 + 40), @"update AuthStatus set deniedCount = ?, authorizedCount = ? where statusID = ?", 1, v5, 0))
  {
    v6 = [*(a1 + 40) _pruneAuthTreeAtNodeWithAssignedItemStatusID:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100016B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v6 - 160), 8);
  _Block_object_dispose((v6 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100016BC0(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = sub_10016D778(v5, @"authorizedCount");
  *(*(a1[4] + 8) + 24) = [v6 integerValue];

  v7 = sub_10016D778(v5, @"deniedCount");
  *(*(a1[5] + 8) + 24) = [v7 integerValue];

  v8 = sub_10016D778(v5, @"parentStatusID");

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *a3 = 1;
}

void sub_100016C80(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"count");
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue] == 0;
}

id sub_100016CF0(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_100015CBC;
    v20 = sub_100015CCC;
    v21 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100016F08;
    v6[3] = &unk_100202248;
    v7 = v3;
    v8 = a1;
    v9 = &stru_1002021D0;
    v10 = &v12;
    v11 = &v16;
    sub_10010BE68(a1, v6);
    if (v13[3])
    {
      a1 = v17[5];
    }

    else
    {
      a1 = 0;
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  return a1;
}

void sub_100016E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

int64_t sub_100016E78(id a1, PDDatabaseRow *a2)
{
  v2 = a2;
  v3 = sub_10016D778(v2, @"deniedCount");
  v4 = [v3 integerValue];

  if (v4 <= 0)
  {
    v6 = sub_10016D778(v2, @"authorizedCount");
    v7 = [v6 integerValue];

    v5 = v7 > 0;
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

void sub_100016F08(uint64_t a1)
{
  v26 = *(a1 + 32);
  v2 = [NSArray arrayWithObjects:&v26 count:1];
  v3 = objc_opt_new();
  v4 = *(a1 + 40);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001719C;
  v20[3] = &unk_1002021F8;
  v5 = v3;
  v21 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v23 = v6;
  v24 = v7;
  v22 = *(a1 + 32);
  *(*(*(a1 + 56) + 8) + 24) = sub_1000B9298(v4, @"select statusID, deniedCount, authorizedCount from AuthStatus where identifier = ? and parentStatusID is null limit 1", 1, v2, v20);
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    while ([v5 count])
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v5 lastObject];
      [v5 removeLastObject];
      v25 = v9;
      v10 = [NSArray arrayWithObjects:&v25 count:1];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100017254;
      v15[3] = &unk_100202220;
      v11 = *(a1 + 40);
      v18 = *(a1 + 48);
      v12 = v5;
      v19 = *(a1 + 64);
      v16 = v12;
      v17 = v9;
      v13 = v9;
      *(*(*(a1 + 56) + 8) + 24) = sub_1000B9298(v11, @"select identifier, statusID, deniedCount, authorizedCount from AuthStatus where parentStatusID = ?", 1, v10, v15);
      v14 = *(*(*(a1 + 56) + 8) + 24);

      objc_autoreleasePoolPop(v8);
      v2 = v10;
      if ((v14 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v10 = v2;
LABEL_6:
}

void sub_10001719C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = sub_10016D778(v3, @"statusID");
  [*(a1 + 32) addObject:v8];
  v4 = (*(*(a1 + 48) + 16))();

  v5 = [[CLSAuthTree alloc] initWithStatus:v4 statusID:v8 identifier:*(a1 + 40)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100017254(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = (*(*(a1 + 48) + 16))();
  v4 = sub_10016D778(v6, @"statusID");
  if (v3 != 2)
  {
    [*(a1 + 32) addObject:v4];
  }

  v5 = sub_10016D778(v6, @"identifier");
  [*(*(*(a1 + 56) + 8) + 40) setAuthStatus:v3 forIdentifier:v5 statusID:v4 parentStatusID:*(a1 + 40)];
}

id sub_100017324(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_100015CBC;
    v14 = sub_100015CCC;
    v15 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100017454;
    v6[3] = &unk_100202270;
    v8 = a1;
    v9 = &v10;
    v7 = v3;
    sub_10010BE68(a1, v6);
    a1 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

void sub_10001743C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100017454(uint64_t a1)
{
  v6 = [[NSMutableString alloc] initWithString:@"parentObjectID = ?"];
  v2 = [[NSMutableArray alloc] initWithObjects:{*(a1 + 32), 0}];
  v3 = [*(a1 + 40) select:objc_opt_class() where:v6 bindings:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_100017A50(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v7 parentObjectID];
    v11 = sub_100175C6C(a1, v10);
    if ([v11 count])
    {
      if ([v11 count] >= 2)
      {
        CLSInitLog();
        v12 = CLSLogUpload;
        if (os_log_type_enabled(CLSLogUpload, OS_LOG_TYPE_ERROR))
        {
          v21 = v12;
          v22 = [v11 firstObject];
          v23 = 138412546;
          v24 = v10;
          v25 = 2112;
          v26 = v22;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "found multiple classIDs for handout %@, picking the first %@", &v23, 0x16u);
        }
      }

      v13 = [v11 firstObject];
      v14 = [CLSAttachmentEvent alloc];
      v15 = [v7 objectID];
      v16 = [v14 initWithAttachmentID:v15 classID:v13 handoutID:v10 eventType:a3];

      [v16 setHandoutAttachmentType:{objc_msgSend(v7, "type")}];
      [v16 setContextType:{objc_msgSend(v7, "contextType")}];
      [v16 setRecipientPersonID:v8];
      v17 = [v7 bundleIdentifier];

      if (v17)
      {
        [v7 bundleIdentifier];
      }

      else
      {
        [v7 appIdentifier];
      }
      v19 = ;
      [v16 setAppIdentifier:v19];

      sub_100017D14(a1, v16, v7);
    }

    else
    {
      CLSInitLog();
      v18 = CLSLogUpload;
      if (os_log_type_enabled(CLSLogUpload, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = v10;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "CLSHandoutAttachment+InsightEvents: found no class id for handout: %@", &v23, 0xCu);
      }

      v16 = 0;
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_100017D14(void *a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v15;
    v7 = [v6 recipientPersonID];
    v8 = [v5 parentObjectID];
    v9 = sub_100176340(a1, v7, v8);
    v10 = [NSMutableSet setWithArray:v9];

    v11 = [v6 type];
    if ((v11 - 103) >= 2)
    {
      if (v11 != 105)
      {
LABEL_7:
        v13 = [v6 info];
        v14 = [v10 allObjects];
        [v13 setValue:v14 forKey:@"done_attachment_ids"];

        goto LABEL_8;
      }

      v12 = [v6 attachmentID];
      [v10 removeObject:v12];
    }

    else
    {
      v12 = [v6 attachmentID];
      [v10 addObject:v12];
    }

    goto LABEL_7;
  }

LABEL_8:
}

id sub_100017EA4(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v5 parentObjectID];
    v8 = sub_100175C6C(a1, v7);
    if ([v8 count])
    {
      if ([v8 count] >= 2)
      {
        CLSInitLog();
        v9 = CLSLogUpload;
        if (os_log_type_enabled(CLSLogUpload, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v31 = v7;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "CLSHandoutAttachment+InsightEvents: unexpected multiple classes for handout: %@", buf, 0xCu);
        }
      }

      v10 = [v8 firstObject];
      v11 = [CLSProgressEvent alloc];
      v12 = [v5 objectID];
      v13 = [v11 initWithAttachmentID:v12 classID:v10 handoutID:v7 eventType:a3];

      [v13 setHandoutAttachmentType:{objc_msgSend(v5, "type")}];
      [v13 setContextType:{objc_msgSend(v5, "contextType")}];
      v14 = sub_1000712CC(a1);
      [v13 setRecipientPersonID:v14];

      v15 = [v5 bundleIdentifier];

      if (v15)
      {
        [v5 bundleIdentifier];
      }

      else
      {
        [v5 appIdentifier];
      }
      v17 = ;
      [v13 setAppIdentifier:v17];

      v18 = sub_100160EB4(a1, v5);
      v19 = v18;
      if (v18)
      {
        v20 = [v18 objectID];
        [v13 setHandoutAuthorizedObjectID:v20];

        [v13 setContextType:{objc_msgSend(v19, "type")}];
        v21 = [v19 identifierPath];
        v22 = [CLSContext objectIDPathFromIdentifierPath:v21];
        [v22 componentsJoinedByString:@"/"];
        v29 = v8;
        v23 = v7;
        v24 = v10;
        v26 = v25 = v6;
        [v13 setObjectIDPath:v26];

        v27 = [v19 appIdentifier];
        [v13 setAppIdentifier:v27];

        v6 = v25;
        v10 = v24;
        v7 = v23;
        v8 = v29;
      }

      sub_100017D14(a1, v13, v5);
    }

    else
    {
      CLSInitLog();
      v16 = CLSLogUpload;
      if (os_log_type_enabled(CLSLogUpload, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "CLSHandoutAttachment+InsightEvents: found no class id for handout: %@", buf, 0xCu);
      }

      v13 = 0;
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_100018228(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3)
  {
    if (v4)
    {
      v6 = [v3 parentObjectID];

      if (v6)
      {
        v7 = sub_1000182EC(v3, v5);
        v8 = [v7 parentEntityName];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v6 = [v8 isEqualToString:v10];
      }
    }
  }

  return v6;
}

id sub_1000182EC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [objc_opt_class() entityType];
  if (v5 - 3 < 4)
  {
    goto LABEL_2;
  }

  if (v5 == 2)
  {
    v6 = objc_opt_class();
    v7 = [v3 objectID];
    goto LABEL_3;
  }

  if (v5 == 1)
  {
LABEL_2:
    v6 = objc_opt_class();
    v7 = [v3 parentObjectID];
LABEL_3:
    v8 = v7;
    v9 = [v4 select:v6 identity:v7];

    goto LABEL_4;
  }

  v9 = 0;
LABEL_4:

  return v9;
}

PDDPHandoutAuthorizedMetaInfo *sub_1000183CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 parentObjectID];

    if (v7)
    {
      v8 = sub_1000182EC(v3, v5);
      v9 = objc_opt_class();
      v10 = [v8 parentObjectID];
      v11 = [v5 select:v9 identity:v10];

      if (v11)
      {
        v12 = objc_alloc_init(PDDPHandoutAuthorizedMetaInfo);
        v13 = [v11 objectID];
        [(PDDPHandoutAuthorizedMetaInfo *)v12 setHandoutAuthorizedObjectId:v13];

        v14 = objc_opt_class();
        v15 = [v11 parentObjectID];
        v16 = [v5 select:v14 identity:v15];

        if (v16)
        {
          v17 = [v16 objectID];
          [(PDDPHandoutAuthorizedMetaInfo *)v12 setAttachmentId:v17];

          -[PDDPHandoutAuthorizedMetaInfo setAttachmentType:](v12, "setAttachmentType:", sub_1000186C0([v16 type]));
          v18 = objc_opt_class();
          v19 = [v16 parentObjectID];
          v20 = [v5 select:v18 identity:v19];

          if (v20)
          {
            v21 = [v20 objectID];
            [(PDDPHandoutAuthorizedMetaInfo *)v12 setHandoutId:v21];

            v22 = objc_opt_class();
            v23 = [v20 objectID];
            v28 = v23;
            v24 = [NSArray arrayWithObjects:&v28 count:1];
            v25 = [v5 select:v22 where:@"parentObjectID = ?" bindings:v24];

            if (v25)
            {
              v26 = [v25 classID];
              [(PDDPHandoutAuthorizedMetaInfo *)v12 setClassId:v26];

              v6 = v12;
            }

            else
            {
              v6 = 0;
            }
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t sub_1000186C0(int a1)
{
  if ((a1 - 1) < 6)
  {
    return (a1 + 1);
  }

  else
  {
    return 1;
  }
}

PDDPProgressEntity *sub_1000186D4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v6 = objc_alloc_init(PDDPProgressEntity);
    -[PDDPProgressEntity setType:](v6, "setType:", [objc_opt_class() entityType]);
    v7 = [v3 objectID];
    [(PDDPProgressEntity *)v6 setObjectId:v7];

    v8 = [v3 parentObjectID];
    [(PDDPProgressEntity *)v6 setParentObjectId:v8];

    v9 = [v3 appIdentifier];
    [(PDDPProgressEntity *)v6 setAppIdentifier:v9];

    v10 = [v3 dateCreated];
    v11 = sub_10010426C(v10);
    [(PDDPProgressEntity *)v6 setDateCreated:v11];

    v12 = +[NSMutableArray array];
    v13 = +[NSMutableArray array];
    v14 = [v3 parentObjectID];

    if (v14)
    {
      v15 = sub_1000182EC(v3, v5);
      if (v15)
      {
        v16 = objc_opt_class();
        v17 = [v15 parentObjectID];
        v18 = [v5 select:v16 identity:v17];

        if (v18)
        {
          v19 = [v18 identifierPath];
          v20 = [CLSContext objectIDPathFromIdentifierPath:v19];
          [v12 addObjectsFromArray:v20];

          v21 = [v18 identifierPath];
          v22 = [CLSContext stableObjectIDPathFromIdentifierPath:v21];
          [v13 addObjectsFromArray:v22];

          if ([(PDDPProgressEntity *)v6 type]== 2)
          {
            v23 = [v18 stableObjectID];
            [(PDDPProgressEntity *)v6 setStableParentObjectId:v23];
          }
        }

        v24 = [v15 objectID];
        [v12 addObject:v24];

        v25 = [v15 objectID];
        [v13 addObject:v25];
      }
    }

    if ([(PDDPProgressEntity *)v6 type]!= 2)
    {
      v26 = [v3 objectID];
      [v12 addObject:v26];

      v27 = [v3 objectID];
      [v13 addObject:v27];
    }

    v28 = [v12 componentsJoinedByString:@"/"];
    [(PDDPProgressEntity *)v6 setObjectIdPath:v28];

    v29 = [v13 componentsJoinedByString:@"/"];
    [(PDDPProgressEntity *)v6 setStableObjectIdPath:v29];
  }

  return v6;
}

PDDPClassZone *sub_100018A30(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(PDDPClassZone);
  [(PDDPClassZone *)v5 setIsAccessDenied:0];
  [(PDDPClassZone *)v5 setMoreDataAvailable:0];
  if (v4)
  {
    [(PDDPClassZone *)v5 setZoneName:v4];
  }

  if (v3)
  {
    v6 = v3[1];

    if (v6)
    {
      v7 = v3[1];
      v8 = [v7 data];
      [(PDDPClassZone *)v5 setChangeToken:v8];
    }
  }

  return v5;
}

PDDPHandout *sub_100018B04(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PDDPHandout);
  v3 = [v1 objectID];
  [(PDDPHandout *)v2 setObjectId:v3];

  v4 = [v1 title];
  [(PDDPHandout *)v2 setTitle:v4];

  v5 = [v1 instructions];
  [(PDDPHandout *)v2 setInstructions:v5];

  v6 = [v1 dateCreated];
  v7 = sub_10010426C(v6);
  [(PDDPHandout *)v2 setDateCreated:v7];

  v8 = [v1 dueDate];
  v9 = sub_10010426C(v8);
  [(PDDPHandout *)v2 setDateDue:v9];

  v10 = [v1 dateLastModified];
  v11 = sub_10010426C(v10);
  [(PDDPHandout *)v2 setDateLastModified:v11];

  v12 = [v1 dateOfPublication];
  v13 = sub_10010426C(v12);
  [(PDDPHandout *)v2 setDateOfPublication:v13];

  v14 = [v1 lastReviewedDate];
  v15 = sub_10010426C(v14);
  [(PDDPHandout *)v2 setDateLastReviewed:v15];

  -[PDDPHandout setIsReviewed:](v2, "setIsReviewed:", [v1 isReviewed]);
  -[PDDPHandout setFlags:](v2, "setFlags:", [v1 flags]);
  v16 = [v1 publishingState];
  if (v16 < 8)
  {
    v17 = (v16 + 1);
  }

  else
  {
    v17 = 0;
  }

  [(PDDPHandout *)v2 setPublishingState:v17];
  v18 = [v1 type];
  if (v18 == 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2 * (v18 == 2);
  }

  [(PDDPHandout *)v2 setType:v19];
  -[PDDPHandout setVersion:](v2, "setVersion:", [v1 version]);
  v20 = [v1 publishError];

  if (v20)
  {
    v21 = objc_alloc_init(PDDPStatus);
    [(PDDPHandout *)v2 setStatus:v21];

    v22 = [(PDDPHandout *)v2 status];
    [v22 setCode:2];

    v23 = [v1 publishError];
    v24 = [v23 localizedDescription];
    v25 = [(PDDPHandout *)v2 status];
    [v25 setMessage:v24];
  }

  return v2;
}

PDDPHandoutAttachment *sub_100018DBC(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PDDPHandoutAttachment);
  v3 = [v1 objectID];
  [(PDDPHandoutAttachment *)v2 setObjectId:v3];

  v4 = [v1 parentObjectID];
  [(PDDPHandoutAttachment *)v2 setParentObjectId:v4];

  v5 = [v1 title];
  [(PDDPHandoutAttachment *)v2 setTitle:v5];

  v6 = [v1 dateCreated];
  v7 = sub_10010426C(v6);
  [(PDDPHandoutAttachment *)v2 setDateCreated:v7];

  v8 = [v1 storeIdentifier];
  [(PDDPHandoutAttachment *)v2 setAppStoreIdentifier:v8];

  v9 = [v1 bundleIdentifier];
  [(PDDPHandoutAttachment *)v2 setAppBundleIdentifier:v9];

  v10 = [v1 applicationName];
  [(PDDPHandoutAttachment *)v2 setAppName:v10];

  -[PDDPHandoutAttachment setDisplayOrder:](v2, "setDisplayOrder:", [v1 displayOrder]);
  -[PDDPHandoutAttachment setType:](v2, "setType:", sub_1000186C0([v1 type]));
  v11 = [v1 contentStoreIdentifier];
  [(PDDPHandoutAttachment *)v2 setContentStoreIdentifier:v11];

  v12 = [v1 shareType];
  if (v12 == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (v12 == 2)
  {
    v14 = 3;
  }

  else
  {
    v14 = v13;
  }

  [(PDDPHandoutAttachment *)v2 setShareType:v14];
  if ([v1 permissionType] == 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  [(PDDPHandoutAttachment *)v2 setPermissionType:v15];
  -[PDDPHandoutAttachment setContextType:](v2, "setContextType:", sub_1000191A8([v1 contextType]));
  [v1 timeExpectation];
  [(PDDPHandoutAttachment *)v2 setTimeExpectationInSeconds:?];
  v16 = [v1 URL];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 absoluteString];
    [(PDDPHandoutAttachment *)v2 setUrl:v18];
  }

  v19 = [(PDDPHandoutAttachment *)v2 type];
  if (v19)
  {
    if (v19 == 4)
    {
      v28 = [v1 storeIdentifier];
      [(PDDPHandoutAttachment *)v2 setAppStoreIdentifier:v28];

      v21 = [v1 bundleIdentifier];
      [(PDDPHandoutAttachment *)v2 setAppBundleIdentifier:v21];
    }

    else
    {
      if (v19 != 2)
      {
        goto LABEL_18;
      }

      v20 = [v1 contextPath];
      v21 = [v20 mutableCopy];

      [(PDDPHandoutAttachment *)v2 setContextPaths:v21];
      v22 = [CLSContext objectIDPathFromIdentifierPath:v21];
      v23 = [v22 componentsJoinedByString:@"/"];
      [(PDDPHandoutAttachment *)v2 setObjectIdPath:v23];

      v24 = [CLSContext stableObjectIDPathFromIdentifierPath:v21];
      v25 = [v24 componentsJoinedByString:@"/"];
      [(PDDPHandoutAttachment *)v2 setStableObjectIdPath:v25];

      v26 = [v1 contextSummary];
      [(PDDPHandoutAttachment *)v2 setContextSummary:v26];

      v27 = [v1 contextCustomTypeName];
      [(PDDPHandoutAttachment *)v2 setContextCustomTypeName:v27];

      -[PDDPHandoutAttachment setContextSourceIsCatalog:](v2, "setContextSourceIsCatalog:", [v1 contextSourceIsCatalog]);
    }
  }

  else
  {
    CLSInitLog();
    v30 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Got an unknown handout attachment type. Ignoring it.", v31, 2u);
    }
  }

LABEL_18:

  return v2;
}

uint64_t sub_1000191A8(uint64_t result)
{
  if ((result - 1) < 0x11)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

PDDPHandoutRecipient *sub_1000191B8(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PDDPHandoutRecipient);
  v3 = [v1 objectID];
  [(PDDPHandoutRecipient *)v2 setObjectId:v3];

  v4 = [v1 parentObjectID];
  [(PDDPHandoutRecipient *)v2 setParentObjectId:v4];

  v5 = [v1 classID];
  [(PDDPHandoutRecipient *)v2 setClassId:v5];

  v6 = [v1 personID];
  [(PDDPHandoutRecipient *)v2 setPersonId:v6];

  v7 = [v1 appIdentifier];

  [(PDDPHandoutRecipient *)v2 setAppIdentifier:v7];

  return v2;
}

id sub_1000192B0(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(CLSHandout);
  v3 = [v1 dateCreated];
  v4 = sub_1001043D0(v3);
  [v2 setDateCreated:v4];

  v5 = [v1 dateDue];
  v6 = sub_1001043D0(v5);
  [v2 setDueDate:v6];

  v7 = [v1 dateLastModified];
  v8 = sub_1001043D0(v7);
  [v2 setDateLastModified:v8];

  v9 = [v1 dateOfPublication];
  v10 = sub_1001043D0(v9);
  [v2 setDateOfPublication:v10];

  v11 = [v1 instructions];
  [v2 setInstructions:v11];

  v12 = [v1 title];
  [v2 setTitle:v12];

  [v2 setReviewed:{objc_msgSend(v1, "isReviewed")}];
  [v2 setState:1];
  if ([v1 hasFlags])
  {
    [v2 setFlags:{objc_msgSend(v1, "flags")}];
  }

  v13 = [v1 publishingState];
  if ((v13 - 1) >= 8)
  {
    v23 = [NSString stringWithFormat:@"Unknown PDDPHandout_PublishingState: %ld", v13];
    CLSInitLog();
    v24 = CLSLogHandout;
    if (!os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    *buf = 138543362;
    v28 = v23;
    v25 = "Failed to convert from PDDPHandout_PublishingState reason: %{public}@";
    goto LABEL_22;
  }

  [v2 setPublishingState:?];
  if ([v1 publishingState] == 5)
  {
    if ([v1 hasStatus])
    {
      v14 = [v1 status];
      v15 = v14;
    }

    else
    {
      v15 = objc_alloc_init(PDDPStatus);
      [(PDDPStatus *)v15 setCode:2];
      [(PDDPStatus *)v15 setKey:@"HandoutPublishError"];
      [(PDDPStatus *)v15 setMessage:@"Handout Publishing had an error"];
      v14 = v15;
    }

    v16 = sub_1001055FC(v14, 0);
    [v2 setPublishError:v16];
  }

  else
  {
    [v2 setPublishError:0];
  }

  v17 = [v1 objectId];
  [v2 setObjectID:v17];

  v18 = [v1 dateLastReviewed];
  v19 = sub_1001043D0(v18);
  [v2 setLastReviewedDate:v19];

  if ([v1 hasType] && objc_msgSend(v1, "type"))
  {
    v20 = [v1 type];
    v21 = v20;
    if (v20 == 2)
    {
      goto LABEL_15;
    }

    if (v20 != 1)
    {
      v23 = [NSString stringWithFormat:@"Unknown PDDPHandout_HandoutType: %ld", v20];
      CLSInitLog();
      v24 = CLSLogHandout;
      if (!os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
      {
LABEL_23:
        v26 = [NSException exceptionWithName:NSInvalidArgumentException reason:v23 userInfo:0];
        objc_exception_throw(v26);
      }

      *buf = 138543362;
      v28 = v23;
      v25 = "Failed to convert from PDDPHandout_HandoutType reason: %{public}@";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, v25, buf, 0xCu);
      goto LABEL_23;
    }
  }

  v21 = 1;
LABEL_15:
  [v2 setType:v21];
  if ([v1 hasVersion])
  {
    [v2 setVersion:{objc_msgSend(v1, "version")}];
  }

  return v2;
}

id sub_1000196F4(void *a1)
{
  v1 = a1;
  if ([v1 hasType])
  {
    v2 = sub_100019AEC([v1 type]);
    v3 = [CLSHandoutAttachment alloc];
    v4 = [v1 title];
    v5 = [v3 initWithType:v2 title:v4];

    v6 = [v1 objectId];
    [v5 setObjectID:v6];

    v7 = [v1 parentObjectId];
    [v5 setParentObjectID:v7];

    if ([v1 hasDateCreated])
    {
      v8 = [v1 dateCreated];
      v9 = sub_1001043D0(v8);
      [v5 setDateCreated:v9];
    }

    if ([v1 hasDateLastModified])
    {
      v10 = [v1 dateLastModified];
      v11 = sub_1001043D0(v10);
      [v5 setDateLastModified:v11];
    }

    if ([v1 hasAppBundleIdentifier])
    {
      v12 = [v1 appBundleIdentifier];
      [v5 setBundleIdentifier:v12];
    }

    if ([v1 hasAppName])
    {
      v13 = [v1 appName];
      [v5 setApplicationName:v13];
    }

    if ([v1 hasAppStoreIdentifier])
    {
      v14 = [v1 appStoreIdentifier];
      [v5 setStoreIdentifier:v14];
    }

    [v5 setDisplayOrder:{objc_msgSend(v1, "displayOrder")}];
    [v5 setLocked:{objc_msgSend(v1, "isLocked")}];
    v15 = [v1 contentStoreIdentifier];
    [v5 setContentStoreIdentifier:v15];

    [v1 timeExpectationInSeconds];
    [v5 setTimeExpectation:?];
    if ([v1 hasShareType])
    {
      [v5 setShareType:{sub_100019BE4(objc_msgSend(v1, "shareType"))}];
      if (![v1 hasPermissionType])
      {
        v24 = 0;
LABEL_25:

        goto LABEL_27;
      }

      [v5 setPermissionType:{sub_100019CE8(objc_msgSend(v1, "permissionType"))}];
    }

    if ([v1 hasContextType])
    {
      [v5 setContextType:{sub_100019DF8(objc_msgSend(v1, "contextType"))}];
    }

    if ([v1 hasUrl])
    {
      v16 = [NSURL alloc];
      v17 = [v1 url];
      v18 = [v16 initWithString:v17];
      [v5 setURL:v18];
    }

    if (v2 == 3)
    {
      v22 = [v1 appBundleIdentifier];
      [v5 setBundleIdentifier:v22];

      v23 = [v1 appStoreIdentifier];
      [v5 setStoreIdentifier:v23];
    }

    else if (v2 == 1)
    {
      v19 = [v1 contextPaths];
      [v5 setContextPath:v19];

      v20 = [v1 contextSummary];
      [v5 setContextSummary:v20];

      v21 = [v1 contextCustomTypeName];
      [v5 setContextCustomTypeName:v21];

      [v5 setContextSourceIsCatalog:{objc_msgSend(v1, "contextSourceIsCatalog")}];
    }

    v24 = v5;
    goto LABEL_25;
  }

  v24 = 0;
LABEL_27:

  return v24;
}

uint64_t sub_100019AEC(int a1)
{
  result = (a1 - 1);
  if (result >= 7)
  {
    v3 = [NSString stringWithFormat:@"Unknown PDDPHandoutAttachment_Type: %ld", a1];
    CLSInitLog();
    v4 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failed to convert from PDDPHandoutAttachment_Type reason: %{public}@", buf, 0xCu);
    }

    v5 = [NSException exceptionWithName:NSInvalidArgumentException reason:v3 userInfo:0];
    objc_exception_throw(v5);
  }

  return result;
}

uint64_t sub_100019BE4(int a1)
{
  result = (a1 - 1);
  if (result >= 3)
  {
    v3 = [[NSString alloc] initWithFormat:@"Unknown PDDPShareType: %ld", a1];
    CLSInitLog();
    v4 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failed to convert from PDDPShareType reason: %{public}@", buf, 0xCu);
    }

    v5 = [NSException exceptionWithName:NSInvalidArgumentException reason:v3 userInfo:0];
    objc_exception_throw(v5);
  }

  return result;
}

uint64_t sub_100019CE8(uint64_t a1)
{
  v1 = a1;
  if (a1 != 1)
  {
    if (a1 != 2)
    {
      v3 = [[NSString alloc] initWithFormat:@"Unknown PDDPPermissionType: %ld", a1];
      CLSInitLog();
      v4 = CLSLogHandout;
      if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v7 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failed to convert from PDDPHandoutAttachment_Type reason: %{public}@", buf, 0xCu);
      }

      v5 = [NSException exceptionWithName:NSInvalidArgumentException reason:v3 userInfo:0];
      objc_exception_throw(v5);
    }

    return 0;
  }

  return v1;
}

uint64_t sub_100019DF8(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 0x11)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

id sub_100019E08(void *a1)
{
  v1 = a1;
  v2 = [CLSHandoutRecipient alloc];
  v3 = [v1 classId];
  v4 = [v1 personId];
  v5 = [v2 initWithClassID:v3 personID:v4];

  v6 = [v1 appIdentifier];
  [v5 setAppIdentifier:v6];

  v7 = [v1 objectId];
  [v5 setObjectID:v7];

  v8 = [v1 parentObjectId];

  [v5 setParentObjectID:v8];

  return v5;
}

uint64_t sub_100019EFC(uint64_t result)
{
  if (result >= 4)
  {
    v1 = [NSString stringWithFormat:@"Unknown PDDPAssetReference_Type: %ld", result];
    CLSInitLog();
    v2 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v5 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Failed to convert from PDDPAssetReference_Type reason: %{public}@", buf, 0xCu);
    }

    v3 = [NSException exceptionWithName:NSInvalidArgumentException reason:v1 userInfo:0];
    objc_exception_throw(v3);
  }

  return result;
}

uint64_t sub_10001A000(uint64_t result)
{
  if (result >= 7)
  {
    v1 = [NSString stringWithFormat:@"Unknown PDDPAssetReference_ParentEntityType: %ld", result];
    CLSInitLog();
    v2 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v5 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Failed to convert from PDDPAssetReference_ParentEntityType reason: %{public}@", buf, 0xCu);
    }

    v3 = [NSException exceptionWithName:NSInvalidArgumentException reason:v1 userInfo:0];
    objc_exception_throw(v3);
  }

  return result;
}

PDDPStateChange *sub_10001A104(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PDDPStateChange);
  v3 = [v1 targetObjectID];
  [(PDDPStateChange *)v2 setTargetObjectId:v3];

  v4 = [v1 targetEntityName];
  v5 = sub_100105220(v4);
  [(PDDPStateChange *)v2 setTargetEntityName:v5];

  v6 = [v1 ownerPersonID];
  [(PDDPStateChange *)v2 setTargetOwnerPersonId:v6];

  v7 = [v1 targetClassID];
  v46 = v2;
  [(PDDPStateChange *)v2 setTargetClassId:v7];

  v8 = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:1];
  v9 = [v1 changedDomains];
  v10 = [v9 allObjects];
  v45 = v8;
  v55 = v8;
  v11 = [NSArray arrayWithObjects:&v55 count:1];
  v12 = [v10 sortedArrayUsingDescriptors:v11];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v12;
  v49 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v49)
  {
    v48 = *v51;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v51 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [v1 stateForDomain:{objc_msgSend(*(*(&v50 + 1) + 8 * i), "integerValue")}];
        if (v14)
        {
          v15 = [v1 recipientPersonID];
          v16 = v14;
          v17 = v15;
          v18 = objc_alloc_init(PDDPStateChangePayload);
          v19 = [v16 parentObjectID];
          v20 = [v16 ownerPersonID];
          v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%@:%ld", v19, v20, [v16 domain]);
          v22 = [v21 sha224];
          [(PDDPStateChangePayload *)v18 setObjectId:v22];

          v23 = objc_alloc_init(PDDPStateChangeParticipants);
          [(PDDPStateChangePayload *)v18 setParticipants:v23];

          v24 = [(PDDPStateChangePayload *)v18 participants];
          [v24 setRecipientPersonId:v17];

          v25 = v16;
          if ([v25 hasServerMetadata])
          {
            v26 = objc_alloc_init(PDDPStateChangeMeta);
            v27 = [v25 serverExecutionID];
            [(PDDPStateChangeMeta *)v26 setExecutionId:v27];

            v28 = [v25 serverETag];
            [(PDDPStateChangeMeta *)v26 setEtag:v28];

            v29 = objc_alloc_init(PDDPStatus);
            [(PDDPStateChangeMeta *)v26 setStatus:v29];

            v30 = [v25 serverStatus];
            v31 = [(PDDPStateChangeMeta *)v26 status];
            [v31 setCode:v30];
          }

          else
          {
            v26 = 0;
          }

          [(PDDPStateChangePayload *)v18 setMeta:v26];
          -[PDDPStateChangePayload setDomain:](v18, "setDomain:", [v25 domain]);
          -[PDDPStateChangePayload setDomainVersion:](v18, "setDomainVersion:", [v25 domainVersion]);
          -[PDDPStateChangePayload setState:](v18, "setState:", [v25 state]);
          -[PDDPStateChangePayload setFlags:](v18, "setFlags:", [v25 flags]);
          v32 = [v25 note];
          [(PDDPStateChangePayload *)v18 setNote:v32];

          v33 = [v25 assetURL];

          if (v33)
          {
            v34 = [v25 assetURL];
            v35 = [v34 absoluteString];
            [(PDDPStateChangePayload *)v18 setAssetUrl:v35];
          }

          v36 = [v25 info];
          v37 = sub_100104B40(v36);
          [(PDDPStateChangePayload *)v18 setInfos:v37];

          if (v18)
          {
            v38 = [v1 senderPersonID];
            v39 = [(PDDPStateChangePayload *)v18 participants];
            [v39 setSenderPersonId:v38];

            [(PDDPStateChange *)v46 addStateChangePayloads:v18];
            v40 = [v25 dateCreated];
            v41 = sub_10010426C(v40);
            [(PDDPStateChange *)v46 setDateCreated:v41];

            v42 = [v25 dateLastModified];
            v43 = sub_10010426C(v42);
            [(PDDPStateChange *)v46 setDateLastModified:v43];
          }
        }
      }

      v49 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v49);
  }

  return v46;
}

id sub_10001A6C0(void *a1)
{
  v1 = a1;
  v41 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [v1 stateChangePayloads];
  v2 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v2)
  {
    v3 = v2;
    v40 = *v43;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v42 + 1) + 8 * i);
        v6 = [v1 targetEntityName];
        v7 = sub_100104ED0(v6);

        v8 = [CLSCollaborationState alloc];
        v9 = [v1 targetObjectId];
        v10 = [v1 targetOwnerPersonId];
        v11 = [v8 initForObjectWithID:v9 targetClass:v7 ownerPersonID:v10 domain:objc_msgSend(v5 state:"domain") flags:{objc_msgSend(v5, "state"), objc_msgSend(v5, "flags")}];

        [v11 setDomainVersion:{objc_msgSend(v5, "domainVersion")}];
        v12 = [v5 note];
        [v11 setNote:v12];

        v13 = [v1 targetClassId];
        [v11 setClassID:v13];

        if ([v5 hasAssetUrl])
        {
          v14 = [v5 assetUrl];
          v15 = [NSURL URLWithString:v14];
          [v11 setAssetURL:v15];
        }

        v16 = [v5 infos];
        v17 = sub_100104D28(v16);
        [v11 setInfo:v17];

        if ([v5 hasMeta])
        {
          v18 = [v5 meta];
          v19 = [v18 executionId];
          [v11 setServerExecutionID:v19];

          v20 = [v5 meta];
          v21 = [v20 etag];
          [v11 setServerETag:v21];

          v22 = [v5 meta];
          LODWORD(v21) = [v22 hasStatus];

          if (v21)
          {
            v23 = [v5 meta];
            v24 = [v23 status];
            [v11 setServerStatus:{objc_msgSend(v24, "code")}];
          }
        }

        if ([v5 hasParticipants])
        {
          v25 = [v5 participants];
          v26 = [v25 senderPersonId];
          [v11 setSenderPersonID:v26];

          v27 = [v5 participants];
          LODWORD(v26) = [v27 hasRecipientPersonId];

          if (v26)
          {
            v28 = [v5 participants];
            v29 = [v28 recipientPersonId];
            [v11 setRecipientPersonID:v29];
          }
        }

        if ([v1 hasDateCreated] && (objc_msgSend(v1, "dateCreated"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "hasTime"), v30, v31))
        {
          v32 = [v1 dateCreated];
          v33 = sub_1001043D0(v32);
          [v11 setDateCreated:v33];
        }

        else
        {
          v32 = +[NSDate date];
          [v11 setDateCreated:v32];
        }

        if ([v1 hasDateLastModified] && (objc_msgSend(v1, "dateLastModified"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "hasTime"), v34, v35))
        {
          v36 = [v1 dateLastModified];
          v37 = sub_1001043D0(v36);
          [v11 setDateLastModified:v37];
        }

        else
        {
          v36 = +[NSDate date];
          [v11 setDateLastModified:v36];
        }

        [v41 addObject:v11];
      }

      v3 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v3);
  }

  return v41;
}

PDDPSurvey *sub_10001ABBC(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PDDPSurvey);
  v3 = [v1 objectID];
  [(PDDPSurvey *)v2 setObjectId:v3];

  v4 = [v1 parentObjectID];
  [(PDDPSurvey *)v2 setParentObjectId:v4];

  v5 = [v1 title];
  [(PDDPSurvey *)v2 setTitle:v5];

  v6 = [v1 authorID];
  [(PDDPSurvey *)v2 setCreatedBy:v6];

  -[PDDPSurvey setType:](v2, "setType:", [v1 type] == 1);
  v7 = [v1 dateCreated];
  v8 = sub_10010426C(v7);
  [(PDDPSurvey *)v2 setDateCreated:v8];

  v9 = [v1 dateLastModified];
  v10 = sub_10010426C(v9);
  [(PDDPSurvey *)v2 setDateLastModified:v10];

  v11 = [v1 serverETag];
  [(PDDPSurvey *)v2 setEtag:v11];

  v12 = [v1 studentFirstSubmissionDate];
  v13 = sub_10010426C(v12);
  [(PDDPSurvey *)v2 setStudentDateFirstSubmitted:v13];

  v14 = [v1 teacherLastModifiedDate];

  v15 = sub_10010426C(v14);
  [(PDDPSurvey *)v2 setTeacherDateLastModified:v15];

  return v2;
}

PDDPSurveyStep *sub_10001AD90(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(PDDPSurveyStep);
  v9 = [v5 objectID];
  [(PDDPSurveyStep *)v8 setObjectId:v9];

  v10 = [v5 parentObjectID];
  [(PDDPSurveyStep *)v8 setParentObjectId:v10];

  -[PDDPSurveyStep setVersion:](v8, "setVersion:", [v5 version]);
  -[PDDPSurveyStep setSurveyStepType:](v8, "setSurveyStepType:", [v5 type] == 1);
  v11 = [v5 dateCreated];
  v12 = sub_10010426C(v11);
  [(PDDPSurveyStep *)v8 setDateCreated:v12];

  v13 = [v5 dateLastModified];
  v14 = sub_10010426C(v13);
  [(PDDPSurveyStep *)v8 setDateLastModified:v14];

  v15 = [(PDDPSurveyStep *)v8 surveyStepType];
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = v8;
      v17 = v6;
      v18 = v7;
      v19 = v5;
      v20 = [v19 questionText];
      [(PDDPSurveyStep *)v16 setQuestionText:v20];

      v21 = [v19 displayOrder];
      [(PDDPSurveyStep *)v16 setDisplayOrder:v21];
      v22 = v17;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = 2;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = 3;
          }

          else
          {
            v23 = 0;
          }
        }
      }

      [(PDDPSurveyStep *)v16 setAnswerFormatType:v23];
      v25 = [v22 objectID];
      [(PDDPSurveyStep *)v16 setAnswerFormatObjectId:v25];

      v26 = [(PDDPSurveyStep *)v16 answerFormatType];
      if (v26 > 1)
      {
        if (v26 == 3)
        {
          v53 = v22;
          v54 = v16;
          v55 = [v53 type];
          if (v55 == 2)
          {
            v56 = 2;
          }

          else
          {
            v56 = 1;
          }

          if (v55)
          {
            v57 = v56;
          }

          else
          {
            v57 = 0;
          }

          [(PDDPSurveyStep *)v54 setOpenResponseType:v57];
          [v53 teacherProvidedText];
          v58 = v22;
          v59 = v16;
          v61 = v60 = v7;
          [(PDDPSurveyStep *)v54 setOpenResponseTeacherProvidedText:v61];

          v7 = v60;
          v16 = v59;
          v22 = v58;
          -[PDDPSurveyStep setOpenResponseMinimumTextLength:](v54, "setOpenResponseMinimumTextLength:", [v53 minimumTextLength]);
          -[PDDPSurveyStep setOpenResponseMaximumTextLength:](v54, "setOpenResponseMaximumTextLength:", [v53 maximumTextLength]);
          -[PDDPSurveyStep setOpenResponseAllowMedia:](v54, "setOpenResponseAllowMedia:", [v53 allowsMultimedia]);
        }

        else if (v26 == 2)
        {
          v45 = v18;
          v46 = v16;
          v47 = v22;
          -[PDDPSurveyStep setSliderType:](v46, "setSliderType:", [v47 type] == 1);
          v48 = [(PDDPSurveyStep *)v46 sliderType];
          if (v48)
          {
            if (v48 == 1)
            {
              -[PDDPSurveyStep setSliderMinimum:](v46, "setSliderMinimum:", [v47 minimum]);
              -[PDDPSurveyStep setSliderMaximum:](v46, "setSliderMaximum:", [v47 maximum]);
              v49 = [v47 leadingValueLabel];
              [(PDDPSurveyStep *)v46 setSliderMinimumLabel:v49];

              v50 = [v47 midValueLabel];
              [(PDDPSurveyStep *)v46 setSliderMiddleLabel:v50];

              v51 = [v47 trailingValueLabel];
              [(PDDPSurveyStep *)v46 setSliderMaximumLabel:v51];
            }
          }

          else
          {
            CLSInitLog();
            v62 = CLSLogHandout;
            if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "Got an unknown slider type. Ignoring it.", buf, 2u);
            }
          }

          v18 = v45;
        }
      }

      else if (v26)
      {
        if (v26 == 1)
        {
          v68 = v7;
          v69 = v8;
          v70 = v6;
          v71 = v5;
          v67 = v16;
          v27 = v16;
          v66 = v18;
          v28 = v18;
          v65 = v22;
          v29 = [v22 type];
          if (v29 >= 5)
          {
            v30 = 1;
          }

          else
          {
            v30 = v29;
          }

          [(PDDPSurveyStep *)v27 setMultipleChoiceType:v30, v27];
          v31 = objc_opt_new();
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v32 = v28;
          v33 = [v32 countByEnumeratingWithState:&v72 objects:buf count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v73;
            do
            {
              for (i = 0; i != v34; i = i + 1)
              {
                if (*v73 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v72 + 1) + 8 * i);
                v38 = objc_opt_new();
                v39 = [v37 objectID];
                [v38 setObjectId:v39];

                v40 = [v37 dateCreated];
                v41 = sub_10010426C(v40);
                [v38 setDateCreated:v41];

                v42 = [v37 dateLastModified];
                v43 = sub_10010426C(v42);
                [v38 setDateLastModified:v43];

                v44 = [v37 itemText];
                [v38 setText:v44];

                [v38 setDisplayOrder:{objc_msgSend(v37, "displayOrder")}];
                [v31 addObject:v38];
              }

              v34 = [v32 countByEnumeratingWithState:&v72 objects:buf count:16];
            }

            while (v34);
          }

          [v64 setOptionItems:v31];
          v6 = v70;
          v5 = v71;
          v7 = v68;
          v8 = v69;
          v18 = v66;
          v16 = v67;
          v22 = v65;
        }
      }

      else
      {
        CLSInitLog();
        v52 = CLSLogHandout;
        if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Got an unknown answer format type. Ignoring it.", buf, 2u);
        }
      }
    }
  }

  else
  {
    CLSInitLog();
    v24 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Got an unknown survey step type. Ignoring it.", buf, 2u);
    }
  }

  return v8;
}

PDDPSurveyStepAnswer *sub_10001B4AC(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PDDPSurveyStepAnswer);
  v3 = [v1 objectID];
  [(PDDPSurveyStepAnswer *)v2 setObjectId:v3];

  v4 = [v1 dateCreated];
  v5 = sub_10010426C(v4);
  [(PDDPSurveyStepAnswer *)v2 setDateCreated:v5];

  v6 = [v1 dateLastModified];
  v7 = sub_10010426C(v6);
  [(PDDPSurveyStepAnswer *)v2 setDateLastModified:v7];

  v8 = [v1 answerType];
  if (v8 > 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = dword_1001A8378[v8];
  }

  [(PDDPSurveyStepAnswer *)v2 setAnswerType:v9];
  v10 = [v1 questionID];
  [(PDDPSurveyStepAnswer *)v2 setSurveyStepId:v10];

  v11 = [v1 surveyID];
  [(PDDPSurveyStepAnswer *)v2 setSurveyId:v11];

  v12 = [v1 responderPersonID];
  [(PDDPSurveyStepAnswer *)v2 setCreatedBy:v12];

  v13 = [(PDDPSurveyStepAnswer *)v2 answerType];
  if (v13 > 1)
  {
    if (v13 == 3)
    {
      [v1 continuousSliderValue];
      [(PDDPSurveyStepAnswer *)v2 setContinuousSliderAnswerValue:?];
    }

    else if (v13 == 2)
    {
      v14 = [v1 textResponse];
      [(PDDPSurveyStepAnswer *)v2 setTextAnswerValue:v14];
    }

    goto LABEL_15;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      -[PDDPSurveyStepAnswer setMultipleChoiceSelectedIndexValue:](v2, "setMultipleChoiceSelectedIndexValue:", [v1 selectedIndex]);
    }

LABEL_15:
    v16 = v2;
    goto LABEL_16;
  }

  CLSInitLog();
  v15 = CLSLogHandout;
  if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
  {
    v18[0] = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Got an unknown answer type. Ignoring it.", v18, 2u);
  }

  v16 = 0;
LABEL_16:

  return v16;
}

id sub_10001B6E8(void *a1)
{
  v1 = a1;
  v2 = [CLSSurveyAnswerItem alloc];
  v3 = [v1 surveyId];
  v4 = [v1 surveyStepId];
  v5 = [v1 createdBy];
  v6 = [v2 initWithSurveyID:v3 questionID:v4 responderID:v5];

  v7 = [v1 objectId];
  [v6 setObjectID:v7];

  v8 = [v1 answerType];
  if (v8 > 3)
  {
    v9 = 2;
  }

  else
  {
    v9 = qword_1001A8388[v8];
  }

  [v6 setAnswerType:v9];
  v10 = [v6 answerType];
  if (v10 == 1)
  {
    [v1 continuousSliderAnswerValue];
    [v6 setContinuousSliderValue:?];
    goto LABEL_10;
  }

  if (v10 == 3)
  {
    v11 = [v1 textAnswerValue];
    [v6 setTextResponse:v11];

    goto LABEL_10;
  }

  if (v10 == 2)
  {
    [v6 setSelectedIndex:{objc_msgSend(v1, "multipleChoiceSelectedIndexValue")}];
LABEL_10:
    [v6 setState:2];
    [v6 setAction:0];
    v12 = [v1 dateCreated];
    v13 = sub_1001043D0(v12);
    [v6 setDateCreated:v13];

    v14 = [v1 dateLastModified];
    v15 = sub_1001043D0(v14);
    [v6 setDateLastModified:v15];

    v16 = v6;
    goto LABEL_14;
  }

  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Unknown CLSAnswerType: %ld", [v6 answerType]);
  CLSInitLog();
  v18 = CLSLogHandout;
  if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v21 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Failed to convert from PDDPSurveyAnswerItem reason: %{public}@", buf, 0xCu);
  }

  v16 = 0;
LABEL_14:

  return v16;
}

uint64_t sub_10001B994(uint64_t result)
{
  if (result != 1)
  {
    v1 = [NSString stringWithFormat:@"Unknown PDDPSurvey_SurveyType: %ld", result];
    CLSInitLog();
    v2 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v5 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Failed to convert from PDDPSurvey_SurveyType reason: %{public}@", buf, 0xCu);
    }

    v3 = [NSException exceptionWithName:NSInvalidArgumentException reason:v1 userInfo:0];
    objc_exception_throw(v3);
  }

  return result;
}

id sub_10001BA94(void *a1)
{
  v1 = a1;
  if ([v1 hasType])
  {
    sub_10001B994([v1 type]);
    v2 = [v1 createdBy];
    v3 = [[CLSSurvey alloc] initWithType:1 authorID:v2];
    v4 = [v1 dateCreated];
    v5 = sub_1001043D0(v4);
    [v3 setDateCreated:v5];

    v6 = [v1 dateLastModified];
    v7 = sub_1001043D0(v6);
    [v3 setDateLastModified:v7];

    v8 = [v1 title];
    [v3 setTitle:v8];

    v9 = [v1 objectId];
    [v3 setObjectID:v9];

    v10 = [v1 parentObjectId];
    [v3 setParentObjectID:v10];

    [v3 setSurveyUpdateStatus:2];
    v11 = [v1 etag];
    [v3 setServerETag:v11];

    v12 = [v1 teacherDateLastModified];
    v13 = sub_1001043D0(v12);
    [v3 setTeacherLastModifiedDate:v13];

    v14 = [v1 studentDateFirstSubmitted];
    v15 = sub_1001043D0(v14);
    [v3 setStudentFirstSubmissionDate:v15];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10001BC8C(void *a1)
{
  v1 = a1;
  if ([v1 hasType])
  {
    sub_10001B994([v1 type]);
    v2 = [v1 createdBy];
    v3 = [[CLSArchivedSurvey alloc] initWithType:1 authorID:v2];
    v4 = [v1 dateCreated];
    v5 = sub_1001043D0(v4);
    [v3 setDateCreated:v5];

    v6 = [v1 dateLastModified];
    v7 = sub_1001043D0(v6);
    [v3 setDateLastModified:v7];

    v8 = [v1 title];
    [v3 setTitle:v8];

    v9 = [v1 objectId];
    v10 = sub_10001BE18(v9);
    [v3 setObjectID:v10];

    v11 = [v1 parentObjectId];
    v12 = sub_10001BE18(v11);
    [v3 setParentObjectID:v12];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10001BE18(void *a1)
{
  v1 = [a1 copy];
  if (([v1 hasPrefix:@"HA_"] & 1) == 0)
  {
    v2 = [@"HA_" stringByAppendingString:v1];

    v1 = v2;
  }

  return v1;
}

uint64_t sub_10001BE80(uint64_t result)
{
  if (result != 1)
  {
    v1 = [NSString stringWithFormat:@"Unknown PDDPSurveyStep_SurveyStepType: %ld", result];
    CLSInitLog();
    v2 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v5 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Failed to convert from PDDPSurveyStep_SurveyStepType reason: %{public}@", buf, 0xCu);
    }

    v3 = [NSException exceptionWithName:NSInvalidArgumentException reason:v1 userInfo:0];
    objc_exception_throw(v3);
  }

  return result;
}

uint64_t sub_10001BF80(int a1)
{
  switch(a1)
  {
    case 2:
      return 1;
    case 3:
      return 3;
    case 0:
      v2 = [NSString stringWithFormat:@"Unknown PDDPSurveyStep_AnswerFormatType: %ld", 0];
      CLSInitLog();
      v3 = CLSLogHandout;
      if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v6 = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Failed to convert from PDDPSurveyStep_AnswerFormatType reason: %{public}@", buf, 0xCu);
      }

      v4 = [NSException exceptionWithName:NSInvalidArgumentException reason:v2 userInfo:0];
      objc_exception_throw(v4);
  }

  return 2;
}

uint64_t sub_10001C098(int a1)
{
  result = 1;
  if (a1 <= 2)
  {
    if (a1 == 2)
    {
      return 2;
    }

    else if (!a1)
    {
      v4 = [NSString stringWithFormat:@"Unknown PDDPSurveyStep_MultipleChoiceType: %ld", 0];
      CLSInitLog();
      v5 = CLSLogHandout;
      if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v8 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Failed to convert from PDDPSurveyStep_MultipleChoiceType reason: %{public}@", buf, 0xCu);
      }

      v6 = [NSException exceptionWithName:NSInvalidArgumentException reason:v4 userInfo:0];
      objc_exception_throw(v6);
    }
  }

  else
  {
    v3 = 4;
    if (a1 != 4)
    {
      v3 = 1;
    }

    if (a1 == 3)
    {
      return 3;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t sub_10001C1C4(uint64_t result)
{
  if (!result)
  {
    v1 = [NSString stringWithFormat:@"Unknown PDDPSurveyStep_SliderType: %ld", 0];
    CLSInitLog();
    v2 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v5 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Failed to convert from PDDPSurveyStep_SliderType reason: %{public}@", buf, 0xCu);
    }

    v3 = [NSException exceptionWithName:NSInvalidArgumentException reason:v1 userInfo:0];
    objc_exception_throw(v3);
  }

  return result;
}

uint64_t sub_10001C2B8(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  if (!a1)
  {
    v2 = [NSString stringWithFormat:@"Unknown PDDPSurveyStep_OpenResponseType: %ld", 0];
    CLSInitLog();
    v3 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Failed to convert from PDDPSurveyStep_OpenResponseType reason: %{public}@", buf, 0xCu);
    }

    v4 = [NSException exceptionWithName:NSInvalidArgumentException reason:v2 userInfo:0];
    objc_exception_throw(v4);
  }

  return 1;
}

id sub_10001C3C0(void *a1)
{
  v1 = a1;
  if ([v1 hasSurveyStepType])
  {
    sub_10001BE80([v1 surveyStepType]);
    v2 = objc_alloc_init(CLSQuestionStep);
    [v2 setVersion:{objc_msgSend(v1, "version")}];
    v37 = v2;
    [v2 setType:1];
    v3 = [v1 objectId];
    [v2 setObjectID:v3];

    v4 = [v1 parentObjectId];
    [v2 setParentObjectID:v4];

    v5 = [v1 questionText];
    [v2 setQuestionText:v5];

    [v2 setDisplayOrder:{objc_msgSend(v1, "displayOrder")}];
    v6 = v1;
    v7 = sub_10001BF80([v6 answerFormatType]);
    if (v7 == 1)
    {
      sub_10001C1C4([v6 sliderType]);
      v8 = objc_alloc_init(CLSSliderAnswerFormat);
      [v6 sliderMinimum];
      [v8 setMinimum:v22];
      [v6 sliderMaximum];
      [v8 setMaximum:v23];
      v21 = v6;
      v24 = [v6 sliderMinimumLabel];
      [v8 setLeadingValueLabel:v24];

      v25 = [v6 sliderMiddleLabel];
      [v8 setMidValueLabel:v25];

      v26 = [v6 sliderMaximumLabel];
      [v8 setTrailingValueLabel:v26];

      if (v8)
      {
        v27 = [v6 answerFormatObjectId];
        [v8 setObjectID:v27];

        v28 = [v6 objectId];
        [v8 setParentObjectID:v28];

        v29 = v8;
      }
    }

    else if (v7 == 2)
    {
      v8 = [[CLSMultipleChoiceAnswerFormat alloc] initWithType:{sub_10001C098(objc_msgSend(v6, "multipleChoiceType"))}];
      v36 = v6;
      v9 = [v6 answerFormatObjectId];
      [v8 setObjectID:v9];

      v10 = [v6 objectId];
      [v8 setParentObjectID:v10];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v11 = [v6 optionItems];
      v12 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v12)
      {
        v13 = *v39;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v39 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v38 + 1) + 8 * i);
            v16 = [CLSMultipleChoiceAnswerItem alloc];
            v17 = [v15 text];
            v18 = [v16 initWithText:v17];

            v19 = [v15 objectId];
            [v18 setObjectID:v19];

            v20 = [v8 objectID];
            [v18 setParentObjectID:v20];

            [v18 setDisplayOrder:{objc_msgSend(v15, "displayOrder")}];
            [v8 addAnswerItem:v18];
          }

          v12 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v12);
      }

      v21 = v36;
    }

    else
    {
      v30 = sub_10001C2B8([v6 openResponseType]);
      v31 = [CLSOpenResponseAnswerFormat alloc];
      v21 = v6;
      v32 = [v6 openResponseTeacherProvidedText];
      v8 = [v31 initWithType:v30 starterText:v32 minimumLength:objc_msgSend(v6 maximumLength:{"openResponseMinimumTextLength"), objc_msgSend(v6, "openResponseMaximumTextLength")}];

      v33 = [v6 answerFormatObjectId];
      [v8 setObjectID:v33];

      v34 = [v6 objectId];
      [v8 setParentObjectID:v34];

      [v8 setAllowsMultimedia:{objc_msgSend(v6, "openResponseAllowMedia")}];
    }

    [v37 setAnswerFormat:v8];
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

id sub_10001C8D4(void *a1)
{
  v1 = a1;
  if ([v1 hasSurveyStepType])
  {
    sub_10001BE80([v1 surveyStepType]);
    v2 = objc_alloc_init(CLSArchivedQuestionStep);
    [v2 setVersion:{objc_msgSend(v1, "version")}];
    v48 = v2;
    [v2 setType:1];
    v47 = v1;
    v3 = [v1 objectId];
    v4 = sub_10001BE18(v3);
    [v2 setObjectID:v4];

    v5 = [v1 parentObjectId];
    v6 = sub_10001BE18(v5);
    [v2 setParentObjectID:v6];

    v7 = [v1 questionText];
    [v2 setQuestionText:v7];

    [v2 setDisplayOrder:{objc_msgSend(v1, "displayOrder")}];
    v8 = v1;
    v9 = sub_10001BF80([v8 answerFormatType]);
    if (v9 == 1)
    {
      sub_10001C1C4([v8 sliderType]);
      v10 = objc_alloc_init(CLSArchivedSliderAnswerFormat);
      [v8 sliderMinimum];
      [v10 setMinimum:v28];
      [v8 sliderMaximum];
      [v10 setMaximum:v29];
      v27 = v8;
      v30 = [v8 sliderMinimumLabel];
      [v10 setLeadingValueLabel:v30];

      v31 = [v8 sliderMaximumLabel];
      [v10 setTrailingValueLabel:v31];

      v32 = [v8 sliderMaximumLabel];
      [v10 setMidValueLabel:v32];

      if (v10)
      {
        v33 = [v8 answerFormatObjectId];
        v34 = sub_10001BE18(v33);
        [v10 setObjectID:v34];

        v35 = [v8 objectId];
        v36 = sub_10001BE18(v35);
        [v10 setParentObjectID:v36];

        v37 = v10;
      }
    }

    else if (v9 == 2)
    {
      v10 = [[CLSArchivedMultipleChoiceAnswerFormat alloc] initWithType:{sub_10001C098(objc_msgSend(v8, "multipleChoiceType"))}];
      v46 = v8;
      v11 = [v8 answerFormatObjectId];
      v12 = sub_10001BE18(v11);
      [v10 setObjectID:v12];

      v13 = [v8 objectId];
      v14 = sub_10001BE18(v13);
      [v10 setParentObjectID:v14];

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v15 = [v8 optionItems];
      v16 = [v15 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v16)
      {
        v17 = *v50;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v50 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v49 + 1) + 8 * i);
            v20 = [CLSArchivedMultipleChoiceAnswerItem alloc];
            v21 = [v19 text];
            v22 = [v20 initWithText:v21];

            v23 = [v19 objectId];
            v24 = sub_10001BE18(v23);
            [v22 setObjectID:v24];

            v25 = [v10 objectID];
            v26 = sub_10001BE18(v25);
            [v22 setParentObjectID:v26];

            [v22 setDisplayOrder:{objc_msgSend(v19, "displayOrder")}];
            [v10 addAnswerItem:v22];
          }

          v16 = [v15 countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v16);
      }

      v27 = v46;
    }

    else
    {
      v38 = sub_10001C2B8([v8 openResponseType]);
      v39 = [CLSArchivedOpenResponseAnswerFormat alloc];
      v27 = v8;
      v40 = [v8 openResponseTeacherProvidedText];
      v10 = [v39 initWithType:v38 starterText:v40 minimumLength:objc_msgSend(v8 maximumLength:{"openResponseMinimumTextLength"), objc_msgSend(v8, "openResponseMaximumTextLength")}];

      v41 = [v8 answerFormatObjectId];
      v42 = sub_10001BE18(v41);
      [v10 setObjectID:v42];

      v43 = [v8 objectId];
      v44 = sub_10001BE18(v43);
      [v10 setParentObjectID:v44];

      [v10 setAllowsMultimedia:{objc_msgSend(v8, "openResponseAllowMedia")}];
    }

    [v48 setArchivedAnswerFormat:v10];
    v1 = v47;
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

PDDPCollection *sub_10001CE94(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PDDPCollection);
  v3 = [v1 location];
  [(PDDPCollection *)v2 setCollectionItemLocation:v3];

  v4 = [v1 dateCreated];
  v5 = sub_10010426C(v4);
  [(PDDPCollection *)v2 setDateCreated:v5];

  v6 = [v1 dateLastModified];
  v7 = sub_10010426C(v6);
  [(PDDPCollection *)v2 setDateLastModified:v7];

  v8 = [v1 dateClassCreated];
  v9 = sub_10010426C(v8);
  [(PDDPCollection *)v2 setDateClassCreated:v9];

  v10 = [v1 name];
  [(PDDPCollection *)v2 setDisplayName:v10];

  v11 = [v1 iconID];
  [(PDDPCollection *)v2 setIconIdentifier:v11];

  v12 = [v1 type];
  if (v12 >= 6 || ((0x27u >> v12) & 1) == 0)
  {
    v15 = [NSString stringWithFormat:@"Unknown CLSCollectionType: %ld", v12];
    CLSInitLog();
    v16 = CLSLogCollection;
    if (os_log_type_enabled(CLSLogCollection, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Failed to convert from CLSCollectionType reason: %{public}@", buf, 0xCu);
    }

    v17 = [NSException exceptionWithName:NSInvalidArgumentException reason:v15 userInfo:0];
    objc_exception_throw(v17);
  }

  [(PDDPCollection *)v2 setType:dword_1001A83A8[v12]];
  v13 = [v1 objectID];

  [(PDDPCollection *)v2 setObjectId:v13];

  return v2;
}

id sub_10001D104(void *a1)
{
  v1 = a1;
  v2 = [v1 displayName];
  if (!v2)
  {
    CLSInitLog();
    v3 = CLSLogCollection;
    if (os_log_type_enabled(CLSLogCollection, OS_LOG_TYPE_ERROR))
    {
      v18 = v3;
      v19 = [v1 objectId];
      *buf = 138543362;
      v24 = v19;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Collection with ID: %{public}@ has a null displayName", buf, 0xCu);
    }

    v2 = &stru_100206880;
  }

  v4 = [CLSCollection alloc];
  v5 = [v1 objectId];
  v6 = [v1 collectionItemLocation];
  v7 = [v1 type];
  if (v7 >= 4)
  {
    v20 = [NSString stringWithFormat:@"Unknown PDDPCollection_Type: %ld", v7];
    CLSInitLog();
    v21 = CLSLogCollection;
    if (os_log_type_enabled(CLSLogCollection, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Failed to convert from PDDPCollection_Type reason: %{public}@", buf, 0xCu);
    }

    v22 = [NSException exceptionWithName:NSInvalidArgumentException reason:v20 userInfo:0];
    objc_exception_throw(v22);
  }

  v8 = qword_1001A83C0[v7];
  v9 = [v1 iconIdentifier];
  v10 = [v4 initWithObjectID:v5 name:v2 location:v6 type:v8 icon:v9];

  v11 = [v1 dateCreated];
  v12 = sub_1001043D0(v11);
  [v10 setDateCreated:v12];

  v13 = [v1 dateLastModified];
  v14 = sub_1001043D0(v13);
  [v10 setDateLastModified:v14];

  v15 = [v1 dateClassCreated];
  v16 = sub_1001043D0(v15);
  [v10 setDateClassCreated:v16];

  [v10 setAppIdentifier:@"com.apple.schoolwork.ClassKitApp"];

  return v10;
}

uint64_t sub_10001D3F0(unsigned int a1)
{
  if (a1 >= 3)
  {
    v2 = [NSString stringWithFormat:@"Unknown PDDPCollectionItem_Type: %ld", a1];
    CLSInitLog();
    v3 = CLSLogCollection;
    if (os_log_type_enabled(CLSLogCollection, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Failed to convert from PDDPCollectionItem_Type reason: %{public}@", buf, 0xCu);
    }

    v4 = [NSException exceptionWithName:NSInvalidArgumentException reason:v2 userInfo:0];
    objc_exception_throw(v4);
  }

  return qword_1001A83E0[a1];
}

id sub_10001D4FC(void *a1)
{
  v1 = [a1 copy];
  if ([v1 hasPrefix:@"HA_"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"HA_", "length")}];

    v1 = v2;
  }

  return v1;
}

PDDPCollectionItem *sub_10001D56C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PDDPCollectionItem);
  v3 = [v1 parentObjectID];
  [(PDDPCollectionItem *)v2 setCollectionId:v3];

  v4 = [v1 dateCreated];
  v5 = sub_10010426C(v4);
  [(PDDPCollectionItem *)v2 setDateCreated:v5];

  v6 = [v1 dateLastModified];
  v7 = sub_10010426C(v6);
  [(PDDPCollectionItem *)v2 setDateLastModified:v7];

  v8 = objc_opt_new();
  v9 = [v1 referenceObjectID];
  v10 = sub_10001D4FC(v9);

  [v8 addObject:v10];
  [(PDDPCollectionItem *)v2 setItemIds:v8];
  v11 = [v1 type];

  if (v11)
  {
    if (v11 == 2)
    {
      v12 = 1;
    }

    else
    {
      if (v11 != 3)
      {
        v14 = [NSString stringWithFormat:@"Unknown CLSCollectionItemType: %ld", v11];
        CLSInitLog();
        v15 = CLSLogCollection;
        if (os_log_type_enabled(CLSLogCollection, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v18 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Failed to convert from CLSCollectionItemType reason: %{public}@", buf, 0xCu);
        }

        v16 = [NSException exceptionWithName:NSInvalidArgumentException reason:v14 userInfo:0];
        objc_exception_throw(v16);
      }

      v12 = 2;
    }
  }

  else
  {
    v12 = 0;
  }

  [(PDDPCollectionItem *)v2 setType:v12];

  return v2;
}

id sub_10001D7AC(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [v1 itemIds];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [[CLSCollectionItem alloc] initWithType:{sub_10001D3F0(objc_msgSend(v1, "type"))}];
        v10 = [v1 collectionId];
        [v9 setParentObjectID:v10];

        v11 = sub_10001BE18(v8);
        [v9 setReferenceObjectID:v11];

        v12 = [v1 dateCreated];
        v13 = sub_1001043D0(v12);
        [v9 setDateCreated:v13];

        v14 = [v1 dateLastModified];
        v15 = sub_1001043D0(v14);
        [v9 setDateLastModified:v15];

        [v9 setType:{sub_10001D3F0(objc_msgSend(v1, "type"))}];
        [v9 setAppIdentifier:@"com.apple.schoolwork.ClassKitApp"];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v16 = [v2 copy];

  return v16;
}

id sub_10001D9F0(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(CLSArchivedHandout);
  v3 = [v1 objectId];
  v4 = sub_10001BE18(v3);
  [v2 setObjectID:v4];

  v5 = [v1 dateCreated];
  v6 = sub_1001043D0(v5);
  [v2 setDateCreated:v6];

  v7 = [v1 dateLastModified];
  v8 = sub_1001043D0(v7);
  [v2 setDateLastModified:v8];

  v9 = [v1 dateOfPublication];
  v10 = sub_1001043D0(v9);
  [v2 setDateOfPublication:v10];

  v11 = [v1 dateDue];
  v12 = sub_1001043D0(v11);
  [v2 setDueDate:v12];

  v13 = [v1 title];
  [v2 setTitle:v13];

  v14 = [v1 instructions];
  [v2 setInstructions:v14];

  v15 = [v1 dateDue];

  v16 = sub_1001043D0(v15);
  [v2 setDueDate:v16];

  return v2;
}

id sub_10001DBAC(void *a1)
{
  v1 = a1;
  if ([v1 hasType])
  {
    v2 = sub_100019AEC([v1 type]);
    v3 = [CLSArchivedHandoutAttachment alloc];
    v4 = [v1 title];
    v5 = [v3 initWithType:v2 title:v4];

    v6 = [v1 appIdentifier];
    [v5 setAppIdentifier:v6];

    v7 = [v1 objectId];
    v8 = sub_10001BE18(v7);
    [v5 setObjectID:v8];

    v9 = [v1 parentObjectId];
    v10 = sub_10001BE18(v9);
    [v5 setParentObjectID:v10];

    if ([v1 hasDateLastModified])
    {
      v11 = [v1 dateLastModified];
      v12 = sub_1001043D0(v11);
      [v5 setDateLastModified:v12];
    }

    if ([v1 hasAppBundleIdentifier])
    {
      v13 = [v1 appBundleIdentifier];
      [v5 setBundleIdentifier:v13];
    }

    if ([v1 hasAppStoreIdentifier])
    {
      v14 = [v1 appStoreIdentifier];
      [v5 setStoreIdentifier:v14];
    }

    [v5 setDisplayOrder:{objc_msgSend(v1, "displayOrder")}];
    v15 = [v1 contentStoreIdentifier];
    [v5 setContentStoreIdentifier:v15];

    [v1 timeExpectationInSeconds];
    [v5 setTimeExpectation:?];
    if ([v1 hasShareType])
    {
      [v5 setShareType:{sub_100019BE4(objc_msgSend(v1, "shareType"))}];
      if (![v1 hasPermissionType])
      {
        v24 = 0;
LABEL_21:

        goto LABEL_23;
      }

      [v5 setPermissionType:{sub_100019CE8(objc_msgSend(v1, "permissionType"))}];
    }

    if ([v1 hasContextType])
    {
      [v5 setContextType:{sub_100019DF8(objc_msgSend(v1, "contextType"))}];
    }

    if ([v1 hasUrl])
    {
      v16 = [NSURL alloc];
      v17 = [v1 url];
      v18 = [v16 initWithString:v17];
      [v5 setURL:v18];
    }

    if (v2 == 3)
    {
      v22 = [v1 appBundleIdentifier];
      [v5 setBundleIdentifier:v22];

      v23 = [v1 appStoreIdentifier];
      [v5 setStoreIdentifier:v23];
    }

    else if (v2 == 1)
    {
      v19 = [v1 contextPaths];
      [v5 setContextPath:v19];

      v20 = [v1 contextSummary];
      [v5 setContextSummary:v20];

      v21 = [v1 contextCustomTypeName];
      [v5 setContextCustomTypeName:v21];

      [v5 setContextSourceIsCatalog:{objc_msgSend(v1, "contextSourceIsCatalog")}];
    }

    v24 = v5;
    goto LABEL_21;
  }

  v24 = 0;
LABEL_23:

  return v24;
}