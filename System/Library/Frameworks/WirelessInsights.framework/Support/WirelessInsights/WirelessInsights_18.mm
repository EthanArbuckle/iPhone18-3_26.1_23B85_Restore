uint64_t sub_100167B20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 200) = 0;
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
    *result = (a2 - 1);
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

  *(result + 208) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ServicePredictionControllerConfig.MapsSuggestionConfig.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServicePredictionControllerConfig.MapsSuggestionConfig.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100167CF0()
{
  result = qword_1002D5CA0;
  if (!qword_1002D5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5CA0);
  }

  return result;
}

unint64_t sub_100167D44()
{
  result = qword_1002D5CA8;
  if (!qword_1002D5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5CA8);
  }

  return result;
}

uint64_t sub_100167D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&qword_1002D5CB8, &unk_100249BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100167E08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_100167E78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_100167E94()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100167F08()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t XPCEventPublisher.__allocating_init(publisher:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t XPCEventPublisher.__allocating_init(streamName:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100168510(a1, a2);

  if (v5)
  {
    v6 = (*(v3 + 88))(v5);
  }

  else
  {

    return 0;
  }

  return v6;
}

void XPCEventPublisher.setHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1001685F0;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10016825C;
  v8[3] = &unk_1002B5D88;
  v7 = _Block_copy(v8);

  xpc_event_publisher_set_handler();
  _Block_release(v7);
}

uint64_t sub_100168100(int a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v8 = type metadata accessor for XPCEventPublisher.SubscriptionAction();
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8);
  v12 = (&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 != 2)
  {
    if (a1 == 1)
    {
      *v12 = a2;
    }

    else
    {
      if (a1)
      {
        return result;
      }

      if (!a3)
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v13 = *(sub_100164A3C(&qword_1002D5E38, &qword_100249DA0) + 48);
      *v12 = a2;
      swift_unknownObjectRetain();
      XPCDictionary.init(_:)();
    }
  }

  swift_storeEnumTagMultiPayload();
  a4(v12);
  return sub_100168A34(v12);
}

uint64_t sub_10016825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  swift_unknownObjectRetain();
  v8(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void XPCEventPublisher.setErrorHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_100168610;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1001683B8;
  v8[3] = &unk_1002B5DD8;
  v7 = _Block_copy(v8);

  xpc_event_publisher_set_error_handler();
  _Block_release(v7);
}

uint64_t sub_1001683B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t XPCEventPublisher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_100168510(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return xpc_event_publisher_create();
  }

  sub_100164A3C(&qword_1002D5E40, &qword_100249DA8);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1001685F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100168610()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
  {
    _StringGuts.grow(_:)(24);

    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v2(0xD000000000000016, 0x800000010025B620, 0);
  }

  else
  {
    v3 = POSIXErrorCode.rawValue.getter();
    return (v2)(v3, 0, 1);
  }
}

unint64_t sub_100168738()
{
  result = qword_1002D5CC0;
  if (!qword_1002D5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5CC0);
  }

  return result;
}

uint64_t type metadata accessor for XPCEventPublisher.SubscriptionAction()
{
  result = qword_1002D90B0;
  if (!qword_1002D90B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016885C()
{
  sub_1001688D0();
  if (v0 <= 0x3F)
  {
    sub_10016893C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1001688D0()
{
  if (!qword_1002D5E00)
  {
    type metadata accessor for XPCDictionary();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1002D5E00);
    }
  }
}

ValueMetadata *sub_10016893C()
{
  result = qword_1002D5E08;
  if (!qword_1002D5E08)
  {
    result = &type metadata for XPCEventPublisher.Token;
    atomic_store(&type metadata for XPCEventPublisher.Token, &qword_1002D5E08);
  }

  return result;
}

__n128 sub_100168978(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10016898C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1001689D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_100168A34(uint64_t a1)
{
  v2 = type metadata accessor for XPCEventPublisher.SubscriptionAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100168A90@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = xpc_event_publisher_create();
  *a1 = result;
  return result;
}

uint64_t sub_100168AE8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1001696FC(a1);
  return v2;
}

id sub_100168BD8()
{
  result = [objc_allocWithZone(type metadata accessor for WISXPCServer()) init];
  qword_1002DBF60 = result;
  return result;
}

uint64_t sub_100168C64(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100168C84, 0, 0);
}

uint64_t sub_100168C84()
{
  v1 = *(**(v0[3] + OBJC_IVAR___WISXPCServer_xpcServer) + 280);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_100168DB4;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_100168DB4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100168EA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100168EC8, 0, 0);
}

uint64_t sub_100168EC8()
{
  v1 = *(**(v0[3] + OBJC_IVAR___WISXPCServer_xpcServer) + 288);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1001800D0;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_100168FF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100169018, 0, 0);
}

uint64_t sub_100169018()
{
  v1 = *(v0[3] + OBJC_IVAR___WISXPCServer_xpcServer);
  v0[4] = v1;
  v2 = *v1 + 296;
  v0[5] = *v2;
  v0[6] = v2 & 0xFFFFFFFFFFFFLL | 0x8B23000000000000;
  return _swift_task_switch(sub_100169068, v1, 0);
}

uint64_t sub_100169068()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  (*(v0 + 40))(*(v0 + 16));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001690F0()
{
  v1 = *(**(*(v0 + 16) + OBJC_IVAR___WISXPCServer_xpcServer) + 256);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100169218;

  return v5();
}

uint64_t sub_100169218()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10016930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10017FF88(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000157F0(v11, &qword_1002D7180, &qword_10024ABF0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000157F0(a3, &qword_1002D7180, &qword_10024ABF0);

      return v22;
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

  sub_1000157F0(a3, &qword_1002D7180, &qword_10024ABF0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

id sub_1001696B4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1001696FC(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = type metadata accessor for Logger();
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  __chkstk_darwin(v3);
  v21 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v22);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  swift_defaultActor_initialize();
  v1[15] = 0xD00000000000001FLL;
  v1[16] = 0x800000010025B6C0;
  v20[1] = sub_100169B04();
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10018002C(&qword_1002D5E50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100164A3C(&unk_1002D6650, &qword_100249DD0);
  v14 = v23;
  v15 = v21;
  sub_10017F314(&qword_1002D5E58, &unk_1002D6650, &qword_100249DD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  v1[17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[18] = 0xD00000000000002DLL;
  v1[19] = 0x800000010025B6E0;
  v1[20] = 0;
  v1[22] = 0;
  v1[23] = 0;
  v1[21] = &_swiftEmptySetSingleton;
  v1[14] = v14;
  type metadata accessor for XPCServer();

  sub_100003E50(&off_1002B5FA8, v15);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Starting server.", v18, 2u);
  }

  else
  {
  }

  (*(v24 + 8))(v15, v25);
  return v2;
}

unint64_t sub_100169B04()
{
  result = qword_1002D6640;
  if (!qword_1002D6640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D6640);
  }

  return result;
}

uint64_t sub_100169B50(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100169B98()
{
  v1 = OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_subscriptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100169BE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_subscriptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100169C9C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100169CBC, v1, 0);
}

uint64_t sub_100169CBC()
{
  v1 = *(v0 + 16);
  v2 = (*(**(v0 + 24) + 152))();
  v3 = sub_100169D5C(v1, v2);

  v4 = *(v0 + 8);

  return v4(v3 & 1);
}

uint64_t sub_100169D5C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v4 = *(updated - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(updated);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_10018002C(&qword_1002D63E0, &type metadata accessor for WIS.XPC.UpdateType), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, updated);
      sub_10018002C(&qword_1002D63E8, &type metadata accessor for WIS.XPC.UpdateType);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, updated);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100169F74(uint64_t a1)
{
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v4 = *(updated - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(updated);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v23 - v9;
  if (v1[19])
  {
    v23[0] = v1[18];
    v11 = *(v1 + OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_metricSubmitter + 24);
    v12 = *(v1 + OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_metricSubmitter + 32);
    v23[1] = sub_100014E1C((v1 + OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_metricSubmitter), v11);

    v13 = sub_1001D57B8();
    v24 = a1;
    v14 = *v13;
    v15 = v13[1];

    v18 = XPCEventPublisher.Token.rawValue.getter(v16, v17);
    v25[3] = &_s31ServicePredictionSubscribeEventVN;
    v25[4] = &off_1002B7B10;
    v25[0] = v19;
    v25[1] = v20;
    (*(v12 + 8))(v14, v15, v25, v11, v12, v18);
    a1 = v24;

    sub_100164B98(v25);
  }

  (*(v4 + 16))(v8, a1, updated);
  v21 = (*(*v1 + 168))(v25);
  sub_10017AE50(v10, v8);
  (*(v4 + 8))(v10, updated);
  return v21(v25, 0);
}

uint64_t sub_10016A194(uint64_t a1)
{
  v3 = sub_100164A3C(&qword_1002D5E60, &qword_100249DE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9[-v5];
  v7 = (*(*v1 + 168))(v9);
  sub_10017DE7C(a1, v6);
  sub_1000157F0(v6, &qword_1002D5E60, &qword_100249DE0);
  return v7(v9, 0);
}

uint64_t sub_10016A28C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  UUID.init()();
  *(v17 + OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_subscriptions) = &_swiftEmptySetSingleton;
  *(v17 + 112) = a1;
  *(v17 + 120) = a6;
  *(v17 + 128) = a2;
  *(v17 + 136) = a3;
  *(v17 + 144) = a4;
  *(v17 + 152) = a5;
  sub_10001A700(a7, v17 + OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_metricSubmitter);
  return v17;
}

BOOL sub_10016A340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WIS.XPC.MissingEntitlementResponse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10017F0F0(*(v3 + 136), a3);
  if (!v10)
  {
    WIS.XPC.MissingEntitlementResponse.init()();
    sub_10018002C(&qword_1002D5E68, &type metadata accessor for WIS.XPC.MissingEntitlementResponse);
    XPCReceivedMessage.reply<A>(_:)();
    (*(v6 + 8))(v9, v5);
  }

  return v10;
}

uint64_t sub_10016A480(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelResponse();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(sub_100164A3C(&qword_1002D5E70, &qword_100249DF0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = type metadata accessor for WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelRequest();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v10 = sub_100164A3C(&qword_1002D5E78, &qword_100249DF8);
  v2[15] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v12 = *(*(sub_100164A3C(&qword_1002D5E80, &qword_100249E00) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v13 = type metadata accessor for WIS.XPC.WiFiToCellTransitionTreatDissasocAsBeaconLostRequest();
  v2[18] = v13;
  v14 = *(v13 - 8);
  v2[19] = v14;
  v15 = *(v14 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v16 = type metadata accessor for WIS.XPC.MapsNavigationPredicionSetLookAheadTimeResponse();
  v2[22] = v16;
  v17 = *(v16 - 8);
  v2[23] = v17;
  v18 = *(v17 + 64) + 15;
  v2[24] = swift_task_alloc();
  v19 = *(*(sub_100164A3C(&qword_1002D5E88, &qword_100249E08) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v20 = type metadata accessor for WIS.XPC.MapsNavigationPredicionSetLookAheadTimeRequest();
  v2[26] = v20;
  v21 = *(v20 - 8);
  v2[27] = v21;
  v22 = *(v21 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  updated = type metadata accessor for WIS.XPC.MapsSuggestionsPredictionSetUpdateIntervalResponse();
  v2[30] = updated;
  v24 = *(updated - 8);
  v2[31] = v24;
  v25 = *(v24 + 64) + 15;
  v2[32] = swift_task_alloc();
  v26 = *(*(sub_100164A3C(&qword_1002D5E90, &qword_100249E10) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v27 = type metadata accessor for WIS.XPC.MapsSuggestionsPredictionSetUpdateIntervalRequest();
  v2[34] = v27;
  v28 = *(v27 - 8);
  v2[35] = v28;
  v29 = *(v28 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v30 = type metadata accessor for WIS.XPC.MapsSuggestionsPredictionSetRsrpThresholdResponse();
  v2[38] = v30;
  v31 = *(v30 - 8);
  v2[39] = v31;
  v32 = *(v31 + 64) + 15;
  v2[40] = swift_task_alloc();
  v33 = *(*(sub_100164A3C(&qword_1002D5E98, &qword_100249E18) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v34 = type metadata accessor for WIS.XPC.MapsSuggestionsPredictionSetRsrpThresholdRequest();
  v2[42] = v34;
  v35 = *(v34 - 8);
  v2[43] = v35;
  v36 = *(v35 + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v37 = type metadata accessor for WIS.XPC.MapsSuggestionsPredictionSetOutOfServiceThresholdResponse();
  v2[46] = v37;
  v38 = *(v37 - 8);
  v2[47] = v38;
  v39 = *(v38 + 64) + 15;
  v2[48] = swift_task_alloc();
  v40 = *(*(sub_100164A3C(&qword_1002D5EA0, &qword_100249E20) - 8) + 64) + 15;
  v2[49] = swift_task_alloc();
  v41 = type metadata accessor for WIS.XPC.MapsSuggestionsPredictionSetOutOfServiceThresholdRequest();
  v2[50] = v41;
  v42 = *(v41 - 8);
  v2[51] = v42;
  v43 = *(v42 + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  Response = type metadata accessor for WIS.XPC.MapsSuggestionsPredictionFetchResponse();
  v2[54] = Response;
  v45 = *(Response - 8);
  v2[55] = v45;
  v46 = *(v45 + 64) + 15;
  v2[56] = swift_task_alloc();
  v47 = *(*(sub_100164A3C(&qword_1002D5EA8, &qword_100249E28) - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  Request = type metadata accessor for WIS.XPC.MapsSuggestionsPredictionFetchRequest();
  v2[58] = Request;
  v49 = *(Request - 8);
  v2[59] = v49;
  v50 = *(v49 + 64) + 15;
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  SimulationModeResponse = type metadata accessor for WIS.XPC.ServicePredictionGetSimulationModeResponse();
  v2[62] = SimulationModeResponse;
  v52 = *(SimulationModeResponse - 8);
  v2[63] = v52;
  v53 = *(v52 + 64) + 15;
  v2[64] = swift_task_alloc();
  v54 = *(*(sub_100164A3C(&qword_1002D5EB0, &qword_100249E30) - 8) + 64) + 15;
  v2[65] = swift_task_alloc();
  SimulationModeRequest = type metadata accessor for WIS.XPC.ServicePredictionGetSimulationModeRequest();
  v2[66] = SimulationModeRequest;
  v56 = *(SimulationModeRequest - 8);
  v2[67] = v56;
  v57 = *(v56 + 64) + 15;
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v58 = type metadata accessor for WIS.XPC.ServicePredictionSetSimulationModeResponse();
  v2[70] = v58;
  v59 = *(v58 - 8);
  v2[71] = v59;
  v60 = *(v59 + 64) + 15;
  v2[72] = swift_task_alloc();
  v61 = *(*(sub_100164A3C(&qword_1002D5EB8, &qword_100249E38) - 8) + 64) + 15;
  v2[73] = swift_task_alloc();
  v62 = type metadata accessor for WIS.XPC.ServicePredictionSetSimulationModeRequest();
  v2[74] = v62;
  v63 = *(v62 - 8);
  v2[75] = v63;
  v64 = *(v63 + 64) + 15;
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v65 = type metadata accessor for WIS.XPC.ServicePredictionSimulateResponse();
  v2[78] = v65;
  v66 = *(v65 - 8);
  v2[79] = v66;
  v67 = *(v66 + 64) + 15;
  v2[80] = swift_task_alloc();
  v68 = *(*(sub_100164A3C(&qword_1002D5EC0, &qword_100249E40) - 8) + 64) + 15;
  v2[81] = swift_task_alloc();
  v69 = type metadata accessor for WIS.XPC.ServicePredictionSimulateRequest();
  v2[82] = v69;
  v70 = *(v69 - 8);
  v2[83] = v70;
  v71 = *(v70 + 64) + 15;
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v72 = type metadata accessor for WIS.XPC.ServicePredictionSupportedResponse();
  v2[86] = v72;
  v73 = *(v72 - 8);
  v2[87] = v73;
  v74 = *(v73 + 64) + 15;
  v2[88] = swift_task_alloc();
  v75 = *(*(sub_100164A3C(&qword_1002D5EC8, &qword_100249E48) - 8) + 64) + 15;
  v2[89] = swift_task_alloc();
  v76 = type metadata accessor for WIS.XPC.ServicePredictionSupportedRequest();
  v2[90] = v76;
  v77 = *(v76 - 8);
  v2[91] = v77;
  v78 = *(v77 + 64) + 15;
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v79 = type metadata accessor for WIS.XPC.ServicePredictionUnsubscribeResponse();
  v2[94] = v79;
  v80 = *(v79 - 8);
  v2[95] = v80;
  v81 = *(v80 + 64) + 15;
  v2[96] = swift_task_alloc();
  v82 = *(*(sub_100164A3C(&qword_1002D5ED0, &qword_100249E50) - 8) + 64) + 15;
  v2[97] = swift_task_alloc();
  v83 = type metadata accessor for WIS.XPC.ServicePredictionUnsubscribeRequest();
  v2[98] = v83;
  v84 = *(v83 - 8);
  v2[99] = v84;
  v85 = *(v84 + 64) + 15;
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v86 = sub_100164A3C(&qword_1002D5ED8, &qword_100249E58);
  v2[102] = v86;
  v87 = *(v86 - 8);
  v2[103] = v87;
  v88 = *(v87 + 64) + 15;
  v2[104] = swift_task_alloc();
  v89 = *(*(sub_100164A3C(&qword_1002D5EE0, &qword_100249E60) - 8) + 64) + 15;
  v2[105] = swift_task_alloc();
  v90 = sub_100164A3C(&qword_1002D5EE8, &qword_100249E68);
  v2[106] = v90;
  v91 = *(v90 - 8);
  v2[107] = v91;
  v92 = *(v91 + 64) + 15;
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v93 = sub_100164A3C(&qword_1002D5EF0, &qword_100249E70);
  v2[110] = v93;
  v94 = *(v93 - 8);
  v2[111] = v94;
  v95 = *(v94 + 64) + 15;
  v2[112] = swift_task_alloc();
  v96 = type metadata accessor for WIS.XPC.UpdateType();
  v2[113] = v96;
  v97 = *(v96 - 8);
  v2[114] = v97;
  v98 = *(v97 + 64) + 15;
  v2[115] = swift_task_alloc();
  v99 = *(*(sub_100164A3C(&qword_1002D5EF8, &qword_100249E78) - 8) + 64) + 15;
  v2[116] = swift_task_alloc();
  v100 = sub_100164A3C(&qword_1002D5F00, &qword_100249E80);
  v2[117] = v100;
  v101 = *(v100 - 8);
  v2[118] = v101;
  v102 = *(v101 + 64) + 15;
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v103 = type metadata accessor for WIS.XPC.ServicePredictionFetchResponse();
  v2[121] = v103;
  v104 = *(v103 - 8);
  v2[122] = v104;
  v105 = *(v104 + 64) + 15;
  v2[123] = swift_task_alloc();
  v106 = type metadata accessor for WIS.XPC.RequestType();
  v2[124] = v106;
  v107 = *(v106 - 8);
  v2[125] = v107;
  v108 = *(v107 + 64) + 15;
  v2[126] = swift_task_alloc();
  v109 = type metadata accessor for Logger();
  v2[127] = v109;
  v110 = *(v109 - 8);
  v2[128] = v110;
  v111 = *(v110 + 64) + 15;
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();
  v2[138] = swift_task_alloc();
  v2[139] = swift_task_alloc();
  v2[140] = swift_task_alloc();
  v2[141] = swift_task_alloc();
  v2[142] = swift_task_alloc();
  v2[143] = swift_task_alloc();
  v2[144] = swift_task_alloc();
  v112 = *(*(sub_100164A3C(&qword_1002D5F08, &qword_100249E88) - 8) + 64) + 15;
  v2[145] = swift_task_alloc();
  v113 = type metadata accessor for WIS.XPC.ServicePredictionFetchRequest();
  v2[146] = v113;
  v114 = *(v113 - 8);
  v2[147] = v114;
  v115 = *(v114 + 64) + 15;
  v2[148] = swift_task_alloc();
  v2[149] = swift_task_alloc();

  return _swift_task_switch(sub_10016B580, v1, 0);
}

uint64_t sub_10016B580()
{
  v129 = v0;
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 40);
  sub_10018002C(&qword_1002D5F10, &type metadata accessor for WIS.XPC.ServicePredictionFetchRequest);
  XPCReceivedMessage.decode<A>(as:)();
  v4 = *(v0 + 1192);
  v5 = *(v0 + 1184);
  v6 = *(v0 + 1176);
  v7 = *(v0 + 1168);
  v8 = *(v0 + 1160);
  v9 = *(v0 + 1152);
  (*(v6 + 56))(v8, 0, 1, v7);
  (*(v6 + 32))(v4, v8, v7);
  type metadata accessor for XPCServer();
  sub_100003E50(&off_1002B5FA8, v9);
  (*(v6 + 16))(v5, v4, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 1184);
  v14 = *(v0 + 1176);
  v15 = *(v0 + 1168);
  v16 = *(v0 + 1152);
  v17 = *(v0 + 1024);
  v18 = *(v0 + 1016);
  if (v12)
  {
    v125 = *(v0 + 1016);
    v19 = *(v0 + 1008);
    v20 = *(v0 + 1000);
    v116 = *(v0 + 992);
    v118 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v128 = v123;
    *v118 = 136315138;
    sub_10018002C(&qword_1002D6078, &type metadata accessor for WIS.XPC.ServicePredictionFetchRequest);
    v121 = v16;
    WIS.XPC.Request.requestType.getter();
    sub_10018002C(&qword_1002D5F98, &type metadata accessor for WIS.XPC.RequestType);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v114 = v11;
    v23 = v22;
    (*(v20 + 8))(v19, v116);
    v24 = *(v14 + 8);
    v24(v13, v15);
    v25 = sub_10017A8A8(v21, v23, &v128);

    *(v118 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v10, v114, "Received %s request ", v118, 0xCu);
    sub_100164B98(v123);

    (*(v17 + 8))(v121, v125);
  }

  else
  {

    v24 = *(v14 + 8);
    v24(v13, v15);
    (*(v17 + 8))(v16, v18);
  }

  *(v0 + 1200) = v24;
  v26 = *(v0 + 1192);
  v27 = *(v0 + 1168);
  v28 = *(v0 + 40);
  v29 = *(**(v0 + 48) + 208);
  v30 = sub_10018002C(&qword_1002D6078, &type metadata accessor for WIS.XPC.ServicePredictionFetchRequest);
  if (v29(v26, v28, v27, v30))
  {
    v31 = *((swift_isaMask & **(*(v0 + 48) + 120)) + 0x330);
    v126 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    *(v0 + 1208) = v33;
    *v33 = v0;
    v33[1] = sub_100170CAC;
    v34 = *(v0 + 1192);
    v35 = *(v0 + 984);

    return v126(v35, v34);
  }

  else
  {
    v37 = *(v0 + 1192);
    v38 = *(v0 + 1176);
    v39 = *(v0 + 1168);
    v40 = *(v0 + 40);
    v41 = type metadata accessor for XPCReceivedMessage();
    (*(*(v41 - 8) + 8))(v40, v41);
    v24(v37, v39);
    v42 = *(v0 + 1192);
    v43 = *(v0 + 1184);
    v44 = *(v0 + 1160);
    v45 = *(v0 + 1152);
    v46 = *(v0 + 1144);
    v47 = *(v0 + 1136);
    v48 = *(v0 + 1128);
    v49 = *(v0 + 1120);
    v50 = *(v0 + 1112);
    v51 = *(v0 + 1104);
    v53 = *(v0 + 1096);
    v54 = *(v0 + 1088);
    v55 = *(v0 + 1080);
    v56 = *(v0 + 1072);
    v57 = *(v0 + 1064);
    v58 = *(v0 + 1056);
    v59 = *(v0 + 1048);
    v60 = *(v0 + 1040);
    v61 = *(v0 + 1032);
    v62 = *(v0 + 1008);
    v63 = *(v0 + 984);
    v64 = *(v0 + 960);
    v65 = *(v0 + 952);
    v66 = *(v0 + 928);
    v67 = *(v0 + 920);
    v68 = *(v0 + 896);
    v69 = *(v0 + 872);
    v70 = *(v0 + 864);
    v71 = *(v0 + 840);
    v72 = *(v0 + 832);
    v73 = *(v0 + 808);
    v74 = *(v0 + 800);
    v75 = *(v0 + 776);
    v76 = *(v0 + 768);
    v77 = *(v0 + 744);
    v78 = *(v0 + 736);
    v79 = *(v0 + 712);
    v80 = *(v0 + 704);
    v81 = *(v0 + 680);
    v82 = *(v0 + 672);
    v83 = *(v0 + 648);
    v84 = *(v0 + 640);
    v85 = *(v0 + 616);
    v86 = *(v0 + 608);
    v87 = *(v0 + 584);
    v88 = *(v0 + 576);
    v89 = *(v0 + 552);
    v90 = *(v0 + 544);
    v91 = *(v0 + 520);
    v92 = *(v0 + 512);
    v93 = *(v0 + 488);
    v94 = *(v0 + 480);
    v95 = *(v0 + 456);
    v96 = *(v0 + 448);
    v97 = *(v0 + 424);
    v98 = *(v0 + 416);
    v99 = *(v0 + 392);
    v100 = *(v0 + 384);
    v101 = *(v0 + 360);
    v102 = *(v0 + 352);
    v103 = *(v0 + 328);
    v104 = *(v0 + 320);
    v105 = *(v0 + 296);
    v106 = *(v0 + 288);
    v107 = *(v0 + 264);
    v108 = *(v0 + 256);
    v109 = *(v0 + 232);
    v110 = *(v0 + 224);
    v111 = *(v0 + 200);
    v112 = *(v0 + 192);
    v113 = *(v0 + 168);
    v115 = *(v0 + 160);
    v117 = *(v0 + 136);
    v119 = *(v0 + 128);
    v120 = *(v0 + 112);
    v122 = *(v0 + 104);
    v124 = *(v0 + 80);
    v127 = *(v0 + 72);

    v52 = *(v0 + 8);

    return v52();
  }
}

uint64_t sub_100170CAC()
{
  v1 = *(*v0 + 1208);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100170DBC, v2, 0);
}

uint64_t sub_100170DBC()
{
  v1 = v0[150];
  v2 = v0[149];
  v3 = v0[147];
  v4 = v0[146];
  v5 = v0[123];
  v6 = v0[122];
  v7 = v0[121];
  v8 = v0[5];
  sub_10018002C(&qword_1002D6080, &type metadata accessor for WIS.XPC.ServicePredictionFetchResponse);
  XPCReceivedMessage.reply<A>(_:)();
  v9 = type metadata accessor for XPCReceivedMessage();
  (*(*(v9 - 8) + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  v1(v2, v4);
  v10 = v0[149];
  v11 = v0[148];
  v12 = v0[145];
  v13 = v0[144];
  v14 = v0[143];
  v15 = v0[142];
  v16 = v0[141];
  v17 = v0[140];
  v18 = v0[139];
  v19 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[135];
  v25 = v0[134];
  v26 = v0[133];
  v27 = v0[132];
  v28 = v0[131];
  v29 = v0[130];
  v30 = v0[129];
  v31 = v0[126];
  v32 = v0[123];
  v33 = v0[120];
  v34 = v0[119];
  v35 = v0[116];
  v36 = v0[115];
  v37 = v0[112];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[105];
  v41 = v0[104];
  v42 = v0[101];
  v43 = v0[100];
  v44 = v0[97];
  v45 = v0[96];
  v46 = v0[93];
  v47 = v0[92];
  v48 = v0[89];
  v49 = v0[88];
  v50 = v0[85];
  v51 = v0[84];
  v52 = v0[81];
  v53 = v0[80];
  v54 = v0[77];
  v55 = v0[76];
  v56 = v0[73];
  v57 = v0[72];
  v58 = v0[69];
  v59 = v0[68];
  v60 = v0[65];
  v61 = v0[64];
  v62 = v0[61];
  v63 = v0[60];
  v64 = v0[57];
  v65 = v0[56];
  v66 = v0[53];
  v67 = v0[52];
  v68 = v0[49];
  v69 = v0[48];
  v70 = v0[45];
  v71 = v0[44];
  v72 = v0[41];
  v73 = v0[40];
  v74 = v0[37];
  v75 = v0[36];
  v76 = v0[33];
  v77 = v0[32];
  v78 = v0[29];
  v79 = v0[28];
  v80 = v0[25];
  v81 = v0[24];
  v82 = v0[21];
  v83 = v0[20];
  v84 = v0[17];
  v85 = v0[16];
  v86 = v0[14];
  v87 = v0[13];
  v88 = v0[10];
  v89 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001712FC()
{
  v1 = *(*v0 + 1216);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10017140C, v2, 0);
}

uint64_t sub_10017140C()
{
  v1 = v0[120];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[112];
  v5 = v0[111];
  v6 = v0[110];
  v7 = v0[5];
  sub_10017F314(&qword_1002D6070, &qword_1002D5EF0, &qword_100249E70);
  XPCReceivedMessage.reply<A>(_:)();
  v8 = type metadata accessor for XPCReceivedMessage();
  (*(*(v8 - 8) + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v9 = v0[149];
  v10 = v0[148];
  v11 = v0[145];
  v12 = v0[144];
  v13 = v0[143];
  v14 = v0[142];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[139];
  v18 = v0[138];
  v21 = v0[137];
  v22 = v0[136];
  v23 = v0[135];
  v24 = v0[134];
  v25 = v0[133];
  v26 = v0[132];
  v27 = v0[131];
  v28 = v0[130];
  v29 = v0[129];
  v30 = v0[126];
  v31 = v0[123];
  v32 = v0[120];
  v33 = v0[119];
  v34 = v0[116];
  v35 = v0[115];
  v36 = v0[112];
  v37 = v0[109];
  v38 = v0[108];
  v39 = v0[105];
  v40 = v0[104];
  v41 = v0[101];
  v42 = v0[100];
  v43 = v0[97];
  v44 = v0[96];
  v45 = v0[93];
  v46 = v0[92];
  v47 = v0[89];
  v48 = v0[88];
  v49 = v0[85];
  v50 = v0[84];
  v51 = v0[81];
  v52 = v0[80];
  v53 = v0[77];
  v54 = v0[76];
  v55 = v0[73];
  v56 = v0[72];
  v57 = v0[69];
  v58 = v0[68];
  v59 = v0[65];
  v60 = v0[64];
  v61 = v0[61];
  v62 = v0[60];
  v63 = v0[57];
  v64 = v0[56];
  v65 = v0[53];
  v66 = v0[52];
  v67 = v0[49];
  v68 = v0[48];
  v69 = v0[45];
  v70 = v0[44];
  v71 = v0[41];
  v72 = v0[40];
  v73 = v0[37];
  v74 = v0[36];
  v75 = v0[33];
  v76 = v0[32];
  v77 = v0[29];
  v78 = v0[28];
  v79 = v0[25];
  v80 = v0[24];
  v81 = v0[21];
  v82 = v0[20];
  v83 = v0[17];
  v84 = v0[16];
  v85 = v0[14];
  v86 = v0[13];
  v87 = v0[10];
  v88 = v0[9];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100171944()
{
  v1 = *(*v0 + 1224);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100171A54, v2, 0);
}

uint64_t sub_100171A54()
{
  v1 = v0[109];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[102];
  v7 = v0[5];
  sub_10017F314(&qword_1002D6060, &qword_1002D5ED8, &qword_100249E58);
  XPCReceivedMessage.reply<A>(_:)();
  v8 = type metadata accessor for XPCReceivedMessage();
  (*(*(v8 - 8) + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v9 = v0[149];
  v10 = v0[148];
  v11 = v0[145];
  v12 = v0[144];
  v13 = v0[143];
  v14 = v0[142];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[139];
  v18 = v0[138];
  v21 = v0[137];
  v22 = v0[136];
  v23 = v0[135];
  v24 = v0[134];
  v25 = v0[133];
  v26 = v0[132];
  v27 = v0[131];
  v28 = v0[130];
  v29 = v0[129];
  v30 = v0[126];
  v31 = v0[123];
  v32 = v0[120];
  v33 = v0[119];
  v34 = v0[116];
  v35 = v0[115];
  v36 = v0[112];
  v37 = v0[109];
  v38 = v0[108];
  v39 = v0[105];
  v40 = v0[104];
  v41 = v0[101];
  v42 = v0[100];
  v43 = v0[97];
  v44 = v0[96];
  v45 = v0[93];
  v46 = v0[92];
  v47 = v0[89];
  v48 = v0[88];
  v49 = v0[85];
  v50 = v0[84];
  v51 = v0[81];
  v52 = v0[80];
  v53 = v0[77];
  v54 = v0[76];
  v55 = v0[73];
  v56 = v0[72];
  v57 = v0[69];
  v58 = v0[68];
  v59 = v0[65];
  v60 = v0[64];
  v61 = v0[61];
  v62 = v0[60];
  v63 = v0[57];
  v64 = v0[56];
  v65 = v0[53];
  v66 = v0[52];
  v67 = v0[49];
  v68 = v0[48];
  v69 = v0[45];
  v70 = v0[44];
  v71 = v0[41];
  v72 = v0[40];
  v73 = v0[37];
  v74 = v0[36];
  v75 = v0[33];
  v76 = v0[32];
  v77 = v0[29];
  v78 = v0[28];
  v79 = v0[25];
  v80 = v0[24];
  v81 = v0[21];
  v82 = v0[20];
  v83 = v0[17];
  v84 = v0[16];
  v85 = v0[14];
  v86 = v0[13];
  v87 = v0[10];
  v88 = v0[9];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100171F8C()
{
  v1 = *(*v0 + 1240);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10017209C, v2, 0);
}

uint64_t sub_10017209C()
{
  v1 = v0[154];
  v2 = v0[85];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[78];
  v8 = v0[5];
  sub_10018002C(&qword_1002D6030, &type metadata accessor for WIS.XPC.ServicePredictionSimulateResponse);
  XPCReceivedMessage.reply<A>(_:)();
  v9 = type metadata accessor for XPCReceivedMessage();
  (*(*(v9 - 8) + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  v1(v2, v4);
  v10 = v0[149];
  v11 = v0[148];
  v12 = v0[145];
  v13 = v0[144];
  v14 = v0[143];
  v15 = v0[142];
  v16 = v0[141];
  v17 = v0[140];
  v18 = v0[139];
  v19 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[135];
  v25 = v0[134];
  v26 = v0[133];
  v27 = v0[132];
  v28 = v0[131];
  v29 = v0[130];
  v30 = v0[129];
  v31 = v0[126];
  v32 = v0[123];
  v33 = v0[120];
  v34 = v0[119];
  v35 = v0[116];
  v36 = v0[115];
  v37 = v0[112];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[105];
  v41 = v0[104];
  v42 = v0[101];
  v43 = v0[100];
  v44 = v0[97];
  v45 = v0[96];
  v46 = v0[93];
  v47 = v0[92];
  v48 = v0[89];
  v49 = v0[88];
  v50 = v0[85];
  v51 = v0[84];
  v52 = v0[81];
  v53 = v0[80];
  v54 = v0[77];
  v55 = v0[76];
  v56 = v0[73];
  v57 = v0[72];
  v58 = v0[69];
  v59 = v0[68];
  v60 = v0[65];
  v61 = v0[64];
  v62 = v0[61];
  v63 = v0[60];
  v64 = v0[57];
  v65 = v0[56];
  v66 = v0[53];
  v67 = v0[52];
  v68 = v0[49];
  v69 = v0[48];
  v70 = v0[45];
  v71 = v0[44];
  v72 = v0[41];
  v73 = v0[40];
  v74 = v0[37];
  v75 = v0[36];
  v76 = v0[33];
  v77 = v0[32];
  v78 = v0[29];
  v79 = v0[28];
  v80 = v0[25];
  v81 = v0[24];
  v82 = v0[21];
  v83 = v0[20];
  v84 = v0[17];
  v85 = v0[16];
  v86 = v0[14];
  v87 = v0[13];
  v88 = v0[10];
  v89 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001725DC()
{
  v1 = *(*v0 + 1256);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1001726EC, v2, 0);
}

uint64_t sub_1001726EC()
{
  v1 = v0[156];
  v2 = v0[77];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[5];
  sub_10018002C(&qword_1002D6020, &type metadata accessor for WIS.XPC.ServicePredictionSetSimulationModeResponse);
  XPCReceivedMessage.reply<A>(_:)();
  v9 = type metadata accessor for XPCReceivedMessage();
  (*(*(v9 - 8) + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  v1(v2, v4);
  v10 = v0[149];
  v11 = v0[148];
  v12 = v0[145];
  v13 = v0[144];
  v14 = v0[143];
  v15 = v0[142];
  v16 = v0[141];
  v17 = v0[140];
  v18 = v0[139];
  v19 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[135];
  v25 = v0[134];
  v26 = v0[133];
  v27 = v0[132];
  v28 = v0[131];
  v29 = v0[130];
  v30 = v0[129];
  v31 = v0[126];
  v32 = v0[123];
  v33 = v0[120];
  v34 = v0[119];
  v35 = v0[116];
  v36 = v0[115];
  v37 = v0[112];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[105];
  v41 = v0[104];
  v42 = v0[101];
  v43 = v0[100];
  v44 = v0[97];
  v45 = v0[96];
  v46 = v0[93];
  v47 = v0[92];
  v48 = v0[89];
  v49 = v0[88];
  v50 = v0[85];
  v51 = v0[84];
  v52 = v0[81];
  v53 = v0[80];
  v54 = v0[77];
  v55 = v0[76];
  v56 = v0[73];
  v57 = v0[72];
  v58 = v0[69];
  v59 = v0[68];
  v60 = v0[65];
  v61 = v0[64];
  v62 = v0[61];
  v63 = v0[60];
  v64 = v0[57];
  v65 = v0[56];
  v66 = v0[53];
  v67 = v0[52];
  v68 = v0[49];
  v69 = v0[48];
  v70 = v0[45];
  v71 = v0[44];
  v72 = v0[41];
  v73 = v0[40];
  v74 = v0[37];
  v75 = v0[36];
  v76 = v0[33];
  v77 = v0[32];
  v78 = v0[29];
  v79 = v0[28];
  v80 = v0[25];
  v81 = v0[24];
  v82 = v0[21];
  v83 = v0[20];
  v84 = v0[17];
  v85 = v0[16];
  v86 = v0[14];
  v87 = v0[13];
  v88 = v0[10];
  v89 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100172C2C()
{
  v1 = *(*v0 + 1272);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100172D3C, v2, 0);
}

uint64_t sub_100172D3C()
{
  v1 = v0[158];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[66];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[5];
  sub_10018002C(&qword_1002D6010, &type metadata accessor for WIS.XPC.ServicePredictionGetSimulationModeResponse);
  XPCReceivedMessage.reply<A>(_:)();
  v9 = type metadata accessor for XPCReceivedMessage();
  (*(*(v9 - 8) + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  v1(v2, v4);
  v10 = v0[149];
  v11 = v0[148];
  v12 = v0[145];
  v13 = v0[144];
  v14 = v0[143];
  v15 = v0[142];
  v16 = v0[141];
  v17 = v0[140];
  v18 = v0[139];
  v19 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[135];
  v25 = v0[134];
  v26 = v0[133];
  v27 = v0[132];
  v28 = v0[131];
  v29 = v0[130];
  v30 = v0[129];
  v31 = v0[126];
  v32 = v0[123];
  v33 = v0[120];
  v34 = v0[119];
  v35 = v0[116];
  v36 = v0[115];
  v37 = v0[112];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[105];
  v41 = v0[104];
  v42 = v0[101];
  v43 = v0[100];
  v44 = v0[97];
  v45 = v0[96];
  v46 = v0[93];
  v47 = v0[92];
  v48 = v0[89];
  v49 = v0[88];
  v50 = v0[85];
  v51 = v0[84];
  v52 = v0[81];
  v53 = v0[80];
  v54 = v0[77];
  v55 = v0[76];
  v56 = v0[73];
  v57 = v0[72];
  v58 = v0[69];
  v59 = v0[68];
  v60 = v0[65];
  v61 = v0[64];
  v62 = v0[61];
  v63 = v0[60];
  v64 = v0[57];
  v65 = v0[56];
  v66 = v0[53];
  v67 = v0[52];
  v68 = v0[49];
  v69 = v0[48];
  v70 = v0[45];
  v71 = v0[44];
  v72 = v0[41];
  v73 = v0[40];
  v74 = v0[37];
  v75 = v0[36];
  v76 = v0[33];
  v77 = v0[32];
  v78 = v0[29];
  v79 = v0[28];
  v80 = v0[25];
  v81 = v0[24];
  v82 = v0[21];
  v83 = v0[20];
  v84 = v0[17];
  v85 = v0[16];
  v86 = v0[14];
  v87 = v0[13];
  v88 = v0[10];
  v89 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100173278()
{
  v1 = *(*v0 + 1288);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100173388, v2, 0);
}

uint64_t sub_100173388()
{
  v1 = v0[160];
  v2 = v0[61];
  v3 = v0[58];
  v4 = v0[59];
  v6 = v0[55];
  v5 = v0[56];
  v7 = v0[54];
  v8 = v0[5];
  sub_10018002C(&qword_1002D6000, &type metadata accessor for WIS.XPC.MapsSuggestionsPredictionFetchResponse);
  XPCReceivedMessage.reply<A>(_:)();
  v9 = type metadata accessor for XPCReceivedMessage();
  (*(*(v9 - 8) + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  v1(v2, v3);
  v10 = v0[149];
  v11 = v0[148];
  v12 = v0[145];
  v13 = v0[144];
  v14 = v0[143];
  v15 = v0[142];
  v16 = v0[141];
  v17 = v0[140];
  v18 = v0[139];
  v19 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[135];
  v25 = v0[134];
  v26 = v0[133];
  v27 = v0[132];
  v28 = v0[131];
  v29 = v0[130];
  v30 = v0[129];
  v31 = v0[126];
  v32 = v0[123];
  v33 = v0[120];
  v34 = v0[119];
  v35 = v0[116];
  v36 = v0[115];
  v37 = v0[112];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[105];
  v41 = v0[104];
  v42 = v0[101];
  v43 = v0[100];
  v44 = v0[97];
  v45 = v0[96];
  v46 = v0[93];
  v47 = v0[92];
  v48 = v0[89];
  v49 = v0[88];
  v50 = v0[85];
  v51 = v0[84];
  v52 = v0[81];
  v53 = v0[80];
  v54 = v0[77];
  v55 = v0[76];
  v56 = v0[73];
  v57 = v0[72];
  v58 = v0[69];
  v59 = v0[68];
  v60 = v0[65];
  v61 = v0[64];
  v62 = v0[61];
  v63 = v0[60];
  v64 = v0[57];
  v65 = v0[56];
  v66 = v0[53];
  v67 = v0[52];
  v68 = v0[49];
  v69 = v0[48];
  v70 = v0[45];
  v71 = v0[44];
  v72 = v0[41];
  v73 = v0[40];
  v74 = v0[37];
  v75 = v0[36];
  v76 = v0[33];
  v77 = v0[32];
  v78 = v0[29];
  v79 = v0[28];
  v80 = v0[25];
  v81 = v0[24];
  v82 = v0[21];
  v83 = v0[20];
  v84 = v0[17];
  v85 = v0[16];
  v86 = v0[14];
  v87 = v0[13];
  v88 = v0[10];
  v89 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001738C0()
{
  v1 = *(*v0 + 1304);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1001739D0, v2, 0);
}

uint64_t sub_1001739D0()
{
  v1 = v0[162];
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  v6 = v0[47];
  v5 = v0[48];
  v7 = v0[46];
  v8 = v0[5];
  sub_10018002C(&qword_1002D5FF0, &type metadata accessor for WIS.XPC.MapsSuggestionsPredictionSetOutOfServiceThresholdResponse);
  XPCReceivedMessage.reply<A>(_:)();
  v9 = type metadata accessor for XPCReceivedMessage();
  (*(*(v9 - 8) + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  v1(v2, v3);
  v10 = v0[149];
  v11 = v0[148];
  v12 = v0[145];
  v13 = v0[144];
  v14 = v0[143];
  v15 = v0[142];
  v16 = v0[141];
  v17 = v0[140];
  v18 = v0[139];
  v19 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[135];
  v25 = v0[134];
  v26 = v0[133];
  v27 = v0[132];
  v28 = v0[131];
  v29 = v0[130];
  v30 = v0[129];
  v31 = v0[126];
  v32 = v0[123];
  v33 = v0[120];
  v34 = v0[119];
  v35 = v0[116];
  v36 = v0[115];
  v37 = v0[112];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[105];
  v41 = v0[104];
  v42 = v0[101];
  v43 = v0[100];
  v44 = v0[97];
  v45 = v0[96];
  v46 = v0[93];
  v47 = v0[92];
  v48 = v0[89];
  v49 = v0[88];
  v50 = v0[85];
  v51 = v0[84];
  v52 = v0[81];
  v53 = v0[80];
  v54 = v0[77];
  v55 = v0[76];
  v56 = v0[73];
  v57 = v0[72];
  v58 = v0[69];
  v59 = v0[68];
  v60 = v0[65];
  v61 = v0[64];
  v62 = v0[61];
  v63 = v0[60];
  v64 = v0[57];
  v65 = v0[56];
  v66 = v0[53];
  v67 = v0[52];
  v68 = v0[49];
  v69 = v0[48];
  v70 = v0[45];
  v71 = v0[44];
  v72 = v0[41];
  v73 = v0[40];
  v74 = v0[37];
  v75 = v0[36];
  v76 = v0[33];
  v77 = v0[32];
  v78 = v0[29];
  v79 = v0[28];
  v80 = v0[25];
  v81 = v0[24];
  v82 = v0[21];
  v83 = v0[20];
  v84 = v0[17];
  v85 = v0[16];
  v86 = v0[14];
  v87 = v0[13];
  v88 = v0[10];
  v89 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100173F08()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100174018, v2, 0);
}

uint64_t sub_100174018()
{
  v1 = v0[164];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  v8 = v0[5];
  sub_10018002C(&qword_1002D5FE0, &type metadata accessor for WIS.XPC.MapsSuggestionsPredictionSetRsrpThresholdResponse);
  XPCReceivedMessage.reply<A>(_:)();
  v9 = type metadata accessor for XPCReceivedMessage();
  (*(*(v9 - 8) + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  v1(v2, v3);
  v10 = v0[149];
  v11 = v0[148];
  v12 = v0[145];
  v13 = v0[144];
  v14 = v0[143];
  v15 = v0[142];
  v16 = v0[141];
  v17 = v0[140];
  v18 = v0[139];
  v19 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[135];
  v25 = v0[134];
  v26 = v0[133];
  v27 = v0[132];
  v28 = v0[131];
  v29 = v0[130];
  v30 = v0[129];
  v31 = v0[126];
  v32 = v0[123];
  v33 = v0[120];
  v34 = v0[119];
  v35 = v0[116];
  v36 = v0[115];
  v37 = v0[112];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[105];
  v41 = v0[104];
  v42 = v0[101];
  v43 = v0[100];
  v44 = v0[97];
  v45 = v0[96];
  v46 = v0[93];
  v47 = v0[92];
  v48 = v0[89];
  v49 = v0[88];
  v50 = v0[85];
  v51 = v0[84];
  v52 = v0[81];
  v53 = v0[80];
  v54 = v0[77];
  v55 = v0[76];
  v56 = v0[73];
  v57 = v0[72];
  v58 = v0[69];
  v59 = v0[68];
  v60 = v0[65];
  v61 = v0[64];
  v62 = v0[61];
  v63 = v0[60];
  v64 = v0[57];
  v65 = v0[56];
  v66 = v0[53];
  v67 = v0[52];
  v68 = v0[49];
  v69 = v0[48];
  v70 = v0[45];
  v71 = v0[44];
  v72 = v0[41];
  v73 = v0[40];
  v74 = v0[37];
  v75 = v0[36];
  v76 = v0[33];
  v77 = v0[32];
  v78 = v0[29];
  v79 = v0[28];
  v80 = v0[25];
  v81 = v0[24];
  v82 = v0[21];
  v83 = v0[20];
  v84 = v0[17];
  v85 = v0[16];
  v86 = v0[14];
  v87 = v0[13];
  v88 = v0[10];
  v89 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100174550()
{
  v1 = *(*v0 + 1336);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100174660, v2, 0);
}

uint64_t sub_100174660()
{
  v1 = v0[166];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  v8 = v0[5];
  sub_10018002C(&qword_1002D5FD0, &type metadata accessor for WIS.XPC.MapsSuggestionsPredictionSetUpdateIntervalResponse);
  XPCReceivedMessage.reply<A>(_:)();
  v9 = type metadata accessor for XPCReceivedMessage();
  (*(*(v9 - 8) + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  v1(v2, v3);
  v10 = v0[149];
  v11 = v0[148];
  v12 = v0[145];
  v13 = v0[144];
  v14 = v0[143];
  v15 = v0[142];
  v16 = v0[141];
  v17 = v0[140];
  v18 = v0[139];
  v19 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[135];
  v25 = v0[134];
  v26 = v0[133];
  v27 = v0[132];
  v28 = v0[131];
  v29 = v0[130];
  v30 = v0[129];
  v31 = v0[126];
  v32 = v0[123];
  v33 = v0[120];
  v34 = v0[119];
  v35 = v0[116];
  v36 = v0[115];
  v37 = v0[112];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[105];
  v41 = v0[104];
  v42 = v0[101];
  v43 = v0[100];
  v44 = v0[97];
  v45 = v0[96];
  v46 = v0[93];
  v47 = v0[92];
  v48 = v0[89];
  v49 = v0[88];
  v50 = v0[85];
  v51 = v0[84];
  v52 = v0[81];
  v53 = v0[80];
  v54 = v0[77];
  v55 = v0[76];
  v56 = v0[73];
  v57 = v0[72];
  v58 = v0[69];
  v59 = v0[68];
  v60 = v0[65];
  v61 = v0[64];
  v62 = v0[61];
  v63 = v0[60];
  v64 = v0[57];
  v65 = v0[56];
  v66 = v0[53];
  v67 = v0[52];
  v68 = v0[49];
  v69 = v0[48];
  v70 = v0[45];
  v71 = v0[44];
  v72 = v0[41];
  v73 = v0[40];
  v74 = v0[37];
  v75 = v0[36];
  v76 = v0[33];
  v77 = v0[32];
  v78 = v0[29];
  v79 = v0[28];
  v80 = v0[25];
  v81 = v0[24];
  v82 = v0[21];
  v83 = v0[20];
  v84 = v0[17];
  v85 = v0[16];
  v86 = v0[14];
  v87 = v0[13];
  v88 = v0[10];
  v89 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100174B98()
{
  v1 = *(*v0 + 1352);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100174CA8, v2, 0);
}

uint64_t sub_100174CA8()
{
  v1 = v0[168];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[5];
  sub_10018002C(&qword_1002D5FC0, &type metadata accessor for WIS.XPC.MapsNavigationPredicionSetLookAheadTimeResponse);
  XPCReceivedMessage.reply<A>(_:)();
  v9 = type metadata accessor for XPCReceivedMessage();
  (*(*(v9 - 8) + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  v1(v2, v3);
  v10 = v0[149];
  v11 = v0[148];
  v12 = v0[145];
  v13 = v0[144];
  v14 = v0[143];
  v15 = v0[142];
  v16 = v0[141];
  v17 = v0[140];
  v18 = v0[139];
  v19 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[135];
  v25 = v0[134];
  v26 = v0[133];
  v27 = v0[132];
  v28 = v0[131];
  v29 = v0[130];
  v30 = v0[129];
  v31 = v0[126];
  v32 = v0[123];
  v33 = v0[120];
  v34 = v0[119];
  v35 = v0[116];
  v36 = v0[115];
  v37 = v0[112];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[105];
  v41 = v0[104];
  v42 = v0[101];
  v43 = v0[100];
  v44 = v0[97];
  v45 = v0[96];
  v46 = v0[93];
  v47 = v0[92];
  v48 = v0[89];
  v49 = v0[88];
  v50 = v0[85];
  v51 = v0[84];
  v52 = v0[81];
  v53 = v0[80];
  v54 = v0[77];
  v55 = v0[76];
  v56 = v0[73];
  v57 = v0[72];
  v58 = v0[69];
  v59 = v0[68];
  v60 = v0[65];
  v61 = v0[64];
  v62 = v0[61];
  v63 = v0[60];
  v64 = v0[57];
  v65 = v0[56];
  v66 = v0[53];
  v67 = v0[52];
  v68 = v0[49];
  v69 = v0[48];
  v70 = v0[45];
  v71 = v0[44];
  v72 = v0[41];
  v73 = v0[40];
  v74 = v0[37];
  v75 = v0[36];
  v76 = v0[33];
  v77 = v0[32];
  v78 = v0[29];
  v79 = v0[28];
  v80 = v0[25];
  v81 = v0[24];
  v82 = v0[21];
  v83 = v0[20];
  v84 = v0[17];
  v85 = v0[16];
  v86 = v0[14];
  v87 = v0[13];
  v88 = v0[10];
  v89 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001751E0()
{
  v1 = v0[172];
  v2 = v0[6];

  v0[173] = sub_100192ED8();

  return _swift_task_switch(sub_100175254, v2, 0);
}

uint64_t sub_100175254()
{
  v1 = *(v0 + 1368);
  *(v0 + 1392) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001752E0, v3, v2);
}

uint64_t sub_1001752E0()
{
  v1 = v0[174];
  v2 = v0[173];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[175] = Strong;
  if (Strong)
  {
    v4 = *((swift_isaMask & *Strong) + 0x2E0);
    v11 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[176] = v6;
    *v6 = v0;
    v6[1] = sub_100175480;
    v7 = v0[21];
    v8 = v0[16];

    return v11(v8, v7);
  }

  else
  {
    v10 = v0[6];

    return _swift_task_switch(sub_100175AF4, v10, 0);
  }
}

uint64_t sub_100175480()
{
  v1 = *(*v0 + 1408);
  v2 = *(*v0 + 1400);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_1001755AC, v3, 0);
}

uint64_t sub_1001755AC()
{
  v1 = v0[170];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[5];
  v8 = type metadata accessor for WIS.XPC.WiFiToCellTransitionTreatDissasocAsBeaconLostResponse();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  sub_10017F260();
  XPCReceivedMessage.reply<A>(_:)();
  v9 = type metadata accessor for XPCReceivedMessage();
  (*(*(v9 - 8) + 8))(v7, v9);
  sub_1000157F0(v6, &qword_1002D5E78, &qword_100249DF8);
  v1(v2, v3);
  v10 = v0[149];
  v11 = v0[148];
  v12 = v0[145];
  v13 = v0[144];
  v14 = v0[143];
  v15 = v0[142];
  v16 = v0[141];
  v17 = v0[140];
  v18 = v0[139];
  v19 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[135];
  v25 = v0[134];
  v26 = v0[133];
  v27 = v0[132];
  v28 = v0[131];
  v29 = v0[130];
  v30 = v0[129];
  v31 = v0[126];
  v32 = v0[123];
  v33 = v0[120];
  v34 = v0[119];
  v35 = v0[116];
  v36 = v0[115];
  v37 = v0[112];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[105];
  v41 = v0[104];
  v42 = v0[101];
  v43 = v0[100];
  v44 = v0[97];
  v45 = v0[96];
  v46 = v0[93];
  v47 = v0[92];
  v48 = v0[89];
  v49 = v0[88];
  v50 = v0[85];
  v51 = v0[84];
  v52 = v0[81];
  v53 = v0[80];
  v54 = v0[77];
  v55 = v0[76];
  v56 = v0[73];
  v57 = v0[72];
  v58 = v0[69];
  v59 = v0[68];
  v60 = v0[65];
  v61 = v0[64];
  v62 = v0[61];
  v63 = v0[60];
  v64 = v0[57];
  v65 = v0[56];
  v66 = v0[53];
  v67 = v0[52];
  v68 = v0[49];
  v69 = v0[48];
  v70 = v0[45];
  v71 = v0[44];
  v72 = v0[41];
  v73 = v0[40];
  v74 = v0[37];
  v75 = v0[36];
  v76 = v0[33];
  v77 = v0[32];
  v78 = v0[29];
  v79 = v0[28];
  v80 = v0[25];
  v81 = v0[24];
  v82 = v0[21];
  v83 = v0[20];
  v84 = v0[17];
  v85 = v0[16];
  v86 = v0[14];
  v87 = v0[13];
  v88 = v0[10];
  v89 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100175AF4()
{
  v1 = v0[170];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[5];
  v8 = type metadata accessor for WIS.XPC.WiFiToCellTransitionTreatDissasocAsBeaconLostResponse();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_10017F260();
  XPCReceivedMessage.reply<A>(_:)();
  v9 = type metadata accessor for XPCReceivedMessage();
  (*(*(v9 - 8) + 8))(v7, v9);
  sub_1000157F0(v6, &qword_1002D5E78, &qword_100249DF8);
  v1(v2, v3);
  v10 = v0[149];
  v11 = v0[148];
  v12 = v0[145];
  v13 = v0[144];
  v14 = v0[143];
  v15 = v0[142];
  v16 = v0[141];
  v17 = v0[140];
  v18 = v0[139];
  v19 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[135];
  v25 = v0[134];
  v26 = v0[133];
  v27 = v0[132];
  v28 = v0[131];
  v29 = v0[130];
  v30 = v0[129];
  v31 = v0[126];
  v32 = v0[123];
  v33 = v0[120];
  v34 = v0[119];
  v35 = v0[116];
  v36 = v0[115];
  v37 = v0[112];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[105];
  v41 = v0[104];
  v42 = v0[101];
  v43 = v0[100];
  v44 = v0[97];
  v45 = v0[96];
  v46 = v0[93];
  v47 = v0[92];
  v48 = v0[89];
  v49 = v0[88];
  v50 = v0[85];
  v51 = v0[84];
  v52 = v0[81];
  v53 = v0[80];
  v54 = v0[77];
  v55 = v0[76];
  v56 = v0[73];
  v57 = v0[72];
  v58 = v0[69];
  v59 = v0[68];
  v60 = v0[65];
  v61 = v0[64];
  v62 = v0[61];
  v63 = v0[60];
  v64 = v0[57];
  v65 = v0[56];
  v66 = v0[53];
  v67 = v0[52];
  v68 = v0[49];
  v69 = v0[48];
  v70 = v0[45];
  v71 = v0[44];
  v72 = v0[41];
  v73 = v0[40];
  v74 = v0[37];
  v75 = v0[36];
  v76 = v0[33];
  v77 = v0[32];
  v78 = v0[29];
  v79 = v0[28];
  v80 = v0[25];
  v81 = v0[24];
  v82 = v0[21];
  v83 = v0[20];
  v84 = v0[17];
  v85 = v0[16];
  v86 = v0[14];
  v87 = v0[13];
  v88 = v0[10];
  v89 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10017603C()
{
  v1 = *(*v0 + 1424);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10017614C, v2, 0);
}

uint64_t sub_10017614C()
{
  v1 = v0[177];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[5];
  sub_10018002C(&qword_1002D5F90, &type metadata accessor for WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelResponse);
  XPCReceivedMessage.reply<A>(_:)();
  v9 = type metadata accessor for XPCReceivedMessage();
  (*(*(v9 - 8) + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  v1(v2, v3);
  v10 = v0[149];
  v11 = v0[148];
  v12 = v0[145];
  v13 = v0[144];
  v14 = v0[143];
  v15 = v0[142];
  v16 = v0[141];
  v17 = v0[140];
  v18 = v0[139];
  v19 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[135];
  v25 = v0[134];
  v26 = v0[133];
  v27 = v0[132];
  v28 = v0[131];
  v29 = v0[130];
  v30 = v0[129];
  v31 = v0[126];
  v32 = v0[123];
  v33 = v0[120];
  v34 = v0[119];
  v35 = v0[116];
  v36 = v0[115];
  v37 = v0[112];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[105];
  v41 = v0[104];
  v42 = v0[101];
  v43 = v0[100];
  v44 = v0[97];
  v45 = v0[96];
  v46 = v0[93];
  v47 = v0[92];
  v48 = v0[89];
  v49 = v0[88];
  v50 = v0[85];
  v51 = v0[84];
  v52 = v0[81];
  v53 = v0[80];
  v54 = v0[77];
  v55 = v0[76];
  v56 = v0[73];
  v57 = v0[72];
  v58 = v0[69];
  v59 = v0[68];
  v60 = v0[65];
  v61 = v0[64];
  v62 = v0[61];
  v63 = v0[60];
  v64 = v0[57];
  v65 = v0[56];
  v66 = v0[53];
  v67 = v0[52];
  v68 = v0[49];
  v69 = v0[48];
  v70 = v0[45];
  v71 = v0[44];
  v72 = v0[41];
  v73 = v0[40];
  v74 = v0[37];
  v75 = v0[36];
  v76 = v0[33];
  v77 = v0[32];
  v78 = v0[29];
  v79 = v0[28];
  v80 = v0[25];
  v81 = v0[24];
  v82 = v0[21];
  v83 = v0[20];
  v84 = v0[17];
  v85 = v0[16];
  v86 = v0[14];
  v87 = v0[13];
  v88 = v0[10];
  v89 = v0[9];

  v20 = v0[1];

  return v20();
}

double sub_100176684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for XPCReceivedMessage();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v2;
  (*(v6 + 32))(&v14[v13], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_100176B80(0, 0, v11, &unk_100249E98, v14);

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_100176878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for XPCReceivedMessage();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100176938, 0, 0);
}

uint64_t sub_100176938()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v2 = *(*v1 + 216);
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100176A70;
  v5 = v0[6];
  v6 = v0[2];

  return v8(v5);
}

uint64_t sub_100176A70()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100176B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10017FF88(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000157F0(v12, &qword_1002D7180, &qword_10024ABF0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000157F0(a3, &qword_1002D7180, &qword_10024ABF0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000157F0(a3, &qword_1002D7180, &qword_10024ABF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100176E70()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_100003E50(&off_1002B5FA8, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Peer session cancelled", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_100176FB8()
{
  type metadata accessor for UUID();
  sub_10018002C(&qword_1002D6088, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v0 + 128));
}

uint64_t sub_10017704C()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 17);

  v4 = *(v0 + 19);

  v5 = OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_id;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  sub_100164B98(&v0[OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_metricSubmitter]);
  v7 = *&v0[OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_subscriptions];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int sub_100177104()
{
  Hasher.init(_seed:)();
  (*(*v0 + 240))(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100177274()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 240))(v3);
  return Hasher._finalize()();
}

BOOL sub_1001772D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return (static UUID.== infix(_:_:)() & 1) != 0 && *(v2 + 128) == *(v3 + 128);
}

uint64_t sub_100177328()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
}

uint64_t sub_100177360(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(v1 + 160) = a1;
}

uint64_t sub_1001773F8()
{
  swift_beginAccess();
  v1 = *(v0 + 168);
}

uint64_t sub_100177430(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  *(v1 + 168) = a1;
}

uint64_t sub_1001774C8()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
}

uint64_t sub_100177500(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  *(v1 + 176) = a1;
}

void *sub_100177598()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    *(v0 + 184) = &_swiftEmptySetSingleton;
  }

  return v1;
}

Swift::Int sub_1001775D8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100177644()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100177684()
{
  *(v1 + 16) = v0;
  v2 = *(*v0 + 272);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_1001777A0;

  return v6();
}

uint64_t sub_1001777A0()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);

    return _swift_task_switch(sub_1001778E4, v7, 0);
  }
}

uint64_t sub_1001778E4()
{
  v1 = *(v0 + 16);
  v2 = (*(*v1 + 304))();
  (*(*v1 + 168))(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100177994(_DWORD *a1)
{
  v5 = sub_100177598();

  sub_10017B410(&v6, a1);

  v3 = *(v1 + 184);
  *(v1 + 184) = v5;
}

uint64_t sub_100177A0C()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(type metadata accessor for XPCListener.InitializationOptions() - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100177AC4, v0, 0);
}

uint64_t sub_100177AC4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v3[15];
  v5 = v3[16];
  v6 = v3[17];
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;

  v9 = v6;

  static XPCListener.InitializationOptions.none.getter();
  v10 = type metadata accessor for XPCListener();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();

  v14 = v0[4];
  (*(*v0[2] + 216))(v13);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100177C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  }

  v40 = a2;
  v41 = Strong;
  v36 = v10;
  v37 = v7;
  v38 = v6;
  v42 = a3;
  type metadata accessor for audit_token_t();
  XPCListener.IncomingSessionRequest.withUnsafeAuditToken<A>(_:)();
  v39 = a1;
  v12 = atoken.val[0];
  v13 = atoken.val[1];
  v14 = atoken.val[2];
  v15 = atoken.val[3];
  v17 = atoken.val[4];
  v16 = atoken.val[5];
  v18 = atoken.val[6];
  v19 = atoken.val[7];
  v20 = audit_token_to_pid(&atoken);
  v21 = v12 | (v13 << 32);
  v22 = v14 | (v15 << 32);
  v23 = sub_10017F530(v21, v22, v17 | (v16 << 32), v18 | (v19 << 32));
  v24 = sub_10017F898(v21, v22, v17 | (v16 << 32), v18 | (v19 << 32));
  v26 = v25;
  if (*(v23 + 2))
  {
    v27 = __chkstk_darwin(v24);
    *(&v35 - 12) = v20;
    *(&v35 - 5) = v23;
    *(&v35 - 4) = v27;
    v28 = v40;
    v29 = v41;
    *(&v35 - 3) = v26;
    *(&v35 - 2) = v29;
    *(&v35 - 1) = v28;
    type metadata accessor for XPCServer.PeerHandler();
    sub_10018002C(&qword_1002D63B8, type metadata accessor for XPCServer.PeerHandler);
    dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
  }

  else
  {

    v31 = v36;
    sub_100003E50(&off_1002B5FA8, v36);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Missing entitlement.", v34, 2u);
    }

    (*(v37 + 8))(v31, v38);
    dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  }
}

uint64_t sub_100177FC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_100177FD4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v38 = a4;
  v39 = a5;
  v37 = a2;
  v11 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B5FA8, v19);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = v14;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Received message.", v22, 2u);
    v14 = v36;
  }

  (*(v16 + 8))(v19, v15);
  v23 = *(a6 + 112);

  XPCEventPublisher.Token.rawValue.getter(v24, v25);
  v41 = &type metadata for PredictionMetric.CoreAnalyticsSubmitter;
  v42 = &off_1002B54A8;
  v26 = type metadata accessor for XPCServer.PeerHandler();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  swift_defaultActor_initialize();
  UUID.init()();
  *(v29 + OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_subscriptions) = &_swiftEmptySetSingleton;
  *(v29 + 112) = a1;
  *(v29 + 120) = v23;
  *(v29 + 128) = v37;
  v30 = v38;
  v31 = v39;
  *(v29 + 136) = a3;
  *(v29 + 144) = v30;
  *(v29 + 152) = v31;
  sub_10001A700(&v40, v29 + OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_metricSubmitter);
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = a6;
  v33[5] = v29;

  sub_100176B80(0, 0, v14, &unk_10024A1B0, v33);

  *a7 = v29;
  return result;
}

uint64_t sub_100178304(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *a4 + 264;
  v5[4] = *v6;
  v5[5] = v6 & 0xFFFFFFFFFFFFLL | 0x19000000000000;
  return _swift_task_switch(sub_100014384, a4, 0);
}

uint64_t sub_100178348(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v2[11] = updated;
  v4 = *(updated - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100178408, v1, 0);
}

uint64_t sub_100178408()
{
  v1 = v0[10];
  result = sub_100177598();
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for XPCServer.PeerHandler();
    sub_10018002C(&qword_1002D6090, type metadata accessor for XPCServer.PeerHandler);
    Set.Iterator.init(_cocoa:)();
    result = v0[2];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[6];
    v0[14] = result;
    v0[15] = v3;
    v0[16] = v4;
    v0[17] = 0;
    if (result < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
LABEL_19:
        v23 = v0[15];
        v24 = v0[16];
        v26 = v0[13];
        v25 = v0[14];
        sub_10017F9D4();

        v27 = v0[1];

        return v27();
      }

      v0[8] = v22;
      swift_dynamicCast();
      v15 = v0[7];
      v11 = v5;
      v14 = v6;
LABEL_13:
      v0[19] = v11;
      v0[20] = v14;
      v0[18] = v15;
      if (v15)
      {
        v16 = v0[13];
        v17 = v0[9];
        WIS.XPC.ServicePredictionUpdate.updateType.getter();
        v18 = *(*v15 + 176);
        v28 = (v18 + *v18);
        v19 = v18[1];
        v20 = swift_task_alloc();
        v0[21] = v20;
        *v20 = v0;
        v20[1] = sub_100178718;
        v21 = v0[13];

        return v28(v21);
      }

      goto LABEL_19;
    }

    v7 = v4 + 64;
  }

  else
  {
    v5 = 0;
    v8 = -1;
    v9 = -1 << *(result + 32);
    v3 = result + 56;
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v6 = v8 & *(result + 56);
    v0[14] = result;
    v0[15] = v3;
    v7 = 63 - v9;
    v0[16] = ~v9;
    v0[17] = 0;
  }

  v10 = v6;
  v11 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v10 - 1) & v10;
    v15 = *(*(result + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    goto LABEL_13;
  }

  v12 = v7 >> 6;
  v13 = v5;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= v12)
    {
      goto LABEL_19;
    }

    v10 = *(v3 + 8 * v11);
    ++v13;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100178718(char a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 176) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10017888C, v6, 0);
}

uint64_t sub_10017888C()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 72);
    v3 = *(*(v0 + 144) + 112);
    type metadata accessor for WIS.XPC.ServicePredictionUpdate();
    sub_10018002C(&qword_1002D6098, &type metadata accessor for WIS.XPC.ServicePredictionUpdate);

    dispatch thunk of XPCSession.send<A>(_:)();
    if (v1)
    {
    }

    v4 = 0;
  }

  else
  {
    v4 = *(v0 + 136);
  }

  v5 = *(v0 + 144);

  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  *(v0 + 136) = v4;
  v9 = *(v0 + 112);
  if (v9 < 0)
  {
    v15 = __CocoaSet.Iterator.next()();
    if (!v15)
    {
LABEL_19:
      v22 = *(v0 + 120);
      v23 = *(v0 + 128);
      v25 = *(v0 + 104);
      v24 = *(v0 + 112);
      sub_10017F9D4();

      v26 = *(v0 + 8);

      return v26();
    }

    *(v0 + 64) = v15;
    type metadata accessor for XPCServer.PeerHandler();
    swift_dynamicCast();
    v14 = *(v0 + 56);
    v11 = v7;
    v13 = v8;
LABEL_15:
    *(v0 + 152) = v11;
    *(v0 + 160) = v13;
    *(v0 + 144) = v14;
    if (v14)
    {
      v16 = *(v0 + 104);
      v17 = *(v0 + 72);
      WIS.XPC.ServicePredictionUpdate.updateType.getter();
      v18 = *(*v14 + 176);
      v27 = (v18 + *v18);
      v19 = v18[1];
      v20 = swift_task_alloc();
      *(v0 + 168) = v20;
      *v20 = v0;
      v20[1] = sub_100178718;
      v21 = *(v0 + 104);

      return v27(v21);
    }

    goto LABEL_19;
  }

  v10 = v8;
  v11 = v7;
  if (v8)
  {
LABEL_12:
    v13 = (v10 - 1) & v10;
    v14 = *(*(v9 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    goto LABEL_15;
  }

  v12 = v7;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= ((*(v0 + 128) + 64) >> 6))
    {
      goto LABEL_19;
    }

    v10 = *(*(v0 + 120) + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100178B7C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v2[11] = updated;
  v4 = *(updated - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100178C3C, v1, 0);
}

uint64_t sub_100178C3C()
{
  v1 = v0[10];
  result = sub_100177598();
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for XPCServer.PeerHandler();
    sub_10018002C(&qword_1002D6090, type metadata accessor for XPCServer.PeerHandler);
    Set.Iterator.init(_cocoa:)();
    result = v0[2];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[6];
    v0[14] = result;
    v0[15] = v3;
    v0[16] = v4;
    v0[17] = 0;
    if (result < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
LABEL_19:
        v23 = v0[15];
        v24 = v0[16];
        v26 = v0[13];
        v25 = v0[14];
        sub_10017F9D4();

        v27 = v0[1];

        return v27();
      }

      v0[8] = v22;
      swift_dynamicCast();
      v15 = v0[7];
      v11 = v5;
      v14 = v6;
LABEL_13:
      v0[19] = v11;
      v0[20] = v14;
      v0[18] = v15;
      if (v15)
      {
        v16 = v0[13];
        v17 = v0[9];
        WIS.XPC.PrivateServicePredictionUpdate.updateType.getter();
        v18 = *(*v15 + 176);
        v28 = (v18 + *v18);
        v19 = v18[1];
        v20 = swift_task_alloc();
        v0[21] = v20;
        *v20 = v0;
        v20[1] = sub_100178F4C;
        v21 = v0[13];

        return v28(v21);
      }

      goto LABEL_19;
    }

    v7 = v4 + 64;
  }

  else
  {
    v5 = 0;
    v8 = -1;
    v9 = -1 << *(result + 32);
    v3 = result + 56;
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v6 = v8 & *(result + 56);
    v0[14] = result;
    v0[15] = v3;
    v7 = 63 - v9;
    v0[16] = ~v9;
    v0[17] = 0;
  }

  v10 = v6;
  v11 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v10 - 1) & v10;
    v15 = *(*(result + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    goto LABEL_13;
  }

  v12 = v7 >> 6;
  v13 = v5;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= v12)
    {
      goto LABEL_19;
    }

    v10 = *(v3 + 8 * v11);
    ++v13;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100178F4C(char a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 176) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1001790C0, v6, 0);
}

uint64_t sub_1001790C0()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 72);
    v3 = *(*(v0 + 144) + 112);
    type metadata accessor for WIS.XPC.PrivateServicePredictionUpdate();
    sub_10018002C(&qword_1002D60A0, &type metadata accessor for WIS.XPC.PrivateServicePredictionUpdate);

    dispatch thunk of XPCSession.send<A>(_:)();
    if (v1)
    {
    }

    v4 = 0;
  }

  else
  {
    v4 = *(v0 + 136);
  }

  v5 = *(v0 + 144);

  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  *(v0 + 136) = v4;
  v9 = *(v0 + 112);
  if (v9 < 0)
  {
    v15 = __CocoaSet.Iterator.next()();
    if (!v15)
    {
LABEL_19:
      v22 = *(v0 + 120);
      v23 = *(v0 + 128);
      v25 = *(v0 + 104);
      v24 = *(v0 + 112);
      sub_10017F9D4();

      v26 = *(v0 + 8);

      return v26();
    }

    *(v0 + 64) = v15;
    type metadata accessor for XPCServer.PeerHandler();
    swift_dynamicCast();
    v14 = *(v0 + 56);
    v11 = v7;
    v13 = v8;
LABEL_15:
    *(v0 + 152) = v11;
    *(v0 + 160) = v13;
    *(v0 + 144) = v14;
    if (v14)
    {
      v16 = *(v0 + 104);
      v17 = *(v0 + 72);
      WIS.XPC.PrivateServicePredictionUpdate.updateType.getter();
      v18 = *(*v14 + 176);
      v27 = (v18 + *v18);
      v19 = v18[1];
      v20 = swift_task_alloc();
      *(v0 + 168) = v20;
      *v20 = v0;
      v20[1] = sub_100178F4C;
      v21 = *(v0 + 104);

      return v27(v21);
    }

    goto LABEL_19;
  }

  v10 = v8;
  v11 = v7;
  if (v8)
  {
LABEL_12:
    v13 = (v10 - 1) & v10;
    v14 = *(*(v9 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    goto LABEL_15;
  }

  v12 = v7;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= ((*(v0 + 128) + 64) >> 6))
    {
      goto LABEL_19;
    }

    v10 = *(*(v0 + 120) + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001793B0()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for XPCDictionary();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(v1 + 160))(v10);
  if (v13)
  {
    v14 = v13;
    XPCDictionary.init()();
    v15 = XPCDictionary.subscript.setter();
    result = (*(*v0 + 184))(v15);
    v17 = result;
    v18 = 0;
    v19 = result + 56;
    v20 = 1 << *(result + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(result + 56);
    for (i = (v20 + 63) >> 6; v22; result = (*(*v14 + 128))(v12, v26, v27 & 1))
    {
      v24 = v18;
LABEL_10:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v26 = *(*(v17 + 48) + ((v24 << 9) | (8 * v25)));
      v27 = static xpc_event_publisher_action_t.remove.getter();
    }

    while (1)
    {
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v24 >= i)
      {
        (*(v8 + 8))(v12, v7);
      }

      v22 = *(v19 + 8 * v24);
      ++v18;
      if (v22)
      {
        v18 = v24;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    sub_100003E50(&off_1002B5FA8, v6);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Publisher is nil. Cannot send XPC event", v30, 2u);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_100179724()
{
  v1 = *v0;
  v33 = type metadata accessor for Logger();
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v32 - v8;
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  type metadata accessor for XPCEventPublisher();
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[17];

  v15 = XPCEventPublisher.__allocating_init(streamName:queue:)(v13, v12, v14);
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    (*(*v15 + 120))(sub_10017F9DC, v16);

    v17 = swift_allocObject();
    *(v17 + 16) = v0;
    *(v17 + 24) = v1;
    v18 = *(*v15 + 112);

    v18(sub_10017F9E8, v17);

    sub_100003E50(&off_1002B5FA8, v11);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Setup event publisher activating", v21, 2u);
    }

    v22 = *(v2 + 8);
    v23 = v33;
    v24 = v22(v11, v33);
    (*(*v15 + 104))(v24);
    sub_100003E50(&off_1002B5FA8, v9);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Setup event publisher success. Returning...", v27, 2u);
    }

    v22(v9, v23);
  }

  else
  {
    sub_100003E50(&off_1002B5FA8, v6);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Setup publisher failed. Returning...", v30, 2u);
    }

    (*(v2 + 8))(v6, v33);
  }

  return v15;
}

uint64_t sub_100179B60(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B5FA8, v10);
  v11 = a3 & 1;
  sub_10017FE14(a1, a2, v11);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  sub_10017FE24(a1, a2, v11);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    sub_10017FE34();
    swift_allocError();
    *v17 = a1;
    *(v17 + 8) = a2;
    *(v17 + 16) = v11;
    sub_10017FE14(a1, a2, v11);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "XPC Event publisher error received: %@", v15, 0xCu);
    sub_1000157F0(v16, &unk_1002D7190, &qword_10024B0F0);

    v6 = v21;
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100179D7C(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v3 = type metadata accessor for XPCDictionary();
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  v5 = __chkstk_darwin(v3);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v57 - v7;
  v65 = type metadata accessor for XPCEventPublisher.SubscriptionAction();
  v8 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v10 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v58 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v57 - v17;
  v19 = __chkstk_darwin(v16);
  v63 = &v57 - v20;
  v21 = __chkstk_darwin(v19);
  v62 = &v57 - v22;
  __chkstk_darwin(v21);
  v24 = &v57 - v23;
  sub_100003E50(&off_1002B5FA8, &v57 - v23);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v57 = a1;
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Handler subscription action received.", v27, 2u);
    a1 = v57;
  }

  v30 = *(v12 + 8);
  v29 = v12 + 8;
  v28 = v30;
  v30(v24, v11);
  sub_10017FD5C(a1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v32 = *v10;
      sub_100003E50(&off_1002B5FA8, v18);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Removing member from subscriber set", v35, 2u);
      }

      v28(v18, v11);
      v36 = (*(*v64 + 200))(v67);
      sub_10017E148();
      return v36(v67, 0);
    }

    else
    {
      v52 = v58;
      sub_100003E50(&off_1002B5FA8, v58);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Handler subscription action of type initialBarrier received. Noop", v55, 2u);
      }

      return (v28)(v52, v11);
    }
  }

  else
  {
    v65 = v29;
    v38 = v11;
    v58 = *v10;
    v39 = sub_100164A3C(&qword_1002D5E38, &qword_100249DA0);
    v40 = v60;
    v41 = v10 + *(v39 + 48);
    v42 = v61;
    (*(v60 + 32))(v61, v41, v3);
    sub_100003E50(&off_1002B5FA8, v62);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      *(v45 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v43, v44, "Inserting new member to subscriber set with token: %llu", v45, 0xCu);
    }

    v28(v62, v11);
    sub_100003E50(&off_1002B5FA8, v63);
    v46 = v59;
    (*(v40 + 16))(v59, v42, v3);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      v50 = XPCDictionary.count.getter();
      v51 = *(v40 + 8);
      v51(v46, v3);
      *(v49 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v47, v48, "Descriptor key count=%ld", v49, 0xCu);
      v42 = v61;
    }

    else
    {
      v51 = *(v40 + 8);
      v51(v46, v3);
    }

    v28(v63, v38);
    v56 = (*(*v64 + 200))(v67);
    sub_10017B690(&v66, v58);
    v56(v67, 0);
    return (v51)(v42, v3);
  }
}

uint64_t sub_10017A4E0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = *(v0 + 152);

  v4 = *(v0 + 160);

  v5 = *(v0 + 168);

  v6 = *(v0 + 176);

  v7 = *(v0 + 184);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10017A540()
{
  sub_10017A4E0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10017A56C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for XPCServer();

  return sub_100003E50(a1, a2);
}

BOOL sub_10017A5C4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(type metadata accessor for WIS.XPC.Entitlement() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_10018002C(&qword_1002D63D0, &type metadata accessor for WIS.XPC.Entitlement);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

size_t sub_10017A6D0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100164A3C(&qword_1002D63B0, &qword_10024A1A0);
  v10 = *(type metadata accessor for WIS.XPC.Entitlement() - 8);
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
  v15 = *(type metadata accessor for WIS.XPC.Entitlement() - 8);
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

uint64_t sub_10017A8A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10017A974(v11, 0, 0, 1, a1, a2);
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
    sub_1001675EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100164B98(v11);
  return v7;
}

unint64_t sub_10017A974(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10017AA80(a5, a6);
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

char *sub_10017AA80(uint64_t a1, unint64_t a2)
{
  v4 = sub_10017AACC(a1, a2);
  sub_10017ABFC(&off_1002B5EB8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10017AACC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10017ACE8(v5, 0);
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
        v7 = sub_10017ACE8(v10, 0);
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

uint64_t sub_10017ABFC(uint64_t result)
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

  result = sub_10017AD5C(result, v12, 1, v3);
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

void *sub_10017ACE8(uint64_t a1, uint64_t a2)
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

  sub_100164A3C(&qword_1002D6740, &qword_10024A630);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10017AD5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100164A3C(&qword_1002D6740, &qword_10024A630);
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

uint64_t sub_10017AE50(uint64_t a1, char *a2)
{
  v3 = v2;
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v7 = *(updated - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(updated);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10018002C(&qword_1002D63E0, &type metadata accessor for WIS.XPC.UpdateType);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, updated);
      sub_10018002C(&qword_1002D63E8, &type metadata accessor for WIS.XPC.UpdateType);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, updated);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, updated);
    v22(v32, *(v35 + 48) + v20 * v16, updated);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, updated);
    v37 = *v3;
    sub_10017C62C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, updated);
    return 1;
  }
}

uint64_t sub_10017B130(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for WIS.XPC.Entitlement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10018002C(&qword_1002D63C8, &type metadata accessor for WIS.XPC.Entitlement);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10018002C(&qword_1002D63D0, &type metadata accessor for WIS.XPC.Entitlement);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_10017C8F4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10017B410(void *a1, _DWORD *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      v24[9] = v8;
      type metadata accessor for XPCServer.PeerHandler();
      swift_dynamicCast();
      result = 0;
      *a1 = v24[0];
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10017B7C8(v7, result + 1);
    v24[0] = v20;
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10017C0A0(v21 + 1);
      v20 = v24[0];
    }

    sub_10017C568(v22, v20);

    *v3 = v20;
    *a1 = a2;
  }

  else
  {
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    (*(*a2 + 240))(v24);
    v11 = Hasher._finalize()();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      do
      {
        v15 = *(*(v6 + 48) + 8 * v13);

        if (static UUID.== infix(_:_:)())
        {
          v16 = *(v15 + 128);

          if (v16 == a2[32])
          {

            *a1 = *(*(v6 + 48) + 8 * v13);

            return 0;
          }
        }

        else
        {
        }

        v13 = (v13 + 1) & v14;
      }

      while (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = *v3;

    sub_10017CBBC(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24[0];
    *a1 = a2;
  }

  return 1;
}

uint64_t sub_10017B690(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_10017FDC0();
  v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_100168738();
    while (1)
    {
      v14 = *(*(v5 + 48) + 8 * v9);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(*(v5 + 48) + 8 * v9);
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_10017CD84(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_10017B7C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100164A3C(&qword_1002D63C0, &qword_10024A1B8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v20 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for XPCServer.PeerHandler();
      v5 = v4;
      do
      {
        v19[0] = v5;
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          sub_10017C0A0(v14 + 1);
        }

        v6 = v19[9];
        v2 = v20;
        v7 = *(v20 + 40);
        Hasher.init(_seed:)();
        (*(*v6 + 240))(v19);
        result = Hasher._finalize()();
        v9 = v2 + 56;
        v10 = -1 << *(v2 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v2 + 48) + 8 * v13) = v6;
        ++*(v2 + 16);
        v5 = __CocoaSet.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10017B9E8(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v4 = *(updated - 8);
  v5 = v4[8];
  __chkstk_darwin(updated);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100164A3C(&qword_1002D63F0, &qword_10024A1E8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, updated);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10018002C(&qword_1002D63E0, &type metadata accessor for WIS.XPC.UpdateType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, updated);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_10017BD44(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for WIS.XPC.Entitlement();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100164A3C(&qword_1002D63D8, &qword_10024A1E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10018002C(&qword_1002D63C8, &type metadata accessor for WIS.XPC.Entitlement);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_10017C0A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100164A3C(&qword_1002D63C0, &qword_10024A1B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      (*(*v18 + 240))(v29);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10017C310(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100164A3C(&qword_1002D63A0, &unk_10024A190);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_10017FDC0();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_10017C568(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  (*(*a1 + 240))(v7);
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_10017C62C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v7 = *(updated - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(updated);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10017B9E8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10017CF04(&type metadata accessor for WIS.XPC.UpdateType, &qword_1002D63F0, &qword_10024A1E8);
      goto LABEL_12;
    }

    sub_10017D3CC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10018002C(&qword_1002D63E0, &type metadata accessor for WIS.XPC.UpdateType);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, updated);
      sub_10018002C(&qword_1002D63E8, &type metadata accessor for WIS.XPC.UpdateType);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, updated);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, updated);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10017C8F4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for WIS.XPC.Entitlement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10017BD44(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10017CF04(&type metadata accessor for WIS.XPC.Entitlement, &qword_1002D63D8, &qword_10024A1E0);
      goto LABEL_12;
    }

    sub_10017D6E8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10018002C(&qword_1002D63C8, &type metadata accessor for WIS.XPC.Entitlement);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_10018002C(&qword_1002D63D0, &type metadata accessor for WIS.XPC.Entitlement);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10017CBBC(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_10017C0A0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10017D13C();
      goto LABEL_15;
    }

    sub_10017DA04(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  (*(*v6 + 240))(v19);
  result = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for XPCServer.PeerHandler();
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);

      if (static UUID.== infix(_:_:)())
      {
        v14 = *(v13 + 128);

        if (v14 == v6[32])
        {
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v6;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v18;
  }

  return result;
}

uint64_t sub_10017CD84(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10017C310(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10017D28C();
      goto LABEL_12;
    }

    sub_10017DC54(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_10017FDC0();
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100168738();
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10017CF04(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_100164A3C(a2, a3);
  v12 = *v3;
  v13 = static _SetStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

void *sub_10017D13C()
{
  v1 = v0;
  sub_100164A3C(&qword_1002D63C0, &qword_10024A1B8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10017D28C()
{
  v1 = v0;
  sub_100164A3C(&qword_1002D63A0, &unk_10024A190);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10017D3CC(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v4 = *(updated - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(updated);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100164A3C(&qword_1002D63F0, &qword_10024A1E8);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), updated);
      v24 = *(v10 + 40);
      sub_10018002C(&qword_1002D63E0, &type metadata accessor for WIS.XPC.UpdateType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, updated);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10017D6E8(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for WIS.XPC.Entitlement();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100164A3C(&qword_1002D63D8, &qword_10024A1E0);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_10018002C(&qword_1002D63C8, &type metadata accessor for WIS.XPC.Entitlement);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10017DA04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100164A3C(&qword_1002D63C0, &qword_10024A1B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      v20 = *(*v18 + 240);

      v20(v30);
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10017DC54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100164A3C(&qword_1002D63A0, &unk_10024A190);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_10017FDC0();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10017DE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v7 = *(updated - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(updated);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10018002C(&qword_1002D63E0, &type metadata accessor for WIS.XPC.UpdateType);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, updated);
      sub_10018002C(&qword_1002D63E8, &type metadata accessor for WIS.XPC.UpdateType);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, updated);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, updated);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10017CF04(&type metadata accessor for WIS.XPC.UpdateType, &qword_1002D63F0, &qword_10024A1E8);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, updated);
    sub_10017E280(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, updated);
}

uint64_t sub_10017E148()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  sub_10017FDC0();
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  sub_100168738();
  while (1)
  {
    v12 = *(*(v1 + 48) + 8 * v5);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  v13 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10017D28C();
    v10 = v13;
  }

  v11 = *(*(v10 + 48) + 8 * v5);
  sub_10017E588(v5);
  result = v11;
  *v0 = v13;
  return result;
}

uint64_t sub_10017E280(int64_t a1)
{
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v4 = *(updated - 8);
  v5 = v4[8];
  result = __chkstk_darwin(updated);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, updated);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_10018002C(&qword_1002D63E0, &type metadata accessor for WIS.XPC.UpdateType);
        v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v36)(v8, updated);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_10017E588(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      sub_10017FDC0();
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 8 * v6);
        v12 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10017E740(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_10017E8E0(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_10017FFF8(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_10017E8E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v31 = a1;
  v6 = type metadata accessor for WIS.XPC.Entitlement();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v28 - v12;
  v34 = *(a3 + 16);
  if (v34)
  {
    v30 = 0;
    v13 = 0;
    v39 = *(v11 + 16);
    v40 = v11 + 16;
    v33 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v11 + 72);
    v37 = a4 + 56;
    v38 = v14;
    v15 = (v11 + 8);
    v36 = a4;
    while (1)
    {
      v35 = v13;
      v39(v41, v33 + v38 * v13, v6);
      v18 = *(a4 + 40);
      sub_10018002C(&qword_1002D63C8, &type metadata accessor for WIS.XPC.Entitlement);
      v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(a4 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
      {
        break;
      }

      v32 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v24 = ~v20;
      while (1)
      {
        v39(v10, *(v36 + 48) + v21 * v38, v6);
        sub_10018002C(&qword_1002D63D0, &type metadata accessor for WIS.XPC.Entitlement);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        v16 = *v15;
        (*v15)(v10, v6);
        if (v25)
        {
          break;
        }

        v21 = (v21 + 1) & v24;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
        {
          a4 = v36;
          goto LABEL_4;
        }
      }

      result = (v16)(v41, v6);
      v27 = v31[v22];
      v31[v22] = v27 | v23;
      if ((v27 & v23) != 0)
      {
        a4 = v36;
LABEL_5:
        v17 = v35;
        goto LABEL_6;
      }

      v17 = v35;
      a4 = v36;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        return result;
      }

      ++v30;
LABEL_6:
      v13 = v17 + 1;
      if (v13 == v34)
      {
        goto LABEL_17;
      }
    }

    v16 = *v15;
LABEL_4:
    v16(v41, v6);
    goto LABEL_5;
  }

  v30 = 0;
LABEL_17:

  return sub_10017EC2C(v31, v29, v30, a4);
}

uint64_t sub_10017EC2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for WIS.XPC.Entitlement();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100164A3C(&qword_1002D63D8, &qword_10024A1E0);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_10018002C(&qword_1002D63C8, &type metadata accessor for WIS.XPC.Entitlement);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10017EF54(uint64_t a1)
{
  v2 = type metadata accessor for WIS.XPC.Entitlement();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_10018002C(&qword_1002D63C8, &type metadata accessor for WIS.XPC.Entitlement);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_10017B130(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

BOOL sub_10017F0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WIS.XPC.Entitlement();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100164A3C(&qword_1002D5EE8, &qword_100249E68) == a2)
  {
    (*(v5 + 104))(v8, enum case for WIS.XPC.Entitlement.apiPredictions(_:), v4);
    v9 = sub_10017A5C4(v8, a1);
    (*(v5 + 8))(v8, v4);
    if (v9)
    {
      return 1;
    }
  }

  v12 = sub_10017EF54(v11);

  v13 = static WIS.XPC.Entitlement.spiEntitlements.getter();
  v14 = sub_10017E740(v13, v12);

  v15 = *(v14 + 16);

  return v15 != 0;
}

unint64_t sub_10017F260()
{
  result = qword_1002D5FA8;
  if (!qword_1002D5FA8)
  {
    sub_100169B50(&qword_1002D5E78, &qword_100249DF8);
    sub_10018002C(&qword_1002D5FB0, &type metadata accessor for WIS.XPC.WiFiToCellTransitionTreatDissasocAsBeaconLostResponse);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5FA8);
  }

  return result;
}

uint64_t sub_10017F314(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100169B50(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10017F35C()
{
  v2 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10017F434;

  return sub_100176878(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_10017F434()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_10017F530(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v11 = HIDWORD(a4);
  v38 = type metadata accessor for WIS.XPC.Entitlement();
  v12 = *(v38 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v38);
  v36 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v32 - v16;
  token.val[0] = v7;
  token.val[1] = v8;
  token.val[2] = v6;
  token.val[3] = v9;
  token.val[4] = v5;
  token.val[5] = v10;
  token.val[6] = v4;
  token.val[7] = v11;
  v35 = SecTaskCreateWithAuditToken(0, &token);
  if (!v35)
  {
    return _swiftEmptyArrayStorage;
  }

  *token.val = 0;
  v18 = static WIS.XPC.Entitlement.allEntitlements.getter();
  v34 = *(v18 + 16);
  if (v34)
  {
    v19 = 0;
    v37 = v12 + 16;
    v32 = (v12 + 32);
    v33 = (v12 + 8);
    v20 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v19 >= *(v18 + 16))
      {
        __break(1u);
      }

      v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v22 = *(v12 + 72);
      v23 = v18;
      v24 = v18 + v21 + v22 * v19;
      v25 = *(v12 + 16);
      v25(v17, v24, v38);
      WIS.XPC.Entitlement.rawValue.getter();
      v26 = String._bridgeToObjectiveC()();

      v27 = SecTaskCopyValueForEntitlement(v35, v26, &token);

      if (*token.val)
      {
        break;
      }

      if (v27)
      {
        v25(v36, v17, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10017A6D0(0, *(v20 + 2) + 1, 1, v20);
        }

        v29 = *(v20 + 2);
        v28 = *(v20 + 3);
        if (v29 >= v28 >> 1)
        {
          v20 = sub_10017A6D0(v28 > 1, v29 + 1, 1, v20);
        }

        swift_unknownObjectRelease();
        v30 = v38;
        (*v33)(v17, v38);
        *(v20 + 2) = v29 + 1;
        (*v32)(&v20[v21 + v29 * v22], v36, v30);
      }

      else
      {
        (*v33)(v17, v38);
      }

      ++v19;
      v18 = v23;
      if (v34 == v19)
      {
        goto LABEL_15;
      }
    }

    swift_unknownObjectRelease();

    (*v33)(v17, v38);
    return _swiftEmptyArrayStorage;
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_15:

  return v20;
}

__SecTask *sub_10017F898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  result = SecTaskCreateWithAuditToken(0, &token);
  if (result)
  {
    v5 = result;
    v8 = 0;
    v6 = SecTaskCopySigningIdentifier(result, &v8);
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *token.val = 0;
        *&token.val[2] = 0;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();

        if (*&token.val[2])
        {
          return *token.val;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for XPCServer.PeerHandler()
{
  result = qword_1002D94D0;
  if (!qword_1002D94D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10017FA3C()
{
  result = qword_1002D60B0;
  if (!qword_1002D60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D60B0);
  }

  return result;
}

uint64_t sub_10017FACC()
{
  result = type metadata accessor for UUID();
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

uint64_t getEnumTagSinglePayload for XPCServer.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for XPCServer.Error(_WORD *result, int a2, int a3)
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

uint64_t sub_10017FC88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10017FCC8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10017F434;

  return sub_1001690D0(v3, v4, v5, v2);
}

uint64_t sub_10017FD5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCEventPublisher.SubscriptionAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10017FDC0()
{
  result = qword_1002D6398;
  if (!qword_1002D6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6398);
  }

  return result;
}

uint64_t sub_10017FE14(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10017FE24(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_10017FE34()
{
  result = qword_1002D63A8;
  if (!qword_1002D63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D63A8);
  }

  return result;
}

void type metadata accessor for audit_token_t()
{
  if (!qword_1002D63F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1002D63F8);
    }
  }
}

uint64_t sub_10017FEF0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_100178304(v4, v5, v6, v2, v3);
}

uint64_t sub_10017FF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017FFF8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10017E8E0(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_10018002C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100180074(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100180080(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001800A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1001800D8()
{
  _s13CAEventSenderCMa();
  result = swift_initStaticObject();
  qword_1002DBF80 = result;
  return result;
}

uint64_t *sub_100180104()
{
  if (qword_1002D94E0 != -1)
  {
    swift_once();
  }

  return &qword_1002DBF80;
}

void sub_100180160()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10018CE70();
  sub_100003E50(&off_1002B61B0, v6);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = v2;
    v10 = v9;
    v17 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10017A8A8(0xD000000000000033, 0x800000010025B8F0, &v17);
    *(v10 + 12) = 2080;
    sub_100180440();
    v11 = Dictionary.description.getter();
    v13 = sub_10017A8A8(v11, v12, &v17);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending a CA event %s. %s", v10, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v6, v16);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v14 = String._bridgeToObjectiveC()();
  sub_100180440();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

unint64_t sub_100180440()
{
  result = qword_1002D5C60;
  if (!qword_1002D5C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D5C60);
  }

  return result;
}

unint64_t sub_1001804D8()
{
  result = qword_1002D5E50;
  if (!qword_1002D5E50)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5E50);
  }

  return result;
}

unint64_t sub_100180530()
{
  result = qword_1002D5E58;
  if (!qword_1002D5E58)
  {
    sub_100169B50(&unk_1002D6650, &qword_100249DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5E58);
  }

  return result;
}

id (*sub_100180594())(uint64_t a1, void *a2)
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  if (v1)
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
  }

  else
  {
    v3 = sub_1001820A8;
    *(v0 + 120) = sub_1001820A8;
    *(v0 + 128) = v0;
    swift_retain_n();
    sub_10002193C(0);
  }

  sub_10002194C(v1);
  return v3;
}

id sub_100180610(void *a1, uint64_t a2)
{
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  result = [a1 type];
  if (result == 13)
  {
    [a1 doubleValueForField:851968];
    v17 = v16;
    [a1 doubleValueForField:851969];
    v19 = v18;
    [a1 doubleValueForField:851970];
    v21 = v20;
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;
    v14[5] = v17;
    v14[6] = v19;
    v14[7] = v21;

    v15 = &unk_10024A388;
  }

  else
  {
    if (result != 12)
    {
      return result;
    }

    [a1 doubleValueForField:786443];
    v10 = v9;
    [a1 doubleValueForField:786442];
    v12 = v11;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;
    v14[5] = v10;
    v14[6] = v12;

    v15 = &unk_10024A398;
  }

  sub_100176B80(0, 0, v7, v15, v14);
}

uint64_t sub_100180864(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 16) = a6;
  return _swift_task_switch(sub_100180888, a6, 0);
}

uint64_t sub_100180888()
{
  v1 = v0[2];
  sub_100180C8C(v0[3], v0[4], 0);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1001808F0(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 24) = a1;
  *(v7 + 16) = a7;
  return _swift_task_switch(sub_100180918, a7, 0);
}

uint64_t sub_100180918()
{
  v1 = v0[2];
  sub_100180AB4(v0[3], v0[4], v0[5], 0);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100180980()
{
  swift_beginAccess();
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  return result;
}

uint64_t sub_1001809BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_beginAccess();
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;
  *(v4 + 160) = a3;
  *(v4 + 168) = a4 & 1;
  return result;
}

uint64_t sub_100180A24()
{
  swift_beginAccess();
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  return result;
}

uint64_t sub_100180A5C(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;
  *(v3 + 192) = a3 & 1;
  return result;
}

uint64_t sub_100180AB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B6208, v15);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v20 = a1;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "IOKitReader. Setting accelerometer value", v18, 2u);
    a1 = v20;
  }

  (*(v12 + 8))(v15, v11);
  result = swift_beginAccess();
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  *(v5 + 168) = a4 & 1;
  return result;
}

uint64_t sub_100180C8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B6208, v13);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "IOKitReader. Setting ALS value", v16, 2u);
  }

  (*(v10 + 8))(v13, v9);
  result = swift_beginAccess();
  v4[22] = a1;
  v4[23] = a2;
  *(v4 + 192) = a3 & 1;
  return result;
}

uint64_t sub_100180E3C()
{
  v0 = swift_allocObject();
  sub_100180E74();
  return v0;
}

uint64_t *sub_100180E74()
{
  v1 = v0;
  v20 = *v0;
  v2 = type metadata accessor for Logger();
  v21 = *(v2 - 8);
  v22 = v2;
  v3 = *(v21 + 64);
  __chkstk_darwin(v2);
  v19 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v18);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  swift_defaultActor_initialize();
  sub_100164AEC(0, &qword_1002D6640, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1001804D8();
  sub_100164A3C(&unk_1002D6650, &qword_100249DD0);
  sub_100180530();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  v13 = v19;
  v0[14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 15) = 0u;
  *(v0 + 17) = 0u;
  *(v0 + 19) = 0u;
  *(v0 + 168) = 1;
  v0[22] = 0;
  v0[23] = 0;
  *(v0 + 192) = 1;
  v0[25] = 500000;
  sub_100003E50(&off_1002B6208, v13);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "IOKitReader. Finished init", v16, 2u);
  }

  (*(v21 + 8))(v13, v22);
  return v1;
}

void sub_100181208()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v38 - v9;
  v11 = [objc_allocWithZone(HIDEventSystemClient) initWithType:3];
  if (v11)
  {
    v12 = v11;
    v38[0] = v1;
    v38[1] = v2;
    v40 = v10;
    v41 = v4;
    v42 = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v14 = String._bridgeToObjectiveC()();
    [v12 setProperty:isa forKey:v14];

    sub_100164A3C(&qword_1002D65F8, &qword_10024A3A8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10024A260;
    *(v15 + 32) = sub_10018235C(4);
    *(v15 + 40) = sub_10018235C(3);
    sub_100164A3C(&qword_1002D6600, &qword_10024A3B0);
    v16 = Array._bridgeToObjectiveC()().super.isa;

    [v12 setMatching:v16];

    v39 = v12;
    v17 = [v12 services];
    sub_100164AEC(0, &qword_1002D6608, HIDServiceClient_ptr);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v18 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_4:
        if (v19 < 1)
        {
          __break(1u);
          return;
        }

        v20 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v21 = *(v18 + 8 * v20 + 32);
          }

          v22 = v21;
          ++v20;
          v23 = Int._bridgeToObjectiveC()().super.super.isa;
          v24 = String._bridgeToObjectiveC()();
          [v22 setProperty:v23 forKey:v24];

          v25 = Int._bridgeToObjectiveC()().super.super.isa;
          v26 = String._bridgeToObjectiveC()();
          [v22 setProperty:v25 forKey:v26];
        }

        while (v19 != v20);
      }
    }

    v30 = v38[0];
    aBlock[4] = sub_100180594();
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100181780;
    aBlock[3] = &unk_1002B6378;
    v32 = _Block_copy(aBlock);

    v33 = v39;
    [v39 setEventHandler:v32];
    _Block_release(v32);
    [v33 setDispatchQueue:*(v30 + 112)];
    v34 = v40;
    sub_100003E50(&off_1002B6208, v40);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "IOKitReader. Finished client init and setup", v37, 2u);
    }

    (*(v41 + 8))(v34, v42);
    return;
  }

  sub_100003E50(&off_1002B6208, v8);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "IOKitReader. Failed to create HIDEventSystemClient", v29, 2u);
  }

  (*(v4 + 8))(v8, v3);
}

void sub_100181780(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, v7);
}

uint64_t sub_100181804()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - v10;
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  if (v0[17])
  {
    sub_100003E50(&off_1002B6208, &v28 - v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "IOKitReader. Request to start client. Client is not nil, setting to nil", v16, 2u);
    }

    v17 = (*(v4 + 8))(v13, v3);
    (*(*v1 + 272))(v17);
  }

  sub_100181208();
  v19 = v18;
  v20 = v1[17];
  v1[17] = v18;
  v21 = v18;

  if (v19)
  {
    [v21 activate];
    sub_100003E50(&off_1002B6208, v11);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "IOKitReader. Set up client and started callback", v24, 2u);
    }
  }

  else
  {
    sub_100003E50(&off_1002B6208, v8);
    v21 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v21, v25, "IOKitReader. Request to start client. Client is NIL after setup", v26, 2u);
    }

    v11 = v8;
  }

  return (*(v4 + 8))(v11, v3);
}

uint64_t sub_100181B74()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = v0[17];
  if (v10)
  {
    v11 = v10;
    [v11 cancel];
    v12 = v0[17];
    v0[17] = 0;

    sub_100003E50(&off_1002B6208, v9);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "IOKitReader. Stopped callback", v15, 2u);
    }
  }

  else
  {
    sub_100003E50(&off_1002B6208, v7);
    v11 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, v16, "IOKitReader. Requested stop callback, but client is NIL", v17, 2u);
    }

    v9 = v7;
  }

  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_100181DC0()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 272))(v5);
  sub_100003E50(&off_1002B6208, v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "IOKitReader. Unregistered callback", v10, 2u);
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_100181F44()
{
  v1 = *(v0 + 128);
  sub_10002193C(*(v0 + 120));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100181F8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  _s11IOKitReaderCMa();

  return sub_100003E50(a1, a2);
}

unint64_t sub_100181FD4()
{
  _s11IOKitReaderCMa();

  return sub_10000358C();
}

__n128 _s18AccelerometerValueVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s18AccelerometerValueVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18AccelerometerValueVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1001820B4()
{
  v2 = *(v0 + 4);
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10017F434;

  return sub_1001808F0(v3, v4, v5, v6, v7, v8, v2);
}

uint64_t sub_10018216C(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1001821B8()
{
  v2 = *(v0 + 4);
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002A5C;

  return sub_100180864(v3, v4, v5, v6, v7, v2);
}

unint64_t sub_100182260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100164A3C(&qword_1002D6638, &qword_10024A3E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100164498(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10018235C(uint64_t a1)
{
  sub_100164A3C(&qword_1002D6610, &qword_10024A3B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002497B0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000010025BAE0;
  sub_100164A3C(&qword_1002D6618, &qword_10024A3C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002497B0;
  sub_100164A3C(&qword_1002D6620, &qword_10024A3C8);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_10024A260;
  *(v4 + 32) = 0x7355656369766544;
  *(v4 + 40) = 0xEF65676150656761;
  *(v4 + 48) = xmmword_10024A270;
  *(v4 + 64) = 0xEB00000000656761;
  *(v4 + 72) = a1;
  v5 = sub_100182260(v4);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D6628, &qword_10024A3D0);
  swift_arrayDestroy();
  *(v3 + 32) = v5;
  *(inited + 72) = sub_100164A3C(&qword_1002D6630, &qword_10024A3D8);
  *(inited + 48) = v3;
  v6 = sub_1001667D0(inited);
  swift_setDeallocating();
  sub_1000157F0(inited + 32, &qword_1002D5CB8, &unk_100249BC0);
  return v6;
}

uint64_t sub_10018250C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100182524()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_100182558()
{
  ObjectType = swift_getObjectType();
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = &v0[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_authorizationStatus];
  *v9 = 0;
  v9[4] = 1;
  *&v0[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager] = 0;
  v19 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_updateQueue;
  sub_100169B04();
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1001804D8();
  sub_100164A3C(&unk_1002D6650, &qword_100249DD0);
  sub_100180530();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  *&v0[v19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_isLocationUpdating] = 0;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v22, "init");
  v11 = *&v10[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_updateQueue];
  v12 = objc_allocWithZone(CLLocationManager);
  v13 = v10;
  v14 = v11;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v12 initWithEffectiveBundlePath:v15 delegate:v13 onQueue:v14];

  v17 = *&v13[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager];
  *&v13[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager] = v16;

  return v13;
}

uint64_t sub_100182880()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v50 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v50 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v50 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v50 - v17;
  __chkstk_darwin(v16);
  v20 = &v50 - v19;
  v21 = *&v0[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager];
  if (v21)
  {
    v22 = [v21 authorizationStatus];
    v23 = &v0[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_authorizationStatus];
    *v23 = v22;
    v23[4] = 0;
    if (v22 > 2)
    {
      if ((v22 - 3) >= 2)
      {
LABEL_22:
        sub_100003E50(&off_1002B63B0, v9);
        v41 = v0;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v52 = v45;
          *v44 = 136315138;
          v46 = v23[4];
          v50 = *v23;
          v51 = v46;
          sub_100164A3C(&qword_1002D6748, &qword_10024A638);
          v47 = String.init<A>(describing:)();
          v49 = sub_10017A8A8(v47, v48, &v52);

          *(v44 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v42, v43, "Location Environment Reader. Unexpected authorization status %s", v44, 0xCu);
          sub_100164B98(v45);
        }

        return (*(v2 + 8))(v9, v1);
      }

      sub_100003E50(&off_1002B63B0, v12);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Location Environment Reader. Location services are authorized", v34, 2u);
      }

      return (*(v2 + 8))(v12, v1);
    }

    else if (v22)
    {
      if (v22 != 1)
      {
        if (v22 == 2)
        {
          sub_100003E50(&off_1002B63B0, v15);
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v24, v25, "Location Environment Reader. Location services denied", v26, 2u);
          }

          return (*(v2 + 8))(v15, v1);
        }

        goto LABEL_22;
      }

      sub_100003E50(&off_1002B63B0, v18);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Location Environment Reader. Location services are restricted", v40, 2u);
      }

      return (*(v2 + 8))(v18, v1);
    }

    else
    {
      sub_100003E50(&off_1002B63B0, v20);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Location Environment Reader. Location services authorization status not determined", v37, 2u);
      }

      return (*(v2 + 8))(v20, v1);
    }
  }

  else
  {
    v28 = &v0[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_authorizationStatus];
    *v28 = 0;
    v28[4] = 1;
    sub_100003E50(&off_1002B63B0, v6);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Location Environment Reader. Location services authorization status is nil", v31, 2u);
    }

    return (*(v2 + 8))(v6, v1);
  }
}

id sub_100182E54()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_isLocationUpdating;
  if (*(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_isLocationUpdating))
  {
    sub_100003E50(&off_1002B63B0, v7);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Location Environment Reader. Skipping to start location updates, location updates already running...", v13, 2u);
    }

    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    sub_100003E50(&off_1002B63B0, &v19 - v8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Location Environment Reader. Starting location updates...", v17, 2u);
    }

    (*(v3 + 8))(v9, v2);
    v18 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager;
    result = *(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager);
    if (result)
    {
      [result setDesiredAccuracy:kCLLocationAccuracyBystander];
      result = *(v1 + v18);
      if (result)
      {
        result = [result startUpdatingLocation];
      }
    }

    *(v1 + v10) = 1;
  }

  return result;
}

id sub_1001830C4(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  if (a1)
  {
    sub_100003E50(&off_1002B63B0, &v19 - v10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = 1;
      _os_log_impl(&_mh_execute_header, v12, v13, "Location Environment Reader. Stopping location updates with doForce %{BOOL}d...", v14, 8u);
    }

    (*(v5 + 8))(v11, v4);
    result = *(v2 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager);
    if (result)
    {
      result = [result stopUpdatingLocation];
    }

    *(v2 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_isLocationUpdating) = 0;
  }

  else
  {
    sub_100003E50(&off_1002B63B0, v9);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      _os_log_impl(&_mh_execute_header, v16, v17, "Location Environment Reader. Skipping to stop location updates with doForce %{BOOL}d...", v18, 8u);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_100183324(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 authorizationStatus];
  v10 = &v2[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_authorizationStatus];
  *v10 = v9;
  v10[4] = 0;
  sub_100003E50(&off_1002B63B0, v8);
  v11 = v2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    v16 = v10[4];
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = *v10;
    }

    v22 = v17;
    v23 = v16;
    sub_100164A3C(&qword_1002D6680, &qword_10024A3E8);
    v18 = String.init<A>(describing:)();
    v20 = sub_10017A8A8(v18, v19, &v24);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Location Environment Reader. Location services received authorization callback, authorizationStatus is %s", v14, 0xCu);
    sub_100164B98(v15);
  }

  (*(v5 + 8))(v8, v4);
  return sub_100182880();
}

void sub_100183630(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v39 = type metadata accessor for Logger();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v39);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  v11 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager;
  v12 = *(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager);
  if (v12 && (v13 = [v12 location]) != 0)
  {
    v14 = v13;
    [v13 altitude];
    v16 = v15;
    [v14 horizontalAccuracy];
    v18 = v17;
    [v14 verticalAccuracy];
    v20 = v19;
    v21 = sub_10018408C([v14 signalEnvironmentType]);
    v22 = 0;
    v23 = *(v1 + v11);
    if (!v23)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_100003E50(&off_1002B63B0, v10);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Location Environment Reader. location is nil, horizontalAccuracy, verticalAccuracy, altitude, environmentClassification (e.g. Urban) are nil", v26, 2u);
    }

    (*(v4 + 8))(v10, v39);
    v14 = 0;
    v22 = 1;
    v20 = 0;
    v21 = 6;
    v18 = 0;
    v16 = 0;
    v23 = *(v2 + v11);
    if (!v23)
    {
      goto LABEL_16;
    }
  }

  v27 = [v23 _zAxisStatistics];
  if (v27)
  {
    v28 = v27;
    v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = sub_100183A50(v29);

    if (v30)
    {
      if (*(v30 + 16) && (v31 = sub_100164498(0xD000000000000015, 0x800000010025BB80), (v32 & 1) != 0))
      {
        sub_1001675EC(*(v30 + 56) + 32 * v31, v41);

        if (swift_dynamicCast())
        {
          v33 = sub_10018409C(v40);
          if (v33 != 7)
          {
            v34 = v33;

            goto LABEL_20;
          }
        }
      }

      else
      {
      }
    }
  }

LABEL_16:
  sub_100003E50(&off_1002B63B0, v8);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Location Environment Reader. ambientLightClassification (e.g. ArtificialLightIndoor) is nil", v37, 2u);
  }

  else
  {
  }

  (*(v4 + 8))(v8, v39);
  v34 = 7;
LABEL_20:
  *a1 = v18;
  *(a1 + 8) = v22;
  *(a1 + 16) = v20;
  *(a1 + 24) = v22;
  *(a1 + 32) = v16;
  *(a1 + 42) = v34;
  *(a1 + 40) = v22 | (v21 << 8);
}

unint64_t sub_100183A50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100164A3C(&qword_1002D5CB0, &qword_100249BB8);
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
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_10018453C(*(a1 + 48) + 40 * v14, v29);
        sub_1001675EC(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_10018453C(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1001675EC(v27 + 8, v22);
        sub_1000157F0(v26, &unk_1002D6730, &unk_10024A620);
        v23 = v20;
        sub_100167E08(v22, v24);
        v15 = v23;
        sub_100167E08(v24, v25);
        sub_100167E08(v25, &v23);
        result = sub_100164498(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100164B98(v12);
          result = sub_100167E08(&v23, v12);
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
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_100167E08(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_1000157F0(v26, &unk_1002D6730, &unk_10024A620);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_100183D88@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018409C(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_100183DD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100183E4C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100183E90@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018408C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100183EC8()
{
  swift_getObjectType();
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B63B0, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Location Environment Reader. Callback: Location fetch failed with error: %@", v7, 0xCu);
    sub_1000157F0(v8, &unk_1002D7190, &qword_10024B0F0);
  }

  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_10018408C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_10018409C(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_1001840B0()
{
  result = qword_1002D6688;
  if (!qword_1002D6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6688);
  }

  return result;
}

unint64_t sub_100184108()
{
  result = qword_1002D6690;
  if (!qword_1002D6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6690);
  }

  return result;
}

__n128 sub_10018415C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100184170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 43))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 41);
  if (v3 <= 6)
  {
    v4 = 6;
  }

  else
  {
    v4 = *(a1 + 41);
  }

  v5 = v4 - 7;
  if (v3 < 6)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1001841C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 6;
    }
  }

  return result;
}

uint64_t _s34AmbientLightDecisionTreeOutputEnumOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s34AmbientLightDecisionTreeOutputEnumOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}