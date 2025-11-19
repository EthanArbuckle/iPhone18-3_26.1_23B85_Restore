uint64_t sub_10015A900(void *a1)
{
  v2 = swift_allocObject();
  sub_10015A950(a1);
  return v2;
}

void *sub_10015A950(void *a1)
{
  sub_1000183C4(&qword_1002B7D78);
  sub_10001A278();
  __chkstk_darwin(v4, v5);
  sub_10001AE68(a1, a1[3]);
  sub_10015ACE0();
  sub_1001F8178();
  if (v2)
  {
    type metadata accessor for OctaneSubscriptionGroup();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v11) = 0;
    v1[2] = sub_1001F7C78();
    v1[3] = v6;
    sub_1000183C4(&qword_1002B7D88);
    sub_10015AD34(&qword_1002B7D90, &qword_1002B7D98);
    sub_10015B0A0();
    v1[4] = v11;
    LOBYTE(v11) = 2;
    v1[5] = sub_1001F7C78();
    v1[6] = v7;
    sub_1000183C4(&qword_1002B7DA0);
    sub_10015ADC0(&qword_1002B7DA8, &qword_1002B7DB0);
    sub_10015B0A0();
    v9 = sub_1000263B8();
    v10(v9);
    v1[7] = v11;
  }

  sub_100019CCC(a1);
  return v1;
}

uint64_t sub_10015AC3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10015A900(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10015AC8C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1001F7EA8();
  }
}

unint64_t sub_10015ACE0()
{
  result = qword_1002B7D80;
  if (!qword_1002B7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7D80);
  }

  return result;
}

uint64_t sub_10015AD34(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B7D88);
    sub_10015AE4C(a2, type metadata accessor for OctaneLocalization);
    result = sub_1000EFA20();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10015ADC0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B7DA0);
    sub_10015AE4C(a2, type metadata accessor for OctaneSubscription);
    result = sub_1000EFA20();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10015AE4C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for OctaneSubscriptionGroup.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10015AF60);
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

unint64_t sub_10015AF9C()
{
  result = qword_1002B7DE0;
  if (!qword_1002B7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7DE0);
  }

  return result;
}

unint64_t sub_10015AFF4()
{
  result = qword_1002B7DE8;
  if (!qword_1002B7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7DE8);
  }

  return result;
}

unint64_t sub_10015B04C()
{
  result = qword_1002B7DF0;
  if (!qword_1002B7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7DF0);
  }

  return result;
}

uint64_t sub_10015B0A0()
{

  return sub_1001F7CB8();
}

uint64_t sub_10015B0D0()
{

  return sub_1001F7DC8();
}

uint64_t EventLoop.makePromise<A>(of:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  EventLoopPromise.init(eventLoop:file:line:)(v9, a8, a2, a3, a4, a5);
  sub_1000A3FB8();
  swift_unknownObjectRetain();
  return v8;
}

BOOL sub_10015B140()
{
  result = sub_1000B3348();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t EventLoop.preconditionInEventLoop(file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10015F05C(a1, a2, a3, a4, a5);
  result = v6(v5);
  if ((result & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

void EventLoop.makeSucceededFuture<A>(_:file:line:)()
{
  sub_100037C08();
  v1 = v0;
  sub_10002DFFC();
  v3 = v2;
  __chkstk_darwin(v4, v5);
  sub_100023510();
  v11 = v10 - v9;
  if (v12 == &type metadata for () + 8)
  {
    (*(v8 + 72))(v7, v8);
    type metadata accessor for EventLoopFuture();
    sub_100037B00();

    swift_dynamicCastClassUnconditional();
  }

  else
  {
    v13 = v6;
    type metadata accessor for EventLoopFuture();
    (*(v3 + 16))(v11, v13, v1);
    EventLoopFuture.__allocating_init(eventLoop:value:file:line:)();
    swift_unknownObjectRetain();
    sub_100037B00();
  }
}

uint64_t sub_10015B3BC()
{
  sub_10015DE7C(v1);
  v2 = sub_1000A3FB8();
  sub_10015EDF0(v2);
  return v0;
}

uint64_t sub_10015B3EC(uint64_t a1, unint64_t a2)
{
  v2 = sub_10015E27C(a1, a2);

  return v2;
}

void EventLoopGroup.shutdownGracefully(_:)()
{
  sub_100037C08();
  sub_10015F090();
  v4 = sub_1001F6748();
  sub_10002DFFC();
  v6 = v5;
  __chkstk_darwin(v7, v8);
  sub_100023510();
  v11 = v10 - v9;
  sub_10004B17C();
  (*(v6 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v12 = sub_1001F7358();
  (*(v6 + 8))(v11, v4);
  (*(v0 + 16))(v12, v3, v2, v1, v0);

  sub_100037B00();
}

uint64_t Scheduled.init(promise:cancellationTask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004794C();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  EventLoopFuture.whenFailure(_:)(sub_10015C0D0, v6);

  return a1;
}

uint64_t static NIODeadline.now()()
{
  v0 = sub_1001F67D8();
  sub_10002DFFC();
  v2 = v1;
  __chkstk_darwin();
  sub_100023510();
  v5 = v4 - v3;
  sub_1001F67C8();
  v6 = sub_1001F67B8();
  (*(v2 + 8))(v5, v0);
  if (v6 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v6;
  }
}

uint64_t static NIODeadline.+ infix(_:_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (__OFADD__(result, a2))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return (result + a2) & ~((result + a2) >> 63);
  }

  return result;
}

void EventLoop.submit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  EmbeddedChannel.WrongTypeError.actual.getter(a3, a4);
  sub_10015F084();
  v15 = EventLoop.makePromise<A>(of:file:line:)(v10, v11, v12, v13, 559, v14, a4, a5);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = a1;
  v16[7] = a2;
  v17 = *(a5 + 24);

  v17(sub_10015D5CC, v16, a3, a5);

  sub_100037A50();
}

BOOL sub_10015B7AC()
{
  result = sub_1000B3348();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t EventLoop.preconditionNotInEventLoop(file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10015F05C(a1, a2, a3, a4, a5);
  result = v6(v5);
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015B8B4(uint64_t a1)
{
  sub_1000183C4(&qword_1002ADDB8);
  sub_100047958();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001FE9E0;
  *(v3 + 32) = v1;
  *(v3 + 40) = a1;

  return v3;
}

uint64_t EventLoop.makeIterator()(uint64_t a1, uint64_t a2)
{
  sub_1000183C4(&qword_1002ADDB8);
  sub_100047958();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001FE9E0;
  *(v4 + 32) = v2;
  *(v4 + 40) = a2;
  swift_unknownObjectRetain();
  return v4;
}

void EventLoop.makeCompletedFuture<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  sub_10002DFFC();
  v27 = v26;
  __chkstk_darwin(v28, v29);
  sub_100023510();
  v32 = v31 - v30;
  sub_100019BC4(&qword_1002ACE88);
  v33 = sub_1001F8158();
  sub_10002DFFC();
  __chkstk_darwin(v34, v35);
  v37 = &a9 - v36;
  (*(v38 + 16))(&a9 - v36, v25, v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10015F084();
    EventLoop.makeFailedFuture<A>(_:file:line:)();
  }

  else
  {
    (*(v27 + 32))(v32, v37, v23);
    sub_10015F084();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
    (*(v27 + 8))(v32, v23);
  }

  sub_100037B00();
}

uint64_t static TimeAmount.seconds(_:)(uint64_t a1)
{
  result = 1000000000 * a1;
  if ((a1 * 1000000000) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Scheduled.cancel()()
{
  sub_10002D864();
  v0 = swift_allocError();
  *v1 = 1;
  EventLoopPromise.fail(_:)(v0);
}

uint64_t static NIODeadline.- infix(_:_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    result -= a2;
    return result;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EventLoopGroup.syncShutdownGracefully()()
{
  sub_1001F6738();
  sub_100023520();
  __chkstk_darwin(v0, v1);
  sub_100023510();
  sub_100158C20();
  v2();
  type metadata accessor for Lock();
  swift_allocObject();
  v3 = Lock.init()();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  aBlock[4] = debugOnly(_:);
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172C0;
  aBlock[3] = &unk_10028EFB0;
  _Block_copy(aBlock);
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100028258();
  sub_1000183C4(&qword_1002AC880);
  sub_1000282B0();
  sub_1001F7708();
  sub_1001F6818();
  swift_allocObject();
  v5 = sub_1001F67F8();
  sub_1000A41C8();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;

  EventLoopGroup.shutdownGracefully(_:)();

  sub_1001F67E8();
  Lock.lock()();
  swift_beginAccess();
  if (*(v4 + 16))
  {
    swift_willThrow();
    swift_errorRetain();
  }

  Lock.unlock()();
}

unint64_t static NIODeadline.< infix(_:_:)(unint64_t result, unint64_t a2)
{
  if (((a2 | result) & 0x8000000000000000) == 0)
  {
    return result < a2;
  }

  __break(1u);
  return result;
}

void EventLoop.flatSubmit<A>(_:)()
{
  sub_100037C08();
  v5 = v4;
  sub_10015F090();
  sub_1000A3FC4();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v0;
  v6[4] = v5;
  v6[5] = v3;
  v6[6] = v2;
  v7 = *(v5 + 32);
  v8 = type metadata accessor for EventLoopFuture();

  v7(sub_10015DDC0, v6, v8, v1, v5);

  sub_1000A41C8();
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v0;
  v9[4] = v5;
  sub_100158C20();
  EventLoopFuture.flatMap<A>(file:line:_:)();
  sub_1000A3FB8();

  sub_100037B00();
}

uint64_t sub_10015C020(uint64_t a1, uint64_t (*a2)(void))
{
  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88);
  result = swift_dynamicCast();
  if ((result & 1) != 0 && v4 == 1)
  {
    return a2();
  }

  return result;
}

uint64_t sub_10015C09C()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015C0D8()
{
  sub_10015F018();
  sub_100070228();
  if (v3())
  {
    sub_100037A50();

    return sub_10015C1A4(v4);
  }

  else
  {
    sub_10004794C();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v2;
    v8 = *(v0 + 24);

    v9 = sub_10015F03C();
    v8(v9);
    sub_100037A50();
  }
}

uint64_t sub_10015C1A4(uint64_t result)
{
  v2 = v1;
  v3 = v1[7];
  if (v3)
  {
    v4 = result;
    ObjectType = swift_getObjectType();
    v6 = v2[4];
    v7 = v2[8];
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v7;
    v8[4] = v2;
    v9 = *(v6 + 48);
    sub_10003742C(v3);
    sub_10003742C(v3);

    v10 = sub_1000183C4(&qword_1002ADC18);
    v11 = v9(v4, sub_10015ED34, v8, v10, ObjectType, v6);

    v2[6] = v11;

    sub_10015C2F0();

    return sub_100037408(v3);
  }

  return result;
}

uint64_t sub_10015C2F0()
{
  if (*(v0 + 48))
  {
    swift_retain_n();
    swift_retain_n();
    sub_100121F5C();

    swift_retain_n();
    swift_retain_n();
    sub_100122078();
  }

  return result;
}

uint64_t RepeatedTask.cancel(promise:)()
{
  sub_10015F018();
  sub_100070228();
  if (v3())
  {
    sub_100037A50();

    return sub_10015C488(v4);
  }

  else
  {
    sub_10004794C();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v2;
    v8 = *(v0 + 24);

    v9 = sub_10015F03C();
    v8(v9);
    sub_100037A50();
  }
}

uint64_t sub_10015C488(uint64_t a1)
{
  v3 = v1[4];
  ObjectType = swift_getObjectType();
  if (v1[6])
  {
    sub_10002D864();
    swift_allocError();
    *v5 = 1;

    swift_errorRetain();
    sub_1000A1BDC();
  }

  v1[6] = 0;

  v6 = v1[7];
  v1[7] = 0;
  v1[8] = 0;
  result = sub_100037408(v6);
  if (v1[5] | a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = a1;
    v9 = *(v3 + 24);

    v9(sub_10015EDE8, v8, ObjectType, v3);
  }

  return result;
}

uint64_t sub_10015C5F4(uint64_t result, uint64_t a2)
{
  if (*(result + 40))
  {
    result = sub_1000A13B0();
  }

  if (a2)
  {

    return sub_1000A13B0();
  }

  return result;
}

uint64_t sub_10015C654(uint64_t a1, uint64_t a2)
{
  sub_100150924(*(a2 + 24), *(a2 + 32));
  swift_retain_n();

  sub_10011DE78();
}

void sub_10015C6D4()
{
  if (v0[7])
  {
    v1 = v0;
    ObjectType = swift_getObjectType();
    v3 = v0[4];
    v4 = v0[2];
    v5 = *(v3 + 48);

    v6 = sub_1000183C4(&qword_1002ADC18);
    v7 = v5(v4, sub_10015ED90, v0, v6, ObjectType, v3);

    v1[6] = v7;

    sub_10015C2F0();
  }
}

void sub_10015C7C4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 56);
  if (v4)
  {

    v5 = v4(a1);
    sub_100037408(v4);
  }

  else
  {
    swift_getObjectType();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
    v5 = v6;
  }

  *a2 = v5;
}

uint64_t RepeatedTask.deinit()
{
  swift_unknownObjectRelease();

  sub_100037408(*(v0 + 56));
  return v0;
}

uint64_t RepeatedTask.__deallocating_deinit()
{
  RepeatedTask.deinit();

  return swift_deallocClassInstance();
}

uint64_t EventLoopIterator.next()()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    v0[1] = v1 + 1;
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_10015C93C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  result = debugOnly(_:)(*v5, v5[1], a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v8;
  return result;
}

uint64_t sub_10015C980@<X0>(uint64_t *a1@<X8>)
{
  result = EventLoopIterator.next()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10015C9A8()
{
  sub_1000183C4(&qword_1002ADC18);
  v1 = swift_allocObject();
  *(v1 + 32) = v0;
  *(v1 + 40) = &protocol witness table for EmbeddedEventLoop;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;

  return v1;
}

uint64_t EventLoop.makeSucceededVoidFuture()(uint64_t a1, uint64_t a2)
{
  sub_1000183C4(&qword_1002ADC18);
  v5 = swift_allocObject();
  sub_10012DA48(v2, 0, 0, "n/a", 3, 2, 0, v5, a1, a2);
  sub_1000A3FB8();
  swift_unknownObjectRetain();
  return a2;
}

double EventLoop._promiseCompleted(futureIdentifier:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t static TimeAmount.microseconds(_:)(uint64_t a1)
{
  result = 1000 * a1;
  if ((a1 * 1000) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t static TimeAmount.milliseconds(_:)(uint64_t a1)
{
  result = 1000000 * a1;
  if ((a1 * 1000000) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t static TimeAmount.minutes(_:)(uint64_t a1)
{
  result = 60000000000 * a1;
  if ((a1 * 60000000000) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t static TimeAmount.hours(_:)(uint64_t a1)
{
  result = 3600000000000 * a1;
  if ((a1 * 3600000000000) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t static TimeAmount.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void *static TimeAmount.+= infix(_:_:)(void *result, uint64_t a2)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result += a2;
  }

  return result;
}

uint64_t static TimeAmount.- infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void *static TimeAmount.-= infix(_:_:)(void *result, uint64_t a2)
{
  if (__OFSUB__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result -= a2;
  }

  return result;
}

void static TimeAmount.* infix<A>(_:_:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  swift_getAssociatedTypeWitness();
  sub_100023520();
  __chkstk_darwin(v4, v5);
  sub_10002DFFC();
  __chkstk_darwin(v6, v7);
  sub_10015EF90();
  v10 = __chkstk_darwin(v8, v9);
  v18 = sub_10015EF6C(v10, v11, v12, v13, v14, v15, v16, v17, v33);
  v19(v18);
  v20 = v1;
  sub_1000AD850();
  if (sub_1001F76A8())
  {
    sub_10015EF14();
    if (sub_1001F7698() > 64)
    {
      v20 = v1;
      sub_1000AD850();
      if (sub_1001F76A8())
      {
        sub_10015EF14();
        if (sub_1001F7698() < 64)
        {
          goto LABEL_13;
        }

LABEL_8:
        sub_10015E7DC();
        sub_10015EF48();
        sub_10015EF24();
        v23 = sub_10015EEFC();
        v24(v23);
        if (v20)
        {
          goto LABEL_27;
        }

        goto LABEL_14;
      }

      v34 = v3;
      v20 = v1;
      sub_1000AD850();
      v21 = sub_1001F76A8();
      sub_10015EF14();
      v22 = sub_1001F7698();
      if (v21)
      {
        v3 = v34;
        if (v22 <= 64)
        {
          swift_getAssociatedConformanceWitness();
          sub_10015F0A4();
          sub_10015EFD0();
          sub_10015EF24();
          v25 = sub_10015EEFC();
          v26(v25);
          if (v1)
          {
            goto LABEL_27;
          }

          goto LABEL_13;
        }

        goto LABEL_8;
      }

      v3 = v34;
      if (v22 < 64)
      {
LABEL_13:
        sub_10015EF14();
        sub_1001F7688();
      }
    }
  }

LABEL_14:
  sub_10015EF14();
  if (sub_1001F7698() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v20 = v1;
    sub_1000AD850();
    v27 = sub_1001F76A8();
    sub_10015EF14();
    v28 = sub_1001F7698();
    if ((v27 & 1) == 0)
    {
      break;
    }

    if (v28 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_10015E7DC();
    sub_10015EF48();
    sub_10015EFF4();
    v29 = sub_10015EEFC();
    v30(v29);
    if (v1)
    {
      __break(1u);
LABEL_19:
      sub_10015EF14();
      if (sub_1001F7698() == 64)
      {
        v20 = v1;
        sub_1000AD850();
        if ((sub_1001F76A8() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_24;
  }

  if (v28 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_10015EF14();
  sub_1001F7688();
LABEL_24:
  sub_10015EF14();
  sub_1001F7688();
  v31 = sub_10015F070();
  v32(v31);
  if ((v20 * v3) >> 64 == (v20 * v3) >> 63)
  {
    sub_100037B00();
    return;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  swift_getAssociatedTypeWitness();
  sub_100023520();
  __chkstk_darwin(v4, v5);
  sub_10002DFFC();
  __chkstk_darwin(v6, v7);
  sub_10015EF90();
  v10 = __chkstk_darwin(v8, v9);
  v18 = sub_10015EF6C(v10, v11, v12, v13, v14, v15, v16, v17, v33);
  v19(v18);
  v20 = v1;
  sub_1000AD850();
  if (sub_1001F76A8())
  {
    sub_10015EF14();
    if (sub_1001F7698() > 64)
    {
      v20 = v1;
      sub_1000AD850();
      if (sub_1001F76A8())
      {
        sub_10015EF14();
        if (sub_1001F7698() < 64)
        {
          goto LABEL_13;
        }

LABEL_8:
        sub_10015E7DC();
        sub_10015EF48();
        sub_10015EF24();
        v23 = sub_10015EEFC();
        v24(v23);
        if (v20)
        {
          goto LABEL_27;
        }

        goto LABEL_14;
      }

      v34 = v3;
      v20 = v1;
      sub_1000AD850();
      v21 = sub_1001F76A8();
      sub_10015EF14();
      v22 = sub_1001F7698();
      if (v21)
      {
        v3 = v34;
        if (v22 <= 64)
        {
          swift_getAssociatedConformanceWitness();
          sub_10015F0A4();
          sub_10015EFD0();
          sub_10015EF24();
          v25 = sub_10015EEFC();
          v26(v25);
          if (v1)
          {
            goto LABEL_27;
          }

          goto LABEL_13;
        }

        goto LABEL_8;
      }

      v3 = v34;
      if (v22 < 64)
      {
LABEL_13:
        sub_10015EF14();
        sub_1001F7688();
      }
    }
  }

LABEL_14:
  sub_10015EF14();
  if (sub_1001F7698() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v20 = v1;
    sub_1000AD850();
    v27 = sub_1001F76A8();
    sub_10015EF14();
    v28 = sub_1001F7698();
    if ((v27 & 1) == 0)
    {
      break;
    }

    if (v28 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_10015E7DC();
    sub_10015EF48();
    sub_10015EFF4();
    v29 = sub_10015EEFC();
    v30(v29);
    if (v1)
    {
      __break(1u);
LABEL_19:
      sub_10015EF14();
      if (sub_1001F7698() == 64)
      {
        v20 = v1;
        sub_1000AD850();
        if ((sub_1001F76A8() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_24;
  }

  if (v28 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_10015EF14();
  sub_1001F7688();
LABEL_24:
  sub_10015EF14();
  sub_1001F7688();
  v31 = sub_10015F070();
  v32(v31);
  if ((v3 * v20) >> 64 == (v3 * v20) >> 63)
  {
    sub_100037B00();
    return;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_10015D25C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = static TimeAmount.+ infix(_:_:)(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015D294@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = static TimeAmount.- infix(_:_:)(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t NIODeadline.uptimeNanoseconds.getter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

unint64_t static NIODeadline.uptimeNanoseconds(_:)(unint64_t result)
{
  if (result >= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

Swift::Int _s25ASOctaneSupportXPCService10TimeAmountV9hashValueSivg_0(Swift::UInt64 a1)
{
  sub_1001F8068();
  sub_1001F80C8(a1);
  return sub_1001F80D8();
}

Swift::Int sub_10015D35C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

BOOL static NIODeadline.> infix(_:_:)(_BOOL8 result, unint64_t a2)
{
  if (((a2 | result) & 0x8000000000000000) == 0)
  {
    return a2 < result;
  }

  __break(1u);
  return result;
}

uint64_t NIODeadline.description.getter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10013AEAC();
    return sub_1001F76B8();
  }

  return result;
}

uint64_t static NIODeadline.- infix(_:_:)(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      if (result - a2 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      result -= a2;
      return result;
    }

    goto LABEL_13;
  }

  if (result < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 && result < a2)
  {
    return HTTPHeaders.startIndex.getter();
  }

  result -= a2;
  if (result < 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10015D488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = __chkstk_darwin(a1, a2);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  EventLoopPromise.succeed(_:)(v10, a1, a5);
  return (*(v7 + 8))(v10, a5);
}

uint64_t sub_10015D58C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t EventLoop.flatScheduleTask<A>(deadline:file:line:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  EmbeddedChannel.WrongTypeError.actual.getter(a8, a9);
  sub_10015F084();
  v19 = EventLoop.makePromise<A>(of:file:line:)(v14, v15, v16, v17, a5, v18, a9, a10);
  sub_1000A3FC4();
  v20 = swift_allocObject();
  v20[2] = a8;
  v20[3] = a9;
  v20[4] = a10;
  v20[5] = a6;
  v20[6] = a7;
  v21 = *(a10 + 40);
  v22 = type metadata accessor for EventLoopFuture();

  v23 = v21(a1, sub_10015EED0, v20, v22, a8, a10);

  sub_1000A41C8();
  v24 = swift_allocObject();
  v24[2] = a8;
  v24[3] = a9;
  v24[4] = a10;

  sub_100158C20();
  EventLoopFuture.flatMap<A>(file:line:_:)();

  EventLoopFuture.cascade(to:)(v25);

  sub_100047958();
  v26 = swift_allocObject();
  v26[2] = a8;
  v26[3] = a9;
  v26[4] = a10;
  v26[5] = v23;

  return Scheduled.init(promise:cancellationTask:)(v19, sub_10015EEF0, v26);
}

uint64_t EventLoop.flatScheduleTask<A>(in:file:line:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = EmbeddedChannel.WrongTypeError.actual.getter(a8, a9);
  v19 = EventLoop.makePromise<A>(of:file:line:)(v17, a2, a3, a4, a5, v18, a9, a10);
  sub_1000A3FC4();
  v20 = swift_allocObject();
  v20[2] = a8;
  v20[3] = a9;
  v20[4] = a10;
  v20[5] = a6;
  v20[6] = a7;
  v21 = *(a10 + 48);
  v22 = type metadata accessor for EventLoopFuture();

  v23 = v21(a1, sub_10015EED0, v20, v22, a8, a10);

  sub_1000A41C8();
  v24 = swift_allocObject();
  v24[2] = a8;
  v24[3] = a9;
  v24[4] = a10;

  sub_100158C20();
  EventLoopFuture.flatMap<A>(file:line:_:)();

  EventLoopFuture.cascade(to:)(v25);

  sub_100047958();
  v26 = swift_allocObject();
  v26[2] = a8;
  v26[3] = a9;
  v26[4] = a10;
  v26[5] = v23;

  return Scheduled.init(promise:cancellationTask:)(v19, sub_10015E898, v26);
}

void sub_10015D998()
{
  type metadata accessor for EventLoopFuture();

  Scheduled.cancel()();
}

void EventLoop.scheduleRepeatedTask(initialDelay:delay:notifying:_:)()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1000A3FC4();
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = v2;
  v15[4] = v8;
  v15[5] = v6;
  v15[6] = v0;

  swift_unknownObjectRetain();
  EventLoop.scheduleRepeatedAsyncTask(initialDelay:delay:notifying:_:)(v14, v12, v10, sub_10015E8E0, v15, v16, v2);

  sub_100037B00();
}

void EventLoop.scheduleRepeatedAsyncTask(initialDelay:delay:notifying:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for RepeatedTask();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = v7;
  v13[4] = a7;
  v13[5] = a3;
  v13[7] = a4;
  v13[8] = a5;
  v13[6] = 0;

  swift_unknownObjectRetain();
  sub_10015C0D8();
  sub_100037A50();
}

uint64_t sub_10015DBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    Lock.lock()();
    swift_beginAccess();
    *(a3 + 16) = a1;

    swift_errorRetain();
    Lock.unlock()();
  }

  return sub_1001F6808();
}

unint64_t EventLoopError.description.getter(char a1)
{
  result = 0xD000000000000049;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000030;
      break;
    case 2:
      result = 0xD00000000000002ALL;
      break;
    case 3:
      result = 0xD000000000000031;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10015DCF8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10015DD30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015DD48()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015DD8C()
{

  sub_1000A3FC4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015DE7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  v65 = *a1;
  v66 = v1;
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  v5 = HIBYTE(v4);
  v6 = *(a1 + 64);
  v8 = *a1;
  v7 = *(a1 + 8);
  v68 = *(a1 + 48);
  v67 = v2;
  result = sub_10015EE44(a1, v62);
  v10 = 0;
  v51 = v6;
  v52 = v6 & 0xFF00000000000000;
  v49 = v8 + 32;
  v11 = &_swiftEmptyArrayStorage[4];
  v45 = v3;
  v46 = v8;
  v12 = v3;
  v42 = HIWORD(v4);
  v43 = v4;
  v13 = v4;
  v14 = HIWORD(v4);
  v50 = v5;
  v15 = _swiftEmptyArrayStorage;
  v44 = v5;
  v47 = v6;
  v48 = v7;
  while (1)
  {
    if (v52 == 0x200000000000000)
    {
      v10 = 0;
      LOBYTE(v14) = v42;
      v13 = v43;
      v37 = v44;
      v15 = _swiftEmptyArrayStorage;
      v38 = v45;
      goto LABEL_36;
    }

    v16 = *(v8 + 16);
    if (v5)
    {
      if ((v6 & 0x100000000000000) != 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(v8 + 16);
      }

      v18 = v51 - v12 + v17;
    }

    else if ((v6 & 0x100000000000000) != 0)
    {
      v19 = v12 - v51 + v16;
      v20 = __OFSUB__(0, v19);
      v18 = -v19;
      if (v20)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v18 = v51 - v12;
    }

    if (v18 < 0)
    {
      v38 = v12;
      v37 = v50;
LABEL_36:
      *v62 = v65;
      *&v62[16] = v66;
      *&v62[32] = v67;
      *&v62[48] = v68;
      LODWORD(v63) = v38;
      WORD2(v63) = v13;
      BYTE6(v63) = v14;
      HIBYTE(v63) = v37;
      v64 = v6;
      result = sub_10015EDF0(v62);
      v39 = v15[3];
      if (v39 >= 2)
      {
        v40 = v39 >> 1;
        v20 = __OFSUB__(v40, v10);
        v41 = v40 - v10;
        if (v20)
        {
          goto LABEL_45;
        }

        v15[2] = v41;
      }

      return v15;
    }

    if (v16 <= v12)
    {
      break;
    }

    v21 = (v49 + (v12 << 6));
    v22 = *v21;
    v23 = *(v21 + 3);
    v58 = *(v21 + 1);
    v59 = v23;
    v60 = *(v21 + 5);
    v61 = v21[7];
    if (!v22)
    {
      goto LABEL_46;
    }

    v24 = *(v21 + 3);
    v54 = *(v21 + 1);
    v55 = v24;
    v56 = *(v21 + 5);
    v57 = v21[7];
    v25 = (v16 + 0x1FFFFFFFFLL) & (v12 + 1);
    LOBYTE(v5) = v25 >= v7;
    if (HIDWORD(v25))
    {
      goto LABEL_41;
    }

    v50 = v25 >= v7;
    if (v10)
    {
      *v62 = v22;
      *&v62[8] = v58;
      *&v62[24] = v59;
      *&v62[40] = v60;
      v63 = v61;
      result = sub_1000370F8(v62, v53);
      v26 = v15;
    }

    else
    {
      v27 = v15[3];
      if (((v27 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_43;
      }

      v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
      if (v28 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28;
      }

      sub_1000183C4(&qword_1002B7F60);
      v26 = swift_allocObject();
      v30 = (j__malloc_size(v26) - 32) / 64;
      v26[2] = v29;
      v26[3] = 2 * v30;
      v31 = v15[3] >> 1;
      v11 = &v26[8 * v31 + 4];
      v10 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v31;
      if (v15[2])
      {
        v32 = v26 < v15 || v26 + 4 >= &v15[8 * v31 + 4];
        v33 = v31 << 6;
        if (!v32 && v26 == v15)
        {
          *v62 = v22;
          *&v62[8] = v58;
          *&v62[24] = v59;
          *&v62[40] = v60;
          v63 = v61;
          sub_1000370F8(v62, v53);
        }

        else
        {
          *v62 = v22;
          *&v62[8] = v58;
          *&v62[24] = v59;
          *&v62[40] = v60;
          v63 = v61;
          sub_1000370F8(v62, v53);
          memmove(v26 + 4, v15 + 4, v33);
        }

        v15[2] = 0;

        v8 = v46;
        v6 = v47;
      }

      else
      {
        *v62 = v22;
        *&v62[8] = v58;
        *&v62[24] = v59;
        *&v62[40] = v60;
        v63 = v61;
        sub_1000370F8(v62, v53);
      }

      v7 = v48;
    }

    v20 = __OFSUB__(v10--, 1);
    if (v20)
    {
      goto LABEL_42;
    }

    v12 = v25;
    *v11 = v22;
    v34 = v54;
    v35 = v55;
    v36 = v56;
    v11[7] = v57;
    *(v11 + 5) = v36;
    *(v11 + 3) = v35;
    *(v11 + 1) = v34;
    v11 += 8;
    LOBYTE(v14) = -1;
    v13 = -1;
    v15 = v26;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_10015E27C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  for (i = &_swiftEmptyArrayStorage[4]; ; ++i)
  {
    if (v4 == a2)
    {

      v18 = v7[3];
      if (v18 >= 2)
      {
        v19 = v18 >> 1;
        v17 = __OFSUB__(v19, v6);
        v20 = v19 - v6;
        if (v17)
        {
          goto LABEL_31;
        }

        v7[2] = v20;
      }

      return v7;
    }

    if (a2 >= v4)
    {
      break;
    }

    if (__OFADD__(a2, 1))
    {
      goto LABEL_28;
    }

    v21 = *(a1 + 16 * a2 + 32);
    if (v6)
    {
      result = swift_unknownObjectRetain();
      v9 = v7;
    }

    else
    {
      v10 = v7[3];
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_30;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      sub_1000183C4(&qword_1002ADDB8);
      v9 = swift_allocObject();
      v13 = (j__malloc_size(v9) - 32) / 16;
      v9[2] = v12;
      v9[3] = 2 * v13;
      v14 = v9 + 4;
      v15 = v7[3] >> 1;
      i = &v9[2 * v15 + 4];
      v6 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;
      if (v7[2])
      {
        if (v9 != v7 || v14 >= &v7[2 * v15 + 4])
        {
          memmove(v14, v7 + 4, 16 * v15);
        }

        swift_unknownObjectRetain();
        v7[2] = 0;
      }

      else
      {
        swift_unknownObjectRetain();
      }
    }

    v17 = __OFSUB__(v6--, 1);
    if (v17)
    {
      goto LABEL_29;
    }

    *i = v21;
    ++a2;
    v7 = v9;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10015E434()
{
  sub_10015F050();

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  for (i = &_swiftEmptyArrayStorage[4]; ; ++i)
  {
    v4 = *(v0 + 16);
    if (!v4)
    {

      v28 = v2[3];
      if (v28 >= 2)
      {
        v29 = v28 >> 1;
        v22 = __OFSUB__(v29, v1);
        v30 = v29 - v1;
        if (v22)
        {
          goto LABEL_57;
        }

        v2[2] = v30;
      }

      return v2;
    }

    v6 = v0 + 32;
    v5 = *(v0 + 32);
    v7 = v4 - 1;
    if (v4 == 1 || (v8 = *(v6 + 8 * v7), v5 == v8))
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100112884(v0);
        sub_10015F050();
      }

      v12 = *(v0 + 16);
      if (!v12)
      {
        goto LABEL_49;
      }

      *(v0 + 16) = v12 - 1;
      sub_1001F7898();
      goto LABEL_19;
    }

    type metadata accessor for ScheduledTask();
    if (!static ScheduledTask.< infix(_:_:)(v5, v8))
    {
      v23 = sub_1001DBFDC(v7, v0);
      v24 = sub_1001DBFDC(0, v0);
      v25 = static ScheduledTask.< infix(_:_:)(v24, v23);

      if (v25)
      {
        goto LABEL_58;
      }

      v32 = v0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100112884(v0);
        sub_10015F050();
      }

      if (!*(v0 + 16))
      {
        goto LABEL_52;
      }

      *(v0 + 32) = v23;

      sub_1001F7898();

      v26 = v0;
      if (!*(v0 + 16))
      {
        goto LABEL_54;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_100112884(v0);
        v32 = v26;
      }

      v27 = *(v26 + 16);
      if (!v27)
      {
        goto LABEL_55;
      }

      sub_10015EFAC(v27);
LABEL_19:

      if (v1)
      {
        goto LABEL_33;
      }

LABEL_20:
      v13 = v2[3];
      if (((v13 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_50;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      sub_1000183C4(&unk_1002B3460);
      v16 = swift_allocObject();
      v17 = (j__malloc_size(v16) - 32) / 8;
      v16[2] = v15;
      v16[3] = (2 * v17) | 1;
      v18 = (v16 + 4);
      v19 = v2[3];
      v20 = v19 >> 1;
      if (v2[2])
      {
        if (v16 != v2 || v18 >= &v2[v20 + 4])
        {
          memmove(v16 + 4, v2 + 4, 8 * v20);
        }

        v2[2] = 0;
      }

      i = (v18 + 8 * v20);
      v1 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v2 = v16;
      goto LABEL_33;
    }

    v9 = *(v6 + 8 * v7);

    v32 = v0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100112884(v0);
      sub_10015F050();
    }

    if (!*(v0 + 16))
    {
      goto LABEL_51;
    }

    *(v0 + 32) = v9;

    sub_1001F7898();
    v10 = v0;
    if (!*(v0 + 16))
    {
      goto LABEL_53;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_100112884(v0);
      v32 = v10;
    }

    v11 = *(v10 + 16);
    if (!v11)
    {
      goto LABEL_56;
    }

    sub_10015EFAC(v11);

    sub_1001D6AC8(0);
    if (!v1)
    {
      goto LABEL_20;
    }

LABEL_33:
    v22 = __OFSUB__(v1--, 1);
    if (v22)
    {
      break;
    }

    *i = v5;
    v0 = v32;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = sub_1001F7AC8();
  __break(1u);
  return result;
}

unint64_t sub_10015E7DC()
{
  result = qword_1002B7DF8;
  if (!qword_1002B7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7DF8);
  }

  return result;
}

uint64_t sub_10015E830()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015E864@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10015E8A4()
{

  swift_unknownObjectRelease();
  sub_1000A3FC4();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_10015E918()
{
  result = qword_1002B7E00;
  if (!qword_1002B7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7E00);
  }

  return result;
}

unint64_t sub_10015E970()
{
  result = qword_1002B7E08;
  if (!qword_1002B7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7E08);
  }

  return result;
}

unint64_t sub_10015E9C8()
{
  result = qword_1002B7E10;
  if (!qword_1002B7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7E10);
  }

  return result;
}

unint64_t sub_10015EA20()
{
  result = qword_1002B7E18[0];
  if (!qword_1002B7E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002B7E18);
  }

  return result;
}

uint64_t sub_10015EA74()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10015EAEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10015EB3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventLoopError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10015EC68);
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

uint64_t sub_10015EC9C()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015ECF8()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015ED34@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))(*(v1 + 32));
  *a1 = result;
  return result;
}

uint64_t sub_10015EDAC()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015EF24()
{

  return sub_1001F6A78();
}

uint64_t sub_10015EF48()
{

  return sub_1001F7638();
}

uint64_t sub_10015EFAC@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1 - 1;

  return sub_1001F7898();
}

uint64_t sub_10015EFD0()
{

  return sub_1001F7E88();
}

uint64_t sub_10015EFF4()
{

  return sub_1001F6A78();
}

uint64_t sub_10015F018()
{

  return swift_getObjectType();
}

uint64_t sub_10015F0A4()
{

  return sub_1001F7F88();
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  Lock.init()();
  return v0;
}

uint64_t sub_10015F0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Lock.lock()();
  if (*(a2 + 89) > 1u)
  {
    sub_1000183C4(&qword_1002B34C0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1001FE9E0;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = 0xD00000000000008DLL;
    *(v7 + 40) = 0x8000000100229D30;
    sub_1001F8048();

    v6 = 0;
  }

  else
  {
    v5 = *(a2 + 72);

    v6 = sub_10015F2C4(v5, a2, a3);
  }

  Lock.unlock()();

  return v6 & 1;
}

uint64_t sub_10015F210(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  Lock.lock()();
  sub_100139D90(a2, a3, a4, a5, &v12);
  Lock.unlock()();

  if (v5)
  {
  }

  else
  {
    a1 = v12;
  }

  return a1 & 1;
}

uint64_t sub_10015F2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Lock.lock()();
  swift_beginAccess();
  sub_1000433F0(a3);
  swift_endAccess();
  swift_beginAccess();
  v5 = *(a2 + 32);
  if ((v5 & 1) == 0)
  {
    *(a2 + 32) = 1;
  }

  Lock.unlock()();

  return v5 ^ 1u;
}

uint64_t sub_10015F37C(uint64_t a1, uint64_t a2)
{
  Lock.lock()();
  v3 = *(a2 + 64);
  if (v3 == 1)
  {
    v4 = 1;
LABEL_5:
    Lock.unlock()();

    return v4;
  }

  if (v3 == 2)
  {
    v5 = sub_100106280(16);
    v6 = sub_1001CAFE4(0, 0, v5);
    v8 = *(a2 + 40);
    v7 = *(a2 + 48);
    v9 = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = v6;
    v10 = *(a2 + 64);
    *(a2 + 64) = 1;
    sub_100160308(v8, v7, v9, v10);
    v4 = 0;
    goto LABEL_5;
  }

  result = sub_1001F7AC8();
  __break(1u);
  return result;
}

unint64_t sub_10015F474()
{
  Lock.lock()();
  sub_1001F77B8(28);

  v1._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v1);

  v2._countAndFlagsBits = 32032;
  v2._object = 0xE200000000000000;
  sub_1001F6CA8(v2);
  Lock.unlock()();

  return 0xD000000000000018;
}

uint64_t (*sub_10015F558(uint64_t (*a1)(unsigned __int8 *a1), uint64_t a2, uint64_t a3, uint64_t a4))(unsigned __int8 *a1)
{
  Lock.lock()();
  sub_1001CD928(a2, a3, a4, &v10);
  Lock.unlock()();

  if (!v4)
  {
    a1 = v10;
  }

  return a1;
}

uint64_t sub_10015F600(uint64_t a1, uint64_t a2, void *a3)
{
  Lock.lock()();
  sub_1001CD358(a2, &v8);
  Lock.unlock()();
  if (v3)
  {
  }

  else
  {

    a1 = v8;
  }

  return a1;
}

void Lock.withLock<A>(_:)()
{
  sub_100160324();
  Lock.lock()();
  v0();
  Lock.unlock()();
}

void Lock.withLockVoid(_:)()
{
  sub_100160324();
  Lock.lock()();
  v0();
  Lock.unlock()();
}

uint64_t ConditionLock.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ConditionLock.init(value:)(a1);
  return v2;
}

uint64_t ConditionLock.unlock(withValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  ConditionLock.unlock()();
  sub_10002E27C();
  result = pthread_cond_broadcast(*(v1 + *(v5 + 112)));
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t ConditionLock.lock(whenValue:)()
{
  v1 = v0;
  sub_10012F33C();
  v20[1] = v3;
  v20[2] = v2;
  v5 = *(v4 + 80);
  sub_100160338();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = v20 - v10;
  ConditionLock.lock()();
  sub_10012F33C();
  v13 = *(v12 + 96);
  v15 = *(v14 + 112);
  v16 = *(v14 + 104);
  swift_beginAccess();
  v17 = *(v7 + 16);
  while (1)
  {
    v17(v11, v1 + v13, v5);
    v18 = sub_10016034C();
    result = (*(v7 + 8))(v11, v5);
    if (v18)
    {
      break;
    }

    result = pthread_cond_wait(*(v1 + v15), *(*(v1 + v16) + 16));
    if (result)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t Lock.init()()
{
  *(v0 + 16) = swift_slowAlloc();
  v2.__sig = 0;
  *v2.__opaque = 0;
  pthread_mutexattr_init(&v2);
  pthread_mutexattr_settype(&v2, 1);
  if (pthread_mutex_init(*(v0 + 16), &v2))
  {
    __break(1u);
  }

  return v0;
}

uint64_t Lock.deinit()
{
  result = pthread_mutex_destroy(*(v0 + 16));
  if (result)
  {
    __break(1u);
  }

  else
  {

    return v0;
  }

  return result;
}

uint64_t Lock.__deallocating_deinit()
{
  Lock.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10015FB60(uint64_t (*a1)(void))
{
  result = a1(*(v1 + 16));
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t ConditionLock.init(value:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 112);
  *&v2[v5] = swift_slowAlloc();
  v6 = *(v4 + 80);
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[*(*v2 + 96)], a1, v6);
  type metadata accessor for Lock();
  v8 = swift_allocObject();
  Lock.init()();
  *&v2[*(*v2 + 104)] = v8;
  LODWORD(v8) = pthread_cond_init(*&v2[*(*v2 + 112)], 0);
  result = (*(v7 + 8))(a1, v6);
  if (!v8)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t ConditionLock.deinit()
{
  sub_10012F33C();
  v2 = v1;
  result = pthread_cond_destroy(*(v0 + *(v3 + 112)));
  if (result)
  {
    __break(1u);
  }

  else
  {

    sub_10002E27C();
    (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v5 + 96));
    sub_10002E27C();

    return v0;
  }

  return result;
}

uint64_t ConditionLock.__deallocating_deinit()
{
  ConditionLock.deinit();

  return swift_deallocClassInstance();
}

void ConditionLock.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  ConditionLock.lock()();
  sub_10002E27C();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v5]);
  ConditionLock.unlock()();
}

uint64_t ConditionLock.lock(whenValue:timeoutSeconds:)(uint64_t a1, double a2)
{
  v28[2] = a1;
  sub_10012F33C();
  v28[1] = v4;
  v6 = *(v5 + 80);
  sub_100160338();
  v8 = v7;
  v11 = __chkstk_darwin(v9, v10);
  v13 = v28 - v12;
  if (v11 < 0.0)
  {
    __break(1u);
    goto LABEL_14;
  }

  ConditionLock.lock()();
  v14 = a2 * 1000000000.0;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33.tv_sec = 0;
  v33.tv_usec = 0;
  gettimeofday(&v33, 0);
  v15 = 1000 * v33.tv_usec;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (__OFADD__(v33.tv_sec, v17 / 1000000000))
  {
    goto LABEL_18;
  }

  v32.tv_sec = v33.tv_sec + v17 / 1000000000;
  v32.tv_nsec = v17 % 1000000000;
  v18 = *v2;
  v19 = *(*v2 + 96);
  v28[0] = *(*v2 + 112);
  v20 = *(v18 + 104);
  swift_beginAccess();
  v21 = v8 + 16;
  v22 = *(v8 + 16);
  v23 = (v21 - 8);
  do
  {
    v22(v13, &v2[v19], v6);
    v24 = sub_10016034C();
    (*v23)(v13, v6);
    if (v24)
    {
      return v24 & 1;
    }

    v25 = pthread_cond_timedwait(*&v2[v28[0]], *(*&v2[v20] + 16), &v32);
  }

  while (!v25);
  if (v25 == 60)
  {
    ConditionLock.unlock()();
    return v24 & 1;
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  v27 = v25;
  sub_1001F77B8(51);
  v34._countAndFlagsBits = 0x6520746867756163;
  v34._object = 0xED000020726F7272;
  sub_1001F6CA8(v34);
  v29 = v27;
  v35._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v35);

  v36._object = 0x8000000100229C60;
  v36._countAndFlagsBits = 0xD000000000000024;
  sub_1001F6CA8(v36);
  result = sub_1001F7AC8();
  __break(1u);
  return result;
}

uint64_t sub_100160240()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100160308(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
  }

  return result;
}

uint64_t sub_10016034C()
{

  return sub_1001F6B28();
}

uint64_t sub_10016036C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a2;
  v47 = a1;
  v53 = a7;
  v11 = sub_1001F6288();
  v50 = *(v11 - 8);
  v13 = __chkstk_darwin(v11, v12);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v18 = &v46 - v17;
  __chkstk_darwin(v16, v19);
  v21 = &v46 - v20;
  v52 = type metadata accessor for StaticResourceRoute();
  __chkstk_darwin(v52, v22);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OctaneConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v48 = a5;
  v27 = a5;
  v28 = a6;
  v29 = sub_100160F8C(a3, a4, v27, a6, v26);

  if (v29)
  {
    v30 = v51;

    sub_1001F6238();

    v31 = v50;
    (*(v50 + 32))(v21, v18, v11);
    v32 = sub_1001F62C8();
    sub_10003A380(v32, v39);
    *v24 = v47;
    *(v24 + 1) = v30;
    v40 = v52;
    (*(v31 + 16))(&v24[*(v52 + 20)], v21, v11);
    v41 = sub_1000B756C(v48, v28);
    (*(v31 + 8))(v21, v11);
    if (v41 == 9)
    {
      v42 = 6;
    }

    else
    {
      v42 = v41;
    }

    v24[*(v40 + 24)] = v42;
    v43 = v53;
    sub_100161004(v24, v53);
    v44 = 0;
  }

  else
  {

    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v33 = sub_1001F6688();
    sub_100019C94(v33, qword_1002E6180);

    v34 = sub_1001F6668();
    v35 = sub_1001F7298();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54 = v37;
      *v36 = 136315138;
      v38 = sub_1000E4544(a3, a4, &v54);

      *(v36 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to initialize static resource route: no bundle URL for name %s", v36, 0xCu);
      sub_100019CCC(v37);
      sub_10003A72C();
      sub_10003A72C();
    }

    else
    {
    }

    v44 = 1;
    v40 = v52;
    v43 = v53;
  }

  return sub_100018460(v43, v44, 1, v40);
}

uint64_t type metadata accessor for StaticResourceRoute()
{
  result = qword_1002B80E0;
  if (!qword_1002B80E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1001609AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for StaticResourceRoute();
  __chkstk_darwin(v6, v7);
  __chkstk_darwin(v8, v9);
  __chkstk_darwin(v10, v11);
  v13 = &v37 - v12;
  v14 = sub_1001F62C8();
  v16 = v15;
  v38 = v14;
  if (qword_1002AC510 != -1)
  {
    sub_10001B230();
  }

  v17 = sub_1001F6688();
  sub_100019C94(v17, qword_1002E6180);
  sub_10016121C(v2, v13);
  sub_1000593F4(a1, v41);
  v18 = sub_1001F6668();
  v19 = sub_1001F7288();
  sub_1000402B8(a1);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    LODWORD(v39) = v19;
    v21 = v20;
    v40.n128_u64[0] = swift_slowAlloc();
    *&v41[0] = v40.n128_u64[0];
    *v21 = 136315394;
    LOBYTE(v45) = v13[*(v6 + 24)];
    v22 = sub_1001F6BA8();
    v24 = v23;
    sub_100161280(v13);
    v25 = sub_1000E4544(v22, v24, v41);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = *(a1 + 32);
    v27 = *(v26 + 32);
    v28 = *(v26 + 40);

    v29 = sub_1000E4544(v27, v28, v41);

    *(v21 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v18, v39, "will serve %s at %s", v21, 0x16u);
    swift_arrayDestroy();
    sub_10003A72C();
    sub_10003A72C();
  }

  else
  {

    sub_100161280(v13);
  }

  v30 = sub_1000B7990(*(v3 + *(v6 + 24)));
  v32 = v31;
  v33 = v38;
  sub_100040C70(v38, v16);
  sub_1000B77D0(v33, v16, v30, v32, v41);
  v39 = v41[1];
  v40 = v41[0];
  v34 = v42 | ((v43 | (v44 << 16)) << 32);
  sub_10003A380(v33, v16);
  type metadata accessor for HTTPResponseHead._Storage();
  v35 = swift_allocObject();
  *(v35 + 32) = 3;
  *(v35 + 40) = 65537;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *a2 = v35;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = 2;
  result = v40;
  *(a2 + 40) = v39;
  *(a2 + 24) = result;
  *(a2 + 62) = BYTE6(v34);
  *(a2 + 60) = WORD2(v34);
  *(a2 + 56) = v34;
  return result;
}

uint64_t NIOConnectionError.host.getter()
{
  v1 = *v0;

  return v1;
}

double sub_100160F44@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001609AC(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  a2[2] = v6[0];
  result = *(v6 + 15);
  *(a2 + 47) = *(v6 + 15);
  return result;
}

id sub_100160F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1001F6B48();
  v7 = sub_1001F6B48();
  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_100161004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticResourceRoute();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016107C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F6288();
    v9 = a1 + *(a3 + 20);

    return sub_10001C990(v9, a2, v8);
  }
}

uint64_t sub_100161118(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F6288();
    v8 = v5 + *(a4 + 20);

    return sub_100018460(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100161198()
{
  result = sub_1001F6288();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10016121C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticResourceRoute();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100161280(uint64_t a1)
{
  v2 = type metadata accessor for StaticResourceRoute();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SocketOptionProvider.setSoLinger(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 24);
  type metadata accessor for linger(0);
  return v5(0xFFFFLL, 128, &v8, v6, a2, a3);
}

uint64_t SocketOptionProvider.setIPMulticastIF(_:)(int a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 24);
  type metadata accessor for in_addr(0);
  return v5(0, 9, &v8, v6, a2, a3);
}

uint64_t sub_100161610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(a2 + 40);
  v9 = a3(0);

  return v11(a4, a5, v9, a1, a2);
}

uint64_t sub_1001616EC(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 1701147238;
      break;
    case 2:
      result = 0x756F597341796170;
      break;
    case 3:
      result = 0x6F72467055796170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100161778(char a1)
{
  if (!a1)
  {
    return 7824750;
  }

  if (a1 == 1)
  {
    return 0x676E697473697865;
  }

  return 0x64657269707865;
}

uint64_t sub_1001617C8()
{
  sub_100164DFC();
  v2._rawValue = &off_1002797F8;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_1000DBF48();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100161808()
{
  sub_100164DFC();
  v2._rawValue = &off_10027C858;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_1000DBF48();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10016186C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100161808();
  *a1 = result;
  return result;
}

uint64_t sub_10016189C()
{
  v1 = sub_100056690();
  result = sub_100161778(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100161998@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001617C8();
  *a1 = result;
  return result;
}

uint64_t sub_1001619C8()
{
  v1 = sub_100056690();
  result = sub_1001616EC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100161AA0()
{
  sub_1000183C4(&qword_1002AE9F0);
  sub_10001E844();
  __chkstk_darwin(v1, v2);
  v4 = &v8 - v3;
  if (!*(v0 + 40))
  {
    return 0;
  }

  v5 = sub_1001F65B8();
  sub_100018460(v4, 1, 1, v5);

  v6 = sub_1001F7448();

  sub_1001643F0(v4);
  return v6;
}

void sub_100161BA8()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 64);

    sub_1001EB808(v2, v1);
  }
}

uint64_t sub_100161BF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265746E69 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5079616C70736964 && a2 == 0xEC00000065636972;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x664F7265626D756ELL && a2 == 0xEF73646F69726550;
      if (v7 || (sub_1001F7EA8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4D746E656D796170 && a2 == 0xEB0000000065646FLL;
        if (v8 || (sub_1001F7EA8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x8000000100229E30 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1001F7EA8();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_100161DB8(char a1)
{
  result = 0x6C616E7265746E69;
  switch(a1)
  {
    case 1:
      result = 0x5079616C70736964;
      break;
    case 2:
      result = 0x664F7265626D756ELL;
      break;
    case 3:
      result = 0x4D746E656D796170;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100161E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100161BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100161EBC@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOHTTPObjectAggregatorError.unexpectedMessageEnd.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100161EE4(uint64_t a1)
{
  v2 = sub_10016412C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100161F20(uint64_t a1)
{
  v2 = sub_10016412C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100161F5C()
{

  return v0;
}

uint64_t sub_100161FB0(void *a1)
{
  v3 = v1;
  sub_1000183C4(&qword_1002B8AD0);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v5, v6);
  sub_10001AE68(a1, a1[3]);
  sub_10016412C();
  sub_1001F8198();
  sub_100024A50();
  sub_1001F7D88();
  if (v2)
  {
    v7 = sub_100164DB8();
    return v8(v7);
  }

  else
  {
    v10 = *(v3 + 32);

    sub_100024A50();
    sub_1001F7D18();
    if (!v10)
    {

      sub_100024A50();
      sub_1001F7D48();
      sub_10016439C();
      sub_1001F7DC8();

      sub_100024A50();
      sub_1001F7D18();
    }

    v11 = sub_100164DB8();
    v12(v11);
  }
}

uint64_t sub_1001621CC()
{
  sub_100164CD0();
  swift_allocObject();
  v1 = sub_100164CC0();
  sub_10016220C(v1, v2, v3, v4, v5, v6, v7, v8, v10, *v11, v11[4]);
  return v0;
}

void sub_10016220C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  sub_10001E850();
  v13 = v11;
  v15 = v14;
  sub_1000183C4(&qword_1002B8A58);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v16, v17);
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  sub_10001AE68(v15, v15[3]);
  sub_10016412C();
  sub_100164E08();
  if (v12)
  {

    _s8DiscountCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100082DAC();
    *(v11 + 16) = sub_1001F7C78();
    *(v11 + 24) = v18;
    sub_100082DAC();
    *(v11 + 32) = sub_1001F7C08();
    *(v11 + 40) = v19;

    sub_100082DAC();
    *(v11 + 48) = sub_1001F7C38();
    *(v11 + 56) = v20 & 1;
    sub_100164180();
    sub_1001F7CB8();
    *(v11 + 57) = a11;
    sub_100082DAC();
    v21 = sub_1001F7C08();
    v23 = v22;
    v24 = sub_1000263B8();
    v25(v24);
    *(v13 + 64) = v21;
    *(v13 + 72) = v23;
  }

  sub_100019CCC(v15);
  sub_10001E868();
}

uint64_t sub_100162474@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 272))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001624FC()
{
  sub_100164CD0();
  swift_allocObject();
  v1 = sub_100164CC0();
  sub_10016253C(v1);
  return v0;
}

uint64_t sub_10016253C(uint64_t a1)
{
  sub_100026064(a1, &v12);
  sub_10016220C(&v12, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13);
  sub_100019CCC(a1);
  return v1;
}

uint64_t sub_100162590()
{
  sub_100161F5C();

  return swift_deallocClassInstance();
}

uint64_t sub_1001625E8()
{
  sub_100164CD0();
  swift_allocObject();
  sub_100164CC0();
  sub_100162628();
  return v0;
}

void sub_100162628()
{
  sub_10001E850();
  v3 = v2;
  sub_1000183C4(&qword_1002B8A48);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v4, v5);
  sub_10001AE68(v3, v3[3]);
  sub_1001640D8();
  sub_100164E08();
  if (v1)
  {
    sub_100019CCC(v3);
    _s17ReferencableOfferCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100082DAC();
    *(v0 + 80) = sub_1001F7C78();
    *(v0 + 88) = v6;
    sub_100026064(v3, &v17);
    sub_10016220C(&v17, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18);
    v14 = sub_1000263B8();
    v15(v14);
    sub_100019CCC(v3);
  }

  sub_10001E868();
}

void sub_1001627B4()
{
  sub_10001E850();
  sub_100164DA8();
  sub_1000183C4(&qword_1002B8AC8);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v1, v2);
  sub_100164D2C();
  sub_1001640D8();
  sub_100164D0C();
  v3 = *(v0 + 80);

  sub_100164D50();
  if (v3)
  {
    v4 = sub_100164CB0();
    v5(v4);
  }

  else
  {

    v6 = sub_100164D98();
    sub_100161FB0(v6);
    v7 = sub_100164CB0();
    v8(v7);
  }

  sub_100164E5C();
  sub_10001E868();
}

BOOL sub_1001628C8()
{
  sub_100164DFC();
  v2._rawValue = &off_10027C8C0;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_1000DBF48();
  return v1 != 0;
}

BOOL sub_100162934@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1001628C8();
  *a1 = result;
  return result;
}

uint64_t sub_100162968@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100162904();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_100162994@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1001628C8();
  *a1 = result;
  return result;
}

uint64_t sub_1001629C0(uint64_t a1)
{
  v2 = sub_1001640D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001629FC(uint64_t a1)
{
  v2 = sub_1001640D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100162A40()
{
  sub_100161F5C();

  return swift_deallocClassInstance();
}

uint64_t sub_100162AA0()
{
  sub_100164CD0();
  swift_allocObject();
  sub_100164CC0();
  sub_100162AE0();
  return v0;
}

void sub_100162AE0()
{
  sub_10001E850();
  sub_100164CF4();
  sub_1000183C4(&qword_1002B8AC0);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  sub_100164DD8();
  sub_100164348();
  sub_100164D74();
  if (v1)
  {
    sub_100019CCC(v2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = 0;
    sub_100164CE0();
    *(v0 + 96) = sub_1001F7C78();
    *(v0 + 104) = v5;
    sub_100026064(v2, &v8);
    sub_100164E2C();
    v6 = sub_100164CA0();
    v7(v6);
    sub_100019CCC(v2);
  }

  sub_100164DC8();
  sub_10001E868();
}

void sub_100162C50()
{
  sub_10001E850();
  sub_100164DA8();
  sub_1000183C4(&qword_1002B8AB0);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v1, v2);
  sub_100164D2C();
  sub_100164348();
  sub_100164D0C();
  v3 = *(v0 + 96);

  sub_100164D50();
  if (v3)
  {
    v4 = sub_100164CB0();
    v5(v4);
  }

  else
  {

    sub_100164D98();
    sub_1001627B4();
    v6 = sub_100164CB0();
    v7(v6);
  }

  sub_100164E5C();
  sub_10001E868();
}

uint64_t sub_100162D6C(char a1)
{
  if (a1)
  {
    return 0x636E657265666572;
  }

  else
  {
    return 0x4449726566666FLL;
  }
}

uint64_t sub_100162DD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001638C0();
  *a1 = result;
  return result;
}

uint64_t sub_100162E0C()
{
  v1 = sub_100056690();
  result = sub_100162D6C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100162E3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001638C0();
  *a1 = result;
  return result;
}

uint64_t sub_100162E6C(uint64_t a1)
{
  v2 = sub_100164348();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100162EA8(uint64_t a1)
{
  v2 = sub_100164348();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100162EF0()
{
  sub_100163A74();

  return swift_deallocClassInstance();
}

uint64_t sub_100162F48()
{
  sub_100164CD0();
  swift_allocObject();
  sub_100164CC0();
  sub_100162F88();
  return v0;
}

void sub_100162F88()
{
  sub_10001E850();
  sub_100164CF4();
  sub_1000183C4(&qword_1002B8A98);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  sub_100164DD8();
  sub_1001641D4();
  sub_100164D74();
  if (v1)
  {
    sub_100019CCC(v2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1000183C4(&qword_1002B8A80);
    sub_10016427C(&qword_1002B8AA0, sub_1001642F4);
    sub_1001F7CB8();
    *(v0 + 96) = v7;
    LOBYTE(v7) = 1;
    sub_100164CE0();
    *(v0 + 104) = sub_1001F7C88() & 1;
    sub_100026064(v2, &v7);
    sub_100164E2C();
    v5 = sub_100164CA0();
    v6(v5);
    sub_100019CCC(v2);
  }

  sub_100164DC8();
  sub_10001E868();
}

void sub_1001631B4()
{
  sub_10001E850();
  sub_100164DA8();
  sub_1000183C4(&qword_1002B8A70);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v1, v2);
  sub_100164D2C();
  sub_1001641D4();
  sub_100164D0C();
  sub_1000183C4(&qword_1002B8A80);
  sub_10016427C(&qword_1002B8A88, sub_100164228);
  sub_1001F7DC8();
  if (!v0)
  {
    sub_1001F7D98();
    sub_100164D98();
    sub_1001627B4();
  }

  v3 = sub_100164CB0();
  v4(v3);
  sub_100164E5C();
  sub_10001E868();
}

uint64_t sub_10016333C()
{
  sub_100164DFC();
  v2._rawValue = &off_10027C948;
  v5._object = v0;
  sub_1001F7BD8(v2, v5);
  sub_1000DBF48();
  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100163384(char a1)
{
  if (a1)
  {
    return 0x616B636174537369;
  }

  else
  {
    return 0x6C69626967696C65;
  }
}

uint64_t sub_1001633F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10016333C();
  *a1 = result;
  return result;
}

uint64_t sub_100163420()
{
  v1 = sub_100056690();
  result = sub_100163384(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100163450@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10016333C();
  *a1 = result;
  return result;
}

uint64_t sub_100163478(uint64_t a1)
{
  v2 = sub_1001641D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001634B4(uint64_t a1)
{
  v2 = sub_1001641D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001634F8()
{
  sub_100161F5C();

  return v0;
}

uint64_t sub_100163524()
{
  sub_1001634F8();

  return swift_deallocClassInstance();
}

uint64_t sub_10016357C()
{
  sub_100164CD0();
  swift_allocObject();
  sub_100164CC0();
  sub_1001635BC();
  return v0;
}

void sub_1001635BC()
{
  sub_10001E850();
  sub_100164CF4();
  sub_1000183C4(&qword_1002B8A40);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  sub_100164DD8();
  sub_100164084();
  sub_100164D74();
  if (v1)
  {
    sub_100019CCC(v2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100164CE0();
    *(v0 + 96) = sub_1001F7C78();
    *(v0 + 104) = v5;
    v8 = 1;
    sub_100164CE0();
    *(v0 + 112) = sub_1001F7C88() & 1;
    sub_100026064(v2, &v8);
    sub_100164E2C();
    v6 = sub_100164CA0();
    v7(v6);
    sub_100019CCC(v2);
  }

  sub_100164DC8();
  sub_10001E868();
}

void sub_10016377C()
{
  sub_10001E850();
  sub_100164DA8();
  sub_1000183C4(&qword_1002B8A30);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v1, v2);
  sub_100164D2C();
  sub_100164084();
  sub_100164D0C();
  v3 = *(v0 + 96);

  sub_100164D50();
  if (v3)
  {
    v4 = sub_100164CB0();
    v5(v4);
  }

  else
  {

    sub_1001F7D98();
    sub_100164D98();
    sub_1001627B4();
    v6 = sub_100164CB0();
    v7(v6);
  }

  sub_100164E5C();
  sub_10001E868();
}

uint64_t sub_1001638C0()
{
  sub_100164DFC();
  v3._rawValue = v2;
  v6._object = v0;
  sub_1001F7BD8(v3, v6);
  sub_1000DBF48();
  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100163904(char a1)
{
  if (a1)
  {
    return 0x626967696C457369;
  }

  else
  {
    return 0x4449726566666FLL;
  }
}

uint64_t sub_100163964@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001638C0();
  *a1 = result;
  return result;
}

uint64_t sub_10016399C()
{
  v1 = sub_100056690();
  result = sub_100163904(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001639CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001638C0();
  *a1 = result;
  return result;
}

uint64_t sub_1001639FC(uint64_t a1)
{
  v2 = sub_100164084();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100163A38(uint64_t a1)
{
  v2 = sub_100164084();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163A74()
{
  sub_100161F5C();

  return v0;
}

uint64_t sub_100163AA0()
{
  sub_100163A74();

  return swift_deallocClassInstance();
}

_BYTE *sub_100163AF8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100163BC4);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100163BF8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100163CC4);
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

unint64_t sub_100163CFC()
{
  result = qword_1002B8A10;
  if (!qword_1002B8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A10);
  }

  return result;
}

unint64_t sub_100163D54()
{
  result = qword_1002B8A18;
  if (!qword_1002B8A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A18);
  }

  return result;
}

uint64_t sub_100163DA8()
{
  sub_100164E48();
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = *(v1 + 32) == *(v0 + 32) && v2 == v3;
    if (!v4 && (sub_1001F7EA8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if (*(v1 + 56))
  {
    if (!*(v0 + 56))
    {
      return 0;
    }
  }

  else
  {
    sub_100164E68();
    if (v5)
    {
      return 0;
    }
  }

  if ((sub_1000E9C84(*(v1 + 57)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 72);
  v7 = *(v0 + 72);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = *(v1 + 64) == *(v0 + 64) && v6 == v7;
  if (!v8 && (sub_1001F7EA8() & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v9 = *(v1 + 96) == *(v0 + 96) && *(v1 + 104) == *(v0 + 104);
  if (!v9 && (sub_1001F7EA8() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 80) == *(v0 + 80) && *(v1 + 88) == *(v0 + 88))
  {
    return 1;
  }

  return sub_1001F7EA8();
}

uint64_t sub_100163EE0()
{
  sub_100164E48();
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = *(v1 + 32) == *(v0 + 32) && v2 == v3;
    if (!v4 && (sub_1001F7EA8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((*(v1 + 56) & 1) == 0)
  {
    sub_100164E68();
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!*(v0 + 56))
  {
    return 0;
  }

LABEL_14:
  if ((sub_1000E9C84(*(v1 + 57)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 72);
  v7 = *(v0 + 72);
  result = (v6 | v7) == 0;
  if (v6 && v7)
  {
    if (*(v1 + 64) == *(v0 + 64) && v6 == v7)
    {
      return 1;
    }

    else
    {

      return sub_1001F7EA8();
    }
  }

  return result;
}

unint64_t sub_100163FDC()
{
  result = qword_1002B8A20;
  if (!qword_1002B8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A20);
  }

  return result;
}

unint64_t sub_100164030()
{
  result = qword_1002B8A28;
  if (!qword_1002B8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A28);
  }

  return result;
}

unint64_t sub_100164084()
{
  result = qword_1002B8A38;
  if (!qword_1002B8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A38);
  }

  return result;
}

unint64_t sub_1001640D8()
{
  result = qword_1002B8A50;
  if (!qword_1002B8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A50);
  }

  return result;
}

unint64_t sub_10016412C()
{
  result = qword_1002B8A60;
  if (!qword_1002B8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A60);
  }

  return result;
}

unint64_t sub_100164180()
{
  result = qword_1002B8A68;
  if (!qword_1002B8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A68);
  }

  return result;
}

unint64_t sub_1001641D4()
{
  result = qword_1002B8A78;
  if (!qword_1002B8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A78);
  }

  return result;
}

unint64_t sub_100164228()
{
  result = qword_1002B8A90;
  if (!qword_1002B8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A90);
  }

  return result;
}

uint64_t sub_10016427C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B8A80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001642F4()
{
  result = qword_1002B8AA8;
  if (!qword_1002B8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8AA8);
  }

  return result;
}

unint64_t sub_100164348()
{
  result = qword_1002B8AB8;
  if (!qword_1002B8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8AB8);
  }

  return result;
}

unint64_t sub_10016439C()
{
  result = qword_1002B8AD8;
  if (!qword_1002B8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8AD8);
  }

  return result;
}

uint64_t sub_1001643F0(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002AE9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *_s8DiscountC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x100164544);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s17ReferencableOfferC10CodingKeysOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100164618);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_100164650(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x10016471CLL);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100164758()
{
  result = qword_1002B8AE0;
  if (!qword_1002B8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8AE0);
  }

  return result;
}

unint64_t sub_1001647B0()
{
  result = qword_1002B8AE8;
  if (!qword_1002B8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8AE8);
  }

  return result;
}

unint64_t sub_100164808()
{
  result = qword_1002B8AF0;
  if (!qword_1002B8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8AF0);
  }

  return result;
}

unint64_t sub_100164860()
{
  result = qword_1002B8AF8;
  if (!qword_1002B8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8AF8);
  }

  return result;
}

unint64_t sub_1001648B8()
{
  result = qword_1002B8B00;
  if (!qword_1002B8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B00);
  }

  return result;
}

unint64_t sub_100164910()
{
  result = qword_1002B8B08;
  if (!qword_1002B8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B08);
  }

  return result;
}

unint64_t sub_100164968()
{
  result = qword_1002B8B10;
  if (!qword_1002B8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B10);
  }

  return result;
}

unint64_t sub_1001649C0()
{
  result = qword_1002B8B18;
  if (!qword_1002B8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B18);
  }

  return result;
}

unint64_t sub_100164A18()
{
  result = qword_1002B8B20;
  if (!qword_1002B8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B20);
  }

  return result;
}

unint64_t sub_100164A70()
{
  result = qword_1002B8B28;
  if (!qword_1002B8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B28);
  }

  return result;
}

unint64_t sub_100164AC8()
{
  result = qword_1002B8B30;
  if (!qword_1002B8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B30);
  }

  return result;
}

unint64_t sub_100164B20()
{
  result = qword_1002B8B38;
  if (!qword_1002B8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B38);
  }

  return result;
}

unint64_t sub_100164B78()
{
  result = qword_1002B8B40;
  if (!qword_1002B8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B40);
  }

  return result;
}

unint64_t sub_100164BD0()
{
  result = qword_1002B8B48;
  if (!qword_1002B8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B48);
  }

  return result;
}

unint64_t sub_100164C28()
{
  result = qword_1002B8B50;
  if (!qword_1002B8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B50);
  }

  return result;
}

uint64_t sub_100164D0C()
{

  return sub_1001F8198();
}

uint64_t sub_100164D50()
{

  return sub_1001F7D88();
}

uint64_t sub_100164D74()
{

  return sub_1001F8178();
}

uint64_t sub_100164E08()
{

  return sub_1001F8178();
}

void sub_100164E2C()
{

  sub_100162628();
}

uint64_t sub_100164E7C(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A2D8;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100164ED0(char a1)
{
  if (a1)
  {
    return 0x6C65636E6163;
  }

  else
  {
    return 7041889;
  }
}

uint64_t sub_100164F20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100164E7C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100164F50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100164ED0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_100164F7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1001F65B8();
  __chkstk_darwin(v4 - 8, v5);
  v6 = sub_1000183C4(&qword_1002B8C38);
  __chkstk_darwin(v6 - 8, v7);
  sub_1000402A0(v40);
  memcpy(v38, v40, sizeof(v38));
  v8 = *(a1 + 96);

  v9 = sub_1001EA8E8();
  v10 = sub_1001F10F8(0x6E6F69746361, 0xE600000000000000, v8);
  v12 = v11;

  if (v12 && (v13 = sub_100164E7C(v10, v12), v13 != 2) && (v14 = v13, sub_1001F10F8(6580596, 0xE300000000000000, v9), v15))
  {
    sub_1001F65A8();
    sub_1001656AC();
    sub_1001F6118();
    sub_1001F7628();
    v17 = v39[0];
    v18 = sub_1001F10F8(6580578, 0xE300000000000000, v9);
    v20 = v19;

    if (v20)
    {
      v21 = *(a1 + 48);

      sub_1000E32F8(v21, v32);
      sub_1000402B8(a1);
      memcpy(v33, v32, 0x139uLL);
      debugOnly(_:)(v33, v22, v23, v24, v25, v26);
      memcpy(v34, v38, 0x139uLL);
      sub_10004BDE8(v34, &qword_1002ADF78);
      memcpy(v38, v33, sizeof(v38));
      LOBYTE(v35[0]) = v14;
      v35[1] = v17;
      v35[2] = v18;
      v35[3] = v20;
      memcpy(&v35[4], v33, 0x139uLL);
      memcpy(v36, v35, 0x159uLL);
      debugOnly(_:)(v36, v27, v28, v29, v30, v31);
      LOBYTE(v37[0]) = v14;
      v37[1] = v17;
      v37[2] = v18;
      v37[3] = v20;
      memcpy(&v37[4], v38, 0x139uLL);
      sub_100165700(v35, v39);
      sub_100165738(v37);
      memcpy(v39, v36, 0x159uLL);
      return memcpy(a2, v39, 0x159uLL);
    }
  }

  else
  {
  }

  sub_1000402B8(a1);
  memcpy(v37, v38, 0x139uLL);
  sub_10004BDE8(v37, &qword_1002ADF78);
  sub_1001656A4(v39);
  return memcpy(a2, v39, 0x159uLL);
}

__n128 sub_1001652E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  sub_1000593F4(a1, __dst);
  sub_100164F7C(v3, __src);
  memcpy(__dst, __src, 0x159uLL);
  if (sub_1000DA438(__dst) == 1)
  {
    sub_1000B738C(0x7571657220646142, 0xEB00000000747365, 6, v33);
    sub_1001659DC();
    v5 = sub_100021728();
    v6 = v5;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    v7 = 21;
LABEL_8:
    sub_10002170C(v5, v7);
    goto LABEL_12;
  }

  v8 = __dst[0];
  sub_10001AE68((v2 + 88), *(v2 + 112));
  v9 = sub_10008E840();
  if (!v9)
  {
    sub_10004BDE8(__src, &qword_1002B8C30);
    sub_1000B738C(0xD000000000000014, 0x800000010022A020, 6, v33);
    sub_1001659DC();
    v5 = sub_100021728();
    v6 = v5;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    v7 = 25;
    goto LABEL_8;
  }

  v10 = v9;
  sub_100056A98(1, v23);
  v11 = v23[176];
  v12 = v25;
  v13 = v26;
  if (v8)
  {
    sub_10001AE68((v2 + 88), *(v2 + 112));
    if (sub_10008CBB0() != 4)
    {

      sub_10004BDE8(__src, &qword_1002B8C30);
      type metadata accessor for HTTPResponseHead._Storage();
      v6 = sub_100021728();
      v17 = 0u;
      *(v6 + 16) = 0u;
      sub_10002170C(v6, 49);
      memcpy(v33, v23, 0xB0uLL);
      sub_1001659B8();
      sub_100057E48(v33);
      v3 = 0;
      v14 = 0uLL;
      goto LABEL_12;
    }

    sub_10004BDE8(__src, &qword_1002B8C30);
    v32 = v12;
    sub_10004BDE8(&v32, &qword_1002AF480);
    v12 = 0;
    v13 = 1;
    v11 = 7;
  }

  else
  {
    sub_100165624(v10);
    sub_10004BDE8(__src, &qword_1002B8C30);
  }

  memcpy(v33, v23, 0xB0uLL);
  sub_1001659B8();
  sub_1001A7288(v33, v3, v27);
  v16 = v27[1];
  v17 = v27[0];
  v3 = v28 | ((v29 | (v30 << 16)) << 32);

  type metadata accessor for HTTPResponseHead._Storage();
  v6 = sub_100021728();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_10002170C(v6, 3);
  memcpy(v18, v23, 0xB0uLL);
  v18[176] = v11;
  *v19 = *v24;
  *&v19[15] = *&v24[15];
  v20 = v12;
  v21 = v13;
  sub_100057E48(v18);
  v14 = v16;
LABEL_12:
  *a2 = v6;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = 2;
  result = v17;
  *(a2 + 24) = v17;
  *(a2 + 40) = v14;
  *(a2 + 56) = v3;
  *(a2 + 62) = BYTE6(v3);
  *(a2 + 60) = WORD2(v3);
  return result;
}

uint64_t sub_100165624(void *a1)
{
  sub_1000C2320(0);
  sub_1000C23D8(4u);
  sub_10001AE68((v1 + 88), *(v1 + 112));
  return sub_10008EA08(a1, 1);
}

unint64_t sub_1001656AC()
{
  result = qword_1002B8C40;
  if (!qword_1002B8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8C40);
  }

  return result;
}

uint64_t sub_100165770(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 345))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1001657B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 344) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 345) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 345) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AskToBuyPermissionRequest.Action(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x100165928);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100165964()
{
  result = qword_1002B8C48;
  if (!qword_1002B8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8C48);
  }

  return result;
}

__n128 sub_1001659B8()
{
  LOBYTE(STACK[0x570]) = v3;
  result = *(v0 + 177);
  *&STACK[0x571] = result;
  STACK[0x580] = *(v0 + 192);
  STACK[0x588] = v1;
  LOBYTE(STACK[0x590]) = v2;
  return result;
}

uint64_t sub_1001659DC()
{

  return type metadata accessor for HTTPResponseHead._Storage();
}

uint64_t sub_100165A24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F6508();
    v9 = a1 + *(a3 + 40);

    return sub_10001C990(v9, a2, v8);
  }
}

uint64_t sub_100165AC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F6508();
    v8 = v5 + *(a4 + 40);

    return sub_100018460(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppTransaction()
{
  result = qword_1002B8CA8;
  if (!qword_1002B8CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100165B8C()
{
  result = sub_1001F6508();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100165C20(uint64_t a1)
{
  result = sub_100166940(&qword_1002B25A0, type metadata accessor for AppTransaction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100165C78(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027C9E8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100165CCC(char a1)
{
  result = 0x6449656C646E7562;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x5474706965636572;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x4474736575716572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100165E58(void *a1)
{
  v3 = sub_1000183C4(&qword_1002B8D08);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  v9 = &v13[-v8];
  sub_10001AE68(a1, a1[3]);
  sub_1001668EC();
  sub_1001F8198();
  v13[31] = 0;
  sub_100166C6C();
  if (!v1)
  {
    v13[30] = 1;
    sub_100166C6C();
    v13[29] = 2;
    sub_100166C6C();
    type metadata accessor for AppTransaction();
    v13[28] = 3;
    sub_100166C6C();
    v13[27] = 4;
    sub_100166C6C();
    v13[26] = 5;
    sub_100166C6C();
    v13[25] = 6;
    sub_100166C6C();
    v13[24] = 7;
    sub_100166C6C();
    v13[15] = 8;
    sub_1001F6508();
    sub_100166C88();
    sub_100166940(v10, v11);
    sub_100166CA0();
    v13[14] = 9;
    sub_100166CA0();
    v13[13] = 10;
    sub_100166CA0();
  }

  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_1001660F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_1001F6508();
  sub_10001A278();
  v61 = v4;
  __chkstk_darwin(v5, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v53 - v11;
  __chkstk_darwin(v13, v14);
  v16 = &v53 - v15;
  sub_1000183C4(&qword_1002B8D18);
  sub_10001A278();
  v55 = v18;
  v56 = v17;
  __chkstk_darwin(v17, v19);
  v21 = &v53 - v20;
  v62 = type metadata accessor for AppTransaction();
  __chkstk_darwin(v62, v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v24 = 0x65646F6358;
  *(v24 + 1) = 0xE500000000000000;
  *(v24 + 6) = 48;
  *(v24 + 7) = 0xE100000000000000;
  *(v24 + 10) = 5459817;
  *(v24 + 11) = 0xE300000000000000;
  v25 = a1[3];
  v26 = a1[4];
  v59 = a1;
  v27 = sub_10001AE68(a1, v25);
  sub_1001668EC();
  v57 = v21;
  v28 = v58;
  sub_1001F8178();
  v60 = v3;
  if (!v28)
  {
    v58 = v12;
    v53 = v8;
    v29 = v55;
    v70 = 0;
    *(v24 + 2) = sub_1001F7C78();
    *(v24 + 3) = v30;
    v69 = 1;
    *(v24 + 4) = sub_1001F7C78();
    *(v24 + 5) = v31;
    v68 = 3;
    sub_100166CE0();
    v32 = sub_1001F7C78();
    v33 = v62;
    v34 = &v24[v62[13]];
    *v34 = v32;
    v34[1] = v35;
    v67 = 4;
    sub_100166CE0();
    v36 = sub_1001F7C78();
    v37 = &v24[v33[14]];
    *v37 = v36;
    v37[1] = v38;
    v66 = 6;
    *(v24 + 8) = sub_1001F7C78();
    *(v24 + 9) = v39;
    v65 = 8;
    sub_100166C88();
    sub_100166940(v40, v41);
    sub_100166CE0();
    sub_1001F7CB8();
    v42 = v3;
    v43 = *(v61 + 32);
    v43(&v24[v62[12]], v16, v42);
    v64 = 9;
    sub_100166CE0();
    sub_1001F7CB8();
    v44 = sub_100166CEC(v62[10]);
    (v43)(v44);
    v63 = 10;
    v45 = v57;
    sub_1001F7CB8();
    (*(v29 + 8))(v45, v56);
    v52 = sub_100166CEC(v62[11]);
    (v43)(v52);
    sub_100166988(v24, v54);
    sub_100019CCC(v59);
    return sub_1001669EC(v24);
  }

  sub_100166C54();
  result = sub_100019CCC(v59);
  if (v26)
  {
  }

  v47 = v62;
  if (v25)
  {
    v48 = sub_100166CEC(v62[10]);
    result = v49(v48);
    if (!v27)
    {
LABEL_8:
      if (!v21)
      {
        goto LABEL_9;
      }

LABEL_13:

      if (!v3)
      {
        return result;
      }
    }
  }

  else if (!v27)
  {
    goto LABEL_8;
  }

  v50 = sub_100166CEC(v47[12]);
  result = v51(v50);
  if (v21)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v3)
  {
  }

  return result;
}

uint64_t sub_1001667A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100165C78(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1001667D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100165CCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10016681C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100165CC4();
  *a1 = result;
  return result;
}

uint64_t sub_100166844(uint64_t a1)
{
  v2 = sub_1001668EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100166880(uint64_t a1)
{
  v2 = sub_1001668EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001668EC()
{
  result = qword_1002B8D10;
  if (!qword_1002B8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8D10);
  }

  return result;
}

uint64_t sub_100166940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100166988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppTransaction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001669EC(uint64_t a1)
{
  v2 = type metadata accessor for AppTransaction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AppTransaction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x100166B14);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100166B50()
{
  result = qword_1002B8D20;
  if (!qword_1002B8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8D20);
  }

  return result;
}

unint64_t sub_100166BA8()
{
  result = qword_1002B8D28;
  if (!qword_1002B8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8D28);
  }

  return result;
}

unint64_t sub_100166C00()
{
  result = qword_1002B8D30;
  if (!qword_1002B8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8D30);
  }

  return result;
}

uint64_t sub_100166C6C()
{

  return sub_1001F7D88();
}

uint64_t sub_100166CA0()
{

  return sub_1001F7DC8();
}

BOOL static NIONetworkInterface.== infix(_:_:)(uint64_t a1)
{
  sub_100168484(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1001F7EA8() & 1) == 0 || !static SocketAddress.== infix(_:_:)(v2[4], v1[4]))
  {
    return 0;
  }

  v6 = v2[5];
  v7 = v1[5];
  sub_1001684BC();
  if (v5)
  {
    if (v9 != v8)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v8)
    {
      return 0;
    }

    v10 = static SocketAddress.== infix(_:_:)(v6, v7);
    sub_10002D83C(v7);
    if (!v10)
    {
      return 0;
    }
  }

  v11 = v2[6];
  v12 = v1[6];
  sub_1001684BC();
  if (v5)
  {
    if (v14 != v13)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == v13)
    {
      return 0;
    }

    v15 = static SocketAddress.== infix(_:_:)(v11, v12);
    sub_10002D83C(v12);
    if (!v15)
    {
      return 0;
    }
  }

  v16 = v2[7];
  v17 = v1[7];
  sub_1001684BC();
  if (v5)
  {
    if (v19 == v18)
    {
      return sub_100168520();
    }
  }

  else if (v19 != v18)
  {

    v20 = static SocketAddress.== infix(_:_:)(v16, v17);
    sub_10002D83C(v17);
    if (v20)
    {
      return sub_100168520();
    }
  }

  return 0;
}

uint64_t NIONetworkInterface.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NIONetworkInterface.address.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_100166F00(uint64_t result)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = result;
    *(v1 + 16) = sub_1001F6CC8();
    *(v1 + 24) = v4;
    v5 = *(v3 + 24);
    if (!v5 || (v6 = sub_1000E28D0(v5), (~v6 & 0xF000000000000007) == 0))
    {

      sub_100168540();
      return 0;
    }

    v7 = v6;
    *(v1 + 32) = v6;
    v8 = *(v3 + 32);
    if (v8)
    {

      *(v1 + 40) = sub_1000E28D0(v8);
      v9 = *(v3 + 16);
      if ((v9 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(v1 + 40) = 0xF000000000000007;
      v9 = *(v3 + 16);
      if ((v9 & 2) == 0)
      {

        goto LABEL_14;
      }
    }

    v10 = *(v3 + 40);
    if (v10)
    {
      *(v1 + 48) = sub_1000E28D0(v10);
      *(v1 + 56) = 0xF000000000000007;
      if ((v9 & 0x8000) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

LABEL_14:
    if ((v9 & 0x10) != 0)
    {
      v12 = *(v3 + 40);
      if (v12)
      {
        *(v1 + 48) = 0xF000000000000007;
        *(v1 + 56) = sub_1000E28D0(v12);
        if ((v9 & 0x8000) == 0)
        {
          goto LABEL_19;
        }

LABEL_13:
        v11 = 1;
LABEL_20:
        *(v1 + 64) = v11;
        v13 = sub_1000275D0(v2);
        sub_10002D83C(v7);
        *(v1 + 72) = v13;
        return v1;
      }
    }

    *(v1 + 48) = vdupq_n_s64(0xF000000000000007);
    if ((v9 & 0x8000) != 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t NIONetworkInterface.deinit()
{

  sub_1001684CC();
  return v0;
}

uint64_t NIONetworkInterface.__deallocating_deinit()
{
  NIONetworkInterface.deinit();
  sub_1001683A4();

  return swift_deallocClassInstance();
}

uint64_t NIONetworkInterface.debugDescription.getter()
{
  v1 = 0xE000000000000000;
  sub_1001F77B8(24);

  sub_1001F6CA8(v0[1]);
  v9._countAndFlagsBits = sub_10016850C();
  v9._object = 0xEA00000000002073;
  sub_1001F6CA8(v9);
  v10._countAndFlagsBits = SocketAddress.description.getter(v0[2]._countAndFlagsBits);
  sub_1001F6CA8(v10);

  if ((~v0[2]._object & 0xF000000000000007) != 0)
  {
    sub_1001684A0();
    v7 = v3;
    v8 = v4;
    v11._countAndFlagsBits = SocketAddress.description.getter(v5);
    sub_1001F6CA8(v11);

    v2 = v7;
    v1 = v8;
  }

  else
  {
    v2 = 0;
  }

  v12._countAndFlagsBits = v2;
  v12._object = v1;
  sub_1001F6CA8(v12);

  return 0x6361667265746E49;
}

uint64_t NIONetworkDevice.name.getter(uint64_t a1)
{
  v1 = *(a1 + 16);

  return v1;
}

uint64_t NIONetworkDevice.name.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    v7 = sub_1001683B0();
    *v3 = v7;
  }

  v7[1].i64[0] = a1;
  v7[1].i64[1] = a2;
}

uint64_t (*NIONetworkDevice.name.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v3;

  return sub_10016737C;
}

uint64_t sub_10016737C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    NIONetworkDevice.name.setter(v3, v2);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for NIONetworkDevice.Backing();
      sub_1001683A4();
      swift_allocObject();
      v6 = sub_1001683B0();
      *v4 = v6;
    }

    v6[1].i64[0] = v3;
    v6[1].i64[1] = v2;
  }
}

uint64_t NIONetworkDevice.address.setter()
{
  v2 = sub_10016842C();
  v3 = *v1;
  if ((v2 & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    v4 = sub_1001683B0();
    sub_100168478(v4);
  }

  *(v3 + 32) = v0;
  v5 = sub_1001683CC();

  return sub_10002D83C(v5);
}

uint64_t NIONetworkDevice.address.modify(uint64_t a1)
{
  sub_10016841C(a1);
  v3 = *(v2 + 32);
  *v1 = v3;
  sub_10002D824(v3);
  return sub_100168534();
}

uint64_t NIONetworkDevice.netmask.setter()
{
  v2 = sub_10016842C();
  v3 = *v1;
  if ((v2 & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    v4 = sub_1001683B0();
    sub_100168478(v4);
  }

  *(v3 + 40) = v0;
  v5 = sub_1001683CC();

  return sub_10002D83C(v5);
}

uint64_t NIONetworkDevice.netmask.modify(uint64_t a1)
{
  sub_10016841C(a1);
  v3 = *(v2 + 40);
  *v1 = v3;
  sub_10002D824(v3);
  return sub_100168534();
}

uint64_t NIONetworkDevice.broadcastAddress.setter()
{
  v2 = sub_10016842C();
  v3 = *v1;
  if ((v2 & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    v4 = sub_1001683B0();
    sub_100168478(v4);
  }

  *(v3 + 48) = v0;
  v5 = sub_1001683CC();

  return sub_10002D83C(v5);
}

uint64_t NIONetworkDevice.broadcastAddress.modify(uint64_t a1)
{
  sub_10016841C(a1);
  v3 = *(v2 + 48);
  *v1 = v3;
  sub_10002D824(v3);
  return sub_100168534();
}

uint64_t NIONetworkDevice.pointToPointDestinationAddress.setter()
{
  v2 = sub_10016842C();
  v3 = *v1;
  if ((v2 & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    v4 = sub_1001683B0();
    sub_100168478(v4);
  }

  *(v3 + 56) = v0;
  v5 = sub_1001683CC();

  return sub_10002D83C(v5);
}

uint64_t NIONetworkDevice.pointToPointDestinationAddress.modify(uint64_t a1)
{
  sub_10016841C(a1);
  v3 = *(v2 + 56);
  *v1 = v3;
  sub_10002D824(v3);
  return sub_100168534();
}

uint64_t sub_1001677A4(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  sub_10002D824(*a1);
  a3(v4);

  return sub_10002D83C(v4);
}

uint64_t NIONetworkDevice.multicastSupported.setter(char a1)
{
  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((result & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    v5 = sub_1001683B0();
    result = sub_100168478(v5);
  }

  *(v4 + 64) = a1 & 1;
  return result;
}

uint64_t (*NIONetworkDevice.multicastSupported.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(*v1 + 64);
  return sub_1001678AC;
}

uint64_t sub_1001678AC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((result & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    result = sub_100167CD4(v4);
    v4 = result;
    *v1 = result;
  }

  *(v4 + 64) = v2;
  return result;
}

uint64_t NIONetworkDevice.interfaceIndex.setter()
{
  result = sub_10016842C();
  v3 = *v1;
  if ((result & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    v4 = sub_1001683B0();
    result = sub_100168478(v4);
  }

  *(v3 + 72) = v0;
  return result;
}

uint64_t (*NIONetworkDevice.interfaceIndex.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = *(*v1 + 72);
  return sub_100167994;
}

uint64_t sub_100167994(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v2;
  if ((result & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    result = sub_100167CD4(v4);
    v4 = result;
    *v2 = result;
  }

  *(v4 + 72) = v1;
  return result;
}

uint64_t NIONetworkDevice.init(_:)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  type metadata accessor for NIONetworkDevice.Backing();
  sub_1001683A4();
  swift_allocObject();

  sub_10002D824(v2);
  sub_10002D824(v3);
  sub_10002D824(v4);
  v7 = sub_10012F398();
  v9 = sub_100167D88(v7, v8, v1, v2, v3, v4, v5, v6);

  return v9;
}

uint64_t NIONetworkDevice.init(name:address:netmask:broadcastAddress:pointToPointDestinationAddress:multicastSupported:interfaceIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  type metadata accessor for NIONetworkDevice.Backing();
  sub_1001683A4();
  swift_allocObject();
  return sub_100167D88(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100167B48(uint64_t result)
{
  v2 = vdupq_n_s64(0xF000000000000007);
  *(v1 + 32) = v2;
  *(v1 + 48) = v2;
  v3 = *(result + 8);
  if (v3)
  {
    v4 = result;
    *(v1 + 16) = sub_1001F6CC8();
    *(v1 + 24) = v5;
    v6 = *(v4 + 24);
    if (v6)
    {
      v7 = sub_1000E28D0(v6);
    }

    else
    {
      v7 = 0xF000000000000007;
    }

    v8 = *(v1 + 32);
    *(v1 + 32) = v7;
    sub_10002D83C(v8);
    v9 = *(v4 + 32);
    if (v9)
    {
      v10 = sub_1000E28D0(v9);
    }

    else
    {
      v10 = 0xF000000000000007;
    }

    v11 = *(v1 + 40);
    *(v1 + 40) = v10;
    sub_10002D83C(v11);
    v12 = *(v4 + 16);
    if ((v12 & 2) != 0 && (v13 = *(v4 + 40)) != 0)
    {
      v14 = sub_1000E28D0(v13);
      v15 = *(v1 + 48);
      *(v1 + 48) = v14;
      sub_10002D83C(v15);
      v16 = 0xF000000000000007;
    }

    else if ((v12 & 0x10) != 0 && (v17 = *(v4 + 40)) != 0)
    {
      v18 = *(v1 + 48);
      *(v1 + 48) = 0xF000000000000007;
      sub_10002D83C(v18);
      v16 = sub_1000E28D0(v17);
    }

    else
    {
      v19 = *(v1 + 48);
      v16 = 0xF000000000000007;
      *(v1 + 48) = 0xF000000000000007;
      sub_10002D83C(v19);
    }

    v20 = *(v1 + 56);
    *(v1 + 56) = v16;
    sub_10002D83C(v20);
    *(v1 + 64) = (v12 & 0x8000) != 0;
    *(v1 + 72) = sub_1000275D0(v3);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

int64x2_t *sub_100167CD4(uint64_t a1)
{
  v3 = vdupq_n_s64(0xF000000000000007);
  v1[2] = v3;
  v1[3] = v3;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v1[1].i64[0] = v5;
  v1[1].i64[1] = v4;
  v6 = *(a1 + 32);
  v1[2].i64[0] = v6;
  v7 = *(a1 + 40);
  v1[2].i64[1] = v7;
  v8 = *(a1 + 48);
  v1[3].i64[0] = v8;

  sub_10002D824(v6);
  sub_10002D824(v7);
  sub_10002D824(v8);
  sub_10002D83C(0xF000000000000007);
  v9 = *(a1 + 56);
  v10 = v1[3].i64[1];
  v1[3].i64[1] = v9;
  sub_10002D824(v9);
  sub_10002D83C(v10);
  v1[4].i8[0] = *(a1 + 64);
  v11 = *(a1 + 72);

  v1[4].i64[1] = v11;
  return v1;
}

uint64_t sub_100167D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 56) = 0xF000000000000007;
  sub_10002D824(a5);
  sub_10002D83C(0xF000000000000007);
  sub_10002D83C(a5);
  v13 = *(v8 + 56);
  *(v8 + 56) = a6;
  sub_10002D824(a6);
  sub_10002D83C(v13);
  sub_10002D83C(a6);
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  return v8;
}

uint64_t *sub_100167E18()
{

  sub_10002D83C(v0[4]);
  sub_10002D83C(v0[5]);
  sub_10002D83C(v0[6]);
  sub_10002D83C(v0[7]);
  return v0;
}

uint64_t sub_100167E58()
{
  sub_100167E18();

  return swift_deallocClassInstance();
}

uint64_t NIONetworkDevice.debugDescription.getter(void *a1)
{
  v2 = 0xE000000000000000;
  sub_1001F77B8(21);

  v3 = a1[2];
  v4 = a1[3];

  v13._countAndFlagsBits = v3;
  v13._object = v4;
  sub_1001F6CA8(v13);

  v14._countAndFlagsBits = sub_10016850C();
  v14._object = 0xEA00000000002073;
  sub_1001F6CA8(v14);
  sub_10002D824(a1[4]);
  sub_1000183C4(&qword_1002B2D30);
  v15._countAndFlagsBits = sub_1001F6BA8();
  sub_1001F6CA8(v15);

  v5 = a1[5];
  sub_100168500();
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    sub_1001684A0();
    v11 = v7;
    v12 = v8;

    v16._countAndFlagsBits = SocketAddress.description.getter(v5);
    sub_1001F6CA8(v16);

    sub_10002D83C(v5);
    v9 = v11;
    v2 = v12;
  }

  v17._countAndFlagsBits = v9;
  v17._object = v2;
  sub_1001F6CA8(v17);

  return 0x20656369766544;
}

BOOL static NIONetworkDevice.== infix(_:_:)(uint64_t a1)
{
  sub_100168484(a1);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1001F7EA8() & 1) == 0)
  {
    return 0;
  }

  sub_1001683F0();
  if (v4)
  {
    if (v6 != v5)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v5)
    {
      return 0;
    }

    sub_10016836C();
    sub_100168448();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1001683F0();
  if (v4)
  {
    if (v8 != v7)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v7)
    {
      return 0;
    }

    sub_10016836C();
    sub_100168448();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1001683F0();
  if (v4)
  {
    if (v10 != v9)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v9)
    {
      return 0;
    }

    sub_10016836C();
    sub_100168448();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1001683F0();
  if (v4)
  {
    if (v12 == v11)
    {
      return sub_100168520();
    }
  }

  else if (v12 != v11)
  {
    sub_10016836C();
    sub_100168448();
    if (v1)
    {
      return sub_100168520();
    }
  }

  return 0;
}

void NIONetworkDevice.hash(into:)(uint64_t a1, void *a2)
{

  sub_10012F398();
  sub_1001F6C28();

  v3 = a2[4];
  sub_100168500();
  if (v4)
  {
    sub_1001F8098(0);
  }

  else
  {
    sub_1001F8098(1u);

    v5 = sub_10012F398();
    SocketAddress.hash(into:)(v5, v6);
    sub_10002D83C(v3);
  }

  v7 = a2[5];
  sub_100168500();
  if (v4)
  {
    sub_1001F8098(0);
  }

  else
  {
    sub_1001F8098(1u);

    v8 = sub_10012F398();
    SocketAddress.hash(into:)(v8, v9);
    sub_10002D83C(v7);
  }

  v10 = a2[6];
  sub_100168500();
  if (v4)
  {
    sub_1001F8098(0);
  }

  else
  {
    sub_1001F8098(1u);

    v11 = sub_10012F398();
    SocketAddress.hash(into:)(v11, v12);
    sub_10002D83C(v10);
  }

  v13 = a2[7];
  sub_100168500();
  if (v4)
  {
    sub_1001F8098(0);
  }

  else
  {
    sub_1001F8098(1u);

    v14 = sub_10012F398();
    SocketAddress.hash(into:)(v14, v15);
    sub_10002D83C(v13);
  }

  sub_1001F8088(a2[9]);
}

Swift::Int NIONetworkDevice.hashValue.getter(void *a1)
{
  sub_1001F8068();
  NIONetworkDevice.hash(into:)(v3, a1);
  return sub_1001F80D8();
}

Swift::Int sub_10016829C()
{
  v1 = *v0;
  sub_1001F8068();
  NIONetworkDevice.hash(into:)(v3, v1);
  return sub_1001F80D8();
}

unint64_t sub_1001682E4()
{
  result = qword_1002B8D38;
  if (!qword_1002B8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8D38);
  }

  return result;
}

BOOL sub_10016836C()
{
  sub_10002D824(v1);
  sub_10002D824(v0);

  return static SocketAddress.== infix(_:_:)(v0, v1);
}

int64x2_t *sub_1001683B0()
{

  return sub_100167CD4(v0);
}

uint64_t sub_1001683CC()
{
  sub_10002D824(v0);
  sub_10002D83C(v1);
  return v0;
}

uint64_t sub_10016842C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100168448()
{
  sub_10002D83C(v1);

  return sub_10002D83C(v0);
}

uint64_t sub_1001684CC()
{
  sub_10002D83C(v0[5]);
  sub_10002D83C(v0[6]);
  v1 = v0[7];

  return sub_10002D83C(v1);
}

uint64_t sub_100168540()
{

  return swift_deallocPartialClassInstance();
}

uint64_t ByteBuffer.writeLengthPrefixed<A>(endianness:as:writeMessage:)(int a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v42 = a3;
  v41 = a4;
  v40 = sub_1001F74B8();
  sub_10002DFFC();
  v36 = v10;
  sub_10001E844();
  __chkstk_darwin(v11, v12);
  v39 = &v34 - v13;
  sub_10002DFFC();
  v15 = v14;
  __chkstk_darwin(v16, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = &v34 - v22;
  v34 = *(v6 + 12);
  v24 = *(*(a6 + 8) + 24);
  sub_1001F7AF8();
  v37 = a1;
  v38 = a6;
  v25 = ByteBuffer.writeInteger<A>(_:endianness:as:)(v23, a1 & 1, a5, a5);
  v35 = v15;
  v26 = *(v15 + 8);
  v27 = sub_10016932C();
  v26(v27);
  v28 = v43;
  result = v42(v6);
  if (v28)
  {
    return v25;
  }

  v42 = v6;
  v43 = v24;
  v41 = v26;
  v30 = v39;
  v31 = v40;
  v32 = __OFADD__(v25, result);
  v25 += result;
  if (!v32)
  {
    v44 = result;
    sub_1000DD154();
    sub_100169304();
    sub_1001F70E8();
    if (sub_10001C990(v30, 1, a5) == 1)
    {
      (*(v36 + 8))(v30, v31);
      sub_100168850();
      swift_allocError();
      *v33 = 0;
      swift_willThrow();
    }

    else
    {
      (*(v35 + 32))(v19, v30, a5);
      ByteBuffer.setInteger<A>(_:at:endianness:as:)(v19, v34, v37 & 1, a5, a5);
      v41(v19, a5);
    }

    return v25;
  }

  __break(1u);
  return result;
}

unint64_t sub_100168850()
{
  result = qword_1002B8EF0;
  if (!qword_1002B8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8EF0);
  }

  return result;
}

uint64_t ByteBuffer.readLengthPrefixed<A, B>(endianness:as:readMessage:)@<X0>(char a1@<W0>, void (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v24[1] = a3;
  v25 = a2;
  v13 = sub_1001F74B8();
  sub_10002DFFC();
  v24[0] = v14;
  sub_10001E844();
  __chkstk_darwin(v15, v16);
  v18 = v24 - v17;
  if (ByteBuffer.readLengthPrefixedSlice<A>(endianness:as:)(a1 & 1, v19, a4, a6))
  {
    v25();
    if (v7)
    {
    }

    if (sub_10001C990(v18, 1, a5) == 1)
    {
      (*(v24[0] + 8))(v18, v13);
      sub_100168850();
      swift_allocError();
      *v20 = 1;
      swift_willThrow();
    }

    (*(*(a5 - 8) + 32))(a7, v18, a5);
    v22 = a7;
    v23 = 0;
  }

  else
  {
    v22 = a7;
    v23 = 1;
  }

  return sub_100018460(v22, v23, 1, a5);
}

uint64_t ByteBuffer.readLengthPrefixedSlice<A>(endianness:as:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ByteBuffer.getLengthPrefixedSlice<A>(at:endianness:as:)(*(v4 + 8), a1 & 1, a3, *v4, *(v4 + 8) | (*(v4 + 12) << 32), *(v4 + 16) | (*(v4 + 20) << 32) | (*(v4 + 22) << 48), a3, a4);
  if (result)
  {
    v10[0] = result;
    v10[1] = v7;
    v11 = v8;
    v12 = WORD2(v8);
    v13 = BYTE6(v8);
    sub_1001690D8(v10, v4, a3, &v9);

    return v9;
  }

  return result;
}

uint64_t ByteBuffer.getLengthPrefixedSlice<A>(at:endianness:as:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v58) = a2;
  v59 = a1;
  v57 = *(a8 + 8);
  v51[2] = *(*(v57 + 24) + 16);
  v51[1] = swift_getAssociatedTypeWitness();
  sub_10001E844();
  __chkstk_darwin(v12, v13);
  v51[0] = v51 - v14;
  v56 = sub_1001F74B8();
  sub_10002DFFC();
  v16 = v15;
  sub_10001E844();
  __chkstk_darwin(v17, v18);
  v20 = v51 - v19;
  sub_10002DFFC();
  v22 = v21;
  __chkstk_darwin(v23, v24);
  v52 = v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v29 = v51 - v28;
  v55 = v30;
  __chkstk_darwin(v31, v32);
  v34 = v51 - v33;
  v35 = v58 & 1;
  v53 = a6;
  v54 = a4;
  v36 = v59;
  v58 = a5;
  ByteBuffer.getInteger<A>(at:endianness:as:)(v59, v35, a5, a7, v20);
  if (sub_10001C990(v20, 1, a7) == 1)
  {
    (*(v16 + 8))(v20, v56);
    return 0;
  }

  (*(v22 + 32))(v34, v20, a7);
  (*(v22 + 16))(v29, v34, a7);
  v37 = v22;
  if (sub_1001F76A8())
  {
    sub_1001692E8();
    if (sub_1001F7698() >= 65)
    {
      v60 = 0x8000000000000000;
      v38 = a7;
      sub_1001692F8();
      if (sub_1001F76A8())
      {
        sub_1001692E8();
        if (sub_1001F7698() < 64)
        {
LABEL_15:
          sub_1001692E8();
          sub_1001F7688();
          goto LABEL_16;
        }
      }

      else
      {
        v38 = a7;
        sub_1001692F8();
        v22 = sub_1001F76A8();
        sub_1001692E8();
        v39 = sub_1001F7698();
        if ((v22 & 1) == 0)
        {
          if (v39 >= 64)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (v39 <= 64)
        {
          swift_getAssociatedConformanceWitness();
          sub_1001F7F88();
          v41 = v52;
          sub_1001F7E88();
          v42 = sub_1001F6A78();
          v22 = *(v37 + 8);
          (v22)(v41, a7);
          if (v42)
          {
            goto LABEL_20;
          }

          goto LABEL_15;
        }
      }

      sub_1000DD154();
      sub_100169304();
      sub_1001F7638();
      sub_1001F6A78();
      v40 = sub_100169314();
      (v22)(v40);
      if (v38)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_16:
  sub_1001692E8();
  if (sub_1001F7698() > 64 || (sub_1001692E8(), sub_1001F7698() == 64) && (sub_1001692F8(), (sub_1001F76A8() & 1) == 0))
  {
    v60 = 0x7FFFFFFFFFFFFFFFLL;
    sub_1001692F8();
    v22 = sub_1001F76A8();
    sub_1001692E8();
    v43 = sub_1001F7698();
    if (v22)
    {
      if (v43 > 64)
      {
        goto LABEL_19;
      }
    }

    else if (v43 > 63)
    {
LABEL_19:
      sub_1000DD154();
      sub_100169304();
      sub_1001F7638();
      sub_1001F6A78();
      v44 = sub_100169314();
      (v22)(v44);
      if ((a7 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_20:
      v45 = sub_10016932C();
      (v22)(v45);
      (v22)(v34, a7);
      return 0;
    }

    sub_1001692E8();
    sub_1001F7688();
  }

LABEL_26:
  sub_1001692E8();
  v46 = sub_1001F7688();
  v47 = *(v37 + 8);
  v48 = sub_10016932C();
  v47(v48);
  result = v36 + v55;
  if (!__OFADD__(v36, v55))
  {
    v50 = ByteBuffer.getSlice(at:length:)(result, v46, v54, v58, v53 & 0xFFFFFFFFFFFFFFLL);
    (v47)(v34, a7);
    if (v50)
    {
      return v50;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001690D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 8);
  v5 = *(result + 12);
  v6 = v5 - v4;
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *(*(a3 - 8) + 64);
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = *(a2 + 8);
  v11 = __CFADD__(v10, v9);
  v12 = v10 + v9;
  if (!v11)
  {
    v13 = *result;
    v14 = *(result + 20);
    v15 = *(result + 22);
    *(a2 + 8) = v12;
    *a4 = v13;
    *(a4 + 8) = v4;
    *(a4 + 12) = v5;
    *(a4 + 20) = v14;
    *(a4 + 22) = v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

_BYTE *sub_100169188(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x100169254);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100169290()
{
  result = qword_1002B8EF8;
  if (!qword_1002B8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8EF8);
  }

  return result;
}

uint64_t sub_100169338(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001F6F88();
  *(v4 + 16) = 32;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  v7 = v4;
  sub_100040C70(a1, a2);
  sub_100169440(a1, a2, a1, a2, &v7);
  v5 = v7;

  return sub_10014172C(v5);
}

unint64_t sub_1001693CC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1001F63E8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (!HIDWORD(result))
    {
      sub_1001B91F0(0);
      return CC_SHA256(a1, v8, (*a5 + 32));
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100169440(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  sub_100040C70(a3, a4);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v17 = sub_1001F6058();
      if (!v17)
      {
        goto LABEL_14;
      }

      v21 = sub_1001F6078();
      if (__OFSUB__(a1, v21))
      {
LABEL_26:
        __break(1u);
      }

      v17 += a1 - v21;
LABEL_14:
      v20 = (a1 >> 32) - a1;
LABEL_15:
      v22 = sub_1001F6068();
      if (v22 >= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = v22;
      }

      v24 = (v23 + v17);
      if (v17)
      {
        v10 = v24;
      }

      else
      {
        v10 = 0;
      }

      v11 = v17;
      v12 = a3;
      v13 = a4;
      v14 = a5;
LABEL_22:
      sub_1001693CC(v11, v10, v12, v13, v14);
LABEL_23:
      sub_10003A380(a3, a4);
      return sub_10003A380(a3, a4);
    case 2uLL:
      v16 = *(a1 + 16);
      v15 = *(a1 + 24);
      v17 = sub_1001F6058();
      if (!v17)
      {
        goto LABEL_6;
      }

      v18 = sub_1001F6078();
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_25;
      }

      v17 += v16 - v18;
LABEL_6:
      v19 = __OFSUB__(v15, v16);
      v20 = v15 - v16;
      if (!v19)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_9:
      sub_100040C70(a3, a4);
      sub_1001696A4(0, 0, a3, a4, a5);
      goto LABEL_23;
    case 3uLL:
      goto LABEL_9;
    default:
      v26 = a1;
      v27 = a2;
      v28 = BYTE2(a2);
      v29 = BYTE3(a2);
      v30 = BYTE4(a2);
      v31 = BYTE5(a2);
      v10 = &v26 + BYTE6(a2);
      v11 = &v26;
      v12 = a3;
      v13 = a4;
      v14 = a5;
      goto LABEL_22;
  }
}

uint64_t sub_1001696A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  sub_1001693CC(&v8, &v8 + BYTE6(a2), a3, a4, a5);
  return sub_10003A380(a3, a4);
}

uint64_t static _IntegerBitPacking.packUU<A, B, C>(_:_:type:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>, uint64_t a6)
{
  v36[1] = a4;
  v37 = a1;
  v39 = a5;
  v38 = a6;
  sub_10002DFFC();
  v36[0] = v8;
  __chkstk_darwin(v9, v10);
  sub_100023510();
  v13 = v12 - v11;
  sub_10002DFFC();
  __chkstk_darwin(v14, v15);
  sub_100023510();
  v18 = v17 - v16;
  sub_10002DFFC();
  v20 = v19;
  __chkstk_darwin(v21, v22);
  v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v29 = __chkstk_darwin(v27, v28);
  v31 = v36 - v30;
  (*(v32 + 16))(v18, v29);
  sub_1001F76C8();
  (*(v36[0] + 16))(v13, v37, a2);
  sub_1001F76C8();
  v40 = sub_1001F7A38();
  sub_1000DD154();
  sub_1001F7678();
  sub_1001F7658();
  v33 = *(v20 + 8);
  v33(v24, a3);
  v34 = sub_1000D4A80();
  (v33)(v34);
  return (v33)(v31, a3);
}

uint64_t static _IntegerBitPacking.unpackUU<A, B, C>(_:leftType:rightType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v48 = a1;
  v49 = a2;
  v45 = a13;
  v46 = a3;
  __chkstk_darwin(a1, a2);
  sub_100023510();
  v44[1] = v15 - v14;
  __chkstk_darwin(v16, v17);
  sub_100023510();
  sub_10002DFFC();
  v47 = v18;
  __chkstk_darwin(v19, v20);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v51 = v44 - v25;
  __chkstk_darwin(v26, v27);
  v44[0] = v44 - v28;
  __chkstk_darwin(v29, v30);
  v50 = v44 - v31;
  __chkstk_darwin(v32, v33);
  v52 = v44 - v34;
  v44[3] = v35;
  sub_1001F7A68();
  v44[4] = *(a11 + 8);
  sub_1001F76C8();
  v36 = v45;
  sub_1001F7A68();
  v44[2] = *(v36 + 8);
  sub_1001F76C8();
  sub_1001F7648();
  v53 = sub_1001F7A38();
  sub_1000DD154();
  sub_1001F7668();
  v37 = v51;
  sub_1001F7648();
  v38 = v47;
  v39 = *(v47 + 8);
  v40 = sub_1000D4A80();
  v39(v40);
  v41 = *(v38 + 16);
  v41(v22, v37, a6);
  sub_1000D4A80();
  sub_1001F76C8();
  v42 = v44[0];
  v41(v22, v44[0], a6);
  sub_1000D4A80();
  sub_1001F76C8();
  (v39)(v51, a6);
  (v39)(v42, a6);
  (v39)(v50, a6);
  return (v39)(v52, a6);
}

ASOctaneSupportXPCService::_UInt24 __swiftcall _UInt24.init(_:)(Swift::UInt32 a1)
{
  v1 = a1 >> 8;
  result._backing._0 = v1;
  return result;
}

void Array<A>.init(buffer:)(int a1, Swift::Int at)
{
  v2 = at;
  v3 = HIDWORD(at) >= at;
  v4 = (HIDWORD(at) - at);
  if (v3)
  {
    if (ByteBuffer.getBytes(at:length:)(v2, v4))
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void String.init(buffer:)(uint64_t a1, uint64_t a2)
{
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    sub_1001F6C08();
  }
}

void DispatchData.init(buffer:)(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1;
  v24 = a2;
  v3 = HIDWORD(a1);
  v4 = sub_1001F67A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000183C4(&qword_1002B10A0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v23 - v15;
  __chkstk_darwin(v17, v18);
  v20 = &v23 - v19;
  if (v3 < v2)
  {
    __break(1u);
  }

  else
  {
    ByteBuffer.getDispatchData(at:length:)();
    sub_10007DFD4(v16, v12);
    v21 = 1;
    if (sub_10001C990(v12, 1, v4) != 1)
    {
      v22 = *(v5 + 32);
      v22(v8, v12, v4);
      v22(v20, v8, v4);
      v21 = 0;
    }

    sub_100018460(v20, v21, 1, v4);
    sub_10007E044(v16);
    if (sub_10001C990(v20, 1, v4) != 1)
    {

      (*(v5 + 32))(v24, v20, v4);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_10016A174(unsigned __int8 a1)
{
  v3 = type metadata accessor for PurchaseConfiguration();
  v4 = *(v1 + *(v3 + 44));
  if (v4 == 3)
  {
    return 0;
  }

  v5 = (v1 + *(v3 + 40));
  if (!v5[1] || v4 != a1)
  {
    return 0;
  }

  v7 = *v5;

  return v7;
}

uint64_t sub_10016A214(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69746F6D6F7270 && a2 == 0xEB000000006C616ELL;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701080931 && a2 == 0xE400000000000000;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6B6361626E6977 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1001F7EA8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10016A328(char a1)
{
  if (!a1)
  {
    return 0x6F69746F6D6F7270;
  }

  if (a1 == 1)
  {
    return 1701080931;
  }

  return 0x6B6361626E6977;
}

uint64_t type metadata accessor for PurchaseConfiguration()
{
  result = qword_1002B8F58;
  if (!qword_1002B8F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10016A3E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000183C4(&qword_1002AFA30);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_1000183C4(&unk_1002B3450);
      v10 = *(a3 + 32);
    }

    return sub_10001C990(a1 + v10, a2, v9);
  }
}

uint64_t sub_10016A4D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000183C4(&qword_1002AFA30);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_1000183C4(&unk_1002B3450);
      v10 = *(a4 + 32);
    }

    return sub_100018460(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_10016A5B8()
{
  sub_10016A744(319, &qword_1002B8F68, &type metadata accessor for UUID);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_100140004(319, &qword_1002B8F70);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_10016A744(319, &qword_1002B2468, &type metadata accessor for Date);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_100140004(319, &qword_1002B4920);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_100140004(319, &qword_1002ACF10);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_100140004(319, &unk_1002B8F78);
          if (v11 > 0x3F)
          {
            return v9;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_10016A744(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1001F74B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10016A7A8(void *a1, int a2)
{
  v37 = a2;
  sub_1000183C4(&qword_1002B9038);
  sub_10001A278();
  v35 = v4;
  v36 = v3;
  sub_10001E844();
  __chkstk_darwin(v5, v6);
  v34 = &v30 - v7;
  sub_1000183C4(&qword_1002B9040);
  sub_10001A278();
  v32 = v9;
  v33 = v8;
  sub_10001E844();
  __chkstk_darwin(v10, v11);
  v13 = &v30 - v12;
  v14 = sub_1000183C4(&qword_1002B9048);
  sub_10001A278();
  v31 = v15;
  sub_10001E844();
  __chkstk_darwin(v16, v17);
  v19 = &v30 - v18;
  v20 = sub_1000183C4(&qword_1002B9050);
  sub_10001A278();
  v22 = v21;
  sub_10001E844();
  __chkstk_darwin(v23, v24);
  v26 = &v30 - v25;
  sub_10001AE68(a1, a1[3]);
  sub_10016C394();
  sub_1001F8198();
  v27 = (v22 + 8);
  if (v37)
  {
    if (v37 == 1)
    {
      v39 = 1;
      sub_10016C43C();
      sub_10016CBDC();
      (*(v32 + 8))(v13, v33);
    }

    else
    {
      v40 = 2;
      sub_10016C3E8();
      v28 = v34;
      sub_10016CBDC();
      (*(v35 + 8))(v28, v36);
    }
  }

  else
  {
    v38 = 0;
    sub_10016C490();
    sub_10016CBDC();
    (*(v31 + 8))(v19, v14);
  }

  return (*v27)(v26, v20);
}

uint64_t sub_10016AAC4(void *a1)
{
  v67 = sub_1000183C4(&qword_1002B8FF8);
  sub_10001A278();
  v65 = v2;
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  v63 = &v57 - v5;
  v64 = sub_1000183C4(&qword_1002B9000);
  sub_10001A278();
  v62 = v6;
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  v10 = &v57 - v9;
  v11 = sub_1000183C4(&qword_1002B9008);
  sub_10001A278();
  v61 = v12;
  sub_10001E844();
  __chkstk_darwin(v13, v14);
  v16 = &v57 - v15;
  v17 = sub_1000183C4(&qword_1002B9010);
  sub_10001A278();
  v66 = v18;
  sub_10001E844();
  __chkstk_darwin(v19, v20);
  v21 = a1[3];
  sub_10001AE68(a1, v21);
  sub_10016C394();
  v22 = v68;
  sub_1001F8178();
  if (v22)
  {
    goto LABEL_12;
  }

  v57 = v11;
  v58 = v16;
  v59 = v10;
  v60 = 0;
  v23 = v67;
  v68 = a1;
  v24 = sub_1001F7CD8();
  result = sub_100146BCC(v24, 0);
  v21 = v17;
  if (v27 == v28 >> 1)
  {
    goto LABEL_10;
  }

  if (v27 < (v28 >> 1))
  {
    v29 = v17;
    v30 = *(v26 + v27);
    v31 = sub_100146C14(v27 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    v36 = v64;
    v37 = v65;
    if (v33 == v35 >> 1)
    {
      v21 = v30;
      if (v30)
      {
        v61 = v31;
        v38 = v60;
        if (v30 == 1)
        {
          v70 = 1;
          sub_10016C43C();
          v39 = v59;
          sub_10016CBB0();
          sub_1001F7BE8();
          if (!v38)
          {
            swift_unknownObjectRelease();
            (*(v62 + 8))(v39, v36);
            v40 = sub_10016CBA0();
            v41(v40);
LABEL_21:
            sub_100019CCC(v68);
            return v21;
          }
        }

        else
        {
          LODWORD(v64) = v30;
          v71 = 2;
          sub_10016C3E8();
          v21 = v63;
          sub_10016CBB0();
          sub_1001F7BE8();
          if (!v38)
          {
            swift_unknownObjectRelease();
            (*(v37 + 8))(v21, v23);
            v55 = sub_10016CBA0();
            v56(v55);
            v21 = v64;
            goto LABEL_21;
          }
        }

        v51 = sub_10016CBA0();
        v52(v51);
      }

      else
      {
        v69 = 0;
        sub_10016C490();
        v47 = v58;
        sub_10016CBB0();
        v48 = v60;
        sub_1001F7BE8();
        if (!v48)
        {
          swift_unknownObjectRelease();
          (*(v61 + 8))(v47, v57);
          v53 = sub_10016CBC0();
          v54(v53, v29);
          goto LABEL_21;
        }

        v49 = sub_10016CBC0();
        v50(v49, v29);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v21 = v29;
LABEL_10:
    v42 = sub_1001F7848();
    swift_allocError();
    v44 = v43;
    sub_1000183C4(&qword_1002B3738);
    *v44 = &type metadata for PurchaseConfiguration.OfferType;
    sub_1001F7BF8();
    sub_1001F7838();
    (*(*(v42 - 8) + 104))(v44, enum case for DecodingError.typeMismatch(_:), v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    v45 = sub_10016CBC0();
    v46(v45, v21);
LABEL_11:
    a1 = v68;
LABEL_12:
    sub_100019CCC(a1);
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_10016B05C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10016A1E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10016B088(uint64_t a1)
{
  v2 = sub_10016C43C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016B0C4(uint64_t a1)
{
  v2 = sub_10016C43C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016B120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016A214(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016B148(uint64_t a1)
{
  v2 = sub_10016C394();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016B184(uint64_t a1)
{
  v2 = sub_10016C394();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016B1C0(uint64_t a1)
{
  v2 = sub_10016C490();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016B1FC(uint64_t a1)
{
  v2 = sub_10016C490();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016B238(uint64_t a1)
{
  v2 = sub_10016C3E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016B274(uint64_t a1)
{
  v2 = sub_10016C3E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016B2C8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016AAC4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10016B314()
{
  result = qword_1002B8FC8;
  if (!qword_1002B8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8FC8);
  }

  return result;
}

uint64_t sub_10016B368(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49746375646F7270 && a2 == 0xE900000000000044;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x756F636341707061 && a2 == 0xEF6E656B6F54746ELL;
      if (v7 || (sub_1001F7EA8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x797469746E617571 && a2 == 0xE800000000000000;
        if (v8 || (sub_1001F7EA8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6573616863727570 && a2 == 0xEC00000065746144;
          if (v9 || (sub_1001F7EA8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x796C696D61467369 && a2 == 0xEE00646572616853;
            if (v10 || (sub_1001F7EA8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4449726566666FLL && a2 == 0xE700000000000000;
              if (v11 || (sub_1001F7EA8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x707954726566666FLL && a2 == 0xE900000000000065;
                if (v12 || (sub_1001F7EA8() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000010 && 0x800000010022A190 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1001F7EA8();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_10016B650(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x49746375646F7270;
      break;
    case 2:
      result = 0x756F636341707061;
      break;
    case 3:
      result = 0x797469746E617571;
      break;
    case 4:
      result = 0x6573616863727570;
      break;
    case 5:
      result = 0x796C696D61467369;
      break;
    case 6:
      result = 0x4449726566666FLL;
      break;
    case 7:
      result = 0x707954726566666FLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10016B7A0()
{
  v2 = sub_1000183C4(&qword_1002B8FE8);
  sub_10001A278();
  v4 = v3;
  sub_10001E844();
  __chkstk_darwin(v5, v6);
  v8 = &v17[-v7];
  v9 = sub_10016CB94();
  sub_10001AE68(v9, v10);
  sub_10016C190();
  sub_1001F8198();
  v17[15] = 0;
  sub_100024A88();
  sub_1001F7D88();
  if (!v1)
  {
    v17[14] = 1;
    sub_100024A88();
    sub_1001F7D88();
    v11 = type metadata accessor for PurchaseConfiguration();
    v17[13] = 2;
    sub_1001F6578();
    sub_10016CB6C();
    sub_10016C2F8(v12, v13);
    sub_100024A88();
    sub_1001F7D58();
    v17[12] = 3;
    sub_100024A88();
    sub_1001F7D48();
    v17[11] = 4;
    sub_1001F6508();
    sub_10016CB54();
    sub_10016C2F8(v14, v15);
    sub_100024A88();
    sub_1001F7D58();
    v17[10] = 5;
    sub_100024A88();
    sub_1001F7D28();
    v17[9] = 6;
    sub_100024A88();
    sub_1001F7D18();
    v17[8] = *(v0 + *(v11 + 44));
    v17[7] = 7;
    sub_10016C340();
    sub_100024A88();
    sub_1001F7D58();
    v17[6] = 8;
    sub_100024A88();
    sub_1001F7D28();
  }

  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_10016BAA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36[0] = a2;
  sub_1000183C4(&unk_1002B3450);
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  v6 = v36 - v5;
  sub_1000183C4(&qword_1002AFA30);
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  v10 = v36 - v9;
  v36[1] = sub_1000183C4(&qword_1002B8FD0);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v11, v12);
  v38 = type metadata accessor for PurchaseConfiguration();
  sub_100023520();
  __chkstk_darwin(v13, v14);
  v16 = (v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v37 = a1;
  sub_10001AE68(a1, v17);
  sub_10016C190();
  v18 = v36[2];
  sub_1001F8178();
  if (v18)
  {
    sub_100019CCC(v37);
  }

  else
  {
    v48 = 0;
    *v16 = sub_1001F7C78();
    v16[1] = v19;
    v47 = 1;
    sub_10016CBD0();
    v16[2] = sub_1001F7C78();
    v16[3] = v20;
    sub_1001F6578();
    v46 = 2;
    sub_10016CB6C();
    sub_10016C2F8(v21, v22);
    sub_1001F7C48();
    v23 = v38;
    sub_100055358(v10, v16 + *(v38 + 24), &qword_1002AFA30);
    v45 = 3;
    sub_10016CBD0();
    v24 = sub_1001F7C38();
    v25 = v16 + v23[7];
    *v25 = v24;
    v25[8] = v26 & 1;
    sub_1001F6508();
    v44 = 4;
    sub_10016CB54();
    sub_10016C2F8(v27, v28);
    sub_1001F7C48();
    sub_100055358(v6, v16 + v23[8], &unk_1002B3450);
    v43 = 5;
    sub_10016CBD0();
    *(v16 + v23[9]) = sub_1001F7C18();
    v42 = 6;
    sub_10016CBD0();
    v29 = sub_1001F7C08();
    v30 = (v16 + v23[10]);
    *v30 = v29;
    v30[1] = v31;
    v40 = 7;
    sub_10016C1E4();
    sub_1001F7C48();
    *(v16 + v23[11]) = v41;
    v39 = 8;
    sub_10016CBD0();
    v32 = sub_1001F7C18();
    v33 = sub_10016CB94();
    v34(v33);
    *(v16 + v23[12]) = v32;
    sub_10016C238(v16, v36[0]);
    sub_100019CCC(v37);
    return sub_10016C29C(v16);
  }
}

Swift::Int sub_10016C06C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t sub_10016C0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016B368(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016C0E8(uint64_t a1)
{
  v2 = sub_10016C190();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C124(uint64_t a1)
{
  v2 = sub_10016C190();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10016C190()
{
  result = qword_1002B8FD8;
  if (!qword_1002B8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8FD8);
  }

  return result;
}

unint64_t sub_10016C1E4()
{
  result = qword_1002B8FE0;
  if (!qword_1002B8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8FE0);
  }

  return result;
}

uint64_t sub_10016C238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016C29C(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10016C2F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10016C340()
{
  result = qword_1002B8FF0;
  if (!qword_1002B8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8FF0);
  }

  return result;
}

unint64_t sub_10016C394()
{
  result = qword_1002B9018;
  if (!qword_1002B9018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9018);
  }

  return result;
}

unint64_t sub_10016C3E8()
{
  result = qword_1002B9020;
  if (!qword_1002B9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9020);
  }

  return result;
}

unint64_t sub_10016C43C()
{
  result = qword_1002B9028;
  if (!qword_1002B9028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9028);
  }

  return result;
}

unint64_t sub_10016C490()
{
  result = qword_1002B9030;
  if (!qword_1002B9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9030);
  }

  return result;
}

_BYTE *sub_10016C4E8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x10016C5B4);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PurchaseConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x10016C6E8);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10016C724()
{
  result = qword_1002B9058;
  if (!qword_1002B9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9058);
  }

  return result;
}

unint64_t sub_10016C77C()
{
  result = qword_1002B9060;
  if (!qword_1002B9060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9060);
  }

  return result;
}

unint64_t sub_10016C7D4()
{
  result = qword_1002B9068;
  if (!qword_1002B9068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9068);
  }

  return result;
}

unint64_t sub_10016C82C()
{
  result = qword_1002B9070;
  if (!qword_1002B9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9070);
  }

  return result;
}

unint64_t sub_10016C884()
{
  result = qword_1002B9078;
  if (!qword_1002B9078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9078);
  }

  return result;
}

unint64_t sub_10016C8DC()
{
  result = qword_1002B9080;
  if (!qword_1002B9080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9080);
  }

  return result;
}

unint64_t sub_10016C934()
{
  result = qword_1002B9088;
  if (!qword_1002B9088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9088);
  }

  return result;
}

unint64_t sub_10016C98C()
{
  result = qword_1002B9090;
  if (!qword_1002B9090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9090);
  }

  return result;
}

unint64_t sub_10016C9E4()
{
  result = qword_1002B9098;
  if (!qword_1002B9098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9098);
  }

  return result;
}

unint64_t sub_10016CA3C()
{
  result = qword_1002B90A0;
  if (!qword_1002B90A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B90A0);
  }

  return result;
}

unint64_t sub_10016CA94()
{
  result = qword_1002B90A8;
  if (!qword_1002B90A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B90A8);
  }

  return result;
}

unint64_t sub_10016CAEC()
{
  result = qword_1002B90B0;
  if (!qword_1002B90B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B90B0);
  }

  return result;
}

uint64_t sub_10016CBDC()
{

  return sub_1001F7D08();
}

uint64_t NIOAtomic.store(_:)()
{
  sub_10012F33C();
  sub_10016E884();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v1 = sub_1001F7BA8();
  v2 = sub_10016E890();
  sub_10016DED4(v2, v3, v1, v4, AssociatedTypeWitness, v5, &type metadata for ()[8], v6, v8);
}

uint64_t static NIOAtomic.makeAtomic(value:)(uint64_t a1)
{
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  sub_10016E884();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1001F7BB8();
  v10 = v4;
  v11 = v3;
  v12 = a1;
  sub_10016DED4(sub_10016E470, v9, v6, &type metadata for ()[8], AssociatedTypeWitness, &type metadata for Never, &type metadata for ()[8], &protocol witness table for Never, v8);
  sub_1001F7BC8();

  return swift_dynamicCastClassUnconditional();
}

uint64_t NIOAtomic.load()()
{
  sub_10012F33C();
  v1 = *(v0 + 80);
  sub_10016E884();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v3 = sub_1001F7BA8();
  v4 = sub_10016E890();
  sub_10016DED4(v4, v5, v3, v6, AssociatedTypeWitness, v7, v1, v8, v10);
}

uint64_t NIOAtomic.compareAndExchange(expected:desired:)(uint64_t a1, uint64_t a2)
{
  sub_10012F33C();
  v5 = *(v4 + 88);
  v7 = *(v6 + 80);
  sub_10016E884();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v9 = sub_1001F7BA8();
  v13 = v7;
  v14 = v5;
  v15 = a1;
  v16 = a2;
  sub_10016DED4(sub_10016E4C8, v12, v9, &type metadata for ()[8], AssociatedTypeWitness, &type metadata for Never, &type metadata for Bool, &protocol witness table for Never, v11);

  return v17;
}

uint64_t sub_10016DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 16))(a3, a4);
  v6(a1, a2);
}

uint64_t sub_10016DED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  result = __chkstk_darwin();
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v21 = *(v19 + 64);
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  v24 = *(*(v14 - 8) + 80);
  v25 = __CFADD__(v23, v24 + 1);
  v26 = v23 + v24 + 1;
  if (v25)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = v15(v13 + ((v26 - 1) & ~v24), &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v9)
  {
    return (*(v11 + 32))(a9, v17, a6);
  }

  return result;
}

uint64_t sub_10016E048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v10 = (*(a5 + 24))(a4, a5);
  LOBYTE(a3) = v10(a1, a2, a3);

  *a6 = a3 & 1;
  return result;
}

uint64_t sub_10016E0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 32))(a3, a4);
  v6(a1, a2);
}

uint64_t sub_10016E178(uint64_t a1, uint64_t a2)
{
  sub_10012F33C();
  v5 = *(v4 + 88);
  v7 = *(v6 + 80);
  sub_10016E884();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v9 = sub_1001F7BA8();
  v13 = v7;
  v14 = v5;
  v15 = a1;
  sub_10016DED4(a2, v12, v9, &type metadata for ()[8], AssociatedTypeWitness, &type metadata for Never, v7, &protocol witness table for Never, v11);
}

uint64_t sub_10016E264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 40))(a3, a4);
  v6(a1, a2);
}

uint64_t sub_10016E2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 48))(a3, a4);
  v6(a1, a2);
}

uint64_t sub_10016E36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 56))(a2, a3);
  v4(a1);
}

uint64_t sub_10016E3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 64))(a3, a4);
  v6(a1, a2);
}

uint64_t NIOAtomic.deinit()
{
  sub_10012F33C();
  sub_10016E884();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v2 = sub_1001F7BA8();
  v3 = sub_10016E890();
  sub_10016E678(v3, v4, v2, v5, AssociatedTypeWitness, v6, &type metadata for ()[8], v7, v9);

  return v0;
}

uint64_t sub_10016E678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  result = __chkstk_darwin();
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v21 = *(v19 + 64);
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  v24 = *(*(v14 - 8) + 80);
  v25 = __CFADD__(v23, v24 + 1);
  v26 = v23 + v24 + 1;
  if (v25)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = v15(v13 + v20, v13 + ((v26 - 1) & ~v24), v17);
  if (v9)
  {
    return (*(v11 + 32))(a9, v17, a6);
  }

  return result;
}

uint64_t NIOAtomic.__deallocating_deinit()
{
  NIOAtomic.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10016E8A0(char a1)
{
  v2 = *(v1 + 12);
  v7 = a1;
  ByteBuffer._setBytes(_:at:)(&v7, &v8, v2);
  v4 = *(v1 + 12);
  v5 = __CFADD__(v4, result);
  v6 = v4 + result;
  if (v5)
  {
    __break(1u);
  }

  *(v1 + 12) = v6;
  return result;
}

uint64_t sub_10016E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 56) = 0;
  return HTTPServerProtocolErrorHandler.deinit();
}

uint64_t sub_10016E930(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  v5 = *(v2 + 40);
  sub_1000183C4(&qword_1002B9618);
  v6 = swift_allocObject();
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(v6 + 16) = 0;
  *(v6 + 24) = -1;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  swift_retain_n();

  swift_unknownObjectRetain();
  sub_10011DFAC(v2, v2, v6, v8, v7);

  v9 = sub_100150924(v4, v5);
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = a1;
  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v11 = *(v9 + 40);
  v19 = v9;
  ObjectType = swift_getObjectType();
  v18 = *(v11 + 16);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v17 = ObjectType;
  if (v18(ObjectType, v11))
  {

    v13 = sub_10011A418(v9, v2, a1, v6, v7, v8);
    CallbackList._run()();
    sub_100037408(v13);
  }

  else
  {
    v14 = swift_allocObject();
    v14[2] = v19;
    v14[3] = sub_10017176C;
    v14[4] = v10;
    v15 = *(v11 + 24);

    v15(sub_100171E54, v14, v17, v11);
  }

  return v6;
}

uint64_t sub_10016EC64(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  v5 = *(v2 + 40);
  sub_1000183C4(&qword_1002B9610);
  v6 = swift_allocObject();
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(v6 + 16) = 0;
  *(v6 + 24) = -1;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  swift_retain_n();

  swift_unknownObjectRetain();
  sub_10011FE64(v2, v2, v6, v8, v7);

  v9 = sub_100150924(v4, v5);
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = a1;
  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v11 = *(v9 + 40);
  v19 = v9;
  ObjectType = swift_getObjectType();
  v18 = *(v11 + 16);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v17 = ObjectType;
  if (v18(ObjectType, v11))
  {

    v13 = sub_10011A468(v9, v2, a1, v6, v7, v8);
    CallbackList._run()();
    sub_100037408(v13);
  }

  else
  {
    v14 = swift_allocObject();
    v14[2] = v19;
    v14[3] = sub_10017176C;
    v14[4] = v10;
    v15 = *(v11 + 24);

    v15(sub_100047884, v14, v17, v11);
  }

  return v6;
}

uint64_t sub_10016EFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 812, ObjectType, v10);
  result = swift_beginAccess();
  v13 = *(a2 + 24);
  if (v13 == 255)
  {
    __break(1u);
  }

  else
  {
    v14 = *(a2 + 16);
    if (v13)
    {
      v15 = 1;
    }

    else
    {
      sub_10012ED00(v14, v13);
      swift_beginAccess();
      if (*(a4 + 16))
      {
        swift_beginAccess();
        result = 0;
        *(a5 + 16) = 0;
        return result;
      }

      v14 = 0;
      v15 = 0;
    }

    return a6(v14, v15);
  }

  return result;
}