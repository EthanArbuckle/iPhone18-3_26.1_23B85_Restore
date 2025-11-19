uint64_t sub_1001C4094(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1001C40E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1001AD2E4(v6, static Logger.akd);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Proximity Broadcast UI finished", v9, 2u);
  }

  sub_1001C1420();
  v10 = *(a3 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion);
  if (v10)
  {
    v11 = *(a3 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion + 8);

    v10(a1, a2);
    sub_1001C45B0(v10);
  }

  sub_1001C15E0();
}

void sub_1001C4220(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1001AD2E4(v2, static Logger.akd);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Error displaying prox PIN code UI.", v4, 2u);
    }
  }

  else
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1001AD2E4(v5, static Logger.akd);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Prox PIN Code UI presented.", v7, 2u);
    }
  }
}

void sub_1001C43DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1001AD2E4(v4, static Logger.akd);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Show Proximity Pairing error up ..", v7, 2u);
  }

  v8 = *(a3 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion);
  if (v8)
  {
    v9 = *(a3 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion + 8);
    v10 = objc_allocWithZone(NSError);

    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 initWithDomain:v11 code:-130011 userInfo:0];

    v8(0, v12);
    sub_1001C45B0(v8);
  }

  sub_1001C1420();
  sub_1001C15E0();
}

uint64_t sub_1001C4564(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1001C45B0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001C45FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

_BYTE *sub_1001C460C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1001C46A0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1001C4758(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1001C47D4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1001C46A0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1001C4758(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1001C47D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1001C4858(uint64_t a1)
{
  v9 = sub_1001AD17C(&qword_1003728D0, qword_10029D478);
  v10 = sub_1001C520C();
  v8[0] = a1;
  v2 = sub_1001BB81C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1001C460C(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1001C52B8(v8);
  return v5;
}

void *sub_1001C4908(void *a1, void *a2, void *a3, uint64_t a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v11 = OBJC_IVAR___AKProximityAuthFlowController_server;
  if (*(a4 + OBJC_IVAR___AKProximityAuthFlowController_server))
  {
    _Block_copy(a5);
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1001AD2E4(v12, static Logger.akd);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Proximity Auth is already in progress...", v15, 2u);
    }

    v16 = objc_allocWithZone(NSError);
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 initWithDomain:v17 code:-13003 userInfo:0];

    v19 = _convertErrorToNSError(_:)();
    (a5)[2](a5, 0, v19);

    return 0;
  }

  else
  {
    v20 = OBJC_IVAR___AKProximityAuthFlowController_client;
    v21 = *(a4 + OBJC_IVAR___AKProximityAuthFlowController_client);
    _Block_copy(a5);
    *(a4 + v20) = a1;

    v22 = *(a4 + OBJC_IVAR___AKProximityAuthFlowController_context);
    *(a4 + OBJC_IVAR___AKProximityAuthFlowController_context) = a2;
    v23 = a1;

    v24 = *(a4 + v11);
    *(a4 + v11) = a3;
    v25 = a2;

    v26 = a3;
    v27 = [v25 protoAccountContext];
    if (v27)
    {

      if (qword_100371BB0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1001AD2E4(v28, static Logger.akd);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 16777472;
        v31[4] = 1;
        _os_log_impl(&_mh_execute_header, v29, v30, "We have a proto account context, setting the nearby action data to child setup: %hhu", v31, 5u);
      }

      [v26 setNearbyActionType:95];
      v32 = &off_100325FC0;
    }

    else
    {
      if (qword_100371BB0 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1001AD2E4(v33, static Logger.akd);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Non proto account context, setting the nearby action data to default: None", v36, 2u);
      }

      v32 = &_swiftEmptyArrayStorage;
    }

    v37 = sub_1001C4858(v32);
    v39 = v38;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100013B34(v37, v39);
    [v26 setNearbyActionExtraData:isa];

    v41 = (a4 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion);
    v42 = *(a4 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion);
    v43 = *(a4 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion + 8);
    *v41 = sub_1001C5380;
    v41[1] = v10;
    sub_1001C45B0(v42);
    v44 = objc_allocWithZone(CBCentralManager);

    v45 = [v44 initWithDelegate:a4 queue:0];
    v46 = *(a4 + OBJC_IVAR___AKProximityAuthFlowController_cbManager);
    *(a4 + OBJC_IVAR___AKProximityAuthFlowController_cbManager) = v45;

    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1001AD2E4(v47, static Logger.akd);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Posting ProximityAppleIDSignInBeganNotification...", v50, 2u);
    }

    sub_1001C51C0();
    v51 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_100371B98 != -1)
    {
      swift_once();
    }

    [v51 postNotificationName:qword_100377620 object:0];

    swift_unknownObjectRetain();
  }

  return a3;
}

void sub_1001C4EC4(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + OBJC_IVAR___AKProximityAuthFlowController_server);
  _Block_copy(a2);
  if (v5)
  {
    sub_1001C1420();
    v6 = [objc_opt_self() sharedInstance];
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + OBJC_IVAR___AKProximityAuthFlowController_context);
      v9 = *(a1 + OBJC_IVAR___AKProximityAuthFlowController_client);
      aBlock[4] = sub_1001C51B8;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001C1530;
      aBlock[3] = &unk_100326BB0;
      v10 = _Block_copy(aBlock);
      v11 = v9;

      v12 = v8;

      [v7 dismissProximityPairingUIForContext:v12 client:v11 completion:v10];
      _Block_release(v10);

      sub_1001C15E0();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1001AD2E4(v13, static Logger.akd);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Proximity Auth not in progress", v16, 2u);
    }

    v17 = [objc_allocWithZone(NSError) initWithDomain:AKAppleIDProximityAuthErrorDomain code:-13005 userInfo:0];
    v18 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v18);
  }
}

unint64_t sub_1001C51C0()
{
  result = qword_1003728C8;
  if (!qword_1003728C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003728C8);
  }

  return result;
}

unint64_t sub_1001C520C()
{
  result = qword_1003728D8;
  if (!qword_1003728D8)
  {
    sub_1001C5270(&qword_1003728D0, qword_10029D478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003728D8);
  }

  return result;
}

uint64_t sub_1001C5270(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1001C52B8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_1001C53B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v8 = 0;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AccountRevokingRequestProvider();
  v4 = objc_msgSendSuper2(&v7, "validateResponseData:error:", isa, &v8);

  if (v4)
  {
    return v8;
  }

  v6 = v8;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return swift_willThrow();
}

id sub_1001C5838()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountRevokingRequestProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_1001C58A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001C5918()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_1001C595C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_1001C5B4C(void *a1)
{
  v2 = v1;
  sub_1001AD440();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = String._bridgeToObjectiveC()();
    v10 = [a1 decodeIntegerForKey:v9];

    if (v10 < 2)
    {
      *&v2[OBJC_IVAR___AKBiscuitToken_identifier] = v10;
      v11 = &v2[OBJC_IVAR___AKBiscuitToken_value];
      *v11 = v6;
      v11[1] = v8;
      v14.receiver = v2;
      v14.super_class = type metadata accessor for BiscuitToken();
      v12 = objc_msgSendSuper2(&v14, "init");

      return v12;
    }
  }

  type metadata accessor for BiscuitToken();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1001C5CD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiscuitToken();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001C5D50()
{
  result = qword_100372948;
  if (!qword_100372948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100372948);
  }

  return result;
}

Swift::Int sub_1001C5DEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001C5E60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_1001C5EA4()
{
  if (*v0)
  {
    result = 0x7461446465766173;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_1001C5EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001002AABF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7461446465766173 && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1001C5FF0(uint64_t a1)
{
  v2 = sub_1001C6A84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C602C(uint64_t a1)
{
  v2 = sub_1001C6A84();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_1001C6068()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedGroupsMembershipInfo();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SharedGroupsMembershipInfo()
{
  result = qword_100372990;
  if (!qword_100372990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001C6170()
{
  result = type metadata accessor for Date();
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

uint64_t sub_1001C6210(void *a1)
{
  v3 = v1;
  v5 = sub_1001AD17C(&qword_1003729E8, &qword_10029D630);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1001BB81C(a1, a1[3]);
  sub_1001C6A84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *(v3 + OBJC_IVAR___AKSharedGroupsMembershipInfo_groupsAndParticipants);
  v12[7] = 0;
  sub_1001AD17C(&qword_1003729B0, &qword_10029D618);
  sub_1001C72D4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[6] = 1;
    type metadata accessor for Date();
    sub_1001C73EC(&qword_100372A00, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_1001C63F8(uint64_t *a1)
{
  v3 = type metadata accessor for Date();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1001AD17C(&qword_1003729A0, &qword_10029D610);
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v23);
  v10 = v21 - v9;
  v11 = a1[4];
  sub_1001BB81C(a1, a1[3]);
  sub_1001C6A84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v20 = v24;
    sub_1001BB7D0(a1);
    type metadata accessor for SharedGroupsMembershipInfo();
    v15 = *((swift_isaMask & *v20) + 0x30);
    v16 = *((swift_isaMask & *v20) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v6;
    v13 = v7;
    sub_1001AD17C(&qword_1003729B0, &qword_10029D618);
    v26 = 0;
    sub_1001C6AD8();
    v14 = v23;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v24;
    v21[1] = OBJC_IVAR___AKSharedGroupsMembershipInfo_groupsAndParticipants;
    *(v24 + OBJC_IVAR___AKSharedGroupsMembershipInfo_groupsAndParticipants) = v27;
    LOBYTE(v27) = 1;
    sub_1001C73EC(&qword_1003729D0, &type metadata accessor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v22 + 32))(v18 + OBJC_IVAR___AKSharedGroupsMembershipInfo_savedDate, v12, v3);
    v19 = type metadata accessor for SharedGroupsMembershipInfo();
    v25.receiver = v18;
    v25.super_class = v19;
    v20 = objc_msgSendSuper2(&v25, "init");
    (*(v13 + 8))(v10, v14);
    sub_1001BB7D0(a1);
  }

  return v20;
}

void *sub_1001C6774@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for SharedGroupsMembershipInfo());
  result = sub_1001C63F8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001C67F0(uint64_t a1)
{
  sub_100013AC4(a1, v7);
  if (!v8)
  {
    sub_1001C726C(v7);
    goto LABEL_5;
  }

  type metadata accessor for SharedGroupsMembershipInfo();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___AKSharedGroupsMembershipInfo_groupsAndParticipants);
  v3 = *&v6[OBJC_IVAR___AKSharedGroupsMembershipInfo_groupsAndParticipants];

  v4 = sub_1001C68A4(v2, v3);

  return v4 & 1;
}

uint64_t sub_1001C68A4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_10023A350(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v20 = *(*(a2 + 56) + 8 * v17);

    v22 = sub_1001C6CCC(v21, v16);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1001C6A84()
{
  result = qword_1003729A8;
  if (!qword_1003729A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003729A8);
  }

  return result;
}

unint64_t sub_1001C6AD8()
{
  result = qword_1003729B8;
  if (!qword_1003729B8)
  {
    sub_1001C5270(&qword_1003729B0, &qword_10029D618);
    sub_1001C7380(&qword_1003729C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003729B8);
  }

  return result;
}

id sub_1001C6B84(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for SharedGroupsMembershipInfo();
  sub_1001C73EC(&qword_1003729D8, type metadata accessor for SharedGroupsMembershipInfo);
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {
  }

  else
  {
    v10 = v8;
    v11 = v9;

    v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v13 = sub_1001C6E84();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v3 = [v12 initWithDescriptor:v13 value:isa];
    sub_100013B34(v10, v11);
  }

  return v3;
}

uint64_t sub_1001C6CCC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

id sub_1001C6E84()
{
  v0 = [objc_allocWithZone(AAFKeychainItemDescriptor) init];
  [v0 setItemClass:1];
  [v0 setAccessGroup:AKSignInWithAppleKeychainAccessGroup];
  [v0 setSynchronizable:2];
  [v0 setItemAccessible:2];
  [v0 setUseDataProtection:2];
  [v0 setInvisible:2];
  v1 = String._bridgeToObjectiveC()();
  [v0 setService:v1];

  return v0;
}

id sub_1001C6F74(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 value];
  if (v8)
  {
    v9 = v8;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = type metadata accessor for JSONDecoder();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v16 = type metadata accessor for SharedGroupsMembershipInfo();
    sub_1001C73EC(&qword_1003729E0, type metadata accessor for SharedGroupsMembershipInfo);
    v25 = v10;
    v26 = v12;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (!v1)
    {

      v22 = v29;
      v23 = a1;
      v17 = *&v29[OBJC_IVAR___AKSharedGroupsMembershipInfo_groupsAndParticipants];
      v18 = v24;
      v19 = *(v24 + 16);
      v19(v7, &v29[OBJC_IVAR___AKSharedGroupsMembershipInfo_savedDate], v4);
      v20 = objc_allocWithZone(v16);
      *&v20[OBJC_IVAR___AKSharedGroupsMembershipInfo_groupsAndParticipants] = v17;
      v19(&v20[OBJC_IVAR___AKSharedGroupsMembershipInfo_savedDate], v7, v4);
      v27.receiver = v20;
      v27.super_class = v16;

      v2 = objc_msgSendSuper2(&v27, "init");
      sub_100013B34(v25, v26);

      (*(v18 + 8))(v7, v4);
      return v2;
    }

    sub_100013B34(v25, v26);
  }

  else
  {
    type metadata accessor for SignInWithAppleError(0);
    v28 = -16009;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001C73EC(&qword_100372690, type metadata accessor for SignInWithAppleError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1001C726C(uint64_t a1)
{
  v2 = sub_1001AD17C(&qword_100372080, &qword_10029C6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001C72D4()
{
  result = qword_1003729F0;
  if (!qword_1003729F0)
  {
    sub_1001C5270(&qword_1003729B0, &qword_10029D618);
    sub_1001C7380(&qword_1003729F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003729F0);
  }

  return result;
}

uint64_t sub_1001C7380(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001C5270(&qword_1003729C8, &unk_10029D620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001C73EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SharedGroupsMembershipInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharedGroupsMembershipInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001C75A0()
{
  result = qword_100372A08;
  if (!qword_100372A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100372A08);
  }

  return result;
}

unint64_t sub_1001C75F8()
{
  result = qword_100372A10;
  if (!qword_100372A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100372A10);
  }

  return result;
}

unint64_t sub_1001C7650()
{
  result = qword_100372A18;
  if (!qword_100372A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100372A18);
  }

  return result;
}

uint64_t sub_1001C76A4(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;

  return _swift_task_switch(sub_1001C7734, 0, 0);
}

uint64_t sub_1001C7734()
{
  if ([*(*(v0 + 192) + 16) isSiwaInPasswordsFeatureEnabled])
  {
    v1 = *(v0 + 192);
    sub_1001C87A8();
    v2 = [*(v0 + 184) signInWithAppleAccount];
    *(v0 + 200) = v2;
    if (v2)
    {
      v3 = v2;
      v4 = [*(v0 + 184) altDSID];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      *(v0 + 208) = v7;
      v8 = swift_task_alloc();
      *(v0 + 216) = v8;
      *v8 = v0;
      v8[1] = sub_1001C7ACC;
      v9 = *(v0 + 192);

      return sub_1001C89F4(v3, v5, v7);
    }

    v11 = (v0 + 160);
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1001AD2E4(v18, qword_100377698);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "No SIWA account set in context.", v21, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 168) = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
  }

  else
  {
    v11 = (v0 + 144);
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1001AD2E4(v12, qword_100377698);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Feature flag SiwaInPasswords is not enabled", v15, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 152) = -16001;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
  }

  _BridgedStoredNSError.init(_:userInfo:)();
  v16 = *v11;
  swift_willThrow();
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1001C7ACC(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 216);
  v10 = *v3;
  v5[28] = a2;
  v5[29] = v2;

  if (v2)
  {
    v7 = sub_1001C8670;
  }

  else
  {
    v8 = v5[26];

    v5[30] = a1;
    v7 = sub_1001C7C24;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001C7C24()
{
  v1 = *sub_1001BB81C((v0[24] + 48), *(v0[24] + 72));
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_1001C7D00;
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[25];

  return sub_1001BBFE8(v5, v3, v4);
}

uint64_t sub_1001C7D00()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 224);

  if (v0)
  {
    v6 = sub_1001C7FEC;
  }

  else
  {
    v6 = sub_1001C7E60;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001C7E60()
{
  v1 = *(*(v0 + 192) + 32);
  v2 = [*(v0 + 200) clientID];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  *(v0 + 264) = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 280;
  *(v0 + 24) = sub_1001C807C;
  v3 = swift_continuation_init();
  *(v0 + 136) = sub_1001AD17C(&qword_100372280, &qword_10029CEF0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10022C388;
  *(v0 + 104) = &unk_100326E28;
  *(v0 + 112) = v3;
  [v1 removeApplicationWithClientID:v2 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1001C7FEC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001C807C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_1001C8704;
  }

  else
  {
    v3 = sub_1001C81B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001C81B8()
{
  v50 = v0;

  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_100377698);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 200);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v49 = v8;
    *v7 = 136315138;
    v9 = [v6 clientID];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10024B050(v10, v12, &v49);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully revoked %s", v7, 0xCu);
    sub_1001C92B4(v8);
  }

  v14 = [*(v0 + 200) shareInfo];
  if (v14)
  {
    v15 = *(v0 + 200);

    v16 = v15;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 200);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49 = v21;
      *v20 = 136315138;
      v22 = [v19 clientID];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_10024B050(v23, v25, &v49);

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "The account for %s was also previously shared. Removing the keychain item.", v20, 0xCu);
      sub_1001C92B4(v21);
    }

    v27 = *(v0 + 200);
    v28 = *(*(v0 + 192) + 40);
    *(v0 + 176) = 0;
    v29 = [v28 removeSharedAccount:v27 error:v0 + 176];
    v30 = *(v0 + 176);
    if (v29)
    {
      v31 = v30;
    }

    else
    {
      v32 = *(v0 + 200);
      v33 = v30;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v34 = v32;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = *(v0 + 200);
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v49 = v39;
        *v38 = 136315138;
        v40 = [v37 clientID];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = sub_10024B050(v41, v43, &v49);

        *(v38 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v35, v36, "An error occurred while removing shared account for %s.", v38, 0xCu);
        sub_1001C92B4(v39);
      }
    }
  }

  v45 = *(v0 + 200);
  v46 = [objc_opt_self() defaultCenter];
  [v46 postNotificationName:AKSignInWithAppleAccountsListChangedNotification object:0];

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1001C8670()
{
  v2 = v0[25];
  v1 = v0[26];

  v3 = v0[29];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1001C8704()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[25];
  swift_willThrow();

  v4 = v0[34];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1001C87A8()
{
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377698);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Entitlement Check", v4, 2u);
  }

  v5 = *(v0 + 24);
  if (([v5 hasInternalAccess] & 1) != 0 || objc_msgSend(v5, "hasPrivateAccess"))
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Client has necessary permission for accounts revoking", v8, 2u);
    }
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Client doesn't have access to perform account revoking", v11, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_1001C89F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_1001C8A18, 0, 0);
}

uint64_t sub_1001C8A18()
{
  v1 = *(*(v0 + 176) + 32);
  v2 = [*(v0 + 152) clientID];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  *(v0 + 184) = v2;
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = String._bridgeToObjectiveC()();
  *(v0 + 192) = v5;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1001C8B90;
  v6 = swift_continuation_init();
  *(v0 + 136) = sub_1001AD17C(&unk_100372AE0, qword_10029D7E8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100208FA4;
  *(v0 + 104) = &unk_100326E50;
  *(v0 + 112) = v6;
  [v1 fetchDeveloperTeamWithClientID:v2 withAltDSID:v5 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1001C8B90()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1001C91C0;
  }

  else
  {
    v3 = sub_1001C8CA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001C8CA0()
{
  v53 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 184);
  v3 = *(v0 + 152);

  v4 = [v1 apps];
  sub_1001C9300();
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v3 clientID];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!*(v5 + 16))
  {

    goto LABEL_7;
  }

  sub_10023A350(v7, v9);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_7:
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 152);
    v21 = type metadata accessor for Logger();
    sub_1001AD2E4(v21, qword_100377698);
    v22 = v1;
    v23 = v20;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_12;
    }

    v51 = *(v0 + 152);
    v26 = swift_slowAlloc();
    v52[0] = swift_slowAlloc();
    *v26 = 136315394;
    v27 = [v22 teamID];
    v28 = v1;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = v29;
    v1 = v28;
    v33 = sub_10024B050(v32, v31, v52);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2080;
    v34 = [v51 clientID];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_10024B050(v35, v37, v52);

    *(v26 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v24, v25, "Developer team %s doesn't have the app with client id %s", v26, 0x16u);
    swift_arrayDestroy();

    goto LABEL_11;
  }

  v12 = [*(v0 + 152) userID];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v1 userIdentifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v13 == v17 && v15 == v19)
  {

LABEL_16:
    v43 = [v1 teamID];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = *(v0 + 8);

    return v47(v44, v46);
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
    goto LABEL_16;
  }

  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_1001AD2E4(v48, qword_100377698);
  v24 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v24, v49, "User identfier doesn't match", v50, 2u);
LABEL_11:
  }

LABEL_12:

  type metadata accessor for SignInWithAppleError(0);
  *(v0 + 144) = -16007;
  sub_1001E4150(_swiftEmptyArrayStorage);
  sub_1001B754C();
  _BridgedStoredNSError.init(_:userInfo:)();
  v39 = *(v0 + 80);
  swift_willThrow();

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1001C91C0()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[25];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1001C9238()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  sub_1001C92B4((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1001C92B4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1001C9300()
{
  result = qword_100373630;
  if (!qword_100373630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100373630);
  }

  return result;
}

void sub_1001C93B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001AD17C(&qword_100372B30, qword_10029D838);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  v11 = *(a2 + OBJC_IVAR___AKAppleIDPasskeyCredentialProvider_authorizationController);
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_1001C9F3C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001C9BD8;
  aBlock[3] = &unk_100326F18;
  v14 = _Block_copy(aBlock);

  [v11 createPasskeyWithContext:a3 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1001C96FC(void *a1, void *aBlock, void *a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_1001C9788, 0, 0);
}

uint64_t sub_1001C9788()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_1001C9EF0();
  *v3 = v0;
  v3[1] = sub_1001C9888;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000017, 0x80000001002AADA0, sub_1001C9EE8, v1, v4);
}

uint64_t sub_1001C9888()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1001C9A34;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1001C99A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001C99A4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v3 = *(v0 + 16);
  (v1)[2](v1, v3, 0);
  _Block_release(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001C9A34()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);

  v5 = _convertErrorToNSError(_:)();

  (v3)[2](v3, 0, v5);

  _Block_release(v3);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001C9AE8(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    sub_1001AD17C(&qword_100372B30, qword_10029D838);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      type metadata accessor for AppleIDPasskeyError(0);
      sub_1001E4150(&_swiftEmptyArrayStorage);
      sub_1001B1020();
      _BridgedStoredNSError.init(_:userInfo:)();
    }

    swift_errorRetain();
    sub_1001AD17C(&qword_100372B30, qword_10029D838);
    return CheckedContinuation.resume(throwing:)();
  }
}

void sub_1001C9BD8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id sub_1001C9C94()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001C9D00()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001C9DB4;

  return sub_1001C96FC(v2, v3, v4);
}

uint64_t sub_1001C9DB4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001C9EA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1001C9EF0()
{
  result = qword_100372B28;
  if (!qword_100372B28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100372B28);
  }

  return result;
}

uint64_t sub_1001C9F3C(void *a1, uint64_t a2)
{
  v4 = *(*(sub_1001AD17C(&qword_100372B30, qword_10029D838) - 8) + 80);

  return sub_1001C9AE8(a1, a2);
}

void sub_1001CA024(void *a1, uint64_t a2)
{
  v5 = sub_1001AD17C(&unk_100372B70, &unk_10029D8C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v88 - v8;
  v10 = *(v2 + OBJC_IVAR___AKPrivateEmailRegistrationService_serviceController);
  v11 = [v10 requestProvider];
  type metadata accessor for PrivateEmailRegistrationRequestProvider();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v88 = v10;
    v89 = a2;
    v90 = v5;
    [a1 sanitiseInternalState];
    v92 = &_swiftEmptyDictionarySingleton;
    v14 = [a1 originType];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
    {

      goto LABEL_14;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {

LABEL_14:
      v25 = [a1 key];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = &_swiftEmptyDictionarySingleton;
      v30 = 0x6E65697069636572;
      v31 = 0xEE006C69616D4574;
      v32 = v26;
      v33 = v28;
LABEL_15:
      sub_1002316AC(v32, v33, v30, v31, isUniquelyReferenced_nonNull_native);
      v92 = aBlock[0];
LABEL_16:
      v34 = v90;
LABEL_17:
      v35 = v92;
      swift_unknownObjectRetain();
      sub_1001CD21C(v35);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v13 setAuthKitBody:isa];
      swift_unknownObjectRelease();

      (*(v6 + 16))(v9, v89, v34);
      v37 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v38 = (v7 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      (*(v6 + 32))(v39 + v37, v9, v34);
      *(v39 + v38) = v13;
      *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
      aBlock[4] = sub_1001CC9A0;
      aBlock[5] = v39;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100234B90;
      aBlock[3] = &unk_1003270C0;
      v40 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v41 = a1;

      [v88 executeRequestWithCompletion:v40];
      swift_unknownObjectRelease();
      _Block_release(v40);
      return;
    }

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
    if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
    {
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v46 & 1) == 0)
      {
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;
        if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
        {
        }

        else
        {
          v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v67 & 1) == 0)
          {
            v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v80 = v79;
            if (v78 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v80 == v81)
            {
            }

            else
            {
              v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v34 = v90;
              if ((v82 & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            v83 = [a1 key];
            v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v86 = v85;

            v87 = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = &_swiftEmptyDictionarySingleton;
            sub_1002316AC(v84, v86, 0x6E69616D6F64, 0xE600000000000000, v87);
            v92 = aBlock[0];
            v58 = [a1 originIdentifier];
            if (v58)
            {
              goto LABEL_24;
            }

            goto LABEL_36;
          }
        }

        v68 = [a1 key];
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        v72 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = &_swiftEmptyDictionarySingleton;
        sub_1002316AC(v69, v71, 0x6E69616D6F64, 0xE600000000000000, v72);
        v73 = aBlock[0];
        v92 = aBlock[0];
        v74 = [a1 metadataString];
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v73;
        v30 = 0x746E61686372656DLL;
        v32 = v75;
        v33 = v77;
        v31 = 0xEA00000000006449;
        goto LABEL_15;
      }
    }

    v47 = [a1 key];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = &_swiftEmptyDictionarySingleton;
    sub_1002316AC(v48, v50, 0x6E69616D6F64, 0xE600000000000000, v51);
    v52 = aBlock[0];
    v92 = aBlock[0];
    v53 = [a1 metadataString];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v52;
    sub_1002316AC(v54, v56, 0x746E61686372656DLL, 0xEA00000000006449, v57);
    v92 = aBlock[0];
    v58 = [a1 originIdentifier];
    if (v58)
    {
LABEL_24:
      v59 = v58;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

LABEL_37:
      sub_1001CD5DC(v60, v62, 0x6C646E7542707061, 0xEB00000000644965);
      goto LABEL_16;
    }

LABEL_36:
    v60 = 0;
    v62 = 0;
    goto LABEL_37;
  }

  swift_unknownObjectRelease();
  if (qword_100371BD0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1001AD2E4(v21, qword_100377680);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to register private email", v24, 2u);
  }

  type metadata accessor for PrivateEmailError(0);
  v92 = -11005;
  sub_1001E4150(&_swiftEmptyArrayStorage);
  sub_1001CC584();
  _BridgedStoredNSError.init(_:userInfo:)();
  v92 = aBlock[0];
  CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1001CAAC0(void *a1, void *aBlock, void *a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_1001CAB4C, 0, 0);
}

uint64_t sub_1001CAB4C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_1001CC538();
  *v3 = v0;
  v3[1] = sub_1001CAC4C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001ALL, 0x80000001002AAEA0, sub_1001CC8BC, v1, v4);
}

uint64_t sub_1001CAC4C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1001CCAAC;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1001CCAC0;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1001CAD68(void *a1, uint64_t a2)
{
  v5 = sub_1001AD17C(&unk_100372B70, &unk_10029D8C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v10 = *(v2 + OBJC_IVAR___AKPrivateEmailRegistrationService_serviceController);
  v11 = [v10 requestProvider];
  type metadata accessor for PrivateEmailRegistrationRequestProvider();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v45 = v10;
    v46 = a2;
    v47 = v5;
    [a1 sanitiseInternalState];
    v14 = [a1 metadataString];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      v19 = [a1 metadataString];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = &_swiftEmptyDictionarySingleton;
      v24 = 0x746E61686372656DLL;
      v25 = v20;
      v26 = v22;
      v27 = 0xEA00000000006449;
    }

    else
    {
      v32 = [a1 originIdentifier];
      if (!v32)
      {
        v32 = [a1 key];
      }

      v33 = v32;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = &_swiftEmptyDictionarySingleton;
      v24 = 0x6449746E65696C63;
      v25 = v34;
      v26 = v36;
      v27 = 0xE800000000000000;
    }

    sub_1002316AC(v25, v26, v24, v27, isUniquelyReferenced_nonNull_native);
    v37 = aBlock[0];
    swift_unknownObjectRetain();
    sub_1001CD21C(v37);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v13 setAuthKitBody:isa];
    swift_unknownObjectRelease();

    v39 = v47;
    (*(v6 + 16))(v9, v46, v47);
    v40 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v41 = (v7 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    (*(v6 + 32))(v42 + v40, v9, v39);
    *(v42 + v41) = v13;
    *(v42 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
    aBlock[4] = sub_1001CC5DC;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100234B90;
    aBlock[3] = &unk_100326FF8;
    v43 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v44 = a1;

    [v45 executeRequestWithCompletion:v43];
    swift_unknownObjectRelease();
    _Block_release(v43);
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100371BD0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1001AD2E4(v28, qword_100377680);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to register private email", v31, 2u);
    }

    type metadata accessor for PrivateEmailError(0);
    v49 = -11005;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001CC584();
    _BridgedStoredNSError.init(_:userInfo:)();
    v49 = aBlock[0];
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1001CB3F4(void *a1, void *aBlock, void *a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_1001CB480, 0, 0);
}

uint64_t sub_1001CB480()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_1001CC538();
  *v3 = v0;
  v3[1] = sub_1001CB580;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000027, 0x80000001002AAE70, sub_1001CC50C, v1, v4);
}

uint64_t sub_1001CB580()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1001CB72C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1001CB69C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001CB69C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v3 = *(v0 + 16);
  (v1)[2](v1, v3, 0);
  _Block_release(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001CB72C()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);

  v5 = _convertErrorToNSError(_:)();

  (v3)[2](v3, 0, v5);

  _Block_release(v3);
  v6 = *(v0 + 8);

  return v6();
}

id sub_1001CB810()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001CB87C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001CB930;

  return sub_1001CB3F4(v2, v3, v4);
}

uint64_t sub_1001CB930()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1001CBA24(int a1, int a2, unint64_t a3, void *a4, int a5, id a6, void *a7)
{
  if (a4)
  {
    swift_errorRetain();
    if (qword_100371BD0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1001AD2E4(v8, qword_100377680);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "HME Registration failed. Error occurred while executing the request - %@", v11, 0xCu);
      sub_1001B4EB8(v12);
    }

    v41[0] = a4;
    goto LABEL_14;
  }

  v14 = a3 >> 60;
  if (a3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v17 = a6;
    v18.super.isa = Data._bridgeToObjectiveC()().super.isa;
    a6 = v17;
    isa = v18.super.isa;
  }

  v41[0] = 0;
  v19 = [a6 validateResponseData:isa error:v41];

  if (!v19)
  {
    v22 = v41[0];
    v23 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v41[0] = v23;
LABEL_14:
    sub_1001AD17C(&unk_100372B70, &unk_10029D8C8);
LABEL_15:
    CheckedContinuation.resume(throwing:)();
    return;
  }

  v20 = v41[0];
  if (v14 <= 0xE)
  {
    v21 = Data._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v21 = 0;
  }

  v24 = [objc_opt_self() dictionaryFromObject:v21 ofType:@"application/json"];
  swift_unknownObjectRelease();
  if (!v24)
  {
    goto LABEL_25;
  }

  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v25 + 16) || (v26 = sub_10023A30C(v41), (v27 & 1) == 0))
  {

    sub_1001AD3EC(v41);
    goto LABEL_25;
  }

  sub_1000087A8(*(v25 + 56) + 32 * v26, v42);
  sub_1001AD3EC(v41);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    if (qword_100371BD0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1001AD2E4(v37, qword_100377680);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "HME Registration failed. Invalid response data", v40, 2u);
    }

    type metadata accessor for PrivateEmailError(0);
    v42[0] = -11006;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001CC584();
    _BridgedStoredNSError.init(_:userInfo:)();
    v42[0] = v41[0];
    sub_1001AD17C(&unk_100372B70, &unk_10029D8C8);
    goto LABEL_15;
  }

  v28 = [a7 key];
  if (!v28)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
  }

  v29 = objc_allocWithZone(AKPrivateEmail);
  v30 = String._bridgeToObjectiveC()();

  v31 = [v29 initWithAddress:v30 forKey:v28];

  v41[0] = v31;
  v32 = v31;
  sub_1001AD17C(&unk_100372B70, &unk_10029D8C8);
  CheckedContinuation.resume(returning:)();
  v33 = AKPrivateEmailControllerDidRegisterNewEmail;
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 defaultCenter];
  [v36 postNotificationName:v35 object:0 userInfo:0];
}

uint64_t sub_1001CBFD4(int a1, int a2, unint64_t a3, void *a4, int a5, id a6, void *a7)
{
  if (a4)
  {
    swift_errorRetain();
    if (qword_100371BD0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1001AD2E4(v8, qword_100377680);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Fetch SIWA HME failed. Error occurred while executing the request - %@", v11, 0xCu);
      sub_1001B4EB8(v12);
    }

    v37[0] = a4;
    goto LABEL_14;
  }

  v14 = a3 >> 60;
  if (a3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v17 = a6;
    v18.super.isa = Data._bridgeToObjectiveC()().super.isa;
    a6 = v17;
    isa = v18.super.isa;
  }

  v37[0] = 0;
  v19 = [a6 validateResponseData:isa error:v37];

  if (!v19)
  {
    v22 = v37[0];
    v23 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v37[0] = v23;
LABEL_14:
    sub_1001AD17C(&unk_100372B70, &unk_10029D8C8);
    return CheckedContinuation.resume(throwing:)();
  }

  v20 = v37[0];
  if (v14 <= 0xE)
  {
    v21 = Data._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v21 = 0;
  }

  v25 = [objc_opt_self() dictionaryFromObject:v21 ofType:@"application/json"];
  swift_unknownObjectRelease();
  if (!v25)
  {
    goto LABEL_25;
  }

  v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v26 + 16) || (v27 = sub_10023A30C(v37), (v28 & 1) == 0))
  {

    sub_1001AD3EC(v37);
    goto LABEL_25;
  }

  sub_1000087A8(*(v26 + 56) + 32 * v27, v38);
  sub_1001AD3EC(v37);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    if (qword_100371BD0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1001AD2E4(v33, qword_100377680);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Fetch SIWA HME failed. Invalid response data", v36, 2u);
    }

    type metadata accessor for PrivateEmailError(0);
    v38[0] = -11006;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001CC584();
    _BridgedStoredNSError.init(_:userInfo:)();
    v38[0] = v37[0];
    sub_1001AD17C(&unk_100372B70, &unk_10029D8C8);
    return CheckedContinuation.resume(throwing:)();
  }

  v29 = [a7 key];
  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  v30 = objc_allocWithZone(AKPrivateEmail);
  v31 = String._bridgeToObjectiveC()();

  v32 = [v30 initWithAddress:v31 forKey:v29];

  v37[0] = v32;
  sub_1001AD17C(&unk_100372B70, &unk_10029D8C8);
  return CheckedContinuation.resume(returning:)();
}

void sub_1001CC50C(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  sub_1001CAD68(v3, a1);
}

unint64_t sub_1001CC538()
{
  result = qword_100372B68;
  if (!qword_100372B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100372B68);
  }

  return result;
}

unint64_t sub_1001CC584()
{
  result = qword_100372148;
  if (!qword_100372148)
  {
    type metadata accessor for PrivateEmailError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100372148);
  }

  return result;
}

uint64_t sub_1001CC5F4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CC63C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001CCAB4;

  return sub_1001CAAC0(v2, v3, v4);
}

uint64_t sub_1001CC6F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001CCAB8;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_1001CC7B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001CC7F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001CCABC;

  return sub_1000099A4(a1, v4, v5, v7);
}

void sub_1001CC8BC(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  sub_1001CA024(v3, a1);
}

uint64_t sub_1001CC8E8()
{
  v1 = sub_1001AD17C(&unk_100372B70, &unk_10029D8C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_1001CC9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v10 = *(sub_1001AD17C(&unk_100372B70, &unk_10029D8C8) - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v5 + v12);
  v14 = *(v5 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, a3, a4, v5 + v11, v13, v14);
}

unint64_t sub_1001CCAC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001AD17C(&unk_100374250, &qword_10029D9A0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_unknownObjectRetain();
        sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
        swift_dynamicCast();
        sub_1000122C0(&v25, v27);
        sub_1000122C0(v27, v28);
        sub_1000122C0(v28, &v26);
        result = sub_10023A350(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_1001AD48C(v12);
          result = sub_1000122C0(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1000122C0(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1001CCD28(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001AD17C(&unk_100372C20, &qword_10029D980);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000087A8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000122C0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000122C0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000122C0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000122C0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1001CCFF0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001AD17C(&unk_100372C30, &unk_10029D990);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(a1 + 56) + 8 * v16);
        sub_1001AD440();

        v21 = v20;
        sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
        swift_dynamicCast();
        result = sub_10023A350(v19, v18);
        if (v22)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v18;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v27;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v23 = (v2[6] + 16 * result);
          *v23 = v19;
          v23[1] = v18;
          *(v2[7] + 8 * result) = v27;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1001CD21C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001AD17C(&unk_100372C20, &qword_10029D980);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_1000122C0(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_1000122C0(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_1000122C0(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001CD4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100231698(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10023A350(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_100231D94();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1001D1DCC(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1001CD5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1002316AC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_10023A350(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_100231DA8();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1001D1F7C(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1001CD6E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = sub_1001B1078((a1 + 32), *(a1 + 56));
  v9 = *v7;
  if (a4)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v10 = swift_allocError();
    *v11 = a4;
    v12 = a4;
    v7 = v9;
    v8 = v10;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  v13 = a2;
  v14 = a3;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = *(v9[8] + 40);
  *v18 = v13;
  v18[1] = v15;
  v18[2] = v17;

  return swift_continuation_throwingResume();
}

uint64_t sub_1001CD7F0(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;

  return _swift_task_switch(sub_1001CD884, 0, 0);
}

uint64_t sub_1001CD884()
{
  v1 = *(*(v0 + 208) + 16);
  *(v0 + 216) = [v1 requestProvider];
  type metadata accessor for AccountSharingRequestProvider();
  v2 = swift_dynamicCastClass();
  *(v0 + 224) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 192);
    v5 = [*(v0 + 200) groupID];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002316AC(v6, v8, 0x64695F70756F7267, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v10 = [v4 userID];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002316AC(v11, v13, 6580597, 0xE300000000000000, v14);
    v15 = [v4 clientID];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002316AC(v16, v18, 0xD000000000000011, 0x80000001002AA760, v19);
    swift_unknownObjectRetain();
    sub_1001CD21C(&_swiftEmptyDictionarySingleton);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 setAuthKitBody:isa];

    swift_unknownObjectRelease();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1001CDD2C;
    v21 = swift_continuation_init();
    *(v0 + 136) = sub_1001AD17C(&qword_100372C80, &qword_10029E350);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1001CD6E4;
    *(v0 + 104) = &unk_100327138;
    *(v0 + 112) = v21;
    [v1 executeRequestWithCompletion:?];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1001AD2E4(v22, qword_100377698);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to share due to an invalid request", v25, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 144) = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v26 = *(v0 + 80);
    swift_willThrow();
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1001CDD2C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1001CE430;
  }

  else
  {
    v3 = sub_1001CDE68;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001CDE68()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 80) = 0;
  v5 = [v1 validateResponseData:isa error:v0 + 80];

  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = Data._bridgeToObjectiveC()().super.isa;
    v10 = [v7 dictionaryFromObject:v9 ofType:@"application/json"];

    if (v10)
    {
      v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      strcpy((v0 + 176), "shared_token");
      *(v0 + 189) = 0;
      *(v0 + 190) = -5120;
      AnyHashable.init<A>(_:)();
      if (*(v11 + 16) && (v12 = sub_10023A30C(v0 + 80), (v13 & 1) != 0))
      {
        sub_1000087A8(*(v11 + 56) + 32 * v12, v0 + 144);
        sub_1001AD3EC(v0 + 80);

        if (swift_dynamicCast())
        {
          v14 = sub_100208654(*(v0 + 192), *(v0 + 200), *(v0 + 176), *(v0 + 184));
          v15 = *(v0 + 192);

          if (qword_100371BD8 != -1)
          {
            swift_once();
          }

          v16 = type metadata accessor for Logger();
          sub_1001AD2E4(v16, qword_100377698);
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v17, v18, "Successfully generated share token", v19, 2u);
          }

          v20 = *(v0 + 216);
          swift_unknownObjectRelease();
          sub_100013B34(v3, v2);

          v21 = *(v0 + 8);

          return v21(v14);
        }
      }

      else
      {

        sub_1001AD3EC(v0 + 80);
      }
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1001AD2E4(v24, qword_100377698);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Generate share token failed. Invalid response data", v27, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 144) = -16008;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = *(v0 + 80);
  }

  else
  {
    v23 = v6;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  sub_100013B34(v3, v2);
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1001AD2E4(v29, qword_100377698);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Generate share token failed. Error occurred while executing the request - %@", v32, 0xCu);
    sub_1001B4EB8(v33);
  }

  v35 = *(v0 + 216);

  swift_willThrow();
  swift_unknownObjectRelease();
  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1001CE430()
{
  v1 = v0[29];
  swift_willThrow();
  v2 = v0[29];
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1001AD2E4(v3, qword_100377698);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Generate share token failed. Error occurred while executing the request - %@", v6, 0xCu);
    sub_1001B4EB8(v7);
  }

  v9 = v0[27];

  swift_willThrow();
  swift_unknownObjectRelease();
  v10 = v0[1];

  return v10();
}

uint64_t sub_1001CE5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[29] = a6;
  v7[30] = v6;
  v7[27] = a4;
  v7[28] = a5;
  v7[25] = a2;
  v7[26] = a3;
  v7[24] = a1;

  return _swift_task_switch(sub_1001CE690, 0, 0);
}

uint64_t sub_1001CE690()
{
  v1 = *(*(v0 + 240) + 16);
  *(v0 + 248) = [v1 requestProvider];
  type metadata accessor for AccountSharingRequestProvider();
  v2 = swift_dynamicCastClass();
  *(v0 + 256) = v2;
  if (v2)
  {
    v3 = v2;
    v34 = *(v0 + 224);
    v4 = *(v0 + 216);
    v32 = *(v0 + 208);
    v33 = *(v0 + 232);
    v5 = *(v0 + 192);
    v35 = v1;
    v6 = [*(v0 + 200) groupID];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002316AC(v7, v9, 0x64695F70756F7267, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v11 = [v5 userID];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002316AC(v12, v14, 6580597, 0xE300000000000000, v15);
    v16 = [v5 clientID];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002316AC(v17, v19, 0xD000000000000011, 0x80000001002AA760, v20);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002316AC(v32, v4, 0x756F72675F646C6FLL, 0xEC00000064695F70, v21);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002316AC(v34, v33, 0xD000000000000010, 0x80000001002AAEE0, v22);
    swift_unknownObjectRetain();
    sub_1001CD21C(&_swiftEmptyDictionarySingleton);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 setAuthKitBody:isa];

    swift_unknownObjectRelease();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1001CEBE0;
    v24 = swift_continuation_init();
    *(v0 + 136) = sub_1001AD17C(&qword_100372C80, &qword_10029E350);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1001CD6E4;
    *(v0 + 104) = &unk_100327110;
    *(v0 + 112) = v24;
    [v35 executeRequestWithCompletion:?];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1001AD2E4(v25, qword_100377698);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to update share due to an invalid request", v28, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 144) = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v29 = *(v0 + 80);
    swift_willThrow();
    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1001CEBE0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_1001CF2E4;
  }

  else
  {
    v3 = sub_1001CED1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001CED1C()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 80) = 0;
  v5 = [v1 validateResponseData:isa error:v0 + 80];

  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = Data._bridgeToObjectiveC()().super.isa;
    v10 = [v7 dictionaryFromObject:v9 ofType:@"application/json"];

    if (v10)
    {
      v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      strcpy((v0 + 176), "shared_token");
      *(v0 + 189) = 0;
      *(v0 + 190) = -5120;
      AnyHashable.init<A>(_:)();
      if (*(v11 + 16) && (v12 = sub_10023A30C(v0 + 80), (v13 & 1) != 0))
      {
        sub_1000087A8(*(v11 + 56) + 32 * v12, v0 + 144);
        sub_1001AD3EC(v0 + 80);

        if (swift_dynamicCast())
        {
          v14 = sub_100208654(*(v0 + 192), *(v0 + 200), *(v0 + 176), *(v0 + 184));
          v15 = *(v0 + 192);

          if (qword_100371BD8 != -1)
          {
            swift_once();
          }

          v16 = type metadata accessor for Logger();
          sub_1001AD2E4(v16, qword_100377698);
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v17, v18, "Successfully updated share token", v19, 2u);
          }

          v20 = *(v0 + 248);
          swift_unknownObjectRelease();
          sub_100013B34(v3, v2);

          v21 = *(v0 + 8);

          return v21(v14);
        }
      }

      else
      {

        sub_1001AD3EC(v0 + 80);
      }
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1001AD2E4(v24, qword_100377698);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Update share token failed. Invalid response data", v27, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 144) = -16008;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = *(v0 + 80);
  }

  else
  {
    v23 = v6;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  sub_100013B34(v3, v2);
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1001AD2E4(v29, qword_100377698);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Update share token failed. Error occurred while executing the request - %@", v32, 0xCu);
    sub_1001B4EB8(v33);
  }

  v35 = *(v0 + 248);

  swift_willThrow();
  swift_unknownObjectRelease();
  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1001CF2E4()
{
  v1 = v0[33];
  swift_willThrow();
  v2 = v0[33];
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1001AD2E4(v3, qword_100377698);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Update share token failed. Error occurred while executing the request - %@", v6, 0xCu);
    sub_1001B4EB8(v7);
  }

  v9 = v0[31];

  swift_willThrow();
  swift_unknownObjectRelease();
  v10 = v0[1];

  return v10();
}

uint64_t sub_1001CF4A8()
{
  *(v1 + 480) = v0;

  return _swift_task_switch(sub_1001CF538, 0, 0);
}

uint64_t sub_1001CF538()
{
  v1 = *(v0[60] + 16);
  v0[61] = [v1 requestProvider];
  type metadata accessor for AccountSharingRequestProvider();
  v2 = swift_dynamicCastClass();
  v0[62] = v2;
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
    sub_10023A660(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 setAuthKitBody:isa];

    swift_unknownObjectRelease();
    v0[2] = v0;
    v0[7] = v0 + 42;
    v0[3] = sub_1001CF89C;
    v5 = swift_continuation_init();
    v0[17] = sub_1001AD17C(&qword_100372C80, &qword_10029E350);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001CD6E4;
    v0[13] = &unk_100327188;
    v0[14] = v5;
    [v1 executeRequestWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1001AD2E4(v6, qword_100377698);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update share due to an invalid request", v9, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[50] = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v10 = v0[49];
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1001CF89C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 504) = v2;
  if (v2)
  {
    v3 = sub_1001D05B8;
  }

  else
  {
    v3 = sub_1001CF9D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001CF9D8()
{
  v90 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 408) = 0;
  v5 = [v1 validateResponseData:isa error:v0 + 408];

  v6 = *(v0 + 408);
  if (!v5)
  {
    v15 = v6;
    _convertNSErrorToError(_:)();

    goto LABEL_32;
  }

  v7 = objc_opt_self();
  v8 = v6;
  v9 = Data._bridgeToObjectiveC()().super.isa;
  v10 = [v7 dictionaryFromObject:v9 ofType:@"application/json"];

  if (!v10)
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1001AD2E4(v35, qword_100377698);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Update share token failed. Invalid response data", v38, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 424) = -16008;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v39 = *(v0 + 416);
    goto LABEL_32;
  }

  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + 360) = 25445;
  *(v0 + 368) = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v11 + 16) && (v12 = sub_10023A30C(v0 + 192), (v13 & 1) != 0))
  {
    sub_1000087A8(*(v11 + 56) + 32 * v12, v0 + 272);
    sub_1001AD3EC(v0 + 192);
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 456))
    {

      type metadata accessor for SignInWithAppleError(0);
      *(v0 + 472) = -16008;
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001B754C();
      _BridgedStoredNSError.init(_:userInfo:)();
      v14 = *(v0 + 464);
LABEL_32:
      swift_willThrow();
      sub_100013B34(v2, v3);
      goto LABEL_33;
    }
  }

  else
  {
    sub_1001AD3EC(v0 + 192);
  }

  *(v0 + 376) = 0x6E695F70756F7267;
  *(v0 + 384) = 0xEA00000000006F66;
  AnyHashable.init<A>(_:)();
  if (!*(v11 + 16) || (v16 = sub_10023A30C(v0 + 232), (v17 & 1) == 0))
  {

    sub_1001AD3EC(v0 + 232);
    goto LABEL_19;
  }

  sub_1000087A8(*(v11 + 56) + 32 * v16, v0 + 304);
  sub_1001AD3EC(v0 + 232);

  sub_1001AD17C(&qword_100372830, &qword_10029D3F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1001AD2E4(v28, qword_100377698);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully fetched sharing status - No apps are currently shared.", v31, 2u);
    }

    v32 = *(v0 + 488);

    v27 = sub_10023A79C(_swiftEmptyArrayStorage);
    sub_100013B34(v2, v3);
    swift_unknownObjectRelease();
LABEL_24:
    v33 = *(v0 + 8);

    return v33(v27);
  }

  v18 = *(v0 + 432);
  if (qword_100371BD8 != -1)
  {
LABEL_75:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1001AD2E4(v19, qword_100377698);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v89 = v23;
    *v22 = 136315138;
    sub_1001AD17C(&unk_100372C40, qword_10029D9C8);
    v24 = Array.description.getter();
    v26 = sub_10024B050(v24, v25, &v89);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "Successfully fetched sharing status - %s", v22, 0xCu);
    sub_1001AD48C(v23);
  }

  v84 = v3;
  v87 = *(v18 + 16);
  if (!v87)
  {
    v27 = &_swiftEmptyDictionarySingleton;
LABEL_63:
    v79 = *(v0 + 488);

    swift_unknownObjectRelease();
    sub_100013B34(v2, v84);
    goto LABEL_24;
  }

  v3 = 0;
  v27 = &_swiftEmptyDictionarySingleton;
  v85 = v2;
  v86 = v18;
  while (1)
  {
    if (v3 >= *(v18 + 16))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v50 = *(v18 + 8 * v3 + 32);
    if (!*(v50 + 16))
    {
      goto LABEL_66;
    }

    v51 = *(v18 + 8 * v3 + 32);

    v52 = sub_10023A350(0x64695F70756F7267, 0xE800000000000000);
    if ((v53 & 1) == 0 || !*(v50 + 16))
    {
      break;
    }

    v54 = (*(v50 + 56) + 16 * v52);
    v18 = *v54;
    v55 = v54[1];

    v56 = sub_10023A350(0xD000000000000011, 0x80000001002AA760);
    if ((v57 & 1) == 0)
    {

      break;
    }

    v58 = (*(v50 + 56) + 16 * v56);
    v60 = *v58;
    v59 = v58[1];

    if (v27[2])
    {
      v61 = sub_10023A350(v18, v55);
      if (v62)
      {
        v88 = *(v27[7] + 8 * v61);

        sub_100232370(&v89, v60, v59);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = v27;
        sub_1002319E4(v88, v18, v55, isUniquelyReferenced_nonNull_native);

        v27 = v89;
        goto LABEL_42;
      }
    }

    sub_1001AD17C(&qword_1003725B0, &qword_10029D9C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10029BEB0;
    *(inited + 32) = v60;
    v65 = inited + 32;
    *(inited + 40) = v59;
    v66 = sub_1001DD830(inited);
    swift_setDeallocating();
    sub_1001BB860(v65);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v27;
    v2 = sub_10023A350(v18, v55);
    v69 = v27[2];
    v70 = (v68 & 1) == 0;
    v71 = v69 + v70;
    if (__OFADD__(v69, v70))
    {
      goto LABEL_73;
    }

    v72 = v68;
    if (v27[3] >= v71)
    {
      if (v67)
      {
        if ((v68 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      else
      {
        sub_1002320A4();
        v27 = v89;
        if ((v72 & 1) == 0)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      sub_100231154(v71, v67);
      v27 = v89;
      v73 = sub_10023A350(v18, v55);
      if ((v72 & 1) != (v74 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      v2 = v73;
      if ((v72 & 1) == 0)
      {
LABEL_58:
        v27[(v2 >> 6) + 8] |= 1 << v2;
        v75 = (v27[6] + 16 * v2);
        *v75 = v18;
        v75[1] = v55;
        *(v27[7] + 8 * v2) = v66;
        v76 = v27[2];
        v77 = __OFADD__(v76, 1);
        v78 = v76 + 1;
        if (v77)
        {
          goto LABEL_74;
        }

        v27[2] = v78;
        goto LABEL_41;
      }
    }

    v48 = v27[7];
    v49 = *(v48 + 8 * v2);
    *(v48 + 8 * v2) = v66;

LABEL_41:
    v2 = v85;
LABEL_42:
    v18 = v86;
    if (v87 == ++v3)
    {
      goto LABEL_63;
    }
  }

LABEL_66:

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v80, v81, "Missing groupID or primaryClientID in groupInfo response", v82, 2u);
  }

  type metadata accessor for SignInWithAppleError(0);
  *(v0 + 448) = -16008;
  sub_1001E4150(_swiftEmptyArrayStorage);
  sub_1001B754C();
  _BridgedStoredNSError.init(_:userInfo:)();
  v83 = *(v0 + 440);
  swift_willThrow();
  sub_100013B34(v2, v84);

LABEL_33:
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_1001AD2E4(v40, qword_100377698);
  swift_errorRetain();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    swift_errorRetain();
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v43 + 4) = v45;
    *v44 = v45;
    _os_log_impl(&_mh_execute_header, v41, v42, "Failed to fetch sharing status. Error occurred while executing the request - %@", v43, 0xCu);
    sub_1001B4EB8(v44);
  }

  v46 = *(v0 + 488);

  swift_willThrow();
  swift_unknownObjectRelease();
  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1001D05B8()
{
  v1 = v0[63];
  swift_willThrow();
  v2 = v0[63];
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1001AD2E4(v3, qword_100377698);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch sharing status. Error occurred while executing the request - %@", v6, 0xCu);
    sub_1001B4EB8(v7);
  }

  v9 = v0[61];

  swift_willThrow();
  swift_unknownObjectRelease();
  v10 = v0[1];

  return v10();
}

uint64_t sub_1001D077C(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;

  return _swift_task_switch(sub_1001D080C, 0, 0);
}

uint64_t sub_1001D080C()
{
  v1 = (v0 + 10);
  v2 = (v0 + 18);
  v3 = *(v0[25] + 16);
  v0[26] = [v3 requestProvider];
  type metadata accessor for AccountSharingRequestProvider();
  v4 = swift_dynamicCastClass();
  v0[27] = v4;
  if (!v4)
  {
    swift_unknownObjectRelease();
    if (qword_100371BD8 != -1)
    {
LABEL_42:
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1001AD2E4(v44, qword_100377698);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed to rotate tokens due to an invalid request", v47, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *v2 = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v48 = *v1;
    swift_willThrow();
    goto LABEL_38;
  }

  v58 = v3;
  v59 = v4;
  v60 = v0 + 18;
  v61 = v0 + 10;
  v5 = v0[24];
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = -1;
  v10 = -1 << *(v0[24] + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v6;
  v12 = (63 - v10) >> 6;
  v63 = v0[24];

  v1 = 0;
  v62 = _swiftEmptyArrayStorage;
  p_opt_class_meths = (&OBJC_PROTOCOL___AKPrivateEmailPresenterHostProtocol + 48);
  if (v11)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = *(*(v63 + 56) + ((v1 << 9) | (8 * v15)));
        v17 = [v16 shareInfo];
        if (v17)
        {
          break;
        }

LABEL_15:
        if (p_opt_class_meths[379] != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_1001AD2E4(v26, qword_100377698);
        v27 = Logger.logObject.getter();
        v2 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v27, v2))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v27, v2, "Account has invalid shareInfo. Skipping.", v28, 2u);
        }

        if (!v11)
        {
          goto LABEL_7;
        }
      }

      v18 = v17;
      v19 = [v17 groupID];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = [v16 shareInfo];
      if (!v23 || (v24 = v23, v25 = [v23 shareToken], v24, !v25))
      {

        p_opt_class_meths = &OBJC_PROTOCOL___AKPrivateEmailPresenterHostProtocol.opt_class_meths;
        goto LABEL_15;
      }

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v30;
      v57 = v29;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1002316AC(v20, v22, 0x64695F70756F7267, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v32 = [v16 clientID];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = swift_isUniquelyReferenced_nonNull_native();
      sub_1002316AC(v33, v35, 0xD000000000000011, 0x80000001002AA760, v36);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_1002316AC(v57, v56, 0x745F646572616873, 0xEC0000006E656B6FLL, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_10020E6FC(0, v62[2] + 1, 1, v62);
      }

      p_opt_class_meths = (&OBJC_PROTOCOL___AKPrivateEmailPresenterHostProtocol + 48);
      v2 = v62[2];
      v38 = v62[3];
      if (v2 >= v38 >> 1)
      {
        v62 = sub_10020E6FC((v38 > 1), v2 + 1, 1, v62);
      }

      v62[2] = (v2 + 1);
      v62[v2 + 4] = &_swiftEmptyDictionarySingleton;
      if (!v11)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v14 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v7 + 8 * v14);
    ++v1;
    if (v11)
    {
      v1 = v14;
      goto LABEL_11;
    }
  }

  v39 = v0[24];

  if (v62[2])
  {
    v40 = sub_1001AD17C(&qword_100372830, &qword_10029D3F0);
    v0[28] = v40;
    v0[13] = v40;
    v0[10] = v62;
    sub_1000122C0(v61, v60);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000133C8(v60, 0x6E695F70756F7267, 0xEA00000000006F66, v41);
    swift_unknownObjectRetain();
    sub_1001CCD28(&_swiftEmptyDictionarySingleton);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v59 setAuthKitBody:isa];

    swift_unknownObjectRelease();
    v0[2] = v0;
    v0[7] = v60;
    v0[3] = sub_1001D1098;
    v43 = swift_continuation_init();
    v0[17] = sub_1001AD17C(&qword_100372C80, &qword_10029E350);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001CD6E4;
    v0[13] = &unk_100327160;
    v0[14] = v43;
    [v58 executeRequestWithCompletion:v61];

    return _swift_continuation_await(v0 + 2);
  }

  if (p_opt_class_meths[379] != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_1001AD2E4(v49, qword_100377698);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Failed to rorate tokens. No eligible accounts.", v52, 2u);
  }

  type metadata accessor for SignInWithAppleError(0);
  *v60 = -16007;
  sub_1001E4150(_swiftEmptyArrayStorage);
  sub_1001B754C();
  _BridgedStoredNSError.init(_:userInfo:)();
  v53 = *v61;
  swift_willThrow();
  swift_unknownObjectRelease();
LABEL_38:
  v54 = v0[1];

  return v54();
}

uint64_t sub_1001D1098()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1001D19FC;
  }

  else
  {
    v3 = sub_1001D11D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001D11D4()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 80) = 0;
  v5 = [v1 validateResponseData:isa error:v0 + 80];

  v6 = *(v0 + 80);
  p_opt_class_meths = &OBJC_PROTOCOL___AKPrivateEmailPresenterHostProtocol.opt_class_meths;
  if (v5)
  {
    v8 = objc_opt_self();
    v9 = v6;
    v10 = Data._bridgeToObjectiveC()().super.isa;
    v11 = [v8 dictionaryFromObject:v10 ofType:@"application/json"];

    if (v11)
    {
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 0x6E695F70756F7267;
      *(v0 + 184) = 0xEA00000000006F66;
      AnyHashable.init<A>(_:)();
      if (*(v12 + 16) && (v13 = sub_10023A30C(v0 + 80), (v14 & 1) != 0))
      {
        v15 = *(v0 + 224);
        sub_1000087A8(*(v12 + 56) + 32 * v13, v0 + 144);
        sub_1001AD3EC(v0 + 80);

        if (swift_dynamicCast())
        {
          v64 = *(v0 + 192);
          v16 = *(v0 + 176);
          v63 = *(v16 + 16);
          if (!v63)
          {
LABEL_39:
            v59 = *(v0 + 208);

            swift_unknownObjectRelease();
            sub_100013B34(v3, v2);
            v60 = *(v0 + 8);

            return v60(_swiftEmptyArrayStorage);
          }

          v17 = 0;
          v62 = *(v0 + 176);
          while (1)
          {
            if (v17 >= *(v16 + 16))
            {
              __break(1u);
              goto LABEL_50;
            }

            v18 = *(v16 + 8 * v17 + 32);
            if (!*(v18 + 16))
            {
              break;
            }

            v19 = *(v16 + 8 * v17 + 32);

            sub_10023A350(0x64695F70756F7267, 0xE800000000000000);
            if ((v20 & 1) == 0 || !*(v18 + 16) || (v21 = sub_10023A350(0xD000000000000011, 0x80000001002AA760), (v22 & 1) == 0) || !*(v18 + 16))
            {

              break;
            }

            v65 = v17;
            v23 = (*(v18 + 56) + 16 * v21);
            v24 = *v23;
            v25 = v23[1];

            v26 = sub_10023A350(0x745F646572616873, 0xEC0000006E656B6FLL);
            if ((v27 & 1) == 0)
            {

              p_opt_class_meths = (&OBJC_PROTOCOL___AKPrivateEmailPresenterHostProtocol + 48);
              break;
            }

            v28 = (*(v18 + 56) + 16 * v26);
            v30 = *v28;
            v29 = v28[1];

            if (!*(v64 + 16))
            {

LABEL_45:

              p_opt_class_meths = &OBJC_PROTOCOL___AKPrivateEmailPresenterHostProtocol.opt_class_meths;
              break;
            }

            v31 = *(v0 + 192);
            v32 = sub_10023A350(v24, v25);
            v34 = v33;

            if ((v34 & 1) == 0)
            {
              goto LABEL_45;
            }

            v35 = *(*(*(v0 + 192) + 56) + 8 * v32);
            v36 = [v35 shareInfo];
            if (v36)
            {
              v37 = v36;
              v38 = String._bridgeToObjectiveC()();

              [v37 setShareToken:v38];
            }

            else
            {
            }

            v39 = v35;
            v40 = sub_1002082EC(v39);

            p_opt_class_meths = (&OBJC_PROTOCOL___AKPrivateEmailPresenterHostProtocol + 48);
            v41 = v40;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v42 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              p_opt_class_meths = (&OBJC_PROTOCOL___AKPrivateEmailPresenterHostProtocol + 48);
            }

            v17 = v65 + 1;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v16 = v62;
            if (v63 == v65 + 1)
            {
              goto LABEL_39;
            }
          }

          if (p_opt_class_meths[379] == -1)
          {
            goto LABEL_47;
          }

LABEL_50:
          swift_once();
LABEL_47:
          v61 = type metadata accessor for Logger();
          sub_1001AD2E4(v61, qword_100377698);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v45, v46))
          {
            goto LABEL_31;
          }

          v47 = swift_slowAlloc();
          *v47 = 0;
          v48 = "Missing parameters in response";
          goto LABEL_30;
        }
      }

      else
      {

        sub_1001AD3EC(v0 + 80);
      }
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1001AD2E4(v44, qword_100377698);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_31;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "Update share token failed. Invalid response data";
LABEL_30:
    _os_log_impl(&_mh_execute_header, v45, v46, v48, v47, 2u);

LABEL_31:

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 144) = -16008;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v49 = *(v0 + 80);
    goto LABEL_32;
  }

  v43 = v6;
  _convertNSErrorToError(_:)();

LABEL_32:
  swift_willThrow();
  sub_100013B34(v3, v2);
  if (p_opt_class_meths[379] != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_1001AD2E4(v50, qword_100377698);
  swift_errorRetain();
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    swift_errorRetain();
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 4) = v55;
    *v54 = v55;
    _os_log_impl(&_mh_execute_header, v51, v52, "Generate share token failed. Error occurred while executing the request - %@", v53, 0xCu);
    sub_1001B4EB8(v54);
  }

  v56 = *(v0 + 208);

  swift_willThrow();
  swift_unknownObjectRelease();
  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1001D19FC()
{
  v1 = v0[29];
  swift_willThrow();
  v2 = v0[29];
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1001AD2E4(v3, qword_100377698);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Generate share token failed. Error occurred while executing the request - %@", v6, 0xCu);
    sub_1001B4EB8(v7);
  }

  v9 = v0[26];

  swift_willThrow();
  swift_unknownObjectRelease();
  v10 = v0[1];

  return v10();
}

uint64_t sub_1001D1BC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1001D1C1C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001D1DCC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001D1F7C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001D21A0(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;

  return _swift_task_switch(sub_1001D2234, 0, 0);
}

uint64_t sub_1001D2234()
{
  v1 = *(*(v0 + 192) + OBJC_IVAR___AKApplicationMetadataService_serviceController);
  *(v0 + 200) = [v1 requestProvider];
  type metadata accessor for ApplicationMetadataRequestProvider();
  v2 = swift_dynamicCastClass();
  *(v0 + 208) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    *(v0 + 104) = &type metadata for String;
    *(v0 + 80) = v4;
    *(v0 + 88) = v5;
    sub_1000122C0((v0 + 80), (v0 + 144));

    v18 = v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000133C8((v0 + 144), 0x695F746E65696C63, 0xE900000000000064, isUniquelyReferenced_nonNull_native);
    swift_unknownObjectRetain();
    sub_1001CCD28(&_swiftEmptyDictionarySingleton);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 setAuthKitBody:isa];

    swift_unknownObjectRelease();
    v8 = &v3[OBJC_IVAR___AKApplicationMetadataRequestProvider_clientID];
    v9 = *&v3[OBJC_IVAR___AKApplicationMetadataRequestProvider_clientID + 8];
    *v8 = v4;
    *(v8 + 1) = v5;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1001D263C;
    v10 = swift_continuation_init();
    *(v0 + 136) = sub_1001AD17C(&qword_100372C80, &qword_10029E350);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1001CD6E4;
    *(v0 + 104) = &unk_1003272C8;
    *(v0 + 112) = v10;

    [v18 executeRequestWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1001AD2E4(v11, qword_100377698);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to fetch Primary App Info due to an invalid request", v14, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 144) = -16007;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v15 = *(v0 + 80);
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1001D263C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_1001D2C78;
  }

  else
  {
    v3 = sub_1001D2778;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001D2778()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 80) = 0;
  v5 = [v1 validateResponseData:isa error:v0 + 80];

  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = Data._bridgeToObjectiveC()().super.isa;
    v10 = [v7 dictionaryFromObject:v9 ofType:@"application/x-plist"];

    if (v10)
    {
      v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = sub_100234C9C(v11);

      if (v12)
      {
        if (qword_100371BD8 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_1001AD2E4(v13, qword_100377698);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "Fetch Primary App Info succeeded", v16, 2u);
        }

        v17 = *(v0 + 200);
        sub_100013B34(v3, v2);

        swift_unknownObjectRelease();
        v18 = *(v0 + 8);

        return v18(v12);
      }
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1001AD2E4(v21, qword_100377698);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Fetch Primary App Info failed. Invalid response data", v24, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 144) = -16008;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v25 = *(v0 + 80);
  }

  else
  {
    v20 = v6;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  sub_100013B34(v3, v2);
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1001AD2E4(v26, qword_100377698);
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v31;
    *v30 = v31;
    _os_log_impl(&_mh_execute_header, v27, v28, "Fetch Primary App Info failed. Error occurred while executing the request - %@", v29, 0xCu);
    sub_1001B4EB8(v30);
  }

  v32 = *(v0 + 200);

  swift_willThrow();
  swift_unknownObjectRelease();
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1001D2C78()
{
  v1 = v0[27];
  swift_willThrow();
  v2 = v0[27];
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1001AD2E4(v3, qword_100377698);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetch Primary App Info failed. Error occurred while executing the request - %@", v6, 0xCu);
    sub_1001B4EB8(v7);
  }

  v9 = v0[25];

  swift_willThrow();
  swift_unknownObjectRelease();
  v10 = v0[1];

  return v10();
}

uint64_t sub_1001D2FC4(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001D3098;

  return sub_1001D21A0(v5, v7);
}

uint64_t sub_1001D3098()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_1001D3258()
{
  *(v1 + 208) = v0;
  v2 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  *(v1 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_1001D3314, 0, 0);
}

uint64_t sub_1001D3314()
{
  v1 = *(v0[26] + OBJC_IVAR___AKApplicationMetadataService_serviceController);
  v0[28] = [v1 requestProvider];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v0[29] = v2;
  if (v2)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001D3610;
    v3 = swift_continuation_init();
    v0[17] = sub_1001AD17C(&qword_100372C80, &qword_10029E350);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001CD6E4;
    v0[13] = &unk_100327228;
    v0[14] = v3;
    [v1 executeRequestWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1001AD2E4(v4, qword_100377698);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to share due to an invalid request", v7, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[22] = -16007;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v8 = v0[21];
    swift_willThrow();
    v9 = v0[27];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1001D3610()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_1001D3B38;
  }

  else
  {
    v3 = sub_1001D374C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001D374C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 184) = 0;
  v5 = [v1 validateResponseData:isa error:v0 + 184];

  v6 = *(v0 + 184);
  if (v5)
  {
    v7 = *(v0 + 216);
    v8 = v6;
    static String.Encoding.utf8.getter();
    v9 = String.init(data:encoding:)();
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v14 = *(v0 + 216);
      v13 = *(v0 + 224);
      sub_100013B34(v2, v3);
      swift_unknownObjectRelease();

      v15 = *(v0 + 8);

      return v15(v11, v12);
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1001AD2E4(v18, qword_100377698);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Fetch Authorization HTML template failed. Invalid response data", v21, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 200) = -16008;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v22 = *(v0 + 192);
  }

  else
  {
    v17 = v6;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  sub_100013B34(v2, v3);
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1001AD2E4(v23, qword_100377698);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, v24, v25, "Fetch Authorization HTML template failed with error - %@", v26, 0xCu);
    sub_1001B4EB8(v27);
  }

  v29 = *(v0 + 224);

  swift_willThrow();
  swift_unknownObjectRelease();
  v30 = *(v0 + 216);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1001D3B38()
{
  v1 = v0[30];
  swift_willThrow();
  v2 = v0[30];
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1001AD2E4(v3, qword_100377698);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetch Authorization HTML template failed with error - %@", v6, 0xCu);
    sub_1001B4EB8(v7);
  }

  v9 = v0[28];

  swift_willThrow();
  swift_unknownObjectRelease();
  v10 = v0[27];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001D3E78(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1001D3F20;

  return sub_1001D3258();
}

uint64_t sub_1001D3F20()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

id sub_1001D40E0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001D414C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001D4578;

  return sub_1001D3E78(v2, v3);
}

uint64_t sub_1001D41F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001D42AC;

  return sub_1001D2FC4(v2, v3, v4);
}

uint64_t sub_1001D42AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001D43A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001D457C;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_1001D4460()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D44A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001D4580;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_1001D45A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Date();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001D4670, 0, 0);
}

id sub_1001D4670()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[10] = sub_1001AD2E4(v2, qword_100377668);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "DeletedDeviceListProvider - Begin saving deleted device %@", v7, 0xCu);
    sub_1001D623C(v8, &unk_1003726A0, &unk_10029CFA0);
  }

  v10 = v0[2];

  result = [v10 lastUpdatedDate];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = result;
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[7];
  v16 = v0[2];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince1970.getter();
  v18 = v17;
  v19 = *(v15 + 8);
  v19(v13, v14);
  v20 = [objc_allocWithZone(NSDecimalNumber) initWithDouble:v18];
  v0[11] = v20;
  result = [v16 deletedDate];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[2];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince1970.getter();
  v26 = v25;
  v19(v22, v23);
  v27 = [objc_allocWithZone(NSDecimalNumber) initWithDouble:v26];
  v0[12] = v27;
  sub_1001AD17C(&unk_100374270, &qword_10029DE30);
  v28 = swift_allocObject();
  v0[13] = v28;
  *(v28 + 16) = xmmword_10029DA60;
  v29 = [v24 machineId];
  if (!v29)
  {
    v31 = 0;
    *(v28 + 56) = &type metadata for String;
    goto LABEL_11;
  }

  v30 = v29;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  *(v28 + 56) = &type metadata for String;
  if (!v33)
  {
    v31 = 0;
LABEL_11:
    v33 = 0xE000000000000000;
  }

  v35 = v0[3];
  v34 = v0[4];
  v36 = v0[2];
  *(v28 + 32) = v31;
  *(v28 + 40) = v33;
  v37 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v36, "removalReason")}];
  *(v28 + 88) = sub_100013BB8(0, &qword_100372D58, NSNumber_ptr);
  *(v28 + 64) = v37;
  v38 = sub_100013BB8(0, &qword_100372D60, NSDecimalNumber_ptr);
  *(v28 + 96) = v20;
  *(v28 + 120) = v38;
  *(v28 + 128) = v35;
  *(v28 + 136) = v34;
  *(v28 + 184) = v38;
  *(v28 + 152) = &type metadata for String;
  *(v28 + 160) = v27;
  v39 = v20;

  v40 = v27;
  _StringGuts.grow(_:)(105);
  v41._countAndFlagsBits = 0xD000000000000017;
  v41._object = 0x80000001002AAF70;
  String.append(_:)(v41);
  v42._object = 0x80000001002AAF90;
  v42._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD000000000000050;
  v43._object = 0x80000001002AAFB0;
  String.append(_:)(v43);
  v0[14] = 0xE000000000000000;
  v44 = swift_task_alloc();
  v0[15] = v44;
  *v44 = v0;
  v44[1] = sub_1001D4AF0;
  v45 = v0[5];

  return sub_1001BD4F8(0, 0xE000000000000000, v28);
}

uint64_t sub_1001D4AF0(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  v9 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v7 = sub_1001D4DB8;
  }

  else
  {
    v7 = sub_1001D4C4C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001D4C4C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v5;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v3, v4, "DeletedDeviceListProvider - Finished saving deleted device %@ with success: %{BOOL}d", v7, 0x12u);
    sub_1001D623C(v8, &unk_1003726A0, &unk_10029CFA0);
  }

  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v13 = *(v0 + 64);
  v12 = *(v0 + 72);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1001D4DB8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);
  v5 = *(v0 + 128);

  return v4();
}

uint64_t sub_1001D4E3C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001D4E5C, 0, 0);
}

uint64_t sub_1001D4E5C()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377668);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DeletedDeviceListProvider - Begin clearing stale deleted devices", v4, 2u);
  }

  v5 = v0[2];

  v6 = [v5 allAuthKitAccounts];
  if (!v6)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "DeletedDeviceListProvider - No IdMS accounts found. Ineligible for clearing cache.", v18, 2u);
    }

    goto LABEL_19;
  }

  v7 = v6;
  sub_100013BB8(0, &qword_100372D68, ACAccount_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[4] = v8;

  if (v8 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[5] = result;
  v10 = v0[4];
  if (!result)
  {
    v19 = v0[4];

LABEL_19:
    v20 = v0[1];

    return v20();
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;
  v0[6] = v11;
  v0[7] = 1;
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = sub_1001D511C;
  v14 = v0[2];
  v15 = v0[3];

  return sub_1001D53E0(v14, v12);
}

uint64_t sub_1001D511C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);

    v5 = sub_1001D537C;
  }

  else
  {
    v5 = sub_1001D5238;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1001D5238()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  if (v1 == v2)
  {
    v3 = *(v0 + 32);

    v4 = *(v0 + 8);

    v4();
    return;
  }

  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v12 = *(v0 + 56);
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v7 = *(v6 + 8 * v5 + 32);
  }

  v8 = v7;
  *(v0 + 48) = v7;
  *(v0 + 56) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_1001D511C;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);

  sub_1001D53E0(v10, v8);
}

uint64_t sub_1001D537C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_1001D53E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D5404, 0, 0);
}

uint64_t sub_1001D5404()
{
  v1 = [*(v0 + 16) altDSIDForAccount:*(v0 + 24)];
  if (v1)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = v1;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = [v3 deletedDevicesCacheExpiryOffsetForAccount:v2];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE200000000000000;
      v10 = 13361;
    }

    _StringGuts.grow(_:)(95);
    v24._countAndFlagsBits = 0x46204554454C4544;
    v24._object = 0xEC000000204D4F52;
    String.append(_:)(v24);
    v25._object = 0x80000001002AAF90;
    v25._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0xD000000000000048;
    v26._object = 0x80000001002AB060;
    String.append(_:)(v26);
    v27._countAndFlagsBits = v10;
    v27._object = v12;
    String.append(_:)(v27);

    v28._countAndFlagsBits = 0x29292779616420;
    v28._object = 0xE700000000000000;
    String.append(_:)(v28);
    *(v0 + 40) = 0xE000000000000000;
    sub_1001AD17C(&unk_100374270, &qword_10029DE30);
    v29 = swift_allocObject();
    *(v0 + 48) = v29;
    *(v29 + 16) = xmmword_10029BEB0;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 32) = v5;
    *(v29 + 40) = v7;
    v30 = swift_task_alloc();
    *(v0 + 56) = v30;
    *v30 = v0;
    v30[1] = sub_1001D5784;
    v31 = *(v0 + 32);

    return sub_1001BD4F8(0, 0xE000000000000000, v29);
  }

  else
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 24);
    v14 = type metadata accessor for Logger();
    sub_1001AD2E4(v14, qword_100377668);
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 24);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v18;
      *v20 = v18;
      v21 = v18;
      _os_log_impl(&_mh_execute_header, v16, v17, "DeletedDeviceListProvider - Account %@ is missing altDSID. Ineligible for clearing cache.", v19, 0xCu);
      sub_1001D623C(v20, &unk_1003726A0, &unk_10029CFA0);
    }

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1001D5784(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 64) = a1;

  v6 = *(v3 + 48);
  v7 = *(v3 + 40);
  if (v1)
  {

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_1001D5918, 0, 0);
  }
}

uint64_t sub_1001D5918()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377668);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 64);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "DeletedDeviceListProvider - Finished clearing cache with success: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001D5A44()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001D5AF4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1001D5B24(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001D5B44, 0, 0);
}

uint64_t sub_1001D5B44()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v0 + 120) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  v6 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        v7 = *(v0 + 16);
        if (v8 >= (((1 << *(v0 + 120)) + 63) >> 6))
        {
          break;
        }

        v5 = *(v7 + 8 * v8 + 64);
        ++v6;
        if (v5)
        {
          v6 = v8;
          goto LABEL_13;
        }
      }

      v21 = *(v0 + 8);

      return v21();
    }

    v7 = *(v0 + 16);
LABEL_13:
    *(v0 + 32) = v5;
    *(v0 + 40) = v6;
    v9 = __clz(__rbit64(v5)) | (v6 << 6);
    v10 = (*(v7 + 48) + 16 * v9);
    *(v0 + 48) = *v10;
    *(v0 + 56) = v10[1];
    v11 = *(*(v7 + 56) + 8 * v9);
    *(v0 + 64) = v11;

    v12 = v11;
    v13 = [v12 deletedDeviceList];
    if (!v13)
    {

      goto LABEL_6;
    }

    v14 = v13;
    sub_100013BB8(0, &unk_100374310, AKRemoteDevice_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 72) = v15;

    result = v15 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 80) = result;
    v17 = *(v0 + 72);
    if (result)
    {
      break;
    }

    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);

    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
LABEL_6:
    v5 &= v5 - 1;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v22 = *(v17 + 32);
  }

  v23 = v22;
  *(v0 + 88) = v22;
  *(v0 + 96) = 1;
  v24 = swift_task_alloc();
  *(v0 + 104) = v24;
  *v24 = v0;
  v24[1] = sub_1001D5DF8;
  v25 = *(v0 + 48);
  v26 = *(v0 + 56);
  v27 = *(v0 + 24);

  return sub_1001D45A0(v23, v25, v26);
}

uint64_t sub_1001D5DF8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = *(v2 + 56);

    v6 = sub_1001D61C8;
  }

  else
  {
    v6 = sub_1001D5F20;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_1001D5F20()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  if (v1 == v2)
  {
    v3 = AKRemoteDevice_ptr;
    while (2)
    {
      v5 = *(v0 + 64);
      v4 = *(v0 + 72);
      v6 = *(v0 + 56);

      v8 = *(v0 + 32);
      v7 = *(v0 + 40);
      while (1)
      {
        v8 &= v8 - 1;
        if (!v8)
        {
          while (1)
          {
            v10 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
              goto LABEL_29;
            }

            v9 = *(v0 + 16);
            if (v10 >= (((1 << *(v0 + 120)) + 63) >> 6))
            {
              break;
            }

            v8 = *(v9 + 8 * v10 + 64);
            ++v7;
            if (v8)
            {
              v7 = v10;
              goto LABEL_10;
            }
          }

          v27 = *(v0 + 8);

          v27();
          return;
        }

        v9 = *(v0 + 16);
LABEL_10:
        *(v0 + 32) = v8;
        *(v0 + 40) = v7;
        v11 = __clz(__rbit64(v8)) | (v7 << 6);
        v12 = (*(v9 + 48) + 16 * v11);
        *(v0 + 48) = *v12;
        *(v0 + 56) = v12[1];
        v13 = *(*(v9 + 56) + 8 * v11);
        *(v0 + 64) = v13;

        v14 = v13;
        v15 = [v14 deletedDeviceList];
        if (v15)
        {
          break;
        }
      }

      v16 = v15;
      sub_100013BB8(0, &unk_100374310, AKRemoteDevice_ptr);
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 72) = v17;

      if (v17 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
        *(v0 + 80) = v19;
        if (!v19)
        {
          continue;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 80) = v18;
        if (!v18)
        {
          continue;
        }
      }

      break;
    }

    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 96);
  }

  v20 = *(v0 + 72);
  if ((v20 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v3 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_31:
      __break(1u);
      return;
    }

    v21 = *(v20 + 8 * v3 + 32);
  }

  v22 = v21;
  *(v0 + 88) = v21;
  *(v0 + 96) = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v23 = swift_task_alloc();
  *(v0 + 104) = v23;
  *v23 = v0;
  v23[1] = sub_1001D5DF8;
  v24 = *(v0 + 48);
  v25 = *(v0 + 56);
  v26 = *(v0 + 24);

  sub_1001D45A0(v22, v24, v25);
}

uint64_t sub_1001D61C8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[2];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_1001D623C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1001AD17C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1001D62BC()
{
  v1 = [*(v0[4] + 16) primaryAuthKitAccount];
  v0[5] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *sub_1001DE244((v0[4] + 24), *(v0[4] + 48));
    sub_10020EF90(v2);
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = sub_1001D64E0;
    v12 = v0[4];

    return sub_1001D8E24();
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1001AD2E4(v4, qword_100377698);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No logged in authKit account. Skipping Sign in with Apple health check", v7, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[3] = -16004;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v8 = v0[2];
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1001D64E0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1001D8B80;
  }

  else
  {
    v3 = sub_1001DE9EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001D65F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = sub_1001D68BC;
  }

  else
  {
    v5 = sub_1001D670C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001D670C()
{
  v15 = v0;
  v1 = v0[9];
  v2 = v0[7];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_1001AD17C(&qword_1003729C8, &unk_10029D620);
    v8 = Dictionary.description.getter();
    v10 = sub_10024B050(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetched shared groups - %s", v6, 0xCu);
    sub_1001DDD7C(v7);
  }

  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_1001D6920;
  v12 = v0[4];

  return sub_1001D9BE0();
}

uint64_t sub_1001D68BC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D6920(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_1001D8D4C;
  }

  else
  {
    v5 = sub_1001D6A34;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001D6A34()
{
  v109 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v108 = v7;
    *v6 = 136315138;
    sub_1001AD17C(&qword_1003729C8, &unk_10029D620);
    v8 = Dictionary.description.getter();
    v10 = sub_10024B050(v8, v9, &v108);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetched group status in keychain - %s", v6, 0xCu);
    sub_1001DDD7C(v7);
  }

  v11 = *(v0 + 96);
  v12 = *(v0 + 72);

  v14 = sub_10022C268(v13);
  *(v0 + 112) = v14;

  v16 = sub_10022C268(v15);
  *(v0 + 120) = v16;
  if (*(v16 + 16) <= v14[2] >> 3)
  {
    v108 = v14;

    sub_100232C34(v16);
    v17 = v108;
  }

  else
  {

    v17 = sub_100232D60(v16, v14);
  }

  *(v0 + 128) = v17;
  v18 = v17[2];
  if (v18)
  {
    v19 = sub_100230ACC(v17[2], 0);
    *(v0 + 136) = v19;
    v20 = sub_100233C88(&v108, v19 + 4, v18, v17);

    sub_1001DD774();
    if (v20 == v18)
    {
      v21 = *(v0 + 56);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Groups not in sync with keychain", v24, 2u);
      }

      v25 = *(v0 + 56);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v108 = v29;
        *v28 = 136315138;
        v30 = Array.description.getter();
        v32 = sub_10024B050(v30, v31, &v108);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "Performing unshare for accounts in groups - %s", v28, 0xCu);
        sub_1001DDD7C(v29);
      }

      v33 = *sub_1001DE244((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
      v34 = swift_task_alloc();
      *(v0 + 144) = v34;
      *v34 = v0;
      v34[1] = sub_1001D75E8;

      return sub_1001C0024(v19);
    }

    goto LABEL_61;
  }

  v36 = *(v0 + 56);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Groups in server are in sync with keychain", v39, 2u);
  }

  v40 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 104);
  v41 = *(v0 + 120);
  if (*(v40 + 16) <= v41[2] >> 3)
  {
    v108 = *(v0 + 120);
    sub_100232C34(v40);

    v42 = v108;
  }

  else
  {
    v42 = sub_100232D60(v40, v41);
  }

  *(v0 + 168) = v42;
  v43 = v42[2];
  v44 = *(v0 + 56);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v47 = os_log_type_enabled(v45, v46);
  if (v43)
  {
    if (v47)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Keychain has items belonging to orphaned groups", v48, 2u);
    }

    v49 = *(v0 + 56);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v108 = v53;
      *v52 = 136315138;
      v54 = Set.description.getter();
      v56 = sub_10024B050(v54, v55, &v108);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Cleaning up items belonging to groups - %s", v52, 0xCu);
      sub_1001DDD7C(v53);
    }

    v57 = *(v0 + 32);
    v58 = swift_task_alloc();
    *(v0 + 176) = v58;
    *(v58 + 16) = v42;
    *(v58 + 24) = v57;
    v59 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v60 = swift_task_alloc();
    *(v0 + 184) = v60;
    *v60 = v0;
    v60[1] = sub_1001D7F44;
    v111 = &type metadata for () + 8;

    return withTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  if (v47)
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Groups sync complete", v61, 2u);
  }

  v62 = *(v0 + 56);

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "Starting accounts sync for remaining groups.", v65, 2u);
  }

  v67 = *(v0 + 160);
  v66 = *(v0 + 168);
  v68 = *(v0 + 128);
  v69 = *(v0 + 96);
  v70 = *(v0 + 72);

  v71 = sub_1001DDBBC(v70, v68);
  *(v0 + 192) = v71;
  swift_bridgeObjectRelease_n();

  *(v0 + 200) = sub_1001DDBBC(v69, v66);
  swift_bridgeObjectRelease_n();

  v72 = *(v71 + 32);
  *(v0 + 264) = v72;
  v73 = 1 << v72;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  else
  {
    v74 = -1;
  }

  v75 = v74 & *(v71 + 64);

  v76 = 0;
  if (v75)
  {
    goto LABEL_38;
  }

  while (1)
  {
LABEL_39:
    v78 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      return withTaskGroup<A, B>(of:returning:isolation:body:)();
    }

    if (v78 >= (((1 << *(v0 + 264)) + 63) >> 6))
    {
      break;
    }

    v77 = *(v0 + 192);
    v75 = *(v77 + 8 * v78 + 64);
    ++v76;
    if (v75)
    {
      v76 = v78;
      while (1)
      {
        *(v0 + 208) = v75;
        *(v0 + 216) = v76;
        v79 = __clz(__rbit64(v75));
        v75 &= v75 - 1;
        v80 = (*(v77 + 48) + ((v76 << 10) | (16 * v79)));
        v82 = *v80;
        v81 = v80[1];
        *(v0 + 224) = v81;
        v83 = *(v77 + 16);

        if (v83 && (v84 = sub_10023A350(v82, v81), (v85 & 1) != 0))
        {
          v86 = *(v0 + 200);
          v87 = *(*(*(v0 + 192) + 56) + 8 * v84);
          *(v0 + 232) = v87;
          if (*(v86 + 16))
          {

            v88 = sub_10023A350(v82, v81);
            if (v89)
            {
              v105 = *(*(*(v0 + 200) + 56) + 8 * v88);
              *(v0 + 240) = v105;

              v106 = swift_task_alloc();
              *(v0 + 248) = v106;
              *v106 = v0;
              v106[1] = sub_1001D8664;
              v107 = *(v0 + 32);

              return sub_1001DAA1C(v82, v81, v87, v105);
            }
          }

          v90 = *(v0 + 56);

          v91 = Logger.logObject.getter();
          v92 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v91, v92))
          {
LABEL_37:

            if (!v75)
            {
              goto LABEL_39;
            }

            goto LABEL_38;
          }

          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v108 = v94;
          *v93 = 136315138;
          v95 = sub_10024B050(v82, v81, &v108);

          *(v93 + 4) = v95;
          v96 = v92;
          v97 = v91;
          v98 = "No accounts found in keychain for group %s";
        }

        else
        {
          v99 = *(v0 + 56);

          v91 = Logger.logObject.getter();
          v100 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v91, v100))
          {
            goto LABEL_37;
          }

          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v108 = v94;
          *v93 = 136315138;
          v101 = sub_10024B050(v82, v81, &v108);

          *(v93 + 4) = v101;
          v96 = v100;
          v97 = v91;
          v98 = "No accounts found in server for group %s";
        }

        _os_log_impl(&_mh_execute_header, v97, v96, v98, v93, 0xCu);
        sub_1001DDD7C(v94);

        if (!v75)
        {
          goto LABEL_39;
        }

LABEL_38:
        v77 = *(v0 + 192);
      }
    }
  }

  v102 = *(v0 + 192);
  v103 = *(v0 + 200);

  v104 = *(v0 + 8);

  return v104();
}

uint64_t sub_1001D75E8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  v2[19] = v0;

  v5 = v2[17];
  if (v0)
  {
    v6 = v2[15];
    v7 = v2[16];
    v8 = v2[14];
    v9 = v2[12];
    v10 = v2[9];

    v11 = sub_1001D7EE0;
  }

  else
  {

    v11 = sub_1001D7764;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1001D7764()
{
  v71 = v0;
  *(v0 + 160) = *(v0 + 152);
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  if (*(v2 + 16) <= v1[2] >> 3)
  {
    v70 = *(v0 + 120);
    sub_100232C34(v2);

    v3 = v70;
  }

  else
  {
    v3 = sub_100232D60(*(v0 + 112), v1);
  }

  *(v0 + 168) = v3;
  v4 = v3[2];
  v5 = *(v0 + 56);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  if (v4)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Keychain has items belonging to orphaned groups", v9, 2u);
    }

    v10 = *(v0 + 56);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v70 = v14;
      *v13 = 136315138;
      v15 = Set.description.getter();
      v17 = sub_10024B050(v15, v16, &v70);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Cleaning up items belonging to groups - %s", v13, 0xCu);
      sub_1001DDD7C(v14);
    }

    v18 = *(v0 + 32);
    v19 = swift_task_alloc();
    *(v0 + 176) = v19;
    *(v19 + 16) = v3;
    *(v19 + 24) = v18;
    v20 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v21 = swift_task_alloc();
    *(v0 + 184) = v21;
    *v21 = v0;
    v21[1] = sub_1001D7F44;
    v73 = &type metadata for () + 8;

    return withTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  if (v8)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Groups sync complete", v22, 2u);
  }

  v23 = *(v0 + 56);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Starting accounts sync for remaining groups.", v26, 2u);
  }

  v28 = *(v0 + 160);
  v27 = *(v0 + 168);
  v29 = *(v0 + 128);
  v30 = *(v0 + 96);
  v31 = *(v0 + 72);

  v32 = sub_1001DDBBC(v31, v29);
  *(v0 + 192) = v32;
  swift_bridgeObjectRelease_n();

  *(v0 + 200) = sub_1001DDBBC(v30, v27);
  swift_bridgeObjectRelease_n();

  v33 = *(v32 + 32);
  *(v0 + 264) = v33;
  v34 = 1 << v33;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & *(v32 + 64);

  v37 = 0;
  if (v36)
  {
    goto LABEL_22;
  }

  while (1)
  {
LABEL_23:
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      return withTaskGroup<A, B>(of:returning:isolation:body:)();
    }

    if (v39 >= (((1 << *(v0 + 264)) + 63) >> 6))
    {
      break;
    }

    v38 = *(v0 + 192);
    v36 = *(v38 + 8 * v39 + 64);
    ++v37;
    if (v36)
    {
      v37 = v39;
      while (1)
      {
        *(v0 + 208) = v36;
        *(v0 + 216) = v37;
        v40 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
        v41 = (*(v38 + 48) + ((v37 << 10) | (16 * v40)));
        v43 = *v41;
        v42 = v41[1];
        *(v0 + 224) = v42;
        v44 = *(v38 + 16);

        if (v44 && (v45 = sub_10023A350(v43, v42), (v46 & 1) != 0))
        {
          v47 = *(v0 + 200);
          v48 = *(*(*(v0 + 192) + 56) + 8 * v45);
          *(v0 + 232) = v48;
          if (*(v47 + 16))
          {

            v49 = sub_10023A350(v43, v42);
            if (v50)
            {
              v67 = *(*(*(v0 + 200) + 56) + 8 * v49);
              *(v0 + 240) = v67;

              v68 = swift_task_alloc();
              *(v0 + 248) = v68;
              *v68 = v0;
              v68[1] = sub_1001D8664;
              v69 = *(v0 + 32);

              return sub_1001DAA1C(v43, v42, v48, v67);
            }
          }

          v51 = *(v0 + 56);

          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v52, v53))
          {
LABEL_21:

            if (!v36)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v70 = v55;
          *v54 = 136315138;
          v56 = sub_10024B050(v43, v42, &v70);

          *(v54 + 4) = v56;
          v57 = v53;
          v58 = v52;
          v59 = "No accounts found in keychain for group %s";
        }

        else
        {
          v60 = *(v0 + 56);

          v52 = Logger.logObject.getter();
          v61 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v52, v61))
          {
            goto LABEL_21;
          }

          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v70 = v55;
          *v54 = 136315138;
          v62 = sub_10024B050(v43, v42, &v70);

          *(v54 + 4) = v62;
          v57 = v61;
          v58 = v52;
          v59 = "No accounts found in server for group %s";
        }

        _os_log_impl(&_mh_execute_header, v58, v57, v59, v54, 0xCu);
        sub_1001DDD7C(v55);

        if (!v36)
        {
          goto LABEL_23;
        }

LABEL_22:
        v38 = *(v0 + 192);
      }
    }
  }

  v63 = *(v0 + 192);
  v64 = *(v0 + 200);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1001D7EE0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D7F44()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_1001D805C, 0, 0);
}

void sub_1001D805C()
{
  v62 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v61[0] = v7;
    *v6 = 136315138;
    v8 = Set.description.getter();
    v10 = sub_10024B050(v8, v9, v61);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cleaned up items belonging to groups - %s", v6, 0xCu);
    sub_1001DDD7C(v7);
  }

  v11 = *(v0 + 56);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Groups sync complete", v14, 2u);
  }

  v15 = *(v0 + 56);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Starting accounts sync for remaining groups.", v18, 2u);
  }

  v20 = *(v0 + 160);
  v19 = *(v0 + 168);
  v21 = *(v0 + 128);
  v22 = *(v0 + 96);
  v23 = *(v0 + 72);

  v24 = sub_1001DDBBC(v23, v21);
  *(v0 + 192) = v24;
  swift_bridgeObjectRelease_n();

  *(v0 + 200) = sub_1001DDBBC(v22, v19);
  swift_bridgeObjectRelease_n();

  v25 = *(v24 + 32);
  *(v0 + 264) = v25;
  v26 = 1 << v25;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v24 + 64);

  v29 = 0;
  if (v28)
  {
    goto LABEL_13;
  }

  while (1)
  {
LABEL_14:
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      return;
    }

    if (v31 >= (((1 << *(v0 + 264)) + 63) >> 6))
    {
      break;
    }

    v30 = *(v0 + 192);
    v28 = *(v30 + 8 * v31 + 64);
    ++v29;
    if (v28)
    {
      v29 = v31;
      while (1)
      {
        *(v0 + 208) = v28;
        *(v0 + 216) = v29;
        v32 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v33 = (*(v30 + 48) + ((v29 << 10) | (16 * v32)));
        v35 = *v33;
        v34 = v33[1];
        *(v0 + 224) = v34;
        v36 = *(v30 + 16);

        if (v36 && (v37 = sub_10023A350(v35, v34), (v38 & 1) != 0))
        {
          v39 = *(v0 + 200);
          v40 = *(*(*(v0 + 192) + 56) + 8 * v37);
          *(v0 + 232) = v40;
          if (*(v39 + 16))
          {

            v41 = sub_10023A350(v35, v34);
            if (v42)
            {
              v58 = *(*(*(v0 + 200) + 56) + 8 * v41);
              *(v0 + 240) = v58;

              v59 = swift_task_alloc();
              *(v0 + 248) = v59;
              *v59 = v0;
              v59[1] = sub_1001D8664;
              v60 = *(v0 + 32);

              sub_1001DAA1C(v35, v34, v40, v58);
              return;
            }
          }

          v43 = *(v0 + 56);

          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v44, v45))
          {
LABEL_12:

            if (!v28)
            {
              goto LABEL_14;
            }

            goto LABEL_13;
          }

          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v61[0] = v47;
          *v46 = 136315138;
          v48 = sub_10024B050(v35, v34, v61);

          *(v46 + 4) = v48;
          v49 = v45;
          v50 = v44;
          v51 = "No accounts found in keychain for group %s";
        }

        else
        {
          v52 = *(v0 + 56);

          v44 = Logger.logObject.getter();
          v53 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v44, v53))
          {
            goto LABEL_12;
          }

          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v61[0] = v47;
          *v46 = 136315138;
          v54 = sub_10024B050(v35, v34, v61);

          *(v46 + 4) = v54;
          v49 = v53;
          v50 = v44;
          v51 = "No accounts found in server for group %s";
        }

        _os_log_impl(&_mh_execute_header, v50, v49, v51, v46, 0xCu);
        sub_1001DDD7C(v47);

        if (!v28)
        {
          goto LABEL_14;
        }

LABEL_13:
        v30 = *(v0 + 192);
      }
    }
  }

  v55 = *(v0 + 192);
  v56 = *(v0 + 200);

  v57 = *(v0 + 8);

  v57();
}

uint64_t sub_1001D8664()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v11 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v5 = v2[29];
    v4 = v2[30];
    v6 = v2[28];
    v7 = v2[24];
    v8 = v2[25];

    v9 = sub_1001D8DB8;
  }

  else
  {
    v9 = sub_1001D87B8;
  }

  return _swift_task_switch(v9, 0, 0);
}

void sub_1001D87B8()
{
  v38 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);

  v4 = *(v0 + 216);
  v5 = (*(v0 + 208) - 1) & *(v0 + 208);
  if (v5)
  {
    goto LABEL_4;
  }

  while (1)
  {
LABEL_5:
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= (((1 << *(v0 + 264)) + 63) >> 6))
    {
      break;
    }

    v6 = *(v0 + 192);
    v5 = *(v6 + 8 * v7 + 64);
    ++v4;
    if (v5)
    {
      v4 = v7;
      while (1)
      {
        *(v0 + 208) = v5;
        *(v0 + 216) = v4;
        v8 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v9 = (*(v6 + 48) + ((v4 << 10) | (16 * v8)));
        v11 = *v9;
        v10 = v9[1];
        *(v0 + 224) = v10;
        v12 = *(v6 + 16);

        if (v12 && (v13 = sub_10023A350(v11, v10), (v14 & 1) != 0))
        {
          v15 = *(v0 + 200);
          v16 = *(*(*(v0 + 192) + 56) + 8 * v13);
          *(v0 + 232) = v16;
          if (*(v15 + 16))
          {

            v17 = sub_10023A350(v11, v10);
            if (v18)
            {
              v34 = *(*(*(v0 + 200) + 56) + 8 * v17);
              *(v0 + 240) = v34;

              v35 = swift_task_alloc();
              *(v0 + 248) = v35;
              *v35 = v0;
              v35[1] = sub_1001D8664;
              v36 = *(v0 + 32);

              sub_1001DAA1C(v11, v10, v16, v34);
              return;
            }
          }

          v19 = *(v0 + 56);

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v20, v21))
          {
LABEL_3:

            if (!v5)
            {
              goto LABEL_5;
            }

            goto LABEL_4;
          }

          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v37 = v23;
          *v22 = 136315138;
          v24 = sub_10024B050(v11, v10, &v37);

          *(v22 + 4) = v24;
          v25 = v21;
          v26 = v20;
          v27 = "No accounts found in keychain for group %s";
        }

        else
        {
          v28 = *(v0 + 56);

          v20 = Logger.logObject.getter();
          v29 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v20, v29))
          {
            goto LABEL_3;
          }

          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v37 = v23;
          *v22 = 136315138;
          v30 = sub_10024B050(v11, v10, &v37);

          *(v22 + 4) = v30;
          v25 = v29;
          v26 = v20;
          v27 = "No accounts found in server for group %s";
        }

        _os_log_impl(&_mh_execute_header, v26, v25, v27, v22, 0xCu);
        sub_1001DDD7C(v23);

        if (!v5)
        {
          goto LABEL_5;
        }

LABEL_4:
        v6 = *(v0 + 192);
      }
    }
  }

  v31 = *(v0 + 192);
  v32 = *(v0 + 200);

  v33 = *(v0 + 8);

  v33();
}

uint64_t sub_1001D8B80()
{
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_1001AD2E4(v1, qword_100377698);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if groups in server and keychain are in sync...", v4, 2u);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetching shared groups from IdMS…", v7, 2u);
  }

  v8 = v0[4];

  v9 = *sub_1001DE244((v8 + 72), *(v8 + 96));
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_1001D65F8;

  return sub_1001CF4A8();
}

uint64_t sub_1001D8D4C()
{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[13];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1001D8DB8()
{
  v1 = v0[24];
  v2 = v0[5];

  v3 = v0[32];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1001D8E24()
{
  *(v1 + 160) = v0;

  return _swift_task_switch(sub_1001D8EB4, 0, 0);
}

uint64_t sub_1001D8EB4()
{
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = sub_1001AD2E4(v1, qword_100377698);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting cleanup for items in orphaned groups", v4, 2u);
  }

  v5 = v0[20];

  v6 = *sub_1001DE244((v5 + 152), *(v5 + 176));
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_1001D9040;

  return sub_10020FF44();
}

uint64_t sub_1001D9040(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 184) = a1;

    return _swift_task_switch(sub_1001D91C8, 0, 0);
  }
}

uint64_t sub_1001D91C8()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = *&v1[OBJC_IVAR___AKSharedGroupsMembershipInfo_groupsAndParticipants];

  v0[24] = sub_10022C268(v4);

  v5 = *(v2 + 64);
  v0[25] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001D9344;
  v6 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100372E38, &unk_10029DBF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001DD224;
  v0[13] = &unk_100327490;
  v0[14] = v6;
  [v5 fetchSharedAccountsWithGroupID:0 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001D9344()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  if (v3)
  {
    v4 = *(v1 + 192);

    v5 = sub_1001D9B48;
  }

  else
  {
    v5 = sub_1001D9488;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001D9488()
{
  v78 = v0;
  v1 = v0[18];
  if (v1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v0[24];
    v68 = v1 + 32;
    v69 = v1 & 0xFFFFFFFFFFFFFF8;
    v74 = v1 & 0xC000000000000001;
    v75 = v4 + 56;
    v72 = i;
    v76 = v4;
    while (1)
    {
      if (v74)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v69 + 16))
        {
          goto LABEL_33;
        }

        v6 = *(v68 + 8 * v3);
      }

      v7 = v6;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v9 = [v6 shareInfo];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 groupID];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        if (*(v4 + 16) && (v15 = *(v4 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v16 = Hasher._finalize()(), v17 = -1 << *(v4 + 32), v18 = v16 & ~v17, ((*(v75 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
        {
          v19 = ~v17;
          while (1)
          {
            v20 = (*(v76 + 48) + 16 * v18);
            v21 = *v20 == v12 && v20[1] == v14;
            if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v75 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v4 = v76;
        }

        else
        {
LABEL_21:
          v22 = v0[21];

          v23 = v7;
          v24 = v10;
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.info.getter();

          v73 = v24;
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v77[0] = swift_slowAlloc();
            *v27 = 136315394;
            v28 = [v23 clientID];
            v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = v30;

            v32 = sub_10024B050(v29, v31, v77);

            *(v27 + 4) = v32;
            *(v27 + 12) = 2080;
            v33 = [v24 groupID];
            v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            v0 = v71;
            v37 = sub_10024B050(v34, v36, v77);
            v1 = v70;

            *(v27 + 14) = v37;
            _os_log_impl(&_mh_execute_header, v25, v26, "Shared SIWA account (%s) is associated with a group %s the user is no longer a member of. Deleting keychain item...", v27, 0x16u);
            swift_arrayDestroy();
          }

          v4 = v76;
          v38 = v0[25];
          v0[19] = 0;
          v39 = [v38 removeSharedAccount:v23 error:v0 + 19];
          v40 = v0[19];
          if (v39)
          {
            v5 = v40;

            i = v72;
          }

          else
          {
            v41 = v0[21];
            v42 = v40;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            v43 = v23;
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              v77[0] = v47;
              *v46 = 136315138;
              v48 = [v43 clientID];
              v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v51 = v50;

              v52 = v49;
              v1 = v70;
              v53 = sub_10024B050(v52, v51, v77);

              *(v46 + 4) = v53;
              v0 = v71;
              _os_log_impl(&_mh_execute_header, v44, v45, "Failed to remove account %s during cleanupItemBelongingToOrphanedGroups", v46, 0xCu);
              sub_1001DDD7C(v47);
            }

            else
            {
            }

            i = v72;
            v4 = v76;
          }
        }
      }

      else
      {
        v54 = v0[21];
        v55 = v7;
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v77[0] = v59;
          *v58 = 136315138;
          v60 = [v55 clientID];
          v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;

          v64 = sub_10024B050(v61, v63, v77);
          v1 = v70;

          *(v58 + 4) = v64;
          v0 = v71;
          i = v72;
          _os_log_impl(&_mh_execute_header, v56, v57, "Shared SIWA account (%s) with nil share info. Skipping...", v58, 0xCu);
          sub_1001DDD7C(v59);
          v4 = v76;
        }

        else
        {
        }
      }

      if (v3 == i)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:
  v65 = v0[24];

  v66 = v0[1];

  return v66();
}

uint64_t sub_1001D9B48()
{
  v1 = *(v0 + 208);
  swift_willThrow();
  v2 = *(v0 + 208);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001D9C00()
{
  v1 = *(v0[25] + 64);
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1001D9D24;
  v2 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100372E38, &unk_10029DBF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001DD224;
  v0[13] = &unk_100327468;
  v0[14] = v2;
  [v1 fetchSharedAccountsWithGroupID:0 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001D9D24()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1001DA2F8;
  }

  else
  {
    v3 = sub_1001D9E34;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1001D9E34(__n128 a1)
{
  v56 = v1;
  v2 = *(v1 + 192);
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_25:
    v6 = &_swiftEmptyDictionarySingleton;
LABEL_26:

    v48 = *(v50 + 8);

    v48(v6);
    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = &_swiftEmptyDictionarySingleton;
    v7 = &selRef_setPassword_;
    a1.n128_u64[0] = 136315138;
    v49 = a1;
    v51 = v3;
    v52 = v2;
    v53 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v2 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = [v8 v7[183]];
      if (v10)
      {
        v11 = v10;
        if ([v10 isCurrentUser])
        {
          v12 = [v11 groupID];
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          if (v6[2])
          {
            v16 = sub_10023A350(v13, v15);
            v18 = v17;

            if (v18)
            {
              v54 = *(v6[7] + 8 * v16);

              v19 = [v9 clientID];
              v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v22 = v21;

              sub_100232370(&v55, v20, v22);

              v23 = [v11 groupID];
              v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v26 = v25;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v55 = v6;
              v28 = v54;
LABEL_23:
              sub_1002319E4(v28, v24, v26, isUniquelyReferenced_nonNull_native);

              v6 = v55;
              v5 = v53;
              v7 = &selRef_setPassword_;
              goto LABEL_7;
            }
          }

          else
          {
          }

          v40 = [v11 groupID];
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v41;

          sub_1001AD17C(&qword_1003725B0, &qword_10029D9C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10029BEB0;
          v43 = [v9 clientID];
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;

          *(inited + 32) = v44;
          *(inited + 40) = v46;
          v3 = v51;
          v47 = sub_1001DD830(inited);
          swift_setDeallocating();
          sub_1001BB860(inited + 32);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v6;
          v28 = v47;
          v2 = v52;
          goto LABEL_23;
        }
      }

      else
      {
        if (qword_100371BD8 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_1001AD2E4(v29, qword_100377698);
        v9 = v9;
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v55 = v33;
          *v32 = v49.n128_u32[0];
          v34 = [v9 clientID];
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38 = v35;
          v5 = v53;
          v39 = sub_10024B050(v38, v37, &v55);

          *(v32 + 4) = v39;
          v3 = v51;
          _os_log_impl(&_mh_execute_header, v30, v31, "Shared SIWA account (%s) with nil share info. Skipping...", v32, 0xCu);
          sub_1001DDD7C(v33);
          v2 = v52;

          v7 = &selRef_setPassword_;

          goto LABEL_7;
        }
      }

LABEL_7:
      if (v3 == ++v4)
      {
        goto LABEL_26;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1001DA2F8()
{
  v1 = *(v0 + 208);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 208);

  return v2();
}

uint64_t sub_1001DA364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001DA410, 0, 0);
}

uint64_t sub_1001DA410()
{
  v1 = *(v0 + 80);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v35 = *(v0 + 80);

  v10 = 0;
  v33 = v8;
  v34 = v3;
  while (v7)
  {
LABEL_11:
    v14 = *(v0 + 104);
    v15 = *(v0 + 88);
    v16 = (*(v35 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
    v17 = v16[1];
    v36 = *v16;
    v37 = *(v0 + 96);
    v18 = type metadata accessor for TaskPriority();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v14, 1, 1, v18);
    v20 = swift_allocObject();
    v20[2] = 0;
    v21 = v20 + 2;
    v20[3] = 0;
    v20[4] = v15;
    v20[5] = v36;
    v20[6] = v17;
    sub_1001DE11C(v14, v37);
    LODWORD(v14) = (*(v19 + 48))(v37, 1, v18);

    v22 = *(v0 + 96);
    if (v14 == 1)
    {
      sub_100010DD0(*(v0 + 96));
      if (*v21)
      {
        goto LABEL_13;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v19 + 8))(v22, v18);
      if (*v21)
      {
LABEL_13:
        v23 = v20[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = dispatch thunk of Actor.unownedExecutor.getter();
        v26 = v25;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v24 = 0;
    v26 = 0;
LABEL_16:
    v27 = **(v0 + 72);
    v28 = swift_allocObject();
    *(v28 + 16) = &unk_10029DC28;
    *(v28 + 24) = v20;

    if (v26 | v24)
    {
      v11 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v24;
      *(v0 + 40) = v26;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v0 + 104);
    v7 &= v7 - 1;
    *(v0 + 48) = 1;
    *(v0 + 56) = v11;
    *(v0 + 64) = v27;
    swift_task_create();

    result = sub_100010DD0(v12);
    v8 = v33;
    v3 = v34;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  v29 = *(v0 + 96);
  v30 = *(v0 + 104);
  v31 = *(v0 + 80);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1001DA764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;

  return _swift_task_switch(sub_1001DA7F8, 0, 0);
}

uint64_t sub_1001DA7F8()
{
  v20 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(v0[3] + 64);
  v4 = String._bridgeToObjectiveC()();
  v0[2] = 0;
  v5 = [v3 cleanupAllItemsFrom:v4 error:v0 + 2];

  v6 = v0[2];
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v8 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v9 = v0[5];
    v10 = type metadata accessor for Logger();
    sub_1001AD2E4(v10, qword_100377698);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[4];
      v13 = v0[5];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10024B050(v14, v13, &v19);
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to cleanup items from group %s", v15, 0xCu);
      sub_1001DDD7C(v16);
    }
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001DAA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1001DAA44, 0, 0);
}

uint64_t sub_1001DAA44()
{
  v56 = v0;
  v2 = v0[4];
  v1 = v0[5];
  if (*(v1 + 16) <= v2[2] >> 3)
  {
    v55 = v0[4];

    sub_100232C34(v1);
    v4 = v55;
    v5 = v55[2];
    if (v5)
    {
LABEL_3:
      v6 = sub_100230ACC(v5, 0);
      v0[7] = v6;
      v7 = sub_100233C88(&v55, v6 + 4, v5, v4);
      sub_1001DD774();
      if (v7 == v5)
      {
        if (qword_100371BD8 == -1)
        {
LABEL_5:
          v8 = v0[3];
          v9 = type metadata accessor for Logger();
          sub_1001AD2E4(v9, qword_100377698);

          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v10, v11))
          {
            v13 = v0[2];
            v12 = v0[3];
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            v55 = v15;
            *v14 = 136315138;
            *(v14 + 4) = sub_10024B050(v13, v12, &v55);
            _os_log_impl(&_mh_execute_header, v10, v11, "Accounts in group %s not in sync with keychain", v14, 0xCu);
            sub_1001DDD7C(v15);
          }

          v16 = Logger.logObject.getter();
          v17 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            v19 = swift_slowAlloc();
            v55 = v19;
            *v18 = 136315138;
            v20 = Array.description.getter();
            v22 = sub_10024B050(v20, v21, &v55);

            *(v18 + 4) = v22;
            _os_log_impl(&_mh_execute_header, v16, v17, "Performing unshare for accounts - %s", v18, 0xCu);
            sub_1001DDD7C(v19);
          }

          v23 = v0[6];
          v25 = v0[2];
          v24 = v0[3];
          v26 = swift_task_alloc();
          v0[8] = v26;
          v26[2] = v6;
          v26[3] = v23;
          v26[4] = v25;
          v26[5] = v24;
          v27 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
          v28 = swift_task_alloc();
          v0[9] = v28;
          *v28 = v0;
          v28[1] = sub_1001DB1AC;
          v58 = &type metadata for () + 8;

          return withTaskGroup<A, B>(of:returning:isolation:body:)();
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_5;
    }
  }

  else
  {
    v3 = v0[4];

    v4 = sub_100232D60(v1, v2);
    v5 = v4[2];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v29 = v0[3];
  v30 = type metadata accessor for Logger();
  sub_1001AD2E4(v30, qword_100377698);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v34 = v0[2];
    v33 = v0[3];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v55 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_10024B050(v34, v33, &v55);
    _os_log_impl(&_mh_execute_header, v31, v32, "Accounts in group %s are in sync", v35, 0xCu);
    sub_1001DDD7C(v36);
  }

  v38 = v0[4];
  v37 = v0[5];
  if (*(v38 + 16) <= v37[2] >> 3)
  {
    v55 = v0[5];

    sub_100232C34(v38);
    v40 = v55;
  }

  else
  {
    v39 = v0[5];

    v40 = sub_100232D60(v38, v37);
  }

  v0[10] = v40;
  if (v40[2])
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v0[11] = sub_1001AD2E4(v30, qword_100377698);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Keychain has items belonging to orphaned accounts", v43, 2u);
    }

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55 = v47;
      *v46 = 136315138;
      v48 = Set.description.getter();
      v50 = sub_10024B050(v48, v49, &v55);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "Cleaning up items for accounts  - %s", v46, 0xCu);
      sub_1001DDD7C(v47);
    }

    v51 = swift_task_alloc();
    v0[12] = v51;
    *v51 = v0;
    v51[1] = sub_1001DB5C4;
    v52 = v0[6];

    return sub_1001DC23C();
  }

  else
  {

    v53 = v0[1];

    return v53();
  }
}

uint64_t sub_1001DB1AC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_1001DB2E0, 0, 0);
}

uint64_t sub_1001DB2E0()
{
  v21 = v0;
  v1 = v0[4];
  v2 = v0[5];
  if (*(v1 + 16) <= v2[2] >> 3)
  {
    v20 = v0[5];

    sub_100232C34(v1);
    v4 = v20;
  }

  else
  {
    v3 = v0[5];

    v4 = sub_100232D60(v1, v2);
  }

  v0[10] = v4;
  if (v4[2])
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v0[11] = sub_1001AD2E4(v5, qword_100377698);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Keychain has items belonging to orphaned accounts", v8, 2u);
    }

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      v13 = Set.description.getter();
      v15 = sub_10024B050(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Cleaning up items for accounts  - %s", v11, 0xCu);
      sub_1001DDD7C(v12);
    }

    v16 = swift_task_alloc();
    v0[12] = v16;
    *v16 = v0;
    v16[1] = sub_1001DB5C4;
    v17 = v0[6];

    return sub_1001DC23C();
  }

  else
  {

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1001DB5C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_1001DBA9C;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_1001DB6EC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001DB6EC()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v0[15] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1001DB7E4;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1001DB7E4()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v5 = *v0;

  return _swift_task_switch(sub_1001DB918, 0, 0);
}

uint64_t sub_1001DB918()
{
  v16 = v0;
  v2 = v0[10];
  v1 = v0[11];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = Set.description.getter();
    v11 = v10;

    v12 = sub_10024B050(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cleaned up items for accounts - %s", v7, 0xCu);
    sub_1001DDD7C(v8);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001DBA9C()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_1001DBB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  v7 = *(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001DBBB0, 0, 0);
}

uint64_t sub_1001DBBB0()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v29 = **(v0 + 72);
    v3 = type metadata accessor for TaskPriority();
    v4 = *(v3 - 8);
    v28 = *(v4 + 56);
    v27 = (v4 + 48);
    v26 = (v4 + 8);
    v5 = (v1 + 40);
    do
    {
      v31 = v5;
      v32 = v2;
      v9 = *(v0 + 112);
      v8 = *(v0 + 120);
      v10 = *(v0 + 104);
      v30 = *(v0 + 96);
      v11 = *(v0 + 88);
      v12 = *(v5 - 1);
      v13 = *v5;
      v28(v8, 1, 1, v3);
      v14 = swift_allocObject();
      v14[2] = 0;
      v15 = v14 + 2;
      v14[3] = 0;
      v14[4] = v11;
      v14[5] = v12;
      v14[6] = v13;
      v14[7] = v30;
      v14[8] = v10;
      sub_1001DE11C(v8, v9);
      LODWORD(v9) = (*v27)(v9, 1, v3);

      v16 = *(v0 + 112);
      if (v9 == 1)
      {
        sub_100010DD0(*(v0 + 112));
        if (*v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v26)(v16, v3);
        if (*v15)
        {
LABEL_9:
          v19 = v14[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v17 = dispatch thunk of Actor.unownedExecutor.getter();
          v18 = v20;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v17 = 0;
      v18 = 0;
LABEL_10:
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_10029DC08;
      *(v21 + 24) = v14;

      if (v18 | v17)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v18;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 120);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v29;
      swift_task_create();

      sub_100010DD0(v7);
      v5 = v31 + 2;
      v2 = v32 - 1;
    }

    while (v32 != 1);
  }

  v23 = *(v0 + 112);
  v22 = *(v0 + 120);

  v24 = *(v0 + 8);

  return v24();
}