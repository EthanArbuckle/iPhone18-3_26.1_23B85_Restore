uint64_t sub_101107804()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D4C8;

  return sub_1010F3210();
}

uint64_t sub_1011078B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_101107908(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_101107960(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002D4C8;

  return sub_1010D4FA4(a1, a2, v7, v6);
}

uint64_t sub_101107A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_101107A7C(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLFolder() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010D544C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_101107B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F33E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_101107C14()
{
  result = qword_101A2ADF0;
  if (!qword_101A2ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2ADF0);
  }

  return result;
}

uint64_t sub_101107D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_101107DB0(uint64_t a1)
{
  v2 = sub_101107F68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101107DEC(uint64_t a1)
{
  v2 = sub_101107F68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DebugData.encode(to:)(void *a1)
{
  v2 = sub_1005B981C(&qword_101A2ADF8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100020E58(a1, a1[3]);
  sub_101107F68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_101107F68()
{
  result = qword_101A2AE00;
  if (!qword_101A2AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AE00);
  }

  return result;
}

uint64_t DebugData.init(from:)(void *a1)
{
  v3 = sub_1005B981C(&qword_101A2AE08);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_100020E58(a1, a1[3]);
  sub_101107F68();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005070(a1);
  return v7;
}

uint64_t sub_101108118@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A2AE08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_100020E58(a1, a1[3]);
  sub_101107F68();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100005070(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_101108294(void *a1)
{
  v2 = sub_1005B981C(&qword_101A2ADF8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100020E58(a1, a1[3]);
  sub_101107F68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1011083E4()
{
  result = qword_101A2AE20;
  if (!qword_101A2AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AE20);
  }

  return result;
}

unint64_t sub_10110843C()
{
  result = qword_101A2AE28;
  if (!qword_101A2AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AE28);
  }

  return result;
}

unint64_t sub_101108494()
{
  result = qword_101A2AE30;
  if (!qword_101A2AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AE30);
  }

  return result;
}

id CRLRateLimiter.__allocating_init(intervalInSeconds:)(double a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC8Freeform14CRLRateLimiter_queue;
  sub_100618868();
  *&v3[v4] = static OS_dispatch_queue.main.getter();
  v5 = &v3[OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock];
  *v5 = 0;
  *(v5 + 1) = 0;
  static Date.distantPast.getter();
  *&v3[OBJC_IVAR____TtC8Freeform14CRLRateLimiter_interval] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, "init");
}

id CRLRateLimiter.init(intervalInSeconds:)(double a1)
{
  v3 = OBJC_IVAR____TtC8Freeform14CRLRateLimiter_queue;
  sub_100618868();
  *&v1[v3] = static OS_dispatch_queue.main.getter();
  v4 = &v1[OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock];
  *v4 = 0;
  *(v4 + 1) = 0;
  static Date.distantPast.getter();
  *&v1[OBJC_IVAR____TtC8Freeform14CRLRateLimiter_interval] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CRLRateLimiter();
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t type metadata accessor for CRLRateLimiter()
{
  result = qword_101A2AE80;
  if (!qword_101A2AE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CRLRateLimiter.exec(_:)(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v3 = v2;
  v53 = a1;
  v54 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v47 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  __chkstk_darwin(v7);
  v42 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = v39 - v11;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v39 - v17;
  sub_10098EABC(&_mh_execute_header, "exec(_:)", 8, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRateLimiter.swift", 85, 2, 31);
  Date.init()();
  v19 = OBJC_IVAR____TtC8Freeform14CRLRateLimiter_lastExecutionTime;
  swift_beginAccess();
  v41 = *(v13 + 16);
  v41(v15, v2 + v19, v12);
  Date.timeIntervalSince(_:)();
  v21 = v20;
  v22 = *(v13 + 8);
  v23 = v22(v15, v12);
  if (*(v2 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_interval) <= v21)
  {
    v53(v23);
    Date.init()();
    v22(v18, v12);
    swift_beginAccess();
    (*(v13 + 40))(v2 + v19, v15, v12);
    swift_endAccess();
    v29 = (v2 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v30 = *(v2 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    *v29 = 0;
    v29[1] = 0;
    return sub_1000C1014(v30);
  }

  else
  {
    v24 = v13 + 8;
    v40 = v18;
    v43 = v22;
    v25 = (v2 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v26 = *(v2 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v27 = v54;
    *v25 = v53;
    v25[1] = v27;

    sub_1000C1014(v26);
    if (v26)
    {
      return v43(v40, v12);
    }

    else
    {
      v54 = *(v3 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_queue);
      v31 = v42;
      static DispatchTime.now()();
      v41(v15, v3 + v19, v12);
      Date.timeIntervalSinceNow.getter();
      v39[1] = v24;
      v43(v15, v12);
      v32 = v44;
      + infix(_:_:)();
      v33 = *(v52 + 8);
      v52 += 8;
      v53 = v33;
      (v33)(v31, v51);
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_101108EFC;
      aBlock[5] = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018B1A68;
      v35 = _Block_copy(aBlock);

      v36 = v45;
      static DispatchQoS.unspecified.getter();
      v55 = _swiftEmptyArrayStorage;
      sub_1005D91D8();
      sub_1005B981C(&unk_1019FF400);
      sub_10000D494();
      v37 = v47;
      v38 = v50;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v35);
      (*(v49 + 8))(v37, v38);
      (*(v46 + 8))(v36, v48);
      (v53)(v32, v51);
      v43(v40, v12);
    }
  }
}

void sub_101108D88()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (Strong + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v7 = *(Strong + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    if (v7)
    {

      v7(v8);
      sub_1000C1014(v7);
      v9 = *v6;
    }

    else
    {
      v9 = 0;
    }

    *v6 = 0;
    v6[1] = 0;
    sub_1000C1014(v9);
    Date.init()();
    v10 = OBJC_IVAR____TtC8Freeform14CRLRateLimiter_lastExecutionTime;
    swift_beginAccess();
    (*(v1 + 40))(&v5[v10], v3, v0);
    swift_endAccess();
  }
}

id CRLRateLimiter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLRateLimiter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1011090A0()
{
  result = type metadata accessor for Date();
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

uint64_t sub_101109158(uint64_t a1, void (**a2)(void))
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchTime();
  v41 = *(v49 - 8);
  __chkstk_darwin(v49);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v48 = &v37 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = swift_allocObject();
  v50 = a2;
  v51 = v17;
  *(v17 + 16) = a2;
  _Block_copy(a2);
  sub_10098EABC(&_mh_execute_header, "exec(_:)", 8, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRateLimiter.swift", 85, 2, 31);
  Date.init()();
  v18 = OBJC_IVAR____TtC8Freeform14CRLRateLimiter_lastExecutionTime;
  swift_beginAccess();
  v19 = *(v11 + 16);
  v19(v13, a1 + v18, v10);
  Date.timeIntervalSince(_:)();
  v21 = v20;
  v22 = *(v11 + 8);
  (v22)(v13, v10);
  if (*(a1 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_interval) <= v21)
  {
    v50[2]();
    Date.init()();
    (v22)(v16, v10);
    swift_beginAccess();
    (*(v11 + 40))(a1 + v18, v13, v10);
    swift_endAccess();
    v27 = (a1 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v28 = *(a1 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    *v27 = 0;
    v27[1] = 0;
    sub_1000C1014(v28);
  }

  else
  {
    v23 = v10;
    v50 = v22;
    v39 = v16;
    v24 = (a1 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v25 = *(a1 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
    v26 = v51;
    *v24 = sub_100685EBC;
    v24[1] = v26;

    sub_1000C1014(v25);
    if (v25)
    {
      (v50)(v39, v23);
    }

    else
    {
      v37 = *(a1 + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_queue);
      v29 = v40;
      static DispatchTime.now()();
      v38 = v23;
      v19(v13, a1 + v18, v23);
      Date.timeIntervalSinceNow.getter();
      (v50)(v13, v23);
      + infix(_:_:)();
      v41 = *(v41 + 8);
      (v41)(v29, v49);
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_101109804;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018B1AB8;
      v31 = _Block_copy(aBlock);

      v32 = v42;
      static DispatchQoS.unspecified.getter();
      v52 = _swiftEmptyArrayStorage;
      sub_1005D91D8();
      sub_1005B981C(&unk_1019FF400);
      sub_10000D494();
      v33 = v44;
      v34 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v35 = v48;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v31);
      (*(v46 + 8))(v33, v34);
      (*(v43 + 8))(v32, v45);
      (v41)(v35, v49);
      (v50)(v39, v38);
    }
  }
}

uint64_t sub_101109810(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[2])
  {
    if ((a2[2] & 1) == 0 || *&v3 != *&v4)
    {
      return 0;
    }
  }

  else
  {
    if (a2[2])
    {
      return 0;
    }

    v6 = a1[1];
    if (v3 != v4 || v6 != a2[1])
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return 1;
}

void *sub_101109874()
{
  sub_1007CF0A8(v0, v25);
  sub_1007CF0A8(v0, v26);
  sub_100017CD8();

  v1 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  sub_101109EB4(v0);
  v2 = *(v1 + 16);
  if (!v2)
  {

    return _swiftEmptyArrayStorage;
  }

  v27 = _swiftEmptyArrayStorage;
  result = sub_1007764E4(0, v2, 0);
  v4 = 0;
  v5 = v27;
  v6 = v1 + 56;
  v22 = v1;
  while (v4 < *(v1 + 16))
  {
    v23 = v5;
    v7 = *(v6 - 24);
    v5 = *(v6 - 16);
    __chkstk_darwin(result);
    swift_bridgeObjectRetain_n();
    v8 = static String._fromSubstring(_:)();
    if ((v9 & 0x1000000000000000) == 0)
    {
      if ((v9 & 0x2000000000000000) != 0)
      {
        if (v8 >= 0x21u || ((0x100003E01uLL >> v8) & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_14;
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        if (v10 >= 0x21 || ((0x100003E01uLL >> v10) & 1) == 0)
        {
LABEL_12:
          v11 = _swift_stdlib_strtof_clocale();
          if (v11)
          {
            v24 = *v11 == 0;
            goto LABEL_15;
          }
        }

LABEL_14:
        v24 = 0;
        goto LABEL_15;
      }
    }

    _StringGuts._slowWithCString<A>(_:)();
LABEL_15:

    if (v24)
    {
      result = swift_bridgeObjectRelease_n();
      v12 = 0;
      v13 = 0;
    }

    else
    {
      if (Substring.distance(from:to:)() != 1)
      {

        sub_1007B2110();
        v18 = String.init<A>(_:)();
        v20 = v19;
        sub_101109F88();
        swift_allocError();
        *v21 = v18;
        v21[1] = v20;
        swift_willThrow();

        return v5;
      }

      if ((v5 ^ v7) < 0x4000)
      {
        goto LABEL_29;
      }

      v13 = Substring.subscript.getter();
      v12 = v14;
    }

    v5 = v23;
    v27 = v23;
    v16 = v23[2];
    v15 = v23[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_1007764E4((v15 > 1), v16 + 1, 1);
      v5 = v27;
    }

    ++v4;
    *(v5 + 16) = v16 + 1;
    v17 = (v5 + 24 * v16);
    v17[4] = v13;
    v17[5] = v12;
    *(v17 + 48) = v24;
    v6 += 32;
    v1 = v22;
    if (v2 == v4)
    {

      return v5;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t TSContentLanguage.Models.Path.isEquivalent(to:)()
{
  v0 = sub_101109874();
  v1 = sub_101109874();
  if (v0)
  {
    if (v1)
    {
      v2 = sub_100B5E638(v1, v0);

      return v2 & 1;
    }
  }

  else if (!v1)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_101109CE4(uint64_t a1)
{
  sub_1007CF0A8(a1, &v3);
  sub_1007CF0A8(v1, v4);
  return TSContentLanguage.Models.Path.isEquivalent(to:)() & 1;
}

uint64_t sub_101109D2C(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *v1;
  if (v1[2])
  {
    if (v4)
    {
      return sub_1007C87EC(*&v5, *&v3);
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

  if (v5 == v3 && v1[1] == a1[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO4PathO2eeoiySbAG_AGtFZ_0()
{
  v0 = sub_101109874();
  v1 = sub_101109874();
  if (v0)
  {
    if (v1)
    {
      v2 = sub_100673210(v0, v1);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 1;
      return v2 & 1;
    }

    v2 = 0;
  }

  return v2 & 1;
}

_BYTE *sub_101109F08@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_101109F88()
{
  result = qword_101A2AE90;
  if (!qword_101A2AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AE90);
  }

  return result;
}

uint64_t sub_101109FF8(uint64_t a1, unsigned int a2)
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

uint64_t sub_10110A040(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10110A0A4(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A2AF00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33[-v6];
  sub_100020E58(a1, a1[3]);
  sub_10110BAF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[11];
  v9 = v2[13];
  v81 = v2[12];
  v82 = v9;
  v10 = v2[7];
  v11 = v2[9];
  v77 = v2[8];
  v78 = v11;
  v12 = v2[9];
  v13 = v2[11];
  v79 = v2[10];
  v80 = v13;
  v14 = v2[3];
  v15 = v2[5];
  v73 = v2[4];
  v74 = v15;
  v16 = v2[5];
  v17 = v2[7];
  v75 = v2[6];
  v76 = v17;
  v18 = v2[1];
  v70[0] = *v2;
  v70[1] = v18;
  v19 = v2[3];
  v21 = *v2;
  v20 = v2[1];
  v71 = v2[2];
  v72 = v19;
  v22 = v2[13];
  v60 = v81;
  v61 = v22;
  v56 = v77;
  v57 = v12;
  v58 = v79;
  v59 = v8;
  v52 = v73;
  v53 = v16;
  v54 = v75;
  v55 = v10;
  v48 = v21;
  v49 = v20;
  v83 = *(v2 + 28);
  v62 = *(v2 + 28);
  v50 = v71;
  v51 = v14;
  v47 = 0;
  sub_10000BE14(v70, v45, &unk_101A106C0);
  sub_100B93B78();
  v23 = v84;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v45[12] = v60;
  v45[13] = v61;
  v46 = v62;
  v45[8] = v56;
  v45[9] = v57;
  v45[10] = v58;
  v45[11] = v59;
  v45[4] = v52;
  v45[5] = v53;
  v45[6] = v54;
  v45[7] = v55;
  v45[0] = v48;
  v45[1] = v49;
  v45[2] = v50;
  v45[3] = v51;
  sub_10000CAAC(v45, &unk_101A106C0);
  if (!v23)
  {
    v24 = *(v2 + 312);
    v25 = *(v2 + 280);
    v66 = *(v2 + 296);
    v67 = v24;
    v26 = *(v2 + 312);
    v27 = *(v2 + 344);
    v68 = *(v2 + 328);
    v69 = v27;
    v28 = *(v2 + 248);
    v63[0] = *(v2 + 232);
    v63[1] = v28;
    v29 = *(v2 + 280);
    v64 = *(v2 + 264);
    v65 = v29;
    v41 = v66;
    v42 = v26;
    v30 = *(v2 + 344);
    v43 = v68;
    v44 = v30;
    v31 = *(v2 + 248);
    v37 = *(v2 + 232);
    v38 = v31;
    v39 = v64;
    v40 = v25;
    v36 = 1;
    sub_10000BE14(v63, v35, &unk_101A09DE0);
    sub_100A721E0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v35[4] = v41;
    v35[5] = v42;
    v35[6] = v43;
    v35[7] = v44;
    v35[0] = v37;
    v35[1] = v38;
    v35[2] = v39;
    v35[3] = v40;
    sub_10000CAAC(v35, &unk_101A09DE0);
    LOBYTE(v34) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v34 = *(v2 + 46);
    v33[7] = 3;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Int sub_10110A50C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014C6C20[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10110A594()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014C6C20[v1]);
  return Hasher._finalize()();
}

unint64_t sub_10110A5F8()
{
  v1 = 0x6144656B6F727473;
  v2 = 0x615272656E726F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6144776F64616873;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10110A680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10110BCB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10110A6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10110BA9C();
  v5 = sub_10110BAF4();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_10110A728(uint64_t a1)
{
  v2 = sub_10110BAF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10110A764(uint64_t a1)
{
  v2 = sub_10110BAF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10110A7A8(uint64_t a1)
{

  *(v1 + 368) = a1;
  return result;
}

uint64_t sub_10110A7F4(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_10110A0A0(v4, __dst) & 1;
}

void *sub_10110A84C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10110BE38(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x178uLL);
  }

  return result;
}

uint64_t sub_10110A8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10110C280();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10110A904(uint64_t a1, uint64_t a2)
{
  v4 = sub_10110C280();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10110A958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10110B98C();
  v7 = sub_10110C2D4();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_10110A9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10110C280();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_10110AAAC(uint64_t a1)
{
  v2 = sub_10110BC64();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_10110AAF8(__int128 *a1, __int128 *a2)
{
  v4 = a1[11];
  v5 = a1[13];
  v220 = a1[12];
  v221 = v5;
  v6 = a1[7];
  v7 = a1[9];
  v216 = a1[8];
  v217 = v7;
  v9 = a1[9];
  v8 = a1[10];
  v10 = v8;
  v219 = a1[11];
  v218 = v8;
  v11 = a1[3];
  v12 = a1[5];
  v212 = a1[4];
  v213 = v12;
  v13 = a1[5];
  v14 = a1[6];
  v15 = v14;
  v215 = a1[7];
  v214 = v14;
  v16 = a1[1];
  v211[0] = *a1;
  v211[1] = v16;
  v17 = a1[2];
  v18 = *a1;
  v19 = a1[1];
  v20 = v17;
  v211[3] = a1[3];
  v211[2] = v17;
  v21 = a2[11];
  v22 = a2[13];
  v208 = a2[12];
  v209 = v22;
  v23 = a2[7];
  v24 = a2[9];
  v204 = a2[8];
  v205 = v24;
  v26 = a2[9];
  v25 = a2[10];
  v27 = v25;
  v207 = a2[11];
  v206 = v25;
  v28 = a2[3];
  v29 = a2[5];
  v200 = a2[4];
  v201 = v29;
  v31 = a2[5];
  v30 = a2[6];
  v32 = v30;
  v203 = a2[7];
  v202 = v30;
  v33 = a2[1];
  v34 = v33;
  v199[0] = *a2;
  v199[1] = v33;
  v35 = a2[2];
  v199[3] = a2[3];
  v199[2] = v35;
  v36 = a1[11];
  v37 = a1[13];
  __src[12] = a1[12];
  __src[13] = v37;
  v38 = a1[7];
  v39 = a1[9];
  __src[8] = a1[8];
  __src[9] = v39;
  v40 = a1[10];
  __src[11] = v36;
  __src[10] = v40;
  v41 = a1[3];
  v42 = a1[5];
  __src[4] = a1[4];
  __src[5] = v42;
  v43 = a1[6];
  __src[7] = v38;
  __src[6] = v43;
  v44 = a1[1];
  __src[0] = *a1;
  __src[1] = v44;
  v45 = a1[2];
  __src[3] = v41;
  __src[2] = v45;
  v46 = a2[13];
  *(&__src[26] + 8) = v208;
  *(&__src[27] + 8) = v46;
  *(&__src[22] + 8) = v204;
  *(&__src[23] + 8) = v26;
  *(&__src[24] + 8) = v27;
  *(&__src[25] + 8) = v21;
  *(&__src[18] + 8) = v200;
  *(&__src[19] + 8) = v31;
  *(&__src[20] + 8) = v32;
  *(&__src[21] + 8) = v23;
  *(&__src[16] + 8) = v35;
  *(&__src[17] + 8) = v28;
  *(&__src[14] + 8) = v199[0];
  *(&__src[15] + 8) = v34;
  v47 = a1[13];
  v240[12] = v220;
  v240[13] = v47;
  v240[8] = v216;
  v240[9] = v9;
  v240[11] = v4;
  v240[10] = v10;
  v240[4] = v212;
  v240[5] = v13;
  v240[7] = v6;
  v240[6] = v15;
  v240[0] = v18;
  v240[1] = v19;
  v222 = *(a1 + 28);
  v210 = *(a2 + 28);
  v48 = *(a2 + 28);
  *&__src[14] = *(a1 + 28);
  *(&__src[28] + 1) = v48;
  v241 = *(a1 + 28);
  v240[3] = v11;
  v240[2] = v20;
  if (sub_1000C0FB4(v240) == 1)
  {
    v49 = a2[13];
    __dst[12] = a2[12];
    __dst[13] = v49;
    *&__dst[14] = *(a2 + 28);
    v50 = a2[9];
    __dst[8] = a2[8];
    __dst[9] = v50;
    v51 = a2[10];
    __dst[11] = a2[11];
    __dst[10] = v51;
    v52 = a2[5];
    __dst[4] = a2[4];
    __dst[5] = v52;
    v53 = a2[6];
    __dst[7] = a2[7];
    __dst[6] = v53;
    v54 = a2[1];
    __dst[0] = *a2;
    __dst[1] = v54;
    v55 = a2[2];
    __dst[3] = a2[3];
    __dst[2] = v55;
    if (sub_1000C0FB4(__dst) == 1)
    {
      v56 = a1[13];
      v237 = a1[12];
      v238 = v56;
      v239 = *(a1 + 28);
      v57 = a1[9];
      v233 = a1[8];
      v234 = v57;
      v58 = a1[10];
      v236 = a1[11];
      v235 = v58;
      v59 = a1[5];
      v229 = a1[4];
      v230 = v59;
      v60 = a1[6];
      v232 = a1[7];
      v231 = v60;
      v61 = a1[1];
      v225 = *a1;
      v226 = v61;
      v62 = a1[2];
      v228 = a1[3];
      v227 = v62;
      sub_10000BE14(v211, v223, &unk_101A106C0);
      sub_10000BE14(v199, v223, &unk_101A106C0);
      sub_10000CAAC(&v225, &unk_101A106C0);
      goto LABEL_7;
    }

LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    sub_10000BE14(v211, &v225, &unk_101A106C0);
    sub_10000BE14(v199, &v225, &unk_101A106C0);
    v70 = &unk_1019F5EE0;
LABEL_12:
    sub_10000CAAC(__dst, v70);
    goto LABEL_13;
  }

  v63 = a2[13];
  __dst[12] = a2[12];
  __dst[13] = v63;
  *&__dst[14] = *(a2 + 28);
  v64 = a2[9];
  __dst[8] = a2[8];
  __dst[9] = v64;
  v65 = a2[10];
  __dst[11] = a2[11];
  __dst[10] = v65;
  v66 = a2[5];
  __dst[4] = a2[4];
  __dst[5] = v66;
  v67 = a2[6];
  __dst[7] = a2[7];
  __dst[6] = v67;
  v68 = a2[1];
  __dst[0] = *a2;
  __dst[1] = v68;
  v69 = a2[2];
  __dst[3] = a2[3];
  __dst[2] = v69;
  if (sub_1000C0FB4(__dst) == 1)
  {
    goto LABEL_5;
  }

  v71 = a2[11];
  v72 = a2[13];
  v168 = a2[12];
  v169 = v72;
  v73 = a2[7];
  v74 = a2[9];
  v164 = a2[8];
  v165 = v74;
  v75 = a2[9];
  v76 = a2[11];
  v166 = a2[10];
  v167 = v76;
  v77 = a2[3];
  v78 = a2[5];
  v160 = a2[4];
  v161 = v78;
  v79 = a2[5];
  v80 = a2[7];
  v162 = a2[6];
  v163 = v80;
  v81 = a2[1];
  v156 = *a2;
  v157 = v81;
  v82 = a2[3];
  v84 = *a2;
  v83 = a2[1];
  v158 = a2[2];
  v159 = v82;
  v85 = a2[13];
  v237 = v168;
  v238 = v85;
  v233 = v164;
  v234 = v75;
  v236 = v71;
  v235 = v166;
  v229 = v160;
  v230 = v79;
  v232 = v73;
  v231 = v162;
  v225 = v84;
  v226 = v83;
  v170 = *(a2 + 28);
  v239 = *(a2 + 28);
  v228 = v77;
  v227 = v158;
  v86 = a1[13];
  v223[12] = a1[12];
  v223[13] = v86;
  v224 = *(a1 + 28);
  v87 = a1[9];
  v223[8] = a1[8];
  v223[9] = v87;
  v88 = a1[10];
  v223[11] = a1[11];
  v223[10] = v88;
  v89 = a1[5];
  v223[4] = a1[4];
  v223[5] = v89;
  v90 = a1[6];
  v223[7] = a1[7];
  v223[6] = v90;
  v91 = a1[1];
  v223[0] = *a1;
  v223[1] = v91;
  v92 = a1[2];
  v223[3] = a1[3];
  v223[2] = v92;
  sub_10000BE14(v211, &v171, &unk_101A106C0);
  sub_10000BE14(v199, &v171, &unk_101A106C0);
  v93 = sub_100B931E0(v223, &v225);
  sub_10000CAAC(&v156, &unk_101A106C0);
  v94 = a1[13];
  v183 = a1[12];
  v184 = v94;
  v185 = *(a1 + 28);
  v95 = a1[9];
  v179 = a1[8];
  v180 = v95;
  v96 = a1[11];
  v181 = a1[10];
  v182 = v96;
  v97 = a1[5];
  v175 = a1[4];
  v176 = v97;
  v98 = a1[7];
  v177 = a1[6];
  v178 = v98;
  v99 = a1[1];
  v171 = *a1;
  v172 = v99;
  v100 = a1[3];
  v173 = a1[2];
  v174 = v100;
  sub_10000CAAC(&v171, &unk_101A106C0);
  if ((v93 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v101 = (a1 + 232);
  v102 = *(a1 + 248);
  v156 = *(a1 + 232);
  v157 = v102;
  v103 = *(a1 + 280);
  v104 = *(a1 + 312);
  v160 = *(a1 + 296);
  v161 = v104;
  v105 = *(a1 + 312);
  v106 = *(a1 + 344);
  v162 = *(a1 + 328);
  v163 = v106;
  v107 = *(a1 + 280);
  v158 = *(a1 + 264);
  v159 = v107;
  v108 = (a2 + 232);
  v109 = *(a2 + 232);
  v110 = *(a2 + 248);
  v111 = *(a2 + 264);
  v198[3] = *(a2 + 280);
  v198[2] = v111;
  v198[1] = v110;
  v198[0] = v109;
  v113 = *(a2 + 312);
  v112 = *(a2 + 328);
  v114 = v112;
  v198[7] = *(a2 + 344);
  v198[6] = v112;
  v115 = *(a2 + 296);
  v117 = *(a2 + 264);
  v116 = *(a2 + 280);
  v118 = v115;
  v198[5] = *(a2 + 312);
  v198[4] = v115;
  v119 = *(a1 + 312);
  __src[4] = *(a1 + 296);
  __src[5] = v119;
  v120 = *(a1 + 344);
  __src[6] = *(a1 + 328);
  __src[7] = v120;
  v121 = *(a1 + 248);
  __src[0] = *(a1 + 232);
  __src[1] = v121;
  v122 = *(a1 + 280);
  __src[2] = *(a1 + 264);
  __src[3] = v122;
  v123 = *(a2 + 232);
  __src[11] = v116;
  __src[10] = v117;
  __src[9] = *(a2 + 248);
  __src[8] = v123;
  __src[15] = *(a2 + 344);
  __src[14] = v114;
  __src[13] = v113;
  __src[12] = v118;
  v124 = *(a1 + 232);
  v195[2] = v158;
  v195[3] = v103;
  v125 = *(a1 + 248);
  v195[0] = v124;
  v195[1] = v125;
  v126 = *(a1 + 344);
  v195[6] = v162;
  v195[7] = v126;
  v195[4] = v160;
  v195[5] = v105;
  if (sub_10074A978(v195) != 1)
  {
    v135 = *(a2 + 312);
    v194[4] = *(a2 + 296);
    v194[5] = v135;
    v136 = *(a2 + 344);
    v194[6] = *(a2 + 328);
    v194[7] = v136;
    v137 = *(a2 + 248);
    v194[0] = *v108;
    v194[1] = v137;
    v138 = *(a2 + 280);
    v194[2] = *(a2 + 264);
    v194[3] = v138;
    if (sub_10074A978(v194) != 1)
    {
      v141 = *(a2 + 312);
      v189 = *(a2 + 296);
      v190 = v141;
      v142 = *(a2 + 344);
      v191 = *(a2 + 328);
      v192 = v142;
      v143 = *(a2 + 248);
      v186[0] = *v108;
      v186[1] = v143;
      v144 = *(a2 + 280);
      v187 = *(a2 + 264);
      v188 = v144;
      __dst[3] = v144;
      __dst[1] = v143;
      __dst[2] = v187;
      __dst[0] = v186[0];
      __dst[7] = v142;
      __dst[6] = v191;
      __dst[5] = v141;
      __dst[4] = v189;
      v145 = *v101;
      v146 = *(a1 + 248);
      v147 = *(a1 + 280);
      v173 = *(a1 + 264);
      v174 = v147;
      v171 = v145;
      v172 = v146;
      v148 = *(a1 + 296);
      v149 = *(a1 + 312);
      v150 = *(a1 + 344);
      v177 = *(a1 + 328);
      v178 = v150;
      v175 = v148;
      v176 = v149;
      sub_10000BE14(&v156, v193, &unk_101A09DE0);
      sub_10000BE14(v198, v193, &unk_101A09DE0);
      v151 = sub_100A71A74(&v171, __dst);
      sub_10000CAAC(v186, &unk_101A09DE0);
      v152 = *(a1 + 312);
      v193[4] = *(a1 + 296);
      v193[5] = v152;
      v153 = *(a1 + 344);
      v193[6] = *(a1 + 328);
      v193[7] = v153;
      v154 = *(a1 + 248);
      v193[0] = *v101;
      v193[1] = v154;
      v155 = *(a1 + 280);
      v193[2] = *(a1 + 264);
      v193[3] = v155;
      sub_10000CAAC(v193, &unk_101A09DE0);
      if ((v151 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v127 = *(a2 + 312);
  __dst[4] = *(a2 + 296);
  __dst[5] = v127;
  v128 = *(a2 + 344);
  __dst[6] = *(a2 + 328);
  __dst[7] = v128;
  v129 = *(a2 + 248);
  __dst[0] = *v108;
  __dst[1] = v129;
  v130 = *(a2 + 280);
  __dst[2] = *(a2 + 264);
  __dst[3] = v130;
  if (sub_10074A978(__dst) != 1)
  {
LABEL_11:
    __dst[12] = __src[12];
    __dst[13] = __src[13];
    __dst[14] = __src[14];
    __dst[15] = __src[15];
    __dst[8] = __src[8];
    __dst[9] = __src[9];
    __dst[10] = __src[10];
    __dst[11] = __src[11];
    __dst[4] = __src[4];
    __dst[5] = __src[5];
    __dst[6] = __src[6];
    __dst[7] = __src[7];
    __dst[0] = __src[0];
    __dst[1] = __src[1];
    __dst[2] = __src[2];
    __dst[3] = __src[3];
    sub_10000BE14(&v156, &v171, &unk_101A09DE0);
    sub_10000BE14(v198, &v171, &unk_101A09DE0);
    v70 = &unk_1019FDFA8;
    goto LABEL_12;
  }

  v131 = *(a1 + 312);
  v175 = *(a1 + 296);
  v176 = v131;
  v132 = *(a1 + 344);
  v177 = *(a1 + 328);
  v178 = v132;
  v133 = *(a1 + 248);
  v171 = *v101;
  v172 = v133;
  v134 = *(a1 + 280);
  v173 = *(a1 + 264);
  v174 = v134;
  sub_10000BE14(&v156, v194, &unk_101A09DE0);
  sub_10000BE14(v198, v194, &unk_101A09DE0);
  sub_10000CAAC(&v171, &unk_101A09DE0);
LABEL_16:
  if (*(a1 + 90) == *(a2 + 90))
  {
    v139 = sub_100B3216C(*(a1 + 46), *(a2 + 46));
    return v139 & 1;
  }

LABEL_13:
  v139 = 0;
  return v139 & 1;
}

unint64_t sub_10110B468(__int128 *a1)
{
  v2 = v1;
  v26 = type metadata accessor for UUID();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _swiftEmptyArrayStorage;
  v7 = a1[13];
  v42 = a1[12];
  v43 = v7;
  v44 = *(a1 + 28);
  v8 = a1[9];
  v38 = a1[8];
  v39 = v8;
  v9 = a1[11];
  v40 = a1[10];
  v41 = v9;
  v10 = a1[5];
  v34 = a1[4];
  v35 = v10;
  v11 = a1[7];
  v36 = a1[6];
  v37 = v11;
  v12 = a1[1];
  v30 = *a1;
  v31 = v12;
  v13 = a1[3];
  v32 = a1[2];
  v33 = v13;
  v14 = 0;
  if (sub_1000C0FB4(&v30) != 1)
  {
    v28[12] = v42;
    v28[13] = v43;
    v29 = v44;
    v28[8] = v38;
    v28[9] = v39;
    v28[10] = v40;
    v28[11] = v41;
    v28[4] = v34;
    v28[5] = v35;
    v28[6] = v36;
    v28[7] = v37;
    v28[0] = v30;
    v28[1] = v31;
    v28[2] = v32;
    v28[3] = v33;
    v14 = sub_100B946C8(v28, 0);
  }

  v15 = objc_allocWithZone(type metadata accessor for CRLCommandSetStroke());
  v16 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  (*(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v25 = v2;
  v18 = *(v4 + 8);
  v19 = v26;
  v18(v6, v26);
  [v15 initWithId:isa stroke:v14];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v20 = sub_100CE4144();
  v21 = objc_allocWithZone(type metadata accessor for CRLCommandSetShadow());
  (*(**(v25 + v16) + 264))();
  v22 = UUID._bridgeToObjectiveC()().super.isa;
  v18(v6, v19);
  [v21 initWithId:v22 shadow:v20];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v27;
}

uint64_t sub_10110B7E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 376))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 368);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10110B828(uint64_t result, int a2, int a3)
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 376) = 1;
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
      *(result + 368) = (a2 - 1);
      return result;
    }

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10110B8DC()
{
  result = qword_101A2AE98;
  if (!qword_101A2AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AE98);
  }

  return result;
}

unint64_t sub_10110B934()
{
  result = qword_101A2AEA0;
  if (!qword_101A2AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AEA0);
  }

  return result;
}

unint64_t sub_10110B98C()
{
  result = qword_101A2AEA8;
  if (!qword_101A2AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AEA8);
  }

  return result;
}

unint64_t sub_10110B9EC()
{
  result = qword_101A2AEB0;
  if (!qword_101A2AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AEB0);
  }

  return result;
}

unint64_t sub_10110BA44()
{
  result = qword_101A2AEB8;
  if (!qword_101A2AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AEB8);
  }

  return result;
}

unint64_t sub_10110BA9C()
{
  result = qword_101A2AEC0;
  if (!qword_101A2AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AEC0);
  }

  return result;
}

unint64_t sub_10110BAF4()
{
  result = qword_101A2AEC8;
  if (!qword_101A2AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AEC8);
  }

  return result;
}

unint64_t sub_10110BB4C()
{
  result = qword_101A2AED0;
  if (!qword_101A2AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AED0);
  }

  return result;
}

unint64_t sub_10110BBA4()
{
  result = qword_101A2AED8;
  if (!qword_101A2AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AED8);
  }

  return result;
}

unint64_t sub_10110BBFC()
{
  result = qword_101A2AEE0;
  if (!qword_101A2AEE0)
  {
    sub_1005C4E5C(&qword_101A2AEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AEE0);
  }

  return result;
}

unint64_t sub_10110BC64()
{
  result = qword_101A2AEF0;
  if (!qword_101A2AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AEF0);
  }

  return result;
}

uint64_t sub_10110BCB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144656B6F727473 && a2 == 0xEA00000000006174;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144776F64616873 && a2 == 0xEA00000000006174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_10110BE38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A2AEF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  v9 = a1[3];
  v15 = a1;
  sub_100020E58(a1, v9);
  sub_10110BAF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(v15);
  }

  v31 = 0;
  sub_100B93B20();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v47[12] = v44;
  v47[13] = v45;
  *&v47[14] = v46;
  v47[8] = v40;
  v47[9] = v41;
  v47[11] = v43;
  v47[10] = v42;
  v47[4] = v36;
  v47[5] = v37;
  v47[7] = v39;
  v47[6] = v38;
  v47[0] = v32;
  v47[1] = v33;
  v47[3] = v35;
  v47[2] = v34;
  v22 = 1;
  sub_100A72188();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v47[18] + 8) = v27;
  *(&v47[19] + 8) = v28;
  *(&v47[20] + 8) = v29;
  *(&v47[21] + 8) = v30;
  *(&v47[16] + 8) = v25;
  *(&v47[17] + 8) = v26;
  *(&v47[14] + 8) = v23;
  *(&v47[15] + 8) = v24;
  v17[0] = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  sub_1005B981C(&unk_101A0D960);
  v20 = 3;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v12 = v21;
  memcpy(v16, v47, 0x168uLL);
  LODWORD(v16[45]) = v11;
  v16[46] = v21;
  sub_100CE4F64(v16, v17);
  sub_100005070(v15);
  memcpy(v17, v47, sizeof(v17));
  v18 = v11;
  v19 = v12;
  sub_100CE4ED8(v17);
  return memcpy(a2, v16, 0x178uLL);
}

unint64_t sub_10110C280()
{
  result = qword_101A2AF08;
  if (!qword_101A2AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AF08);
  }

  return result;
}

unint64_t sub_10110C2D4()
{
  result = qword_101A2AF10;
  if (!qword_101A2AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AF10);
  }

  return result;
}

unint64_t sub_10110C33C()
{
  result = qword_101A2AF18;
  if (!qword_101A2AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2AF18);
  }

  return result;
}

uint64_t sub_10110C390()
{
  v0 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v0 - 8);
  v2 = v13 - v1;
  v3 = sub_10057DBD4(0);
  v5 = [objc_opt_self() pathSourceForShapeType:0 naturalSize:{v3, v4}];
  v6 = objc_allocWithZone(NSAttributedString);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithString:v7];

  v9 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  sub_1006950BC(v15);
  v13[12] = v15[12];
  v13[13] = v15[13];
  v13[14] = v15[14];
  v14 = v16;
  v13[8] = v15[8];
  v13[9] = v15[9];
  v13[10] = v15[10];
  v13[11] = v15[11];
  v13[4] = v15[4];
  v13[5] = v15[5];
  v13[6] = v15[6];
  v13[7] = v15[7];
  v13[0] = v15[0];
  v13[1] = v15[1];
  v13[2] = v15[2];
  v13[3] = v15[3];
  v10 = v5;
  v11 = v8;
  sub_1011133FC(0, 0, v5, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, v8, v2, v13, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v2, &unk_101A0B1C0);
  type metadata accessor for CRLWPShapeItem();
  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_10110C60C()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform12CRLBoardItem_transactionContext))
  {
    return 1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v2 = Strong;
  v3 = (*((swift_isaMask & *Strong) + 0x388))();

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  v5 = objc_opt_self();
  v6 = [v5 _atomicIncrementAssertCount];
  v30 = [objc_allocWithZone(NSString) init];
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
  v15 = sub_100006370(0, &qword_1019F4D30);
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
  *(inited + 152) = 79;
  v18 = v30;
  *(inited + 216) = v15;
  *(inited + 224) = v16;
  *(inited + 192) = v18;
  v19 = v7;
  v20 = v18;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v22 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v22, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set");
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

  [v5 handleFailureInFunction:v25 file:v26 lineNumber:79 isFatal:1 format:v27 args:v24];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v28, v29);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10110CA3C()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform12CRLBoardItem_transactionContext) || ((*((swift_isaMask & *v0) + 0x388))() & 1) == 0)
  {
    return 1;
  }

  v2 = objc_opt_self();
  v3 = [v2 _atomicIncrementAssertCount];
  v27 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v27);
  StaticString.description.getter();
  v4 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v5 = String._bridgeToObjectiveC()();

  v6 = [v5 lastPathComponent];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v3;
  v12 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v12;
  v13 = sub_1005CF04C();
  *(inited + 104) = v13;
  *(inited + 72) = v4;
  *(inited + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 112) = v7;
  *(inited + 120) = v9;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v14;
  *(inited + 152) = 79;
  v15 = v27;
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  *(inited + 192) = v15;
  v16 = v4;
  v17 = v15;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v19 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v19, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set");
  type metadata accessor for __VaListBuilder();
  v20 = swift_allocObject();
  v20[2] = 8;
  v20[3] = 0;
  v20[4] = 0;
  v20[5] = 0;
  v21 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v23 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v24 = String._bridgeToObjectiveC()();

  [v2 handleFailureInFunction:v22 file:v23 lineNumber:79 isFatal:1 format:v24 args:v21];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v25, v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10110CE4C()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_transactionContext))
  {
    return 1;
  }

  v2 = objc_opt_self();
  v3 = [v2 _atomicIncrementAssertCount];
  v27 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v27);
  StaticString.description.getter();
  v4 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v5 = String._bridgeToObjectiveC()();

  v6 = [v5 lastPathComponent];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v3;
  v12 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v12;
  v13 = sub_1005CF04C();
  *(inited + 104) = v13;
  *(inited + 72) = v4;
  *(inited + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 112) = v7;
  *(inited + 120) = v9;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v14;
  *(inited + 152) = 79;
  v15 = v27;
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  *(inited + 192) = v15;
  v16 = v4;
  v17 = v15;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v19 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v19, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set");
  type metadata accessor for __VaListBuilder();
  v20 = swift_allocObject();
  v20[2] = 8;
  v20[3] = 0;
  v20[4] = 0;
  v20[5] = 0;
  v21 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v23 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v24 = String._bridgeToObjectiveC()();

  [v2 handleFailureInFunction:v22 file:v23 lineNumber:79 isFatal:1 format:v24 args:v21];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v25, v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10110D21C(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLGroupItem();
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v11 = *(v10 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v10 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  v12 = objc_allocWithZone(v9);
  v13 = v11;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v15 = [v12 initWithStore:v13 parentContainerUUID:isa geometry:a1];

  (*(v6 + 8))(v8, v5);
  v16 = v18[1];
  sub_10097A374(a2);
  if (v16)
  {
  }

  return v15;
}

uint64_t sub_10110D3E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_10057DBD4(0);
  v9 = [objc_opt_self() pathSourceForShapeType:0 naturalSize:{v7, v8}];
  sub_101125504(a1, v6, type metadata accessor for CRLWPStorageCRDTData);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = v9;
  sub_1011133FC(0, 0, v9, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, 0, v6, a2, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v6, &unk_101A0B1C0);
  type metadata accessor for CRLWPShapeItem();
  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_10110D5CC(void *a1)
{
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(*(*(v1 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board) + OBJC_IVAR____TtC8Freeform8CRLBoard_store) + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = type metadata accessor for CRLUUIDRemapHelper();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_objectUUIDMap] = _swiftEmptyDictionarySingleton;
  *&v9[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap] = _swiftEmptyDictionarySingleton;
  v9[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs] = 1;
  v15.receiver = v9;
  v15.super_class = v8;
  v10 = v6;
  v11 = objc_msgSendSuper2(&v15, "init");
  v12 = (*((swift_isaMask & *a1) + 0x288))(v6, v5, 0, v11);
  sub_10000CAAC(v5, &qword_1019F6990);

  return v12;
}

char *sub_10110D7C4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for UUID();
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v18 = *(v17 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v17 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v14);
  sub_101125504(a1, v12, type metadata accessor for CRLAssetData);
  sub_101125504(a2, v9, type metadata accessor for CRLAssetData);
  v19 = v18;
  v20 = a3;
  v21 = sub_100BEFD9C(v19, v16, v12, v9, a3);

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 defaultShadow];
  if ((sub_10110CA3C() & 1) == 0)
  {

    return v23;
  }

  v25 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v26 = *(**&v23[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

  v28 = v26(v27);

  if (!v28)
  {
    if (!v24)
    {

      return v23;
    }

    goto LABEL_10;
  }

  if (!v24)
  {

    goto LABEL_10;
  }

  sub_100006370(0, &unk_101A11F40);
  v29 = v24;
  v30 = static NSObject.== infix(_:_:)();

  if ((v30 & 1) == 0)
  {
LABEL_10:
    v31 = *(**&v23[v25] + 448);
    v32 = v24;

    v31(v24);

    return v23;
  }

  return v23;
}

uint64_t sub_10110DB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_101123A5C(&qword_1019F34A0, type metadata accessor for Key);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8(v9, a3, a4, a5);
}

id sub_10110DBDC(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLGroupItem();
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v9 = *(v8 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v8 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  v10 = objc_allocWithZone(v7);
  v11 = v9;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = [v10 initWithStore:v11 parentContainerUUID:isa geometry:a1];

  (*(v4 + 8))(v6, v3);
  return v13;
}

char *sub_10110DD78(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for UUID();
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v18 = *(v17 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v17 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v14);
  sub_10000BE14(a2, v12, &unk_101A1B880);
  (*(v7 + 16))(v9, v35, v6);
  v19 = v18;
  v20 = a1;
  v21 = sub_100A81180(v19, v16, v12, v9, a1);

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 defaultShadow];
  if ((sub_10110CA3C() & 1) == 0)
  {

    return v23;
  }

  v25 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v26 = *(**&v23[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

  v28 = v26(v27);

  if (!v28)
  {
    if (!v24)
    {

      return v23;
    }

    goto LABEL_10;
  }

  if (!v24)
  {

    goto LABEL_10;
  }

  sub_100006370(0, &unk_101A11F40);
  v29 = v24;
  v30 = static NSObject.== infix(_:_:)();

  if ((v30 & 1) == 0)
  {
LABEL_10:
    v31 = *(**&v23[v25] + 448);
    v32 = v24;

    v31(v24);

    return v23;
  }

  return v23;
}

id sub_10110E108(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, int a6)
{
  v143 = a6;
  v134 = a5;
  v141 = a2;
  v142 = a3;
  v132 = a1;
  v127 = a4;
  v7 = *(a4 + 8);
  v108 = *a4;
  v109 = v7;
  *&v7 = *(a4 + 2);
  v106 = v7;
  *&v7 = *(a4 + 3);
  v107 = v7;
  v131 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v131);
  v130 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for CRLUSDZItemCRDTData(0);
  __chkstk_darwin(v128);
  v135 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v136 = &v106 - v11;
  v12 = sub_1005B981C(&unk_101A09DC0);
  v125 = *(v12 - 8);
  v126 = v12;
  __chkstk_darwin(v12);
  v123 = &v106 - v13;
  v120 = sub_1005B981C(&unk_101A226A0) - 8;
  __chkstk_darwin(v120);
  v133 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v144 = &v106 - v16;
  __chkstk_darwin(v17);
  v145 = &v106 - v18;
  v19 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v19 - 8);
  v116 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v138.i64[0] = &v106 - v22;
  v23 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v23 - 8);
  v114 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v106 - v26;
  v139 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v139);
  v118 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v117 = &v106 - v30;
  __chkstk_darwin(v31);
  v33 = &v106 - v32;
  v34 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v34 - 8);
  v122 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v106 - v37;
  v39 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v39 - 8);
  v121 = &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v106 - v42;
  v44 = type metadata accessor for UUID();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v115 = &v106 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v137 = &v106 - v48;
  v50 = __chkstk_darwin(v49);
  v52 = &v106 - v51;
  v53 = *(v6 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v54 = *(v53 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v53 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v50);
  v55 = v141;
  v141 = v43;
  sub_101125504(v55, v43, type metadata accessor for CRLAssetData);
  v56 = v142;
  v142 = v38;
  sub_10000BE14(v56, v38, &unk_101A1B880);
  v119 = matrix_identity_float4x4.columns[3];
  v146 = v45;
  v57 = *(v45 + 16);
  v112 = v45 + 16;
  v113 = v57;
  v58 = v27;
  v129 = v52;
  v57(v27, v52, v44);
  v59 = *(v45 + 56);
  v110 = v27;
  v111 = v59;
  v140 = v44;
  v59(v27, 0, 1, v44);
  v157 = 1;
  v60 = type metadata accessor for CRLTableAnchorHint();
  v61 = *(*(v60 - 8) + 56);
  v62 = v138.i64[0];
  v61(v138.i64[0], 1, 1, v60);
  v124 = v54;
  v63 = v132;
  sub_101271CCC(v63, v156);

  v64 = v114;
  sub_10000BE14(v58, v114, &qword_1019F6990);
  v65 = v62;
  v66 = v116;
  sub_10000BE14(v65, v116, &unk_101A09DD0);
  v111(v33, 1, 1, v44);
  v67 = v139;
  v68 = *(v139 + 28);
  v69 = &v33[*(v139 + 24)];
  v61(&v33[v68], 1, 1, v60);
  *&v33[*(v67 + 32)] = _swiftEmptyDictionarySingleton;
  sub_10002C638(v64, v33, &qword_1019F6990);
  sub_10000CAAC(v138.i64[0], &unk_101A09DD0);
  sub_10000CAAC(v110, &qword_1019F6990);
  v70 = &v33[*(v67 + 20)];
  v71 = v156[1];
  *v70 = v156[0];
  *(v70 + 1) = v71;
  *v69 = 0u;
  *(v69 + 1) = 0u;
  *(v69 + 2) = 0u;
  *(v69 + 3) = 0u;
  v138 = 0u;
  v69[64] = v157;
  sub_10002C638(v66, &v33[v68], &unk_101A09DD0);
  v132 = v33;
  v72 = v117;
  sub_101125504(v33, v117, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v158);
  v73 = v137;
  UUID.init()();
  v74 = v120;
  v116 = *(v120 + 60);
  v152 = v162;
  v153 = v163;
  v154 = v164;
  v155 = v165;
  v148 = v158;
  v149 = v159;
  v150 = v160;
  v151 = v161;
  sub_1005B981C(&unk_101A09DE0);
  sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &unk_1014897A0, sub_10074933C);
  v75 = v145;
  CRRegister.init(wrappedValue:)();
  *(v75 + *(v74 + 64)) = _swiftEmptyDictionarySingleton;
  v76 = v73;
  v77 = v140;
  v113(v115, v76, v140);
  v78 = v75;
  CRRegister.init(_:)();
  sub_101125504(v72, v118, type metadata accessor for CRLBoardItemParentAffinity);
  sub_101123A5C(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity);
  CRRegister.init(_:)();
  LOBYTE(v148) = 0;
  CRRegister.init(_:)();
  LOBYTE(v148) = 0;
  v118 = *(v74 + 52);
  CRRegister.init(_:)();
  *&v148 = 0;
  *(&v148 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v152 = v162;
  v153 = v163;
  v154 = v164;
  v155 = v165;
  v148 = v158;
  v149 = v159;
  v150 = v160;
  v151 = v161;
  v79 = v123;
  CRRegister.init(_:)();
  v80 = *(v146 + 8);
  v146 += 8;
  v139 = v80;
  v80(v137, v77);
  sub_10112556C(v72, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v125 + 40))(v78 + v116, v79, v126);
  v81 = *(v127 + 32);
  if ((v81 & 1) == 0)
  {
    *&v82.f64[0] = v108;
    *&v82.f64[1] = v106;
    *&v82.f64[0] = vcvt_f32_f64(v82);
    *&v83.f64[0] = v109;
    *&v83.f64[1] = v107;
    v84.i64[0] = LODWORD(v82.f64[0]);
    v84.i64[1] = HIDWORD(v82.f64[0]);
    v138 = vorrq_s8(vshll_n_s32(vcvt_f32_f64(v83), 0x20uLL), v84);
  }

  LODWORD(v137) = v143 & 1;
  v85 = v121;
  sub_101125504(v141, v121, type metadata accessor for CRLAssetData);
  v86 = v122;
  sub_10000BE14(v142, v122, &unk_101A1B880);
  v87 = v136;
  *&v136[*(v128 + 20)] = _swiftEmptyDictionarySingleton;
  v88 = v130;
  sub_101125504(v85, v130, type metadata accessor for CRLAssetData);
  v89 = v131;
  sub_10000BE14(v86, v88 + *(v131 + 20), &unk_101A1B880);
  *(v88 + v89[6]) = v119;
  v90 = (v88 + v89[7]);
  *v90 = v138;
  v90[1].i8[0] = v81 & 1;
  v91 = v88 + v89[8];
  v92 = v134;
  *v91 = v134;
  *(v91 + 8) = v137;
  *(v88 + v89[9]) = _swiftEmptyDictionarySingleton;
  sub_101123A5C(&qword_101A2AF60, type metadata accessor for CRLUSDZAssetDataStruct);
  CRRegister.init(_:)();
  sub_10000CAAC(v86, &unk_101A1B880);
  sub_10112556C(v85, type metadata accessor for CRLAssetData);
  LOBYTE(v148) = 1;
  sub_1005B981C(&qword_101A2C810);
  v93 = v145;
  CRRegister.wrappedValue.setter();
  sub_10000BE14(v93, v144, &unk_101A226A0);
  v94 = v135;
  sub_101125504(v87, v135, type metadata accessor for CRLUSDZItemCRDTData);
  if (v143)
  {
    v95 = 0x2000000000000;
    v96 = 0x2000400000000;
    v97 = 0x1000000000000;
  }

  else
  {
    v95 = 0x2000000000000;
    v96 = 0x2000400000000;
    v97 = 0x1000000000000;
    if (v92)
    {
      v97 = 0x3000400000000;
      v96 = 0x3000400000000;
      v95 = 0x3000400000000;
    }
  }

  *&v148 = v95;
  *(&v148 + 1) = v96;
  v149 = v97;
  LOBYTE(v150) = 1;
  type metadata accessor for CRLUSDZItemData(0);
  v98 = swift_allocObject();
  sub_101125504(v94, v98 + qword_101AD9460, type metadata accessor for CRLUSDZItemCRDTData);
  v99 = v144;
  v100 = v133;
  sub_10000BE14(v144, v133, &unk_101A226A0);
  sub_10000BE14(v100, v98 + *(*v98 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v100, &unk_101A226A0);
  sub_10112556C(v94, type metadata accessor for CRLUSDZItemCRDTData);
  sub_10000CAAC(v99, &unk_101A226A0);
  v101 = sub_100747AF0(&v148, 2);
  v102 = objc_allocWithZone(type metadata accessor for CRLUSDZItem());
  *&v102[OBJC_IVAR____TtC8Freeform11CRLUSDZItem__posterAssetPayload] = 0;
  *&v102[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v124;
  *&v102[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v101;
  v103 = type metadata accessor for CRLBoardItemBase(0);
  v147.receiver = v102;
  v147.super_class = v103;
  v104 = objc_msgSendSuper2(&v147, "init");
  sub_10112556C(v87, type metadata accessor for CRLUSDZItemCRDTData);
  sub_10112556C(v132, type metadata accessor for CRLBoardItemParentAffinity);
  sub_10000CAAC(v142, &unk_101A1B880);
  sub_10112556C(v141, type metadata accessor for CRLAssetData);
  (v139)(v129, v140);
  sub_10000CAAC(v145, &unk_101A226A0);
  return v104;
}

uint64_t sub_10110F088(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  v5 = sub_10057DBD4(0);
  v7 = [objc_opt_self() pathSourceForShapeType:0 naturalSize:{v5, v6}];
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1006950BC(v13);
  v11[12] = v13[12];
  v11[13] = v13[13];
  v11[14] = v13[14];
  v12 = v14;
  v11[8] = v13[8];
  v11[9] = v13[9];
  v11[10] = v13[10];
  v11[11] = v13[11];
  v11[4] = v13[4];
  v11[5] = v13[5];
  v11[6] = v13[6];
  v11[7] = v13[7];
  v11[0] = v13[0];
  v11[1] = v13[1];
  v11[2] = v13[2];
  v11[3] = v13[3];
  v9 = v7;
  sub_1011133FC(0, 0, v7, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, a1, v4, v11, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v4, &unk_101A0B1C0);
  type metadata accessor for CRLWPShapeItem();
  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_10110F2B4(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, void *a5, void *a6, void *a7, double a8, double a9, double a10)
{
  v26 = a3;
  v25 = a2;
  v18 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v18 - 8);
  v20 = &v24 - v19;
  v21 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_1006950BC(v29);
  v27[12] = v29[12];
  v27[13] = v29[13];
  v27[14] = v29[14];
  v28 = v30;
  v27[8] = v29[8];
  v27[9] = v29[9];
  v27[10] = v29[10];
  v27[11] = v29[11];
  v27[4] = v29[4];
  v27[5] = v29[5];
  v27[6] = v29[6];
  v27[7] = v29[7];
  v27[0] = v29[0];
  v27[1] = v29[1];
  v27[2] = v29[2];
  v27[3] = v29[3];
  v22 = sub_1011133FC(a1, 0, v25, v26, *&a8, *&a9, 0, 0, 0, *&a10, 0, 2, 2, a4, a5, a6, a7, 0, v20, v27, 0, 0, 0, 0, 1u);
  sub_10000CAAC(v20, &unk_101A0B1C0);
  return v22;
}

void *sub_10110F4B0(uint64_t a1)
{
  v2 = v1;
  v59 = __chkstk_darwin(a1);
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8);
  v60 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = [objc_opt_self() pathSourceForShapeType:3 naturalSize:{200.0, 200.0}];
  [v58 naturalSize];
  v57 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{v5, v6}];
  type metadata accessor for CRLBoardInsertStyleData(0);
  sub_1005B981C(&qword_1019F4B80);
  CRRegister.wrappedValue.getter();
  memcpy(v135, v134, 0x378uLL);
  if (sub_1000C0F9C(v135) == 1)
  {
    sub_100A1C544(3, v94);
    v7 = v119;
    v8 = v117;
    v9 = v118;
    v10 = v115;
    v11 = v116;
    v12 = v113;
    v56 = v114;
    v55 = v111;
    v54 = v112;
    v131 = v108;
    v132 = v109;
    v133 = v110;
    v127 = v104;
    v128 = v105;
    v130 = v107;
    v129 = v106;
    v53 = v102;
    v52 = v103;
    v51 = v100;
    v49 = v99;
    v50 = v101;
    v47 = v96;
    v48 = v98;
    v13 = v97;
    v45 = v94[1];
    v46 = v94[0];
    v44 = v95;
  }

  else
  {
    v43 = v135[105];
    v8 = v135[103];
    v14 = v135[104];
    v10 = v135[101];
    v11 = v135[102];
    v12 = v135[99];
    v56 = LOBYTE(v135[100]);
    v55 = v135[97];
    v54 = LOBYTE(v135[98]);
    v53 = v135[81];
    v52 = LOBYTE(v135[82]);
    v51 = v135[79];
    v49 = BYTE2(v135[78]);
    v50 = LOBYTE(v135[80]);
    v47 = HIDWORD(v135[77]);
    v48 = BYTE1(v135[78]);
    v13 = v135[78];
    v45 = v135[76];
    v46 = v135[75];
    v44 = LOBYTE(v135[77]);
    sub_100880AD0(&v135[75], v120);
    v9 = v14;
    v131 = *&v135[91];
    v132 = *&v135[93];
    v133 = *&v135[95];
    v127 = *&v135[83];
    v128 = *&v135[85];
    v7 = v43;
    v130 = *&v135[89];
    v129 = *&v135[87];
  }

  *&v82[55] = v130;
  *&v82[71] = v131;
  *&v82[87] = v132;
  *&v82[103] = v133;
  *&v82[7] = v127;
  *&v82[23] = v128;
  v83 = v13;
  v15 = *(v2 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  *&v82[39] = v129;
  v16 = *(v15 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v81 = v9;
  v17 = v60;
  (*(**(*(v15 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  *(&v87[4] + 9) = *&v82[64];
  *(&v87[5] + 9) = *&v82[80];
  *(&v87[6] + 9) = *&v82[96];
  *(v87 + 9) = *v82;
  *(&v87[1] + 9) = *&v82[16];
  *(&v87[2] + 9) = *&v82[32];
  *&v84 = v46;
  *(&v84 + 1) = v45;
  LOBYTE(v85) = v44;
  DWORD1(v85) = v47;
  BYTE8(v85) = v83;
  BYTE9(v85) = v48;
  BYTE10(v85) = v49;
  *&v86 = v51;
  BYTE8(v86) = v50;
  *&v87[0] = v53;
  BYTE8(v87[0]) = v52;
  *(&v87[3] + 9) = *&v82[48];
  *(&v87[7] + 1) = *&v82[111];
  *&v88 = v55;
  BYTE8(v88) = v54;
  *&v89 = v12;
  BYTE8(v89) = v56;
  *&v90 = v10;
  BYTE8(v90) = v11;
  *&v91 = v8;
  BYTE8(v91) = v81;
  v92 = v7;
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v84, v18);
  v125[12] = v89;
  v125[13] = v90;
  v125[14] = v91;
  v126 = v92;
  v125[8] = v87[5];
  v125[9] = v87[6];
  v125[10] = v87[7];
  v125[11] = v88;
  v125[4] = v87[1];
  v125[5] = v87[2];
  v125[6] = v87[3];
  v125[7] = v87[4];
  v125[0] = v84;
  v125[1] = v85;
  v125[2] = v86;
  v125[3] = v87[0];
  v19 = v16;
  v20 = v59;
  v21 = v57;
  v22 = v58;
  v23 = sub_10124F0FC(v19, v17, v20, v21, v22, v125, 3);

  memcpy(v93, v134, sizeof(v93));
  if (sub_1000C0F9C(v93) == 1)
  {
    v24 = [objc_allocWithZone(CRLColor) initWithWhite:0.0 alpha:0.35];
    v25 = objc_allocWithZone(CRLCurvedShadow);
    v26 = v23;
    sub_100C33968([v25 initWithOffset:v24 angle:1 radius:1.0 curve:90.0 opacity:15.0 color:-0.123095 enabled:1.0]);
  }

  else
  {
    memcpy(v120, v93, sizeof(v120));
    v80[4] = *&v93[312];
    v80[5] = *&v93[328];
    v79 = *&v93[232];
    v80[0] = *&v93[248];
    v80[2] = *&v93[280];
    v80[3] = *&v93[296];
    v80[1] = *&v93[264];
    if (*&v93[328])
    {
      sub_100006370(0, &qword_101A00EB0);
      v123[2] = *&v93[280];
      v123[3] = *&v93[296];
      v123[4] = *&v93[312];
      v124 = *&v93[328];
      v123[0] = *&v93[248];
      v123[1] = *&v93[264];
      v27 = v23;
      sub_10074A990(v80, v121);
      v28 = sub_1008B0490(v123);
      if (BYTE8(v79) == 1)
      {
        if (qword_1019F2268 != -1)
        {
          swift_once();
        }

        v29 = static OS_os_log.persistence;
        v30 = static os_log_type_t.info.getter();
        sub_100005404(v29, &_mh_execute_header, v30, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
      }

      v31 = [objc_allocWithZone(CRLColorFill) initWithColor:v28];
    }

    else
    {
      v32 = v23;
      v31 = 0;
    }

    sub_100C34730(v31);
    v76 = *&v93[192];
    v77 = *&v93[208];
    v78 = *&v93[224];
    v72 = *&v93[128];
    v73 = *&v93[144];
    v74 = *&v93[160];
    v75 = *&v93[176];
    v68 = *&v93[64];
    v69 = *&v93[80];
    v70 = *&v93[96];
    v71 = *&v93[112];
    v64 = *v93;
    v65 = *&v93[16];
    v66 = *&v93[32];
    v67 = *&v93[48];
    if (sub_1000C0FB4(&v64) == 1)
    {
      v33 = v23;
      v34 = 0;
    }

    else
    {
      v121[12] = v76;
      v121[13] = v77;
      v122 = v78;
      v121[8] = v72;
      v121[9] = v73;
      v121[11] = v75;
      v121[10] = v74;
      v121[4] = v68;
      v121[5] = v69;
      v121[7] = v71;
      v121[6] = v70;
      v121[0] = v64;
      v121[1] = v65;
      v121[3] = v67;
      v121[2] = v66;
      v35 = v23;
      v34 = sub_100B946C8(v121, 0);
    }

    sub_100D654FC(v34);

    v36 = sub_101265E6C();
    sub_100C33968(v36);
    sub_10000CAAC(v134, &qword_1019F4B78);
    v37 = v93[864];
    v38 = v93[856];
    if (sub_10110C60C())
    {
      if (v37)
      {
        v39 = 0;
      }

      else
      {
        v39 = v38;
      }

      type metadata accessor for CRLWPShapeItemData(0);
      v40 = *(*swift_dynamicCastClassUnconditional() + 912);

      v41 = v40(v63);
      type metadata accessor for CRLWPShapeItemCRDTData(0);
      v61 = v39;
      v62 = 0;
      type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
      sub_1005B981C(&unk_101A0F370);
      CRRegister.wrappedValue.setter();
      v41(v63, 0);
    }
  }

  return v23;
}

uint64_t sub_10110FE34(void *a1, id a2, uint64_t a3)
{
  v7 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v73 - v8;
  v10 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLWPShapeItem();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = v14;
  v74 = a3;
  v75 = v3;
  v76 = a2;
  v16 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v17 = *(**(v14 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
  v18 = a1;

  v20 = v17(v19);

  v21 = [v20 widthValid];

  if (!v21 || (v22 = *(**&v15[v16] + 296), v23 = , v24 = v22(v23), , v25 = [v24 heightValid], v24, !v25) || swift_getObjectType() != v13)
  {

    a2 = v76;
    a3 = v74;
LABEL_6:
    v26 = type metadata accessor for CRLWPStorageCRDTData(0);
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    sub_1006950BC(&v136);
    v118[12] = v148;
    v118[13] = v149;
    v118[14] = v150;
    v119 = v151;
    v118[8] = v144;
    v118[9] = v145;
    v118[10] = v146;
    v118[11] = v147;
    v118[4] = v140;
    v118[5] = v141;
    v118[6] = v142;
    v118[7] = v143;
    v118[0] = v136;
    v118[1] = v137;
    v118[2] = v138;
    v118[3] = v139;
    v27 = sub_1011133FC(a3, 0, a2, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, 0, v9, v118, 0, 0, 0, 0, 1u);
LABEL_7:
    sub_10000CAAC(v9, &unk_101A0B1C0);
    return v27;
  }

  v29 = *((swift_isaMask & *v18) + 0xE0);
  v30 = v29();
  [v30 size];
  v32 = v31;
  v34 = v33;

  v35 = v76;
  [v76 naturalSize];
  if (sub_1007C87EC(v32 / v34, v36 / v37))
  {

    v38 = v29();
    [v38 size];
    v40 = v39;
    v42 = v41;

    v43 = v42;
    v44 = v40;
  }

  else
  {
    v45 = *(**&v15[v16] + 296);

    v47 = v45(v46);
    v35 = v76;
    v48 = v47;

    [v48 size];
    v50 = v49;
    v52 = v51;

    [v35 naturalSize];
    v55 = sqrt(v50 * v52 / (v53 * v54));
    [v35 naturalSize];
    v44 = sub_10011F340(v56, v57, v55);
  }

  [v35 scaleToNaturalSize:{v44, v43}];
  v58 = v18;
  sub_1010A07F0(v15, 0, v118);
  v105 = v132;
  v106 = v133;
  v107 = v134;
  v108 = v135;
  v101 = v128;
  v102 = v129;
  v103 = v130;
  v104 = v131;
  v97 = v124;
  v98 = v125;
  v99 = v126;
  v100 = v127;
  v93 = v120;
  v94 = v121;
  v95 = v122;
  v96 = v123;
  sub_100880AD0(&v93, &v136);
  sub_1009CCD88(v118);
  v59 = v58;
  v73 = sub_100D652D4();

  v60 = **&v15[v16];
  result = swift_conformsToProtocol2();
  if (result)
  {
    v61 = result;
    v62 = *(result + 16);
    v63 = v59;

    v62(v60, v61);

    sub_1005B981C(&unk_101A10690);
    CRRegister.wrappedValue.getter();
    sub_10112556C(v12, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v109 = v136;
    v110 = v137;
    v114 = v141;
    v115 = v142;
    v111 = v138;
    v112 = v139;
    v113 = v140;
    v116 = v136;
    v117[0] = v137;
    v117[4] = v141;
    v117[5] = v142;
    v117[2] = v139;
    v117[3] = v140;
    v117[1] = v138;
    if (v142)
    {
      sub_100006370(0, &qword_101A00EB0);
      v152[2] = v112;
      v152[3] = v113;
      v152[4] = v114;
      v153 = v115;
      v152[0] = v110;
      v152[1] = v111;
      sub_10074A990(v117, &v136);
      v64 = sub_1008B0490(v152);
      v65 = v76;
      v66 = v74;
      if (BYTE8(v116))
      {
        if (qword_1019F2268 != -1)
        {
          swift_once();
        }

        v67 = static OS_os_log.persistence;
        v68 = static os_log_type_t.info.getter();
        sub_100005404(v67, &_mh_execute_header, v68, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
        v69 = [objc_allocWithZone(CRLColorFill) initWithColor:v64];

        sub_10000CAAC(&v109, &qword_1019FFF80);
      }

      else
      {
        v69 = [objc_allocWithZone(CRLColorFill) initWithColor:v64];

        sub_10000CAAC(&v109, &qword_1019FFF80);
      }
    }

    else
    {

      v69 = 0;
      v65 = v76;
      v66 = v74;
    }

    v70 = type metadata accessor for CRLWPStorageCRDTData(0);
    (*(*(v70 - 8) + 56))(v9, 1, 1, v70);
    v89 = v105;
    v90 = v106;
    v91 = v107;
    v92 = v108;
    v85 = v101;
    v86 = v102;
    v87 = v103;
    v88 = v104;
    v81 = v97;
    v82 = v98;
    v83 = v99;
    v84 = v100;
    v77 = v93;
    v78 = v94;
    v79 = v95;
    v80 = v96;
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v77, v71);
    v148 = v89;
    v149 = v90;
    v150 = v91;
    v151 = v92;
    v144 = v85;
    v145 = v86;
    v146 = v87;
    v147 = v88;
    v140 = v81;
    v141 = v82;
    v142 = v83;
    v143 = v84;
    v136 = v77;
    v137 = v78;
    v138 = v79;
    v139 = v80;
    v72 = v73;
    v27 = sub_1011133FC(v66, 0, v65, 1, 0, 0, 1, 0, 0, 0, 1, 2, 2, v73, v69, 1, 1, 0, v9, &v136, 0, 0, 0, 0, 1u);
    sub_10081852C(&v93);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_101110770(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v9 = *(v8 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v8 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v5);
  v10 = objc_allocWithZone(type metadata accessor for CRLTableItem());
  v11 = v9;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = [v10 initWithStore:v11 parentContainerUUID:isa geometry:a1];

  (*(v4 + 8))(v7, v3);
  type metadata accessor for CRLBoardInsertStyleData(0);
  sub_1005B981C(&qword_1019F4B48);
  CRRegister.wrappedValue.getter();
  memcpy(v19, v18, 0x178uLL);
  if (sub_1000C0FB4(v19) != 1)
  {
    memcpy(v17, v19, sizeof(v17));
    type metadata accessor for CRLTableItemData();
    v14 = swift_dynamicCastClassUnconditional();
    __chkstk_darwin(v14);
    *&v16[-16] = v17;
    swift_beginAccess();

    sub_1005B981C(&unk_101A2C890);
    Capsule.mutate<A>(_:)();
    swift_endAccess();

    sub_10000CAAC(v18, &qword_1019F4B40);
  }

  return v13;
}

id sub_101110D38(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v9 = *(v8 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v8 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v5);
  v10 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingItem());
  v11 = v9;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = [v10 initWithStore:v11 parentContainerUUID:isa geometry:a1];

  (*(v4 + 8))(v7, v3);
  return v13;
}

void sub_101110F2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2878 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for UUID();
  v8 = sub_1005EB3DC(v7, qword_101AD8F08);
  (*(*(v7 - 8) + 16))(a2, v8, v7);
  v9 = (a2 + *(v4 + 20));
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(a2 + *(v4 + 24)) = _swiftEmptyDictionarySingleton;
  sub_10000630C(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v34);
  sub_1005B981C(&qword_1019FF208);
  type metadata accessor for CRLAssetBackedAssetStorage();
  if (swift_dynamicCast())
  {
    sub_10112556C(a2, type metadata accessor for CRLAssetData);
    sub_101125504(v33[29] + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v6, type metadata accessor for CRLAssetData);

    sub_10112549C(v6, a2, type metadata accessor for CRLAssetData);
  }

  else
  {
    v10 = objc_opt_self();
    v11 = [v10 _atomicIncrementAssertCount];
    v34[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v34);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v11;
    v20 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v20;
    v21 = sub_1005CF04C();
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = 534;
    v23 = v34[0];
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "Asset needs to be a non-readonly asset!", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v10 handleFailureInFunction:v30 file:v31 lineNumber:534 isFatal:0 format:v32 args:v29];
  }
}

char *sub_10111147C(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v6 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v9 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v17 = *&v16[OBJC_IVAR____TtC8Freeform8CRLBoard_store];
  (*(**(*&v16[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v13);
  sub_101125504(a2, v11, type metadata accessor for CRLAssetData);
  sub_10000BE14(v47, v8, &unk_101A1B880);
  v18 = v17;
  v19 = v16;
  v20 = a1;
  v21 = sub_101123B24(v18, v15, v11, v8, a1, v19);

  type metadata accessor for CRLBoardInsertStyleData(0);
  sub_1005B981C(&qword_1019F4B70);
  CRRegister.wrappedValue.getter();
  memcpy(v67, v66, sizeof(v67));
  if (sub_1000B9764(v67) != 1)
  {
    memcpy(v63, v67, sizeof(v63));
    v60 = v67[12];
    v61 = v67[13];
    v62 = *&v67[14];
    v56 = v67[8];
    v57 = v67[9];
    v58 = v67[10];
    v59 = v67[11];
    v52 = v67[4];
    v53 = v67[5];
    v54 = v67[6];
    v55 = v67[7];
    v48 = v67[0];
    v49 = v67[1];
    v50 = v67[2];
    v51 = v67[3];
    if (sub_1000C0FB4(&v48) == 1)
    {
      v31 = 0;
    }

    else
    {
      v64[12] = v60;
      v64[13] = v61;
      v65 = v62;
      v64[8] = v56;
      v64[9] = v57;
      v64[10] = v58;
      v64[11] = v59;
      v64[4] = v52;
      v64[5] = v53;
      v64[6] = v54;
      v64[7] = v55;
      v64[0] = v48;
      v64[1] = v49;
      v64[2] = v50;
      v64[3] = v51;
      v31 = sub_100B946C8(v64, 0);
    }

    sub_100D654FC(v31);
    v32 = sub_100CE4144();
    if (sub_10110CA3C())
    {
      v33 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v34 = *(**&v21[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

      v36 = v34(v35);

      if (v36)
      {
        if (v32)
        {
          sub_100006370(0, &unk_101A11F40);
          v37 = v32;
          v38 = static NSObject.== infix(_:_:)();

          if (v38)
          {

LABEL_26:
            v44 = sub_100BB9950(*(&v67[22] + 2));
            sub_100BB584C(v44);
            sub_10000CAAC(v66, &qword_1019F4B68);
            return v21;
          }
        }

        else
        {
        }
      }

      else if (!v32)
      {
        goto LABEL_26;
      }

      v42 = *(**&v21[v33] + 448);
      v43 = v32;

      v42(v32);

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 defaultShadow];
  if ((sub_10110CA3C() & 1) == 0)
  {

    goto LABEL_23;
  }

  v25 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v26 = *(**&v23[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

  v28 = v26(v27);

  if (!v28)
  {
    if (!v24)
    {

      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (!v24)
  {

    goto LABEL_22;
  }

  sub_100006370(0, &unk_101A11F40);
  v29 = v24;
  v30 = static NSObject.== infix(_:_:)();

  if ((v30 & 1) == 0)
  {
LABEL_22:
    v39 = *(**&v23[v25] + 448);
    v40 = v24;

    v39(v24);

    goto LABEL_23;
  }

LABEL_23:
  v41 = sub_100BB9950(10.0);
  sub_100BB584C(v41);
  return v21;
}

char *sub_101111C9C(void *a1, uint64_t a2, void *a3, double a4)
{
  v144 = a1;
  v8 = sub_1005B981C(&unk_101A2C7E0);
  v159 = *(v8 - 8);
  v160 = v8;
  __chkstk_darwin(v8);
  v158 = &v132 - v9;
  v10 = sub_1005B981C(&unk_101A0D9D0);
  v154 = *(v10 - 8);
  v155 = v10;
  __chkstk_darwin(v10);
  v153 = &v132 - v11;
  v151 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v151);
  v150 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for CRLMovieItemCRDTData(0);
  __chkstk_darwin(v152);
  v161 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v162 = &v132 - v15;
  v16 = sub_1005B981C(&unk_101A09DC0);
  v146 = *(v16 - 8);
  v147 = v16;
  __chkstk_darwin(v16);
  v145 = &v132 - v17;
  v174 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v174);
  v156 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v157 = &v132 - v20;
  __chkstk_darwin(v21);
  v175 = &v132 - v22;
  v23 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v23 - 8);
  v142 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v140 = &v132 - v26;
  v27 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v27 - 8);
  v138 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v139 = &v132 - v30;
  v166 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v166);
  v143 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v168 = &v132 - v33;
  __chkstk_darwin(v34);
  v173 = &v132 - v35;
  v36 = type metadata accessor for UUID();
  v177 = *(v36 - 8);
  __chkstk_darwin(v36);
  v141 = &v132 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v167 = (&v132 - v39);
  __chkstk_darwin(v40);
  v172 = (&v132 - v41);
  v42 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v42 - 8);
  v170 = (&v132 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44);
  v176 = &v132 - v45;
  __chkstk_darwin(v46);
  v48 = &v132 - v47;
  v49 = type metadata accessor for CRLAssetData();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v169 = &v132 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v132 - v53;
  __chkstk_darwin(v55);
  v57 = &v132 - v56;
  sub_101110F2C(a2, &v132 - v56);
  if (a3)
  {
    v58 = a3;
    sub_101110F2C(v58, v48);

    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  v60 = (*(v50 + 56))(v48, v59, 1, v49);
  v61 = *(v4 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v149 = v4;
  v62 = *(v61 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v63 = v172;
  (*(**(*(v61 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v60);
  v137 = type metadata accessor for CRLAssetData;
  v163 = v57;
  v171 = v54;
  sub_101125504(v57, v54, type metadata accessor for CRLAssetData);
  v164 = v48;
  sub_10000BE14(v48, v176, &unk_101A1B880);
  v64 = v177;
  v65 = *(v177 + 16);
  v135 = v177 + 16;
  v136 = v65;
  v66 = v139;
  v65(v139, v63, v36);
  v67 = *(v64 + 56);
  v67(v66, 0, 1, v36);
  v193 = 1;
  v68 = type metadata accessor for CRLTableAnchorHint();
  v69 = *(v68 - 8);
  v133 = *(v69 + 56);
  v134 = v69 + 56;
  v165 = v36;
  v70 = v140;
  v133(v140, 1, 1, v68);
  v148 = v62;
  v71 = v144;
  sub_101271CCC(v71, v219);

  v72 = v138;
  sub_10000BE14(v66, v138, &qword_1019F6990);
  v73 = v142;
  sub_10000BE14(v70, v142, &unk_101A09DD0);
  v74 = v173;
  v67(v173, 1, 1, v36);
  v75 = *(v166 + 28);
  v76 = v166;
  v77 = v74 + *(v166 + 24);
  v133((v74 + v75), 1, 1, v68);
  *(v74 + *(v76 + 32)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v72, v74, &qword_1019F6990);
  sub_10000CAAC(v70, &unk_101A09DD0);
  sub_10000CAAC(v66, &qword_1019F6990);
  v78 = (v74 + *(v76 + 20));
  v79 = v219[1];
  *v78 = v219[0];
  v78[1] = v79;
  *v77 = 0u;
  *(v77 + 16) = 0u;
  *(v77 + 32) = 0u;
  *(v77 + 48) = 0u;
  *(v77 + 64) = v193;
  sub_10002C638(v73, v74 + v75, &unk_101A09DD0);
  sub_101125504(v74, v168, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v194);
  v80 = v167;
  UUID.init()();
  v144 = *(v174 + 52);
  v81 = v174;
  v220[4] = v198;
  v220[5] = v199;
  v220[6] = v200;
  v220[7] = v201;
  v220[0] = v194;
  v220[1] = v195;
  v220[2] = v196;
  v220[3] = v197;
  v142 = sub_1005B981C(&unk_101A09DE0);
  sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &unk_1014897A0, sub_10074933C);
  v82 = v175;
  CRRegister.init(wrappedValue:)();
  *(v82 + *(v81 + 56)) = _swiftEmptyDictionarySingleton;
  v83 = v165;
  v136(v141, v80, v165);
  v84 = v82;
  CRRegister.init(_:)();
  v85 = v168;
  sub_101125504(v168, v143, type metadata accessor for CRLBoardItemParentAffinity);
  sub_101123A5C(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity);
  CRRegister.init(_:)();
  LOBYTE(v220[0]) = 0;
  CRRegister.init(_:)();
  LOBYTE(v220[0]) = 0;
  CRRegister.init(_:)();
  *&v220[0] = 0;
  *(&v220[0] + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v220[4] = v198;
  v220[5] = v199;
  v220[6] = v200;
  v220[7] = v201;
  v220[0] = v194;
  v220[1] = v195;
  v220[2] = v196;
  v220[3] = v197;
  v86 = v145;
  CRRegister.init(_:)();
  v87 = *(v177 + 8);
  v177 += 8;
  v166 = v87;
  v87(v167, v83);
  v167 = type metadata accessor for CRLBoardItemParentAffinity;
  sub_10112556C(v85, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v146 + 40))(v144 + v84, v86, v147);
  v88 = v169;
  v89 = v137;
  sub_101125504(v171, v169, v137);
  sub_10000BE14(v176, v170, &unk_101A1B880);
  sub_1005D0BD8(&v202);
  v90 = v152;
  v168 = *(v152 + 20);
  v220[12] = v214;
  v220[13] = v215;
  *&v220[14] = v216;
  v220[8] = v210;
  v220[9] = v211;
  v220[11] = v213;
  v220[10] = v212;
  v220[4] = v206;
  v220[5] = v207;
  v220[7] = v209;
  v220[6] = v208;
  v220[0] = v202;
  v220[1] = v203;
  v220[3] = v205;
  v220[2] = v204;
  v146 = sub_1005B981C(&unk_101A106C0);
  sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
  v91 = v162;
  CRRegister.init(wrappedValue:)();
  v147 = *(v90 + 24);
  LODWORD(v220[0]) = 0;
  BYTE4(v220[0]) = 1;
  v145 = sub_1005B981C(&unk_101A095E0);
  sub_1005FEB28();
  CRRegister.init(wrappedValue:)();
  *(v91 + *(v90 + 32)) = _swiftEmptyDictionarySingleton;
  v92 = v88;
  v93 = v150;
  sub_101125504(v92, v150, v89);
  v94 = v151;
  v95 = v170;
  sub_10000BE14(v170, v93 + *(v151 + 20), &unk_101A1B880);
  *(v93 + v94[6]) = a4;
  *(v93 + v94[7]) = 0;
  *(v93 + v94[8]) = 0;
  *(v93 + v94[9]) = 0;
  v96 = (v93 + v94[10]);
  *v96 = 0;
  v96[1] = 0;
  v97 = (v93 + v94[11]);
  *v97 = 0;
  v97[1] = 0;
  *(v93 + v94[12]) = 0;
  *(v93 + v94[13]) = _swiftEmptyDictionarySingleton;
  sub_101123A5C(&qword_1019F5C70, type metadata accessor for CRLMovieItemAssetData);
  CRRegister.init(_:)();
  v220[12] = v214;
  v220[13] = v215;
  *&v220[14] = v216;
  v220[8] = v210;
  v220[9] = v211;
  v220[11] = v213;
  v220[10] = v212;
  v220[4] = v206;
  v220[5] = v207;
  v220[7] = v209;
  v220[6] = v208;
  v220[0] = v202;
  v220[1] = v203;
  v220[3] = v205;
  v220[2] = v204;
  v98 = v153;
  CRRegister.init(_:)();
  (*(v154 + 40))(v91 + v168, v98, v155);
  LODWORD(v220[0]) = 1065353216;
  BYTE4(v220[0]) = 0;
  v99 = v158;
  CRRegister.init(_:)();
  (*(v159 + 40))(v91 + v147, v99, v160);
  LODWORD(v220[0]) = 1097859072;
  *(&v220[0] + 1) = _swiftEmptyDictionarySingleton;
  sub_1005FEC00();
  CRRegister.init(_:)();
  sub_10000CAAC(v95, &unk_101A1B880);
  v170 = type metadata accessor for CRLAssetData;
  sub_10112556C(v169, type metadata accessor for CRLAssetData);
  v100 = v175;
  v101 = v157;
  sub_10000BE14(v175, v157, &unk_101A226A0);
  v102 = v161;
  sub_101125504(v91, v161, type metadata accessor for CRLMovieItemCRDTData);
  v223[0] = 0x1000000000000;
  v223[1] = 0x2000400000000;
  v223[2] = 0x1000000000000;
  v223[3] = 0;
  v224 = 1;
  type metadata accessor for CRLMovieItemData(0);
  v103 = swift_allocObject();
  sub_101125504(v102, v103 + qword_101AD5F20, type metadata accessor for CRLMovieItemCRDTData);
  v104 = v156;
  sub_10000BE14(v101, v156, &unk_101A226A0);
  sub_10000BE14(v104, v103 + *(*v103 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v104, &unk_101A226A0);
  sub_10112556C(v102, type metadata accessor for CRLMovieItemCRDTData);
  sub_10000CAAC(v101, &unk_101A226A0);
  v105 = sub_100747AF0(v223, 2);
  swift_beginAccess();
  LOBYTE(v218[0]) = 1;

  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.setter();
  swift_endAccess();

  v106 = sub_1011224E8(v148, v105);
  sub_10000CAAC(v176, &unk_101A1B880);
  sub_10112556C(v171, v170);
  (v166)(v172, v165);
  sub_10112556C(v173, v167);
  sub_10112556C(v91, type metadata accessor for CRLMovieItemCRDTData);
  sub_10000CAAC(v100, &unk_101A226A0);
  type metadata accessor for CRLBoardInsertStyleData(0);
  sub_1005B981C(&qword_1019F4B58);
  CRRegister.wrappedValue.getter();
  memcpy(v218, v217, sizeof(v218));
  if (sub_1000B9764(v218) != 1)
  {
    memcpy(v220, v218, sizeof(v220));
    v190 = v218[12];
    v191 = v218[13];
    v192 = *&v218[14];
    v186 = v218[8];
    v187 = v218[9];
    v188 = v218[10];
    v189 = v218[11];
    v182 = v218[4];
    v183 = v218[5];
    v184 = v218[6];
    v185 = v218[7];
    v178 = v218[0];
    v179 = v218[1];
    v180 = v218[2];
    v181 = v218[3];
    if (sub_1000C0FB4(&v178) == 1)
    {
      v117 = 0;
    }

    else
    {
      v221[12] = v190;
      v221[13] = v191;
      v222 = v192;
      v221[8] = v186;
      v221[9] = v187;
      v221[11] = v189;
      v221[10] = v188;
      v221[4] = v182;
      v221[5] = v183;
      v221[7] = v185;
      v221[6] = v184;
      v221[0] = v178;
      v221[1] = v179;
      v221[3] = v181;
      v221[2] = v180;
      v117 = sub_100B946C8(v221, 0);
    }

    v118 = v163;
    sub_100D654FC(v117);
    v119 = sub_100CE4144();
    if (sub_10110CA3C())
    {
      v120 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v121 = *(**&v106[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

      v123 = v121(v122);

      if (v123)
      {
        if (v119)
        {
          sub_100006370(0, &unk_101A11F40);
          v125 = v119;
          v126 = static NSObject.== infix(_:_:)();

          if (v126)
          {

LABEL_29:
            sub_100D91544(v124, *(&v218[22] + 2));
            sub_10000CAAC(v217, &qword_1019F4B50);
            goto LABEL_30;
          }
        }

        else
        {
        }
      }

      else if (!v119)
      {
        goto LABEL_29;
      }

      v129 = *(**&v106[v120] + 448);
      v130 = v119;

      v129(v119);

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  v107 = objc_opt_self();
  v108 = v106;
  v109 = [v107 defaultShadow];
  if ((sub_10110CA3C() & 1) == 0)
  {

    goto LABEL_26;
  }

  v110 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v111 = *(**&v108[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

  v113 = v111(v112);

  if (!v113)
  {
    if (!v109)
    {

      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (!v109)
  {

    goto LABEL_25;
  }

  sub_100006370(0, &unk_101A11F40);
  v114 = v109;
  v115 = static NSObject.== infix(_:_:)();

  if ((v115 & 1) == 0)
  {
LABEL_25:
    v127 = *(**&v108[v110] + 448);
    v128 = v109;

    v127(v109);

    goto LABEL_26;
  }

LABEL_26:
  sub_100D91544(v116, 10.0);
  v118 = v163;
LABEL_30:
  sub_10000CAAC(v164, &unk_101A1B880);
  sub_10112556C(v118, type metadata accessor for CRLAssetData);
  return v106;
}

uint64_t sub_1011133FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, char a11, char a12, char a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, void *a23, unint64_t a24, unsigned __int8 a25)
{
  v26 = __chkstk_darwin(a1);
  v766 = v25;
  LODWORD(v771) = v27;
  LODWORD(v770) = v28;
  v765 = v29;
  v763 = v30;
  LODWORD(v32) = v31;
  v34 = v33;
  LODWORD(v36) = v35;
  v37 = v26;
  v38 = a20;
  v39 = *(a20 + 208);
  v904 = *(a20 + 192);
  v905 = v39;
  v906 = *(a20 + 224);
  v40 = *(a20 + 144);
  v900 = *(a20 + 128);
  v901 = v40;
  v41 = *(a20 + 176);
  v902 = *(a20 + 160);
  v903 = v41;
  v42 = *(a20 + 80);
  v896 = *(a20 + 64);
  v897 = v42;
  v43 = *(a20 + 112);
  v898 = *(a20 + 96);
  v899 = v43;
  v44 = *(a20 + 16);
  v892 = *a20;
  v893 = v44;
  v45 = *(a20 + 48);
  v894 = *(a20 + 32);
  LODWORD(v762) = a21;
  v755 = a19;
  *&v753 = a18;
  v907 = *(a20 + 240);
  v895 = v45;
  v692 = sub_1005B981C(&unk_1019FFD10);
  v710 = *(v692 - 8);
  v46 = __chkstk_darwin(v692);
  v675 = &v670 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v691 = &v670 - v48;
  v49 = sub_1005B981C(&unk_101A0D9B0);
  v50 = __chkstk_darwin(v49 - 8);
  v673 = &v670 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v707 = (&v670 - v53);
  v54 = __chkstk_darwin(v52);
  v679 = &v670 - v55;
  __chkstk_darwin(v54);
  v712 = (&v670 - v56);
  v716 = type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  v715 = *(v716 - 8);
  v57 = __chkstk_darwin(v716 - 8);
  v672 = &v670 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __chkstk_darwin(v57);
  v686 = &v670 - v60;
  v61 = __chkstk_darwin(v59);
  v678 = &v670 - v62;
  __chkstk_darwin(v61);
  v703 = &v670 - v63;
  *&v749 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  v64 = __chkstk_darwin(v749);
  v674 = &v670 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __chkstk_darwin(v64);
  v688 = &v670 - v67;
  v68 = __chkstk_darwin(v66);
  v693 = &v670 - v69;
  v70 = __chkstk_darwin(v68);
  v694 = &v670 - v71;
  v72 = __chkstk_darwin(v70);
  v680 = &v670 - v73;
  __chkstk_darwin(v72);
  v705 = &v670 - v74;
  v75 = sub_1005B981C(&unk_101A0B1C0);
  v76 = __chkstk_darwin(v75 - 8);
  v671 = &v670 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __chkstk_darwin(v76);
  v685 = &v670 - v79;
  v80 = __chkstk_darwin(v78);
  v677 = &v670 - v81;
  v82 = __chkstk_darwin(v80);
  v702 = (&v670 - v83);
  __chkstk_darwin(v82);
  v695 = &v670 - v84;
  v85 = type metadata accessor for CRLWPStorageCRDTData(0);
  v758 = *(v85 - 1);
  v86 = __chkstk_darwin(v85);
  v670 = &v670 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __chkstk_darwin(v86);
  v708 = &v670 - v89;
  v90 = __chkstk_darwin(v88);
  v687 = &v670 - v91;
  v92 = __chkstk_darwin(v90);
  v676 = &v670 - v93;
  v94 = __chkstk_darwin(v92);
  v713 = &v670 - v95;
  __chkstk_darwin(v94);
  v704 = &v670 - v96;
  v696 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  v97 = __chkstk_darwin(v696);
  v697 = &v670 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __chkstk_darwin(v97);
  v698 = &v670 - v100;
  __chkstk_darwin(v99);
  v746 = &v670 - v101;
  v736 = sub_1005B981C(&unk_101A0D9C0);
  v735 = *(v736 - 8);
  __chkstk_darwin(v736);
  v734 = &v670 - v102;
  v733 = sub_1005B981C(&unk_101A10680);
  v732 = *(v733 - 8);
  __chkstk_darwin(v733);
  v730 = &v670 - v103;
  v729 = sub_1005B981C(&unk_101A0D9D0);
  v728 = *(v729 - 8);
  __chkstk_darwin(v729);
  v727 = &v670 - v104;
  v105 = sub_1005B981C(&unk_101A10690);
  v725 = *(v105 - 8);
  v726 = v105;
  __chkstk_darwin(v105);
  v724 = &v670 - v106;
  v731 = type metadata accessor for CRLShapeItemCRDTData(0);
  v107 = __chkstk_darwin(v731);
  v682 = &v670 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __chkstk_darwin(v107);
  v683 = &v670 - v110;
  v111 = __chkstk_darwin(v109);
  v699 = &v670 - v112;
  v113 = __chkstk_darwin(v111);
  v700 = &v670 - v114;
  __chkstk_darwin(v113);
  v745 = &v670 - v115;
  *&v723 = sub_1005B981C(&unk_101A09DC0);
  *&v722 = *(v723 - 8);
  __chkstk_darwin(v723);
  v721 = &v670 - v116;
  v117 = sub_1005B981C(&qword_101A224B8);
  __chkstk_darwin(v117 - 8);
  v681 = &v670 - v118;
  *&v751 = type metadata accessor for CRLShapeItemParentAffinity(0);
  v119 = __chkstk_darwin(v751);
  v690 = &v670 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __chkstk_darwin(v119);
  *&v750 = &v670 - v122;
  v123 = __chkstk_darwin(v121);
  v759 = &v670 - v124;
  v125 = __chkstk_darwin(v123);
  *&v741 = &v670 - v126;
  __chkstk_darwin(v125);
  *&v743 = &v670 - v127;
  v128 = sub_1005B981C(&unk_101A09DD0);
  v129 = __chkstk_darwin(v128 - 8);
  *&v747 = &v670 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v129);
  *&v748 = &v670 - v131;
  v132 = sub_1005B981C(&qword_1019F6990);
  v133 = __chkstk_darwin(v132 - 8);
  *&v717 = &v670 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v133);
  v754 = (&v670 - v135);
  *&v718 = type metadata accessor for CRLBoardItemParentAffinity();
  v136 = __chkstk_darwin(v718);
  v689 = &v670 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __chkstk_darwin(v136);
  *&v714 = &v670 - v139;
  v140 = __chkstk_darwin(v138);
  *&v740 = &v670 - v141;
  __chkstk_darwin(v140);
  *&v742 = &v670 - v142;
  *&v720 = sub_1005B981C(&unk_101A0F400);
  v143 = __chkstk_darwin(v720);
  v706 = &v670 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __chkstk_darwin(v143);
  v711 = &v670 - v146;
  v147 = __chkstk_darwin(v145);
  v737 = &v670 - v148;
  v149 = __chkstk_darwin(v147);
  v738 = &v670 - v150;
  v151 = __chkstk_darwin(v149);
  v739 = &v670 - v152;
  v153 = __chkstk_darwin(v151);
  v756 = &v670 - v154;
  __chkstk_darwin(v153);
  v752 = &v670 - v155;
  v768 = type metadata accessor for UUID();
  v769 = *(v768 - 8);
  v156 = __chkstk_darwin(v768);
  v684 = &v670 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __chkstk_darwin(v156);
  v709 = &v670 - v159;
  v160 = __chkstk_darwin(v158);
  v701 = &v670 - v161;
  v162 = __chkstk_darwin(v160);
  *&v719 = &v670 - v163;
  v164 = __chkstk_darwin(v162);
  v744 = &v670 - v165;
  __chkstk_darwin(v164);
  *&v760 = &v670 - v166;
  v764 = v85;
  LODWORD(v773) = v36;
  v767 = v37;
  LODWORD(v774) = v32;
  v772 = v34;
  if (v34 == 0.0)
  {
    if ((v36 & 1) != 0 || v37 != 21)
    {
      goto LABEL_13;
    }

    v761 = objc_opt_self();
    v189 = [v761 _atomicIncrementAssertCount];
    v864[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v864);
    StaticString.description.getter();
    v190 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v191 = String._bridgeToObjectiveC()();

    v192 = [v191 lastPathComponent];

    v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v195 = v194;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v196 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v197 = swift_allocObject();
    *(v197 + 16) = xmmword_10146CA70;
    *(v197 + 56) = &type metadata for Int32;
    *(v197 + 64) = &protocol witness table for Int32;
    *(v197 + 32) = v189;
    v198 = sub_100006370(0, &qword_1019F4D30);
    *(v197 + 96) = v198;
    v199 = sub_1005CF04C();
    *(v197 + 104) = v199;
    *(v197 + 72) = v190;
    *(v197 + 136) = &type metadata for String;
    v200 = sub_1000053B0();
    *(v197 + 112) = v193;
    *(v197 + 120) = v195;
    *(v197 + 176) = &type metadata for UInt;
    *(v197 + 184) = &protocol witness table for UInt;
    *(v197 + 144) = v200;
    *(v197 + 152) = 617;
    v201 = v864[0];
    *(v197 + 216) = v198;
    *(v197 + 224) = v199;
    *(v197 + 192) = v201;
    v202 = v190;
    v203 = v201;
    v204 = static os_log_type_t.error.getter();
    sub_100005404(v196, &_mh_execute_header, v204, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v197);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v205 = static os_log_type_t.error.getter();
    sub_100005404(v196, &_mh_execute_header, v205, "pathSource must be given for custom shapes.", 43, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v206 = swift_allocObject();
    v206[2] = 8;
    v206[3] = 0;
    v206[4] = 0;
    v206[5] = 0;
    v207 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v186 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v187 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v188 = String._bridgeToObjectiveC()();

    [v761 handleFailureInFunction:v186 file:v187 lineNumber:617 isFatal:0 format:v188 args:v207];
  }

  else
  {
    if ((v36 & 1) == 0)
    {
      if (!sub_100818518(v37))
      {
        goto LABEL_13;
      }

      sub_100006370(0, &unk_101A10770);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v188 = *&v34;
      v261 = [v188 isKindOfClass:ObjCClassFromMetadata];
      v761 = v188;
      if ((v261 & 1) == 0)
      {
        v757 = objc_opt_self();
        v262 = [v757 _atomicIncrementAssertCount];
        v864[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v864);
        StaticString.description.getter();
        v263 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v264 = String._bridgeToObjectiveC()();

        v265 = [v264 lastPathComponent];

        v266 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v267;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v268 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v269 = swift_allocObject();
        *(v269 + 16) = xmmword_10146CA70;
        *(v269 + 56) = &type metadata for Int32;
        *(v269 + 64) = &protocol witness table for Int32;
        *(v269 + 32) = v262;
        v270 = sub_100006370(0, &qword_1019F4D30);
        *(v269 + 96) = v270;
        v271 = sub_1005CF04C();
        *(v269 + 104) = v271;
        *(v269 + 72) = v263;
        *(v269 + 136) = &type metadata for String;
        v272 = sub_1000053B0();
        *(v269 + 112) = v266;
        *(v269 + 120) = v32;
        *(v269 + 176) = &type metadata for UInt;
        *(v269 + 144) = v272;
        *(v269 + 152) = 613;
        v273 = v263;
        v274 = v864[0];
        *(v269 + 216) = v270;
        *(v269 + 224) = v271;
        *(v269 + 184) = &protocol witness table for UInt;
        *(v269 + 192) = v274;
        v275 = v273;
        v276 = v274;
        v277 = static os_log_type_t.error.getter();
        sub_100005404(v268, &_mh_execute_header, v277, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v269);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v278 = static os_log_type_t.error.getter();
        sub_100005404(v268, &_mh_execute_header, v278, "pathSource must be a connection line path source if shapeType is connection line.", 81, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v279 = swift_allocObject();
        v279[2] = 8;
        v279[3] = 0;
        v279[4] = 0;
        v279[5] = 0;
        v36 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v280 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v281 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v282 = String._bridgeToObjectiveC()();

        [v757 handleFailureInFunction:v280 file:v281 lineNumber:613 isFatal:0 format:v282 args:v36];

        v85 = v764;
        LOBYTE(v36) = v773;
        v37 = v767;
        LOBYTE(v32) = v774;
        v34 = v772;
        v188 = v761;
      }

      if (!v753)
      {
        goto LABEL_47;
      }

      LODWORD(v283) = [objc_opt_self() _atomicIncrementAssertCount];
      v864[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v864);
      StaticString.description.getter();
      v284 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v285 = String._bridgeToObjectiveC()();

      v286 = [v285 lastPathComponent];

      v287 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v288;

      if (qword_1019F20A0 == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_227;
    }

    v761 = objc_opt_self();
    v167 = [v761 _atomicIncrementAssertCount];
    v864[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v864);
    StaticString.description.getter();
    v168 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v169 = String._bridgeToObjectiveC()();

    v170 = [v169 lastPathComponent];

    v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v173 = v172;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v174 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v175 = swift_allocObject();
    *(v175 + 16) = xmmword_10146CA70;
    *(v175 + 56) = &type metadata for Int32;
    *(v175 + 64) = &protocol witness table for Int32;
    *(v175 + 32) = v167;
    v176 = sub_100006370(0, &qword_1019F4D30);
    *(v175 + 96) = v176;
    v177 = sub_1005CF04C();
    *(v175 + 104) = v177;
    *(v175 + 72) = v168;
    *(v175 + 136) = &type metadata for String;
    v178 = sub_1000053B0();
    *(v175 + 112) = v171;
    *(v175 + 120) = v173;
    *(v175 + 176) = &type metadata for UInt;
    *(v175 + 184) = &protocol witness table for UInt;
    *(v175 + 144) = v178;
    *(v175 + 152) = 609;
    v179 = v864[0];
    *(v175 + 216) = v176;
    *(v175 + 224) = v177;
    *(v175 + 192) = v179;
    v180 = v168;
    v181 = v179;
    v182 = static os_log_type_t.error.getter();
    sub_100005404(v174, &_mh_execute_header, v182, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v175);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v183 = static os_log_type_t.error.getter();
    sub_100005404(v174, &_mh_execute_header, v183, "shapeType must be given if pathSource is given.", 47, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v184 = swift_allocObject();
    v184[2] = 8;
    v184[3] = 0;
    v184[4] = 0;
    v184[5] = 0;
    v185 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v186 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v187 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v188 = String._bridgeToObjectiveC()();

    [v761 handleFailureInFunction:v186 file:v187 lineNumber:609 isFatal:0 format:v188 args:v185];
  }

  v85 = v764;
  LOBYTE(v36) = v773;
  v37 = v767;
  LOBYTE(v32) = v774;
  v34 = v772;
  while (1)
  {

LABEL_13:
    if (v762)
    {
      if (v753)
      {
        v761 = objc_opt_self();
        v208 = [v761 _atomicIncrementAssertCount];
        v864[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v864);
        StaticString.description.getter();
        v209 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v210 = String._bridgeToObjectiveC()();

        v211 = [v210 lastPathComponent];

        v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v213;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v214 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v215 = swift_allocObject();
        *(v215 + 16) = xmmword_10146CA70;
        *(v215 + 56) = &type metadata for Int32;
        *(v215 + 64) = &protocol witness table for Int32;
        *(v215 + 32) = v208;
        v216 = sub_100006370(0, &qword_1019F4D30);
        *(v215 + 96) = v216;
        v36 = sub_1005CF04C();
        *(v215 + 104) = v36;
        *(v215 + 72) = v209;
        *(v215 + 136) = &type metadata for String;
        v217 = sub_1000053B0();
        *(v215 + 112) = v212;
        *(v215 + 120) = v32;
        *(v215 + 176) = &type metadata for UInt;
        *(v215 + 184) = &protocol witness table for UInt;
        *(v215 + 144) = v217;
        *(v215 + 152) = 621;
        v218 = v864[0];
        *(v215 + 216) = v216;
        *(v215 + 224) = v36;
        *(v215 + 192) = v218;
        v219 = v209;
        v220 = v218;
        v221 = static os_log_type_t.error.getter();
        sub_100005404(v214, &_mh_execute_header, v221, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v215);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v222 = static os_log_type_t.error.getter();
        sub_100005404(v214, &_mh_execute_header, v222, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v223 = swift_allocObject();
        v223[2] = 8;
        v223[3] = 0;
        v223[4] = 0;
        v223[5] = 0;
        v224 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v225 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v226 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v227 = String._bridgeToObjectiveC()();

        [v761 handleFailureInFunction:v225 file:v226 lineNumber:621 isFatal:0 format:v227 args:v224];

        v85 = v764;
        LOBYTE(v36) = v773;
        v37 = v767;
        LOBYTE(v32) = v774;
        v34 = v772;
      }

      if (v758[6](v755, 1, v85) != 1)
      {
        v761 = objc_opt_self();
        v228 = [v761 _atomicIncrementAssertCount];
        v864[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v864);
        StaticString.description.getter();
        v229 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v230 = String._bridgeToObjectiveC()();

        v231 = [v230 lastPathComponent];

        v232 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v233;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v234 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v235 = swift_allocObject();
        *(v235 + 16) = xmmword_10146CA70;
        *(v235 + 56) = &type metadata for Int32;
        *(v235 + 64) = &protocol witness table for Int32;
        *(v235 + 32) = v228;
        v236 = sub_100006370(0, &qword_1019F4D30);
        *(v235 + 96) = v236;
        v36 = sub_1005CF04C();
        *(v235 + 104) = v36;
        *(v235 + 72) = v229;
        *(v235 + 136) = &type metadata for String;
        v237 = sub_1000053B0();
        *(v235 + 112) = v232;
        *(v235 + 120) = v32;
        *(v235 + 176) = &type metadata for UInt;
        *(v235 + 184) = &protocol witness table for UInt;
        *(v235 + 144) = v237;
        *(v235 + 152) = 622;
        v238 = v864[0];
        *(v235 + 216) = v236;
        *(v235 + 224) = v36;
        *(v235 + 192) = v238;
        v239 = v229;
        v240 = v238;
        v241 = static os_log_type_t.error.getter();
        sub_100005404(v234, &_mh_execute_header, v241, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v235);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v242 = static os_log_type_t.error.getter();
        sub_100005404(v234, &_mh_execute_header, v242, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v243 = swift_allocObject();
        v243[2] = 8;
        v243[3] = 0;
        v243[4] = 0;
        v243[5] = 0;
        v244 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v245 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v246 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v247 = String._bridgeToObjectiveC()();

        [v761 handleFailureInFunction:v245 file:v246 lineNumber:622 isFatal:0 format:v247 args:v244];

        LOBYTE(v36) = v773;
        v37 = v767;
        LOBYTE(v32) = v774;
        v34 = v772;
      }
    }

    if (v36)
    {
      v248 = 3;
    }

    else
    {
      v248 = v37;
    }

    if (v770)
    {
      v249 = 0.0;
    }

    else
    {
      v249 = v763;
    }

    if (v770)
    {
      v250 = 0.0;
    }

    else
    {
      v250 = *&v765;
    }

    if (v34 == 0.0)
    {
      v252 = sub_10057DBD4(v248);
      v251 = COERCE_DOUBLE([objc_opt_self() pathSourceForShapeType:v248 naturalSize:{v252, v253}]);
    }

    else
    {
      v251 = v34;
    }

    v774 = v248;
    if (v32)
    {
      v254 = *&v34;
      [*&v251 naturalSize];
      goto LABEL_56;
    }

    if (v248 == 17)
    {
      v257 = *&v34;
      v258 = 0.0;
    }

    else
    {
      v313 = sub_1011223CC(v248);
      v314 = *&v34;
      if (!v313 || sub_100818518(v248))
      {
        v258 = 0.0;
        v259 = 0.0;
        if (!sub_101122404(v248))
        {
          v258 = sub_10057DBD4(v248);
          v259 = v315;
        }

        goto LABEL_55;
      }

      v505 = sub_10057DBD4(v248);
      v258 = sqrt(v505 * v505 + v506 * v506);
    }

    v259 = 0.0;
LABEL_55:
    [*&v251 naturalSize];
    v255 = sub_100121BA4(1, v258, v259, v316, v317);
LABEL_56:
    v318 = v255;
    v319 = v256;
    v320 = a13;
    if ((a11 & 1) == 0)
    {
      v323 = a10;
LABEL_63:
      v321 = *&v323;
      goto LABEL_64;
    }

    v321 = 0.0;
    v322 = v774;
    if (v774 == 17)
    {
      goto LABEL_64;
    }

    if (sub_1011223CC(v774) && !sub_100818518(v322))
    {
      sub_10057DBD4(v322);
      *&v323 = 45.0;
      goto LABEL_63;
    }

    if (!sub_101122404(v322))
    {
      sub_10057DBD4(v322);
    }

LABEL_64:
    if (a12 == 2)
    {
      v324 = v774 != 0;
    }

    else
    {
      v324 = a12;
    }

    if (a13 == 2)
    {
      v320 = v774 != 0;
    }

    v325 = objc_allocWithZone(CRLCanvasInfoGeometry);
    v326 = [v325 initWithPosition:v324 size:v320 widthValid:LOBYTE(v771) & 1 heightValid:a9 & 1 horizontalFlip:v249 verticalFlip:v250 angle:{v318, v319, v321}];
    [*&v251 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006370(0, &unk_101A031A8);
    swift_dynamicCast();
    v327 = *&v863[0];
    if ((v32 & 1) == 0)
    {
      [v326 size];
      [v327 scaleToNaturalSize:?];
    }

    [v326 size];
    v329 = v328;
    v331 = v330;
    v765 = v327;
    [v327 naturalSize];
    v334 = sub_10011ED08(v329, v331, v332, v333, 0.001);
    v757 = *&v251;
    v761 = v326;
    if (!v334)
    {
      v335 = [objc_opt_self() _atomicIncrementAssertCount];
      v864[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v864);
      StaticString.description.getter();
      v336 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v337 = String._bridgeToObjectiveC()();

      v338 = [v337 lastPathComponent];

      v339 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v341 = v340;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v342 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v343 = swift_allocObject();
      *(v343 + 16) = xmmword_10146CA70;
      *(v343 + 56) = &type metadata for Int32;
      *(v343 + 64) = &protocol witness table for Int32;
      *(v343 + 32) = v335;
      v344 = sub_100006370(0, &qword_1019F4D30);
      *(v343 + 96) = v344;
      v345 = sub_1005CF04C();
      *(v343 + 104) = v345;
      *(v343 + 72) = v336;
      *(v343 + 136) = &type metadata for String;
      v346 = sub_1000053B0();
      *(v343 + 112) = v339;
      *(v343 + 120) = v341;
      *(v343 + 176) = &type metadata for UInt;
      *(v343 + 184) = &protocol witness table for UInt;
      *(v343 + 144) = v346;
      *(v343 + 152) = 649;
      v347 = v864[0];
      *(v343 + 216) = v344;
      *(v343 + 224) = v345;
      *(v343 + 192) = v347;
      v348 = v336;
      v349 = v347;
      v350 = static os_log_type_t.error.getter();
      sub_100005404(v342, &_mh_execute_header, v350, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v343);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v351 = static os_log_type_t.error.getter();
      sub_100005404(v342, &_mh_execute_header, v351, "Geometry and path source must have the same size.", 49, 2, _swiftEmptyArrayStorage);

      sub_100604780(_swiftEmptyArrayStorage, "_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2, 649);
      v326 = v761;
    }

    v352 = v774;
    if (v774)
    {
      v353 = sub_1011223CC(v774);
      v354 = v773;
      if (v353 || v352 == 17)
      {
        type metadata accessor for CRLBoardInsertStyleData(0);
        sub_1005B981C(&unk_1019F4B90);
      }

      else
      {
        sub_1005B981C(&unk_1019F4B90);
      }

      CRRegister.wrappedValue.getter();
      memcpy(v864, v863, sizeof(v864));
    }

    else
    {
      type metadata accessor for CRLBoardInsertStyleData(0);
      sub_1005B981C(&unk_1019F4B90);
      CRRegister.wrappedValue.getter();
      memcpy(v864, v863, sizeof(v864));
      v354 = v773;
    }

    v355 = *(v38 + 208);
    v885[12] = *(v38 + 192);
    v885[13] = v355;
    v885[14] = *(v38 + 224);
    v356 = *(v38 + 144);
    v885[8] = *(v38 + 128);
    v885[9] = v356;
    v357 = *(v38 + 176);
    v885[10] = *(v38 + 160);
    v885[11] = v357;
    v358 = *(v38 + 80);
    v885[4] = *(v38 + 64);
    v885[5] = v358;
    v359 = *(v38 + 112);
    v885[6] = *(v38 + 96);
    v885[7] = v359;
    v360 = *(v38 + 16);
    v885[0] = *v38;
    v885[1] = v360;
    v361 = *(v38 + 48);
    v885[2] = *(v38 + 32);
    v886 = *(v38 + 240);
    v885[3] = v361;
    if (sub_100695050(v885) == 1)
    {
      memcpy(v863, v864, sizeof(v863));
      if (sub_1000C0F9C(v863) == 1)
      {
        sub_100A1C544(v352, &v815);
        v843 = v827;
        v844 = v828;
        v845 = v829;
        v846 = v830;
        v839 = v823;
        v840 = v824;
        v841 = v825;
        v842 = v826;
        v835 = v819;
        v836 = v820;
        v837 = v821;
        v838 = v822;
        v831 = v815;
        v832 = v816;
        v833 = v817;
        v834 = v818;
        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v831, v364);
      }

      else
      {
        v846 = *(&v863[52] + 1);
        v843 = *(&v863[49] + 8);
        v844 = *(&v863[50] + 8);
        v845 = *(&v863[51] + 8);
        v839 = *(&v863[45] + 8);
        v840 = *(&v863[46] + 8);
        v841 = *(&v863[47] + 8);
        v842 = *(&v863[48] + 8);
        v835 = *(&v863[41] + 8);
        v836 = *(&v863[42] + 8);
        v837 = *(&v863[43] + 8);
        v838 = *(&v863[44] + 8);
        v831 = *(&v863[37] + 8);
        v832 = *(&v863[38] + 8);
        v833 = *(&v863[39] + 8);
        v834 = *(&v863[40] + 8);
        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v831, *&v362);
        sub_100880AD0(&v863[37] + 8, &v847);
      }

      v859 = v843;
      v860 = v844;
      v861 = v845;
      v862 = v846;
      v856 = v840;
      v857 = v841;
      v858 = v842;
      v851 = v835;
      v852 = v836;
      v853 = v837;
      v854 = v838;
      v855 = v839;
      v847 = v831;
      v848 = v832;
      v365 = v833;
      v366 = v834;
    }

    else
    {
      v859 = v904;
      v860 = v905;
      v861 = v906;
      v862 = v907;
      v856 = v901;
      v857 = v902;
      v858 = v903;
      v851 = v896;
      v852 = v897;
      v853 = v898;
      v854 = v899;
      v855 = v900;
      v847 = v892;
      v848 = v893;
      v365 = v894;
      v366 = v895;
    }

    v849 = v365;
    v850 = v366;
    if (a14 == 1)
    {
      memcpy(v863, v864, sizeof(v863));
      if (sub_1000C0F9C(v863) == 1)
      {
        sub_10000BE14(v38, &v831, &unk_101A0D830);
        if (sub_1011223CC(v352) || v352 == 17)
        {
          *(&v832 + 1) = &type metadata for CRLFeatureFlags;
          *&v833 = sub_100004D60();
          LOBYTE(v831) = 10;
          v369 = isFeatureEnabled(_:)();
          sub_100005070(&v831);
          v370 = [objc_opt_self() blackColor];
          if (v369)
          {
            v371 = 3.0;
          }

          else
          {
            v371 = 1.0;
          }

          v772 = COERCE_DOUBLE([objc_opt_self() strokeWithColor:v370 width:v371]);

          v354 = v773;
        }

        else
        {
          v772 = 0.0;
        }
      }

      else
      {
        v827 = v863[12];
        v828 = v863[13];
        *&v829 = *&v863[14];
        v823 = v863[8];
        v824 = v863[9];
        v825 = v863[10];
        v826 = v863[11];
        v819 = v863[4];
        v820 = v863[5];
        v821 = v863[6];
        v822 = v863[7];
        v815 = v863[0];
        v816 = v863[1];
        v817 = v863[2];
        v818 = v863[3];
        if (sub_1000C0FB4(&v815) == 1)
        {
          sub_10000BE14(v38, &v831, &unk_101A0D830);
          v772 = 0.0;
        }

        else
        {
          v890[11] = v826;
          v890[12] = v827;
          v890[13] = v828;
          v890[7] = v822;
          v890[8] = v823;
          v890[9] = v824;
          v890[10] = v825;
          v890[3] = v818;
          v890[4] = v819;
          v890[5] = v820;
          v890[6] = v821;
          v890[0] = v815;
          v890[1] = v816;
          v891 = v829;
          v890[2] = v817;
          sub_10000BE14(v38, &v831, &unk_101A0D830);
          v772 = COERCE_DOUBLE(sub_100B946C8(v890, 0));
        }
      }
    }

    else
    {
      sub_10000BE14(v38, v863, &unk_101A0D830);
      v772 = *&a14;
    }

    if (a15 != 1)
    {
      sub_1000505E0(a14);
      v367 = *&a15;
      goto LABEL_114;
    }

    memcpy(v863, v864, sizeof(v863));
    if (sub_1000C0F9C(v863) != 1)
    {
      if (*(&v863[20] + 1))
      {
        v887[0] = *(&v863[14] + 8);
        v887[1] = *(&v863[15] + 8);
        v887[2] = *(&v863[16] + 8);
        v887[3] = *(&v863[17] + 8);
        v887[4] = *(&v863[18] + 8);
        v887[5] = *(&v863[19] + 8);
        v888 = *(&v863[20] + 1);
        v889 = *&v863[21];
        sub_1000505E0(a14);
        v367 = COERCE_DOUBLE(sub_1012479DC(v887));
        goto LABEL_114;
      }

      sub_1000505E0(a14);
LABEL_113:
      v367 = 0.0;
      goto LABEL_114;
    }

    sub_1000505E0(a14);
    if (!v352 || sub_1011223CC(v352) || v352 == 17)
    {
      goto LABEL_113;
    }

    if (qword_1019F1880 != -1)
    {
      swift_once();
    }

    v367 = *&qword_101AD6A90;
    v368 = qword_101AD6A90;
LABEL_114:
    if (a16 == 1)
    {
      if ((v354 & 1) == 0 && (v767 == 15 || v767 == 16))
      {
        v503 = objc_opt_self();
        sub_1000505E0(a15);
        v504 = v503;
        v354 = v773;
        v771 = COERCE_DOUBLE([v504 simpleArrow]);
        if (a17 != 1)
        {
LABEL_124:
          sub_1000505E0(a16);
          v770 = a17;
          goto LABEL_126;
        }
      }

      else
      {
        sub_1000505E0(a15);
        v771 = 0.0;
        if (a17 != 1)
        {
          goto LABEL_124;
        }
      }
    }

    else
    {
      sub_1000505E0(a15);
      v771 = *&a16;
      if (a17 != 1)
      {
        goto LABEL_124;
      }
    }

    if ((v354 & 1) != 0 || v767 != 15)
    {
      sub_1000505E0(a16);
      *&v770 = 0.0;
    }

    else
    {
      v372 = objc_opt_self();
      sub_1000505E0(a16);
      *&v770 = COERCE_DOUBLE([v372 simpleArrow]);
    }

LABEL_126:
    sub_1000505E0(a17);
    v373 = sub_100818518(v352);
    v763 = v367;
    if (v373)
    {
      sub_10000CAAC(&v847, &unk_101A0D830);
      v374 = sub_10000CAAC(v864, &qword_1019F4B88);
      v375 = *&v766[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
      v376 = *(v375 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
      v377 = v760;
      (*(**(*(v375 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v374);
      v378 = objc_allocWithZone(type metadata accessor for CRLConnectionLineItem());
      v379 = v770;
      v380 = v376;
      v381 = v326;
      v382 = v765;
      v383 = *&v772;
      v384 = *&v771;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v386 = [v378 initWithStore:v380 parentContainerUUID:isa geometry:v381 pathSource:v382 stroke:v383 headLineEnd:v384 tailLineEnd:v379];

      v387 = v386;
      v388 = v377;
      v389 = v763;
      (*(v769 + 8))(v388, v768);
LABEL_128:
      v390 = v757;
      goto LABEL_194;
    }

    if (v762)
    {
      v715 = a22;
      sub_10000CAAC(&v847, &unk_101A0D830);
      v391 = sub_10000CAAC(v864, &qword_1019F4B88);
      v711 = a24;
      v392 = *&v766[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
      v393 = v326;
      v762 = *(v392 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
      LODWORD(v716) = a25 | (a24 == 0);
      v394 = v744;
      (*(**(*(v392 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v391);
      v395 = v769;
      v396 = *(v769 + 16);
      v397 = v754;
      v398 = v768;
      *&v753 = v769 + 16;
      *&v749 = v396;
      v396(v754, v394, v768);
      *&v714 = *(v395 + 56);
      (v714)(v397, 0, 1, v398);
      LOBYTE(v875) = 1;
      v399 = type metadata accessor for CRLTableAnchorHint();
      v400 = *(v399 - 8);
      v712 = *(v400 + 56);
      v713 = v400 + 56;
      v401 = v748;
      (v712)(v748, 1, 1, v399);
      v767 = *&v367;
      v402 = v393;
      v755 = v765;
      v766 = *&v772;
      v764 = *&v771;
      *&v773 = v770;
      v758 = v762;
      sub_101271CCC(v402, &v880);
      v762 = v402;

      v403 = v717;
      sub_10000BE14(v397, v717, &qword_1019F6990);
      v404 = v747;
      sub_10000BE14(v401, v747, &unk_101A09DD0);
      v405 = v742;
      (v714)(v742, 1, 1, v398);
      v406 = v718;
      v407 = *(v718 + 28);
      v408 = v405 + *(v718 + 24);
      (v712)(v405 + v407, 1, 1, v399);
      *(v405 + *(v406 + 32)) = _swiftEmptyDictionarySingleton;
      sub_10002C638(v403, v405, &qword_1019F6990);
      sub_10000CAAC(v401, &unk_101A09DD0);
      sub_10000CAAC(v754, &qword_1019F6990);
      v409 = (v405 + *(v406 + 20));
      v410 = v881;
      *v409 = v880;
      v409[1] = v410;
      *v408 = 0u;
      *(v408 + 16) = 0u;
      *(v408 + 32) = 0u;
      *(v408 + 48) = 0u;
      *(v408 + 64) = v875;
      v411 = v715;
      sub_10002C638(v404, v405 + v407, &unk_101A09DD0);
      v412 = v740;
      sub_101125504(v405, v740, type metadata accessor for CRLBoardItemParentAffinity);
      v413 = v741;
      sub_101125504(v412, v741, type metadata accessor for CRLBoardItemParentAffinity);
      v414 = v751;
      v415 = *(v751 + 20);
      v755 = v755;
      sub_100C3D740(v755, v413 + v415);
      v416 = v414[6];
      v417 = type metadata accessor for CRLPKStrokePathData();
      v418 = *(*(v417 - 8) + 56);
      v418(v413 + v416, 1, 1, v417);
      v419 = v413 + v414[7];
      *v419 = 0;
      *(v419 + 8) = -1;
      *(v413 + v414[8]) = _swiftEmptyDictionarySingleton;
      if (v411)
      {
        v420 = a23;
        v421 = v411;
        v422 = v681;
        sub_100CD0B98(v421, a23, v681);
        v418(v422, 0, 1, v417);
        sub_10002C638(v422, v413 + v416, &qword_101A224B8);
      }

      if (v716)
      {
        sub_10112556C(v740, type metadata accessor for CRLBoardItemParentAffinity);
      }

      else
      {
        v425 = sub_100D633A8(v711);
        sub_10112556C(v740, type metadata accessor for CRLBoardItemParentAffinity);
        *v419 = v425;
        *(v419 + 8) = 0;
      }

      v426 = v743;
      sub_10112549C(v741, v743, type metadata accessor for CRLShapeItemParentAffinity);
      *&v748 = type metadata accessor for CRLShapeItemParentAffinity;
      sub_101125504(v426, v759, type metadata accessor for CRLShapeItemParentAffinity);
      sub_1005D0C00(&v791);
      v427 = v760;
      UUID.init()();
      v428 = v720;
      v754 = *(v720 + 52);
      v863[4] = v795;
      v863[5] = v796;
      v863[6] = v797;
      v863[7] = v798;
      v863[0] = v791;
      v863[1] = v792;
      v863[2] = v793;
      v863[3] = v794;
      sub_1005B981C(&unk_101A09DE0);
      sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &unk_1014897A0, sub_10074933C);
      v429 = v752;
      CRRegister.init(wrappedValue:)();
      *(v429 + *(v428 + 56)) = _swiftEmptyDictionarySingleton;
      v430 = v768;
      (v749)(v719, v427, v768);
      CRRegister.init(_:)();
      sub_101125504(v759, v750, v748);
      sub_101123A5C(&qword_101A106B0, type metadata accessor for CRLShapeItemParentAffinity);
      CRRegister.init(_:)();
      LOBYTE(v863[0]) = 0;
      CRRegister.init(_:)();
      LOBYTE(v863[0]) = 0;
      CRRegister.init(_:)();
      *&v863[0] = 0;
      *(&v863[0] + 1) = 0xE000000000000000;
      CRRegister.init(_:)();
      v863[4] = v795;
      v863[5] = v796;
      v863[6] = v797;
      v863[7] = v798;
      v863[0] = v791;
      v863[1] = v792;
      v863[2] = v793;
      v863[3] = v794;
      v431 = v721;
      CRRegister.init(_:)();
      v432 = *(v769 + 8);
      v433 = v760;
      v769 += 8;
      *&v760 = v432;
      v432(v433, v430);
      sub_10112556C(v759, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v743, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v742, type metadata accessor for CRLBoardItemParentAffinity);
      (*(v722 + 40))(v754 + v429, v431, v723);
      if (v763 == 0.0)
      {
        v759 = 0;
        v754 = 0;
        v753 = 0u;
        v750 = 0u;
        v751 = 0u;
        v748 = 0u;
        v749 = 0u;
        v747 = 0u;
      }

      else
      {
        sub_101247234(v767, &v776);
        v753 = v776;
        v750 = v778;
        v751 = v777;
        v747 = v781;
        v748 = v780;
        v749 = v779;
        v754 = *(&v782 + 1);
        v759 = v782;
      }

      v476 = *&v771;
      if (v772 == 0.0)
      {
        sub_1005D0BD8(v863);
        if (!v476)
        {
          goto LABEL_156;
        }

LABEL_154:
        v478 = v764;
        sub_1009CE67C(v478, &v867);
        v723 = v868;
        v741 = v867;
        *&v742 = *(&v869 + 1);
        *&v743 = v869;
        *&v740 = v870;
      }

      else
      {
        sub_100B965E4(v766, &v831);
        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v831, v477);
        v863[12] = v843;
        v863[13] = v844;
        *&v863[14] = v845;
        v863[8] = v839;
        v863[9] = v840;
        v863[10] = v841;
        v863[11] = v842;
        v863[4] = v835;
        v863[5] = v836;
        v863[6] = v837;
        v863[7] = v838;
        v863[0] = v831;
        v863[1] = v832;
        v863[2] = v833;
        v863[3] = v834;
        if (v476)
        {
          goto LABEL_154;
        }

LABEL_156:
        *&v743 = 0;
        *&v742 = 0;
        *&v740 = 0;
        v741 = 0u;
        v723 = 0u;
      }

      if (*&v770 == 0.0)
      {
        v721 = 0;
        *&v722 = 0;
        *&v720 = 0;
        v718 = 0u;
        v719 = 0u;
      }

      else
      {
        v479 = v773;
        sub_1009CE67C(v479, &v806);
        v718 = v806;
        v719 = v807;
        v721 = *(&v808 + 1);
        *&v722 = v808;
        *&v720 = v809;
      }

      v836 = 0u;
      v837 = 0u;
      v834 = 0u;
      v835 = 0u;
      v832 = 0u;
      v833 = 0u;
      v831 = 0u;
      *&v717 = sub_1005B981C(&qword_1019FFF80);
      v716 = sub_100A49DD0(&qword_101A0D9E0, &qword_1019FFF80, &unk_101489000, sub_1006BD1F0);
      v480 = v745;
      CRRegister.init(wrappedValue:)();
      v481 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
      *&v714 = v481[5];
      sub_1005D0BD8(&v831);
      v827 = v843;
      v828 = v844;
      *&v829 = v845;
      v823 = v839;
      v824 = v840;
      v825 = v841;
      v826 = v842;
      v819 = v835;
      v820 = v836;
      v821 = v837;
      v822 = v838;
      v815 = v831;
      v816 = v832;
      v817 = v833;
      v818 = v834;
      sub_1005B981C(&unk_101A106C0);
      sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
      CRRegister.init(wrappedValue:)();
      v482 = v481[6];
      *&v818 = 0;
      v816 = 0u;
      v817 = 0u;
      v815 = 0u;
      sub_1005B981C(&unk_101A0DA00);
      sub_100A49DD0(&unk_101A106E0, &unk_101A0DA00, &unk_101495050, sub_1009CDC80);
      CRRegister.init(wrappedValue:)();
      v483 = v481[7];
      *&v818 = 0;
      v816 = 0u;
      v817 = 0u;
      v815 = 0u;
      CRRegister.init(wrappedValue:)();
      v715 = v481[8];
      LODWORD(v815) = 0;
      CRRegister.init(wrappedValue:)();
      *&v480[v481[9]] = _swiftEmptyDictionarySingleton;
      v815 = v753;
      v816 = v751;
      v817 = v750;
      v818 = v749;
      v819 = v748;
      v820 = v747;
      *&v821 = v759;
      *(&v821 + 1) = v754;
      v484 = v724;
      CRRegister.init(_:)();
      (*(v725 + 40))(v480, v484, v726);
      v827 = v863[12];
      v828 = v863[13];
      *&v829 = *&v863[14];
      v823 = v863[8];
      v824 = v863[9];
      v825 = v863[10];
      v826 = v863[11];
      v819 = v863[4];
      v820 = v863[5];
      v821 = v863[6];
      v822 = v863[7];
      v815 = v863[0];
      v816 = v863[1];
      v817 = v863[2];
      v818 = v863[3];
      v485 = v727;
      CRRegister.init(_:)();
      (*(v728 + 40))(&v480[v714], v485, v729);
      v815 = v741;
      v816 = v723;
      *&v817 = v743;
      *(&v817 + 1) = v742;
      *&v818 = v740;
      v486 = v730;
      CRRegister.init(_:)();
      v487 = *(v732 + 40);
      v488 = &v480[v482];
      v489 = v733;
      v487(v488, v486, v733);
      v815 = v718;
      v816 = v719;
      *&v817 = v722;
      *(&v817 + 1) = v721;
      *&v818 = v720;
      CRRegister.init(_:)();
      v487(&v480[v483], v486, v489);
      LODWORD(v815) = 0;
      v490 = v734;
      CRRegister.init(_:)();
      (*(v735 + 40))(&v480[v715], v490, v736);
      *&v480[*(v731 + 20)] = _swiftEmptyDictionarySingleton;
      v491 = v746;
      sub_101125504(v480, v746, type metadata accessor for CRLShapeItemCRDTData);
      *&v491[*(v696 + 20)] = _swiftEmptyDictionarySingleton;
      v492 = v756;
      sub_10000BE14(v752, v756, &unk_101A0F400);
      v493 = v698;
      sub_101125504(v491, v698, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      *&v815 = 0x1000000000000;
      *(&v815 + 1) = 0x2000400000000;
      v816 = 0x1000000000000uLL;
      LOBYTE(v817) = 1;
      type metadata accessor for CRLFreehandDrawingShapeItemData(0);
      v494 = swift_allocObject();
      v495 = v739;
      sub_10000BE14(v492, v739, &unk_101A0F400);
      v496 = v697;
      sub_101125504(v493, v697, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      sub_101125504(v496, v494 + *(*v494 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      v497 = v738;
      sub_10000BE14(v495, v738, &unk_101A0F400);
      *(v494 + qword_101A27318) = 0;
      v498 = v737;
      sub_10000BE14(v497, v737, &unk_101A0F400);
      sub_10000BE14(v498, v494 + *(*v494 + 736), &unk_101A0F400);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v498, &unk_101A0F400);
      sub_10000CAAC(v497, &unk_101A0F400);
      sub_10112556C(v496, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      sub_10000CAAC(v495, &unk_101A0F400);
      sub_10112556C(v493, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      sub_10000CAAC(v756, &unk_101A0F400);
      v499 = sub_100747AF0(&v815, 2);
      v500 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem());
      *&v500[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
      *&v500[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
      v501 = &v500[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
      *v501 = 0u;
      *(v501 + 1) = 0u;
      *(v501 + 2) = 0u;
      *(v501 + 6) = 0;
      *&v500[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
      *&v500[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v758;
      *&v500[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v499;
      v502 = type metadata accessor for CRLBoardItemBase(0);
      v775.receiver = v500;
      v775.super_class = v502;

      v387 = objc_msgSendSuper2(&v775, "init");

      sub_10112556C(v746, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      (v760)(v744, v768);
      sub_10112556C(v745, type metadata accessor for CRLShapeItemCRDTData);
      sub_10000CAAC(v752, &unk_101A0F400);
      v390 = v757;
      v389 = v763;
      goto LABEL_194;
    }

    memcpy(v863, v864, sizeof(v863));
    if (sub_1000C0F9C(v863) == 1)
    {
      v423 = v767;
      v424 = v354 & 1 | (v767 != 0) ? 10.0 : 4.0;
      v752 = 1;
    }

    else
    {
      sub_10000CAAC(v864, &qword_1019F4B88);
      v434 = LOBYTE(v863[54]) ? 0 : BYTE8(v863[53]);
      v752 = v434;
      v424 = *&v864[106];
      v423 = v767;
    }

    v435 = v695;
    sub_10000BE14(v755, v695, &unk_101A0B1C0);
    v436 = v758[6];
    v767 = v758 + 6;
    v762 = v436;
    if (v436(v435, 1, v764) != 1)
    {
      break;
    }

    v437 = sub_10000CAAC(v435, &unk_101A0B1C0);
    v438 = v753;
    if (v753)
    {
      v439 = v753;
    }

    else
    {
      v437 = [objc_allocWithZone(NSAttributedString) init];
      v439 = v437;
    }

    v507 = *&v771;
    v508 = *&v766[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
    v745 = *(v508 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
    (*(**(*(v508 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v437);
    LODWORD(v743) = v423 != 0;
    v509 = sub_10068D144();
    v510 = v439;
    *&v741 = v326;
    *&v742 = v765;
    *&v753 = *&v772;
    v755 = v507;
    v766 = v770;
    v746 = *&v367;
    v511 = v510;
    v744 = v745;
    v512 = v438;
    v513 = v675;
    v745 = v509;
    CRAttributedString.init(_:)();
    v38 = v691;
    v283 = v692;
    (*(v710 + 32))(v691, v513, v692);
    v514 = [v511 length];
    v515 = swift_allocObject();
    *(v515 + 16) = v38;
    v516 = swift_allocObject();
    *(v516 + 16) = sub_10068D198;
    *(v516 + 24) = v515;
    *&v833 = sub_101123A34;
    *(&v833 + 1) = v516;
    *&v831 = _NSConcreteStackBlock;
    *(&v831 + 1) = *"";
    *&v832 = sub_10110DB0C;
    *(&v832 + 1) = &unk_1018B1D78;
    v284 = _Block_copy(&v831);
    v287 = *(&v833 + 1);

    [v511 enumerateAttributesInRange:0 options:v514 usingBlock:{0, v284}];
    *&v740 = v511;

    _Block_release(v284);
    v32 = 1;
    LOBYTE(v511) = swift_isEscapingClosureAtFileLocation();

    if ((v511 & 1) == 0)
    {
      v517 = v687;
      (*(v710 + 16))(v687, v38, v283);
      v518 = v764;
      CRAttributedString.init(_:)();
      *(v517 + v518[6]) = _swiftEmptyDictionarySingleton;
      v519 = v769;
      v520 = v769 + 16;
      v521 = *(v769 + 16);
      v522 = v684;
      v523 = v768;
      (v521)(v684, v709);
      v712 = v521;
      v713 = v520;
      sub_101125504(v517, v708, type metadata accessor for CRLWPStorageCRDTData);
      v524 = v754;
      v525 = v523;
      (v521)(v754, v522, v523);
      v526 = *(v519 + 56);
      v526(v524, 0, 1, v525);
      v814 = 1;
      v527 = type metadata accessor for CRLTableAnchorHint();
      v528 = *(v527 - 8);
      v705 = *(v528 + 56);
      v711 = v528 + 56;
      v529 = v748;
      (v705)(v748, 1, 1, v527);
      v530 = v741;
      sub_101271CCC(v530, &v865);
      v704 = v530;

      v531 = v717;
      sub_10000BE14(v524, v717, &qword_1019F6990);
      sub_10000BE14(v529, v747, &unk_101A09DD0);
      v532 = v714;
      v526(v714, 1, 1, v525);
      v533 = v718;
      v534 = *(v718 + 28);
      v535 = v532;
      v536 = v532 + *(v718 + 24);
      (v705)(v535 + v534, 1, 1, v527);
      *(v535 + *(v533 + 32)) = _swiftEmptyDictionarySingleton;
      sub_10002C638(v531, v535, &qword_1019F6990);
      sub_10000CAAC(v529, &unk_101A09DD0);
      sub_10000CAAC(v754, &qword_1019F6990);
      v537 = (v535 + *(v533 + 20));
      v538 = v866;
      *v537 = v865;
      v537[1] = v538;
      *v536 = 0u;
      *(v536 + 16) = 0u;
      *(v536 + 32) = 0u;
      *(v536 + 48) = 0u;
      *(v536 + 64) = v814;
      sub_10002C638(v747, v535 + v534, &unk_101A09DD0);
      v539 = v689;
      sub_101125504(v535, v689, type metadata accessor for CRLBoardItemParentAffinity);
      v540 = v759;
      sub_101125504(v539, v759, type metadata accessor for CRLBoardItemParentAffinity);
      v541 = v751;
      v542 = *(v751 + 20);
      v703 = v742;
      sub_100C3D740(v703, v540 + v542);
      v543 = v541[6];
      v544 = type metadata accessor for CRLPKStrokePathData();
      (*(*(v544 - 8) + 56))(v540 + v543, 1, 1, v544);
      v545 = v540 + v541[7];
      *v545 = 0;
      *(v545 + 8) = -1;
      *(v540 + v541[8]) = _swiftEmptyDictionarySingleton;
      v754 = type metadata accessor for CRLBoardItemParentAffinity;
      sub_10112556C(v539, type metadata accessor for CRLBoardItemParentAffinity);
      *&v747 = type metadata accessor for CRLShapeItemParentAffinity;
      sub_101125504(v540, v750, type metadata accessor for CRLShapeItemParentAffinity);
      sub_1005D0C00(&v806);
      v546 = v760;
      UUID.init()();
      v547 = v720;
      *&v748 = *(v720 + 52);
      v835 = v810;
      v836 = v811;
      v837 = v812;
      v838 = v813;
      v831 = v806;
      v832 = v807;
      v833 = v808;
      v834 = v809;
      sub_1005B981C(&unk_101A09DE0);
      sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &unk_1014897A0, sub_10074933C);
      v548 = v706;
      CRRegister.init(wrappedValue:)();
      *(v548 + *(v547 + 56)) = _swiftEmptyDictionarySingleton;
      (v712)(v719, v546, v768);
      CRRegister.init(_:)();
      v549 = v750;
      sub_101125504(v750, v690, v747);
      sub_101123A5C(&qword_101A106B0, type metadata accessor for CRLShapeItemParentAffinity);
      CRRegister.init(_:)();
      LOBYTE(v831) = 0;
      CRRegister.init(_:)();
      LOBYTE(v831) = 0;
      CRRegister.init(_:)();
      *&v831 = 0;
      *(&v831 + 1) = 0xE000000000000000;
      CRRegister.init(_:)();
      v835 = v810;
      v836 = v811;
      v837 = v812;
      v838 = v813;
      v831 = v806;
      v832 = v807;
      v833 = v808;
      v834 = v809;
      v550 = v721;
      CRRegister.init(_:)();
      v551 = *(v769 + 8);
      v769 += 8;
      v702 = v551;
      (v551)(v760, v768);
      sub_10112556C(v549, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v759, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v714, v754);
      (*(v722 + 40))(v548 + v748, v550, v723);
      if (v763 == 0.0)
      {
        v759 = 0;
        v754 = 0;
        v552 = 0uLL;
        v750 = 0u;
        v751 = 0u;
        v747 = 0u;
        v748 = 0u;
        v742 = 0u;
      }

      else
      {
        sub_101247234(v746, &v867);
        v552 = v867;
        v750 = v869;
        v751 = v868;
        v742 = v872;
        v747 = v871;
        v748 = v870;
        v759 = v873;
        v754 = v874;
      }

      v617 = v773;
      v773 = v552;
      if (v772 == 0.0)
      {
        sub_1005D0BD8(&v791);
        if (v771 != 0.0)
        {
          goto LABEL_204;
        }
      }

      else
      {
        sub_100B965E4(v753, &v831);
        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v831, v618);
        v803 = v843;
        v804 = v844;
        v805 = v845;
        v799 = v839;
        v800 = v840;
        v801 = v841;
        v802 = v842;
        v795 = v835;
        v796 = v836;
        v797 = v837;
        v798 = v838;
        v791 = v831;
        v792 = v832;
        v793 = v833;
        v794 = v834;
        if (v771 != 0.0)
        {
LABEL_204:
          v619 = v755;
          sub_1009CE67C(v619, &v875);
          v720 = v876;
          v722 = v875;
          *&v741 = v877;
          *&v723 = v878;
          v721 = v879;

LABEL_207:
          LODWORD(v760) = v617 | v743;
          if (*&v770 == 0.0)
          {
            *&v743 = 0;
            *&v719 = 0;
            *&v718 = 0;
            v717 = 0u;
            v714 = 0u;
          }

          else
          {
            v620 = v766;
            sub_1009CE67C(v620, &v880);
            v717 = v881;
            v714 = v880;
            *&v743 = v882;
            *&v719 = v883;
            *&v718 = v884;
          }

          v836 = 0u;
          v837 = 0u;
          v834 = 0u;
          v835 = 0u;
          v832 = 0u;
          v833 = 0u;
          v831 = 0u;
          v713 = sub_1005B981C(&qword_1019FFF80);
          v712 = sub_100A49DD0(&qword_101A0D9E0, &qword_1019FFF80, &unk_101489000, sub_1006BD1F0);
          v621 = v683;
          CRRegister.init(wrappedValue:)();
          v622 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
          v705 = v622[5];
          sub_1005D0BD8(&v776);
          v843 = v788;
          v844 = v789;
          *&v845 = v790;
          v839 = v784;
          v840 = v785;
          v841 = v786;
          v842 = v787;
          v835 = v780;
          v836 = v781;
          v837 = v782;
          v838 = v783;
          v831 = v776;
          v832 = v777;
          v833 = v778;
          v834 = v779;
          sub_1005B981C(&unk_101A106C0);
          sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
          CRRegister.init(wrappedValue:)();
          v623 = v622[6];
          *&v834 = 0;
          v832 = 0u;
          v833 = 0u;
          v831 = 0u;
          sub_1005B981C(&unk_101A0DA00);
          sub_100A49DD0(&unk_101A106E0, &unk_101A0DA00, &unk_101495050, sub_1009CDC80);
          CRRegister.init(wrappedValue:)();
          v624 = v622[7];
          *&v834 = 0;
          v832 = 0u;
          v833 = 0u;
          v831 = 0u;
          CRRegister.init(wrappedValue:)();
          v711 = v622[8];
          LODWORD(v831) = 0;
          CRRegister.init(wrappedValue:)();
          *(v621 + v622[9]) = _swiftEmptyDictionarySingleton;
          v831 = v773;
          v832 = v751;
          v833 = v750;
          v834 = v748;
          v835 = v747;
          v836 = v742;
          *&v837 = v759;
          *(&v837 + 1) = v754;
          v625 = v724;
          CRRegister.init(_:)();
          (*(v725 + 40))(v621, v625, v726);
          v843 = v803;
          v844 = v804;
          *&v845 = v805;
          v839 = v799;
          v840 = v800;
          v841 = v801;
          v842 = v802;
          v835 = v795;
          v836 = v796;
          v837 = v797;
          v838 = v798;
          v831 = v791;
          v832 = v792;
          v833 = v793;
          v834 = v794;
          v626 = v727;
          CRRegister.init(_:)();
          (*(v728 + 40))(v621 + v705, v626, v729);
          v831 = v722;
          v832 = v720;
          *&v833 = v741;
          *(&v833 + 1) = v723;
          *&v834 = v721;
          v627 = v730;
          CRRegister.init(_:)();
          v628 = *(v732 + 40);
          v629 = v621 + v623;
          v630 = v733;
          v628(v629, v627, v733);
          v831 = v714;
          v832 = v717;
          *&v833 = v743;
          *(&v833 + 1) = v719;
          *&v834 = v718;
          CRRegister.init(_:)();
          v628(v621 + v624, v627, v630);
          LODWORD(v831) = 0;
          v631 = v734;
          CRRegister.init(_:)();
          (*(v735 + 40))(v621 + v711, v631, v736);
          *(v621 + *(v731 + 20)) = _swiftEmptyDictionarySingleton;
          if ((v752 - 1) >= 3)
          {
            v632 = 0;
          }

          else
          {
            v632 = v752;
          }

          *&v831 = v424;
          v633 = v686;
          CRRegister.init(wrappedValue:)();
          v634 = v716;
          *&v831 = v632;
          BYTE8(v831) = 0;
          v635 = sub_1005B981C(&qword_1019F7D38);
          v636 = sub_101123AA4();
          v759 = v635;
          v754 = v636;
          CRRegister.init(wrappedValue:)();
          LOBYTE(v831) = v760 & 1;
          CRRegister.init(wrappedValue:)();
          *(v633 + *(v634 + 28)) = _swiftEmptyDictionarySingleton;
          *&v760 = type metadata accessor for CRLShapeItemCRDTData;
          v637 = v682;
          sub_101125504(v621, v682, type metadata accessor for CRLShapeItemCRDTData);
          v638 = v685;
          sub_101125504(v708, v685, type metadata accessor for CRLWPStorageCRDTData);
          v639 = v764;
          (v758[7])(v638, 0, 1, v764);
          v640 = v707;
          sub_101125504(v633, v707, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
          (*(v715 + 56))(v640, 0, 1, v634);
          v641 = v749;
          v642 = *(v749 + 28);
          sub_1006950BC(&v831);
          v827 = v843;
          v828 = v844;
          v829 = v845;
          v830 = v846;
          v823 = v839;
          v824 = v840;
          v825 = v841;
          v826 = v842;
          v819 = v835;
          v820 = v836;
          v821 = v837;
          v822 = v838;
          v815 = v831;
          v816 = v832;
          v817 = v833;
          v818 = v834;
          sub_1005B981C(&unk_101A0D830);
          sub_100A49DD0(&qword_1019F7DE8, &unk_101A0D830, &unk_101488F70, sub_100694290);
          v643 = v674;
          *&v773 = v642;
          CRRegister.init(wrappedValue:)();
          v644 = v643;
          *(v643 + *(v641 + 32)) = _swiftEmptyDictionarySingleton;
          sub_101125504(v637, v643, v760);
          v645 = v671;
          sub_10000BE14(v638, v671, &unk_101A0B1C0);
          v646 = v762;
          if (v762(v645, 1, v639) == 1)
          {
            v647 = v670;
            CRAttributedString.init()();
            CRAttributedString.init(_:)();
            *(v647 + v639[6]) = _swiftEmptyDictionarySingleton;
            v648 = v646(v645, 1, v639);
            v649 = v672;
            if (v648 != 1)
            {
              sub_10000CAAC(v645, &unk_101A0B1C0);
            }
          }

          else
          {
            v647 = v670;
            sub_10112549C(v645, v670, type metadata accessor for CRLWPStorageCRDTData);
            v649 = v672;
          }

          sub_10112549C(v647, v644 + *(v749 + 20), type metadata accessor for CRLWPStorageCRDTData);
          v650 = v673;
          sub_10000BE14(v707, v673, &unk_101A0D9B0);
          v651 = v716;
          v652 = *(v715 + 48);
          if (v652(v650, 1, v716) == 1)
          {
            LODWORD(v815) = 0;
            CRRegister.init(wrappedValue:)();
            *&v815 = 0;
            BYTE8(v815) = 0;
            CRRegister.init(wrappedValue:)();
            LOBYTE(v815) = 0;
            CRRegister.init(wrappedValue:)();
            *(v649 + *(v651 + 28)) = _swiftEmptyDictionarySingleton;
            if (v652(v650, 1, v651) != 1)
            {
              sub_10000CAAC(v650, &unk_101A0D9B0);
            }
          }

          else
          {
            sub_10112549C(v650, v649, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
          }

          sub_10112549C(v649, v644 + *(v749 + 24), type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
          v827 = v859;
          v828 = v860;
          v829 = v861;
          v830 = v862;
          v823 = v855;
          v824 = v856;
          v825 = v857;
          v826 = v858;
          v819 = v851;
          v820 = v852;
          v821 = v853;
          v822 = v854;
          v815 = v847;
          v816 = v848;
          v817 = v849;
          v818 = v850;
          sub_1005B981C(&unk_101A095A0);
          CRRegister.wrappedValue.setter();
          sub_10000CAAC(v707, &unk_101A0D9B0);
          sub_10000CAAC(v685, &unk_101A0B1C0);
          sub_10112556C(v682, type metadata accessor for CRLShapeItemCRDTData);
          sub_10112556C(v686, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
          v653 = v688;
          sub_10112549C(v644, v688, type metadata accessor for CRLWPShapeItemCRDTData);
          sub_10112556C(v683, type metadata accessor for CRLShapeItemCRDTData);
          v654 = v756;
          sub_10000BE14(v706, v756, &unk_101A0F400);
          v655 = v694;
          sub_101125504(v653, v694, type metadata accessor for CRLWPShapeItemCRDTData);
          *&v815 = 0x1000000000000;
          *(&v815 + 1) = 0x2000400000000;
          v816 = 0x1000000000000uLL;
          LOBYTE(v817) = 1;
          type metadata accessor for CRLWPShapeItemData(0);
          v656 = swift_allocObject();
          v657 = v739;
          sub_10000BE14(v654, v739, &unk_101A0F400);
          v658 = v693;
          sub_101125504(v655, v693, type metadata accessor for CRLWPShapeItemCRDTData);
          sub_101125504(v658, v656 + *(*v656 + 888), type metadata accessor for CRLWPShapeItemCRDTData);
          v659 = v738;
          sub_10000BE14(v657, v738, &unk_101A0F400);
          *(v656 + qword_101A27318) = 0;
          v660 = v737;
          sub_10000BE14(v659, v737, &unk_101A0F400);
          sub_10000BE14(v660, v656 + *(*v656 + 736), &unk_101A0F400);
          sub_1005B981C(&unk_1019F5250);
          CRRegister.wrappedValue.getter();
          sub_10000CAAC(v660, &unk_101A0F400);
          sub_10000CAAC(v659, &unk_101A0F400);
          sub_10112556C(v658, type metadata accessor for CRLWPShapeItemCRDTData);
          sub_10000CAAC(v657, &unk_101A0F400);
          sub_10112556C(v655, type metadata accessor for CRLWPShapeItemCRDTData);
          sub_10000CAAC(v756, &unk_101A0F400);
          v661 = sub_100747AF0(&v815, 2);
          objc_allocWithZone(type metadata accessor for CRLWPShapeItem());
          v662 = v744;
          v387 = sub_100AB0A4C(v662, v661);
          if (sub_10110C60C())
          {
            v663 = **&v387[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
            result = swift_conformsToProtocol2();
            v665 = v691;
            v664 = v692;
            v666 = v710;
            v389 = v763;
            if (!result)
            {
              goto LABEL_229;
            }

            v667 = *(v663 + 848);

            v667(v703);
          }

          else
          {

            v665 = v691;
            v664 = v692;
            v666 = v710;
            v389 = v763;
          }

          sub_10112556C(v688, type metadata accessor for CRLWPShapeItemCRDTData);
          sub_10112556C(v708, type metadata accessor for CRLWPStorageCRDTData);
          v668 = v768;
          v669 = v702;
          (v702)(v684, v768);
          sub_10112556C(v687, type metadata accessor for CRLWPStorageCRDTData);
          v669(v709, v668);
          sub_10000CAAC(v706, &unk_101A0F400);
          (*(v666 + 8))(v665, v664);
          goto LABEL_128;
        }
      }

      *&v741 = 0;
      *&v723 = 0;
      v721 = 0;
      v722 = 0u;
      v720 = 0u;
      goto LABEL_207;
    }

    __break(1u);
LABEL_227:
    swift_once();
LABEL_46:
    v289 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v290 = swift_allocObject();
    *(v290 + 16) = xmmword_10146CA70;
    *(v290 + 56) = &type metadata for Int32;
    *(v290 + 64) = &protocol witness table for Int32;
    *(v290 + 32) = v283;
    v291 = sub_100006370(0, &qword_1019F4D30);
    *(v290 + 96) = v291;
    v292 = sub_1005CF04C();
    *(v290 + 104) = v292;
    *(v290 + 72) = v284;
    *(v290 + 136) = &type metadata for String;
    v293 = sub_1000053B0();
    *(v290 + 112) = v287;
    *(v290 + 120) = v32;
    *(v290 + 176) = &type metadata for UInt;
    *(v290 + 144) = v293;
    *(v290 + 152) = 614;
    v294 = v864[0];
    *(v290 + 216) = v291;
    *(v290 + 224) = v292;
    *(v290 + 184) = &protocol witness table for UInt;
    *(v290 + 192) = v294;
    v36 = v284;
    v295 = v294;
    v296 = static os_log_type_t.error.getter();
    sub_100005404(v289, &_mh_execute_header, v296, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v290);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v297 = static os_log_type_t.error.getter();
    sub_100005404(v289, &_mh_execute_header, v297, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    sub_100604780(_swiftEmptyArrayStorage, "_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2, 614);
    v85 = v764;
    LOBYTE(v36) = v773;
    v37 = v767;
    LOBYTE(v32) = v774;
    v34 = v772;
    v188 = v761;
LABEL_47:
    if (v758[6](v755, 1, v85) != 1)
    {
      v298 = [objc_opt_self() _atomicIncrementAssertCount];
      v864[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v864);
      StaticString.description.getter();
      v299 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v300 = String._bridgeToObjectiveC()();

      v301 = [v300 lastPathComponent];

      v302 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v303;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v304 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v305 = swift_allocObject();
      *(v305 + 16) = xmmword_10146CA70;
      *(v305 + 56) = &type metadata for Int32;
      *(v305 + 64) = &protocol witness table for Int32;
      *(v305 + 32) = v298;
      v306 = sub_100006370(0, &qword_1019F4D30);
      *(v305 + 96) = v306;
      v307 = sub_1005CF04C();
      *(v305 + 104) = v307;
      *(v305 + 72) = v299;
      *(v305 + 136) = &type metadata for String;
      v308 = sub_1000053B0();
      *(v305 + 112) = v302;
      *(v305 + 120) = v32;
      *(v305 + 176) = &type metadata for UInt;
      *(v305 + 144) = v308;
      *(v305 + 152) = 615;
      v309 = v864[0];
      *(v305 + 216) = v306;
      *(v305 + 224) = v307;
      *(v305 + 184) = &protocol witness table for UInt;
      *(v305 + 192) = v309;
      v36 = v299;
      v310 = v309;
      v311 = static os_log_type_t.error.getter();
      sub_100005404(v304, &_mh_execute_header, v311, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v305);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v312 = static os_log_type_t.error.getter();
      sub_100005404(v304, &_mh_execute_header, v312, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

      sub_100604780(_swiftEmptyArrayStorage, "_makeShapeItem(shapeType:pathSource:preservePathSourceSize:position:horizontalFlip:verticalFlip:angleInDegrees:widthValid:heightValid:stroke:fill:headLineEnd:tailLineEnd:attributedString:textCRDT:textPresetDataOverride:isForFreehandDrawing:pencilKitStrokePathCompactData:freehandMaskPath:snappedShapeType:)", 306, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactory.swift", 86, 2, 615);
      v85 = v764;
      LOBYTE(v36) = v773;
      v37 = v767;
      LOBYTE(v32) = v774;
      v34 = v772;
      v188 = v761;
    }
  }

  v440 = v704;
  v441 = sub_10112549C(v435, v704, type metadata accessor for CRLWPStorageCRDTData);
  v442 = *&v766[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
  v443 = *(v442 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v444 = v701;
  (*(**(*(v442 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v441);
  sub_101125504(v440, v713, type metadata accessor for CRLWPStorageCRDTData);
  LODWORD(v744) = v423 != 0;
  v445 = v769;
  v446 = *(v769 + 16);
  *&v742 = v769 + 16;
  *&v743 = v446;
  v447 = v754;
  v448 = v768;
  v446(v754, v444, v768);
  v449 = *(v445 + 56);
  v449(v447, 0, 1, v448);
  v814 = 1;
  v450 = type metadata accessor for CRLTableAnchorHint();
  v451 = *(v450 - 8);
  v710 = *(v451 + 56);
  *&v740 = v451 + 56;
  v452 = v748;
  (v710)(v748, 1, 1, v450);
  v766 = *&v763;
  v745 = v443;
  v453 = v326;
  *&v741 = v765;
  v746 = *&v772;
  *&v753 = *&v771;
  v755 = v770;
  sub_101271CCC(v453, &v865);

  v454 = v717;
  sub_10000BE14(v447, v717, &qword_1019F6990);
  v455 = v747;
  sub_10000BE14(v452, v747, &unk_101A09DD0);
  v456 = v714;
  v449(v714, 1, 1, v448);
  v457 = v718;
  v458 = *(v718 + 28);
  v459 = v456 + *(v718 + 24);
  (v710)(v456 + v458, 1, 1, v450);
  *(v456 + *(v457 + 32)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v454, v456, &qword_1019F6990);
  sub_10000CAAC(v748, &unk_101A09DD0);
  sub_10000CAAC(v447, &qword_1019F6990);
  v460 = (v456 + *(v457 + 20));
  v461 = v866;
  *v460 = v865;
  v460[1] = v461;
  *v459 = 0u;
  *(v459 + 16) = 0u;
  *(v459 + 32) = 0u;
  *(v459 + 48) = 0u;
  *(v459 + 64) = v814;
  sub_10002C638(v455, v456 + v458, &unk_101A09DD0);
  v462 = v689;
  sub_101125504(v456, v689, type metadata accessor for CRLBoardItemParentAffinity);
  v463 = v759;
  sub_101125504(v462, v759, type metadata accessor for CRLBoardItemParentAffinity);
  v464 = v751;
  v465 = *(v751 + 20);
  v708 = v741;
  sub_100C3D740(v708, v463 + v465);
  v466 = v464[6];
  v467 = type metadata accessor for CRLPKStrokePathData();
  (*(*(v467 - 8) + 56))(v463 + v466, 1, 1, v467);
  v468 = v463 + v464[7];
  *v468 = 0;
  *(v468 + 8) = -1;
  *(v463 + v464[8]) = _swiftEmptyDictionarySingleton;
  v754 = type metadata accessor for CRLBoardItemParentAffinity;
  sub_10112556C(v462, type metadata accessor for CRLBoardItemParentAffinity);
  *&v747 = type metadata accessor for CRLShapeItemParentAffinity;
  sub_101125504(v463, v750, type metadata accessor for CRLShapeItemParentAffinity);
  sub_1005D0C00(&v806);
  v469 = v760;
  UUID.init()();
  v470 = v720;
  *&v748 = *(v720 + 52);
  v835 = v810;
  v836 = v811;
  v837 = v812;
  v838 = v813;
  v831 = v806;
  v832 = v807;
  v833 = v808;
  v834 = v809;
  sub_1005B981C(&unk_101A09DE0);
  sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &unk_1014897A0, sub_10074933C);
  v471 = v711;
  CRRegister.init(wrappedValue:)();
  *(v471 + *(v470 + 56)) = _swiftEmptyDictionarySingleton;
  (v743)(v719, v469, v768);
  CRRegister.init(_:)();
  v472 = v750;
  sub_101125504(v750, v690, v747);
  sub_101123A5C(&qword_101A106B0, type metadata accessor for CRLShapeItemParentAffinity);
  CRRegister.init(_:)();
  LOBYTE(v831) = 0;
  CRRegister.init(_:)();
  LOBYTE(v831) = 0;
  CRRegister.init(_:)();
  *&v831 = 0;
  *(&v831 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v835 = v810;
  v836 = v811;
  v837 = v812;
  v838 = v813;
  v831 = v806;
  v832 = v807;
  v833 = v808;
  v834 = v809;
  v473 = v721;
  CRRegister.init(_:)();
  v474 = *(v769 + 8);
  v769 += 8;
  v707 = v474;
  (v474)(v760, v768);
  sub_10112556C(v472, type metadata accessor for CRLShapeItemParentAffinity);
  sub_10112556C(v759, type metadata accessor for CRLShapeItemParentAffinity);
  sub_10112556C(v714, v754);
  (*(v722 + 40))(v471 + v748, v473, v723);
  if (v763 == 0.0)
  {
    v759 = 0;
    v754 = 0;
    v475 = 0uLL;
    v750 = 0u;
    v751 = 0u;
    v747 = 0u;
    v748 = 0u;
    v743 = 0u;
  }

  else
  {
    sub_101247234(v766, &v867);
    v475 = v867;
    v750 = v869;
    v751 = v868;
    v743 = v872;
    v747 = v871;
    v748 = v870;
    v759 = v873;
    v754 = v874;
  }

  v760 = v475;
  v553 = v773;
  v554 = *&v771;
  if (v772 == 0.0)
  {
    sub_1005D0BD8(&v791);
    if (!v554)
    {
      goto LABEL_174;
    }

LABEL_172:
    v556 = v753;
    sub_1009CE67C(v556, &v875);
    v722 = v876;
    v740 = v875;
    *&v742 = v877;
    *&v741 = v878;
    *&v723 = v879;
  }

  else
  {
    sub_100B965E4(v746, &v831);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v831, v555);
    v803 = v843;
    v804 = v844;
    v805 = v845;
    v799 = v839;
    v800 = v840;
    v801 = v841;
    v802 = v842;
    v795 = v835;
    v796 = v836;
    v797 = v837;
    v798 = v838;
    v791 = v831;
    v792 = v832;
    v793 = v833;
    v794 = v834;
    if (v554)
    {
      goto LABEL_172;
    }

LABEL_174:
    *&v742 = 0;
    *&v741 = 0;
    *&v723 = 0;
    v740 = 0u;
    v722 = 0u;
  }

  LODWORD(v773) = v553 | v744;
  if (*&v770 == 0.0)
  {
    v744 = 0;
    v721 = 0;
    *&v720 = 0;
    v718 = 0u;
    v719 = 0u;
  }

  else
  {
    v557 = v755;
    sub_1009CE67C(v557, &v880);
    v718 = v880;
    v719 = v881;
    v744 = v882;
    v721 = v883;
    *&v720 = v884;
  }

  v836 = 0u;
  v837 = 0u;
  v834 = 0u;
  v835 = 0u;
  v832 = 0u;
  v833 = 0u;
  v831 = 0u;
  *&v717 = sub_1005B981C(&qword_1019FFF80);
  *&v714 = sub_100A49DD0(&qword_101A0D9E0, &qword_1019FFF80, &unk_101489000, sub_1006BD1F0);
  v558 = v700;
  CRRegister.init(wrappedValue:)();
  v559 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  v709 = v559[5];
  sub_1005D0BD8(&v776);
  v843 = v788;
  v844 = v789;
  *&v845 = v790;
  v839 = v784;
  v840 = v785;
  v841 = v786;
  v842 = v787;
  v835 = v780;
  v836 = v781;
  v837 = v782;
  v838 = v783;
  v831 = v776;
  v832 = v777;
  v833 = v778;
  v834 = v779;
  sub_1005B981C(&unk_101A106C0);
  sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
  CRRegister.init(wrappedValue:)();
  v560 = v559[6];
  *&v834 = 0;
  v832 = 0u;
  v833 = 0u;
  v831 = 0u;
  sub_1005B981C(&unk_101A0DA00);
  sub_100A49DD0(&unk_101A106E0, &unk_101A0DA00, &unk_101495050, sub_1009CDC80);
  CRRegister.init(wrappedValue:)();
  v561 = v559[7];
  *&v834 = 0;
  v832 = 0u;
  v833 = 0u;
  v831 = 0u;
  CRRegister.init(wrappedValue:)();
  v710 = v559[8];
  LODWORD(v831) = 0;
  CRRegister.init(wrappedValue:)();
  *(v558 + v559[9]) = _swiftEmptyDictionarySingleton;
  v831 = v760;
  v832 = v751;
  v833 = v750;
  v834 = v748;
  v835 = v747;
  v836 = v743;
  *&v837 = v759;
  *(&v837 + 1) = v754;
  v562 = v724;
  CRRegister.init(_:)();
  (*(v725 + 40))(v558, v562, v726);
  v843 = v803;
  v844 = v804;
  *&v845 = v805;
  v839 = v799;
  v840 = v800;
  v841 = v801;
  v842 = v802;
  v835 = v795;
  v836 = v796;
  v837 = v797;
  v838 = v798;
  v831 = v791;
  v832 = v792;
  v833 = v793;
  v834 = v794;
  v563 = v727;
  CRRegister.init(_:)();
  (*(v728 + 40))(&v709[v558], v563, v729);
  v831 = v740;
  v832 = v722;
  *&v833 = v742;
  *(&v833 + 1) = v741;
  *&v834 = v723;
  v564 = v730;
  CRRegister.init(_:)();
  v565 = *(v732 + 40);
  v566 = v558 + v560;
  v567 = v733;
  v565(v566, v564, v733);
  v831 = v718;
  v832 = v719;
  *&v833 = v744;
  *(&v833 + 1) = v721;
  *&v834 = v720;
  CRRegister.init(_:)();
  v565(v558 + v561, v564, v567);
  LODWORD(v831) = 0;
  v568 = v734;
  CRRegister.init(_:)();
  (*(v735 + 40))(v558 + v710, v568, v736);
  *(v558 + *(v731 + 20)) = _swiftEmptyDictionarySingleton;
  if ((v752 - 1) >= 3)
  {
    v569 = 0;
  }

  else
  {
    v569 = v752;
  }

  *&v831 = v424;
  v570 = v703;
  CRRegister.init(wrappedValue:)();
  v571 = v716;
  *&v831 = v569;
  BYTE8(v831) = 0;
  v572 = sub_1005B981C(&qword_1019F7D38);
  v573 = sub_101123AA4();
  v759 = v572;
  v754 = v573;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v831) = v773 & 1;
  CRRegister.init(wrappedValue:)();
  *&v570[*(v571 + 28)] = _swiftEmptyDictionarySingleton;
  *&v760 = type metadata accessor for CRLShapeItemCRDTData;
  v574 = v699;
  sub_101125504(v558, v699, type metadata accessor for CRLShapeItemCRDTData);
  v575 = v702;
  sub_101125504(v713, v702, type metadata accessor for CRLWPStorageCRDTData);
  v576 = v764;
  (v758[7])(v575, 0, 1, v764);
  v577 = v570;
  v578 = v712;
  sub_101125504(v577, v712, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
  (*(v715 + 56))(v578, 0, 1, v571);
  v579 = v749;
  v580 = *(v749 + 28);
  sub_1006950BC(&v831);
  v827 = v843;
  v828 = v844;
  v829 = v845;
  v830 = v846;
  v823 = v839;
  v824 = v840;
  v825 = v841;
  v826 = v842;
  v819 = v835;
  v820 = v836;
  v821 = v837;
  v822 = v838;
  v815 = v831;
  v816 = v832;
  v817 = v833;
  v818 = v834;
  sub_1005B981C(&unk_101A0D830);
  sub_100A49DD0(&qword_1019F7DE8, &unk_101A0D830, &unk_101488F70, sub_100694290);
  v581 = v680;
  *&v773 = v580;
  CRRegister.init(wrappedValue:)();
  v582 = v581;
  *(v581 + *(v579 + 32)) = _swiftEmptyDictionarySingleton;
  sub_101125504(v574, v581, v760);
  v583 = v575;
  v584 = v677;
  sub_10000BE14(v583, v677, &unk_101A0B1C0);
  v585 = v762;
  if (v762(v584, 1, v576) == 1)
  {
    sub_10068D144();
    v586 = v676;
    CRAttributedString.init()();
    CRAttributedString.init(_:)();
    *(v586 + v576[6]) = _swiftEmptyDictionarySingleton;
    v587 = v585(v584, 1, v576);
    v589 = v678;
    v588 = v679;
    if (v587 != 1)
    {
      sub_10000CAAC(v584, &unk_101A0B1C0);
    }
  }

  else
  {
    v586 = v676;
    sub_10112549C(v584, v676, type metadata accessor for CRLWPStorageCRDTData);
    v589 = v678;
    v588 = v679;
  }

  sub_10112549C(v586, v581 + *(v749 + 20), type metadata accessor for CRLWPStorageCRDTData);
  sub_10000BE14(v712, v588, &unk_101A0D9B0);
  v590 = v716;
  v591 = *(v715 + 48);
  if (v591(v588, 1, v716) == 1)
  {
    LODWORD(v815) = 0;
    CRRegister.init(wrappedValue:)();
    *&v815 = 0;
    BYTE8(v815) = 0;
    CRRegister.init(wrappedValue:)();
    LOBYTE(v815) = 0;
    CRRegister.init(wrappedValue:)();
    *(v589 + *(v590 + 28)) = _swiftEmptyDictionarySingleton;
    if (v591(v588, 1, v590) != 1)
    {
      sub_10000CAAC(v588, &unk_101A0D9B0);
    }
  }

  else
  {
    sub_10112549C(v588, v589, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
  }

  sub_10112549C(v589, v582 + *(v749 + 24), type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
  v827 = v859;
  v828 = v860;
  v829 = v861;
  v830 = v862;
  v823 = v855;
  v824 = v856;
  v825 = v857;
  v826 = v858;
  v819 = v851;
  v820 = v852;
  v821 = v853;
  v822 = v854;
  v815 = v847;
  v816 = v848;
  v817 = v849;
  v818 = v850;
  sub_1005B981C(&unk_101A095A0);
  CRRegister.wrappedValue.setter();
  sub_10000CAAC(v712, &unk_101A0D9B0);
  sub_10000CAAC(v702, &unk_101A0B1C0);
  sub_10112556C(v699, type metadata accessor for CRLShapeItemCRDTData);
  sub_10112556C(v703, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
  v592 = v705;
  sub_10112549C(v582, v705, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10112556C(v700, type metadata accessor for CRLShapeItemCRDTData);
  v593 = v756;
  sub_10000BE14(v711, v756, &unk_101A0F400);
  v594 = v694;
  sub_101125504(v592, v694, type metadata accessor for CRLWPShapeItemCRDTData);
  *&v815 = 0x1000000000000;
  *(&v815 + 1) = 0x2000400000000;
  v816 = 0x1000000000000uLL;
  LOBYTE(v817) = 1;
  type metadata accessor for CRLWPShapeItemData(0);
  v595 = swift_allocObject();
  v596 = v739;
  sub_10000BE14(v593, v739, &unk_101A0F400);
  v597 = v693;
  sub_101125504(v594, v693, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_101125504(v597, v595 + *(*v595 + 888), type metadata accessor for CRLWPShapeItemCRDTData);
  v598 = v738;
  sub_10000BE14(v596, v738, &unk_101A0F400);
  *(v595 + qword_101A27318) = 0;
  v599 = v737;
  sub_10000BE14(v598, v737, &unk_101A0F400);
  sub_10000BE14(v599, v595 + *(*v595 + 736), &unk_101A0F400);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v599, &unk_101A0F400);
  sub_10000CAAC(v598, &unk_101A0F400);
  sub_10112556C(v597, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10000CAAC(v596, &unk_101A0F400);
  sub_10112556C(v594, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10000CAAC(v756, &unk_101A0F400);
  v600 = sub_100747AF0(&v815, 2);
  objc_allocWithZone(type metadata accessor for CRLWPShapeItem());
  v601 = v745;
  v387 = sub_100AB0A4C(v601, v600);
  if (sub_10110C60C())
  {
    v602 = **&v387[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    result = swift_conformsToProtocol2();
    v390 = v757;
    v389 = v763;
    v604 = v766;
    if (result)
    {
      v605 = *(v602 + 848);

      v605(v708);

      goto LABEL_193;
    }

    __break(1u);
LABEL_229:
    __break(1u);
    return result;
  }

  v390 = v757;
  v389 = v763;
LABEL_193:

  sub_10112556C(v705, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10112556C(v713, type metadata accessor for CRLWPStorageCRDTData);
  (v707)(v701, v768);
  sub_10112556C(v704, type metadata accessor for CRLWPStorageCRDTData);
  sub_10000CAAC(v711, &unk_101A0F400);
LABEL_194:
  if (v774 == 21)
  {
    v606 = sub_10110CA3C();
    v607 = v761;
    if (v606)
    {
      v608 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v609 = *(**&v387[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 392);

      LOBYTE(v609) = v609(v610);

      if ((v609 & 1) == 0)
      {
        v611 = *(**&v387[v608] + 400);

        v611(1);
      }
    }

    v612 = v607;
    v613 = v770;
    v614 = v765;
    v615 = v772;
    v616 = v771;
  }

  else
  {
    v612 = v765;
    v614 = v390;
    v390 = v761;
    v613 = *&v771;
    v616 = v389;
    v389 = v772;
    v615 = *&v770;
  }

  return v387;
}

uint64_t sub_10111B6E0(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  v15 = objc_opt_self();
  if (qword_1019F1880 != -1)
  {
    swift_once();
  }

  v16 = [qword_101AD6A90 color];
  v17 = [v15 colorWithColor:v16];

  if (sub_1011223CC(a1))
  {

    v18 = objc_opt_self();
    v19 = [v18 blackColor];
    v20 = String._bridgeToObjectiveC()();
    v21 = [v18 colorNamed:v20 fallbackColor:v19];

    *(&v37 + 1) = &type metadata for CRLFeatureFlags;
    *&v38 = sub_100004D60();
    LOBYTE(v36) = 10;
    LOBYTE(v19) = isFeatureEnabled(_:)();
    sub_100005070(&v36);
    if (v19)
    {
      v22 = 3.0;
    }

    else
    {
      v22 = 1.0;
    }

    v23 = [objc_opt_self() strokeWithColor:v21 width:v22];

    v17 = 0;
  }

  else
  {
    v23 = 0;
  }

  v32 = a2;
  v33 = v6;
  v31 = v23;
  if (a1 == 15)
  {
    v26 = objc_opt_self();
    v24 = [v26 openArrow];
    v25 = [v26 simpleArrow];
  }

  else if (a1 == 16)
  {
    v24 = [objc_opt_self() simpleArrow];
    v25 = 0;
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  v27 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  sub_1006950BC(v34);
  v48 = v34[12];
  v49 = v34[13];
  v50 = v34[14];
  v51 = v35;
  v44 = v34[8];
  v45 = v34[9];
  v46 = v34[10];
  v47 = v34[11];
  v40 = v34[4];
  v41 = v34[5];
  v42 = v34[6];
  v43 = v34[7];
  v36 = v34[0];
  v37 = v34[1];
  v38 = v34[2];
  v39 = v34[3];
  v28 = v31;
  v29 = sub_1011133FC(a1, 0, v32, 1, *&a3, *&a4, 0, 0, 0, *&a5, 0, 2, 2, v31, v17, v24, v25, 0, v14, &v36, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v14, &unk_101A0B1C0);
  return v29;
}

id sub_10111BBA0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), void *a5, double a6, double a7)
{
  v8 = v7;
  *&v244 = a3;
  v271 = a2;
  v261 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  __chkstk_darwin(v261);
  v263 = v221 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v274 = v221 - v16;
  __chkstk_darwin(v17);
  v275 = v221 - v18;
  v19 = sub_1005B981C(&unk_101A0D9C0);
  v259 = *(v19 - 8);
  v260 = v19;
  __chkstk_darwin(v19);
  v258 = v221 - v20;
  v21 = sub_1005B981C(&unk_101A10680);
  v256 = *(v21 - 8);
  v257 = v21;
  __chkstk_darwin(v21);
  v255 = v221 - v22;
  v23 = sub_1005B981C(&unk_101A0D9D0);
  v252 = *(v23 - 8);
  v253 = v23;
  __chkstk_darwin(v23);
  v251 = v221 - v24;
  v25 = sub_1005B981C(&unk_101A10690);
  v246 = *(v25 - 8);
  v247 = v25;
  __chkstk_darwin(v25);
  v245 = v221 - v26;
  v254 = type metadata accessor for CRLShapeItemCRDTData(0);
  __chkstk_darwin(v254);
  v262 = v221 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v243 = sub_1005B981C(&unk_101A09DC0);
  *&v242 = *(v243 - 8);
  __chkstk_darwin(v243);
  v241 = v221 - v28;
  v29 = sub_1005B981C(&qword_101A224B8);
  __chkstk_darwin(v29 - 8);
  v227 = v221 - v30;
  v269 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v269);
  v238 = v221 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v240 = v221 - v33;
  __chkstk_darwin(v34);
  v236 = v221 - v35;
  __chkstk_darwin(v36);
  v270 = v221 - v37;
  v38 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v38 - 8);
  v234 = v221 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v233 = v221 - v41;
  v42 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v42 - 8);
  v230 = v221 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v232 = v221 - v45;
  v231 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v231);
  *&v265 = v221 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v268 = v221 - v48;
  v237 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v237);
  v249 = v221 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v248 = v221 - v51;
  __chkstk_darwin(v52);
  v250 = v221 - v53;
  __chkstk_darwin(v54);
  v272 = v221 - v55;
  __chkstk_darwin(v56);
  v277 = v221 - v57;
  v278 = type metadata accessor for UUID();
  v279 = *(v278 - 8);
  __chkstk_darwin(v278);
  v235 = v221 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v273 = v221 - v60;
  __chkstk_darwin(v61);
  *&v267 = v221 - v62;
  v228 = a5;
  v239 = a4;
  *&v276 = v8;
  if (a5 && !a4)
  {
    v266 = a1;
    v63 = objc_opt_self();
    v64 = [v63 _atomicIncrementAssertCount];
    v336[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v336);
    StaticString.description.getter();
    v65 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v66 = String._bridgeToObjectiveC()();

    v67 = [v66 lastPathComponent];

    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v71 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_10146CA70;
    *(v72 + 56) = &type metadata for Int32;
    *(v72 + 64) = &protocol witness table for Int32;
    *(v72 + 32) = v64;
    v73 = sub_100006370(0, &qword_1019F4D30);
    *(v72 + 96) = v73;
    v74 = sub_1005CF04C();
    *(v72 + 104) = v74;
    *(v72 + 72) = v65;
    *(v72 + 136) = &type metadata for String;
    v75 = sub_1000053B0();
    *(v72 + 112) = v68;
    *(v72 + 120) = v70;
    *(v72 + 176) = &type metadata for UInt;
    *(v72 + 184) = &protocol witness table for UInt;
    *(v72 + 144) = v75;
    *(v72 + 152) = 203;
    v76 = v336[0];
    *(v72 + 216) = v73;
    *(v72 + 224) = v74;
    *(v72 + 192) = v76;
    v77 = v65;
    v78 = v76;
    v79 = static os_log_type_t.error.getter();
    sub_100005404(v71, &_mh_execute_header, v79, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v72);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v80 = static os_log_type_t.error.getter();
    sub_100005404(v71, &_mh_execute_header, v80, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v81 = swift_allocObject();
    v81[2] = 8;
    v81[3] = 0;
    v81[4] = 0;
    v81[5] = 0;
    v82 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v83 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v84 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v85 = String._bridgeToObjectiveC()();

    [v63 handleFailureInFunction:v83 file:v84 lineNumber:203 isFatal:0 format:v85 args:v82];

    v8 = v276;
    a1 = v266;
  }

  v86 = sub_100818518(17);
  if (v86)
  {
    sub_100006370(0, &unk_101A10770);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v88 = a1;
    if (([v88 isKindOfClass:ObjCClassFromMetadata] & 1) == 0)
    {
      LODWORD(v229) = v86;
      v266 = a1;
      v264 = objc_opt_self();
      v89 = [v264 _atomicIncrementAssertCount];
      v336[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v336);
      StaticString.description.getter();
      v90 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v91 = String._bridgeToObjectiveC()();

      v92 = [v91 lastPathComponent];

      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v96 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_10146CA70;
      *(v97 + 56) = &type metadata for Int32;
      *(v97 + 64) = &protocol witness table for Int32;
      *(v97 + 32) = v89;
      v98 = sub_100006370(0, &qword_1019F4D30);
      *(v97 + 96) = v98;
      v99 = sub_1005CF04C();
      *(v97 + 104) = v99;
      *(v97 + 72) = v90;
      *(v97 + 136) = &type metadata for String;
      v100 = sub_1000053B0();
      *(v97 + 112) = v93;
      *(v97 + 120) = v95;
      *(v97 + 176) = &type metadata for UInt;
      *(v97 + 184) = &protocol witness table for UInt;
      *(v97 + 144) = v100;
      *(v97 + 152) = 613;
      v101 = v336[0];
      *(v97 + 216) = v98;
      *(v97 + 224) = v99;
      *(v97 + 192) = v101;
      v102 = v90;
      v103 = v101;
      v104 = static os_log_type_t.error.getter();
      sub_100005404(v96, &_mh_execute_header, v104, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v97);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v105 = static os_log_type_t.error.getter();
      sub_100005404(v96, &_mh_execute_header, v105, "pathSource must be a connection line path source if shapeType is connection line.", 81, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v106 = swift_allocObject();
      v106[2] = 8;
      v106[3] = 0;
      v106[4] = 0;
      v106[5] = 0;
      v107 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v108 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v109 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v110 = String._bridgeToObjectiveC()();

      [v264 handleFailureInFunction:v108 file:v109 lineNumber:613 isFatal:0 format:v110 args:v107];

      v88 = v110;
      v8 = v276;
      a1 = v266;
      v86 = v229;
    }
  }

  [a1 naturalSize];
  v113 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:1 size:1 widthValid:0 heightValid:0 horizontalFlip:a6 verticalFlip:a7 angle:{v111, v112, 0.0}];
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &qword_101A031A8);
  swift_dynamicCast();
  v114 = v335[0];
  [v113 size];
  v116 = v115;
  v118 = v117;
  [v114 naturalSize];
  v121 = sub_10011ED08(v116, v118, v119, v120, 0.001);
  v266 = v113;
  v264 = v114;
  if (!v121)
  {
    LODWORD(v229) = v86;
    v122 = objc_opt_self();
    v123 = [v122 _atomicIncrementAssertCount];
    v336[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v336);
    StaticString.description.getter();
    v124 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v125 = String._bridgeToObjectiveC()();

    v126 = [v125 lastPathComponent];

    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = v128;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v130 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_10146CA70;
    *(v131 + 56) = &type metadata for Int32;
    *(v131 + 64) = &protocol witness table for Int32;
    *(v131 + 32) = v123;
    v132 = sub_100006370(0, &qword_1019F4D30);
    *(v131 + 96) = v132;
    v133 = sub_1005CF04C();
    *(v131 + 104) = v133;
    *(v131 + 72) = v124;
    *(v131 + 136) = &type metadata for String;
    v134 = sub_1000053B0();
    *(v131 + 112) = v127;
    *(v131 + 120) = v129;
    *(v131 + 176) = &type metadata for UInt;
    *(v131 + 184) = &protocol witness table for UInt;
    *(v131 + 144) = v134;
    *(v131 + 152) = 649;
    v135 = v336[0];
    *(v131 + 216) = v132;
    *(v131 + 224) = v133;
    *(v131 + 192) = v135;
    v136 = v124;
    v137 = v135;
    v138 = static os_log_type_t.error.getter();
    sub_100005404(v130, &_mh_execute_header, v138, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v131);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v139 = static os_log_type_t.error.getter();
    sub_100005404(v130, &_mh_execute_header, v139, "Geometry and path source must have the same size.", 49, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v140 = swift_allocObject();
    v140[2] = 8;
    v140[3] = 0;
    v140[4] = 0;
    v140[5] = 0;
    v141 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v142 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v143 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v144 = String._bridgeToObjectiveC()();

    [v122 handleFailureInFunction:v142 file:v143 lineNumber:649 isFatal:0 format:v144 args:v141];

    v8 = v276;
    v113 = v266;
    v114 = v264;
    v86 = v229;
  }

  type metadata accessor for CRLBoardInsertStyleData(0);
  sub_1005B981C(&unk_1019F4B90);
  CRRegister.wrappedValue.getter();
  memcpy(v335, v336, sizeof(v335));
  if (sub_1000C0F9C(v335) == 1)
  {
    sub_100A1C544(17, v341);
    v145 = sub_10081852C(v341);
    if (!v86)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v145 = sub_10000CAAC(v336, &qword_1019F4B88);
    if (!v86)
    {
LABEL_18:
      v146 = *(v8 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
      *&v276 = *(v146 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
      v147 = v273;
      (*(**(*(v146 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v145);
      v148 = v279;
      v149 = v232;
      v150 = v278;
      v224 = *(v279 + 16);
      v225 = v279 + 16;
      v224(v232, v147, v278);
      v222 = *(v148 + 56);
      v222(v149, 0, 1, v150);
      v334 = 1;
      v151 = type metadata accessor for CRLTableAnchorHint();
      v152 = *(v151 - 8);
      v221[0] = *(v152 + 56);
      v221[1] = v152 + 56;
      v153 = v233;
      (v221[0])(v233, 1, 1, v151);
      v154 = v113;
      v223 = v114;
      v226 = v276;
      sub_101271CCC(v154, v337);
      v229 = v154;

      v155 = v230;
      sub_10000BE14(v149, v230, &qword_1019F6990);
      v156 = v234;
      sub_10000BE14(v153, v234, &unk_101A09DD0);
      v157 = v268;
      v222(v268, 1, 1, v150);
      v158 = v231;
      v159 = *(v231 + 28);
      v160 = v157 + *(v231 + 24);
      (v221[0])(v157 + v159, 1, 1, v151);
      *(v157 + *(v158 + 32)) = _swiftEmptyDictionarySingleton;
      sub_10002C638(v155, v157, &qword_1019F6990);
      sub_10000CAAC(v153, &unk_101A09DD0);
      sub_10000CAAC(v149, &qword_1019F6990);
      v161 = (v157 + *(v158 + 20));
      v162 = v337[1];
      *v161 = v337[0];
      v161[1] = v162;
      *v160 = 0u;
      *(v160 + 16) = 0u;
      *(v160 + 32) = 0u;
      *(v160 + 48) = 0u;
      v276 = 0u;
      *(v160 + 64) = v334;
      v163 = v157 + v159;
      v164 = v236;
      v165 = v239;
      sub_10002C638(v156, v163, &unk_101A09DD0);
      v166 = v265;
      sub_101125504(v157, v265, type metadata accessor for CRLBoardItemParentAffinity);
      sub_101125504(v166, v164, type metadata accessor for CRLBoardItemParentAffinity);
      v167 = v269;
      v168 = *(v269 + 20);
      v234 = v223;
      sub_100C3D740(v234, v164 + v168);
      v169 = v167[6];
      v170 = type metadata accessor for CRLPKStrokePathData();
      v171 = *(*(v170 - 8) + 56);
      v171(v164 + v169, 1, 1, v170);
      v172 = v164 + v167[7];
      *v172 = 0;
      *(v172 + 8) = -1;
      *(v164 + v167[8]) = _swiftEmptyDictionarySingleton;
      if (v165)
      {
        v173 = v228;
        v174 = v228;
        v175 = v165;
        v176 = v227;
        sub_100CD0B98(v175, v173, v227);
        v171(v176, 0, 1, v170);
        sub_10002C638(v176, v164 + v169, &qword_101A224B8);
      }

      v239 = type metadata accessor for CRLBoardItemParentAffinity;
      sub_10112556C(v265, type metadata accessor for CRLBoardItemParentAffinity);
      v177 = v270;
      sub_10112549C(v164, v270, type metadata accessor for CRLShapeItemParentAffinity);
      v178 = v240;
      sub_101125504(v177, v240, type metadata accessor for CRLShapeItemParentAffinity);
      sub_1005D0C00(&v326);
      v179 = v267;
      UUID.init()();
      v180 = v237;
      *&v265 = *(v237 + 52);
      v315 = v330;
      v316 = v331;
      v317 = v332;
      v318 = v333;
      v311 = v326;
      v312 = v327;
      v313 = v328;
      v314 = v329;
      sub_1005B981C(&unk_101A09DE0);
      sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &unk_1014897A0, sub_10074933C);
      v181 = v277;
      CRRegister.init(wrappedValue:)();
      *(v181 + *(v180 + 56)) = _swiftEmptyDictionarySingleton;
      v182 = v278;
      v224(v235, v179, v278);
      CRRegister.init(_:)();
      sub_101125504(v178, v238, type metadata accessor for CRLShapeItemParentAffinity);
      sub_101123A5C(&qword_101A106B0, type metadata accessor for CRLShapeItemParentAffinity);
      CRRegister.init(_:)();
      LOBYTE(v311) = 0;
      CRRegister.init(_:)();
      LOBYTE(v311) = 0;
      CRRegister.init(_:)();
      *&v311 = 0;
      *(&v311 + 1) = 0xE000000000000000;
      CRRegister.init(_:)();
      v315 = v330;
      v316 = v331;
      v317 = v332;
      v318 = v333;
      v311 = v326;
      v312 = v327;
      v313 = v328;
      v314 = v329;
      v183 = v241;
      CRRegister.init(_:)();
      v184 = *(v279 + 8);
      v279 += 8;
      v269 = v184;
      v184(v179, v182);
      sub_10112556C(v178, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v270, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v268, v239);
      (*(v242 + 40))(v181 + v265, v183, v243);
      if (v244)
      {
        sub_101247234(v244, v338);
        v267 = v338[1];
        v276 = v338[0];
        v265 = v338[2];
        v242 = v338[5];
        v243 = v338[4];
        v244 = v338[3];
        v270 = v339;
        v268 = v340;
        v185 = v271;
        if (v271)
        {
LABEL_22:
          sub_100B965E4(v185, &v296);
          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v296, v186);
          v323 = v308;
          v324 = v309;
          v325 = v310;
          v319 = v304;
          v320 = v305;
          v322 = v307;
          v321 = v306;
          v315 = v300;
          v316 = v301;
          v318 = v303;
          v317 = v302;
          v311 = v296;
          v312 = v297;
          v314 = v299;
          v313 = v298;
LABEL_27:
          v301 = 0u;
          v302 = 0u;
          v299 = 0u;
          v300 = 0u;
          v297 = 0u;
          v298 = 0u;
          v296 = 0u;
          v271 = sub_1005B981C(&qword_1019FFF80);
          sub_100A49DD0(&qword_101A0D9E0, &qword_1019FFF80, &unk_101489000, sub_1006BD1F0);
          v198 = v262;
          CRRegister.init(wrappedValue:)();
          v199 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
          v241 = v199[5];
          sub_1005D0BD8(&v296);
          v293 = v308;
          v294 = v309;
          v295 = v310;
          v289 = v304;
          v290 = v305;
          v291 = v306;
          v292 = v307;
          v285 = v300;
          v286 = v301;
          v287 = v302;
          v288 = v303;
          v281 = v296;
          v282 = v297;
          v283 = v298;
          v284 = v299;
          sub_1005B981C(&unk_101A106C0);
          sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
          CRRegister.init(wrappedValue:)();
          v240 = v199[6];
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          sub_1005B981C(&unk_101A0DA00);
          sub_100A49DD0(&unk_101A106E0, &unk_101A0DA00, &unk_101495050, sub_1009CDC80);
          CRRegister.init(wrappedValue:)();
          v200 = v199[7];
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          CRRegister.init(wrappedValue:)();
          v201 = v199[8];
          LODWORD(v281) = 0;
          CRRegister.init(wrappedValue:)();
          *(v198 + v199[9]) = _swiftEmptyDictionarySingleton;
          v281 = v276;
          v282 = v267;
          v283 = v265;
          v284 = v244;
          v285 = v243;
          v286 = v242;
          *&v287 = v270;
          *(&v287 + 1) = v268;
          v202 = v245;
          CRRegister.init(_:)();
          (*(v246 + 40))(v198, v202, v247);
          v293 = v323;
          v294 = v324;
          v295 = v325;
          v289 = v319;
          v290 = v320;
          v291 = v321;
          v292 = v322;
          v285 = v315;
          v286 = v316;
          v287 = v317;
          v288 = v318;
          v281 = v311;
          v282 = v312;
          v283 = v313;
          v284 = v314;
          v203 = v251;
          CRRegister.init(_:)();
          (*(v252 + 40))(&v241[v198], v203, v253);
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          v204 = v255;
          CRRegister.init(_:)();
          v205 = v257;
          v206 = *(v256 + 40);
          v206(v198 + v240, v204, v257);
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          CRRegister.init(_:)();
          v206(v198 + v200, v204, v205);
          LODWORD(v281) = 0;
          v207 = v258;
          CRRegister.init(_:)();
          (*(v259 + 40))(v198 + v201, v207, v260);
          *(v198 + *(v254 + 20)) = _swiftEmptyDictionarySingleton;
          v208 = v275;
          sub_101125504(v198, v275, type metadata accessor for CRLShapeItemCRDTData);
          *(v208 + *(v261 + 20)) = _swiftEmptyDictionarySingleton;
          v209 = v272;
          sub_10000BE14(v277, v272, &unk_101A0F400);
          v210 = v274;
          sub_101125504(v208, v274, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          *&v281 = 0x1000000000000;
          *(&v281 + 1) = 0x2000400000000;
          v282 = 0x1000000000000uLL;
          LOBYTE(v283) = 1;
          type metadata accessor for CRLFreehandDrawingShapeItemData(0);
          v211 = swift_allocObject();
          v212 = v250;
          sub_10000BE14(v209, v250, &unk_101A0F400);
          v213 = v263;
          sub_101125504(v210, v263, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          sub_101125504(v213, v211 + *(*v211 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          v214 = v248;
          sub_10000BE14(v212, v248, &unk_101A0F400);
          *(v211 + qword_101A27318) = 0;
          v215 = v249;
          sub_10000BE14(v214, v249, &unk_101A0F400);
          sub_10000BE14(v215, v211 + *(*v211 + 736), &unk_101A0F400);
          sub_1005B981C(&unk_1019F5250);
          CRRegister.wrappedValue.getter();
          sub_10000CAAC(v215, &unk_101A0F400);
          sub_10000CAAC(v214, &unk_101A0F400);
          sub_10112556C(v213, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          sub_10000CAAC(v212, &unk_101A0F400);
          sub_10112556C(v274, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          sub_10000CAAC(v272, &unk_101A0F400);
          v216 = sub_100747AF0(&v281, 2);
          v217 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem());
          *&v217[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
          *&v217[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
          v218 = &v217[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
          *v218 = 0u;
          *(v218 + 1) = 0u;
          *(v218 + 2) = 0u;
          *(v218 + 6) = 0;
          *&v217[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
          *&v217[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v226;
          *&v217[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v216;
          v219 = type metadata accessor for CRLBoardItemBase(0);
          v280.receiver = v217;
          v280.super_class = v219;
          v197 = objc_msgSendSuper2(&v280, "init");

          sub_10112556C(v275, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          (v269)(v273, v278);
          sub_10112556C(v198, type metadata accessor for CRLShapeItemCRDTData);
          sub_10000CAAC(v277, &unk_101A0F400);
          v193 = v266;
          v195 = v264;
          goto LABEL_28;
        }
      }

      else
      {
        v270 = 0;
        v268 = 0;
        v267 = 0u;
        v265 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v185 = v271;
        if (v271)
        {
          goto LABEL_22;
        }
      }

      sub_1005D0BD8(&v311);
      goto LABEL_27;
    }
  }

  v187 = *(v8 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v188 = *(v187 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v189 = v267;
  (*(**(*(v187 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v145);
  v190 = objc_allocWithZone(type metadata accessor for CRLConnectionLineItem());
  v191 = v188;
  v192 = v113;
  v193 = v113;
  v194 = v114;
  v195 = v114;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v197 = [v190 initWithStore:v191 parentContainerUUID:isa geometry:v192 pathSource:v194 stroke:v271 headLineEnd:0 tailLineEnd:0];

  (*(v279 + 8))(v189, v278);
LABEL_28:

  return v197;
}

id sub_10111E0E8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, unint64_t a6, double a7, double a8)
{
  v9 = v8;
  v239 = a6;
  *&v243 = a3;
  v271 = a2;
  v260 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  __chkstk_darwin(v260);
  v262 = v221 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v274 = v221 - v17;
  __chkstk_darwin(v18);
  v275 = v221 - v19;
  v20 = sub_1005B981C(&unk_101A0D9C0);
  v258 = *(v20 - 8);
  v259 = v20;
  __chkstk_darwin(v20);
  v257 = v221 - v21;
  v22 = sub_1005B981C(&unk_101A10680);
  v255 = *(v22 - 8);
  v256 = v22;
  __chkstk_darwin(v22);
  v254 = v221 - v23;
  v24 = sub_1005B981C(&unk_101A0D9D0);
  v251 = *(v24 - 8);
  v252 = v24;
  __chkstk_darwin(v24);
  v250 = v221 - v25;
  v26 = sub_1005B981C(&unk_101A10690);
  v245 = *(v26 - 8);
  v246 = v26;
  __chkstk_darwin(v26);
  v244 = v221 - v27;
  v253 = type metadata accessor for CRLShapeItemCRDTData(0);
  __chkstk_darwin(v253);
  v261 = v221 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v242 = sub_1005B981C(&unk_101A09DC0);
  *&v241 = *(v242 - 8);
  __chkstk_darwin(v242);
  *&v240 = v221 - v29;
  v30 = sub_1005B981C(&qword_101A224B8);
  __chkstk_darwin(v30 - 8);
  v226 = v221 - v31;
  v269 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v269);
  v236 = v221 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v238 = v221 - v34;
  __chkstk_darwin(v35);
  v234 = v221 - v36;
  __chkstk_darwin(v37);
  v270 = v221 - v38;
  v39 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v39 - 8);
  v263 = v221 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v232 = v221 - v42;
  v43 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v43 - 8);
  v229 = v221 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v231 = v221 - v46;
  v230 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v230);
  *&v264 = v221 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v268 = v221 - v49;
  v235 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v235);
  v248 = v221 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v247 = v221 - v52;
  __chkstk_darwin(v53);
  v249 = v221 - v54;
  __chkstk_darwin(v55);
  v272 = v221 - v56;
  __chkstk_darwin(v57);
  v277 = v221 - v58;
  v278 = type metadata accessor for UUID();
  v279 = *(v278 - 8);
  __chkstk_darwin(v278);
  v233 = v221 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v273 = v221 - v61;
  __chkstk_darwin(v62);
  *&v267 = v221 - v63;
  v227 = a5;
  v237 = a4;
  v276 = v9;
  if (a5 && !a4)
  {
    v266 = a1;
    v64 = objc_opt_self();
    v65 = [v64 _atomicIncrementAssertCount];
    v336[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v336);
    StaticString.description.getter();
    v66 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v67 = String._bridgeToObjectiveC()();

    v68 = [v67 lastPathComponent];

    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v72 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_10146CA70;
    *(v73 + 56) = &type metadata for Int32;
    *(v73 + 64) = &protocol witness table for Int32;
    *(v73 + 32) = v65;
    v74 = sub_100006370(0, &qword_1019F4D30);
    *(v73 + 96) = v74;
    v75 = sub_1005CF04C();
    *(v73 + 104) = v75;
    *(v73 + 72) = v66;
    *(v73 + 136) = &type metadata for String;
    v76 = sub_1000053B0();
    *(v73 + 112) = v69;
    *(v73 + 120) = v71;
    *(v73 + 176) = &type metadata for UInt;
    *(v73 + 184) = &protocol witness table for UInt;
    *(v73 + 144) = v76;
    *(v73 + 152) = 214;
    v77 = v336[0];
    *(v73 + 216) = v74;
    *(v73 + 224) = v75;
    *(v73 + 192) = v77;
    v78 = v66;
    v79 = v77;
    v80 = static os_log_type_t.error.getter();
    sub_100005404(v72, &_mh_execute_header, v80, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v73);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v81 = static os_log_type_t.error.getter();
    sub_100005404(v72, &_mh_execute_header, v81, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v82 = swift_allocObject();
    v82[2] = 8;
    v82[3] = 0;
    v82[4] = 0;
    v82[5] = 0;
    v83 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v84 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v85 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v86 = String._bridgeToObjectiveC()();

    [v64 handleFailureInFunction:v84 file:v85 lineNumber:214 isFatal:0 format:v86 args:v83];

    v9 = v276;
    a1 = v266;
  }

  v87 = sub_100818518(17);
  if (v87)
  {
    sub_100006370(0, &unk_101A10770);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v89 = a1;
    if (([v89 isKindOfClass:ObjCClassFromMetadata] & 1) == 0)
    {
      LODWORD(v228) = v87;
      v266 = a1;
      v265 = objc_opt_self();
      v90 = [v265 _atomicIncrementAssertCount];
      v336[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v336);
      StaticString.description.getter();
      v91 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v92 = String._bridgeToObjectiveC()();

      v93 = [v92 lastPathComponent];

      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v97 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_10146CA70;
      *(v98 + 56) = &type metadata for Int32;
      *(v98 + 64) = &protocol witness table for Int32;
      *(v98 + 32) = v90;
      v99 = sub_100006370(0, &qword_1019F4D30);
      *(v98 + 96) = v99;
      v100 = sub_1005CF04C();
      *(v98 + 104) = v100;
      *(v98 + 72) = v91;
      *(v98 + 136) = &type metadata for String;
      v101 = sub_1000053B0();
      *(v98 + 112) = v94;
      *(v98 + 120) = v96;
      *(v98 + 176) = &type metadata for UInt;
      *(v98 + 184) = &protocol witness table for UInt;
      *(v98 + 144) = v101;
      *(v98 + 152) = 613;
      v102 = v336[0];
      *(v98 + 216) = v99;
      *(v98 + 224) = v100;
      *(v98 + 192) = v102;
      v103 = v91;
      v104 = v102;
      v105 = static os_log_type_t.error.getter();
      sub_100005404(v97, &_mh_execute_header, v105, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v98);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v106 = static os_log_type_t.error.getter();
      sub_100005404(v97, &_mh_execute_header, v106, "pathSource must be a connection line path source if shapeType is connection line.", 81, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v107 = swift_allocObject();
      v107[2] = 8;
      v107[3] = 0;
      v107[4] = 0;
      v107[5] = 0;
      v108 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v109 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v110 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v111 = String._bridgeToObjectiveC()();

      [v265 handleFailureInFunction:v109 file:v110 lineNumber:613 isFatal:0 format:v111 args:v108];

      v89 = v111;
      v9 = v276;
      a1 = v266;
      v87 = v228;
    }
  }

  [a1 naturalSize];
  v114 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:1 size:1 widthValid:0 heightValid:0 horizontalFlip:a7 verticalFlip:a8 angle:{v112, v113, 0.0}];
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &qword_101A031A8);
  swift_dynamicCast();
  v115 = v335[0];
  [v114 size];
  v117 = v116;
  v119 = v118;
  [v115 naturalSize];
  v122 = sub_10011ED08(v117, v119, v120, v121, 0.001);
  v265 = v115;
  v266 = v114;
  if (!v122)
  {
    LODWORD(v228) = v87;
    v123 = objc_opt_self();
    v124 = [v123 _atomicIncrementAssertCount];
    v336[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v336);
    StaticString.description.getter();
    v125 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v126 = String._bridgeToObjectiveC()();

    v127 = [v126 lastPathComponent];

    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v129;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v131 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_10146CA70;
    *(v132 + 56) = &type metadata for Int32;
    *(v132 + 64) = &protocol witness table for Int32;
    *(v132 + 32) = v124;
    v133 = sub_100006370(0, &qword_1019F4D30);
    *(v132 + 96) = v133;
    v134 = sub_1005CF04C();
    *(v132 + 104) = v134;
    *(v132 + 72) = v125;
    *(v132 + 136) = &type metadata for String;
    v135 = sub_1000053B0();
    *(v132 + 112) = v128;
    *(v132 + 120) = v130;
    *(v132 + 176) = &type metadata for UInt;
    *(v132 + 184) = &protocol witness table for UInt;
    *(v132 + 144) = v135;
    *(v132 + 152) = 649;
    v136 = v336[0];
    *(v132 + 216) = v133;
    *(v132 + 224) = v134;
    *(v132 + 192) = v136;
    v137 = v125;
    v138 = v136;
    v139 = static os_log_type_t.error.getter();
    sub_100005404(v131, &_mh_execute_header, v139, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v132);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v140 = static os_log_type_t.error.getter();
    sub_100005404(v131, &_mh_execute_header, v140, "Geometry and path source must have the same size.", 49, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v141 = swift_allocObject();
    v141[2] = 8;
    v141[3] = 0;
    v141[4] = 0;
    v141[5] = 0;
    v142 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v143 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v144 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v145 = String._bridgeToObjectiveC()();

    [v123 handleFailureInFunction:v143 file:v144 lineNumber:649 isFatal:0 format:v145 args:v142];

    v115 = v265;
    v114 = v266;
    v9 = v276;
    v87 = v228;
  }

  type metadata accessor for CRLBoardInsertStyleData(0);
  sub_1005B981C(&unk_1019F4B90);
  CRRegister.wrappedValue.getter();
  memcpy(v335, v336, sizeof(v335));
  if (sub_1000C0F9C(v335) == 1)
  {
    sub_100A1C544(17, v341);
    v146 = sub_10081852C(v341);
    if (!v87)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v146 = sub_10000CAAC(v336, &qword_1019F4B88);
    if (!v87)
    {
LABEL_18:
      v147 = *&v9[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
      v276 = *(v147 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
      v148 = v273;
      (*(**(*(v147 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v146);
      v149 = v279;
      v150 = v231;
      v151 = v278;
      v224 = *(v279 + 16);
      v225 = v279 + 16;
      v224(v231, v148, v278);
      v222 = *(v149 + 56);
      v222(v150, 0, 1, v151);
      v334 = 1;
      v152 = type metadata accessor for CRLTableAnchorHint();
      v153 = *(v152 - 8);
      v221[0] = *(v153 + 56);
      v221[1] = v153 + 56;
      v154 = v232;
      (v221[0])(v232, 1, 1, v152);
      v155 = v114;
      v223 = v115;
      v228 = v276;
      sub_101271CCC(v155, v337);
      v276 = v155;

      v156 = v229;
      sub_10000BE14(v150, v229, &qword_1019F6990);
      sub_10000BE14(v154, v263, &unk_101A09DD0);
      v157 = v268;
      v222(v268, 1, 1, v151);
      v158 = v230;
      v159 = *(v230 + 28);
      v160 = v157 + *(v230 + 24);
      (v221[0])(v157 + v159, 1, 1, v152);
      v161 = v234;
      *(v157 + *(v158 + 32)) = _swiftEmptyDictionarySingleton;
      sub_10002C638(v156, v157, &qword_1019F6990);
      sub_10000CAAC(v154, &unk_101A09DD0);
      sub_10000CAAC(v150, &qword_1019F6990);
      v162 = (v157 + *(v158 + 20));
      v163 = v337[1];
      *v162 = v337[0];
      v162[1] = v163;
      *v160 = 0u;
      *(v160 + 16) = 0u;
      *(v160 + 32) = 0u;
      *(v160 + 48) = 0u;
      *(v160 + 64) = v334;
      v164 = v157 + v159;
      v165 = v237;
      sub_10002C638(v263, v164, &unk_101A09DD0);
      v166 = v264;
      sub_101125504(v157, v264, type metadata accessor for CRLBoardItemParentAffinity);
      sub_101125504(v166, v161, type metadata accessor for CRLBoardItemParentAffinity);
      v167 = v269;
      v168 = *(v269 + 20);
      v263 = v223;
      sub_100C3D740(v263, v161 + v168);
      v169 = v167[6];
      v170 = type metadata accessor for CRLPKStrokePathData();
      v171 = *(*(v170 - 8) + 56);
      v171(v161 + v169, 1, 1, v170);
      v172 = v161 + v167[7];
      *v172 = 0;
      *(v172 + 8) = -1;
      *(v161 + v167[8]) = _swiftEmptyDictionarySingleton;
      if (v165)
      {
        v173 = v227;
        v174 = v227;
        v175 = v165;
        v176 = v226;
        sub_100CD0B98(v175, v173, v226);
        v171(v176, 0, 1, v170);
        sub_10002C638(v176, v161 + v169, &qword_101A224B8);
      }

      if (v239)
      {
        v177 = sub_100D633A8(v239);
        sub_10112556C(v264, type metadata accessor for CRLBoardItemParentAffinity);
        *v172 = v177;
        *(v172 + 8) = 0;
      }

      else
      {
        sub_10112556C(v264, type metadata accessor for CRLBoardItemParentAffinity);
      }

      v188 = v270;
      sub_10112549C(v161, v270, type metadata accessor for CRLShapeItemParentAffinity);
      v189 = v238;
      sub_101125504(v188, v238, type metadata accessor for CRLShapeItemParentAffinity);
      sub_1005D0C00(&v326);
      v190 = v267;
      UUID.init()();
      v191 = v235;
      *&v264 = *(v235 + 52);
      v315 = v330;
      v316 = v331;
      v317 = v332;
      v318 = v333;
      v311 = v326;
      v312 = v327;
      v313 = v328;
      v314 = v329;
      sub_1005B981C(&unk_101A09DE0);
      sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &unk_1014897A0, sub_10074933C);
      v192 = v277;
      CRRegister.init(wrappedValue:)();
      *(v192 + *(v191 + 56)) = _swiftEmptyDictionarySingleton;
      v193 = v278;
      v224(v233, v190, v278);
      CRRegister.init(_:)();
      sub_101125504(v189, v236, type metadata accessor for CRLShapeItemParentAffinity);
      sub_101123A5C(&qword_101A106B0, type metadata accessor for CRLShapeItemParentAffinity);
      CRRegister.init(_:)();
      LOBYTE(v311) = 0;
      CRRegister.init(_:)();
      LOBYTE(v311) = 0;
      CRRegister.init(_:)();
      *&v311 = 0;
      *(&v311 + 1) = 0xE000000000000000;
      CRRegister.init(_:)();
      v315 = v330;
      v316 = v331;
      v317 = v332;
      v318 = v333;
      v311 = v326;
      v312 = v327;
      v313 = v328;
      v314 = v329;
      v194 = v240;
      CRRegister.init(_:)();
      v195 = *(v279 + 8);
      v279 += 8;
      v269 = v195;
      v195(v190, v193);
      sub_10112556C(v189, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v270, type metadata accessor for CRLShapeItemParentAffinity);
      sub_10112556C(v268, type metadata accessor for CRLBoardItemParentAffinity);
      (*(v241 + 40))(v192 + v264, v194, v242);
      if (v243)
      {
        sub_101247234(v243, v338);
        v264 = v338[1];
        v267 = v338[0];
        v242 = v338[3];
        v243 = v338[2];
        v240 = v338[5];
        v241 = v338[4];
        v270 = v339;
        v268 = v340;
        v196 = v271;
        if (v271)
        {
LABEL_27:
          sub_100B965E4(v196, &v296);
          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v296, v197);
          v323 = v308;
          v324 = v309;
          v325 = v310;
          v319 = v304;
          v320 = v305;
          v322 = v307;
          v321 = v306;
          v315 = v300;
          v316 = v301;
          v318 = v303;
          v317 = v302;
          v311 = v296;
          v312 = v297;
          v314 = v299;
          v313 = v298;
LABEL_30:
          v301 = 0u;
          v302 = 0u;
          v299 = 0u;
          v300 = 0u;
          v297 = 0u;
          v298 = 0u;
          v296 = 0u;
          v271 = sub_1005B981C(&qword_1019FFF80);
          sub_100A49DD0(&qword_101A0D9E0, &qword_1019FFF80, &unk_101489000, sub_1006BD1F0);
          v198 = v261;
          CRRegister.init(wrappedValue:)();
          v199 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
          v239 = v199[5];
          sub_1005D0BD8(&v296);
          v293 = v308;
          v294 = v309;
          v295 = v310;
          v289 = v304;
          v290 = v305;
          v291 = v306;
          v292 = v307;
          v285 = v300;
          v286 = v301;
          v287 = v302;
          v288 = v303;
          v281 = v296;
          v282 = v297;
          v283 = v298;
          v284 = v299;
          sub_1005B981C(&unk_101A106C0);
          sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
          CRRegister.init(wrappedValue:)();
          v238 = v199[6];
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          sub_1005B981C(&unk_101A0DA00);
          sub_100A49DD0(&unk_101A106E0, &unk_101A0DA00, &unk_101495050, sub_1009CDC80);
          CRRegister.init(wrappedValue:)();
          v200 = v199[7];
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          CRRegister.init(wrappedValue:)();
          v201 = v199[8];
          LODWORD(v281) = 0;
          CRRegister.init(wrappedValue:)();
          *(v198 + v199[9]) = _swiftEmptyDictionarySingleton;
          v281 = v267;
          v282 = v264;
          v283 = v243;
          v284 = v242;
          v285 = v241;
          v286 = v240;
          *&v287 = v270;
          *(&v287 + 1) = v268;
          v202 = v244;
          CRRegister.init(_:)();
          (*(v245 + 40))(v198, v202, v246);
          v293 = v323;
          v294 = v324;
          v295 = v325;
          v289 = v319;
          v290 = v320;
          v291 = v321;
          v292 = v322;
          v285 = v315;
          v286 = v316;
          v287 = v317;
          v288 = v318;
          v281 = v311;
          v282 = v312;
          v283 = v313;
          v284 = v314;
          v203 = v250;
          CRRegister.init(_:)();
          (*(v251 + 40))(v198 + v239, v203, v252);
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          v204 = v254;
          CRRegister.init(_:)();
          v205 = v256;
          v206 = *(v255 + 40);
          v206(v198 + v238, v204, v256);
          *&v284 = 0;
          v282 = 0u;
          v283 = 0u;
          v281 = 0u;
          CRRegister.init(_:)();
          v206(v198 + v200, v204, v205);
          LODWORD(v281) = 0;
          v207 = v257;
          CRRegister.init(_:)();
          (*(v258 + 40))(v198 + v201, v207, v259);
          *(v198 + *(v253 + 20)) = _swiftEmptyDictionarySingleton;
          v208 = v275;
          sub_101125504(v198, v275, type metadata accessor for CRLShapeItemCRDTData);
          *(v208 + *(v260 + 20)) = _swiftEmptyDictionarySingleton;
          v209 = v272;
          sub_10000BE14(v277, v272, &unk_101A0F400);
          v210 = v274;
          sub_101125504(v208, v274, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          *&v281 = 0x1000000000000;
          *(&v281 + 1) = 0x2000400000000;
          v282 = 0x1000000000000uLL;
          LOBYTE(v283) = 1;
          type metadata accessor for CRLFreehandDrawingShapeItemData(0);
          v211 = swift_allocObject();
          v212 = v249;
          sub_10000BE14(v209, v249, &unk_101A0F400);
          v213 = v262;
          sub_101125504(v210, v262, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          sub_101125504(v213, v211 + *(*v211 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          v214 = v247;
          sub_10000BE14(v212, v247, &unk_101A0F400);
          *(v211 + qword_101A27318) = 0;
          v215 = v248;
          sub_10000BE14(v214, v248, &unk_101A0F400);
          sub_10000BE14(v215, v211 + *(*v211 + 736), &unk_101A0F400);
          sub_1005B981C(&unk_1019F5250);
          CRRegister.wrappedValue.getter();
          sub_10000CAAC(v215, &unk_101A0F400);
          sub_10000CAAC(v214, &unk_101A0F400);
          sub_10112556C(v213, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          sub_10000CAAC(v212, &unk_101A0F400);
          sub_10112556C(v274, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          sub_10000CAAC(v272, &unk_101A0F400);
          v216 = sub_100747AF0(&v281, 2);
          v217 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem());
          *&v217[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
          *&v217[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
          v218 = &v217[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
          *v218 = 0u;
          *(v218 + 1) = 0u;
          *(v218 + 2) = 0u;
          *(v218 + 6) = 0;
          *&v217[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
          *&v217[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v228;
          *&v217[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v216;
          v219 = type metadata accessor for CRLBoardItemBase(0);
          v280.receiver = v217;
          v280.super_class = v219;
          v187 = objc_msgSendSuper2(&v280, "init");

          sub_10112556C(v275, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
          (v269)(v273, v278);
          sub_10112556C(v198, type metadata accessor for CRLShapeItemCRDTData);
          sub_10000CAAC(v277, &unk_101A0F400);
          v185 = v265;
          v114 = v266;
          goto LABEL_31;
        }
      }

      else
      {
        v270 = 0;
        v268 = 0;
        v267 = 0u;
        v264 = 0u;
        v242 = 0u;
        v243 = 0u;
        v240 = 0u;
        v241 = 0u;
        v196 = v271;
        if (v271)
        {
          goto LABEL_27;
        }
      }

      sub_1005D0BD8(&v311);
      goto LABEL_30;
    }
  }

  v178 = *&v9[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
  v179 = *(v178 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v180 = v267;
  (*(**(*(v178 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v146);
  v181 = objc_allocWithZone(type metadata accessor for CRLConnectionLineItem());
  v182 = v179;
  v183 = v114;
  v184 = v115;
  v185 = v115;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v187 = [v181 initWithStore:v182 parentContainerUUID:isa geometry:v183 pathSource:v184 stroke:v271 headLineEnd:0 tailLineEnd:0];

  (*(v279 + 8))(v180, v278);
LABEL_31:

  return v187;
}

Class sub_101120680(void *a1, double a2, uint64_t a3, void *a4, SEL *a5)
{
  v9 = type metadata accessor for PKStroke();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a4;
  v14 = a1;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = objc_opt_self();
  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  v17 = [v15 *a5];

  if (!v17)
  {
    type metadata accessor for CRLFreehandDrawingShapeItem();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = Array._bridgeToObjectiveC()().super.isa;
  }

  (*(v10 + 8))(v12, v9);

  return v17;
}

void sub_101120890(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (v6 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 0)
    {
      goto LABEL_6;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
    goto LABEL_6;
  }

  v31 = objc_opt_self();
  v7 = [v31 _atomicIncrementAssertCount];
  v32 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v32);
  StaticString.description.getter();
  v8 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v9 lastPathComponent];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
  *(inited + 32) = v7;
  v16 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v16;
  v17 = sub_1005CF04C();
  *(inited + 104) = v17;
  *(inited + 72) = v8;
  *(inited + 136) = &type metadata for String;
  v18 = sub_1000053B0();
  *(inited + 112) = v11;
  *(inited + 120) = v13;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v18;
  *(inited + 152) = 295;
  v19 = v32;
  *(inited + 216) = v16;
  *(inited + 224) = v17;
  *(inited + 192) = v19;
  v20 = v8;
  v21 = v19;
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v23 = static os_log_type_t.error.getter();
  sub_100005404(v14, &_mh_execute_header, v23, "We are enqueueing multiple commands, so there should be an open command group.", 78, 2, _swiftEmptyArrayStorage);

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

  [v31 handleFailureInFunction:v26 file:v27 lineNumber:295 isFatal:0 format:v28 args:v25];

LABEL_6:
  sub_10088F490();
  sub_100AEE6A4(a3);
  v30 = v29;
  sub_100888700(v29, 0, 0, 4, 0);
}

uint64_t sub_101120E4C(double a1, double a2)
{
  v4 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  v7 = sub_10057DBD4(0);
  v9 = [objc_opt_self() pathSourceForShapeType:0 naturalSize:{v7, v8}];
  v10 = objc_allocWithZone(NSAttributedString);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithString:v11];

  v13 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_1006950BC(v19);
  v17[12] = v19[12];
  v17[13] = v19[13];
  v17[14] = v19[14];
  v18 = v20;
  v17[8] = v19[8];
  v17[9] = v19[9];
  v17[10] = v19[10];
  v17[11] = v19[11];
  v17[4] = v19[4];
  v17[5] = v19[5];
  v17[6] = v19[6];
  v17[7] = v19[7];
  v17[0] = v19[0];
  v17[1] = v19[1];
  v17[2] = v19[2];
  v17[3] = v19[3];
  v14 = v9;
  v15 = v12;
  sub_1011133FC(0, 0, v9, 0, *&a1, *&a2, 0, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, v12, v6, v17, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v6, &unk_101A0B1C0);
  type metadata accessor for CRLWPShapeItem();
  return swift_dynamicCastClassUnconditional();
}

char *sub_101121568(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v6 - 8);
  v8 = &v14[-v7 - 8];
  if (a2 && (sub_10000630C(a2 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v14), sub_1005B981C(&qword_1019FF208), type metadata accessor for CRLAssetBackedAssetStorage(), swift_dynamicCast()))
  {
    sub_101125504(v13 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v8, type metadata accessor for CRLAssetData);

    v9 = type metadata accessor for CRLAssetData();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for CRLAssetData();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = sub_10110DD78(a1, v8, a3);
  sub_10000CAAC(v8, &unk_101A1B880);
  return v11;
}

uint64_t sub_101121854(uint64_t a1, __int128 *a2)
{
  swift_getKeyPath();
  v3 = a2[13];
  v51 = a2[12];
  v52 = v3;
  v53 = *(a2 + 28);
  v4 = a2[9];
  v47 = a2[8];
  v48 = v4;
  v5 = a2[11];
  v49 = a2[10];
  v50 = v5;
  v6 = a2[5];
  v43 = a2[4];
  v44 = v6;
  v7 = a2[7];
  v45 = a2[6];
  v46 = v7;
  v8 = a2[1];
  v39 = *a2;
  v40 = v8;
  v9 = a2[3];
  v41 = a2[2];
  v42 = v9;
  sub_100B98B48(&v39, &v24);
  v10 = Capsule.Ref.subscript.modify();
  v36 = v51;
  v37 = v52;
  v38 = v53;
  v32 = v47;
  v33 = v48;
  v34 = v49;
  v35 = v50;
  v28 = v43;
  v29 = v44;
  v30 = v45;
  v31 = v46;
  v24 = v39;
  v25 = v40;
  v26 = v41;
  v27 = v42;
  sub_1005B981C(&qword_101A2C7B0);
  CRRegister.wrappedValue.setter();
  v10(v23, 0);

  swift_getKeyPath();
  v12 = *(a2 + 29);
  v11 = *(a2 + 30);

  v13 = Capsule.Ref.subscript.modify();
  *&v23[0] = v12;
  *(&v23[0] + 1) = v11;
  _s13StyleCRDTDataVMa();
  sub_1005B981C(&unk_101A2D9E0);
  CRRegister.wrappedValue.setter();
  v13(&v24, 0);

  swift_getKeyPath();
  LOBYTE(v12) = *(a2 + 248);
  v14 = Capsule.Ref.subscript.modify();
  LOBYTE(v23[0]) = v12;
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.setter();
  v14(&v24, 0);

  swift_getKeyPath();
  v15 = *(a2 + 249);
  v16 = Capsule.Ref.subscript.modify();
  LOBYTE(v23[0]) = v15;
  CRRegister.wrappedValue.setter();
  v16(&v24, 0);

  swift_getKeyPath();
  v17 = a2[21];
  v28 = a2[20];
  v29 = v17;
  v30 = a2[22];
  v18 = a2[17];
  v24 = a2[16];
  v25 = v18;
  v19 = a2[19];
  v26 = a2[18];
  v27 = v19;
  sub_10000BE14(&v24, v23, &qword_1019FFF80);
  v20 = Capsule.Ref.subscript.modify();
  v23[4] = v28;
  v23[5] = v29;
  v23[6] = v30;
  v23[2] = v26;
  v23[3] = v27;
  v23[0] = v24;
  v23[1] = v25;
  sub_1005B981C(&unk_101A10690);
  CRRegister.wrappedValue.setter();
  v20(&v22, 0);
}

void *sub_101121D20(unint64_t a1, unint64_t *a2, uint64_t a3)
{
  v25 = a3;
  v5 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v5 - 8);
  v31 = &v25 - v6;
  v36 = _swiftEmptyArrayStorage;
  v7 = type metadata accessor for CRLUUIDRemapHelper();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_objectUUIDMap] = _swiftEmptyDictionarySingleton;
  *&v8[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap] = _swiftEmptyDictionarySingleton;
  v8[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs] = 1;
  v35.receiver = v8;
  v35.super_class = v7;
  v33 = objc_msgSendSuper2(&v35, "init", v25);
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2; v9; i = a2)
  {
    v10 = 0;
    v30 = a1 & 0xC000000000000001;
    v28 = OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a1;
    while (1)
    {
      if (v30)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v29 + 16))
        {
          goto LABEL_14;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v34 = v10 + 1;
      v13 = *(*(*(v32 + v28) + OBJC_IVAR____TtC8Freeform8CRLBoard_store) + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
      v14 = type metadata accessor for UUID();
      v15 = v31;
      (*(*(v14 - 8) + 56))(v31, 1, 1, v14);
      v16 = *((swift_isaMask & *v12) + 0x288);
      v17 = v13;
      v18 = v16(v13, v15, 0, v33);
      sub_10000CAAC(v15, &qword_1019F6990);

      v19 = v18;
      a2 = &v36;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v20 = v36;
      ++v10;
      a1 = v27;
      if (v34 == v9)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_17:
  v21 = i;
  v22 = v33;
  if (i)
  {
    v23 = v33;
    (v21)(v22);
  }

  return v20;
}

uint64_t type metadata accessor for CRLBoardItemFactory()
{
  result = qword_101A2AF50;
  if (!qword_101A2AF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10112232C()
{
  result = type metadata accessor for CRLBoardInsertStyleData(319);
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

BOOL sub_1011223CC(uint64_t a1)
{
  if (a1 - 1) < 0x14 && ((0x8C001u >> (a1 - 1)))
  {
    return 1;
  }

  return a1 == 19 || (a1 & 0xFFFFFFFFFFFFFFEFLL) == 2;
}

id sub_101122410(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for CRLImageItem());
  *&v4[OBJC_IVAR____TtC8Freeform12CRLImageItem__imageAssetAsData] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform12CRLImageItem__thumbnailAssetAsData] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo] = 0;
  v4[OBJC_IVAR____TtC8Freeform12CRLImageItem__isSpatial] = 2;
  v4[OBJC_IVAR____TtC8Freeform12CRLMediaItem_isLooping] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a1;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a2;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for CRLBoardItemBase(0);
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1011224E8(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for CRLMovieItem());
  v4[OBJC_IVAR____TtC8Freeform12CRLMovieItem_spatial] = 2;
  *&v4[OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData] = 0;
  v4[OBJC_IVAR____TtC8Freeform12CRLMediaItem_isLooping] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a1;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a2;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for CRLBoardItemBase(0);
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1011225AC(uint64_t a1, void *a2, uint64_t a3)
{
  v192 = a1;
  v5 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v5 - 8);
  v7 = &v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v183 = &v178 - v9;
  v189 = type metadata accessor for UUID();
  v10 = *(v189 - 8);
  __chkstk_darwin(v189);
  v179 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v178 - v13;
  __chkstk_darwin(v15);
  v196 = &v178 - v16;
  v17 = *(a3 + OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock);
  os_unfair_lock_lock(*(v17 + 16));
  v18 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
  Strong = swift_unknownObjectWeakLoadStrong();
  v193 = a3;
  v190 = v10;
  v185 = v14;
  v186 = v17;
  v182 = v7;
  v188 = v18;
  if (Strong)
  {

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
LABEL_98:
      __break(1u);
      return result;
    }

    v21 = result;
    v22 = [result description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0xE300000000000000;
    v23 = 7104878;
  }

  v194 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v180 = xmmword_10146BDE0;
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for String;
  v27 = sub_1000053B0();
  v181 = v23;
  *(inited + 32) = v23;
  v197 = (inited + 32);
  *(inited + 64) = v27;
  *(inited + 40) = v25;
  v187 = v25;

  v28 = a2;
  v29 = [a2 store];
  v30 = [v29 description];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v27;
  v195 = v27;
  *(inited + 72) = v31;
  *(inited + 80) = v33;
  v34 = [v28 store];
  v35 = v193;
  v36 = swift_unknownObjectWeakLoadStrong();
  if (!v36)
  {

LABEL_9:
    v191 = v28;
    v178 = objc_opt_self();
    LODWORD(v40) = [v178 _atomicIncrementAssertCount];
    v200[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, v200);
    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    v43 = [v42 lastPathComponent];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v45;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_96;
    }

    goto LABEL_10;
  }

  v37 = v36;
  type metadata accessor for CRLBoardDataStore(0);
  v38 = static NSObject.== infix(_:_:)();

  v39 = v190;
  if ((v38 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_35:
  v73 = [v28 parentBoard];
  v74 = v192;
  v184 = v73;
  if (!v73)
  {
    goto LABEL_66;
  }

  v75 = v73;
  v76 = swift_initStackObject();
  *(v76 + 16) = v180;
  *(v76 + 32) = v181;
  v197 = (v76 + 32);
  v77 = v195;
  *(v76 + 56) = &type metadata for String;
  *(v76 + 64) = v77;
  *(v76 + 40) = v187;
  v78 = OBJC_IVAR____TtC8Freeform8CRLBoard_store;
  v79 = *&v75[OBJC_IVAR____TtC8Freeform8CRLBoard_store];
  v191 = v75;
  v80 = [v79 description];
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  *(v76 + 96) = &type metadata for String;
  *(v76 + 104) = v77;
  *(v76 + 72) = v81;
  *(v76 + 80) = v83;
  v84 = *&v75[v78];
  v85 = swift_unknownObjectWeakLoadStrong();
  if (v85)
  {
    v86 = v85;
    type metadata accessor for CRLBoardDataStore(0);
    v87 = v84;
    v88 = static NSObject.== infix(_:_:)();

    if (v88)
    {

LABEL_68:
      v39 = v190;
      v28 = v191;
      v74 = v192;
      goto LABEL_69;
    }
  }

  v187 = objc_opt_self();
  v89 = [v187 _atomicIncrementAssertCount];
  v200[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v76, v200);
  StaticString.description.getter();
  v90 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v91 = String._bridgeToObjectiveC()();

  v92 = [v91 lastPathComponent];

  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v94;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v96 = static OS_os_log.crlAssert;
  v97 = swift_initStackObject();
  *(v97 + 16) = xmmword_10146CA70;
  *(v97 + 56) = &type metadata for Int32;
  *(v97 + 64) = &protocol witness table for Int32;
  *(v97 + 32) = v89;
  v98 = sub_100006370(0, &qword_1019F4D30);
  *(v97 + 96) = v98;
  v99 = sub_1005CF04C();
  *(v97 + 72) = v90;
  v100 = v195;
  *(v97 + 136) = &type metadata for String;
  *(v97 + 144) = v100;
  *(v97 + 104) = v99;
  *(v97 + 112) = v93;
  *(v97 + 120) = v95;
  *(v97 + 176) = &type metadata for UInt;
  *(v97 + 152) = 241;
  v101 = v200[0];
  *(v97 + 216) = v98;
  *(v97 + 224) = v99;
  *(v97 + 184) = &protocol witness table for UInt;
  *(v97 + 192) = v101;
  v102 = v90;
  v103 = v101;
  v104 = static os_log_type_t.error.getter();
  sub_100005404(v96, &_mh_execute_header, v104, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v97);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v105 = static os_log_type_t.error.getter();
  sub_100005404(v96, &_mh_execute_header, v105, "Unexpected board data store. expected=%{public}@, actual=%{public}@", 67, 2, v76);

  type metadata accessor for __VaListBuilder();
  v28 = swift_allocObject();
  v28[2] = 8;
  v28[3] = 0;
  inited = (v28 + 3);
  v28[4] = 0;
  v28[5] = 0;
  v188 = v76;
  v39 = *(v76 + 16);
  if (!v39)
  {
LABEL_67:
    v118 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v119 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v120 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v121 = String._bridgeToObjectiveC()();

    [v187 handleFailureInFunction:v119 file:v120 lineNumber:241 isFatal:0 format:v121 args:v118];

    v35 = v193;
    goto LABEL_68;
  }

  v35 = 0;
  v74 = 40;
  while (1)
  {
    v106 = &v197[5 * v35];
    v41 = v106[3];
    LODWORD(v40) = sub_100020E58(v106, v41);
    v107 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v44 = *inited;
    v108 = *(v107 + 16);
    v62 = __OFADD__(*inited, v108);
    v109 = *inited + v108;
    if (v62)
    {
      goto LABEL_91;
    }

    v40 = v28[4];
    if (v40 >= v109)
    {
      goto LABEL_58;
    }

    if (v40 + 0x4000000000000000 < 0)
    {
      goto LABEL_94;
    }

    v41 = v28[5];
    if (2 * v40 > v109)
    {
      v109 = 2 * v40;
    }

    v28[4] = v109;
    if ((v109 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_95;
    }

    v110 = v107;
    v111 = swift_slowAlloc();
    v112 = v111;
    v28[5] = v111;
    if (!v41)
    {
      break;
    }

    if (v111 != v41 || v111 >= &v41[v44])
    {
      memmove(v111, v41, 8 * v44);
    }

    LODWORD(v40) = v28;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v107 = v110;
LABEL_58:
    v112 = v28[5];
    if (!v112)
    {
      goto LABEL_65;
    }

LABEL_59:
    v114 = *(v107 + 16);
    if (v114)
    {
      v115 = (v107 + 32);
      v116 = *inited;
      while (1)
      {
        v117 = *v115++;
        v112[v116] = v117;
        v116 = *inited + 1;
        if (__OFADD__(*inited, 1))
        {
          break;
        }

        *inited = v116;
        if (!--v114)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      swift_once();
LABEL_10:
      v46 = static OS_os_log.crlAssert;
      v47 = swift_initStackObject();
      *(v47 + 16) = xmmword_10146CA70;
      *(v47 + 56) = &type metadata for Int32;
      *(v47 + 64) = &protocol witness table for Int32;
      *(v47 + 32) = v40;
      v48 = sub_100006370(0, &qword_1019F4D30);
      *(v47 + 96) = v48;
      v49 = sub_1005CF04C();
      *(v47 + 72) = v41;
      v50 = v195;
      *(v47 + 136) = &type metadata for String;
      *(v47 + 144) = v50;
      *(v47 + 104) = v49;
      *(v47 + 112) = v44;
      *(v47 + 120) = v28;
      *(v47 + 176) = &type metadata for UInt;
      *(v47 + 152) = 235;
      v51 = v200[0];
      *(v47 + 216) = v48;
      *(v47 + 224) = v49;
      *(v47 + 184) = &protocol witness table for UInt;
      *(v47 + 192) = v51;
      v52 = v41;
      v53 = v51;
      v54 = static os_log_type_t.error.getter();
      sub_100005404(v46, &_mh_execute_header, v54, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v47);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v55 = static os_log_type_t.error.getter();
      sub_100005404(v46, &_mh_execute_header, v55, "Unexpected board data store. expected=%{public}@, actual=%{public}@", 67, 2, inited);

      type metadata accessor for __VaListBuilder();
      v41 = swift_allocObject();
      v41[2] = 8;
      v41[3] = 0;
      v39 = v41 + 3;
      v41[4] = 0;
      v41[5] = 0;
      v184 = inited;
      v28 = *(inited + 16);
      if (v28)
      {
        v56 = 0;
        inited = 40;
        while (1)
        {
          v57 = &v197[5 * v56];
          v44 = v57[3];
          LODWORD(v40) = sub_100020E58(v57, v44);
          v58 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v60 = *v39;
          v61 = *(v58 + 16);
          v62 = __OFADD__(*v39, v61);
          v63 = *v39 + v61;
          if (v62)
          {
            goto LABEL_90;
          }

          v35 = v58;
          v40 = v41[4];
          if (v40 >= v63)
          {
            goto LABEL_27;
          }

          if (v40 + 0x4000000000000000 < 0)
          {
            goto LABEL_92;
          }

          v44 = v41[5];
          if (2 * v40 > v63)
          {
            v63 = 2 * v40;
          }

          v41[4] = v63;
          if ((v63 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_93;
          }

          result = swift_slowAlloc();
          v41[5] = result;
          if (v44)
          {
            break;
          }

LABEL_28:
          if (!result)
          {
            __break(1u);
            goto LABEL_98;
          }

          v65 = *(v35 + 16);
          if (v65)
          {
            v66 = (v35 + 32);
            v67 = *v39;
            while (1)
            {
              v68 = *v66++;
              *(result + v67) = v68;
              v67 = *v39 + 1;
              if (__OFADD__(*v39, 1))
              {
                break;
              }

              *v39 = v67;
              if (!--v65)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
            goto LABEL_81;
          }

LABEL_12:

          v56 = (v56 + 1);
          if (v56 == v28)
          {
            goto LABEL_34;
          }
        }

        if (result != v44 || result >= v44 + 8 * v60)
        {
          memmove(result, v44, 8 * v60);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_27:
        result = v41[5];
        goto LABEL_28;
      }

LABEL_34:
      v69 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v70 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v71 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v72 = String._bridgeToObjectiveC()();

      [v178 handleFailureInFunction:v70 file:v71 lineNumber:235 isFatal:0 format:v72 args:v69];

      v35 = v193;
      v39 = v190;
      v28 = v191;
      goto LABEL_35;
    }

LABEL_43:

    if (++v35 == v39)
    {
      goto LABEL_67;
    }
  }

  v107 = v110;
  if (v112)
  {
    goto LABEL_59;
  }

LABEL_65:
  __break(1u);
LABEL_66:

  swift_unknownObjectRetain();
LABEL_69:
  v122 = v39[2];
  v122(v196, v74, v189);
  v123 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets;
  swift_beginAccess();
  v124 = *(v35 + v123);
  v125 = *(v124 + 16);
  v197 = v39 + 2;
  v188 = v122;
  if (!v125)
  {
LABEL_74:
    v131 = v74;
    v132 = v183;
    sub_101125504(v131, v183, type metadata accessor for CRLAssetData);
    v133 = [swift_unknownObjectRetain_n() store];
    v134 = v182;
    sub_101125504(v132, v182, type metadata accessor for CRLAssetData);
    v135 = type metadata accessor for CRLAssetBackedAssetStorage();
    v136 = swift_allocObject();
    sub_10112549C(v134, &v136[OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData], type metadata accessor for CRLAssetData);
    *&v136[OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_store] = v133;
    v200[4] = &off_10189C5F8;
    v200[3] = v135;
    v200[0] = v136;
    v137 = type metadata accessor for CRLAsset();
    v138 = objc_allocWithZone(v137);
    sub_10000630C(v200, v138 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
    v199.receiver = v138;
    v199.super_class = v137;
    v139 = objc_msgSendSuper2(&v199, "init");
    sub_10112556C(v132, type metadata accessor for CRLAssetData);
    sub_100005070(v200);
    type metadata accessor for CRLAssetManager.AssetInfo();
    v140 = swift_allocObject();
    v141 = objc_opt_self();
    v142 = v139;
    *(v140 + 24) = [v141 hashTableWithOptions:517];
    v143 = [objc_opt_self() hashTableWithOptions:517];
    *(v140 + 32) = v143;
    *(v140 + 16) = v142;
    type metadata accessor for CRLBoard(0);
    v144 = swift_dynamicCastClass();
    if (v144)
    {
      [*(v140 + 24) addObject:v144];
    }

    else
    {
      v145 = v142;
      [v143 addObject:v28];
    }

    swift_unknownObjectRelease();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v198 = *(v35 + v123);
    *(v35 + v123) = 0x8000000000000000;
    v187 = v140;
    sub_100A9BB98(v140, v196, isUniquelyReferenced_nonNull_native);
    *(v35 + v123) = v198;
    swift_endAccess();
    if (qword_1019F22C0 != -1)
    {
      swift_once();
    }

    v147 = static OS_os_log.assetManagement;
    v148 = swift_initStackObject();
    *(v148 + 16) = xmmword_10146C6B0;
    v149 = UUID.uuidString.getter();
    v150 = v195;
    *(v148 + 56) = &type metadata for String;
    *(v148 + 64) = v150;
    *(v148 + 32) = v149;
    *(v148 + 40) = v151;
    v152 = static os_log_type_t.default.getter();
    sub_100005404(v147, &_mh_execute_header, v152, "CRLAssetManager asset(forAssetData:%@, owner:) create new", 57, 2, v148);

    swift_setDeallocating();
    sub_100005070(v148 + 32);
    goto LABEL_85;
  }

  v126 = sub_10003E994(v196);
  if ((v127 & 1) == 0)
  {

    goto LABEL_74;
  }

  v56 = *(*(v124 + 56) + 8 * v126);

  type metadata accessor for CRLBoard(0);
  v128 = swift_dynamicCastClass();
  v59 = "addObject:";
  if (v128)
  {
    v129 = v128;
    v130 = v56[3];
  }

  else
  {
LABEL_81:
    v130 = v56[4];
    v129 = v28;
  }

  [v130 v59];
  v187 = v56;
  if (qword_1019F22C0 != -1)
  {
    swift_once();
  }

  v153 = static OS_os_log.assetManagement;
  v154 = swift_initStackObject();
  *(v154 + 16) = xmmword_10146C6B0;
  v155 = UUID.uuidString.getter();
  v156 = v195;
  *(v154 + 56) = &type metadata for String;
  *(v154 + 64) = v156;
  *(v154 + 32) = v155;
  *(v154 + 40) = v157;
  v158 = static os_log_type_t.default.getter();
  sub_100005404(v153, &_mh_execute_header, v158, "CRLAssetManager asset(forAssetData:%@, owner:) add owner to existing", 68, 2, v154);
  swift_setDeallocating();
  sub_100005070(v154 + 32);
  swift_unknownObjectRetain();
LABEL_85:
  v159 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
  v160 = [*(v35 + OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners) objectForKeyedSubscript:v28];
  swift_unknownObjectRelease();
  if (v160)
  {
    v161 = v179;
    v162 = v196;
    v163 = v189;
    v188(v179, v196, v189);
    swift_beginAccess();
    v164 = v185;
    sub_100E6AF38(v185, v161);
    v165 = v39[1];
    v165(v164, v163);
    swift_endAccess();

    swift_unknownObjectRelease();

    v165(v162, v163);
  }

  else
  {
    v166 = *(v35 + v159);
    v167 = v185;
    v191 = v28;
    v168 = v39;
    v169 = v188;
    v170 = v189;
    v188(v185, v196, v189);
    type metadata accessor for CRLAssetManager.OwnerInfo();
    v171 = swift_allocObject();
    *(v171 + 24) = 0;
    sub_1005B981C(&qword_101A1DBB0);
    v172 = (*(v168 + 80) + 32) & ~*(v168 + 80);
    v173 = swift_allocObject();
    *(v173 + 16) = xmmword_10146C6B0;
    v169(v173 + v172, v167, v170);
    v174 = v166;
    v175 = sub_100E93A84(v173);
    swift_setDeallocating();
    v176 = v168[1];
    v176(v173 + v172, v170);
    swift_deallocClassInstance();
    v176(v167, v170);
    *(v171 + 16) = v175;
    [v174 setObject:v171 forKeyedSubscript:v191];

    swift_unknownObjectRelease();

    v176(v196, v170);
  }

  v177 = v187[2];

  sub_100C8061C();
  os_unfair_lock_unlock(*(v186 + 16));
  return v177;
}