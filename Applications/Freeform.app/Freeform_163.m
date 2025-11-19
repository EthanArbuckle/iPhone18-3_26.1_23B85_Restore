uint64_t sub_1012F9090(uint64_t a1, uint64_t a2)
{
  v3[54] = a2;
  v3[55] = v2;
  v3[53] = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v3[56] = v4;
  v3[57] = *(v4 - 8);
  v3[58] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS();
  v3[59] = v5;
  v3[60] = *(v5 - 8);
  v3[61] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[62] = v6;
  v7 = *(v6 - 8);
  v3[63] = v7;
  v3[64] = *(v7 + 64);
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v8 = type metadata accessor for DispatchTimeInterval();
  v3[67] = v8;
  v3[68] = *(v8 - 8);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v9 = type metadata accessor for DispatchTime();
  v3[71] = v9;
  v3[72] = *(v9 - 8);
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v10 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v3[75] = v10;
  v3[76] = *(v10 - 8);
  v3[77] = swift_task_alloc();
  v11 = type metadata accessor for GroupSessionMessenger.DeliveryMode();
  v3[78] = v11;
  v3[79] = *(v11 - 8);
  v3[80] = swift_task_alloc();

  return _swift_task_switch(sub_1012F93A8, v2, 0);
}

uint64_t sub_1012F93A8()
{
  v1 = v0[55];
  v2 = v0[53];
  v3 = OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_chainID;
  v0[81] = OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_chainID;
  v4 = (v1 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation_chunkedMessageBufferWrappers);
  swift_beginAccess();
  v5 = *v4;
  if (*(*v4 + 16))
  {

    v6 = sub_10003E994(v2 + v3);
    if (v7)
    {
      v8 = v0[53];
      v9 = *(*(v5 + 56) + 8 * v6);
      v0[82] = v9;

      v10 = *(v9 + 24);
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 40);

      swift_unknownObjectRetain();
      v12(v8, ObjectType, v10);

      swift_unknownObjectRelease();
      v41 = *(v9 + 24);
      v42 = swift_getObjectType();
      v43 = *(v41 + 16);
      swift_unknownObjectRetain();
      v44 = v43(v42, v41);
      swift_unknownObjectRelease();
      if (v44)
      {
        v45 = *(v9 + 16);
        v0[83] = v45;
        v46 = *(v9 + 24);
        swift_unknownObjectRetain();
        v47 = swift_task_alloc();
        v0[84] = v47;
        *v47 = v0;
        v47[1] = sub_1012FA1FC;
        v26 = v0[54];
        v27 = v45;
        v28 = v46;
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  v13 = v0[80];
  v14 = v0[79];
  v15 = v0[78];
  (*(v14 + 16))(v13, v0[55] + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__configuration, v15);
  v16 = (*(v14 + 88))(v13, v15);
  if (v16 == enum case for GroupSessionMessenger.DeliveryMode.reliable(_:))
  {
    type metadata accessor for CRLContiguousChunkedRealTimeMessageBuffer();
    swift_allocObject();

    v20 = sub_10091B644(v17);
    v21 = &off_10188D560;
  }

  else
  {
    if (v16 != enum case for GroupSessionMessenger.DeliveryMode.unreliable(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    type metadata accessor for CRLUnorderedChunkedRealTimeMessageBuffer();
    swift_allocObject();

    v20 = sub_100D8280C(v18);

    v21 = &off_1018A4180;
  }

  v0[86] = v20;
  v22 = swift_getObjectType();
  v23 = v21[2];
  swift_unknownObjectRetain();
  v24 = v23(v22, v21);
  swift_unknownObjectRelease();
  if (v24)
  {
    v25 = swift_task_alloc();
    v0[87] = v25;
    *v25 = v0;
    v25[1] = sub_1012FA438;
    v26 = v0[54];
    v27 = v20;
    v28 = v21;
LABEL_15:

    return sub_1012FB4E8(v27, v28, v26);
  }

  v29 = v0[77];
  v70 = v0[76];
  v30 = v0[75];
  v49 = v0[73];
  v50 = v0[74];
  v51 = v0[72];
  v64 = v0[71];
  v55 = v0[70];
  v56 = v0[69];
  v53 = v0[68];
  v54 = v0[67];
  v66 = v0[66];
  v68 = v0[65];
  v57 = v0[63];
  v67 = v0[62];
  v69 = v0[61];
  v61 = v0[60];
  v62 = v0[59];
  v58 = v0[58];
  v59 = v0[57];
  v60 = v0[56];
  sub_100006370(0, &qword_101A33EB0);
  v0[51] = _swiftEmptyArrayStorage;
  sub_1012FE520(&qword_101A33EB8, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_1005B981C(&qword_101A33EC0);
  sub_1000067A8(&qword_101A33EC8, &qword_101A33EC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v63 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v70 + 8))(v29, v30);
  swift_getObjectType();
  static DispatchTime.now()();
  type metadata accessor for CRLRealTimeMessengerConfiguration();
  DispatchTime.advanced(by:)();
  v52 = *(v51 + 8);
  v52(v49, v64);
  (*(v53 + 104))(v55, enum case for DispatchTimeInterval.never(_:), v54);
  *v56 = 0;
  v31 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v32 = type metadata accessor for DispatchTimeInterval();
  (*(*(v32 - 8) + 104))(v56, v31, v32);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v33 = *(v53 + 8);
  v33(v56, v54);
  v33(v55, v54);
  v52(v50, v64);
  v65 = v21[1];
  swift_unknownObjectRetain();
  v65(v66);
  static DispatchQoS.userInitiated.getter();
  v34 = swift_allocObject();
  swift_weakInit();
  (*(v57 + 16))(v68, v66, v67);
  v35 = (*(v57 + 80) + 24) & ~*(v57 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  (*(v57 + 32))(v36 + v35, v68, v67);
  v0[43] = sub_1012FE568;
  v0[44] = v36;
  v0[39] = _NSConcreteStackBlock;
  v0[40] = *"";
  v0[41] = sub_100007638;
  v0[42] = &unk_1018BC2B8;
  v37 = _Block_copy(v0 + 39);

  sub_1012FB410();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v37);
  (*(v59 + 8))(v58, v60);
  (*(v61 + 8))(v69, v62);

  type metadata accessor for CRLChunkedMessageBufferWrapper();
  v38 = swift_allocObject();
  v38[2] = v20;
  v38[3] = v21;
  v38[4] = v63;
  swift_unknownObjectRetain();

  (v65)(v22, v21);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v4;
  *v4 = 0x8000000000000000;
  sub_100A9D4C8(v38, v68, isUniquelyReferenced_nonNull_native);
  v40 = *(v57 + 8);
  v40(v68, v67);
  *v4 = v71;
  swift_endAccess();
  OS_dispatch_source.resume()();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v40(v66, v67);
LABEL_19:

  v48 = v0[1];

  return v48();
}

uint64_t sub_1012FA1FC()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  v3 = *(v2 + 440);
  swift_unknownObjectRelease();
  if (v0)
  {
    v4 = sub_1012FA658;
  }

  else
  {
    v4 = sub_1012FA344;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1012FA344()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1012FA438()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  v3 = *(v2 + 440);
  if (v0)
  {
    v4 = sub_1012FAB74;
  }

  else
  {
    v4 = sub_1012FA564;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1012FA564()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1012FA658()
{

  *(v0 + 416) = *(v0 + 680);
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {

    if (*(v0 + 712) > 1u)
    {
      if (*(v0 + 712) == 2)
      {
        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        v9 = *(v0 + 424);
        v10 = static OS_os_log.realTimeSync;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146BDE0;
        v12 = UUID.uuidString.getter();
        v14 = v13;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v12;
        *(inited + 40) = v14;
        v15 = *(v9 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index);
        *(inited + 96) = &type metadata for UInt16;
        *(inited + 104) = &protocol witness table for UInt16;
        *(inited + 72) = v15;
        v16 = static os_log_type_t.error.getter();
        v17 = "Cannot append a real-time message chunk with invalid encryption state to the buffer. Chunk chainID %@, chunk index %d";
        v18 = v10;
        v19 = 117;
      }

      else
      {
        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        v22 = *(v0 + 424);
        v23 = static OS_os_log.realTimeSync;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146BDE0;
        v24 = UUID.uuidString.getter();
        v26 = v25;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v24;
        *(inited + 40) = v26;
        v27 = *(v22 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index);
        *(inited + 96) = &type metadata for UInt16;
        *(inited + 104) = &protocol witness table for UInt16;
        *(inited + 72) = v27;
        v16 = static os_log_type_t.default.getter();
        v17 = "Cannot append an out of order real-time message chunk to the buffer. This message will be dropped. Chunk chainID %@, chunk index %d";
        v18 = v23;
        v19 = 131;
      }

      sub_100005404(v18, &_mh_execute_header, v16, v17, v19, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
    }

    else if (*(v0 + 712))
    {
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v20 = static OS_os_log.realTimeSync;
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v21, "Attempting to append a real-time message chunk to an already complete buffer. This is a logic error", 99, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v1 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_10146C6B0;
      v3 = UUID.uuidString.getter();
      v5 = v4;
      *(v2 + 56) = &type metadata for String;
      *(v2 + 64) = sub_1000053B0();
      *(v2 + 32) = v3;
      *(v2 + 40) = v5;
      v6 = static os_log_type_t.error.getter();
      sub_100005404(v1, &_mh_execute_header, v6, "Encountered a logic error. Trying to append a chunked message to buffer with a different identifier. Chunk chainID %@", 117, 2, v2);
      swift_setDeallocating();
      sub_100005070(v2 + 32);
    }
  }

  else
  {

    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v7 = static OS_os_log.realTimeSync;
    v8 = static os_log_type_t.error.getter();
    sub_100005404(v7, &_mh_execute_header, v8, "Encountered an error while handling a real-time chunked message", 63, 2, _swiftEmptyArrayStorage);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1012FAB74()
{
  swift_unknownObjectRelease();
  *(v0 + 416) = *(v0 + 704);
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {

    if (*(v0 + 712) > 1u)
    {
      if (*(v0 + 712) == 2)
      {
        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        v9 = *(v0 + 424);
        v10 = static OS_os_log.realTimeSync;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146BDE0;
        v12 = UUID.uuidString.getter();
        v14 = v13;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v12;
        *(inited + 40) = v14;
        v15 = *(v9 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index);
        *(inited + 96) = &type metadata for UInt16;
        *(inited + 104) = &protocol witness table for UInt16;
        *(inited + 72) = v15;
        v16 = static os_log_type_t.error.getter();
        v17 = "Cannot append a real-time message chunk with invalid encryption state to the buffer. Chunk chainID %@, chunk index %d";
        v18 = v10;
        v19 = 117;
      }

      else
      {
        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        v22 = *(v0 + 424);
        v23 = static OS_os_log.realTimeSync;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146BDE0;
        v24 = UUID.uuidString.getter();
        v26 = v25;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v24;
        *(inited + 40) = v26;
        v27 = *(v22 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index);
        *(inited + 96) = &type metadata for UInt16;
        *(inited + 104) = &protocol witness table for UInt16;
        *(inited + 72) = v27;
        v16 = static os_log_type_t.default.getter();
        v17 = "Cannot append an out of order real-time message chunk to the buffer. This message will be dropped. Chunk chainID %@, chunk index %d";
        v18 = v23;
        v19 = 131;
      }

      sub_100005404(v18, &_mh_execute_header, v16, v17, v19, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
    }

    else if (*(v0 + 712))
    {
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v20 = static OS_os_log.realTimeSync;
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v21, "Attempting to append a real-time message chunk to an already complete buffer. This is a logic error", 99, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v1 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_10146C6B0;
      v3 = UUID.uuidString.getter();
      v5 = v4;
      *(v2 + 56) = &type metadata for String;
      *(v2 + 64) = sub_1000053B0();
      *(v2 + 32) = v3;
      *(v2 + 40) = v5;
      v6 = static os_log_type_t.error.getter();
      sub_100005404(v1, &_mh_execute_header, v6, "Encountered a logic error. Trying to append a chunked message to buffer with a different identifier. Chunk chainID %@", 117, 2, v2);
      swift_setDeallocating();
      sub_100005070(v2 + 32);
    }
  }

  else
  {

    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v7 = static OS_os_log.realTimeSync;
    v8 = static os_log_type_t.error.getter();
    sub_100005404(v7, &_mh_execute_header, v8, "Encountered an error while handling a real-time chunked message", 63, 2, _swiftEmptyArrayStorage);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1012FB090(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
    v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = v10;
    (*(v4 + 32))(&v13[v12], &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    sub_10064191C(0, 0, v8, &unk_1014DDF58, v13);
  }

  return result;
}

uint64_t sub_1012FB290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = type metadata accessor for UUID();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1012FB354, a4, 0);
}

uint64_t sub_1012FB354()
{
  v1 = v0[9];
  (*(v0[8] + 16))(v1, v0[6], v0[7]);
  swift_beginAccess();
  sub_100BC2FF0(0, v1);
  swift_endAccess();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1012FB410()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1012FE520(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_1000067A8(&qword_1019F4D20, &unk_1019FF400);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1012FB4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[41] = a3;
  v4[42] = v3;
  v4[39] = a1;
  v4[40] = a2;
  v5 = type metadata accessor for UUID();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();

  return _swift_task_switch(sub_1012FB5B8, v3, 0);
}

uint64_t sub_1012FB5B8()
{
  v60 = v0;
  v1 = v0[40];
  ObjectType = swift_getObjectType();
  if (((*(v1 + 16))(ObjectType, v1) & 1) == 0)
  {
    v55 = objc_opt_self();
    v2 = [v55 _atomicIncrementAssertCount];
    v59 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v59);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 292;
    v14 = v59;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Received an incomplete buffer", 29, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v55 handleFailureInFunction:v21 file:v22 lineNumber:292 isFatal:0 format:v23 args:v20];
  }

  v24 = v0[42];
  v25 = v0[40];
  v26 = (*(v25 + 48))(ObjectType, v25);
  v28 = v27;
  v54 = v26;
  v0[47] = v26;
  v0[48] = v27;
  v53 = *(v25 + 8);
  v53(ObjectType, v25);
  v29 = OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation_chunkedMessageBufferWrappers;
  swift_beginAccess();
  v56 = v28;
  if (*(*(v24 + v29) + 16))
  {
    v30 = v0[46];

    sub_10003E994(v30);
    if (v31)
    {
      v32 = v0[46];
      v33 = v0[43];
      v34 = *(v0[44] + 8);

      v34(v32, v33);

      swift_unknownObjectRetain();

      swift_getObjectType();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
      goto LABEL_10;
    }
  }

  (*(v0[44] + 8))(v0[46], v0[43]);
LABEL_10:
  v35 = v0[45];
  v36 = v0[42];
  v37 = v0[40];
  v53(ObjectType, v37);
  swift_beginAccess();
  sub_100BC2FF0(0, v35);
  swift_endAccess();
  v38 = (*(v37 + 24))(ObjectType, v37);
  v39 = *(v36 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__coder);
  if (v38)
  {
    type metadata accessor for CRLEncryptedRealTimeMessage();
    if (*(v39 + 16) == 1)
    {
      sub_100024E98(v54, v56);
      v40 = sub_1012CD1E8(v54, v56);
    }

    else
    {
      sub_1012FE520(&qword_101A07438, type metadata accessor for CRLEncryptedRealTimeMessage);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v40 = v0[38];
    }

    v0[49] = v40;
    v42 = v40;
    v43 = swift_task_alloc();
    v0[50] = v43;
    *v43 = v0;
    v43[1] = sub_1012FBEAC;
    v44 = v0[41];

    return sub_1012F84A8(v42, v44);
  }

  else
  {
    type metadata accessor for CRLRealTimeMessage();
    if (*(v39 + 16) == 1)
    {
      sub_100024E98(v54, v56);
      v41 = sub_100B8E490(v54, v56);
    }

    else
    {
      sub_1012FE520(&unk_101A33EA0, type metadata accessor for CRLRealTimeMessage);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v41 = v0[37];
    }

    v0[51] = v41;
    v46 = v0[42] + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation_helper;
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[52] = Strong;
    if (Strong)
    {
      v48 = *(v46 + 8);
      v49 = swift_getObjectType();
      v58 = (*(v48 + 32) + **(v48 + 32));
      v50 = swift_task_alloc();
      v0[53] = v50;
      *v50 = v0;
      v50[1] = sub_1012FC03C;
      v51 = v0[41];

      return v58(v41, v51, v49, v48);
    }

    else
    {

      sub_10002640C(v54, v56);

      v52 = v0[1];

      return v52();
    }
  }
}

uint64_t sub_1012FBEAC()
{
  v1 = *(*v0 + 336);

  return _swift_task_switch(sub_1012FBFBC, v1, 0);
}

uint64_t sub_1012FBFBC()
{
  sub_10002640C(v0[47], v0[48]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1012FC03C()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = *(v2 + 336);
    v4 = sub_1012FC1E8;
  }

  else
  {
    v5 = *(v2 + 336);
    swift_unknownObjectRelease();
    v4 = sub_1012FC164;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1012FC164()
{
  v1 = v0[47];
  v2 = v0[48];

  sub_10002640C(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1012FC1E8()
{
  v2 = v0[47];
  v1 = v0[48];

  sub_10002640C(v2, v1);
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1012FC27C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_1012FC29C, v1, 0);
}

uint64_t sub_1012FC29C()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__coder);
  v0[2] = v0[3];
  if (*(v1 + 16) == 1)
  {
    v2 = sub_100B8D4B0();
  }

  else
  {
    type metadata accessor for CRLRealTimeMessage();
    sub_1012FE520(&unk_101A33E90, type metadata accessor for CRLRealTimeMessage);
    v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  }

  v0[5] = v3;
  v0[6] = v2;
  v4 = v2;
  v5 = v3;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1012FC41C;

  return sub_1007B23E4(v4, v5);
}

uint64_t sub_1012FC41C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[8] = a1;
  v5[9] = a2;
  v5[10] = v2;

  v6 = v4[4];
  if (v2)
  {
    v7 = sub_1012FC6AC;
  }

  else
  {
    v7 = sub_1012FC554;
  }

  return _swift_task_switch(v7, v6, 0);
}

void *sub_1012FC554()
{
  v2 = v0[8];
  v1 = v0[9];
  type metadata accessor for CRLEncryptedRealTimeMessage();
  result = swift_allocObject();
  v4 = result;
  v0[11] = result;
  result[2] = 0;
  result[3] = v2;
  result[4] = v1;
  v5 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    v6 = 0;
    if (v5 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v2 + 16);
    v7 = *(v2 + 24);
    v9 = __OFSUB__(v7, v8);
    v6 = v7 - v8;
    if (!v9)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v1);
    goto LABEL_10;
  }

  LODWORD(v6) = HIDWORD(v2) - v2;
  if (__OFSUB__(HIDWORD(v2), v2))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v6 = v6;
LABEL_10:
  if (__OFADD__(v6, 24))
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = v0[4] + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__configuration;
  v11 = *(v10 + *(type metadata accessor for CRLRealTimeMessengerConfiguration() + 20)) < v6 + 24;
  sub_100024E98(v2, v1);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_1012FC710;

  return sub_1012FD3FC(v4, v11);
}

uint64_t sub_1012FC6AC()
{
  sub_10002640C(v0[6], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1012FC710()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1012FC8C8;
  }

  else
  {
    v4 = sub_1012FC83C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1012FC83C()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  sub_10002640C(v1, v2);
  sub_10002640C(v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1012FC8C8()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  sub_10002640C(v1, v2);
  sub_10002640C(v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1012FC954(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return _swift_task_switch(sub_1012FC978, v2, 0);
}

uint64_t sub_1012FC978()
{
  v1 = *(v0 + 32);
  if ((*(v0 + 144) & 1) == 0)
  {
    v15 = v1 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation_helper;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 40) = Strong;
    if (Strong)
    {
      v17 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      v42 = (*(v17 + 8) + **(v17 + 8));
      v19 = swift_task_alloc();
      *(v0 + 48) = v19;
      *v19 = v0;
      v19[1] = sub_1012FCE88;
      v20 = *(v0 + 24);
      v21 = ObjectType;
      v22 = v17;
      v23 = v42;

      return v23(v20, v21, v22);
    }

LABEL_32:
    v30 = *(v0 + 8);
    goto LABEL_33;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__coder);
  *(v0 + 16) = *(v0 + 24);
  if (*(v2 + 16) == 1)
  {
    v3 = sub_100B8D4B0();
  }

  else
  {
    type metadata accessor for CRLRealTimeMessage();
    sub_1012FE520(&unk_101A33E90, type metadata accessor for CRLRealTimeMessage);
    v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  }

  v5 = *(v0 + 32);
  *(v0 + 64) = v4;
  *(v0 + 72) = v3;
  v6 = v3;
  v7 = v5 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__configuration;
  v8 = v4;
  v9 = type metadata accessor for CRLRealTimeMessengerConfiguration();
  v10 = *(v7 + *(v9 + 20));
  v11 = *(v7 + *(v9 + 24));
  v12 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    v13 = 0;
    v14 = v6;
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v26 = *(v6 + 16);
    v25 = *(v6 + 24);
    v27 = __OFSUB__(v25, v26);
    v13 = v25 - v26;
    if (!v27)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(v8);
    v14 = v6;
    goto LABEL_18;
  }

  v14 = v6;
  LODWORD(v13) = HIDWORD(v6) - v6;
  if (__OFSUB__(HIDWORD(v6), v6))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v13 = v13;
LABEL_18:
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v10 * v11 >= v13)
  {
    v29 = sub_1009F9CD0(v14, v8, 0, v10);
    *(v0 + 80) = v29;
    if (!(v29 >> 62))
    {
      v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 88) = v31;
      if (v31)
      {
        goto LABEL_23;
      }

LABEL_31:
      v36 = *(v0 + 72);
      v37 = *(v0 + 64);

      sub_10002640C(v36, v37);
      goto LABEL_32;
    }

LABEL_43:
    v41 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 88) = v41;
    if (v41)
    {
LABEL_23:
      v32 = 0;
      *(v0 + 96) = OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation_helper;
      while (1)
      {
        v33 = *(v0 + 80);
        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v32 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v34 = *(v33 + 8 * v32 + 32);
        }

        *(v0 + 104) = v34;
        *(v0 + 112) = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        v35 = swift_unknownObjectWeakLoadStrong();
        *(v0 + 120) = v35;
        if (v35)
        {
          break;
        }

        v32 = *(v0 + 112);
        if (v32 == *(v0 + 88))
        {
          goto LABEL_31;
        }
      }

      v38 = *(*(v0 + 32) + *(v0 + 96) + 8);
      v39 = swift_getObjectType();
      v43 = (*(v38 + 24) + **(v38 + 24));
      v40 = swift_task_alloc();
      *(v0 + 128) = v40;
      *v40 = v0;
      v40[1] = sub_1012FCFC4;
      v20 = v34;
      v21 = v39;
      v22 = v38;
      v23 = v43;

      return v23(v20, v21, v22);
    }

    goto LABEL_31;
  }

  sub_1009F9FB8();
  swift_allocError();
  *v28 = 2;
  swift_willThrow();
  sub_10002640C(*(v0 + 72), *(v0 + 64));
  v30 = *(v0 + 8);
LABEL_33:

  return v30();
}

uint64_t sub_1012FCE88()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[4];

    return _swift_task_switch(sub_1012FD398, v3, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1012FCFC4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);

    swift_unknownObjectRelease();
    v4 = sub_1012FD32C;
  }

  else
  {
    v3 = *(v2 + 32);
    swift_unknownObjectRelease();
    v4 = sub_1012FD114;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1012FD114()
{
  while (1)
  {

    v2 = v0[14];
    if (v2 == v0[11])
    {
      break;
    }

    v3 = v0[10];
    if ((v3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v4 = result;
    }

    else
    {
      if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v4 = *(v3 + 8 * v2 + 32);
    }

    v0[13] = v4;
    v0[14] = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {
      v9 = *(v0[4] + v0[12] + 8);
      ObjectType = swift_getObjectType();
      v12 = (*(v9 + 24) + **(v9 + 24));
      v11 = swift_task_alloc();
      v0[16] = v11;
      *v11 = v0;
      v11[1] = sub_1012FCFC4;

      return v12(v4, ObjectType, v9);
    }
  }

  v6 = v0[9];
  v7 = v0[8];

  sub_10002640C(v6, v7);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1012FD32C()
{

  sub_10002640C(v0[9], v0[8]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1012FD398()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1012FD3FC(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return _swift_task_switch(sub_1012FD420, v2, 0);
}

uint64_t sub_1012FD420()
{
  v1 = *(v0 + 32);
  if ((*(v0 + 144) & 1) == 0)
  {
    v15 = v1 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation_helper;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 40) = Strong;
    if (Strong)
    {
      v17 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      v42 = (*(v17 + 16) + **(v17 + 16));
      v19 = swift_task_alloc();
      *(v0 + 48) = v19;
      *v19 = v0;
      v19[1] = sub_1012FD930;
      v20 = *(v0 + 24);
      v21 = ObjectType;
      v22 = v17;
      v23 = v42;

      return v23(v20, v21, v22);
    }

LABEL_32:
    v30 = *(v0 + 8);
    goto LABEL_33;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__coder);
  *(v0 + 16) = *(v0 + 24);
  if (*(v2 + 16) == 1)
  {
    v3 = sub_1012CC86C();
  }

  else
  {
    type metadata accessor for CRLEncryptedRealTimeMessage();
    sub_1012FE520(&unk_101A33E80, type metadata accessor for CRLEncryptedRealTimeMessage);
    v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  }

  v5 = *(v0 + 32);
  *(v0 + 64) = v4;
  *(v0 + 72) = v3;
  v6 = v3;
  v7 = v5 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__configuration;
  v8 = v4;
  v9 = type metadata accessor for CRLRealTimeMessengerConfiguration();
  v10 = *(v7 + *(v9 + 20));
  v11 = *(v7 + *(v9 + 24));
  v12 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    v13 = 0;
    v14 = v6;
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v26 = *(v6 + 16);
    v25 = *(v6 + 24);
    v27 = __OFSUB__(v25, v26);
    v13 = v25 - v26;
    if (!v27)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(v8);
    v14 = v6;
    goto LABEL_18;
  }

  v14 = v6;
  LODWORD(v13) = HIDWORD(v6) - v6;
  if (__OFSUB__(HIDWORD(v6), v6))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v13 = v13;
LABEL_18:
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v10 * v11 >= v13)
  {
    v29 = sub_1009F9CD0(v14, v8, 1, v10);
    *(v0 + 80) = v29;
    if (!(v29 >> 62))
    {
      v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 88) = v31;
      if (v31)
      {
        goto LABEL_23;
      }

LABEL_31:
      v36 = *(v0 + 72);
      v37 = *(v0 + 64);

      sub_10002640C(v36, v37);
      goto LABEL_32;
    }

LABEL_43:
    v41 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 88) = v41;
    if (v41)
    {
LABEL_23:
      v32 = 0;
      *(v0 + 96) = OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation_helper;
      while (1)
      {
        v33 = *(v0 + 80);
        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v32 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v34 = *(v33 + 8 * v32 + 32);
        }

        *(v0 + 104) = v34;
        *(v0 + 112) = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        v35 = swift_unknownObjectWeakLoadStrong();
        *(v0 + 120) = v35;
        if (v35)
        {
          break;
        }

        v32 = *(v0 + 112);
        if (v32 == *(v0 + 88))
        {
          goto LABEL_31;
        }
      }

      v38 = *(*(v0 + 32) + *(v0 + 96) + 8);
      v39 = swift_getObjectType();
      v43 = (*(v38 + 24) + **(v38 + 24));
      v40 = swift_task_alloc();
      *(v0 + 128) = v40;
      *v40 = v0;
      v40[1] = sub_1012FDA6C;
      v20 = v34;
      v21 = v39;
      v22 = v38;
      v23 = v43;

      return v23(v20, v21, v22);
    }

    goto LABEL_31;
  }

  sub_1009F9FB8();
  swift_allocError();
  *v28 = 2;
  swift_willThrow();
  sub_10002640C(*(v0 + 72), *(v0 + 64));
  v30 = *(v0 + 8);
LABEL_33:

  return v30();
}

uint64_t sub_1012FD930()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[4];

    return _swift_task_switch(sub_1012FE788, v3, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1012FDA6C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);

    swift_unknownObjectRelease();
    v4 = sub_1012FE784;
  }

  else
  {
    v3 = *(v2 + 32);
    swift_unknownObjectRelease();
    v4 = sub_1012FDBBC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1012FDBBC()
{
  while (1)
  {

    v2 = v0[14];
    if (v2 == v0[11])
    {
      break;
    }

    v3 = v0[10];
    if ((v3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v4 = result;
    }

    else
    {
      if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v4 = *(v3 + 8 * v2 + 32);
    }

    v0[13] = v4;
    v0[14] = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {
      v9 = *(v0[4] + v0[12] + 8);
      ObjectType = swift_getObjectType();
      v12 = (*(v9 + 24) + **(v9 + 24));
      v11 = swift_task_alloc();
      v0[16] = v11;
      *v11 = v0;
      v11[1] = sub_1012FDA6C;

      return v12(v4, ObjectType, v9);
    }
  }

  v6 = v0[9];
  v7 = v0[8];

  sub_10002640C(v6, v7);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1012FDDD4()
{
  sub_1012FE6C4(v0 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__configuration);
  sub_1000C1024(v0 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation_helper);

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for CRLRealTimeMessengerImplementation()
{
  result = qword_101A33B68;
  if (!qword_101A33B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1012FDEA8()
{
  result = type metadata accessor for CRLRealTimeMessengerConfiguration();
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

uint64_t sub_1012FDF98(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1012FDFB8, v3, 0);
}

uint64_t sub_1012FDFB8()
{
  v1 = v0[3];
  v2 = sub_100B8D408();
  v3 = v1 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__configuration;
  v4 = *(v3 + *(type metadata accessor for CRLRealTimeMessengerConfiguration() + 20)) < v2;
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1012FE080;
  v6 = v0[2];

  return sub_1012FC954(v6, v4);
}

uint64_t sub_1012FE080()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1012FE174(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_1012FC27C(a1);
}

uint64_t sub_1012FE20C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1012FE270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24[1] = a4;
  v12 = type metadata accessor for GroupSessionMessenger.DeliveryMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLRealTimeMessengerImplementation();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  v17 = v16 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation_helper;
  *(v16 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation_helper + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation_chunkedMessageBufferWrappers) = _swiftEmptyDictionarySingleton;
  sub_1012FE720(a1, v16 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__configuration);
  v18 = (v16 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation_dataEncryptor);
  *v18 = a2;
  v18[1] = a9;
  *(v17 + 8) = a10;
  swift_unknownObjectWeakAssign();
  (*(v13 + 16))(v15, a1, v12);
  v19 = (*(v13 + 88))(v15, v12);
  if (v19 == enum case for GroupSessionMessenger.DeliveryMode.reliable(_:))
  {
    v20 = 0;
LABEL_5:
    swift_unknownObjectRelease();
    type metadata accessor for CRLRealTimeMessengerImplementation.RealTimeMessageCoder();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    *(v21 + 24) = PropertyListEncoder.init()();

    dispatch thunk of PropertyListEncoder.outputFormat.setter();

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    v22 = PropertyListDecoder.init()();
    swift_unknownObjectRelease();
    sub_1012FE6C4(a1);
    *(v21 + 32) = v22;
    *(v16 + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__coder) = v21;
    return v16;
  }

  if (v19 == enum case for GroupSessionMessenger.DeliveryMode.unreliable(_:))
  {
    v20 = 1;
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1012FE520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1012FE568()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1012FB090(v2, v3);
}

uint64_t sub_1012FE5CC(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_1012FB290(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1012FE6C4(uint64_t a1)
{
  v2 = type metadata accessor for CRLRealTimeMessengerConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1012FE720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLRealTimeMessengerConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1012FE78C(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UUID();
  v20[2] = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  v11 = *(a1 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v12 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v13 = *(a1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v14 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v13 + v14, v4);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v4, type metadata accessor for CRLBoardCRDTData);
  v15 = (*(a1 + v12) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v16 = *v15;
  v17 = v15[1];

  sub_10084BD4C(v6, v16, v17, v10);
  v22 = v11;
  v23 = v10;
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = v24;
  sub_10003D45C(v10, type metadata accessor for CRLBoardIdentifier);
  return v18;
}

uint64_t sub_1012FEC84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v14 = *(a2 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v15 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v14 + v15, v6);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v6, type metadata accessor for CRLBoardCRDTData);
  v16 = (*(a2 + v13) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v18 = *v16;
  v17 = v16[1];

  sub_10084BD4C(v9, v18, v17, v12);
  sub_100E1A4E4(a1, v12, 0, 0);
  return sub_10003D45C(v12, type metadata accessor for CRLBoardIdentifier);
}

id sub_1012FEE90(unint64_t a1, unint64_t a2, void *a3)
{
  if (qword_1019F22A0 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.upgrade;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v8 = sub_100020E14(a1);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(inited + 56) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 64) = v12;
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v13 = sub_100020E14(a2);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v12;
  *(inited + 72) = v14;
  *(inited + 80) = v16;
  v17 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v17, "Upgrading from version [%{public}@] to [%{public}@]", 51, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  result = swift_arrayDestroy();
  if (a1 < 0x3000400000002)
  {
    return [a3 refetchMissingStrokes];
  }

  return result;
}

uint64_t sub_1012FF064()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - v3;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F22A0 != -1)
  {
    swift_once();
  }

  v30 = static OS_os_log.upgrade;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v15 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v16 = *&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v16 + v17, v6);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v6, type metadata accessor for CRLBoardCRDTData);
  v18 = (*&v1[v15] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v19 = *v18;
  v20 = v18[1];

  sub_10084BD4C(v10, v19, v20, v13);
  (*(v8 + 16))(v10, v13, v7);
  sub_10003D45C(v13, type metadata accessor for CRLBoardIdentifier);
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v8 + 8))(v10, v7);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v21;
  *(inited + 40) = v23;
  v24 = static os_log_type_t.default.getter();
  sub_100005404(v30, &_mh_execute_header, v24, "Running upgrade code for rdar://142838514 for board: [%{public}@]", 65, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v25 = type metadata accessor for TaskPriority();
  v26 = v31;
  (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v1;
  v28 = v1;
  sub_100796D54(0, 0, v26, &unk_1014DDF70, v27);
}

uint64_t sub_1012FF464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  type metadata accessor for CRLBoardCRDTData(0);
  v4[11] = swift_task_alloc();
  type metadata accessor for UUID();
  v4[12] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1012FF54C, 0, 0);
}

uint64_t sub_1012FF54C()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v6 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v7 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v6 + v7, v3);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v3, type metadata accessor for CRLBoardCRDTData);
  v8 = (*(v4 + v5) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v9 = *v8;
  v10 = v8[1];

  sub_10084BD4C(v2, v9, v10, v1);
  v11 = sub_100EFF9E4(v1);
  v0[14] = v11;
  sub_10003D45C(v1, type metadata accessor for CRLBoardIdentifier);
  v12 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v0[15] = v12;
  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = v11;
  v14 = v11;
  sub_1005BFFC4(inited);
  v16 = v15;
  v0[16] = v15;
  swift_setDeallocating();
  swift_arrayDestroy();
  v17 = swift_task_alloc();
  v0[17] = v17;
  v17[2] = v12;
  v17[3] = v16;
  v17[4] = 0x3000200000000;
  v18 = swift_task_alloc();
  v0[18] = v18;
  *v18 = v0;
  v18[1] = sub_1012FF7B4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v18, 0, 0, 0xD00000000000001DLL, 0x80000001015A8E80, sub_100EA4C28, v17, &type metadata for () + 8);
}

uint64_t sub_1012FF7B4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1012FF994;
  }

  else
  {

    v2 = sub_1012FF8D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1012FF8D8()
{
  if (*(*(v0 + 120) + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_syncHelper))
  {
    v1 = *(v0 + 112);

    sub_10112CC78(v1);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1012FF994()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1012FFA7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_1012FF464(a1, v4, v5, v6);
}

uint64_t sub_1012FFB5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1012FFBB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1012FFC9C(void *a1, uint64_t *a2)
{
  if (a2[1])
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = a1[1];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
    v5 = a1[1];
    if (v5)
    {
LABEL_3:
      v6 = v5;
      if (v3 != *a1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v6 = 0xE000000000000000;
  if (v3)
  {
LABEL_9:
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_10;
  }

LABEL_7:
  if (v4 != v6)
  {
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7 & 1;
}

uint64_t sub_1012FFD64@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v62 - v7;
  v9 = _s5BoardV13ShareMetadataVMa(0);
  v10 = *(v9 - 1);
  v11 = __chkstk_darwin(v9);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 20);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v73 = v16 + 56;
  v17(&v13[v14], 1, 1, v15);
  if (a2)
  {
    v69 = v14;
    v70 = v8;
    v71 = v10;
    v72 = a3;
    v68 = v15;
    if (a1)
    {
      v18 = a2;
      v19 = a1;
    }

    else
    {
      v21 = [a2 owner];
      v22 = objc_allocWithZone(type metadata accessor for CRLCollaborationParticipant(0));
      v19 = sub_1007D4760(v21, 1);
    }

    v67 = a1;
    v23 = [a2 participants];
    sub_101304374();
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100CE9894(v24);
    v26 = v25;
    v28 = v27;

    if (v28)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0;
    }

    v30 = 0xE000000000000000;
    if (v28)
    {
      v30 = v28;
    }

    v31 = &v13[v9[6]];
    *v31 = v29;
    *(v31 + 1) = v30;
    v32 = sub_1007D7988();
    v64 = v33;
    v65 = v32;
    v34 = OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant;
    v35 = [*&v19[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant] userIdentity];
    v36 = [v35 lookupInfo];

    if (v36)
    {
      v37 = [v36 emailAddress];

      if (v37)
      {
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v38;
      }

      else
      {
        v63 = 0;
        v36 = 0;
      }
    }

    else
    {
      v63 = 0;
    }

    v66 = v34;
    v39 = [*&v19[v34] userIdentity];
    v40 = [v39 lookupInfo];

    v41 = v17;
    if (v40 && (v42 = [v40 phoneNumber], v40, v42))
    {
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = sub_1007D6C84();
    v47 = &v13[v9[8]];
    v48 = v64;
    *v47 = v65;
    *(v47 + 1) = v48;
    *(v47 + 2) = v63;
    *(v47 + 3) = v36;
    *(v47 + 4) = v43;
    *(v47 + 5) = v45;
    v47[48] = v46 & 1;
    v49 = [a2 currentUserParticipant];
    v50 = v70;
    if (v49)
    {
      v51 = v49;
      v52 = [v49 permission];
    }

    else
    {
      v52 = [a2 publicPermission];
    }

    v53 = v71;
    *v13 = v52 != 2;
    v54 = *&v19[v66];

    v55 = [v54 role];
    *&v13[v9[7]] = v55;
    v56 = [a2 URL];
    if (v56)
    {
      v57 = v56;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v58 = 0;
      v59 = v57;
    }

    else
    {
      v58 = 1;
      v59 = v67;
    }

    v60 = v68;

    v41(v50, v58, 1, v60);
    sub_10002C638(v50, &v13[v69], &unk_1019F33C0);
    v61 = v72;
    sub_101304980(v13, v72, _s5BoardV13ShareMetadataVMa);
    (*(v53 + 56))(v61, 0, 1, v9);
    return sub_1013042AC(v13, _s5BoardV13ShareMetadataVMa);
  }

  else
  {

    sub_10000CAAC(&v13[v14], &unk_1019F33C0);
    return (*(v10 + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_1013002BC(void *a1)
{
  v3 = sub_1005B981C(&qword_101A340A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_1013048D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void sub_10130047C()
{
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v0 + 24))
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (*(v0 + 40))
    {
      goto LABEL_4;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    goto LABEL_8;
  }

  Hasher._combine(_:)(0);
  if (!*(v0 + 24))
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v0 + 40))
  {
    goto LABEL_7;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_8:
  Hasher._combine(_:)(*(v0 + 48) & 1);
}

uint64_t sub_10130054C()
{
  v1 = 0x4E79616C70736964;
  v2 = 0x6D754E656E6F6870;
  if (*v0 != 2)
  {
    v2 = 0x666C65537369;
  }

  if (*v0)
  {
    v1 = 0x6464416C69616D65;
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

uint64_t sub_1013005DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1013044BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_101300604(uint64_t a1)
{
  v2 = sub_1013048D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101300640(uint64_t a1)
{
  v2 = sub_1013048D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10130067C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_101304628(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1013006E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10130302C(v5, v7) & 1;
}

BOOL sub_101300740(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  return (sub_10130302C(v5, v7) & 1) == 0;
}

BOOL sub_1013007A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return (sub_10130302C(v5, v7) & 1) == 0;
}

uint64_t sub_101300800(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1012FFC9C(v5, v7) & 1;
}

uint64_t sub_10130085C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_101302EF4(v5, v7) & 1;
}

Swift::Int sub_1013008B8()
{
  Hasher.init(_seed:)();
  sub_10130047C();
  return Hasher._finalize()();
}

Swift::Int sub_1013008FC()
{
  Hasher.init(_seed:)();
  sub_10130047C();
  return Hasher._finalize()();
}

uint64_t sub_10130093C(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A34080);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1013043C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = _s5BoardV13ShareMetadataVMa(0);
    LOBYTE(v16) = 1;
    type metadata accessor for URL();
    sub_101302EAC(&qword_101A0D988, &type metadata accessor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + *(v9 + 28));
    v21 = 3;
    type metadata accessor for ParticipantRole(0);
    sub_101302EAC(&qword_101A34088, type metadata accessor for ParticipantRole);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 32));
    v11 = v10[5];
    v12 = *(v10 + 48);
    v16 = *v10;
    v13 = *(v10 + 3);
    v17 = *(v10 + 1);
    v18 = v13;
    v19 = v11;
    v20 = v12;
    v21 = 4;
    sub_101304468();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_101300C4C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  Hasher._combine(_:)(*v0);
  v8 = _s5BoardV13ShareMetadataVMa(0);
  sub_10000BE14(&v0[v8[5]], v7, &unk_1019F33C0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1u);
    sub_101302EAC(&qword_101A00578, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  String.hash(into:)();
  Hasher._combine(_:)(*&v0[v8[7]]);
  v9 = &v0[v8[8]];
  v10 = *(v9 + 1);
  v11[0] = *v9;
  v11[1] = v10;
  v11[2] = *(v9 + 2);
  v12 = v9[48];
  sub_10130047C();
}

uint64_t sub_101300EA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_1005B981C(&qword_101A34060);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = _s5BoardV13ShareMetadataVMa(0);
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v13;
  v14 = v13[5];
  v15 = type metadata accessor for URL();
  v16 = *(*(v15 - 8) + 56);
  v33 = v14;
  v17 = v12;
  v16(&v12[v14], 1, 1, v15);
  v18 = a1[3];
  v34 = a1;
  sub_100020E58(a1, v18);
  sub_1013043C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v20 = v33;
    sub_100005070(v34);
    return sub_10000CAAC(&v12[v20], &unk_1019F33C0);
  }

  else
  {
    v19 = v30;
    LOBYTE(v35) = 0;
    *v12 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v35) = 1;
    sub_101302EAC(&qword_101A0D958, &type metadata accessor for URL);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = v32;
    sub_10002C638(v6, v17 + v33, &unk_1019F33C0);
    LOBYTE(v35) = 2;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = (v17 + v21[6]);
    *v23 = v22;
    v23[1] = v24;
    type metadata accessor for ParticipantRole(0);
    v39 = 3;
    sub_101302EAC(&qword_101A34070, type metadata accessor for ParticipantRole);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v17 + v21[7]) = v35;
    v39 = 4;
    sub_101304414();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(v9, v31);
    v25 = v38;
    v26 = v17 + v21[8];
    v27 = v36;
    *v26 = v35;
    *(v26 + 16) = v27;
    *(v26 + 32) = v37;
    *(v26 + 48) = v25;
    sub_101304980(v17, v29, _s5BoardV13ShareMetadataVMa);
    sub_100005070(v34);
    return sub_1013042AC(v17, _s5BoardV13ShareMetadataVMa);
  }
}

unint64_t sub_10130138C()
{
  v1 = *v0;
  v2 = 0x4C52556572616873;
  v3 = 0x7470697263736564;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_101301440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101304E70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_101301468(uint64_t a1)
{
  v2 = sub_1013043C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1013014A4(uint64_t a1)
{
  v2 = sub_1013043C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101301510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  if (*(a1 + v5 + 8))
  {
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
  }

  else
  {
    v8 = (a1 + *(a3 + 24));
    v6 = *v8;
    v7 = v8[1];
  }

  v9 = (a2 + v5);
  v10 = *(a2 + v5 + 8);
  if (v10)
  {
    v11 = *v9;
    v12 = v10;
  }

  else
  {
    v13 = (a2 + *(a3 + 24));
    v11 = *v13;
    v12 = v13[1];
  }

  if (v6 == v11 && v7 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

uint64_t sub_1013015F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  if (*(a2 + v5 + 8))
  {
    v6 = *(a2 + v5);
    v7 = *(a2 + v5 + 8);
  }

  else
  {
    v8 = (a2 + *(a3 + 24));
    v6 = *v8;
    v7 = v8[1];
  }

  v9 = (a1 + v5);
  v10 = *(a1 + v5 + 8);
  if (v10)
  {
    v11 = *v9;
    v12 = v10;
  }

  else
  {
    v13 = (a1 + *(a3 + 24));
    v11 = *v13;
    v12 = v13[1];
  }

  if (v6 == v11 && v7 == v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  return v15 & 1;
}

uint64_t sub_1013016D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  if (*(a1 + v5 + 8))
  {
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
  }

  else
  {
    v8 = (a1 + *(a3 + 24));
    v6 = *v8;
    v7 = v8[1];
  }

  v9 = (a2 + v5);
  v10 = *(a2 + v5 + 8);
  if (v10)
  {
    v11 = *v9;
    v12 = v10;
  }

  else
  {
    v13 = (a2 + *(a3 + 24));
    v11 = *v13;
    v12 = v13[1];
  }

  if (v6 == v11 && v7 == v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  return v15 & 1;
}

uint64_t sub_1013017BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  if (*(a2 + v5 + 8))
  {
    v6 = *(a2 + v5);
    v7 = *(a2 + v5 + 8);
  }

  else
  {
    v8 = (a2 + *(a3 + 24));
    v6 = *v8;
    v7 = v8[1];
  }

  v9 = (a1 + v5);
  v10 = *(a1 + v5 + 8);
  if (v10)
  {
    v11 = *v9;
    v12 = v10;
  }

  else
  {
    v13 = (a1 + *(a3 + 24));
    v11 = *v13;
    v12 = v13[1];
  }

  if (v6 == v11 && v7 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int sub_1013018A4()
{
  Hasher.init(_seed:)();
  sub_101300C4C();
  return Hasher._finalize()();
}

Swift::Int sub_1013018E8()
{
  Hasher.init(_seed:)();
  sub_101300C4C();
  return Hasher._finalize()();
}

unint64_t sub_101301924(char a1)
{
  result = 0x6564496472616F62;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x6E6F697461657263;
      break;
    case 4:
      result = 0x7974697669746361;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0x6C68676948736168;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x7261637369447369;
      break;
    case 10:
      result = 0x69726F7661467369;
      break;
    case 11:
      result = 0x617469766E497369;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0x7473626D6F547369;
      break;
    case 14:
      result = 0x707075736E557369;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0x74654D6572616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_101301B34(void *a1)
{
  v3 = sub_1005B981C(&qword_101A340C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100020E58(a1, a1[3]);
  sub_10130492C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = 0;
  type metadata accessor for CRLBoardIdentifier(0);
  sub_101302EAC(&qword_1019F4780, type metadata accessor for CRLBoardIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    _s5BoardVMa(0);
    v9 = 1;
    type metadata accessor for CRLFolderIdentifier(0);
    sub_101302EAC(&qword_101A019D8, type metadata accessor for CRLFolderIdentifier);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 3;
    type metadata accessor for Date();
    sub_101302EAC(&qword_101A19AD0, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 16;
    _s5BoardV13ShareMetadataVMa(0);
    sub_101302EAC(&qword_101A24BC8, _s5BoardV13ShareMetadataVMa);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_101302078@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v3 - 8);
  v46 = &v43 - v4;
  v5 = type metadata accessor for Date();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v43 - v8;
  v9 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v9 - 8);
  v51 = &v43 - v10;
  v53 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v53);
  v54 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_101A340B0);
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = _s5BoardVMa(0);
  __chkstk_darwin(v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 20);
  v60 = v19;
  v20 = type metadata accessor for CRLFolderIdentifier(0);
  (*(*(v20 - 8) + 56))(&v17[v19], 1, 1, v20);
  v21 = *(v15 + 80);
  v22 = _s5BoardV13ShareMetadataVMa(0);
  v23 = *(*(v22 - 8) + 56);
  v59 = v21;
  v23(&v17[v21], 1, 1, v22);
  sub_100020E58(a1, a1[3]);
  sub_10130492C();
  v57 = v14;
  v24 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v25 = v60;
  if (v24)
  {
    sub_100005070(a1);
    sub_10000CAAC(&v17[v25], &qword_1019F33E0);
    return sub_10000CAAC(&v17[v59], &qword_1019F33D0);
  }

  else
  {
    v26 = v51;
    v27 = v52;
    v43 = v22;
    v44 = v15;
    v45 = v17;
    v58 = a1;
    v61 = 0;
    sub_101302EAC(&qword_1019F4758, type metadata accessor for CRLBoardIdentifier);
    v28 = v54;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = v45;
    sub_10130430C(v28, v45, type metadata accessor for CRLBoardIdentifier);
    v61 = 1;
    sub_101302EAC(&qword_101A019C8, type metadata accessor for CRLFolderIdentifier);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10002C638(v26, v29 + v60, &qword_1019F33E0);
    v61 = 2;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v50;
    v32 = v44;
    v33 = (v29 + v44[6]);
    *v33 = v30;
    v33[1] = v34;
    v61 = 3;
    sub_101302EAC(&qword_101A19C70, &type metadata accessor for Date);
    v35 = v27;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = *(v49 + 32);
    v36(v29 + v32[7], v35, v31);
    v61 = 4;
    v37 = v48;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36(&v45[v32[8]], v37, v31);
    v61 = 5;
    v45[v32[9]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v61 = 6;
    v45[v32[10]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v61 = 7;
    v45[v44[11]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v61 = 8;
    v45[v44[12]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v61 = 9;
    v45[v44[13]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v61 = 10;
    v45[v44[14]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v61 = 11;
    v45[v44[15]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v61 = 12;
    v45[v44[16]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v61 = 13;
    v45[v44[17]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v61 = 14;
    v45[v44[18]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v61 = 15;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = &v45[v44[19]];
    *v39 = v38;
    v39[8] = v40 & 1;
    v61 = 16;
    sub_101302EAC(&qword_101A24BB8, _s5BoardV13ShareMetadataVMa);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v55 + 8))(v57, v56);
    v41 = v45;
    sub_10002C638(v46, &v45[v59], &qword_1019F33D0);
    sub_101304980(v41, v47, _s5BoardVMa);
    sub_100005070(v58);
    return sub_1013042AC(v41, _s5BoardVMa);
  }
}

uint64_t sub_101302B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101305034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_101302BC8(uint64_t a1)
{
  v2 = sub_10130492C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101302C04(uint64_t a1)
{
  v2 = sub_10130492C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_101302C74()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_101302EAC(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_101302D18()
{
  type metadata accessor for UUID();
  sub_101302EAC(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return String.hash(into:)();
}

Swift::Int sub_101302DB8()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_101302EAC(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_101302E58()
{
  result = qword_101A34050;
  if (!qword_101A34050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A34050);
  }

  return result;
}

uint64_t sub_101302EAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_101302EF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_24;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v3)
  {
    goto LABEL_24;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_24;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_24;
  }

  v15 = *(a1 + 40);
  v16 = *(a2 + 40);
  if (v15)
  {
    if (v16)
    {
      if (*(a1 + 32) == *(a2 + 32) && v15 == v16)
      {
        goto LABEL_22;
      }

      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if (v20)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  if (v16)
  {
    goto LABEL_24;
  }

LABEL_22:
  v21 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  return v21 & 1;
}

uint64_t sub_10130302C(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    v4 = v2;
    v5 = a2[1];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
    v5 = a2[1];
    if (v5)
    {
LABEL_3:
      v6 = v5;
      if (v3 != *a2)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v6 = 0xE000000000000000;
  if (v3)
  {
LABEL_9:
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_10;
  }

LABEL_7:
  if (v4 != v6)
  {
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7 & 1;
}

BOOL sub_1013030EC(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardV13ShareMetadataVMa(0);
  v65 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v7 - 8);
  v66 = &v58 - v8;
  v64 = sub_1005B981C(&qword_1019F33D8);
  __chkstk_darwin(v64);
  v10 = &v58 - v9;
  v11 = type metadata accessor for CRLFolderIdentifier(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v67 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v58 - v15;
  v17 = sub_1005B981C(&qword_1019F33E8);
  __chkstk_darwin(v17);
  v19 = &v58 - v18;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v20 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v62 = a1;
  v63 = a2;
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v60 = v4;
  v61 = v10;
  v59 = v6;
  v24 = _s5BoardVMa(0);
  v25 = v24[5];
  v26 = *(v17 + 48);
  v27 = v62;
  sub_10000BE14(v62 + v25, v19, &qword_1019F33E0);
  v28 = v63 + v25;
  v29 = v63;
  sub_10000BE14(v28, &v19[v26], &qword_1019F33E0);
  v30 = *(v12 + 48);
  if (v30(v19, 1, v11) == 1)
  {
    if (v30(&v19[v26], 1, v11) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_10000BE14(v19, v16, &qword_1019F33E0);
  if (v30(&v19[v26], 1, v11) == 1)
  {
    sub_1013042AC(v16, type metadata accessor for CRLFolderIdentifier);
LABEL_10:
    v31 = &qword_1019F33E8;
LABEL_35:
    v46 = v19;
LABEL_36:
    sub_10000CAAC(v46, v31);
    return 0;
  }

  v32 = v67;
  sub_10130430C(&v19[v26], v67, type metadata accessor for CRLFolderIdentifier);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v33 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20), v34 = *&v16[v33], v35 = *&v16[v33 + 8], v36 = (v32 + v33), v34 != *v36) || v35 != v36[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_1013042AC(v32, type metadata accessor for CRLFolderIdentifier);
    sub_1013042AC(v16, type metadata accessor for CRLFolderIdentifier);
    v31 = &qword_1019F33E0;
    goto LABEL_35;
  }

  sub_1013042AC(v32, type metadata accessor for CRLFolderIdentifier);
  sub_1013042AC(v16, type metadata accessor for CRLFolderIdentifier);
LABEL_16:
  sub_10000CAAC(v19, &qword_1019F33E0);
  v37 = v24[6];
  v38 = *(v27 + v37);
  v39 = *(v27 + v37 + 8);
  v40 = (v29 + v37);
  if ((v38 != *v40 || v39 != v40[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || *(v27 + v24[9]) != *(v29 + v24[9]) || *(v27 + v24[10]) != *(v29 + v24[10]) || *(v27 + v24[11]) != *(v29 + v24[11]) || *(v27 + v24[12]) != *(v29 + v24[12]) || *(v27 + v24[13]) != *(v29 + v24[13]) || *(v27 + v24[14]) != *(v29 + v24[14]) || *(v27 + v24[15]) != *(v29 + v24[15]) || *(v27 + v24[16]) != *(v29 + v24[16]) || *(v27 + v24[17]) != *(v29 + v24[17]) || *(v27 + v24[18]) != *(v29 + v24[18]))
  {
    return 0;
  }

  v41 = v24[19];
  v42 = (v62 + v41);
  v43 = *(v62 + v41 + 8);
  v44 = (v63 + v41);
  v45 = *(v63 + v41 + 8);
  if (v43)
  {
    if (!v45)
    {
      return 0;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  v48 = v24[20];
  v49 = *(v64 + 48);
  v50 = v61;
  sub_10000BE14(v62 + v48, v61, &qword_1019F33D0);
  sub_10000BE14(v63 + v48, v50 + v49, &qword_1019F33D0);
  v51 = *(v65 + 48);
  if (v51(v50, 1, v60) != 1)
  {
    v52 = v61;
    sub_10000BE14(v61, v66, &qword_1019F33D0);
    if (v51(v52 + v49, 1, v60) == 1)
    {
      sub_1013042AC(v66, _s5BoardV13ShareMetadataVMa);
      goto LABEL_46;
    }

    v53 = v61;
    v54 = &v61[v49];
    v55 = v59;
    sub_10130430C(v54, v59, _s5BoardV13ShareMetadataVMa);
    v56 = v66;
    v57 = sub_1013038D4(v66, v55);
    sub_1013042AC(v55, _s5BoardV13ShareMetadataVMa);
    sub_1013042AC(v56, _s5BoardV13ShareMetadataVMa);
    sub_10000CAAC(v53, &qword_1019F33D0);
    return (v57 & 1) != 0;
  }

  if (v51(&v61[v49], 1, v60) != 1)
  {
LABEL_46:
    v31 = &qword_1019F33D8;
    v46 = v61;
    goto LABEL_36;
  }

  sub_10000CAAC(v61, &qword_1019F33D0);
  return 1;
}

uint64_t sub_1013038D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_1005B981C(&unk_101A0B780);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_14;
  }

  v14 = _s5BoardV13ShareMetadataVMa(0);
  v15 = a1;
  v16 = a2;
  v36 = v14;
  v37 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_10000BE14(&v15[v17], v13, &unk_1019F33C0);
  v19 = &v16[v17];
  v20 = v16;
  sub_10000BE14(v19, &v13[v18], &unk_1019F33C0);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) != 1)
  {
    sub_10000BE14(v13, v10, &unk_1019F33C0);
    if (v21(&v13[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v18], v4);
      sub_101302EAC(&qword_101A00190, &type metadata accessor for URL);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v5 + 8);
      v23(v7, v4);
      v23(v10, v4);
      v20 = v16;
      sub_10000CAAC(v13, &unk_1019F33C0);
      if (v22)
      {
        goto LABEL_9;
      }

LABEL_14:
      v34 = 0;
      return v34 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_10000CAAC(v13, &unk_101A0B780);
    goto LABEL_14;
  }

  if (v21(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_10000CAAC(v13, &unk_1019F33C0);
LABEL_9:
  v25 = v36;
  v24 = v37;
  v26 = *(v36 + 24);
  v27 = *&v37[v26];
  v28 = *&v37[v26 + 8];
  v29 = &v20[v26];
  if ((v27 != *v29 || v28 != *(v29 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v24[*(v25 + 28)] != *&v20[*(v25 + 28)])
  {
    goto LABEL_14;
  }

  v30 = &v24[*(v25 + 32)];
  v31 = *(v30 + 2);
  v38[1] = *(v30 + 1);
  v38[2] = v31;
  v39 = v30[48];
  v38[0] = *v30;
  v32 = &v20[*(v25 + 32)];
  v41 = v32[48];
  v33 = *(v32 + 2);
  v40[1] = *(v32 + 1);
  v40[2] = v33;
  v40[0] = *v32;
  v34 = sub_101302EF4(v38, v40);
  return v34 & 1;
}

uint64_t sub_101303CCC()
{
  v0 = type metadata accessor for Calendar.Component();
  v40 = *(v0 - 8);
  v41 = v0;
  __chkstk_darwin(v0);
  v2 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v3 - 8);
  v39 = &v37 - v4;
  v5 = type metadata accessor for Date();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = __chkstk_darwin(v5);
  v37 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v37 - v8;
  v9 = type metadata accessor for Calendar();
  v44 = *(v9 - 8);
  v45 = v9;
  __chkstk_darwin(v9);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v11 = [objc_allocWithZone(NSDateFormatter) init];
  [v11 setDateStyle:1];
  [v11 setTimeStyle:1];
  [v11 setDoesRelativeDateFormatting:1];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v13 = [v11 stringFromDate:isa];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  [v11 setDoesRelativeDateFormatting:0];
  v17 = Date._bridgeToObjectiveC()().super.isa;
  v18 = [v11 stringFromDate:v17];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v14 == v19 && v16 == v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v23 = v40;
    v22 = v41;
    (*(v40 + 104))(v2, enum case for Calendar.Component.weekOfYear(_:), v41);
    v24 = v39;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v23 + 8))(v2, v22);
    v25 = v42;
    v26 = v43;
    if ((*(v42 + 48))(v24, 1, v43) == 1)
    {
      sub_10000CAAC(v24, &qword_101A0A320);
LABEL_11:
      [v11 setDateStyle:2];
      v34 = Date._bridgeToObjectiveC()().super.isa;
      v35 = [v11 stringFromDate:v34];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v44 + 8))(v46, v45);
      return v19;
    }

    v27 = v38;
    (*(v25 + 32))(v38, v24, v26);
    v28 = v37;
    static Date.now.getter();
    v29 = Date.compare(_:)();
    v30 = *(v25 + 8);
    v30(v28, v26);
    if (v29 != 1)
    {
      v30(v27, v26);
      goto LABEL_11;
    }

    v31 = String._bridgeToObjectiveC()();
    [v11 setLocalizedDateFormatFromTemplate:v31];

    v32 = Date._bridgeToObjectiveC()().super.isa;
    v33 = [v11 stringFromDate:v32];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30(v27, v26);
    (*(v44 + 8))(v46, v45);
  }

  else
  {
    (*(v44 + 8))(v46, v45);
  }

  return v14;
}

uint64_t sub_1013042AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10130430C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_101304374()
{
  result = qword_1019F5520;
  if (!qword_1019F5520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F5520);
  }

  return result;
}

unint64_t sub_1013043C0()
{
  result = qword_101A34068;
  if (!qword_101A34068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A34068);
  }

  return result;
}

unint64_t sub_101304414()
{
  result = qword_101A34078;
  if (!qword_101A34078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A34078);
  }

  return result;
}

unint64_t sub_101304468()
{
  result = qword_101A34090;
  if (!qword_101A34090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A34090);
  }

  return result;
}

uint64_t sub_1013044BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666C65537369 && a2 == 0xE600000000000000)
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

uint64_t sub_101304628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A34098);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1013048D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100005070(a1);
  }

  else
  {
    v29 = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = v10;
    v24 = v9;
    v28 = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    v23 = v12;
    v27 = 2;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = v16;
    v22 = v15;
    v26 = 3;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v18 = v25 & 1;

    sub_100005070(a1);

    v20 = v23;
    *a2 = v24;
    *(a2 + 8) = v11;
    *(a2 + 16) = v20;
    *(a2 + 24) = v14;
    *(a2 + 32) = v22;
    *(a2 + 40) = v17;
    *(a2 + 48) = v18;
  }

  return result;
}

unint64_t sub_1013048D8()
{
  result = qword_101A340A0;
  if (!qword_101A340A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A340A0);
  }

  return result;
}

unint64_t sub_10130492C()
{
  result = qword_101A340B8;
  if (!qword_101A340B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A340B8);
  }

  return result;
}

uint64_t sub_101304980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s5BoardV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5BoardV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_101304B5C()
{
  result = qword_101A340C8;
  if (!qword_101A340C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A340C8);
  }

  return result;
}

unint64_t sub_101304BB4()
{
  result = qword_101A340D0;
  if (!qword_101A340D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A340D0);
  }

  return result;
}

unint64_t sub_101304C0C()
{
  result = qword_101A340D8;
  if (!qword_101A340D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A340D8);
  }

  return result;
}

unint64_t sub_101304C64()
{
  result = qword_101A340E0;
  if (!qword_101A340E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A340E0);
  }

  return result;
}

unint64_t sub_101304CBC()
{
  result = qword_101A340E8;
  if (!qword_101A340E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A340E8);
  }

  return result;
}

unint64_t sub_101304D14()
{
  result = qword_101A340F0;
  if (!qword_101A340F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A340F0);
  }

  return result;
}

unint64_t sub_101304D6C()
{
  result = qword_101A340F8;
  if (!qword_101A340F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A340F8);
  }

  return result;
}

unint64_t sub_101304DC4()
{
  result = qword_101A34100;
  if (!qword_101A34100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A34100);
  }

  return result;
}

unint64_t sub_101304E1C()
{
  result = qword_101A34108;
  if (!qword_101A34108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A34108);
  }

  return result;
}

uint64_t sub_101304E70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x80000001015CC4B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52556572616873 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001015CC4D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001015CC4F0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_101305034(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496472616F62 && a2 == 0xEF7265696669746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001015890F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC000000656D6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEC000000656D6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001015CC510 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C68676948736168 && a2 == 0xEC00000074686769 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101554900 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101554920 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7261637369447369 && a2 == 0xED0000656C626164 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x617469766E497369 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010157C400 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7473626D6F547369 && a2 == 0xEC00000064656E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x707075736E557369 && a2 == 0xED0000646574726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010157C3D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x74654D6572616873 && a2 == 0xED00006174616461)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1013055B8(uint64_t a1)
{
  v45 = sub_1005B981C(&unk_101A22860);
  v3 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = v34 - v4;
  v43 = sub_1005B981C(&unk_101A341C0);
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = v34 - v6;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v34[1] = v1;
  v48 = _swiftEmptyArrayStorage;
  sub_100776624(0, v7, 0);
  v8 = v48;
  v9 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v47 = *(a1 + 36);
  v39 = (v5 + 8);
  v40 = (v5 + 16);
  v37 = a1;
  v38 = (v3 + 8);
  v35 = a1 + 72;
  v36 = v7;
  v41 = a1 + 64;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    if (v47 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v46 = v12;
    v15 = *(*(a1 + 56) + 8 * v11);
    v16 = *(*v15 + 120);
    swift_beginAccess();
    v17 = v15 + v16;
    v19 = v42;
    v18 = v43;
    (*v40)(v42, v17, v43);

    v20 = v8;
    v21 = v44;
    Capsule.root.getter();
    (*v39)(v19, v18);
    v22 = v45;
    v23 = CRDictionary.count.getter();
    v24 = v21;
    v8 = v20;
    (*v38)(v24, v22);

    v48 = v20;
    v26 = *(v20 + 2);
    v25 = *(v20 + 3);
    if (v26 >= v25 >> 1)
    {
      result = sub_100776624((v25 > 1), v26 + 1, 1);
      v8 = v48;
    }

    *(v8 + 2) = v26 + 1;
    v8[v26 + 8] = v23;
    a1 = v37;
    v13 = 1 << *(v37 + 32);
    v9 = v41;
    if (v11 >= v13)
    {
      goto LABEL_24;
    }

    v27 = *(v41 + 8 * v14);
    if ((v27 & (1 << v11)) == 0)
    {
      goto LABEL_25;
    }

    if (v47 != *(v37 + 36))
    {
      goto LABEL_26;
    }

    v28 = v27 & (-2 << (v11 & 0x3F));
    if (v28)
    {
      v13 = __clz(__rbit64(v28)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v14 << 6;
      v30 = v14 + 1;
      v31 = (v35 + 8 * v14);
      while (v30 < (v13 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_1000341AC(v11, v47, 0);
          v13 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_1000341AC(v11, v47, 0);
    }

LABEL_4:
    v12 = v46 + 1;
    v11 = v13;
    if (v46 + 1 == v36)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

float sub_1013059DC(float32x4_t *a1)
{
  v1 = a1[1].u64[0];
  if (!v1)
  {
    v4 = 0.0;
    return sqrtf(v4 / (v1 - 1));
  }

  if (v1 <= 7)
  {
    v2 = 0;
    v3 = 0;
LABEL_8:
    v7 = v1 - v2;
    v8 = &a1[2].f32[v2];
    do
    {
      v9 = *v8++;
      *v3.i32 = *v3.i32 + v9;
      --v7;
    }

    while (v7);
    goto LABEL_10;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFF8;
  v5 = a1 + 3;
  v3 = 0;
  v6 = v1 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    *v3.i32 = (((((((*v3.i32 + COERCE_FLOAT(*&v5[-1])) + COERCE_FLOAT(HIDWORD(v5[-1].i64[0]))) + COERCE_FLOAT(v5[-1].i64[1])) + COERCE_FLOAT(HIDWORD(*&v5[-1]))) + COERCE_FLOAT(*v5)) + COERCE_FLOAT(HIDWORD(v5->i64[0]))) + COERCE_FLOAT(v5->i64[1])) + COERCE_FLOAT(HIDWORD(*v5));
    v5 += 2;
    v6 -= 8;
  }

  while (v6);
  if (v1 != v2)
  {
    goto LABEL_8;
  }

LABEL_10:
  *v3.i32 = *v3.i32 / v1;
  if (v1 <= 7)
  {
    v10 = 0;
    v4 = 0.0;
LABEL_15:
    v18 = v1 - v10;
    v19 = &a1[2].f32[v10];
    do
    {
      v20 = *v19++;
      v4 = v4 + ((v20 - *v3.i32) * (v20 - *v3.i32));
      --v18;
    }

    while (v18);
    return sqrtf(v4 / (v1 - 1));
  }

  v10 = v1 & 0x7FFFFFFFFFFFFFF8;
  v11 = vdupq_lane_s32(v3, 0);
  v12 = a1 + 3;
  v4 = 0.0;
  v13 = v1 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v14 = vsubq_f32(v12[-1], v11);
    v15 = vsubq_f32(*v12, v11);
    v16 = vmulq_f32(v14, v14);
    v17 = vmulq_f32(v15, v15);
    v4 = (((((((v4 + v16.f32[0]) + v16.f32[1]) + v16.f32[2]) + v16.f32[3]) + v17.f32[0]) + v17.f32[1]) + v17.f32[2]) + v17.f32[3];
    v12 += 2;
    v13 -= 8;
  }

  while (v13);
  if (v1 != v10)
  {
    goto LABEL_15;
  }

  return sqrtf(v4 / (v1 - 1));
}

void sub_101305B68(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_66;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v93 = v2;
  if (!v2)
  {
    return;
  }

  while (2)
  {
    v88 = v2;
    v3 = 0;
    v91 = v1 & 0xFFFFFFFFFFFFFF8;
    v92 = v1 & 0xC000000000000001;
    v90 = v1 + 32;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v89 = v1;
    while (1)
    {
      if (v92)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v91 + 16))
        {
          goto LABEL_65;
        }

        v9 = *(v90 + 8 * v3);
      }

      v10 = v9;
      v11 = __OFADD__(v3, 1);
      v12 = v3 + 1;
      if (v11)
      {
        goto LABEL_64;
      }

      v13 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
      v14 = *&v9[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
      if (!v14)
      {
        sub_10096C7D4();
        v14 = *&v10[v13];
      }

      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = _swiftEmptyArrayStorage;
      }

      if (!(v15 >> 62))
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

        v16 = v15;
        goto LABEL_16;
      }

      sub_1005B981C(&qword_1019F5720);
      v16 = _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
      if (v16 >> 62)
      {
        break;
      }

LABEL_16:
      v1 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v94 = v10;
      v95 = v12;
      if (v1)
      {
        goto LABEL_17;
      }

LABEL_4:

      v3 = v95;
      v1 = v89;
      if (v95 == v93)
      {
        goto LABEL_70;
      }
    }

    v1 = _CocoaArrayWrapper.endIndex.getter();
    v94 = v10;
    v95 = v12;
    if (!v1)
    {
      goto LABEL_4;
    }

LABEL_17:
    v17 = 0;
    v18 = v16 & 0xC000000000000001;
    v19 = v16 & 0xFFFFFFFFFFFFFF8;
    v96 = v16 & 0xC000000000000001;
    v97 = v16 & 0xFFFFFFFFFFFFFF8;
    while (2)
    {
      if (v18)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_62;
        }

LABEL_23:
        type metadata accessor for CRLShapeItem();
        v21 = swift_dynamicCastClass();
        if (!v21)
        {
          swift_unknownObjectRelease();
          goto LABEL_19;
        }

        v22 = v21;
        swift_unknownObjectRetain();
        if (sub_100C34D80())
        {
          swift_unknownObjectRelease_n();
          v5 = v5 + 1.0;
          goto LABEL_19;
        }

        v23 = *((swift_isaMask & *v22) + 0x4D8);
        v24 = swift_unknownObjectRetain();
        v25 = v23(v24);
        swift_unknownObjectRelease();
        if (!v25)
        {
          swift_unknownObjectRelease_n();
          v19 = v97;
          goto LABEL_19;
        }

        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (!v26)
        {
          swift_unknownObjectRelease_n();

          v19 = v97;
          goto LABEL_19;
        }

        v4 = v4 + 1.0;
        v27 = [v26 inkType];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
        if (v28 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v30 != v31)
        {
          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v33)
          {
LABEL_33:

            swift_unknownObjectRelease_n();
LABEL_45:
            v6 = v6 + 1.0;
            goto LABEL_46;
          }

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;
          if (v34 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v36 != v37)
          {
            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v39 & 1) == 0)
            {
              v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v42 = v41;
              if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
              {

                swift_unknownObjectRelease();
              }

              else
              {
                v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v44 & 1) == 0)
                {
                  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v47 = v46;
                  if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v47 == v48)
                  {

                    swift_unknownObjectRelease_n();
                  }

                  else
                  {
                    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    swift_unknownObjectRelease_n();

                    if ((v49 & 1) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  v8 = v8 + 1.0;
                  goto LABEL_46;
                }

                swift_unknownObjectRelease();
              }

              swift_unknownObjectRelease();

              v7 = v7 + 1.0;
LABEL_46:
              v18 = v96;
              v19 = v97;
LABEL_19:
              ++v17;
              if (v20 == v1)
              {
                goto LABEL_4;
              }

              continue;
            }

            goto LABEL_33;
          }
        }

        swift_unknownObjectRelease_n();

        goto LABEL_45;
      }

      break;
    }

    if (v17 >= *(v19 + 16))
    {
      goto LABEL_63;
    }

    swift_unknownObjectRetain();
    v20 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_23;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v50 = _CocoaArrayWrapper.endIndex.getter();
    if (v50 >= 1)
    {
      v88 = v50;
      v93 = _CocoaArrayWrapper.endIndex.getter();
      if (v93)
      {
        v2 = v88;
        continue;
      }

      v8 = 0.0;
      v7 = 0.0;
      v6 = 0.0;
      v5 = 0.0;
      v4 = 0.0;
LABEL_70:
      v51 = sub_100043E40(_swiftEmptyArrayStorage);
      v52 = [objc_allocWithZone(NSNumber) initWithDouble:v4 / v88];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100043E54(v52, 0xD000000000000020, 0x80000001015CC560, isUniquelyReferenced_nonNull_native);
      v54 = [objc_allocWithZone(NSNumber) initWithDouble:v5 / v88];
      v55 = swift_isUniquelyReferenced_nonNull_native();
      sub_100043E54(v54, 0xD00000000000001ELL, 0x80000001015CC590, v55);
      v56 = [objc_allocWithZone(NSNumber) initWithDouble:v6 / v88];
      v57 = swift_isUniquelyReferenced_nonNull_native();
      sub_100043E54(v56, 0xD000000000000023, 0x80000001015CC5B0, v57);
      v58 = [objc_allocWithZone(NSNumber) initWithDouble:v7 / v88];
      v59 = swift_isUniquelyReferenced_nonNull_native();
      sub_100043E54(v58, 0xD000000000000026, 0x80000001015CC5E0, v59);
      v60 = [objc_allocWithZone(NSNumber) initWithDouble:v8 / v88];
      v61 = swift_isUniquelyReferenced_nonNull_native();
      sub_100043E54(v60, 0xD000000000000026, 0x80000001015CC610, v61);
      v62 = sub_100D8878C();
      v63 = sub_1013055B8(v62);

      v64 = v63[1].u64[0];
      if (v64 >= 2)
      {
        v65 = sub_1013059DC(v63);
        goto LABEL_73;
      }

      v65 = 0.0;
      v66 = 0.0;
      if (v64)
      {
LABEL_73:
        if (v64 <= 7)
        {
          v67 = 0;
          v66 = 0.0;
          goto LABEL_78;
        }

        v67 = v64 & 0x7FFFFFFFFFFFFFF8;
        v68 = v63 + 3;
        v66 = 0.0;
        v69 = v64 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v66 = (((((((v66 + COERCE_FLOAT(*&v68[-1])) + COERCE_FLOAT(HIDWORD(v68[-1].i64[0]))) + COERCE_FLOAT(v68[-1].i64[1])) + COERCE_FLOAT(HIDWORD(*&v68[-1]))) + COERCE_FLOAT(*v68)) + COERCE_FLOAT(HIDWORD(v68->i64[0]))) + COERCE_FLOAT(v68->i64[1])) + COERCE_FLOAT(HIDWORD(*v68));
          v68 += 2;
          v69 -= 8;
        }

        while (v69);
        if (v64 != v67)
        {
LABEL_78:
          v70 = v64 - v67;
          v71 = &v63[2].f32[v67];
          do
          {
            v72 = *v71++;
            v66 = v66 + v72;
            --v70;
          }

          while (v70);
        }
      }

      v73 = v66 / v64;
      v74 = objc_allocWithZone(NSNumber);
      *&v75 = v65;
      v76 = [v74 initWithFloat:v75];
      v77 = swift_isUniquelyReferenced_nonNull_native();
      sub_100043E54(v76, 0xD000000000000018, 0x80000001015CC640, v77);
      v78 = objc_allocWithZone(NSNumber);
      *&v79 = v73;
      v80 = [v78 initWithFloat:v79];
      v81 = swift_isUniquelyReferenced_nonNull_native();
      sub_100043E54(v80, 0xD000000000000013, 0x80000001015CC660, v81);
      if (qword_1019F2110 != -1)
      {
        swift_once();
      }

      v82 = static OS_os_log.crlAnalytics;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 56) = sub_1005B981C(&unk_101A341B0);
      *(inited + 64) = sub_100ADDBB8();
      *(inited + 32) = v51;

      v84 = static os_log_type_t.default.getter();
      sub_100005404(v82, &_mh_execute_header, v84, "sendFreehandDrawingOnBoardOpenedAnalytics: payload: %@", 54, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      v85 = objc_opt_self();
      v86 = String._bridgeToObjectiveC()();
      sub_1006364DC();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v85 sendEventInDomain:v86 lazily:1 eventPayload:isa];
    }

    break;
  }
}

uint64_t sub_10130664C()
{
  result = _UISolariumEnabled();
  v1 = 0xEF656C637269632ELL;
  if (result)
  {
    v1 = 0xE800000000000000;
  }

  qword_101AD99D0 = 0x73697370696C6C65;
  *algn_101AD99D8 = v1;
  return result;
}

void sub_10130669C()
{
  if (qword_1019F2C28 != -1)
  {
    swift_once();
  }

  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  if (v1)
  {
    v2 = sub_1005D10E8(0, 0, v1, 0);

    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    [v4 setAccessibilityLabel:v8];

    v9 = String._bridgeToObjectiveC()();
    [v4 setAccessibilityIdentifier:v9];

    v10 = [v4 accessibilityLabel];
    [v4 setLargeContentTitle:v10];

    sub_101306C58();
    if (v11)
    {
      preferredElementSize = v11;
      sub_100006370(0, &qword_1019F6C00);
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v17.value.super.isa = 0;
      v17.is_nil = 0;
      isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v13, 0, v17, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v16).super.super.isa;
      v15 = v4;
      [v15 setMenu:isa];
      [v15 setShowsMenuAsPrimaryAction:1];
      [v15 setPreferredMenuElementOrder:2];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_101306940(uint64_t a1, uint64_t a2)
{
  sub_100064288(a2, &v20);
  type metadata accessor for CRLBoardItem(0);
  if (swift_dynamicCast())
  {
    v4 = sub_100911E34();
    if (v4 && (v5 = sub_10079DB40(v19, v4), , (v5 & 1) != 0))
    {
      if (sub_1005D929C(a1, a2))
      {

        return 1;
      }

      v7 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
      v8 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
      v9 = v7;
      swift_beginAccess();
      v10 = *&v7[v8];
      if (*(v10 + 16) && (v11 = sub_1007CF108(), (v12 & 1) != 0) || (v20 = 0, v21 = 0, v22 = 0, v23 = 1, sub_10000CAAC(&v20, &unk_1019F4D50), v10 = *&v7[v8], *(v10 + 16)) && (v11 = sub_1007CF108(), (v13 & 1) != 0) || (v20 = 0, v21 = 0, v22 = 0, v23 = 1, sub_10000CAAC(&v20, &unk_1019F4D50), v10 = *&v7[v8], *(v10 + 16)) && (v11 = sub_1007CF108(), (v14 & 1) != 0) || (v20 = 0, v21 = 0, v22 = 0, v23 = 1, sub_10000CAAC(&v20, &unk_1019F4D50), v10 = *&v7[v8], *(v10 + 16)) && (v11 = sub_1007CF108(), (v15 & 1) != 0) || (v20 = 0, v21 = 0, v22 = 0, v23 = 1, sub_10000CAAC(&v20, &unk_1019F4D50), v10 = *&v7[v8], *(v10 + 16)) && (v11 = sub_1007CF108(), (v16 & 1) != 0) || (v20 = 0, v21 = 0, v22 = 0, v23 = 1, sub_10000CAAC(&v20, &unk_1019F4D50), v10 = *&v7[v8], *(v10 + 16)) && (v11 = sub_1007CF108(), (v17 & 1) != 0) || (v20 = 0, v21 = 0, v22 = 0, v23 = 1, sub_10000CAAC(&v20, &unk_1019F4D50), v10 = *&v7[v8], *(v10 + 16)) && (v11 = sub_1007CF108(), (v18 & 1) != 0))
      {
        sub_100601584(*(v10 + 56) + 32 * v11, &v20);

        sub_10000CAAC(&v20, &unk_1019F4D50);
        return 1;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 1;
      sub_10000CAAC(&v20, &unk_1019F4D50);
    }

    else
    {
    }
  }

  return 0;
}

void sub_101306C58()
{
  sub_100006370(0, &unk_1019FCBF0);
  v1 = NSArray.init(arrayLiteral:)();
  v2 = [*(v0 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController) currentEditors];
  sub_1005B981C(&qword_101A09750);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_12:

    sub_100006370(0, &unk_1019F61A0);
    v7 = v1;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    return;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v6 respondsToSelector:"addContextualMenuElementsToArray:atPoint:"])
      {
        [v6 addContextualMenuElementsToArray:v1 atPoint:{0.0, 0.0}];
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_12;
  }

  __break(1u);
}

BOOL sub_101306E14()
{
  sub_100006370(0, &unk_1019FCBF0);
  v1 = NSArray.init(arrayLiteral:)();
  v2 = [*(v0 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController) currentEditors];
  sub_1005B981C(&qword_101A09750);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }

LABEL_10:
      if ([v6 respondsToSelector:"addContextualMenuElementsToArray:atPoint:"])
      {
        [v6 addContextualMenuElementsToArray:v1 atPoint:{0.0, 0.0}];
      }

      v8 = v1;
      v9 = [v8 count];

      swift_unknownObjectRelease();
      v10 = v9 > 0;
      if (v9 <= 0)
      {
        ++v5;
        if (v7 != i)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v6 = *(v3 + 8 * v5 + 32);
    swift_unknownObjectRetain();
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v10 = 0;
LABEL_19:

  return v10;
}

id sub_101306FEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSMiniFormatterEllipsisBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_101307048@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController);
      v9 = Strong;
      v10 = v8;

      if (v8)
      {
        v11 = [v10 layerHost];

        if (v11)
        {
          if ([v11 respondsToSelector:"asiOSCVC"])
          {
            v12 = [v11 asiOSCVC];
            swift_unknownObjectRelease();
            *(a3 + 24) = sub_100006370(0, &qword_101A34200);
            *a3 = v12;
            return result;
          }

          swift_unknownObjectRelease();
        }
      }
    }

    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    sub_100601584(a2, &v25);
    v14 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      v15 = sub_100020E58(&v25, *(&v26 + 1));
      v16 = *(v14 - 8);
      v17 = __chkstk_darwin(v15);
      v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v19, v17);
      v20 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v16 + 8))(v19, v14);
      sub_100005070(&v25);
    }

    else
    {
      v20 = 0;
    }

    v21 = type metadata accessor for CRLiOSMiniFormatterBaseLayerButton();
    v24.receiver = v3;
    v24.super_class = v21;
    v22 = objc_msgSendSuper2(&v24, "targetForAction:withSender:", a1, v20);
    swift_unknownObjectRelease();
    if (v22)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    result = *&v25;
    v23 = v26;
    *a3 = v25;
    *(a3 + 16) = v23;
  }

  return result;
}

void sub_101307488(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, void (*a5)(unint64_t, unint64_t))
{
  v16.receiver = v5;
  v16.super_class = type metadata accessor for CRLiOSMiniFormatterBaseLayerButton();
  objc_msgSendSuper2(&v16, *a4, a1, a2, a3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController);
    v13 = Strong;
    v14 = v12;

    if (v12)
    {
      v15 = [v14 editingCoordinator];

      if (v15)
      {
        if (*&v15[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator])
        {
          a5(0xD00000000000002CLL, 0x80000001015CC720);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_1013075B0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, SEL *a6, void (*a7)(unint64_t, unint64_t))
{
  v12 = a3;
  v13 = a4;
  swift_unknownObjectRetain();
  v14 = a1;
  sub_101307488(v12, v13, a5, a6, a7);

  swift_unknownObjectRelease();
}

uint64_t sub_101307664()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id sub_101307814(uint64_t a1)
{
  v71 = type metadata accessor for UTType();
  v2 = *(v71 - 8);
  __chkstk_darwin(v71);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for PHPickerResult();
  v5 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v65 - v9;
  v11 = 0;
  v12 = *(a1 + 16);
  v72 = a1;
  v73 = v12;
  v68 = (v2 + 8);
  v69 = v5 + 16;
  v67 = v5 + 8;
  do
  {
    v13 = v11;
    if (v73 == v11)
    {
      break;
    }

    v14 = v70;
    (*(v5 + 16))(v10, v72 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11++, v70, v8);
    v15 = PHPickerResult.itemProvider.getter();
    static UTType.movie.getter();
    UTType.identifier.getter();
    (*v68)(v4, v71);
    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 hasItemConformingToTypeIdentifier:v16];

    (*(v5 + 8))(v10, v14);
  }

  while (!v17);
  v18 = 0;
  v19 = v66;
  while (v73 != v18)
  {
    v20 = v70;
    (*(v5 + 16))(v19, v72 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18++, v70);
    v21 = PHPickerResult.itemProvider.getter();
    static UTType.image.getter();
    UTType.identifier.getter();
    (*v68)(v4, v71);
    v22 = String._bridgeToObjectiveC()();

    v23 = [v21 hasItemConformingToTypeIdentifier:v22];

    (*(v5 + 8))(v19, v20);
    if (v23)
    {
      goto LABEL_12;
    }
  }

  if (v73 == v13)
  {
    v24 = objc_opt_self();
    v25 = [v24 _atomicIncrementAssertCount];
    v74 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v74);
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    v28 = [v27 lastPathComponent];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v25;
    v34 = sub_1005CF000();
    *(inited + 96) = v34;
    v35 = sub_1005CF04C();
    *(inited + 104) = v35;
    *(inited + 72) = v26;
    *(inited + 136) = &type metadata for String;
    v36 = sub_1000053B0();
    *(inited + 112) = v29;
    *(inited + 120) = v31;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v36;
    *(inited + 152) = 32;
    v37 = v74;
    *(inited + 216) = v34;
    *(inited + 224) = v35;
    *(inited + 192) = v37;
    v38 = v26;
    v39 = v37;
    v40 = static os_log_type_t.error.getter();
    sub_100005404(v32, &_mh_execute_header, v40, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v41 = static os_log_type_t.error.getter();
    sub_100005404(v32, &_mh_execute_header, v41, "Invalid photo picker results", 28, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v42 = swift_allocObject();
    v42[2] = 8;
    v42[3] = 0;
    v42[4] = 0;
    v42[5] = 0;
    v43 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    [v24 handleFailureInFunction:v44 file:v45 lineNumber:32 isFatal:0 format:v46 args:v43];
  }

LABEL_12:
  v47 = [objc_opt_self() mainBundle];
  v48 = String._bridgeToObjectiveC()();
  v49 = String._bridgeToObjectiveC()();
  v50 = [v47 localizedStringForKey:v48 value:v49 table:0];

  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  sub_1005B981C(&qword_101A12AA8);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_10146C4D0;
  *(v54 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v54 + 40) = v55;
  v56 = sub_101307664();
  *(v54 + 72) = &type metadata for String;
  *(v54 + 48) = v56;
  *(v54 + 56) = v57;
  *(v54 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v54 + 88) = v58;
  *(v54 + 120) = &type metadata for String;
  *(v54 + 96) = v51;
  *(v54 + 104) = v53;
  *(v54 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v54 + 136) = v59;
  *(v54 + 168) = &type metadata for String;
  *(v54 + 144) = v51;
  *(v54 + 152) = v53;

  sub_10000BCE4(v54);
  swift_setDeallocating();
  sub_1005B981C(&qword_101A2F5D0);
  swift_arrayDestroy();
  v60 = objc_allocWithZone(NSError);
  v61 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v63 = [v60 initWithDomain:v61 code:200 userInfo:isa];

  return v63;
}

uint64_t sub_1013080D8()
{
  v1 = type metadata accessor for PKInkingTool.InkType();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v56 - v6;
  v8 = *(v2 + 16);
  v8(&v56 - v6, v0, v1);
  v9 = (*(v2 + 88))(v7, v1);
  if (v9 == enum case for PKInkingTool.InkType.pen(_:))
  {
    return 1;
  }

  if (v9 == enum case for PKInkingTool.InkType.pencil(_:))
  {
    return 2;
  }

  if (v9 == enum case for PKInkingTool.InkType.marker(_:))
  {
    return 7;
  }

  if (v9 == enum case for PKInkingTool.InkType.monoline(_:))
  {
    return 0;
  }

  if (v9 == enum case for PKInkingTool.InkType.fountainPen(_:))
  {
    return 5;
  }

  if (v9 == enum case for PKInkingTool.InkType.watercolor(_:))
  {
    return 4;
  }

  if (v9 == enum case for PKInkingTool.InkType.crayon(_:))
  {
    return 3;
  }

  if (v9 != enum case for PKInkingTool.InkType.reed(_:))
  {
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v8(v5, v0, v1);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(inited + 56) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 32) = v12;
    v61 = inited + 32;
    v63 = v15;
    *(inited + 64) = v15;
    *(inited + 40) = v14;
    v56 = objc_opt_self();
    LODWORD(v60) = [v56 _atomicIncrementAssertCount];
    v64 = [objc_allocWithZone(NSString) init];
    v62 = inited;
    sub_100604538(inited, &v64);
    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v19;
    v58 = v18;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v20 = static OS_os_log.crlAssert;
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_10146CA70;
      *(v21 + 56) = &type metadata for Int32;
      *(v21 + 64) = &protocol witness table for Int32;
      *(v21 + 32) = v60;
      v22 = sub_100006370(0, &qword_1019F4D30);
      *(v21 + 96) = v22;
      v23 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
      v24 = v59;
      *(v21 + 72) = v59;
      v25 = v63;
      *(v21 + 136) = &type metadata for String;
      *(v21 + 144) = v25;
      v26 = v57;
      v27 = v58;
      *(v21 + 104) = v23;
      *(v21 + 112) = v27;
      *(v21 + 120) = v26;
      *(v21 + 176) = &type metadata for UInt;
      *(v21 + 184) = &protocol witness table for UInt;
      *(v21 + 152) = 475;
      v28 = v64;
      *(v21 + 216) = v22;
      *(v21 + 224) = v23;
      *(v21 + 192) = v28;
      v29 = v24;
      v30 = v28;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v21);
      swift_setDeallocating();
      v58 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v32 = static os_log_type_t.error.getter();
      v33 = v62;
      sub_100005404(v20, &_mh_execute_header, v32, "Unknown PKInkingTool.InkType (%{public}@). Falling back to pen.", 63, 2, v62);

      type metadata accessor for __VaListBuilder();
      v34 = swift_allocObject();
      v34[2] = 8;
      v34[3] = 0;
      v35 = v34 + 3;
      v34[4] = 0;
      v34[5] = 0;
      v63 = v34;
      v60 = *(v33 + 16);
      if (!v60)
      {
LABEL_43:
        v59 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v53 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v54 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v55 = String._bridgeToObjectiveC()();

        [v56 handleFailureInFunction:v53 file:v54 lineNumber:475 isFatal:0 format:v55 args:v59];

        swift_setDeallocating();
        swift_arrayDestroy();
        (*(v2 + 8))(v7, v1);
        return 1;
      }

      v36 = 0;
      while (1)
      {
        sub_100020E58((v61 + 40 * v36), *(v61 + 40 * v36 + 24));
        v37 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v38 = *v35;
        v39 = *(v37 + 16);
        v40 = __OFADD__(*v35, v39);
        v41 = *v35 + v39;
        if (v40)
        {
          break;
        }

        v42 = v63;
        v43 = v63[4];
        if (v43 >= v41)
        {
          goto LABEL_35;
        }

        if (v43 + 0x4000000000000000 < 0)
        {
          goto LABEL_46;
        }

        v59 = v37;
        v44 = v63[5];
        if (2 * v43 > v41)
        {
          v41 = 2 * v43;
        }

        v63[4] = v41;
        if ((v41 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_47;
        }

        v45 = v42;
        v46 = swift_slowAlloc();
        v47 = v46;
        v45[5] = v46;
        if (v44)
        {
          if (v46 != v44 || v46 >= &v44[8 * v38])
          {
            memmove(v46, v44, 8 * v38);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v42 = v63;
          v37 = v59;
LABEL_35:
          v47 = v42[5];
          if (!v47)
          {
            goto LABEL_42;
          }

          goto LABEL_36;
        }

        v37 = v59;
        if (!v47)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_36:
        v49 = *(v37 + 16);
        if (v49)
        {
          v50 = (v37 + 32);
          v51 = *v35;
          while (1)
          {
            v52 = *v50++;
            *&v47[8 * v51] = v52;
            v51 = *v35 + 1;
            if (__OFADD__(*v35, 1))
            {
              break;
            }

            *v35 = v51;
            if (!--v49)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
          break;
        }

LABEL_20:

        if (++v36 == v60)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
    }
  }

  return 6;
}

uint64_t sub_101308850()
{
  type metadata accessor for CRLiOSPencilTrayPickerLassoImageProvider();
  swift_initStaticObject();
  return sub_10130CA64(0, &unk_1018BC708, &unk_1018BC730, sub_10130D8D0, sub_10130D8D4, &unk_1018BC748);
}

uint64_t sub_1013088D0(void *a1)
{
  type metadata accessor for CRLiOSPencilTrayPickerFillImageProvider();
  swift_initStaticObject();
  v2 = [a1 color];
  v3 = sub_10130CA64(v2, &unk_1018BC690, &unk_1018BC6B8, sub_10130D424, sub_10130D428, &unk_1018BC6D0);

  return v3;
}

uint64_t sub_101308974(unint64_t a1)
{
  if (a1 >= 0xB)
  {
    type metadata accessor for CRLFreehandDrawingToolType(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + *(&off_1018BC770)[a1]);
    v3 = [v2 identifier];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  return result;
}

void sub_101308A20()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_isUpdatingToolPicker))
  {
    return;
  }

  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker);
  v3 = [v2 selectedToolItem];
  sub_101308C68(*(v1 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_toolkit));

  v18 = [v2 selectedToolItem];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = [v4 identifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = [*(v1 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_lasso) identifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (![v5 allowsColorSelection])
  {
LABEL_14:

    return;
  }

  v16 = [v5 color];
  v17 = [objc_allocWithZone(CRLColor) initWithUIColor:v16];

  swift_unknownObjectUnownedLoadStrong();
  sub_100F0DB78(v17);

  swift_unknownObjectRelease();
}

void sub_101308C68(void *a1)
{
  v65 = type metadata accessor for PKInkingTool();
  v3 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v63 = &v60 - v6;
  v7 = type metadata accessor for PKInkingTool.InkType();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  sub_1013096E4(a1);
  v70 = v1;
  v13 = sub_100006370(0, &qword_1019F6DD0);
  v14 = v1;
  sub_1005B981C(&qword_101A342C0);
  v15 = swift_dynamicCast();
  v64 = a1;
  if (v15)
  {
    sub_100050F74(&v67, v71);
    v62 = v13;
    v16 = v3;
    v17 = v12;
    v18 = v8;
    v19 = v7;
    v21 = v72;
    v20 = v73;
    sub_100020E58(v71, v72);
    v22 = v21;
    v7 = v19;
    v8 = v18;
    v12 = v17;
    v3 = v16;
    (*(v20 + 24))(a1, v22, v20);
    sub_100005070(v71);
  }

  else
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    sub_10000CAAC(&v67, &qword_101A342C8);
  }

  v70 = v14;
  v23 = v14;
  sub_1005B981C(&qword_101A342D0);
  if (swift_dynamicCast())
  {
    sub_100050F74(&v67, v71);
    v24 = v72;
    v25 = v73;
    sub_100020E58(v71, v72);
    (*(v25 + 24))(v64, v24, v25);
    sub_100005070(v71);
  }

  else
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    sub_10000CAAC(&v67, &qword_101A342D8);
  }

  (*(v8 + 104))(v12, enum case for PKInkingTool.InkType.reed(_:), v7);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    (*(v8 + 8))(v12, v7);
    return;
  }

  v62 = v23;
  v26 = v63;
  PKToolPickerInkingItem.inkingTool.getter();
  PKInkingTool.inkType.getter();
  v27 = *(v3 + 8);
  v27(v26, v65);
  sub_10130C2B8();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v60 = (v3 + 8);
  if (v71[0] == v67 && v71[1] == *(&v67 + 1))
  {
    v28 = 1;
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v31 = *(v8 + 8);
  v29 = (v8 + 8);
  v30 = v31;
  (v31)(v66, v7);

  if (v28)
  {
    v63 = v30;
    v66 = v12;
    v32 = [v64 currentTool];
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = v33;
      v35 = v61;
      PKToolPickerInkingItem.inkingTool.getter();
      PKInkingTool.azimuth.getter();
      v37 = v36;
      v27(v35, v65);
      [v34 setAzimuth:v37];

      (v63)(v66, v7);
      return;
    }

    v61 = v29;
    v64 = v7;

    v60 = objc_opt_self();
    v38 = [v60 _atomicIncrementAssertCount];
    v71[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v71);
    StaticString.description.getter();
    v65 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    v40 = [v39 lastPathComponent];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v44 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v38;
    v46 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v46;
    v47 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v47;
    v48 = v65;
    *(inited + 72) = v65;
    *(inited + 136) = &type metadata for String;
    v49 = sub_1000053B0();
    *(inited + 112) = v41;
    *(inited + 120) = v43;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v49;
    *(inited + 152) = 385;
    v50 = v71[0];
    *(inited + 216) = v46;
    *(inited + 224) = v47;
    *(inited + 192) = v50;
    v51 = v48;
    v52 = v50;
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v54 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v54, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v55 = swift_allocObject();
    v55[2] = 8;
    v55[3] = 0;
    v55[4] = 0;
    v55[5] = 0;
    v56 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v58 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    [v60 handleFailureInFunction:v57 file:v58 lineNumber:385 isFatal:0 format:v59 args:v56];

    (v63)(v66, v64);
  }

  else
  {
    (v30)(v12, v7);
  }
}

id sub_101309574()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSPencilTrayPickerManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1013096E4(void *a1)
{
  sub_100006370(0, &qword_1019F6DD0);
  v3 = v1;
  sub_1005B981C(&qword_101A342E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    sub_10000CAAC(v57, &qword_101A342F0);
LABEL_5:
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v9 = [v3 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v11;

    *(inited + 56) = &type metadata for String;
    v12 = sub_1000053B0();
    *(inited + 32) = v10;
    v13 = inited + 32;
    v56 = v12;
    *(inited + 64) = v12;
    *(inited + 40) = v14;
    v54 = objc_opt_self();
    LODWORD(v14) = [v54 _atomicIncrementAssertCount];
    v59[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, v59);
    StaticString.description.getter();
    v55 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_37;
    }

    while (1)
    {
      v20 = static OS_os_log.crlAssert;
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_10146CA70;
      *(v21 + 56) = &type metadata for Int32;
      *(v21 + 64) = &protocol witness table for Int32;
      *(v21 + 32) = v14;
      v22 = sub_100006370(0, &qword_1019F4D30);
      *(v21 + 96) = v22;
      v23 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
      *(v21 + 72) = v55;
      *(v21 + 136) = &type metadata for String;
      *(v21 + 144) = v56;
      *(v21 + 104) = v23;
      *(v21 + 112) = v17;
      *(v21 + 120) = v19;
      *(v21 + 176) = &type metadata for UInt;
      *(v21 + 184) = &protocol witness table for UInt;
      *(v21 + 152) = 357;
      v24 = v59[0];
      *(v21 + 216) = v22;
      *(v21 + 224) = v23;
      *(v21 + 192) = v24;
      v25 = v55;
      v26 = v24;
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v21);
      swift_setDeallocating();
      v56 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v28, "Could not find freeformToolType for the selected tool item: %@", 62, 2, inited);

      type metadata accessor for __VaListBuilder();
      v17 = swift_allocObject();
      v17[2] = 8;
      v17[3] = 0;
      v29 = v17 + 3;
      v17[4] = 0;
      v17[5] = 0;
      v14 = *(inited + 16);
      v30 = inited;
      if (!v14)
      {
LABEL_31:
        v49 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v50 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v51 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v52 = String._bridgeToObjectiveC()();

        [v54 handleFailureInFunction:v50 file:v51 lineNumber:357 isFatal:0 format:v52 args:v49];

        swift_setDeallocating();
        return swift_arrayDestroy();
      }

      v31 = 0;
      inited = 40;
      while (1)
      {
        v32 = (v13 + 40 * v31);
        v19 = v32[4];
        sub_100020E58(v32, v32[3]);
        v33 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v34 = *v29;
        v35 = *(v33 + 16);
        v36 = __OFADD__(*v29, v35);
        v37 = *v29 + v35;
        if (v36)
        {
          break;
        }

        v38 = v17[4];
        if (v38 >= v37)
        {
          goto LABEL_23;
        }

        if (v38 + 0x4000000000000000 < 0)
        {
          goto LABEL_35;
        }

        v19 = v17[5];
        if (2 * v38 > v37)
        {
          v37 = 2 * v38;
        }

        v17[4] = v37;
        if ((v37 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_36;
        }

        v39 = v13;
        v40 = v30;
        v41 = v33;
        v42 = swift_slowAlloc();
        v43 = v42;
        v17[5] = v42;
        if (v19)
        {
          if (v42 != v19 || v42 >= &v19[8 * v34])
          {
            memmove(v42, v19, 8 * v34);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v33 = v41;
          v30 = v40;
          v13 = v39;
          inited = 40;
LABEL_23:
          v43 = v17[5];
          if (!v43)
          {
            goto LABEL_30;
          }

          goto LABEL_24;
        }

        v33 = v41;
        v30 = v40;
        v13 = v39;
        inited = 40;
        if (!v43)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_24:
        v45 = *(v33 + 16);
        if (v45)
        {
          v46 = (v33 + 32);
          v47 = *v29;
          while (1)
          {
            v48 = *v46++;
            *&v43[8 * v47] = v48;
            v47 = *v29 + 1;
            if (__OFADD__(*v29, 1))
            {
              break;
            }

            *v29 = v47;
            if (!--v45)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
          break;
        }

LABEL_8:

        if (++v31 == v14)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
    }
  }

  sub_100050F74(v57, v59);
  v4 = v60;
  v5 = v61;
  sub_100020E58(v59, v60);
  v6 = (*(v5 + 8))(v4, v5);
  if (v7)
  {
    sub_100005070(v59);
    goto LABEL_5;
  }

  [a1 setCurrentToolSelection:v6];
  return sub_100005070(v59);
}

uint64_t sub_101309D6C()
{
  v1 = [v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v2 == 0xD000000000000018 && 0x80000001015B0960 == v4;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (v2 == 0xD000000000000017 && 0x80000001015CCB30 == v4)
  {

    return 8;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return 8;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_101309EA8()
{
  v0 = type metadata accessor for PKInkingTool.InkType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PKInkingTool();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  PKToolPickerInkingItem.inkingTool.getter();
  PKInkingTool.inkType.getter();
  (*(v5 + 8))(v7, v4);
  v8 = sub_1013080D8();
  (*(v1 + 8))(v3, v0);
  return v8;
}

uint64_t sub_10130A02C()
{
  v0 = type metadata accessor for PKInkingTool();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  PKToolPickerInkingItem.inkingTool.getter();
  v4 = PKInkingTool.color.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void sub_10130A100(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = *(v6 + 8);
  v8 = v7(a2, v6);
  if ((v9 & 1) != 0 || v8 != 10)
  {
    v10 = (*(a3 + 16))(a2, a3);
    v11 = [objc_allocWithZone(CRLColor) initWithUIColor:v10];

    v12 = [v11 colorWithAlphaComponent:1.0];
    [a1 setColorForCurrentTool:v12];

    [v11 alphaComponent];
    v14 = v13;
    v15 = v7(a2, v6);
    v17 = v16;
    v18 = [a1 currentTool];
    if ((v17 & 1) != 0 || v15 != 8)
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (!v19)
      {

        v62 = objc_opt_self();
        v40 = [v62 _atomicIncrementAssertCount];
        v63[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v63);
        StaticString.description.getter();
        v60 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v41 = String._bridgeToObjectiveC()();

        v42 = [v41 lastPathComponent];

        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v45 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v40;
        v47 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v47;
        v48 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
        *(inited + 104) = v48;
        *(inited + 72) = v60;
        *(inited + 136) = &type metadata for String;
        v49 = sub_1000053B0();
        *(inited + 112) = v58;
        *(inited + 120) = v44;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v49;
        *(inited + 152) = 510;
        v50 = v63[0];
        *(inited + 216) = v47;
        *(inited + 224) = v48;
        *(inited + 192) = v50;
        v51 = v60;
        v52 = v50;
        v53 = static os_log_type_t.error.getter();
        sub_100005404(v45, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v54 = static os_log_type_t.error.getter();
        sub_100005404(v45, &_mh_execute_header, v54, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v55 = swift_allocObject();
        v55[2] = 8;
        v55[3] = 0;
        v55[4] = 0;
        v55[5] = 0;
        v56 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v37 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v38 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v39 = String._bridgeToObjectiveC()();

        [v62 handleFailureInFunction:v37 file:v38 lineNumber:510 isFatal:0 format:v39 args:v56];
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (!v19)
      {

        v61 = objc_opt_self();
        v20 = [v61 _atomicIncrementAssertCount];
        v63[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v63);
        StaticString.description.getter();
        v59 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v21 = String._bridgeToObjectiveC()();

        v22 = [v21 lastPathComponent];

        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v25 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_10146CA70;
        *(v26 + 56) = &type metadata for Int32;
        *(v26 + 64) = &protocol witness table for Int32;
        *(v26 + 32) = v20;
        v27 = sub_100006370(0, &qword_1019F4D30);
        *(v26 + 96) = v27;
        v28 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
        *(v26 + 104) = v28;
        *(v26 + 72) = v59;
        *(v26 + 136) = &type metadata for String;
        v29 = sub_1000053B0();
        *(v26 + 112) = v57;
        *(v26 + 120) = v24;
        *(v26 + 176) = &type metadata for UInt;
        *(v26 + 184) = &protocol witness table for UInt;
        *(v26 + 144) = v29;
        *(v26 + 152) = 506;
        v30 = v63[0];
        *(v26 + 216) = v27;
        *(v26 + 224) = v28;
        *(v26 + 192) = v30;
        v31 = v59;
        v32 = v30;
        v33 = static os_log_type_t.error.getter();
        sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v26);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v34 = static os_log_type_t.error.getter();
        sub_100005404(v25, &_mh_execute_header, v34, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v35 = swift_allocObject();
        v35[2] = 8;
        v35[3] = 0;
        v35[4] = 0;
        v35[5] = 0;
        v36 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v37 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v38 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v39 = String._bridgeToObjectiveC()();

        [v61 handleFailureInFunction:v37 file:v38 lineNumber:506 isFatal:0 format:v39 args:v36];
LABEL_13:
      }
    }

    [v19 setOpacity:v14];
  }
}

void sub_10130A9BC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = *(v6 + 8);
  v8 = v7(a2, v6);
  if ((v9 & 1) != 0 || v8 != 10)
  {
    v10 = v7(a2, v6);
    if ((v11 & 1) != 0 || v10 != 8)
    {
      v37 = [a1 currentTool];
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        (*(a3 + 16))(a2, a3);
        [v13 setUnscaledWidth:?];
      }

      else
      {

        v14 = objc_opt_self();
        v15 = [v14 _atomicIncrementAssertCount];
        v38 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v38);
        StaticString.description.getter();
        v16 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v17 = String._bridgeToObjectiveC()();

        v18 = [v17 lastPathComponent];

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v22 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v15;
        v24 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v24;
        v25 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
        *(inited + 104) = v25;
        *(inited + 72) = v16;
        *(inited + 136) = &type metadata for String;
        v26 = sub_1000053B0();
        *(inited + 112) = v19;
        *(inited + 120) = v21;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v26;
        *(inited + 152) = 531;
        v27 = v38;
        *(inited + 216) = v24;
        *(inited + 224) = v25;
        *(inited + 192) = v27;
        v28 = v16;
        v29 = v27;
        v30 = static os_log_type_t.error.getter();
        sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v31 = static os_log_type_t.error.getter();
        sub_100005404(v22, &_mh_execute_header, v31, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v32 = swift_allocObject();
        v32[2] = 8;
        v32[3] = 0;
        v32[4] = 0;
        v32[5] = 0;
        v33 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v34 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v35 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v36 = String._bridgeToObjectiveC()();

        [v14 handleFailureInFunction:v34 file:v35 lineNumber:531 isFatal:0 format:v36 args:v33];
      }
    }
  }
}

id sub_10130AE64()
{
  v1 = [*v0 color];

  return v1;
}

uint64_t sub_10130AEAC(void *a1)
{
  v3 = type metadata accessor for PKEraserTool();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PKEraserTool.EraserType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v150 - v12;
  v159 = v1;
  PKToolPickerEraserItem.eraserTool.getter();
  PKEraserTool.eraserType.getter();
  v14 = *(v4 + 8);
  v160 = v3;
  v157 = v14;
  v158 = (v4 + 8);
  (v14)(v6, v3);
  v15 = *(v8 + 104);
  LODWORD(v156) = enum case for PKEraserTool.EraserType.vector(_:);
  v15(v10);
  v162 = v13;
  v16 = static PKEraserTool.EraserType.== infix(_:_:)();
  v18 = *(v8 + 8);
  v17 = v8 + 8;
  v163 = v7;
  v19 = v7;
  v20 = a1;
  v161 = v18;
  v18(v10, v19);
  v21 = &selRef_tailLineEndAngle;
  if (v16 & 1) != 0 || (v22 = a1, v23 = v17, v24 = v163, (v15)(v10, enum case for PKEraserTool.EraserType.fixedWidthBitmap(_:), v163), v25 = static PKEraserTool.EraserType.== infix(_:_:)(), v26 = v24, v17 = v23, v20 = v22, v21 = &selRef_tailLineEndAngle, v161(v10, v26), (v25))
  {
    v27 = [v20 v21[166]];
    [v27 setEraserToolErasesWholeObjects:v16 & 1];
  }

  [v20 setCurrentToolSelection:9];
  v28 = [v20 currentTool];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v155 = v29;
    v156 = v28;
    v30 = v163;
    (v15)(v10, enum case for PKEraserTool.EraserType.fixedWidthBitmap(_:), v163);
    v31 = static PKEraserTool.EraserType.== infix(_:_:)();
    v161(v10, v30);
    if ((v31 & 1) == 0)
    {
      v153 = v20;
      v152 = objc_opt_self();
      LODWORD(v32) = [v152 _atomicIncrementAssertCount];
      v164 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v164);
      StaticString.description.getter();
      v151 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v33 = String._bridgeToObjectiveC()();

      v34 = [v33 lastPathComponent];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v150 = v36;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_78;
      }

      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v59 = [v20 currentTool];
  objc_opt_self();
  v60 = v20;
  v61 = swift_dynamicCastObjCClass();

  v159 = sub_1005B981C(&qword_1019F54E0);
  v154 = v17;
  if (v61)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v164 = 0;
    v165 = 0xE000000000000000;
    v63 = v163;
    _print_unlocked<A, B>(_:_:)();
    v64 = v164;
    v160 = v165;
    *(inited + 56) = &type metadata for String;
    v65 = sub_1000053B0();
    *(inited + 32) = v64;
    v66 = inited + 32;
    v67 = inited;
    v158 = v65;
    *(inited + 64) = v65;
    *(inited + 40) = v160;
    (v15)(v10, v156, v63);
    LOBYTE(inited) = static PKEraserTool.EraserType.== infix(_:_:)();
    v161(v10, v63);
    if (inited)
    {
      swift_setDeallocating();
      sub_100005070(v66);
      return (v161)(v162, v163);
    }

    v160 = v66;
    v156 = objc_opt_self();
    v110 = [v156 _atomicIncrementAssertCount];
    v164 = [objc_allocWithZone(NSString) init];
    sub_100604538(v67, &v164);
    StaticString.description.getter();
    v111 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v112 = String._bridgeToObjectiveC()();
    v157 = v67;
    v113 = v112;

    v114 = [v113 lastPathComponent];

    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v118 = static OS_os_log.crlAssert;
    v119 = swift_initStackObject();
    *(v119 + 16) = xmmword_10146CA70;
    *(v119 + 56) = &type metadata for Int32;
    *(v119 + 64) = &protocol witness table for Int32;
    *(v119 + 32) = v110;
    v120 = sub_100006370(0, &qword_1019F4D30);
    *(v119 + 96) = v120;
    v121 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(v119 + 72) = v111;
    v122 = v158;
    *(v119 + 136) = &type metadata for String;
    *(v119 + 144) = v122;
    *(v119 + 104) = v121;
    *(v119 + 112) = v115;
    *(v119 + 120) = v117;
    *(v119 + 176) = &type metadata for UInt;
    *(v119 + 184) = &protocol witness table for UInt;
    *(v119 + 152) = 449;
    v123 = v164;
    *(v119 + 216) = v120;
    *(v119 + 224) = v121;
    *(v119 + 192) = v123;
    v124 = v111;
    v125 = v123;
    v126 = static os_log_type_t.error.getter();
    sub_100005404(v118, &_mh_execute_header, v126, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v119);
    swift_setDeallocating();
    v159 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v127 = static os_log_type_t.error.getter();
    v128 = v157;
    sub_100005404(v118, &_mh_execute_header, v127, "Unknown eraser tool selection: %@", 33, 2, v157);

    type metadata accessor for __VaListBuilder();
    v129 = swift_allocObject();
    v129[2] = 8;
    v129[3] = 0;
    v35 = v129 + 3;
    v129[4] = 0;
    v129[5] = 0;
    v32 = v128[2];
    v130 = v160;
    if (v32)
    {
      v6 = 0;
      while (1)
      {
        sub_100020E58(&v130[5 * v6], v130[5 * v6 + 3]);
        v131 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v132 = *v35;
        v133 = *(v131 + 16);
        v93 = __OFADD__(*v35, v133);
        v134 = *v35 + v133;
        if (v93)
        {
          goto LABEL_73;
        }

        v135 = v129[4];
        if (v135 >= v134)
        {
          goto LABEL_59;
        }

        if (v135 + 0x4000000000000000 < 0)
        {
          goto LABEL_76;
        }

        v136 = v129[5];
        if (2 * v135 > v134)
        {
          v134 = 2 * v135;
        }

        v129[4] = v134;
        if ((v134 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_77;
        }

        v137 = v131;
        v138 = swift_slowAlloc();
        v139 = v138;
        v129[5] = v138;
        if (v136)
        {
          break;
        }

        v131 = v137;
        v130 = v160;
        if (!v139)
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_60:
        v141 = *(v131 + 16);
        if (v141)
        {
          v142 = (v131 + 32);
          v143 = *v35;
          do
          {
            v144 = *v142++;
            *&v139[8 * v143] = v144;
            v143 = *v35 + 1;
            if (__OFADD__(*v35, 1))
            {
              goto LABEL_71;
            }

            *v35 = v143;
          }

          while (--v141);
        }

        if (++v6 == v32)
        {
          goto LABEL_67;
        }
      }

      if (v138 != v136 || v138 >= &v136[8 * v132])
      {
        memmove(v138, v136, 8 * v132);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v131 = v137;
      v130 = v160;
LABEL_59:
      v139 = v129[5];
      if (!v139)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }

LABEL_67:
    v145 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v146 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v147 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v148 = String._bridgeToObjectiveC()();

    [v156 handleFailureInFunction:v146 file:v147 lineNumber:449 isFatal:0 format:v148 args:v145];

    swift_setDeallocating();
LABEL_68:
    swift_arrayDestroy();
    return (v161)(v162, v163);
  }

  v35 = swift_initStackObject();
  *(v35 + 1) = xmmword_10146C6B0;
  v68 = [v60 currentTool];
  v35[7] = sub_100006370(0, &qword_101A34308);
  v69 = sub_10000FE24(&qword_101A34310, &qword_101A34308);
  v35[4] = v68;
  v160 = v35 + 4;
  v35[8] = v69;
  v157 = objc_opt_self();
  v70 = [v157 _atomicIncrementAssertCount];
  v164 = [objc_allocWithZone(NSString) init];
  sub_100604538(v35, &v164);
  StaticString.description.getter();
  v158 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v71 = String._bridgeToObjectiveC()();

  v72 = [v71 lastPathComponent];

  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v76 = static OS_os_log.crlAssert;
  v77 = swift_initStackObject();
  *(v77 + 16) = xmmword_10146CA70;
  *(v77 + 56) = &type metadata for Int32;
  *(v77 + 64) = &protocol witness table for Int32;
  *(v77 + 32) = v70;
  v78 = sub_100006370(0, &qword_1019F4D30);
  *(v77 + 96) = v78;
  v79 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
  *(v77 + 104) = v79;
  v80 = v158;
  *(v77 + 72) = v158;
  *(v77 + 136) = &type metadata for String;
  v81 = sub_1000053B0();
  *(v77 + 112) = v73;
  *(v77 + 120) = v75;
  *(v77 + 176) = &type metadata for UInt;
  *(v77 + 184) = &protocol witness table for UInt;
  *(v77 + 144) = v81;
  *(v77 + 152) = 451;
  v82 = v164;
  *(v77 + 216) = v78;
  *(v77 + 224) = v79;
  *(v77 + 192) = v82;
  v83 = v80;
  v84 = v82;
  v85 = static os_log_type_t.error.getter();
  sub_100005404(v76, &_mh_execute_header, v85, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v77);
  swift_setDeallocating();
  v159 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v86 = static os_log_type_t.error.getter();
  sub_100005404(v76, &_mh_execute_header, v86, "Unexpected tool for erase! %@", 29, 2, v35);

  type metadata accessor for __VaListBuilder();
  v87 = swift_allocObject();
  v87[2] = 8;
  v87[3] = 0;
  v88 = v87 + 3;
  v87[4] = 0;
  v87[5] = 0;
  v32 = v35[2];
  if (!v32)
  {
LABEL_39:
    v106 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v107 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v108 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v109 = String._bridgeToObjectiveC()();

    [v157 handleFailureInFunction:v107 file:v108 lineNumber:451 isFatal:0 format:v109 args:v106];

    swift_setDeallocating();
    goto LABEL_68;
  }

  v89 = 0;
  v6 = 40;
  while (1)
  {
    sub_100020E58(&v160[5 * v89], v160[5 * v89 + 3]);
    v90 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v91 = *v88;
    v92 = *(v90 + 16);
    v93 = __OFADD__(*v88, v92);
    v94 = *v88 + v92;
    if (v93)
    {
      break;
    }

    v95 = v87[4];
    if (v95 >= v94)
    {
      goto LABEL_31;
    }

    if (v95 + 0x4000000000000000 < 0)
    {
      goto LABEL_74;
    }

    v96 = v87[5];
    if (2 * v95 > v94)
    {
      v94 = 2 * v95;
    }

    v87[4] = v94;
    if ((v94 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_75;
    }

    v97 = v35;
    v98 = v90;
    v99 = swift_slowAlloc();
    v100 = v99;
    v87[5] = v99;
    if (v96)
    {
      if (v99 != v96 || v99 >= &v96[8 * v91])
      {
        memmove(v99, v96, 8 * v91);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v90 = v98;
      v35 = v97;
      v6 = 40;
LABEL_31:
      v100 = v87[5];
      if (!v100)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }

    v90 = v98;
    v35 = v97;
    v6 = 40;
    if (!v100)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_32:
    v102 = *(v90 + 16);
    if (v102)
    {
      v103 = (v90 + 32);
      v104 = *v88;
      while (1)
      {
        v105 = *v103++;
        *&v100[8 * v104] = v105;
        v104 = *v88 + 1;
        if (__OFADD__(*v88, 1))
        {
          break;
        }

        *v88 = v104;
        if (!--v102)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_71:
      __break(1u);
      break;
    }

LABEL_16:

    if (++v89 == v32)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  swift_once();
LABEL_7:
  v37 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_10146CA70;
  *(v38 + 56) = &type metadata for Int32;
  *(v38 + 64) = &protocol witness table for Int32;
  *(v38 + 32) = v32;
  v39 = sub_100006370(0, &qword_1019F4D30);
  *(v38 + 96) = v39;
  v40 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
  *(v38 + 104) = v40;
  v41 = v151;
  *(v38 + 72) = v151;
  *(v38 + 136) = &type metadata for String;
  v42 = sub_1000053B0();
  v43 = v150;
  *(v38 + 112) = v35;
  *(v38 + 120) = v43;
  *(v38 + 176) = &type metadata for UInt;
  *(v38 + 184) = &protocol witness table for UInt;
  *(v38 + 144) = v42;
  *(v38 + 152) = 444;
  v44 = v164;
  *(v38 + 216) = v39;
  *(v38 + 224) = v40;
  *(v38 + 192) = v44;
  v45 = v41;
  v46 = v44;
  v47 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v47, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v38);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v48 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v48, "Should only use pixel eraser for fixed width bitmap erase", 57, 2, _swiftEmptyArrayStorage);

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

  [v152 handleFailureInFunction:v51 file:v52 lineNumber:444 isFatal:0 format:v53 args:v50];

  v20 = v153;
LABEL_8:
  PKToolPickerEraserItem.eraserTool.getter();
  PKEraserTool.width.getter();
  v55 = v54;
  (v157)(v6, v160);
  v56 = [v20 toolkitUIState];
  sub_100F15C50(v56, v55);
  v58 = v57;

  [v155 setScaledWidthForSlicingEraser:v58];
  return (v161)(v162, v163);
}

double sub_10130C17C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), double (*a5)(uint64_t))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = a4(v9);
  v13 = a5(v12);
  (*(v8 + 8))(v11, v7);
  return v13;
}

unint64_t sub_10130C2B8()
{
  result = qword_101A342E0;
  if (!qword_101A342E0)
  {
    type metadata accessor for PKInkingTool.InkType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A342E0);
  }

  return result;
}

uint64_t sub_10130C310(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PKInkingTool.InkType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v19 - v9;
  v11 = sub_1013080D8();
  [a2 opacityForToolType:v11];
  v13 = v12;
  v14 = [a2 colorForToolType:v11];
  v15 = [v14 colorWithAlphaComponent:v13];

  v16 = [v15 UIColor];
  [a2 strokeWidthForToolType:v11];
  (*(v5 + 104))(v10, enum case for PKInkingTool.InkType.reed(_:), v4);
  sub_10130C2B8();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v19[2] == v19[0] && v19[3] == v19[1])
  {
    (*(v5 + 8))(v10, v4);

LABEL_5:
    [a2 azimuthForToolType:6];
    goto LABEL_6;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  (*(v5 + 8))(v10, v4);

  if (v17)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_100006370(0, &qword_101A34300);
  (*(v5 + 16))(v8, a1, v4);
  return PKToolPickerInkingItem.init(type:color:width:azimuth:identifier:)();
}

id sub_10130C5FC(void *a1)
{
  v2 = type metadata accessor for PKEraserTool.EraserType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = [a1 eraserToolErasesWholeObjects];
  v10 = &enum case for PKEraserTool.EraserType.vector(_:);
  if (!v9)
  {
    v10 = &enum case for PKEraserTool.EraserType.fixedWidthBitmap(_:);
  }

  (*(v3 + 104))(v8, *v10, v2);
  result = [a1 strokeWidthIndexForToolType:9];
  if (result > 4)
  {
    __break(1u);
  }

  else
  {
    sub_100006370(0, &qword_101A342F8);
    (*(v3 + 16))(v6, v8, v2);
    v12 = PKToolPickerEraserItem.init(type:width:)();
    (*(v3 + 8))(v8, v2);
    return v12;
  }

  return result;
}

uint64_t sub_10130C7B4(void *a1)
{
  v2 = type metadata accessor for PKToolPickerCustomItem.Configuration();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  PKToolPickerCustomItem.Configuration.init(identifier:name:)();
  PKToolPickerCustomItem.Configuration.imageProvider.setter();
  [a1 opacityForToolType:8];
  v14 = v13;
  v15 = [a1 colorForToolType:8];
  v16 = [v15 colorWithAlphaComponent:v14];

  v17 = [v16 UIColor];
  PKToolPickerCustomItem.Configuration.defaultColor.setter();
  PKToolPickerCustomItem.Configuration.allowsColorSelection.setter();
  sub_100006370(0, &unk_101A23260);
  (*(v3 + 16))(v6, v8, v2);
  v18 = PKToolPickerCustomItem.init(configuration:)();
  (*(v3 + 8))(v8, v2);
  return v18;
}

uint64_t sub_10130CA64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v10 = *(v6 + 24);
  aBlock = *(v6 + 16);
  v94 = v10;

  v11._countAndFlagsBits = 0x657361422FLL;
  v11._object = 0xE500000000000000;
  String.append(_:)(v11);
  v12 = String._bridgeToObjectiveC()();

  v13 = objc_opt_self();
  v14 = [v13 imageNamed:v12];

  v15 = *(v6 + 24);
  aBlock = *(v6 + 16);
  v94 = v15;

  v16._countAndFlagsBits = 0x6B73614D7069542FLL;
  v16._object = 0xE800000000000000;
  String.append(_:)(v16);
  v17 = String._bridgeToObjectiveC()();

  v91 = [v13 imageNamed:v17];

  v18 = *(v6 + 24);
  aBlock = *(v6 + 16);
  v94 = v18;

  v19._countAndFlagsBits = 0x746E6F437069542FLL;
  v19._object = 0xEB0000000072756FLL;
  String.append(_:)(v19);
  v20 = String._bridgeToObjectiveC()();

  v89 = [v13 imageNamed:v20];

  v21 = *(v6 + 24);
  aBlock = *(v6 + 16);
  v94 = v21;

  v22._countAndFlagsBits = 0x73614D646E61422FLL;
  v22._object = 0xE90000000000006BLL;
  String.append(_:)(v22);
  v23 = String._bridgeToObjectiveC()();

  v88 = [v13 imageNamed:v23];

  v24 = *(v6 + 24);
  aBlock = *(v6 + 16);
  v94 = v24;

  v25._countAndFlagsBits = 0x6E6F43646E61422FLL;
  v25._object = 0xEC00000072756F74;
  String.append(_:)(v25);
  v26 = String._bridgeToObjectiveC()();

  v27 = [v13 imageNamed:v26];

  if (!v14)
  {
    v82 = v27;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v29 = *(v6 + 24);
    aBlock = *(v6 + 16);
    v94 = v29;

    v30._countAndFlagsBits = 0x657361422FLL;
    v30._object = 0xE500000000000000;
    String.append(_:)(v30);
    v31 = aBlock;
    v34 = v94;
    *(inited + 56) = &type metadata for String;
    v32 = sub_1000053B0();
    *(inited + 32) = v31;
    v33 = inited + 32;
    v87 = v32;
    *(inited + 64) = v32;
    *(inited + 40) = v34;
    v81 = objc_opt_self();
    LODWORD(v34) = [v81 _atomicIncrementAssertCount];
    aBlock = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &aBlock);
    StaticString.description.getter();
    v85 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    v36 = [v35 lastPathComponent];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_37;
    }

    while (1)
    {
      v40 = static OS_os_log.crlAssert;
      v41 = swift_initStackObject();
      *(v41 + 16) = xmmword_10146CA70;
      *(v41 + 56) = &type metadata for Int32;
      *(v41 + 64) = &protocol witness table for Int32;
      *(v41 + 32) = v34;
      v42 = sub_100006370(0, &qword_1019F4D30);
      *(v41 + 96) = v42;
      v43 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
      *(v41 + 72) = v85;
      *(v41 + 136) = &type metadata for String;
      *(v41 + 144) = v87;
      *(v41 + 104) = v43;
      *(v41 + 112) = v37;
      *(v41 + 120) = v39;
      *(v41 + 176) = &type metadata for UInt;
      *(v41 + 184) = &protocol witness table for UInt;
      *(v41 + 152) = 71;
      v44 = aBlock;
      *(v41 + 216) = v42;
      *(v41 + 224) = v43;
      *(v41 + 192) = v44;
      v45 = v85;
      v46 = v44;
      v47 = static os_log_type_t.error.getter();
      sub_100005404(v40, &_mh_execute_header, v47, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v41);
      swift_setDeallocating();
      v85 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v48 = static os_log_type_t.error.getter();
      sub_100005404(v40, &_mh_execute_header, v48, "Unable to load baseImage for tool %{public}@", 44, 2, inited);

      type metadata accessor for __VaListBuilder();
      v34 = swift_allocObject();
      v34[2] = 8;
      v34[3] = 0;
      v49 = v34 + 3;
      v34[4] = 0;
      v34[5] = 0;
      v87 = inited;
      v50 = *(inited + 16);
      v51 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
      if (!v50)
      {
LABEL_30:
        v67 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v68 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v69 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v70 = String._bridgeToObjectiveC()();

        [v81 handleFailureInFunction:v68 file:v69 lineNumber:71 isFatal:0 format:v70 args:v67];

        swift_setDeallocating();
        swift_arrayDestroy();
        v14 = [objc_allocWithZone(v51[90]) init];

        return v14;
      }

      v39 = 0;
      inited = 40;
      while (1)
      {
        v52 = (v33 + 40 * v39);
        v37 = v52[3];
        sub_100020E58(v52, v37);
        v53 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v54 = *v49;
        v55 = *(v53 + 16);
        v56 = __OFADD__(*v49, v55);
        v57 = *v49 + v55;
        if (v56)
        {
          break;
        }

        v58 = v34[4];
        if (v58 >= v57)
        {
          goto LABEL_22;
        }

        if (v58 + 0x4000000000000000 < 0)
        {
          goto LABEL_35;
        }

        v37 = v34[5];
        if (2 * v58 > v57)
        {
          v57 = 2 * v58;
        }

        v34[4] = v57;
        if ((v57 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_36;
        }

        v59 = v53;
        v60 = swift_slowAlloc();
        v61 = v60;
        v34[5] = v60;
        if (v37)
        {
          if (v60 != v37 || v60 >= &v37[8 * v54])
          {
            memmove(v60, v37, 8 * v54);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v53 = v59;
          v51 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
LABEL_22:
          v61 = v34[5];
          if (!v61)
          {
            goto LABEL_29;
          }

          goto LABEL_23;
        }

        v53 = v59;
        v51 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
        if (!v61)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_23:
        v63 = *(v53 + 16);
        if (v63)
        {
          v64 = (v53 + 32);
          v65 = *v49;
          while (1)
          {
            v66 = *v64++;
            *&v61[8 * v65] = v66;
            v65 = *v49 + 1;
            if (__OFADD__(*v49, 1))
            {
              break;
            }

            *v49 = v65;
            if (!--v63)
            {
              goto LABEL_7;
            }
          }

          __break(1u);
          break;
        }

LABEL_7:

        if (++v39 == v50)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
    }
  }

  if (*(v6 + 32))
  {

    return v14;
  }

  [v14 size];
  v83 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v71, v72}];
  v73 = swift_allocObject();
  v73[2] = v14;
  v73[3] = a1;
  v73[4] = v91;
  v73[5] = v89;
  v73[6] = v88;
  v73[7] = v27;
  v73[8] = v8;
  v74 = swift_allocObject();
  *(v74 + 16) = a4;
  *(v74 + 24) = v73;
  v97 = a5;
  v98 = v74;
  aBlock = _NSConcreteStackBlock;
  v94 = *"";
  v95 = sub_1006DE5CC;
  v96 = a6;
  v75 = _Block_copy(&aBlock);
  v76 = a1;
  v92 = v91;
  v90 = v89;
  v77 = v88;
  v78 = v27;

  v79 = v14;

  v14 = [v83 imageWithActions:v75];

  _Block_release(v75);
  LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();

  if ((v75 & 1) == 0)
  {
    return v14;
  }

  __break(1u);
  return result;
}

void sub_10130D430(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  [a1 size];
  v15 = v14;
  v17 = v16;
  [a1 drawInRect:{0.0, 0.0, v14, v16}];
  if (!a2)
  {
    return;
  }

  v18 = a2;
  v19 = [v18 colorWithAlphaComponent:1.0];
  if (a3 && a4)
  {
    v20 = a3;
    v21 = a4;
    v22 = [v20 imageWithTintColor:v19];
    [v22 drawInRect:{0.0, 0.0, v15, v17}];
    [v21 drawInRect:{0.0, 0.0, v15, v17}];
  }

  if (a5 && a6)
  {
    v23 = a5;
    v24 = a6;
    v25 = [v23 imageWithTintColor:v19];
    [v25 size];
    v27 = v26;
    v28 = *(a7 + 40);
    [v25 size];
    v30 = v29;
    [v25 drawInRect:{0.0, v28, v29, v27}];
    [v24 drawInRect:{0.0, v28, v30, v27}];
  }

  v31 = [objc_allocWithZone(UILabel) init];
  [v31 setClipsToBounds:0];
  v32 = [objc_opt_self() systemFontOfSize:8.0];
  [v31 setFont:v32];

  v33 = [objc_opt_self() secondaryLabelColor];
  [v31 setTextColor:v33];

  v46 = 0.0;
  [v18 getWhite:0 alpha:&v46];
  v34 = round(v46 * 100.0);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v34 <= -1.0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (v34 >= 256.0)
  {
    goto LABEL_18;
  }

  v35 = v34;
  if (v34 < 0x64)
  {
    sub_1005B981C(&qword_1019F54E0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_10146C6B0;
    *(v37 + 56) = &type metadata for UInt8;
    *(v37 + 64) = &protocol witness table for UInt8;
    *(v37 + 32) = v35;
    static String.localizedStringWithFormat(_:_:)();

    v36 = String._bridgeToObjectiveC()();
  }

  else
  {
    v36 = String._bridgeToObjectiveC()();
  }

  [v31 setText:v36];

  [v31 sizeToFit];
  [v31 frame];
  v39 = v38;
  v41 = v40;
  [a1 size];
  v43 = v42;
  [v31 frame];
  v45 = v44;

  [v31 drawTextInRect:{(v43 - v45) * 0.5, *(a7 + 48), v39, v41}];
}

void sub_10130D954()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10130DA10(void *a1)
{
  v2 = a1;
  v3 = [sub_1000C59B8() packedBacktraceString];
  sub_1000C5950();
  sub_1000C597C(&_mh_execute_header, v4, v5, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v6, v7, v8, v9, v10);
}

void sub_10130DAC4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10130DBA8()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Masquerading font with no localized name found: %@");
}

void sub_10130DC88()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000C5A00();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to acquire a localized family name for: %@");
}

void sub_10130DD54()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10130DE38()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10130DF08()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Need a file URL", v2, v3, v4, v5, v6);
}

void sub_10130DFCC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Shouldn't open the archive if it's already open.", v2, v3, v4, v5, v6);
}

void sub_10130E0A4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a3 domain];
  [a3 code];
  sub_1000C8904();
  sub_1000C88E0();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x34u);
}

void sub_10130E1BC(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  sub_1000C8938();
  sub_1000C88E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10130E2B0(void *a1, void *a2)
{
  v4 = a1;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [sub_1000C59B8() domain];
  [a2 code];
  sub_1000C8904();
  sub_1000C88E0();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x2Au);
}

void sub_10130E39C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d File should be opened.", v2, v3, v4, v5, v6);
}

void sub_10130E44C(void *a1)
{
  v1 = a1;
  v7 = +[CRLAssertionHandler packedBacktraceString];
  sub_1000C88E0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10130E534(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 path];
  sub_1000C8938();
  sub_1000C88E0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10130E610(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  sub_1000C8938();
  sub_1000C88E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10130E6B4(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  sub_1000C8938();
  sub_1000C88E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10130E7C4()
{
  sub_1000C5968();
  v3 = "[CRLWPLayoutManager initWithStorage:owner:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutManager.mm";
  v6 = 1024;
  v7 = 110;
  v8 = v0;
  v9 = "_topicNumbers";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10130E89C()
{
  sub_1000CAA3C();
  sub_1000CAA24(v1, v2, v3, 1.5047e-36);
  sub_1000CAA4C(&_mh_execute_header, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v4, v5);
}

void sub_10130E908()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot initialize with a nil storage.", v2, v3, v4, v5, v6);
}

void sub_10130E9CC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Layout manager mismatch", v2, v3, v4, v5, v6);
}

void sub_10130EAA4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Autogrow with multiple columns is not supported", v2, v3, v4, v5, v6);
}

void sub_10130EB7C(void *a1, uint64_t a2, int a3, NSObject *a4)
{
  *a2 = 67110146;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2082;
  *(a2 + 10) = "+[CRLWPLayoutManager fixColumnBoundsForTarget:storage:charIndex:firstColumnIndex:precedingHeight:height:alreadyHasMargins:styleProvider:]";
  *(a2 + 18) = 2082;
  *(a2 + 20) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutManager.mm";
  *(a2 + 28) = 1024;
  *(a2 + 30) = 562;
  *(a2 + 34) = 2114;
  *(a2 + 36) = a1;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d newColumnCount shouldn't be 0. %{public}@", a2, 0x2Cu);
}

void sub_10130EC78()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for 'columnsArray'", v2, v3, v4, v5, v6);
}

void sub_10130ED3C(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLSwappableAxesGeometry knobTagForStandardKnobTag:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSwappableAxesGeometry.m";
  v7 = 1024;
  v8 = 88;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected knob tag", v2, 0x22u);
}

void sub_10130EE10(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, 0x12u);
}

void sub_10130EEE8()
{
  sub_1000C5968();
  v3 = "[CRLDragAndDropCanvasHighlightDecorator beginHighlightingWithPath:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropCanvasHighlightDecorator.m";
  v6 = 1024;
  v7 = 78;
  v8 = v0;
  v9 = "mDragAndDropHighlightRenderable";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10130EFC0(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_1000C5950();
  sub_1000C597C(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_10130F078()
{
  sub_1000C5968();
  v3 = "[CRLDragAndDropCanvasHighlightDecorator endHighlighting]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropCanvasHighlightDecorator.m";
  v6 = 1024;
  v7 = 95;
  v8 = v0;
  v9 = "mDragAndDropHighlightRenderable";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10130F178(int a1, NSObject *a2)
{
  v2[0] = 67110402;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[CRLBoardItemFactoryObjCHelper p_bezierAndStrokePathDataSubpathsByClippingBezier:andStrokePathData:fromOriginalPKStroke:toPath:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactoryObjCHelper.m";
  v7 = 1024;
  v8 = 202;
  v9 = 2082;
  v10 = "BOOLeanPathMap.elementCount";
  v11 = 2082;
  v12 = "clippedPath.elementCount";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected equality between %{public}s and %{public}s", v2, 0x36u);
}

void sub_10130F2F8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d can't create an image pattern without an image", v2, v3, v4, v5, v6);
}

void sub_10130F3A8(void *a1)
{
  v2 = a1;
  v3 = [sub_1000C59B8() packedBacktraceString];
  sub_1000C5950();
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10130F464()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to get lightness of a nil color", v2, v3, v4, v5, v6);
}

void sub_10130F528()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to get lightness of a nil color", v2, v3, v4, v5, v6);
}

void sub_10130F690()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10130F914()
{
  sub_1000C5968();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10130FA9C(int a1, NSObject *a2)
{
  v3[0] = 67109378;
  v3[1] = a1;
  v4 = 2114;
  v5 = +[CRLAssertionHandler packedBacktraceString];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v3, 0x12u);
}

void sub_10130FB54()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to remove out of bounds segment index: %lu");
}

void sub_10130FC18()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to set title for out of bounds segment index: %lu");
}

void sub_10130FCDC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to get title for out of bounds segment index: %lu");
}

void sub_10130FDA0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to set image for out of bounds segment index: %lu");
}

void sub_10130FE64()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to get image for out of bounds segment index: %lu");
}

void sub_10130FF28()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to set width of bounds segment index: %lu");
}

void sub_10130FFEC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to get width for out of bounds segment index: %lu");
}

void sub_1013100B0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to set edge insets for out of bounds segment index: %lu");
}

void sub_101310174()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to get edge insets for out of bounds segment index: %lu");
}

void sub_101310238()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to set enabled state for out of bounds segment index: %lu");
}

void sub_1013102FC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_1000D4D3C();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to get enabled state for out of bounds segment index: %lu");
}

void sub_1013103D4()
{
  sub_1000C5968();
  sub_1000C59AC();
  v3 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m";
  v4 = 1024;
  v5 = 876;
  v6 = v0;
  v7 = "segment";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_1013104F8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Passing a crawlingDistance greater than the default may cause unexpected problems hit testing with some methods.", v2, v3, v4, v5, v6);
}

void sub_1013105D0(uint64_t *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  v6 = "[CRLBezierHitTester addPath:filled:pathID:crawlingDistance:clippedToRect:]";
  v7 = 2082;
  v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierHitTester.mm";
  v9 = 1024;
  v10 = 178;
  v11 = 2048;
  v12 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to add a path with pathID that already exists (%lu)", v4, 0x2Cu);
}

void sub_1013106CC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Tried to remove a path that is not in the hit tester.", v2, v3, v4, v5, v6);
}

void sub_101310790()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This method was not designed for use with filled paths.", v2, v3, v4, v5, v6);
}

void sub_101310854()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d -pathsCrossingPath:withSearchThreshold: does not support large crawling distances.", v2, v3, v4, v5, v6);
}

void sub_101310918()
{
  sub_1000C5968();
  v3 = "[CRLImageRepSizingState initWithDesiredSize:provider:maskPath:wideGamutCanvas:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepSizingState.m";
  v6 = 1024;
  v7 = 32;
  v8 = v0;
  v9 = "provider";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101310A04()
{
  sub_1000C5968();
  v3 = "[CRLImageRepSizingState generateSizedImage]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepSizingState.m";
  v6 = 1024;
  v7 = 59;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d wrong thread", v2, 0x22u);
}

void sub_101310BE4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d storage is nil", v2, v3, v4, v5, v6);
}

void sub_101310CA8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d storage is nil", v2, v3, v4, v5, v6);
}

void sub_101310EFC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not try to clip with null update rect", v2, v3, v4, v5, v6);
}

void sub_101310FC0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid line fragment range", v2, v3, v4, v5, v6);
}

void sub_101311084()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unexpected color fill", v2, v3, v4, v5, v6);
}

void sub_1013111C0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invisibles mismatch", v2, v3, v4, v5, v6);
}

void sub_101311284()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d mismatched adornment counts", v2, v3, v4, v5, v6);
}

void sub_101311370(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 67110146;
  HIDWORD(v3) = a2;
  *v4 = 2082;
  *&v4[2] = "+[CRLPasteboard pasteboardWithUniqueName]_block_invoke";
  *&v4[10] = 2082;
  *&v4[12] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard.m";
  *&v4[20] = 1024;
  *&v4[22] = 186;
  *&v4[26] = 2114;
  *&v4[28] = a1;
  sub_1000C5A14(&_mh_execute_header, a2, a3, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Pasteboard already exists with unique name %{public}@", v3, *v4, *&v4[8], *&v4[16], *&v4[24], *&v4[32]);
}

void sub_10131146C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to create pasteboard with name %{public}@", &v2, 0xCu);
}

void sub_1013114F8(void *a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 67110146;
  HIDWORD(v3) = a2;
  *v4 = 2082;
  *&v4[2] = "[CRLPasteboardUIPasteboard reloadPasteboardItemIndexCacheIfNeeded]";
  *&v4[10] = 2082;
  *&v4[12] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard.m";
  *&v4[20] = 1024;
  *&v4[22] = 884;
  *&v4[26] = 2048;
  *&v4[28] = *a1;
  sub_1000C5A14(&_mh_execute_header, a2, a3, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expected pasteboard item count should be zero, was %tu.", v3, *v4, *&v4[8], *&v4[16], *&v4[24], *&v4[32]);
}

void sub_1013117B0(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLDragAndDropInfo initWithPlatformDraggingInfo:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropInfo.m";
  v7 = 1024;
  v8 = 63;
  v9 = 2082;
  v10 = "_itemSource";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_1013118BC()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_1013119A0()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101311A84()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101311B68()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101311C4C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101311D30()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101311E50()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101311F34()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101312018()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101312104()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013121DC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013122A8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101312388()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101312454()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101312520()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101312600()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013126D8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013127C4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013128B0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10131297C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101312A7C()
{
  sub_1000C5968();
  v3 = "[CRLCanvasCommandSelectionBehavior initWithCanvasEditor:type:selectionPath:selectionFlags:commitSelectionFlags:forwardSelectionFlags:reverseSelectionFlags:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCanvasCommandSelectionBehavior.m";
  v6 = 1024;
  v7 = 26;
  v8 = v0;
  v9 = "editor";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101312B68()
{
  sub_1000C5968();
  v3 = "[CRLCanvasCommandSelectionBehavior initWithCanvasEditor:type:constructedInfos:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCanvasCommandSelectionBehavior.m";
  v6 = 1024;
  v7 = 95;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Constructed infos should not be provided for this selection type", v2, 0x22u);
}

void sub_101312C44(uint64_t *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  v6 = "[CRLPlatformControlState hash]";
  v7 = 2082;
  v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLPlatformControlState.m";
  v9 = 1024;
  v10 = 65;
  v11 = 2048;
  v12 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad value: %zd", v4, 0x2Cu);
}

void sub_101312D40()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d nil image is set", v2, v3, v4, v5, v6);
}

void sub_101312E18()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Only vector images are supported", v2, v3, v4, v5, v6);
}

void sub_101312EDC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Only vector images are supported", v2, v3, v4, v5, v6);
}

void sub_101312FA0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Don't have an image to use", v2, v3, v4, v5, v6);
}

void sub_101313078()
{
  sub_1000C5968();
  sub_1000C88F0();
}

void sub_101313150()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d called i_common init twice on same object!", v2, v3, v4, v5, v6);
}

void sub_101313214(uint64_t a1, int a2)
{
  v5[0] = 67110146;
  v5[1] = a2;
  v6 = 2082;
  v7 = "[CRLBitmapImageProvider isValid]_block_invoke_2";
  v8 = 2082;
  sub_1000C599C();
  v9 = 175;
  v10 = v2;
  v11 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Didn't update validation failure type during validation! isValid? %i", v5, 0x28u);
}

void sub_101313338()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d shouldn't be drawing an invalid image provider", v2, v3, v4, v5, v6);
}

void sub_1013133FC()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid image provider trying to render an image at natural size", v2, v3, v4, v5, v6);
}

void sub_1013134AC(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_10131357C()
{
  sub_1000C5968();
  v4 = "[CRLBitmapImageProvider cachedCGImageOfNearestSizeOrNULLPreferringSize:withContentsScaleProvider:]";
  v5 = v0;
  sub_1000C599C();
  v6 = 231;
  v7 = v1;
  v8 = "contentsScaleProvider";
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v3, 0x2Cu);
}

void sub_10131364C(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_101313708()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to get an image out of an invalid image provider.", v2, v3, v4, v5, v6);
}

void sub_1013137B8(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_101313874()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid image provider trying to render an image at natural size", v2, v3, v4, v5, v6);
}

void sub_101313924(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_1013139E0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid image provider trying to render an image at natural size", v2, v3, v4, v5, v6);
}

void sub_101313A90(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_101313B4C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d using context to determine requested image size. contents scale provider should be nil", v2, v3, v4, v5, v6);
}

void sub_101313BFC(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_100100F6C();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_101313D94()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should never load full-sized image if we have been asked to load the largest safe image!", v2, v3, v4, v5, v6);
}

void sub_101313E6C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should never load largestSafeImage if we can load the full-sized image!", v2, v3, v4, v5, v6);
}

void sub_101313F58()
{
  sub_1000C5968();
  v4 = "[CRLBitmapImageProvider p_newImageOfSize:fromSource:]";
  v5 = v0;
  sub_1000C599C();
  v6 = 1002;
  v7 = v1;
  v8 = "sourceRef";
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v3, 0x2Cu);
}

void sub_101314064(void *a1, uint64_t a2, int a3)
{
  sub_1000CAA24(a1, a2, a3, 1.5047e-36);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v4, 0x12u);
}

void sub_1013140D0(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "void nextPivotAndBlackVectors(CGPoint, CGPoint, CGPoint &, CGPoint &)";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageTracer.mm";
  v7 = 1024;
  v8 = 106;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unexpected pivot and black points while tracing", v2, 0x22u);
}

void sub_1013141B8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d iOS and QL do not support setting the guide color", v2, v3, v4, v5, v6);
}

void sub_101314290()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101314368()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101314440()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_1013144F0(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, 2u);
}

void sub_1013145C8()
{
  sub_10010A544();
  sub_1000C599C();
  sub_10010A558();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Guide state unexpected when begin alignment operation! %lu");
}

void sub_101314680(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, 2u);
}

void sub_101314758()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d beginning alignment with no reps", v2, v3, v4, v5, v6);
}

void sub_101314808(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, 2u);
}

void sub_1013148CC()
{
  sub_10010A544();
  sub_1000C599C();
  sub_10010A558();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Guide state unexpected when do second pass on begin generation! %lu");
}

void sub_1013149B0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Did not end previous alignment operation before beginning new one", v2, v3, v4, v5, v6);
}

void sub_101314A88()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101314B60()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101314C38(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  v10 = NSStringFromCGRect(v16);
  sub_1000C59AC();
  sub_10010A518();
  _os_log_error_impl(v11, v12, v13, v14, v15, 0x2Cu);
}

void sub_101314D84()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101314E34()
{
  v0 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v1, v2, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v3, v4, v5, v6, 2u);
}

void sub_101314F08()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempting to do guide operation for an unsupported knob type", v2, v3, v4, v5, v6);
}

void sub_101314FB8()
{
  v0 = +[CRLAssertionHandler packedBacktraceString];
  sub_10010A4F8();
  sub_100100F84(&_mh_execute_header, v1, v2, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v3, v4, v5, v6, 2u);
}

void sub_101315078()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_10131513C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, v3, v4, v5, v6);
}

void sub_101315200()
{
  sub_10010A544();
  sub_1000C599C();
  sub_10010A558();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Working on cancellation/cleanup when state doesn't expect it! %lu");
}

void sub_1013152D0()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unexpected edge type", v2, v3, v4, v5, v6);
}

void sub_101315394()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C5A14(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unexpected knob tag %zu");
}

void sub_10131546C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59F4();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101315530()
{
  sub_10010A598();
  v2 = &qword_101AD5A10;
  sub_10010A56C();
  if (!v3)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183CF38);
  }

  if (sub_10010A528())
  {
    sub_10010A508();
    sub_10010A518();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x22u);
  }

  sub_10010A56C();
  if (!v3)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183CF58);
  }

  if (sub_10010A528())
  {
    v11 = v0;
    v2 = [v1 + 1648 packedBacktraceString];
    sub_1000C5950();
    sub_10010A518();
    _os_log_error_impl(v12, v13, v14, v15, v16, 0x12u);
  }

  v4 = [sub_10010A588() stringWithUTF8String:"-[CRLCanvasGuideController p_indexToInsertGuide:inSortedArray:]"];
  v5 = [v2[101] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
  [sub_10010A578() handleFailureInFunction:? file:? lineNumber:? isFatal:? description:?];
}

void sub_1013156F0()
{
  sub_10010A598();
  v2 = &qword_101AD5A10;
  sub_10010A56C();
  if (!v3)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183CF78);
  }

  if (sub_10010A528())
  {
    sub_10010A508();
    sub_10010A518();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x22u);
  }

  sub_10010A56C();
  if (!v3)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183CF98);
  }

  if (sub_10010A528())
  {
    v11 = v0;
    v2 = [v1 + 1648 packedBacktraceString];
    sub_1000C5950();
    sub_10010A518();
    _os_log_error_impl(v12, v13, v14, v15, v16, 0x12u);
  }

  v4 = [sub_10010A588() stringWithUTF8String:"-[CRLCanvasGuideController p_guidesForOffset:predicate:inArray:]"];
  v5 = [v2[101] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
  [sub_10010A578() handleFailureInFunction:? file:? lineNumber:? isFatal:? description:?];
}

void sub_1013158B0()
{
  sub_10010A598();
  v2 = &qword_101AD5A10;
  sub_10010A56C();
  if (!v3)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183CFB8);
  }

  if (sub_10010A528())
  {
    sub_10010A508();
    sub_10010A518();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x22u);
  }

  sub_10010A56C();
  if (!v3)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183CFD8);
  }

  if (sub_10010A528())
  {
    v11 = v0;
    v2 = [v1 + 1648 packedBacktraceString];
    sub_1000C5950();
    sub_10010A518();
    _os_log_error_impl(v12, v13, v14, v15, v16, 0x12u);
  }

  v4 = [sub_10010A588() stringWithUTF8String:"-[CRLCanvasGuideController p_closestGuideForOffset:predicate:inArray:]"];
  v5 = [v2[101] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
  [sub_10010A578() handleFailureInFunction:? file:? lineNumber:? isFatal:? description:?];
}

void sub_101315A84()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Guide must have an associated spacing.", v2, v3, v4, v5, v6);
}

void sub_101315B48()
{
  sub_1000C5968();
  v3 = "[CRLiOSCanvasDragInteractionDelegate dragInteraction:prefersFullSizePreviewsForSession:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSCanvasDragInteractionDelegate.m";
  v6 = 1024;
  v7 = 131;
  v8 = v0;
  v9 = "canvasDragItem";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101315C34()
{
  sub_1000C5968();
  v3 = "[CRLiOSCanvasDragInteractionDelegate dragInteraction:sessionAllowsMoveOperation:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSCanvasDragInteractionDelegate.m";
  v6 = 1024;
  v7 = 138;
  v8 = v0;
  v9 = "canvasDragItem";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101315D34()
{
  sub_1000C5968();
  v2 = "[CRLPDFImageProvider i_commonInit]";
  sub_1000C88F0();
  v3 = 41;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d called i_common init twice on same object!", v1, 0x22u);
}

void sub_101315E04()
{
  sub_1000C5968();
  v2 = "[CRLPDFImageProvider drawImageInContext:rect:]";
  sub_1000C88F0();
  v3 = 104;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d shouldn't be drawing an invalid image provider", v1, 0x22u);
}

void sub_101315F24(void *a1)
{
  v2 = a1;
  v8 = [sub_1000C59B8() error];
  sub_1000CDD68();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Cu);
}

void sub_101316048()
{
  sub_1000C5968();
  v3 = "[CRLMoviePosterImageGenerator p_copyCGImageUsingAssetImageGeneratorForTime:error:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMoviePosterImageGenerator.m";
  v6 = 1024;
  v7 = 165;
  v8 = v0;
  v9 = "_assetImageGenerator";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101316134()
{
  sub_1000C5968();
  v3 = "[CRLMoviePosterImageGenerator generateCGImageAsynchronouslyForTime:completionHandler:]";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMoviePosterImageGenerator.m";
  v6 = 1024;
  v7 = 214;
  v8 = v0;
  v9 = "handler";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_101316220()
{
  sub_1000C5968();
  v2 = "[CRLSwatchRenderingOperation provideSwatchForLaterDelivery:]";
  sub_1000C88F0();
  v3 = 286;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not have two swatches!", v1, 0x22u);
}

void sub_1013162F0()
{
  sub_1000C5968();
  v2 = "[CRLSwatchRenderingOperation doWorkWithReadLock]";
  sub_1000C88F0();
  v3 = 303;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Subclasses must override", v1, 0x22u);
}

void sub_1013163D4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013164C4()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1013165A0()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100114F34();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101316670()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10131673C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101316808()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013168E8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100114F34();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void sub_101316A78(void *a1)
{
  v2 = a1;
  v3 = [sub_1000C59B8() p_libraryURL];
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100114F34();
  sub_1000CDD68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_101316C28()
{
  sub_1000C59E0();
  sub_1000C59AC();
  sub_1000D4D50();
  sub_100114F34();
  sub_100114F44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101316CF8()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101316DE8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101316EB4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101316F94()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101317088()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10131717C()
{
  sub_1000C5968();
  sub_1000C599C();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_101317314()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013173F4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013174D4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1013175B4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101317694()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000CEEE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_101317774(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLTextInputResponder(ObjCExtension) forwardInvocation:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLTextInputResponder.m";
  v7 = 1024;
  v8 = 62;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The OS undo gestures should not be sending us selectors we can't respond to!", v2, 0x22u);
}

void sub_10131785C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method", v2, v3, v4, v5, v6);
}

void sub_101317920()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method", v2, v3, v4, v5, v6);
}

void sub_1013179E4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method", v2, v3, v4, v5, v6);
}

void sub_101317AA8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method", v2, v3, v4, v5, v6);
}

void sub_101317B6C()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method", v2, v3, v4, v5, v6);
}

void sub_101317C30()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method", v2, v3, v4, v5, v6);
}

void sub_101317CF4()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method", v2, v3, v4, v5, v6);
}

void sub_101317DB8()
{
  sub_1000C5968();
  sub_1000C88F0();
  sub_1000C891C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method", v2, v3, v4, v5, v6);
}

void sub_101317E90(uint64_t a1, int a2)
{
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  sub_1000C59AC();
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShaderManager.m";
  v7 = 1024;
  v8 = 57;
  v9 = 2112;
  v10 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create library, error %@", v4, 0x2Cu);
}

void sub_101317F84()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_101318058()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10131812C()
{
  sub_1000C5968();
  sub_1000C59AC();
  sub_1000C599C();
  sub_1000C59C4(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}