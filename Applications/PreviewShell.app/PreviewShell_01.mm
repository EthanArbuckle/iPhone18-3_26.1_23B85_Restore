uint64_t sub_100018B08(unsigned __int8 *a1)
{
  v2 = sub_100004C60(&qword_10006F468, &qword_10004E1C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_100004C60(&qword_10006F470, &qword_10004E1C8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for ContentIdentifier();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  updated = type metadata accessor for UpdateSetupPayload();
  v11 = *(updated - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(updated);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  ShellUpdatePayload.setupPayload.getter();
  UpdateSetupPayload.shellDidLoadStaticProducts.setter();
  ShellUpdatePayload.contentIdentifier.getter();
  ShellUpdatePayload.hostUpdateSeed.getter();
  (*(v11 + 16))(v5, v14, updated);
  (*(v11 + 56))(v5, 0, 1, updated);
  AgentUpdate.Context.init(contentIdentifier:updateSeed:setupPayload:)();
  return (*(v11 + 8))(v14, updated);
}

uint64_t sub_100018D48(uint64_t a1, void *a2, uint64_t a3)
{
  v17[0] = a3;
  v17[1] = a1;
  v4 = type metadata accessor for PreviewType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PropertyList();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[4];
  sub_10000E678(a2, a2[3]);
  ShellUpdatePayload.contentPayload.getter();
  ShellUpdatePayload.previewType.getter();
  v15 = dispatch thunk of NonUIContentProviderBox.performUpdate(using:updatePayload:previewType:agentContext:)();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  return v15;
}

uint64_t sub_100018F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v5 = type metadata accessor for AgentUpdate.Context();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for PreviewType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShellUpdatePayload.previewType.getter();
  sub_10001C220(v16, a4);
  (*(v13 + 8))(v16, v12);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  (*(v6 + 16))(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v18, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_100004C60(&qword_10006F438, &qword_10004E188);
  v20 = Future.then<A>(dsoHandle:file:line:column:function:priority:transform:)();

  sub_10000BF34(v11, &qword_10006F450, &qword_10004E198);
  return v20;
}

uint64_t sub_1000191F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10001921C, 0, 0);
}

uint64_t sub_10001921C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(sub_100004C60(&qword_10006F438, &qword_10004E188) + 48);
  v5 = type metadata accessor for AgentUpdate.Context();
  (*(*(v5 - 8) + 16))(v3, v2, v5);
  sub_10000E808(v1, v3 + v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1000192E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a1;
  v22 = a6;
  v20 = a5;
  v9 = type metadata accessor for PropertyList();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[3];
  v14 = a2[4];
  sub_10000E678(a2, v15);
  ShellUpdatePayload.contentPayload.getter();
  updated = ShellUpdatePayload.controlStates.getter();
  v17 = (*(v14 + 48))(a3, a4, v20, v22, v13, updated, v21, v15, v14);

  (*(v10 + 8))(v13, v9);
  return v17;
}

char *sub_100019444(int a1)
{
  v4 = type metadata accessor for ExecutionLane();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceType();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Callsite();
  v42 = *(v13 - 8);
  v14 = *(v42 + 64);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100018960(a1);
  if (!v2)
  {
    v37 = v8;
    v38 = v5;
    v39 = v4;
    v40 = 0;
    swift_beginAccess();
    v43 = *(v1 + 24);

    v17 = Callsite.init(_:_:_:_:)();
    __chkstk_darwin(v17);
    v36 = a1;
    sub_100004C60(&qword_10006F3F0, &qword_10004E160);
    sub_10001D028(&qword_10006F3F8, &qword_10006F3F0, &qword_10004E160);
    default argument 1 of Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();
    Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();

    v18 = v42 + 8;
    v19 = *(v42 + 8);
    v19(v16, v13);

    Agent.deviceType.getter();
    v20 = type metadata accessor for SimulatorDevicePayload();
    v21 = (*(*(v20 - 8) + 48))(v12, 1, v20);
    v22 = v16;
    v34 = v19;
    v35 = v13;
    v42 = v18;
    if (v21 == 1)
    {
      if (qword_10006E600 != -1)
      {
        swift_once();
      }

      v23 = qword_100073700;
      swift_beginAccess();
      v24 = *(v23 + 16);

      v26 = v40;
      v27 = sub_100015BAC(v25);
      v40 = v26;
    }

    else
    {
      if (qword_10006E5B8 != -1)
      {
        swift_once();
      }

      Callsite.init(_:_:_:_:)();
      assertUnreachable(callsite:)();
      v19(v16, v13);
      sub_10001DDD8(v12, &type metadata accessor for DeviceType);
      v27 = &_swiftEmptyArrayStorage;
    }

    v28 = v36;
    v44 = v27;
    v29 = Callsite.init(_:_:_:_:)();
    __chkstk_darwin(v29);
    sub_100004C60(&qword_10006F400, &qword_10004E168);
    sub_10001D028(&qword_10006F408, &qword_10006F400, &qword_10004E168);
    default argument 1 of Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();
    Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();
    v34(v22, v35);

    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v41;

    v31 = v37;
    static ExecutionLane.any.getter();
    v8 = Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

    (*(v38 + 8))(v31, v39);
  }

  return v8;
}

uint64_t sub_100019A90(uint64_t a1, int a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v8, v9, "Canvases now stopped for %{public}d, killing process", v10, 8u);
  }

  (*(v4 + 8))(v7, v3);
  return Agent.kill()();
}

uint64_t sub_100019BE8(uint64_t a1)
{
  v2 = v1;
  v30 = type metadata accessor for BatchIdentity();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v8 = PurgePayload.workspaceID.getter();
  v31 = v9;
  v32 = v8;
  if (qword_10006E5B8 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    swift_beginAccess();
    v29 = v2;
    v10 = *(v2 + 16);
    v11 = *(v10 + 64);
    v33 = &_swiftEmptyArrayStorage;
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v11;
    v2 = (v12 + 63) >> 6;
    v15 = (v4 + 8);

    v16 = 0;
    if (v14)
    {
      while (1)
      {
LABEL_11:
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v4 = *(*(v10 + 56) + ((v16 << 9) | (8 * v18)));

        Agent.batchIdentity.getter();
        v19 = BatchIdentity.workspaceID.getter();
        v21 = v20;
        (*v15)(v7, v30);
        if (v19 == v32 && v21 == v31)
        {

LABEL_15:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v23 = v33[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (!v14)
          {
            break;
          }
        }

        else
        {
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v22)
          {
            goto LABEL_15;
          }

          if (!v14)
          {
            break;
          }
        }
      }
    }

LABEL_7:
    v17 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      break;
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  if (v17 < v2)
  {
    v14 = *(v10 + 64 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v25 = v33;
  __chkstk_darwin(v24);
  v26 = v29;
  *(&v28 - 2) = v28;
  *(&v28 - 1) = v26;
  sub_100015A98(sub_10001C948, (&v28 - 4), v25);
}

uint64_t sub_100019EC8(uint64_t *a1)
{
  v2 = type metadata accessor for AgentDescriptor.Bundle();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (PurgePayload.killAgents.getter())
  {
    Agent.kill()();
  }

  v8[1] = v6;
  type metadata accessor for Agent();
  sub_10001D9B4(&qword_10006F3E8, &type metadata accessor for Agent);
  Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  Agent.agentBundle.getter();
  swift_beginAccess();
  sub_100006478(0, v5);
  return swift_endAccess();
}

uint64_t sub_10001A030(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AgentDescriptor.Bundle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  AgentDescriptor.Bundle.init(bundleID:path:)();
  swift_beginAccess();
  v10 = *(v2 + 16);
  if (*(v10 + 16) && (v11 = sub_1000070AC(v9), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    v14 = *(v6 + 8);

    v14(v9, v5);
  }

  else
  {
    swift_endAccess();
    v13 = type metadata accessor for AgentLocatingError();
    sub_10001D9B4(&qword_10006F3E0, &type metadata accessor for AgentLocatingError);
    swift_allocError();
    *v15 = a1;
    v15[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v16 = *(v6 + 8);

    v16(v9, v5);
  }

  return v13;
}

uint64_t sub_10001A214(uint64_t a1)
{
  v3 = type metadata accessor for AgentDescriptor.Bundle();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AgentDescriptor.bundle.getter();
  swift_beginAccess();
  v8 = *(v1 + 16);
  if (*(v8 + 16) && (v9 = sub_1000070AC(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    v12 = *(v4 + 8);

    v12(v7, v3);
  }

  else
  {
    swift_endAccess();
    (*(v4 + 8))(v7, v3);
    v11 = type metadata accessor for AgentLocatingError();
    sub_10001D9B4(&qword_10006F3E0, &type metadata accessor for AgentLocatingError);
    swift_allocError();
    v14 = v13;
    v15 = type metadata accessor for AgentDescriptor();
    (*(*(v15 - 8) + 16))(v14, a1, v15);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_10001A430@<X0>(uint64_t *a1@<X8>)
{
  if (qword_10006E5F8 != -1)
  {
    swift_once();
  }

  v2 = qword_10006F690;
  if (byte_10006F698)
  {
    swift_errorRetain();
    sub_100004C60(&qword_10006E8E8, &qword_10004D780);
    return swift_willThrowTypedImpl();
  }

  else
  {
    a1[3] = type metadata accessor for StaticPreviewCanvas();
    a1[4] = sub_10001D9B4(&qword_10006F460, type metadata accessor for StaticPreviewCanvas);
    *a1 = v2;
  }
}

uint64_t sub_10001A538()
{
  v0 = type metadata accessor for Callsite();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BatchIdentity();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006E5B8 != -1)
  {
    swift_once();
  }

  Agent.batchIdentity.getter();
  Callsite.init(_:_:_:_:)();
  assertUnreachable(callsite:)();
  (*(v1 + 8))(v4, v0);
  sub_10001D534();
  swift_allocError();
  swift_willThrow();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10001A730()
{
  v0 = type metadata accessor for ExecutionLane();
  v40 = *(v0 - 8);
  v41 = v0;
  v1 = *(v40 + 64);
  __chkstk_darwin(v0);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DeviceType();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for PreviewCache.Replayable(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v38 = &v37 - v17;
  v18 = type metadata accessor for Callsite();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v19 + 8))(v22, v18);
  if (qword_10006E608 != -1)
  {
    swift_once();
  }

  v23 = qword_100073718;
  if (qword_100073718)
  {
    v24 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_replayable;
    swift_beginAccess();
    sub_10001DAD0(v23 + v24, v11);
    v25 = v13;
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      sub_10000BF34(v11, &qword_10006F4A0, &qword_10004E1F0);
      sub_100004C60(&qword_10006E8F8, &qword_10004D790);
      sub_10001DA7C();
      swift_allocError();
      *v26 = 1;
      v27 = static Future.failed(dsoHandle:file:line:column:function:_:)();
    }

    else
    {
      v29 = v38;
      sub_10001DB40(v11, v38);
      v30 = type metadata accessor for SimulatorDevicePayload();
      (*(*(v30 - 8) + 56))(v7, 1, 1, v30);

      v31 = v39;
      sub_1000168CC(v29, v7);
      sub_10001DDD8(v7, &type metadata accessor for DeviceType);
      static ExecutionLane.main.getter();
      sub_10001DBA4(v29, v16, type metadata accessor for PreviewCache.Replayable);
      v32 = (*(v25 + 80) + 16) & ~*(v25 + 80);
      v33 = swift_allocObject();
      sub_10001DB40(v16, v33 + v32);
      *(v33 + ((v14 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
      type metadata accessor for PropertyList();

      Future.tryThen<A>(dsoHandle:file:line:column:function:on:transform:)();

      v34 = v41;
      v35 = *(v40 + 8);
      v35(v3, v41);
      static ExecutionLane.main.getter();

      Future.observeFailure(on:_:)();

      v35(v3, v34);
      v27 = Future.ignoringValue(dsoHandle:file:line:column:function:)();

      sub_10001DDD8(v29, type metadata accessor for PreviewCache.Replayable);
    }
  }

  else
  {
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    sub_10001DA7C();
    swift_allocError();
    *v28 = 0;
    v27 = static Future.failed(dsoHandle:file:line:column:function:_:)();
  }

  return v27;
}

uint64_t sub_10001ADFC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v45 = a2;
  updated = type metadata accessor for UpdateSetupPayload();
  v5 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated - 8);
  v47 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PropertyList();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v43 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004C60(&qword_10006F420, &qword_10004E180);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for ContentCategory();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for ContentIdentifier();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for PreviewType();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004C60(&qword_10006F4B0, &qword_10004E1F8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v40 - v23;
  v40[2] = v40 - v23;
  v25 = sub_100004C60(&qword_10006F470, &qword_10004E1C8);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = v40 - v27;
  v40[3] = v40 - v27;
  v46 = type metadata accessor for ShellUpdatePayload();
  v44 = *(v46 - 8);
  v29 = *(v44 + 64);
  __chkstk_darwin(v46);
  v42 = v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1[1];
  v49 = *a1;
  v50 = v31;
  v51 = *(a1 + 32);
  v41 = ProcessID.pid.getter();
  v32 = type metadata accessor for HostUpdateSeed();
  (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
  v33 = type metadata accessor for HostUpdateGroupSeed();
  (*(*(v33 - 8) + 56))(v24, 1, 1, v33);
  v34 = enum case for PreviewType.HostLocation.mainScene(_:);
  v35 = type metadata accessor for PreviewType.HostLocation();
  v36 = *(*(v35 - 8) + 104);
  v40[1] = v20;
  v36(v20, v34, v35);
  (*(v17 + 104))(v20, enum case for PreviewType.hosted(_:), v16);
  LODWORD(v17) = *(type metadata accessor for PreviewCache.Replayable(0) + 20);
  ShellUpdatePayload.contentIdentifier.getter();
  ShellUpdatePayload.contentCategory.getter();
  ShellUpdatePayload.contentOverride.getter();
  ShellUpdatePayload.contentPayload.getter();
  ShellUpdatePayload.staticProducts.getter();
  ShellUpdatePayload.setupPayload.getter();
  ShellUpdatePayload.controlStates.getter();
  v37 = v42;
  ShellUpdatePayload.init(pid:hostUpdateSeed:hostUpdateGroupSeed:previewType:contentIdentifier:contentCategory:contentOverride:contentPayload:staticProducts:setupPayload:controlStates:)();
  v38 = sub_100017A64(v37);
  (*(v44 + 8))(v37, v46);
  return v38;
}

uint64_t sub_10001B34C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for PreviewCache.Replayable(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_replayable;
  swift_beginAccess();
  sub_10001DE38(v6, a2 + v8);
  swift_endAccess();
  return sub_100029688();
}

uint64_t sub_10001B440()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC12PreviewShell19PreviewShellService_serverFarm;
  v4 = type metadata accessor for ServerFarm();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12PreviewShell19PreviewShellService_pluginRegistry;
  v6 = type metadata accessor for PreviewShellPluginRegistry();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PreviewShellService()
{
  result = qword_10006F338;
  if (!qword_10006F338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001B588()
{
  result = type metadata accessor for ServerFarm();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for PreviewShellPluginRegistry();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10001B6A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12PreviewShell19PreviewShellService_serverFarm;
  v5 = type metadata accessor for ServerFarm();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10001B760()
{
  v1 = type metadata accessor for AgentDescriptor();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  PrepareToRelaunchPayload.agentDescriptor.getter();
  v7 = sub_100016310(v5);
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_10001B930()
{
  static JITCapabilities.userDefaultSupportsJITLinking.getter();
  JITCapabilities.init(supportsJITLinking:supportsLoadCommands:)();
  return OSCapabilities.init(supportsExecutionPoints:supportsPreviewVariants:supportsContentOverrides:supportsScreenshotRequests:supportsNSPreviewHostableMacPreviews:supportsNSPreviewHostableCatalystPreviews:supportsPerUpdateMessageStreams:supportsRegistryPreviews:supportsExternalRegistries:supportsUpdateCancelation:jitCapabilities:)();
}

uint64_t sub_10001B9A0()
{
  v1 = *(*v0 + 32);
  v2 = AgentDescriptor.Bundle.bundleID.getter();
  sub_10001E524(v2, v3);
}

uint64_t sub_10001B9F8(uint64_t result, uint64_t a2)
{
  if (qword_10006E608 != -1)
  {
    v2 = result;
    v3 = a2;
    swift_once();
    result = v2;
    a2 = v3;
  }

  if (qword_100073718)
  {
    return sub_100028D64(result, a2);
  }

  return result;
}

Swift::Int sub_10001BAC8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001BB3C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void *sub_10001BB80(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10001BBA0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_10001BBD0(char *a1, int64_t a2, char a3)
{
  result = sub_10001BC10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001BBF0(void *a1, int64_t a2, char a3)
{
  result = sub_10001BD20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001BC10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004C60(&qword_10006F4C0, &unk_10004E2B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001BD20(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100004C60(&qword_10006F410, &qword_10004E170);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004C60(&qword_10006F418, &qword_10004E178);
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_10001BE68(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_10001BF60()
{
  v0 = type metadata accessor for Callsite();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DeviceType();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  BatchIdentity.deviceType.getter();
  v9 = type metadata accessor for SimulatorDevicePayload();
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    return static Future<A>.succeeded(dsoHandle:file:line:column:function:)();
  }

  else
  {
    sub_10001DDD8(v8, &type metadata accessor for DeviceType);
    if (qword_10006E5B8 != -1)
    {
      swift_once();
    }

    Callsite.init(_:_:_:_:)();
    assertUnreachable(callsite:)();
    (*(v1 + 8))(v4, v0);
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    sub_10001D534();
    swift_allocError();
    v11 = static Future.failed(dsoHandle:file:line:column:function:_:)();

    return v11;
  }
}

uint64_t sub_10001C220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewType.HostLocation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PreviewType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = type metadata accessor for DeviceType();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Agent.deviceType.getter();
  v21 = type metadata accessor for SimulatorDevicePayload();
  if ((*(*(v21 - 8) + 48))(v20, 1, v21) != 1)
  {
    v26 = sub_100004C60(&qword_10006F458, &unk_10004E1B0);
    __chkstk_darwin(v26);
    v32 = a2;
    v30 = sub_10001D518;
    v31 = &v29;
    v29 = 2;
    v25 = static Future.completed(dsoHandle:file:line:column:function:_:)();
    sub_10001DDD8(v20, &type metadata accessor for DeviceType);
    return v25;
  }

  v22 = a1;
  v23 = *(v10 + 16);
  v34 = v22;
  v23(v16);
  v24 = (*(v10 + 88))(v16, v9);
  if (v24 == enum case for PreviewType.hosted(_:))
  {
    (*(v10 + 96))(v16, v9);
    (*(v5 + 32))(v8, v16, v4);
    if (qword_10006E600 != -1)
    {
      swift_once();
    }

    v25 = sub_1000226E4(v8);
    (*(v5 + 8))(v8, v4);
    return v25;
  }

  if (v24 == enum case for PreviewType.static(_:))
  {
    sub_100004C60(&qword_10006F458, &unk_10004E1B0);
    v30 = sub_10001A430;
    v31 = 0;
    v29 = 2;
    return static Future.completed(dsoHandle:file:line:column:function:_:)();
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v35 = 0xD000000000000015;
  v36 = 0x8000000100054740;
  (v23)(v14, v34, v9);
  v28._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v28);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10001C6EC(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006EA60, &unk_10004E150);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for AgentDescriptor.Bundle();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AgentDescriptor();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = __chkstk_darwin(v10);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006E608 != -1)
  {
    result = swift_once();
  }

  if (qword_100073718)
  {
    LaunchPayload.agentDescriptor.getter();
    AgentDescriptor.bundle.getter();
    (*(v11 + 8))(v15, v10);
    v16 = type metadata accessor for LaunchPayload();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v5, a1, v16);
    (*(v17 + 56))(v5, 0, 1, v16);
    swift_beginAccess();
    sub_100006798(v5, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10001C948(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100019EC8(a1);
}

uint64_t sub_10001C97C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  sub_10000E678(a1, v3);
  return (*(v4 + 40))(v2, v3, v4);
}

uint64_t sub_10001C9D4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001CA18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10001CA3C(unsigned __int8 *a1)
{
  v2 = *(*(type metadata accessor for ShellUpdatePayload() - 8) + 80);

  return sub_100018B08(a1);
}

uint64_t sub_10001CABC()
{
  updated = type metadata accessor for ShellUpdatePayload();
  v2 = *(updated - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, updated);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001CB94(uint64_t a1)
{
  v3 = *(type metadata accessor for ShellUpdatePayload() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100018F00(a1, v5, v1 + v4, v6);
}

uint64_t sub_10001CC34()
{
  v18 = type metadata accessor for ContentKey();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 16) & ~v2;
  v3 = *(v1 + 64);
  v17 = type metadata accessor for PreviewAgentConnector();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v6 = (v15 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  updated = type metadata accessor for ShellUpdatePayload();
  v9 = *(updated - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 16) & ~v10;
  v16 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  (*(v1 + 8))(v0 + v15, v18);
  (*(v4 + 8))(v0 + v6, v17);
  v13 = *(v0 + v7 + 8);

  (*(v9 + 8))(v0 + v11, updated);

  return _swift_deallocObject(v0, v11 + v16, v12 | 7);
}

uint64_t sub_10001CE28(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for ContentKey() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PreviewAgentConnector() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for ShellUpdatePayload() - 8);
  v12 = *(v2 + v10);
  v13 = *(v2 + v10 + 8);
  v14 = v2 + ((v10 + *(v11 + 80) + 16) & ~*(v11 + 80));

  return sub_1000192E8(a1, a2, v2 + v6, v2 + v9, v12, v13);
}

uint64_t sub_10001CF7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_100004C60(&qword_10006F438, &qword_10004E188);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t sub_10001CFD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10001CFF0();
  }

  return result;
}

uint64_t sub_10001CFF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10001D028(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004D0C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001D070()
{
  v1 = type metadata accessor for PreviewAgentConnector();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  updated = type metadata accessor for ShellUpdatePayload();
  v7 = *(updated - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  sub_10000519C((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, updated);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10001D1C0(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewAgentConnector() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ShellUpdatePayload() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100018D48(a1, (v1 + 16), v1 + v4);
}

uint64_t sub_10001D2B0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10001D340(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AgentUpdate.Context() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001D424;

  return sub_1000191F8(a1, a2, v2 + v7);
}

uint64_t sub_10001D424()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001D518()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10001A538();
}

unint64_t sub_10001D534()
{
  result = qword_10006F5D0;
  if (!qword_10006F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F5D0);
  }

  return result;
}

uint64_t sub_10001D5A0(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E678(a1, v5);
  return a2(v4, v5, v6);
}

uint64_t sub_10001D5F4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  sub_10000E678(a1, v3);
  return (*(v4 + 32))(v2, v3, v4);
}

uint64_t sub_10001D64C()
{
  v18 = type metadata accessor for AgentDescriptor.Bundle();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v16 = (v2 + 24) & ~v2;
  v3 = (*(v1 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = type metadata accessor for BatchIdentity();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for LaunchPayload();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 9) & ~v10;
  v15 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  v13 = *(v0 + 16);

  (*(v1 + 8))(v0 + v16, v18);
  sub_10000519C((v0 + v3));
  (*(v4 + 8))(v0 + v6, v17);
  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v11 + v15, v12 | 7);
}

uint64_t sub_10001D850(uint64_t a1)
{
  v3 = *(type metadata accessor for AgentDescriptor.Bundle() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for BatchIdentity() - 8);
  v7 = (v5 + *(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for LaunchPayload() - 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v13 = v1 + ((v8 + *(v9 + 80) + 9) & ~*(v9 + 80));

  return sub_100017774(a1, v10, v1 + v4, v1 + v5, v1 + v7, v11, v12, v13);
}

uint64_t sub_10001D9B4(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_10001D9FC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_10001DA7C()
{
  result = qword_10006F4A8;
  if (!qword_10006F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F4A8);
  }

  return result;
}

uint64_t sub_10001DAD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewCache.Replayable(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DBA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001DC0C()
{
  v1 = (type metadata accessor for PreviewCache.Replayable(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for LaunchPayload();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  updated = type metadata accessor for ShellUpdatePayload();
  (*(*(updated - 8) + 8))(v5 + v7, updated);
  v9 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10001DD38(__int128 *a1)
{
  v3 = *(type metadata accessor for PreviewCache.Replayable(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_10001ADFC(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10001DDD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001DE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for PreviewShellService.ReloadError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewShellService.ReloadError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001E020()
{
  result = qword_10006F4B8;
  if (!qword_10006F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F4B8);
  }

  return result;
}

id sub_10001E07C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v16.receiver = v5;
  v16.super_class = swift_getObjectType();
  v11 = objc_msgSendSuper2(&v16, "initWithWindowScene:", a1);
  [v11 setWindowLevel:UIWindowLevelStatusBar];
  v12 = objc_allocWithZone(type metadata accessor for ExclusionView());
  sub_10001E288(a2, a3, a4, a5);
  v13 = objc_allocWithZone(type metadata accessor for CounterRotationViewController());
  v14 = CounterRotationViewController.init(contentView:contentOrientation:)();
  [v11 setRootViewController:v14];

  [v11 setUserInteractionEnabled:0];
  return v11;
}

id sub_10001E288(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v19.receiver = v4;
  v19.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = objc_allocWithZone(UIView);
  v11 = v9;
  v12 = [v10 init];
  v13 = objc_opt_self();
  v14 = [v13 blackColor];
  [v12 setBackgroundColor:v14];

  [v12 setFrame:{a1, a2, a3, a4}];
  v15 = [v12 layer];
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  [v15 setCornerRadius:CGRectGetHeight(v20) * 0.5];

  v16 = [v12 layer];
  [v16 setCornerCurve:kCACornerCurveContinuous];

  v17 = [v13 clearColor];
  [v11 setBackgroundColor:v17];

  [v11 addSubview:v12];
  return v11;
}

uint64_t sub_10001E524(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_100004C60(&qword_10006F5C0, "֘");
  sub_10001FA34();
  KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)();
  result = swift_endAccess();
  if (!(v9 >> 62))
  {
    v5 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v9 + 8 * i + 32);
      }

      v8 = v7;
      sub_10001FA98(v7, a1, a2);
    }
  }

  __break(1u);
  return result;
}

id sub_10001E670()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12PreviewShell19UserAlertController_pendingAlerts;
  *&v1[v8] = sub_10002C1C4(&_swiftEmptyArrayStorage);
  v9 = OBJC_IVAR____TtC12PreviewShell19UserAlertController_locationSim;
  *&v1[v9] = [objc_allocWithZone(CLSimulationManager) init];
  static Logger.uv.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "AlertService init", v12, 2u);
  }

  (*(v4 + 8))(v7, v3);
  v13 = objc_allocWithZone(URTAlertService);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 initWithDomain:v14];

  *&v1[OBJC_IVAR____TtC12PreviewShell19UserAlertController_underlying] = v15;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_10001E8A0()
{
  v1 = v0;
  _StringGuts.grow(_:)(130);
  v2._countAndFlagsBits = 0x6669746E6564693CLL;
  v2._object = 0xED0000203A726569;
  String.append(_:)(v2);
  v3 = [v0 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x3A656C746974202CLL;
  v8._object = 0xEA00000000002720;
  String.append(_:)(v8);
  v9 = [v1 title];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_100004C60(&qword_10006F5E0, &unk_10004E320);
  v14 = Optional.log.getter();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x617373656D202C27;
  v18._object = 0xED000027203A6567;
  String.append(_:)(v18);
  v19 = [v1 message];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = Optional.log.getter();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0xD000000000000020;
  v28._object = 0x8000000100054A40;
  String.append(_:)(v28);
  v29 = [v1 allowedApplicationBundleIDs];
  if (v29)
  {
    v30 = v29;
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = Array.description.getter();
    v33 = v32;
  }

  else
  {
    v33 = 0xE200000000000000;
    v31 = 23899;
  }

  v34 = 7104878;
  v35._countAndFlagsBits = v31;
  v35._object = v33;
  String.append(_:)(v35);

  v36._object = 0x8000000100054A70;
  v36._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v36);
  v37 = [v1 defaultAction];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 title];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
  }

  else
  {
    v42 = 0xE300000000000000;
    v40 = 7104878;
  }

  v43._countAndFlagsBits = v40;
  v43._object = v42;
  String.append(_:)(v43);

  v44._countAndFlagsBits = 0x65636E6163202C27;
  v44._object = 0xEC00000027203A6CLL;
  String.append(_:)(v44);
  v45 = [v1 cancelAction];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 title];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
  }

  else
  {
    v50 = 0xE300000000000000;
    v48 = 7104878;
  }

  v51._countAndFlagsBits = v48;
  v51._object = v50;
  String.append(_:)(v51);

  v52._countAndFlagsBits = 0x726568746F202C27;
  v52._object = 0xEB0000000027203ALL;
  String.append(_:)(v52);
  v53 = [v1 otherAction];
  if (v53)
  {
    v54 = v53;
    v55 = [v53 title];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
  }

  else
  {
    v57 = 0xE300000000000000;
  }

  v58._countAndFlagsBits = v34;
  v58._object = v57;
  String.append(_:)(v58);

  v59._countAndFlagsBits = 4087079;
  v59._object = 0xE300000000000000;
  String.append(_:)(v59);
  return 0;
}

uint64_t sub_10001ED24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = type metadata accessor for Logger();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001EE24, v10, v9);
}

void sub_10001EE24()
{
  v70 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 88);

  static Logger.uv.getter();
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 128);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  if (v7)
  {
    v11 = *(v0 + 88);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v69 = v13;
    *v12 = 136315138;
    v14 = sub_10001E8A0();
    v16 = sub_10000E0C0(v14, v15, &v69);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "AlertService present %s", v12, 0xCu);
    sub_10000519C(v13);
  }

  v17 = *(v10 + 8);
  v17(v8, v9);
  v18 = [*(v0 + 88) allowedApplicationBundleIDs];
  if (v18)
  {
    v19 = *(v0 + 96);
    v20 = v18;
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = *(v21 + 16);
    v66 = v21;
    if (v65)
    {
      v22 = 0;
      v23 = OBJC_IVAR____TtC12PreviewShell19UserAlertController_pendingAlerts;
      v24 = (v21 + 40);
      v64 = v0;
      while (1)
      {
        if (v22 >= *(v66 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        v29 = *(v24 - 1);
        v28 = *v24;
        *(v0 + 64) = v29;
        *(v0 + 72) = v28;
        swift_beginAccess();

        sub_100004C60(&qword_10006F5C0, "֘");
        sub_10001FA34();
        KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)();
        swift_endAccess();
        v67 = v22;
        v68 = *(v0 + 80);
        v30 = *(v0 + 88);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v51 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v31 = *(v0 + 88);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_beginAccess();

        v32 = *(v19 + v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v19;
        v35 = isUniquelyReferenced_nonNull_native;
        v69 = *(v34 + v23);
        v36 = v69;
        v37 = v23;
        v38 = v34;
        v39 = v37;
        *(v34 + v37) = 0x8000000000000000;
        v40 = sub_100006E04(v29, v28);
        v42 = v36[2];
        v43 = (v41 & 1) == 0;
        v44 = __OFADD__(v42, v43);
        v45 = v42 + v43;
        if (v44)
        {
          goto LABEL_32;
        }

        v46 = v41;
        if (v36[3] < v45)
        {
          break;
        }

        if (v35)
        {
          goto LABEL_16;
        }

        v52 = v40;
        sub_10000B224();
        v40 = v52;
        v36 = v69;
        v19 = v38;
        if (v46)
        {
LABEL_6:
          v25 = v36[7];
          v26 = *(v25 + 8 * v40);
          *(v25 + 8 * v40) = v68;

          v23 = v39;
          goto LABEL_7;
        }

LABEL_17:
        v36[(v40 >> 6) + 8] |= 1 << v40;
        v48 = (v36[6] + 16 * v40);
        *v48 = v29;
        v48[1] = v28;
        *(v36[7] + 8 * v40) = v68;
        v49 = v36[2];
        v44 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v44)
        {
          goto LABEL_33;
        }

        v23 = v39;
        v36[2] = v50;
LABEL_7:
        v22 = v67 + 1;
        v0 = v64;
        v27 = *(v64 + 88);
        *(v19 + v23) = v36;
        swift_endAccess();
        sub_10001FA98(v27, v29, v28);

        v24 += 2;
        if (v65 == v67 + 1)
        {
          goto LABEL_21;
        }
      }

      sub_100008BE0(v45, v35);
      v36 = v69;
      v40 = sub_100006E04(v29, v28);
      if ((v46 & 1) != (v47 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

LABEL_16:
      v19 = v38;
      if (v46)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

LABEL_21:
  }

  else
  {
    v53 = *(v0 + 120);
    static Logger.uv.getter();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v56 = os_log_type_enabled(v54, v55);
    v58 = *(v0 + 112);
    v57 = *(v0 + 120);
    v59 = *(v0 + 104);
    if (v56)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "AlertService ignoring system alert", v60, 2u);
    }

    v17(v57, v59);
  }

  v62 = *(v0 + 120);
  v61 = *(v0 + 128);

  v63 = *(v0 + 8);

  v63();
}

uint64_t sub_10001F4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001F5D4, v10, v9);
}

uint64_t sub_10001F5D4()
{
  v38 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);

  static Logger.uv.getter();
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 56);
  if (v7)
  {
    v11 = *(v0 + 40);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = v13;
    *v12 = 136315138;
    v14 = sub_10001E8A0();
    v16 = sub_10000E0C0(v14, v15, &v37);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "AlertService dismiss %s", v12, 0xCu);
    sub_10000519C(v13);
  }

  (*(v9 + 8))(v8, v10);
  v17 = [*(v0 + 40) allowedApplicationBundleIDs];
  if (v17)
  {
    v18 = v17;
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = *(v0 + 48);
      v22 = OBJC_IVAR____TtC12PreviewShell19UserAlertController_pendingAlerts;
      v23 = (v19 + 40);
      do
      {
        v26 = *(v23 - 1);
        v27 = *v23;
        swift_beginAccess();
        v28 = *(v21 + v22);

        v29 = sub_100006E04(v26, v27);
        LOBYTE(v28) = v30;

        if (v28)
        {
          v31 = *(v21 + v22);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = *(v21 + v22);
          v37 = v33;
          *(v21 + v22) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10000B224();
            v33 = v37;
          }

          v24 = *(*(v33 + 48) + 16 * v29 + 8);

          v25 = *(*(v33 + 56) + 8 * v29);

          sub_1000093D4(v29, v33);
          *(v21 + v22) = v33;
        }

        swift_endAccess();
        v23 += 2;
        --v20;
      }

      while (v20);
    }
  }

  v34 = *(v0 + 72);

  v35 = *(v0 + 8);

  return v35();
}

unint64_t sub_10001FA34()
{
  result = qword_10006F5C8;
  if (!qword_10006F5C8)
  {
    sub_100004D0C(&qword_10006F5C0, "֘");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F5C8);
  }

  return result;
}

uint64_t sub_10001FA98(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Callsite();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BatchIdentity();
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  __chkstk_darwin(v10);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  if (qword_10006E5C8 != -1)
  {
    swift_once();
  }

  v20 = sub_10001A030(a2, a3);
  static Logger.uv.getter();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v41 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v49 = v20;
    v50[0] = v25;
    *v24 = 136315138;
    type metadata accessor for Agent();
    v42 = v13;
    sub_10001FFE4();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = sub_10000E0C0(v26, v27, v50);

    *(v24 + 4) = v28;
    v13 = v42;
    _os_log_impl(&_mh_execute_header, v21, v22, "AlertService found agent to handle alert: %s", v24, 0xCu);
    sub_10000519C(v25);

    a1 = v41;
  }

  (*(v48 + 8))(v19, v13);
  if (qword_10006E5B8 != -1)
  {
    swift_once();
  }

  v29 = v43;
  Agent.batchIdentity.getter();
  Callsite.init(_:_:_:_:)();
  assertUnreachable(callsite:)();
  (*(v44 + 8))(v9, v45);
  sub_10001D534();
  swift_allocError();
  swift_willThrow();

  (*(v46 + 8))(v29, v47);
  static Logger.uv.getter();
  v30 = a1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = v13;
    v35 = swift_slowAlloc();
    v50[0] = v35;
    *v33 = 136315138;
    v36 = sub_10001E8A0();
    v38 = sub_10000E0C0(v36, v37, v50);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "AlertService was unable to present alert: %s", v33, 0xCu);
    sub_10000519C(v35);

    return (*(v48 + 8))(v17, v34);
  }

  else
  {

    return (*(v48 + 8))(v17, v13);
  }
}

unint64_t sub_10001FFE4()
{
  result = qword_10006F5D8;
  if (!qword_10006F5D8)
  {
    type metadata accessor for Agent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F5D8);
  }

  return result;
}

uint64_t sub_100020040(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001D424;

  return sub_10001F4E0(a1, v4, v5, v7, v6);
}

uint64_t sub_100020100()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100020148(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002020C;

  return sub_10001ED24(a1, v4, v5, v7, v6);
}

uint64_t sub_100020210()
{
  v0 = type metadata accessor for PreviewShellPluginRegistry();
  sub_100020278(v0, qword_1000736E8);
  sub_10000BE8C(v0, qword_1000736E8);
  sub_1000202DC();
  return static PreviewShellPluginRegistry.load<A>(using:location:)();
}

uint64_t *sub_100020278(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1000202DC()
{
  result = qword_10006F608;
  if (!qword_10006F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F608);
  }

  return result;
}

uint64_t sub_100020340()
{
  sub_100004C60(&qword_10006F680, &qword_10004E540);
  v0 = sub_100004C60(&qword_10006FCB0, &qword_10004E548);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10004E350;
  v4 = *(v0 + 48);
  static ContentCategory.previewProvider.getter();
  static EntryPointCategory.previewProvider.getter();
  v5 = *(v0 + 48);
  static ContentCategory.previewPreflight.getter();
  static EntryPointCategory.previewPreflight.getter();
  v6 = *(v0 + 48);
  static ContentCategory.cFunction.getter();
  static EntryPointCategory.cFunction.getter();
  v7 = *(v0 + 48);
  static ContentCategory.registryPreflight.getter();
  static EntryPointCategory.registryPreflight.getter();
  v8 = *(v0 + 48);
  static ContentCategory.registryExecution.getter();
  static EntryPointCategory.registryExecution.getter();
  v9 = sub_10002C2C8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10006F5E8 = v9;
  return result;
}

uint64_t sub_1000204FC()
{
  v0 = type metadata accessor for PreviewSourceContentCategory();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004C60(&qword_10006F680, &qword_10004E540);
  v5 = sub_100004C60(&qword_10006FCB0, &qword_10004E548);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10004E360;
  v9 = *(v5 + 48);
  static PreviewSourceContentCategory.swiftUIView.getter();
  static ContentCategory.source(_:)();
  v10 = *(v1 + 8);
  v10(v4, v0);
  static EntryPointCategory.previewInstance.getter();
  v11 = *(v5 + 48);
  static PreviewSourceContentCategory.uiKitView.getter();
  static ContentCategory.source(_:)();
  v10(v4, v0);
  static EntryPointCategory.previewInstance.getter();
  v12 = sub_10002C2C8(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10006F5F0 = v12;
  return result;
}

void sub_100020760()
{
  v0 = [objc_opt_self() previewSceneSpecification];
  static AgentSceneConfiguration.previewSceneConfiguration(in:specification:)();
}

uint64_t sub_1000207E8()
{
  sub_100004C60(&qword_10006F688, qword_10004E550);
  v0 = *(type metadata accessor for PreviewVariantGroup() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10004E370;
  static PreviewVariantGroup.colorSchemeVariantGroup.getter();
  static PreviewVariantGroup.orientationVariantGroup.getter();
  static PreviewVariantGroup.dynamicTypeVariantGroup.getter();
  return v3;
}

uint64_t sub_100020918(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), unint64_t *a4)
{
  sub_100004C60(&qword_10006F680, &qword_10004E540);
  v7 = (sub_100004C60(&qword_10006FCB0, &qword_10004E548) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10004E380;
  v11 = v7[14];
  v12 = a2();
  a3(v12);
  v13 = sub_10002C2C8(v10);
  swift_setDeallocating();
  sub_10000BF34(v10 + v9, &qword_10006FCB0, &qword_10004E548);
  result = swift_deallocClassInstance();
  *a4 = v13;
  return result;
}

uint64_t sub_100020A88(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

uint64_t sub_100020AF0()
{
  v0 = type metadata accessor for ProcessType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[3] = &type metadata for ApplicationLauncher;
  v7[4] = sub_100020C08();
  (*(v1 + 104))(v4, enum case for ProcessType.application(_:), v0);
  PreviewAgentLauncherRegistry.registerLauncher(_:for:)();
  (*(v1 + 8))(v4, v0);
  return sub_10000519C(v7);
}

unint64_t sub_100020C08()
{
  result = qword_10006F610;
  if (!qword_10006F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F610);
  }

  return result;
}

uint64_t sub_100020C5C()
{
  v0 = sub_100004C60(&qword_10006F420, &qword_10004E180);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v12 - v2;
  sub_100004C60(&qword_10006F618, &qword_10004E3F0);
  sub_100021078();
  static CategoryMap.contentCategories.getter();
  v4 = type metadata accessor for ContentOverride();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v12 = v5;
  sub_10001D028(&qword_10006F628, &qword_10006F618, &qword_10004E3F0);
  ContentProviderRegistry.register<A>(provider:for:override:)();

  sub_10000BF34(v3, &qword_10006F420, &qword_10004E180);
  sub_100004C60(&qword_10006F630, &qword_10004E3F8);
  sub_1000210CC();
  static CategoryMap.contentCategories.getter();
  v13 = v4;
  v5(v3, 1, 1, v4);
  sub_10001D028(&qword_10006F640, &qword_10006F630, &qword_10004E3F8);
  ContentProviderRegistry.register<A>(provider:for:override:)();

  sub_10000BF34(v3, &qword_10006F420, &qword_10004E180);
  sub_100004C60(&qword_10006F648, &qword_10004E400);
  sub_100021120();
  static CategoryMap.contentCategories.getter();
  v6 = v4;
  v7 = v12;
  v12(v3, 1, 1, v6);
  sub_10001D028(&qword_10006F658, &qword_10006F648, &qword_10004E400);
  ContentProviderRegistry.register<A>(provider:for:override:)();

  sub_10000BF34(v3, &qword_10006F420, &qword_10004E180);
  sub_100004C60(&qword_10006F660, &qword_10004E408);
  sub_100004C60(&qword_10006F668, &qword_10004E410);
  v8 = *(type metadata accessor for ContentCategory() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_10004E380;
  static ContentCategory.runningAppPreview.getter();
  v7(v3, 1, 1, v13);
  sub_10001D028(&qword_10006F670, &qword_10006F660, &qword_10004E408);
  ContentProviderRegistry.register<A>(provider:for:override:)();

  return sub_10000BF34(v3, &qword_10006F420, &qword_10004E180);
}

unint64_t sub_100021078()
{
  result = qword_10006F620;
  if (!qword_10006F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F620);
  }

  return result;
}

unint64_t sub_1000210CC()
{
  result = qword_10006F638;
  if (!qword_10006F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F638);
  }

  return result;
}

unint64_t sub_100021120()
{
  result = qword_10006F650;
  if (!qword_10006F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F650);
  }

  return result;
}

unint64_t sub_1000211B4(uint64_t a1)
{
  result = sub_1000210CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000211DC(uint64_t a1)
{
  result = sub_100021120();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100021204(uint64_t a1)
{
  result = sub_10002122C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002122C()
{
  result = qword_10006F678;
  if (!qword_10006F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F678);
  }

  return result;
}

void sub_100021288()
{
  v0 = type metadata accessor for Callsite();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v1 + 8))(v4, v0);
  sub_1000213B4(&v6, &v7);
  qword_10006F690 = v7;
  byte_10006F698 = 0;
}

void sub_1000213B4(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = type metadata accessor for Callsite();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v66 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SceneConfigurator();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v68 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v57 - v12;
  v14 = objc_opt_self();
  v15 = [v14 uv_loadedInitialContext];
  if (!v15)
  {
    v15 = [v14 defaultContext];
  }

  v16 = [objc_opt_self() uv_loadedInitialContext];
  if (!v16)
  {
    v17 = [objc_opt_self() mainScreen];
    v18 = [v17 displayConfiguration];

    if (!v18)
    {
      __break(1u);
      return;
    }

    v16 = [objc_allocWithZone(UISDisplayContext) initWithDisplayConfiguration:v18];
  }

  v67 = a2;
  v19 = sub_1000020F0();
  v80 = &type metadata for MainDisplay;
  v81 = &off_1000629F0;
  v78[0] = v15;
  v78[1] = v16;
  v79 = v19;
  v77[3] = &type metadata for LocalStaticPersonality;
  v20 = sub_100021D48();
  v77[4] = v20;
  sub_10000E808(v78, v13);
  v21 = *(v8 + 24);
  if (qword_10006E628 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for SceneLayout();
  v23 = sub_10000BE8C(v22, qword_100073738);
  (*(*(v22 - 8) + 16))(&v13[v21], v23, v22);
  *(v13 + 5) = 0;
  *(v13 + 6) = 0;
  sub_10003B094(0xD000000000000012, 0x8000000100054BB0, v77, v71);
  v24 = v2;
  if (v2)
  {
    sub_1000220AC(v13);
    sub_10000519C(v77);
    sub_10000519C(v78);
LABEL_10:
    *a1 = v24;
    return;
  }

  v57[1] = 0;
  v57[0] = a1;
  v65 = v71[0];
  v64 = v71[1];
  v25 = v71[2];
  v58 = v72;
  v59 = v73;
  v60 = v74;
  v61 = 0x8000000100054BB0;
  v26 = v75;
  v27 = v76;
  sub_10000E808(v77, v71);
  sub_100022108(v13, v68);
  sub_10002216C(v71, v72);
  v70[3] = &type metadata for LocalStaticPersonality;
  v70[4] = v20;
  v63 = type metadata accessor for LocalSceneHost();
  v28 = *(v63 + 48);
  v29 = *(v63 + 52);
  v30 = swift_allocObject();
  sub_10002216C(v70, &type metadata for LocalStaticPersonality);
  v69[3] = &type metadata for LocalStaticPersonality;
  v69[4] = v20;
  v31 = type metadata accessor for InvalidationHandle();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = v27;
  v62 = v27;

  v35 = v58;
  v36 = v59;
  v37 = v60;
  swift_unknownObjectRetain();
  v30[2] = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  v30[3] = 0xD000000000000012;
  v30[4] = v61;
  sub_10000E808(v69, (v30 + 5));
  sub_100022108(v68, v30 + OBJC_IVAR____TtC12PreviewShell14LocalSceneHost_configurator);
  v38 = v64;
  v30[10] = v65;
  v30[11] = v38;
  v30[12] = v25;
  v30[13] = v35;
  v30[14] = v36;
  v30[15] = v37;
  v30[16] = v26;
  v30[17] = v34;
  v61 = v13;
  v82 = v30;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v25;
  v39[4] = v35;
  v39[5] = v36;
  v39[6] = v37;
  v39[7] = v26;
  v39[8] = v34;
  v39[9] = v30;
  sub_100022608(&qword_10006F6D0, type metadata accessor for LocalSceneHost);
  swift_bridgeObjectRetain_n();
  v40 = v35;
  v41 = v36;
  v42 = v37;
  swift_unknownObjectRetain_n();
  v43 = v62;
  v64 = v40;
  v60 = v41;
  v44 = v42;
  v45 = v43;
  v46 = v65;

  Invalidatable.onInvalidation(_:)();

  v62 = v45;
  swift_unknownObjectRelease();
  v65 = v44;

  v47 = v60;
  v63 = v25;

  sub_1000220AC(v68);
  sub_10000519C(v69);
  sub_10000519C(v70);
  sub_10000519C(v71);
  sub_1000220AC(v61);
  sub_10000519C(v77);
  sub_10000519C(v78);
  v48 = type metadata accessor for LocalStaticScene(0);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();

  v52 = sub_100042E38(v51);
  type metadata accessor for StaticPreviewCanvas();
  v53 = swift_allocObject();

  v55 = sub_100022230(v54, v53);
  [v47 setRootViewController:v55[3]];
  type metadata accessor for LocalSceneDelegate();
  if (!swift_dynamicCastClass())
  {
    Callsite.init(_:_:_:_:)();
    type metadata accessor for Unreachable();
    sub_100022608(&qword_10006EA30, &type metadata accessor for Unreachable);
    v24 = swift_allocError();
    Unreachable.init(_:diagnostics:callsite:)();
    swift_willThrow();

    swift_unknownObjectRelease();

    a1 = v57[0];
    goto LABEL_10;
  }

  v56 = sub_100022608(&qword_10006F6D8, type metadata accessor for LocalStaticScene);

  swift_unknownObjectRetain();
  sub_10003D5E4(v52, v56);

  swift_unknownObjectRelease_n();

  *v67 = v55;
}

unint64_t sub_100021D48()
{
  result = qword_10006F6C8;
  if (!qword_10006F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F6C8);
  }

  return result;
}

uint64_t sub_100021D9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PreviewPreferences.InterfaceOrientation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = PreviewPreferences.preferredSize.getter();
  if (v12)
  {
    PreviewPreferences.preferredOrientation.getter();
    (*(v3 + 32))(v7, v9, v2);
    v13 = (*(v3 + 88))(v7, v2);
    if (v13 == enum case for PreviewPreferences.InterfaceOrientation.portrait(_:))
    {
      v14 = &enum case for PreviewTraits.Orientation.portrait(_:);
    }

    else if (v13 == enum case for PreviewPreferences.InterfaceOrientation.portraitUpsideDown(_:))
    {
      v14 = &enum case for PreviewTraits.Orientation.portraitUpsideDown(_:);
    }

    else
    {
      if (v13 != enum case for PreviewPreferences.InterfaceOrientation.landscapeLeft(_:))
      {
        v26 = enum case for PreviewPreferences.InterfaceOrientation.landscapeRight(_:);
        v27 = v13;
        v20 = type metadata accessor for PreviewTraits.Orientation();
        v21 = *(*(v20 - 8) + 104);
        if (v27 != v26)
        {
          v21(a1, enum case for PreviewTraits.Orientation.portrait(_:), v20);
          (*(v3 + 8))(v7, v2);
          goto LABEL_13;
        }

        v23 = enum case for PreviewTraits.Orientation.landscapeRight(_:);
        v22 = a1;
LABEL_12:
        v21(v22, v23, v20);
LABEL_13:
        v24 = enum case for SceneLayout.device(_:);
        v25 = type metadata accessor for SceneLayout();
        return (*(*(v25 - 8) + 104))(a1, v24, v25);
      }

      v14 = &enum case for PreviewTraits.Orientation.landscapeLeft(_:);
    }

    v19 = *v14;
    v20 = type metadata accessor for PreviewTraits.Orientation();
    v21 = *(*(v20 - 8) + 104);
    v22 = a1;
    v23 = v19;
    goto LABEL_12;
  }

  *a1 = v10;
  a1[1] = v11;
  v15 = enum case for SceneLayout.custom(_:);
  v16 = type metadata accessor for SceneLayout();
  v17 = *(*(v16 - 8) + 104);

  return v17(a1, v15, v16);
}

uint64_t sub_1000220AC(uint64_t a1)
{
  v2 = type metadata accessor for SceneConfigurator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100022108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneConfigurator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002216C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000221BC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
  swift_unknownObjectRelease();

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t *sub_100022230(uint64_t a1, uint64_t *a2)
{
  v23 = *a2;
  v24 = type metadata accessor for ExecutionLane();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100022608(&qword_10006F6E0, type metadata accessor for LocalStaticScene);
  v9 = type metadata accessor for InvalidationHandle();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  a2[2] = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  type metadata accessor for FutureSerialQueue();
  static ExecutionLane.main.getter();
  a2[6] = FutureSerialQueue.__allocating_init(on:)();
  a2[8] = 0;
  v12 = *(a1 + 24);
  v14 = *(v12 + 88);
  v13 = *(v12 + 96);
  v15 = type metadata accessor for CanvasViewController();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active] = 0;
  *&v16[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating] = 0;
  v17 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_forcedOrientation;
  v18 = type metadata accessor for PreviewPreferences.InterfaceOrientation();
  (*(*(v18 - 8) + 56))(&v16[v17], 1, 1, v18);
  *&v16[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay] = 0;
  v19 = &v16[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_sceneIdentifier];
  *v19 = v14;
  *(v19 + 1) = v13;
  v26.receiver = v16;
  v26.super_class = v15;

  a2[3] = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for CanvasUpdater();
  v20 = swift_allocObject();
  v20[2] = 0;

  v21 = sub_10002B6D0(&_swiftEmptyArrayStorage);
  v20[4] = v8;
  v20[5] = v21;
  v20[3] = a1;
  a2[7] = v20;
  a2[4] = a1;
  a2[5] = v8;
  v25[5] = a2;
  v25[3] = swift_getObjectType();
  v25[4] = *(*(*(v8 + 8) + 8) + 8);
  v25[0] = a1;
  sub_100022608(&qword_10006F6E8, type metadata accessor for StaticPreviewCanvas);

  Invalidatable.trackInvalidation(dsoHandle:file:line:column:function:of:)();
  sub_10000519C(v25);
  v25[0] = a2;
  static ExecutionLane.main.getter();

  Invalidatable.onInvalidation(on:_:)();

  (*(v4 + 8))(v7, v24);
  return a2;
}

uint64_t sub_100022608(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100022668(uint64_t a1)
{
  result = sub_100022690();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100022690()
{
  result = qword_10006F6F0;
  if (!qword_10006F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F6F0);
  }

  return result;
}

uint64_t sub_1000226E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PreviewType.HostLocation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, a1, v9);
  if ((*(v10 + 88))(v13, v9) == enum case for PreviewType.HostLocation.injectedScene(_:))
  {
    (*(v10 + 96))(v13, v9);
    v15 = *v13;
    v14 = v13[1];
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    v15 = 0;
    v14 = 0;
  }

  swift_beginAccess();
  v16 = *(v2 + 16);
  if (*(v16 + 16) && (v17 = sub_100007180(v15, v14), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();

    sub_100004C60(&qword_10006F458, &unk_10004E1B0);
    v41[3] = type metadata accessor for HostedPreviewCanvas();
    v41[4] = sub_100023198(&qword_1000704F0);
    v41[0] = v19;
    v20 = static Future.succeeded(dsoHandle:file:line:column:function:_:)();
    sub_10000519C(v41);
  }

  else
  {
    swift_endAccess();
    static Logger.uv.getter();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40 = v5;
      v24 = v23;
      v25 = swift_slowAlloc();
      v43 = v25;
      *v24 = 136446210;
      v41[0] = v15;
      v41[1] = v14;

      v26 = String.init<A>(describing:)();
      v39 = v4;
      v28 = sub_10000E0C0(v26, v27, &v43);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "InjectedSceneRegistry waiting for injected scene '%{public}s'", v24, 0xCu);
      sub_10000519C(v25);

      (*(v40 + 8))(v8, v39);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    sub_100004C60(&qword_10006F458, &unk_10004E1B0);
    v20 = static Future.create(dsoHandle:file:line:column:function:)();
    swift_beginAccess();
    v29 = *(v2 + 24);
    if (*(v29 + 16) && (v30 = sub_100007180(v15, v14), (v31 & 1) != 0))
    {
      v32 = *(*(v29 + 56) + 8 * v30);
      swift_endAccess();
      v43 = v32;
    }

    else
    {
      swift_endAccess();
      v43 = &_swiftEmptyArrayStorage;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v37 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v33 = v43;
    swift_beginAccess();
    v34 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_10000A2CC(v33, v15, v14, isUniquelyReferenced_nonNull_native);

    *(v2 + 24) = v42;
    swift_endAccess();
  }

  return v20;
}

Swift::Int sub_100022C64()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_100022CD4()
{
  if (v0[1])
  {
    v1 = *v0;
    Hasher._combine(_:)(1uLL);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100022D4C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100022DB8(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

unint64_t sub_100022DFC()
{
  type metadata accessor for InjectedSceneRegistry();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_10002BD9C(&_swiftEmptyArrayStorage);
  result = sub_10002BEA0(&_swiftEmptyArrayStorage);
  *(v0 + 24) = result;
  qword_100073700 = v0;
  return result;
}

uint64_t sub_100022E9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    return swift_endAccess();
  }

  v6 = sub_100007180(a1, a2);
  if ((v7 & 1) == 0)
  {
    return swift_endAccess();
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  swift_endAccess();
  type metadata accessor for HostedPreviewCanvas();
  sub_100023198(&qword_10006ECA8);

  Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  swift_beginAccess();

  sub_1000069A4(0, a1, a2);
  swift_endAccess();
}

uint64_t sub_100022FE4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

__n128 sub_100023048(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100023054(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000230A4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000230F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100023110(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_100023144()
{
  result = qword_10006F7A0;
  if (!qword_10006F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F7A0);
  }

  return result;
}

uint64_t sub_100023198(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HostedPreviewCanvas();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t UIDeviceOrientation.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000012;
      }

      return 0x446E776F6E6B6E75;
    }

    return 0x7469617274726F70;
  }

  else
  {
    if (a1 <= 4)
    {
      return 0x70616373646E616CLL;
    }

    if (a1 != 6)
    {
      if (a1 == 5)
      {
        return 0x705565636166;
      }

      return 0x446E776F6E6B6E75;
    }

    return 0x6E776F4465636166;
  }
}

uint64_t sub_1000232FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100023350(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000233D0()
{
  v1 = v0;
  v2 = sub_100004C60(&qword_10006ED10, &qword_10004DB88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25[-v5];
  v7 = sub_100004C60(&qword_10006ED18, &unk_10004DB90);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25[-v9];
  v11 = type metadata accessor for CancellationToken();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = OBJC_IVAR____TtC12PreviewShell18MainViewController_canvasObserver;
  swift_beginAccess();
  if (!(*(v12 + 48))(&v1[v16], 1, v11))
  {
    (*(v12 + 16))(v15, &v1[v16], v11);
    CancellationToken.cancel(dsoHandle:file:line:column:function:)();
    (*(v12 + 8))(v15, v11);
  }

  v17 = *&v1[OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCanvas];
  if (v17)
  {
    v18 = *(v17 + 104);
    v19 = *&v1[OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCanvas];

    EventStream.Sink.eventStream.getter();

    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1000276CC;
    *(v21 + 24) = v20;
    v22 = v1;
    EventStream.observe(dsoHandle:file:line:column:function:_:)();

    (*(v3 + 8))(v6, v2);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(v12 + 56))(v10, v23, 1, v11);
  swift_beginAccess();
  sub_1000276F8(v10, &v1[v16]);
  return swift_endAccess();
}

void sub_10002375C(int a1, char a2)
{
  v42 = a1;
  v4 = type metadata accessor for Callsite();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Logger();
  v9 = *(v41 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v41);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v13 = v2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = v8;
    v17 = v16;
    v18 = swift_slowAlloc();
    v40 = v4;
    v45 = v18;
    *v17 = 136315394;
    v44 = v13[OBJC_IVAR____TtC12PreviewShell18MainViewController_state];
    v19 = String.init<A>(describing:)();
    v39 = v5;
    v20 = a2;
    v22 = sub_10000E0C0(v19, v21, &v45);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v43 = v42;
    v23 = String.init<A>(describing:)();
    v25 = sub_10000E0C0(v23, v24, &v45);

    *(v17 + 14) = v25;
    a2 = v20;
    v5 = v39;
    _os_log_impl(&_mh_execute_header, v14, v15, "Main view controller: transition from '%s' to '%s'", v17, 0x16u);
    swift_arrayDestroy();
    v4 = v40;

    v8 = v38;
  }

  (*(v9 + 8))(v12, v41);
  v26 = v42;
  v13[OBJC_IVAR____TtC12PreviewShell18MainViewController_state] = v42;
  if (v26)
  {
    if (v26 == 1)
    {
      v27 = OBJC_IVAR____TtC12PreviewShell18MainViewController_connectViewController;
      v28 = *&v13[OBJC_IVAR____TtC12PreviewShell18MainViewController_connectViewController];
      if (v28)
      {
        v29 = *&v13[OBJC_IVAR____TtC12PreviewShell18MainViewController_connectViewController];
        v30 = v28;
      }

      else
      {
        type metadata accessor for ConnectViewController();
        v35 = ConnectViewController.__allocating_init()();
        v36 = *&v13[v27];
        *&v13[v27] = v35;
        v29 = v35;

        v37 = 0;
      }

      goto LABEL_11;
    }

    v32 = *&v13[OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCanvas];
    if (!v32)
    {
      Callsite.init(_:_:_:_:)();
      assertUnreachable(callsite:)();
      (*(v5 + 8))(v8, v4);
      return;
    }

    v31 = *(v32 + 24);
  }

  else
  {
    v31 = sub_100025D44();
  }

  v29 = v31;
LABEL_11:
  v33 = *&v13[OBJC_IVAR____TtC12PreviewShell18MainViewController_visibleChild];
  if (!v33 || v29 != v33)
  {
    v34 = v13;
    v29 = v29;
    sub_100026C18(v29, a2 & 1, v34, v34, v29, a2 & 1);
  }
}

char *sub_100023B44()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v46 - v5;
  v7 = sub_100004C60(&qword_10006F878, &qword_10004E8A0);
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  v11 = sub_100004C60(&qword_10006ED18, &unk_10004DB90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v46 - v13;
  v15 = type metadata accessor for FulfillmentFailureMode();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = OBJC_IVAR____TtC12PreviewShell18MainViewController_invalidationHandle;
  (*(v19 + 104))(&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FulfillmentFailureMode.softAssert(_:));
  v20 = type metadata accessor for ConcurrentInvalidationHandle();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *&v0[v18] = ConcurrentInvalidationHandle.init(dsoHandle:file:line:column:function:name:failureMode:)();
  v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_state] = 0;
  *&v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_visibleChild] = 0;
  *&v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_splashViewController] = 0;
  *&v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_connectViewController] = 0;
  v23 = OBJC_IVAR____TtC12PreviewShell18MainViewController_canvasObserver;
  v24 = type metadata accessor for CancellationToken();
  v25 = *(*(v24 - 8) + 56);
  v25(&v1[v23], 1, 1, v24);
  *&v1[OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeObservation] = 0;
  v50 = v25;
  v25(&v1[OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCacheObserver], 1, 1, v24);
  v1[OBJC_IVAR____TtC12PreviewShell18MainViewController_isForeground] = 0;
  *&v1[OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer] = 0;
  *&v1[OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCanvas] = 0;
  v52.receiver = v1;
  v52.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v52, "initWithNibName:bundle:", 0, 0);
  if (qword_10006E608 != -1)
  {
    swift_once();
  }

  v27 = qword_100073718;
  if (qword_100073718)
  {
    v48 = v6;
    v28 = *(qword_100073718 + 16);

    v29 = v10;
    EventStreamObservable.projectedValue.getter();

    v30 = swift_allocObject();
    v31 = v49;
    *(v30 + 16) = v26;
    v47 = v26;
    v32 = v26;
    EventStream.observe(dsoHandle:file:line:column:function:_:)();

    (*(v31 + 8))(v29, v7);
    v50(v14, 0, 1, v24);
    v33 = OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCacheObserver;
    swift_beginAccess();
    sub_1000276F8(v14, v32 + v33);
    swift_endAccess();
    v34 = *(v27 + 16);

    EventStreamObservable.wrappedValue.getter();

    if ((v51 & 1) == 0)
    {

      sub_1000293B0(sub_100027B64, v27);
    }

    v26 = v47;
    v6 = v48;
  }

  v35 = type metadata accessor for TaskPriority();
  v36 = *(*(v35 - 8) + 56);
  v36(v6, 1, 1, v35);
  type metadata accessor for MainActor();
  v37 = v26;
  v38 = static MainActor.shared.getter();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = &protocol witness table for MainActor;
  v39[4] = v37;
  v40 = v37;
  v41 = sub_10002D668(0, 0, v6, &unk_10004E8B0, v39);
  v42 = *&v40[OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeObservation];
  *&v40[OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeObservation] = v41;

  v36(v6, 1, 1, v35);
  v43 = static MainActor.shared.getter();
  v44 = swift_allocObject();
  v44[2] = v43;
  v44[3] = &protocol witness table for MainActor;
  v44[4] = v40;
  sub_10002D668(0, 0, v6, &unk_10004E8C0, v44);

  return v40;
}

uint64_t sub_1000241C0(char *a1, void *a2)
{
  v4 = type metadata accessor for ExecutionLane();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  static ExecutionLane.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  v11 = a2;
  ExecutionLane.execute(_:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000242E0()
{
  v1 = type metadata accessor for ExecutionLane();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004C60(&qword_10006F868, &unk_10004E890);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ServerFarm();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = __chkstk_darwin(v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v0;
  if (v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_isForeground] == 1)
  {
    v24 = v5;
    if (qword_10006E5C8 != -1)
    {
      swift_once();
    }

    v17 = *(v12 + 16);
    v23 = qword_1000736D0;
    v17(v16, qword_1000736D0 + OBJC_IVAR____TtC12PreviewShell19PreviewShellService_serverFarm, v11);
    ServerFarm.serviceHubServer.getter();
    (*(v12 + 8))(v16, v11);
    AggregatingHostServer.connectionMonitor.getter();

    AggregatingHostServer.ConnectionMonitor.status.getter();
    (*(v7 + 8))(v10, v6);
    type metadata accessor for ServiceHubService();
    sub_100027684(&qword_10006F870, &type metadata accessor for ServiceHubService);
    result = static AggregatingHostServer.ConnectionMonitor.Status.== infix(_:_:)();
    v18 = v24;
    if ((result & 1) != 0 && !*&v25[OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer])
    {
      if (qword_10006E608 != -1)
      {
        result = swift_once();
      }

      if (!qword_100073718 || (v19 = *(qword_100073718 + 16), , , EventStreamObservable.wrappedValue.getter(), , result = , v26 == 1))
      {
        if (v25[OBJC_IVAR____TtC12PreviewShell18MainViewController_state] - 1 >= 2)
        {
          sub_10001A730();
          static ExecutionLane.main.getter();
          v20 = swift_allocObject();
          v21 = v25;
          *(v20 + 16) = v25;
          v22 = v21;
          Future.observeFailure(on:_:)();

          return (*(v2 + 8))(v18, v1);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100024704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ExecutionLane();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_100004C60(&qword_10006F880, &qword_10004E8C8);
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = sub_100004C60(&qword_10006F868, &unk_10004E890);
  v4[9] = v11;
  v12 = *(v11 - 8);
  v4[10] = v12;
  v13 = *(v12 + 64) + 15;
  v4[11] = swift_task_alloc();
  v14 = type metadata accessor for ServerFarm();
  v4[12] = v14;
  v15 = *(v14 - 8);
  v4[13] = v15;
  v16 = *(v15 + 64) + 15;
  v4[14] = swift_task_alloc();
  v17 = sub_100004C60(&qword_10006F888, &unk_10004E8D0);
  v4[15] = v17;
  v18 = *(v17 - 8);
  v4[16] = v18;
  v19 = *(v18 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v21;
  v4[21] = v20;

  return _swift_task_switch(sub_100024990, v21, v20);
}

uint64_t sub_100024990()
{
  if (qword_10006E5C8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v22 = v0[6];
  v23 = v0[17];
  v9 = qword_1000736D0;
  v10 = OBJC_IVAR____TtC12PreviewShell19PreviewShellService_serverFarm;
  v0[22] = qword_1000736D0;
  v0[23] = v10;
  v11 = *(v2 + 16);
  v0[24] = v11;
  v0[25] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v1, v9 + v10, v4);
  ServerFarm.serviceHubServer.getter();
  v12 = *(v2 + 8);
  v0[26] = v12;
  v0[27] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  AggregatingHostServer.connectionMonitor.getter();

  AggregatingHostServer.ConnectionMonitor.$status.getter();
  v13 = *(v5 + 8);
  v0[28] = v13;
  v0[29] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v3, v6);
  AsyncStream.makeAsyncIterator()();
  (*(v8 + 8))(v7, v22);
  v14 = OBJC_IVAR____TtC12PreviewShell18MainViewController_isForeground;
  v0[30] = OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer;
  v0[31] = v14;
  v0[32] = OBJC_IVAR____TtC12PreviewShell18MainViewController_state;
  v15 = v0[18];
  v16 = static MainActor.shared.getter();
  v0[33] = v16;
  v17 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v18 = swift_task_alloc();
  v0[34] = v18;
  *v18 = v0;
  v18[1] = sub_100024BB8;
  v19 = v0[17];
  v20 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 35, v16, &protocol witness table for MainActor, v20);
}

uint64_t sub_100024BB8()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v7 = *v0;

  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return _swift_task_switch(sub_100024CFC, v5, v4);
}

uint64_t sub_100024CFC()
{
  if (*(v0 + 280) == 2)
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 112);
    v3 = *(v0 + 88);
    v4 = *(v0 + 64);
    v5 = *(v0 + 40);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    type metadata accessor for ServiceHubService();
    sub_100027684(&qword_10006F870, &type metadata accessor for ServiceHubService);
    if (static AggregatingHostServer.ConnectionMonitor.Status.== infix(_:_:)())
    {
      v8 = *(v0 + 240);
      v9 = *(v0 + 16);
      if (*(v9 + v8))
      {
        v10 = *(v9 + v8);

        DelayedInvocation.cancel()();

        v11 = *(v9 + v8);
        v8 = *(v0 + 240);
        v9 = *(v0 + 16);
      }

      *(v9 + v8) = 0;
    }

    if (*(*(v0 + 16) + *(v0 + 248)) == 1)
    {
      v32 = *(v0 + 224);
      v33 = *(v0 + 232);
      v13 = *(v0 + 208);
      v12 = *(v0 + 216);
      v14 = *(v0 + 200);
      v15 = *(v0 + 112);
      v17 = *(v0 + 88);
      v16 = *(v0 + 96);
      v18 = *(v0 + 72);
      (*(v0 + 192))(v15, *(v0 + 176) + *(v0 + 184), v16);
      ServerFarm.serviceHubServer.getter();
      v13(v15, v16);
      AggregatingHostServer.connectionMonitor.getter();

      AggregatingHostServer.ConnectionMonitor.status.getter();
      v32(v17, v18);
      if ((static AggregatingHostServer.ConnectionMonitor.Status.== infix(_:_:)() & 1) != 0 && !*(*(v0 + 16) + *(v0 + 240)))
      {
        if (qword_10006E608 != -1)
        {
          swift_once();
        }

        if (!qword_100073718 || (v25 = *(qword_100073718 + 16), , , EventStreamObservable.wrappedValue.getter(), , , *(v0 + 281) == 1))
        {
          v26 = *(v0 + 16);
          if (v26[*(v0 + 256)] - 1 >= 2)
          {
            v27 = *(v0 + 176);
            v29 = *(v0 + 32);
            v28 = *(v0 + 40);
            v30 = *(v0 + 24);
            sub_10001A730();
            static ExecutionLane.main.getter();
            *(swift_allocObject() + 16) = v26;
            v31 = v26;
            Future.observeFailure(on:_:)();

            (*(v29 + 8))(v28, v30);
          }
        }
      }
    }

    v19 = *(v0 + 144);
    v20 = static MainActor.shared.getter();
    *(v0 + 264) = v20;
    v21 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v22 = swift_task_alloc();
    *(v0 + 272) = v22;
    *v22 = v0;
    v22[1] = sub_100024BB8;
    v23 = *(v0 + 136);
    v24 = *(v0 + 120);

    return AsyncStream.Iterator.next(isolation:)(v0 + 280, v20, &protocol witness table for MainActor, v24);
  }
}

uint64_t sub_1000250E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  ObjectType = swift_getObjectType();
  v7 = *(*(sub_100004C60(&qword_10006ED18, &unk_10004DB90) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for CancellationToken();
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v4[14] = a4;
  v11 = async function pointer to ConcurrentInvalidatable.invalidation.getter[1];
  v12 = swift_task_alloc();
  v4[22] = v12;
  v13 = sub_100027684(&qword_10006F860, type metadata accessor for MainViewController);
  *v12 = v4;
  v12[1] = sub_100025284;

  return ConcurrentInvalidatable.invalidation.getter(ObjectType, v13);
}

uint64_t sub_100025284()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000253C0, v5, v4);
}

uint64_t sub_1000253C0()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];

  v5 = OBJC_IVAR____TtC12PreviewShell18MainViewController_canvasObserver;
  swift_beginAccess();
  v6 = *(v3 + 48);
  if (!v6(v4 + v5, 1, v2))
  {
    v8 = v0[18];
    v7 = v0[19];
    v9 = v0[17];
    (*(v8 + 16))(v7, v4 + v5, v9);
    CancellationToken.cancel(dsoHandle:file:line:column:function:)();
    (*(v8 + 8))(v7, v9);
  }

  v10 = v0[15];
  v25 = OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeObservation;
  v11 = v10;
  if (*(v10 + OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeObservation))
  {
    v12 = *(v10 + OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeObservation);

    Task.cancel()();

    v11 = v0[15];
  }

  v26 = v4;
  v13 = v0[17];
  v14 = OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCacheObserver;
  swift_beginAccess();
  if (!v6(v11 + v14, 1, v13))
  {
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[17];
    (*(v16 + 16))(v15, v11 + v14, v17);
    CancellationToken.cancel(dsoHandle:file:line:column:function:)();
    (*(v16 + 8))(v15, v17);
  }

  v24 = v0[19];
  v18 = v0[16];
  v19 = v0[17];
  v20 = *(v0[18] + 56);
  v20(v18, 1, 1, v19);
  swift_beginAccess();
  sub_1000276F8(v18, v26 + v5);
  swift_endAccess();
  v21 = *(v10 + v25);
  *(v10 + v25) = 0;

  v20(v18, 1, 1, v19);
  swift_beginAccess();
  sub_1000276F8(v18, v11 + v14);
  swift_endAccess();

  v22 = v0[1];

  return v22();
}

void sub_100025774()
{
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_splashViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame:{v7, v9, v11, v13}];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  v14 = *&v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_connectViewController];
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = [v14 view];
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = v15;
  v17 = [v0 view];
  if (!v17)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame:{v20, v22, v24, v26}];
LABEL_9:
  v27 = *&v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCanvas];
  if (!v27)
  {
    return;
  }

  v28 = [*(v27 + 24) view];
  if (!v28)
  {
    goto LABEL_18;
  }

  v29 = v28;
  v30 = [v0 view];
  if (!v30)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v31 = v30;
  [v30 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v29 setFrame:{v33, v35, v37, v39}];
}

uint64_t sub_1000259C4()
{
  v1 = type metadata accessor for SchedulerInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchScheduler();
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6);
  if ((v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_isForeground] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_isForeground] = 1;
    type metadata accessor for DelayedInvocation();
    sub_1000052B8(0, &qword_10006E8A0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.main.getter();
    DispatchScheduler.init(queue:)();
    v9 = swift_allocObject();
    *(v9 + 16) = 0x4000000000000000;
    *(v9 + 24) = v0;
    v10 = v0;
    v11 = DelayedInvocation.__allocating_init<A>(scheduler:callback:)();
    SchedulerInterval.init(_:)();
    DelayedInvocation.schedule(delay:)();
    (*(v2 + 8))(v5, v1);
    v12 = *&v10[OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer];
    *&v10[OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer] = v11;
  }

  return result;
}

uint64_t sub_100025BAC(uint64_t a1, double a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v9, v10, "Timed out after %f seconds waiting for any incoming Xcode connection", v11, 0xCu);
  }

  (*(v5 + 8))(v8, v4);
  v12 = OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer;
  if (*(a1 + OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer))
  {
    v13 = *(a1 + OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer);

    DelayedInvocation.cancel()();

    v14 = *(a1 + v12);
  }

  *(a1 + v12) = 0;

  return sub_1000242E0();
}

id sub_100025D44()
{
  v1 = OBJC_IVAR____TtC12PreviewShell18MainViewController_splashViewController;
  v2 = *(v0 + OBJC_IVAR____TtC12PreviewShell18MainViewController_splashViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PreviewShell18MainViewController_splashViewController);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() storyboardWithName:v4 bundle:0];

    v6 = [v5 instantiateInitialViewController];
    if (!v6)
    {
      v6 = [objc_allocWithZone(UIViewController) init];
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100025E38(char *a1, void *a2, char a3)
{
  [a1 addChildViewController:a2];
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [a2 view];
  if (!v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  [v7 insertSubview:v8 atIndex:0];

  v10 = [a2 view];
  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  v12 = [a1 view];
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v11 setFrame:{v15, v17, v19, v21}];
  v22 = [a2 view];
  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = v22;
  [v22 setAlpha:1.0];

  [a2 didMoveToParentViewController:a1];
  v24 = *&a1[OBJC_IVAR____TtC12PreviewShell18MainViewController_visibleChild];
  *&a1[OBJC_IVAR____TtC12PreviewShell18MainViewController_visibleChild] = a2;
  if (v24)
  {
    if (a3)
    {
      v25 = objc_opt_self();
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      v45 = sub_1000275F0;
      v46 = v26;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_100023350;
      v44 = &unk_100063318;
      v27 = _Block_copy(&aBlock);
      v28 = a2;
      v29 = v24;

      v30 = swift_allocObject();
      *(v30 + 16) = a1;
      *(v30 + 24) = v29;
      v45 = sub_100027638;
      v46 = v30;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_1000232FC;
      v44 = &unk_100063368;
      v31 = _Block_copy(&aBlock);
      v32 = v29;
      v33 = a1;

      [v25 animateWithDuration:v27 animations:v31 completion:0.3];
      _Block_release(v31);
      _Block_release(v27);

      return;
    }

    sub_1000052B8(0, &qword_10006F858, UIViewController_ptr);
    v36 = a2;
    v40 = v24;
    v37 = static NSObject.== infix(_:_:)();

    if (v37)
    {
      goto LABEL_14;
    }

    [v40 willMoveToParentViewController:0];
    v38 = [v40 view];
    if (v38)
    {
      v39 = v38;
      [v38 removeFromSuperview];

      v35 = v40;
      goto LABEL_13;
    }

LABEL_22:
    __break(1u);
    return;
  }

  v34 = a2;
  v35 = 0;
LABEL_13:
  v40 = v35;
  [v35 removeFromParentViewController];
LABEL_14:
}

void sub_10002622C(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha:0.0];
  }

  else
  {
    __break(1u);
  }
}

void sub_10002628C(int a1, uint64_t a2, id a3)
{
  v4 = *(a2 + OBJC_IVAR____TtC12PreviewShell18MainViewController_visibleChild);
  if (!v4 || (sub_1000052B8(0, &qword_10006F858, UIViewController_ptr), v5 = a3, v6 = v4, v7 = static NSObject.== infix(_:_:)(), v5, v6, (v7 & 1) == 0))
  {
    [a3 willMoveToParentViewController:0];
    v8 = [a3 view];
    if (v8)
    {
      v9 = v8;
      [v8 removeFromSuperview];

      [a3 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100026380(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = a1;
    v15 = v10;
    *v9 = 136315138;
    swift_errorRetain();
    sub_100004C60(&qword_10006E8E8, &qword_10004D780);
    v11 = String.init<A>(describing:)();
    v13 = sub_10000E0C0(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "failed to load cached preview: %s", v9, 0xCu);
    sub_10000519C(v10);
  }

  (*(v3 + 8))(v6, v2);
  sub_10002375C(1, 1);
}

uint64_t type metadata accessor for MainViewController()
{
  result = qword_10006F820;
  if (!qword_10006F820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000266CC()
{
  sub_100026794();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100026794()
{
  if (!qword_10006F830)
  {
    type metadata accessor for CancellationToken();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10006F830);
    }
  }
}

uint64_t getEnumTagSinglePayload for MainViewController.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MainViewController.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100026948()
{
  result = qword_10006F838;
  if (!qword_10006F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F838);
  }

  return result;
}

uint64_t sub_10002699C()
{
  v1 = type metadata accessor for ExecutionLane();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (qword_10006E5C8 != -1)
  {
    swift_once();
  }

  sub_10001A730();
  static ExecutionLane.main.getter();
  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  Future.observeFailure(on:_:)();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_100026B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100027684(&qword_10006F860, type metadata accessor for MainViewController);

  return ConcurrentInvalidatable.invalidate(callsite:trace:)(a1, a2, a3, v6);
}

uint64_t sub_100026BD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100026C18(void *a1, int a2, void *a3, void *a4, void *a5, char a6)
{
  v12 = type metadata accessor for Logger();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  v17 = a4;
  v18 = a5;
  v19 = [a1 supportedInterfaceOrientations];
  v20 = [a3 view];
  if (!v20)
  {

    __break(1u);
    return;
  }

  v21 = v20;
  v22 = [v20 window];

  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = [v22 windowScene];

  if (!v23)
  {
    goto LABEL_9;
  }

  v24 = [v23 interfaceOrientation];
  if (sub_1000274C8(v24) && (v19 & 0x18) == 0x18 || (v25 = sub_1000274D8(v24)) && (v19 & 2) != 0)
  {

LABEL_9:
    sub_100025E38(v17, v18, a6 & 1);

    return;
  }

  v58 = a2;
  v56 = &v53;
  v57 = v17;
  v66 = &off_100062568;
  __chkstk_darwin(v25);
  *(&v53 - 2) = v19;
  sub_100004C60(&qword_10006F848, &qword_10004E888);
  type metadata accessor for UIInterfaceOrientation(0);
  sub_1000274F0();
  Sequence.firstMap<A>(_:)();
  if (v61)
  {
    v26 = 0;
  }

  else
  {
    v26 = aBlock;
  }

  static Logger.uv.getter();
  v27 = v23;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v30 = os_log_type_enabled(v28, v29);
  v56 = v26;
  if (!v30)
  {

    (*(v59 + 8))(v15, v12);
    v36 = v58;
    goto LABEL_46;
  }

  v31 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  aBlock = v53;
  *v31 = 136315394;
  v32 = [v27 interfaceOrientation];
  v55 = v27;
  v54 = v29;
  if (v32 <= 1)
  {
    if (!v32)
    {
      v35 = 0xE700000000000000;
      v34 = 0x6E776F6E6B6E75;
      goto LABEL_29;
    }

    if (v32 == 1)
    {
      v35 = 0xE800000000000000;
      v34 = 0x7469617274726F70;
      goto LABEL_29;
    }
  }

  else
  {
    if (v32 == 2)
    {
      v34 = 0xD000000000000012;
      v35 = 0x8000000100054E60;
      goto LABEL_29;
    }

    if (v32 == 3)
    {
      v35 = 0xEE00746867695265;
      v34 = 0x70616373646E616CLL;
      goto LABEL_29;
    }

    v33 = v32;
    v34 = 0x70616373646E616CLL;
    v35 = 0xED00007466654C65;
    if (v33 == 4)
    {
      goto LABEL_29;
    }
  }

  v34 = 0x446E776F6E6B6E75;
  v35 = 0xEE00746C75616665;
LABEL_29:
  v37 = sub_10000E0C0(v34, v35, &aBlock);

  *(v31 + 4) = v37;
  *(v31 + 12) = 2080;
  if (v26 > 2)
  {
    v38 = v59;
    if (v26 <= 4)
    {
      if (v26 == 3)
      {
        v40 = 0xED00007466654C65;
        v39 = 0x70616373646E616CLL;
      }

      else
      {
        v39 = 0x70616373646E616CLL;
        v40 = 0xEE00746867695265;
      }

      goto LABEL_45;
    }

    if (v26 == 6)
    {
      v40 = 0xE800000000000000;
      v39 = 0x6E776F4465636166;
      goto LABEL_45;
    }

    if (v26 == 5)
    {
      v40 = 0xE600000000000000;
      v39 = 0x705565636166;
      goto LABEL_45;
    }

LABEL_41:
    v39 = 0x446E776F6E6B6E75;
    v40 = 0xEE00746C75616665;
    goto LABEL_45;
  }

  v38 = v59;
  if (!v26)
  {
    v40 = 0xE700000000000000;
    v39 = 0x6E776F6E6B6E75;
    goto LABEL_45;
  }

  if (v26 == 1)
  {
    v40 = 0xE800000000000000;
    v39 = 0x7469617274726F70;
    goto LABEL_45;
  }

  if (v26 != 2)
  {
    goto LABEL_41;
  }

  v39 = 0xD000000000000012;
  v40 = 0x8000000100054E60;
LABEL_45:
  v41 = sub_10000E0C0(v39, v40, &aBlock);

  *(v31 + 14) = v41;
  _os_log_impl(&_mh_execute_header, v28, v54, "adjusting device orientation from %s -> %s", v31, 0x16u);
  swift_arrayDestroy();

  (*(v38 + 8))(v15, v12);
  v36 = v58;
  v27 = v55;
LABEL_46:
  v42 = v57;
  v43 = [objc_opt_self() currentDevice];
  v44 = swift_allocObject();
  v45 = v56;
  *(v44 + 16) = v43;
  *(v44 + 24) = v45;
  v46 = v43;
  v47 = v46;
  if (v36)
  {
    if ([v46 userInterfaceIdiom])
    {
      v48 = 0.4;
    }

    else
    {
      v48 = 0.3;
    }

    v49 = objc_opt_self();
    v64 = sub_10002758C;
    v65 = v44;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_100023350;
    v63 = &unk_100063278;
    v50 = _Block_copy(&aBlock);

    v51 = swift_allocObject();
    *(v51 + 16) = sub_1000274BC;
    *(v51 + 24) = v16;
    v64 = sub_10000E9D8;
    v65 = v51;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_1000232FC;
    v63 = &unk_1000632C8;
    v52 = _Block_copy(&aBlock);

    [v49 animateWithDuration:v50 animations:v52 completion:v48];

    _Block_release(v52);
    _Block_release(v50);
  }

  else
  {
    [v46 setOrientation:v45 animated:0];
    sub_100025E38(v42, v18, a6 & 1);
  }
}

uint64_t sub_10002747C()
{

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_1000274F0()
{
  result = qword_10006F850;
  if (!qword_10006F850)
  {
    sub_100004D0C(&qword_10006F848, &qword_10004E888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F850);
  }

  return result;
}

uint64_t sub_100027554()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000275A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000275B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000275F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027640()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027684(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000276F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006ED18, &unk_10004DB90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100027768()
{
  v1 = v0;
  v2 = type metadata accessor for FulfillmentFailureMode();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = OBJC_IVAR____TtC12PreviewShell18MainViewController_invalidationHandle;
  (*(v6 + 104))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FulfillmentFailureMode.softAssert(_:));
  v7 = type metadata accessor for ConcurrentInvalidationHandle();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v0 + v5) = ConcurrentInvalidationHandle.init(dsoHandle:file:line:column:function:name:failureMode:)();
  *(v0 + OBJC_IVAR____TtC12PreviewShell18MainViewController_state) = 0;
  *(v0 + OBJC_IVAR____TtC12PreviewShell18MainViewController_visibleChild) = 0;
  *(v0 + OBJC_IVAR____TtC12PreviewShell18MainViewController_splashViewController) = 0;
  *(v0 + OBJC_IVAR____TtC12PreviewShell18MainViewController_connectViewController) = 0;
  v10 = OBJC_IVAR____TtC12PreviewShell18MainViewController_canvasObserver;
  v11 = type metadata accessor for CancellationToken();
  v12 = *(*(v11 - 8) + 56);
  v12(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeObservation) = 0;
  v12(v1 + OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCacheObserver, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC12PreviewShell18MainViewController_isForeground) = 0;
  *(v1 + OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer) = 0;
  *(v1 + OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCanvas) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000279B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001D424;

  return sub_100024704(a1, v4, v5, v6);
}

uint64_t sub_100027A68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100027AA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002020C;

  return sub_1000250E4(a1, v4, v5, v6);
}

uint64_t sub_100027B6C()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *(v0 + 24);
    return sub_1000242E0();
  }

  return result;
}

uint64_t sub_100027B9C(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006ED18, &unk_10004DB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100027C40(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  [v4 setRootViewController:0];
  [v4 setHidden:1];
  [*(a1 + 16) _invalidate];
  v5 = [objc_opt_self() sharedInstance];
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = String._bridgeToObjectiveC()();
  [v5 destroyScene:v8 withTransitionContext:0];
}

uint64_t sub_100027D10(uint64_t a1)
{
  v2 = v1;
  v99 = type metadata accessor for SceneConfigurator();
  v4 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v86 = &v83[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  updated = type metadata accessor for SceneUpdateTiming();
  v105 = *(updated - 8);
  v6 = v105[8];
  v7 = __chkstk_darwin(updated);
  v92 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v93 = &v83[-v10];
  __chkstk_darwin(v9);
  v100 = &v83[-v11];
  v12 = type metadata accessor for SceneUpdateHandshake();
  v102 = *(v12 - 8);
  v103 = v12;
  v13 = *(v102 + 64);
  __chkstk_darwin(v12);
  v94 = &v83[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = type metadata accessor for Logger();
  v96 = *(v97 - 8);
  v15 = *(v96 + 64);
  __chkstk_darwin(v97);
  v17 = &v83[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for PreviewPreferences();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v83[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for SceneLayout();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v91 = &v83[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v30 = &v83[-v29];
  __chkstk_darwin(v28);
  v32 = &v83[-v31];
  sub_10000E678(v2 + 5, v2[8]);
  SceneUpdateHandshake.preferences.getter();
  sub_100021D9C(v32);
  v33 = *(v19 + 8);
  v90 = v18;
  v89 = v19 + 8;
  v87 = v33;
  v33(v22, v18);
  static Logger.uv.getter();
  v34 = v94;
  v35 = *(v102 + 16);
  v98 = a1;
  v35(v94, a1, v103);
  v108 = v24;
  v36 = *(v24 + 16);
  v104 = v32;
  v88 = v36;
  v36(v30, v32, v23);

  v95 = v17;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();

  v39 = os_log_type_enabled(v37, v38);
  v106 = v23;
  v101 = v2;
  if (v39)
  {
    v40 = swift_slowAlloc();
    *&v110[0] = swift_slowAlloc();
    *v40 = 136315650;
    v85 = v37;
    SceneUpdateHandshake.preferences.getter();
    sub_100028D1C(&unk_10006FA20, &type metadata accessor for PreviewPreferences);
    v84 = v38;
    v41 = v90;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v87(v22, v41);
    (*(v102 + 8))(v34, v103);
    v45 = sub_10000E0C0(v42, v44, v110);
    v46 = v106;

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    v47 = v2[9];
    sub_10000E678(v2 + 5, v2[8]);
    v48 = *(v47 + 8);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = sub_10000E0C0(v49, v50, v110);

    *(v40 + 14) = v51;
    *(v40 + 22) = 2080;
    v88(v91, v30, v46);
    v52 = String.init<A>(describing:)();
    v54 = v53;
    v55 = *(v108 + 8);
    v55(v30, v46);
    v56 = sub_10000E0C0(v52, v54, v110);

    *(v40 + 24) = v56;
    v57 = v85;
    _os_log_impl(&_mh_execute_header, v85, v84, "Resolved preferences for %s using %s personality, new layout is %s", v40, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v55 = *(v108 + 8);
    v55(v30, v23);
    (*(v102 + 8))(v34, v103);
  }

  (*(v96 + 8))(v95, v97);
  v58 = SceneUpdateHandshake.fenceHandle.getter();
  v59 = v105[13];
  v60 = v100;
  if (!v58)
  {
    v103 = v55;
    v62 = enum case for SceneUpdateTiming.async(_:);
    (v59)(v93, enum case for SceneUpdateTiming.async(_:), updated);
    LODWORD(v102) = enum case for SceneUpdateTiming.fenced(_:);
    v59(v92);
    sub_100028D1C(&unk_10006FA10, &type metadata accessor for SceneUpdateTiming);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v110[0] == v109)
    {
      v63 = v105[1];
      v64 = updated;
      v63(v92, updated);
      v63(v93, v64);
    }

    else
    {
      v65 = v62;
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v67 = updated;
      v68 = v105[1];
      v68(v92, updated);
      v68(v93, v67);
      v60 = v100;

      if ((v66 & 1) == 0)
      {
        (v59)(v60, v65, updated);
        v61 = 0;
        goto LABEL_11;
      }
    }

    v61 = [objc_opt_self() createForScene:v101[13]];
    (v59)(v60, v102, updated);
    v69 = v61;
LABEL_11:
    v55 = v103;
    goto LABEL_12;
  }

  (v59)(v100, enum case for SceneUpdateTiming.fenced(_:), updated);
  v61 = v58;
LABEL_12:
  v70 = v101;
  v71 = v101 + OBJC_IVAR____TtC12PreviewShell14LocalSceneHost_configurator;
  swift_beginAccess();
  v72 = *(v99 + 24);
  v73 = *(v108 + 24);
  v74 = v58;
  v73(v71 + v72, v104, v106);
  v75 = swift_endAccess();
  v76 = v70[10];
  __chkstk_darwin(v75);
  v81 = v70;
  v82 = v61;
  sub_10003ADDC(sub_100028D14, &v83[-32]);

  v77 = v86;
  sub_100022108(v71, v86);
  v78 = *(v70 + 13);
  v110[0] = *(v70 + 11);
  v110[1] = v78;
  v110[2] = *(v70 + 15);
  v111 = v70[17];
  sub_10003AB58(v110);
  sub_1000220AC(v77);
  sub_100004C60(&qword_10006EA20, &qword_10004D9B0);
  v82 = v60;
  LOBYTE(v81) = 2;
  v79 = static Future.succeeded(dsoHandle:file:line:column:function:_:)();
  [v61 invalidate];

  (v105[1])(v60, updated);
  v55(v104, v106);
  return v79;
}

void sub_100028884(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SceneConfigurator();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC12PreviewShell14LocalSceneHost_configurator;
  swift_beginAccess();
  sub_100022108(a3 + v12, v11);
  sub_10003A5F0(a1);
  sub_1000220AC(v11);
  if (a4)
  {
    v13 = [a4 underlying];
  }

  else
  {
    v13 = 0;
  }

  [a2 setAnimationFence:v13];
}

uint64_t sub_100028988(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SceneConfigurator();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12PreviewShell14LocalSceneHost_configurator;
  swift_beginAccess();
  sub_100022108(a3 + v9, v8);
  sub_10003A5F0(a1);
  return sub_1000220AC(v8);
}

uint64_t sub_100028A3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_10000519C((v0 + 40));

  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  swift_unknownObjectRelease();

  sub_1000220AC(v0 + OBJC_IVAR____TtC12PreviewShell14LocalSceneHost_configurator);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalSceneHost()
{
  result = qword_10006F8B8;
  if (!qword_10006F8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100028B54()
{
  result = type metadata accessor for SceneConfigurator();
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

__n128 sub_100028C20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100028C3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100028C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100028D1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100028D64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v51 = a2;
  v52 = type metadata accessor for Logger();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v52);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v47 = &v46 - v10;
  v11 = type metadata accessor for PreviewType();
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LaunchPayload();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v46 - v21;
  v23 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_launches;
  swift_beginAccess();
  v48 = v3;
  v24 = *(v3 + v23);
  if (*(v24 + 16) && (v25 = sub_1000070AC(v51), (v26 & 1) != 0))
  {
    v27 = v16;
    v28 = *(v24 + 56) + v16[9] * v25;
    v29 = v16[2];
    v30 = v15;
    v29(v20, v28, v15);
    (v27[4])(v22, v20, v15);
    swift_endAccess();
    v31 = v50;
    ShellUpdatePayload.previewType.getter();
    v32 = v49;
    if ((*(v49 + 88))(v14, v11) == enum case for PreviewType.hosted(_:))
    {
      (*(v32 + 96))(v14, v11);
      v33 = type metadata accessor for PreviewType.HostLocation();
      v34 = *(v33 - 8);
      if ((*(v34 + 88))(v14, v33) == enum case for PreviewType.HostLocation.mainScene(_:))
      {
        (*(v34 + 8))(v14, v33);
        v35 = v22;
        v36 = v47;
        v29(v47, v35, v30);
        v37 = type metadata accessor for PreviewCache.Replayable(0);
        v38 = *(v37 + 20);
        updated = type metadata accessor for ShellUpdatePayload();
        (*(*(updated - 8) + 16))(v36 + v38, v31, updated);
        (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
        v40 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_replayable;
        v41 = v48;
        swift_beginAccess();
        sub_10001DE38(v36, v41 + v40);
        swift_endAccess();
        sub_100029688();
        return (v27[1])(v35, v30);
      }

      else
      {
        (v27[1])(v22, v30);
        return (*(v34 + 8))(v14, v33);
      }
    }

    else
    {
      (v27[1])(v22, v30);
      return (*(v32 + 8))(v14, v11);
    }
  }

  else
  {
    swift_endAccess();
    static Logger.uv.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "PreviewCache: ignoring update with no previously stored launch", v45, 2u);
    }

    return (*(v4 + 8))(v7, v52);
  }
}

uint64_t sub_1000292E8()
{
  v0 = type metadata accessor for PreviewCache(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_10002AE24();
  qword_100073718 = v3;
  return result;
}

uint64_t sub_100029328(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_replayable;
  swift_beginAccess();
  sub_10002D480(a1, a2 + v4);
  swift_endAccess();
  v5 = *(a2 + 16);

  EventStreamObservable.wrappedValue.setter();
}

uint64_t sub_1000293B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + OBJC_IVAR____TtC12PreviewShell12PreviewCache_persistQueue);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_10002D1E0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023350;
  aBlock[3] = &unk_1000635F0;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_10002D204(&unk_10006FC90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004C60(&unk_10006E8B0, &unk_10004D6B0);
  sub_10002D24C(&qword_10006FCA0, &unk_10006E8B0, &unk_10004D6B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_100029688()
{
  v1 = type metadata accessor for SchedulerInterval();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  __chkstk_darwin(v1);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchScheduler();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_replayable;
  swift_beginAccess();
  sub_10002D4F0(v0 + v13, v12, &qword_10006F4A0, &qword_10004E1F0);
  v14 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_persistTimer;
  swift_beginAccess();
  if (*(v0 + v14))
  {
    v15 = *(v0 + v14);

    DelayedInvocation.cancel()();
  }

  type metadata accessor for DelayedInvocation();
  v16 = *(v0 + OBJC_IVAR____TtC12PreviewShell12PreviewCache_persistQueue);
  DispatchScheduler.init(queue:)();
  sub_10002D4F0(v12, v10, &qword_10006F4A0, &qword_10004E1F0);
  v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  sub_10002B314(v10, v18 + v17);

  v19 = DelayedInvocation.__allocating_init<A>(scheduler:callback:)();
  v20 = *(v0 + v14);
  *(v0 + v14) = v19;

  swift_beginAccess();
  if (*(v0 + v14))
  {
    swift_endAccess();

    v21 = v23;
    SchedulerInterval.init(floatLiteral:)();
    DelayedInvocation.schedule(delay:)();

    (*(v24 + 8))(v21, v25);
    return sub_10000BF34(v12, &qword_10006F4A0, &qword_10004E1F0);
  }

  else
  {
    sub_10000BF34(v12, &qword_10006F4A0, &qword_10004E1F0);
    return swift_endAccess();
  }
}

uint64_t sub_1000299F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v15 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  sub_100029DC0(&v24 - v16);
  sub_100014DFC();
  v24 = static OS_dispatch_queue.main.getter();
  sub_10002D4F0(v17, v15, &qword_10006F4A0, &qword_10004E1F0);
  v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 16) = v25;
  *(v19 + 24) = v20;
  sub_10002B314(v15, v19 + v18);
  aBlock[4] = sub_10002D40C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023350;
  aBlock[3] = &unk_100063640;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002D204(&unk_10006FC90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004C60(&unk_10006E8B0, &unk_10004D6B0);
  sub_10002D24C(&qword_10006FCA0, &unk_10006E8B0, &unk_10004D6B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v24;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v29 + 8))(v6, v3);
  (*(v27 + 8))(v10, v28);
  return sub_10000BF34(v17, &qword_10006F4A0, &qword_10004E1F0);
}

uint64_t sub_100029DC0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v55 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ShellUpdatePayload();
  v50 = *(updated - 8);
  v6 = *(v50 + 64);
  __chkstk_darwin(updated);
  v52 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for LaunchPayload();
  v51 = *(v54 - 8);
  v8 = *(v51 + 64);
  __chkstk_darwin(v54);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004C60(&qword_10006FBD0, &qword_10004EA68);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v48 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v20 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v48 - v21;
  if (qword_10006E610 != -1)
  {
    swift_once();
  }

  v23 = sub_10000BE8C(v11, qword_10006FA30);
  sub_10002D4F0(v23, v14, &qword_10006FBD0, &qword_10004EA68);
  v24 = sub_100004C60(&qword_10006FBD8, &qword_10004EA70);
  if ((*(*(v24 - 8) + 48))(v14, 1, v24) == 1)
  {
    sub_10000BF34(v14, &qword_10006FBD0, &qword_10004EA68);
    v25 = type metadata accessor for PreviewCache.Replayable(0);
    v26 = *(*(v25 - 8) + 56);
    v27 = a1;
  }

  else
  {
    v48[1] = v3;
    v48[2] = v2;
    v49 = a1;
    v28 = *(v24 + 48);
    v29 = v16[4];
    v29(v22, v14, v15);
    v29(v20, &v14[v28], v15);
    v30 = objc_allocWithZone(NSDictionary);
    URL._bridgeToObjectiveC()(v31);
    v33 = v32;
    v34 = [v30 initWithContentsOfURL:v32];

    if (v34)
    {
      v56 = 0;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v56)
      {
        v35 = objc_allocWithZone(NSDictionary);
        URL._bridgeToObjectiveC()(v36);
        v38 = v37;
        v39 = [v35 initWithContentsOfURL:v37];

        if (v39)
        {
          v56 = 0;
          static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

          if (v56)
          {
            sub_10002D204(&unk_10006FBE0, &type metadata accessor for LaunchPayload);
            PropertyListRepresentable.init(serializableDictionary:)();
            sub_10002D204(&qword_10006FBF0, &type metadata accessor for ShellUpdatePayload);
            v40 = v52;
            v41 = updated;
            PropertyListRepresentable.init(serializableDictionary:)();
            v43 = v40;
            v44 = v16[1];
            v44(v20, v15);
            v44(v22, v15);
            v45 = v49;
            (*(v51 + 32))(v49, v10, v54);
            v46 = type metadata accessor for PreviewCache.Replayable(0);
            (*(v50 + 32))(v45 + *(v46 + 20), v43, v41);
            return (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
          }
        }
      }
    }

    v42 = v16[1];
    v42(v20, v15);
    v42(v22, v15);
    v25 = type metadata accessor for PreviewCache.Replayable(0);
    v26 = *(*(v25 - 8) + 56);
    v27 = v49;
  }

  return v26(v27, 1, 1, v25);
}

uint64_t sub_10002A588()
{
  v0 = sub_100004C60(&qword_10006FBD0, &qword_10004EA68);
  sub_100020278(v0, qword_10006FA30);
  v1 = sub_10000BE8C(v0, qword_10006FA30);
  return sub_10002A5E0(v1);
}

uint64_t sub_10002A5E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 URLsForDirectory:9 inDomains:1];

  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v17 + 16))
  {
    (*(v8 + 16))(v12, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    (*(v8 + 32))(v14, v12, v7);
    v18 = sub_100004C60(&qword_10006FBD8, &qword_10004EA70);
    v19 = *(v18 + 48);
    URL.appendingPathComponent(_:)();
    URL.appendingPathComponent(_:)();
    (*(v8 + 8))(v14, v7);
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {

    static Logger.uv.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "unable to locate documents directory for preview cache", v23, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v24 = sub_100004C60(&qword_10006FBD8, &qword_10004EA70);
    return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
  }
}

uint64_t sub_10002A97C()
{
  v1 = v0[2];

  sub_10000BF34(v0 + OBJC_IVAR____TtC12PreviewShell12PreviewCache_replayable, &qword_10006F4A0, &qword_10004E1F0);
  v2 = *(v0 + OBJC_IVAR____TtC12PreviewShell12PreviewCache_launches);

  v3 = *(v0 + OBJC_IVAR____TtC12PreviewShell12PreviewCache_persistTimer);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10002AA50()
{
  sub_10002AB14();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10002AB14()
{
  if (!qword_10006FA98)
  {
    type metadata accessor for PreviewCache.Replayable(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10006FA98);
    }
  }
}

uint64_t sub_10002ABA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LaunchPayload();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    updated = type metadata accessor for ShellUpdatePayload();
    v11 = *(*(updated - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, updated);
  }
}

uint64_t sub_10002ACA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LaunchPayload();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    updated = type metadata accessor for ShellUpdatePayload();
    v13 = *(*(updated - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, updated);
  }
}

uint64_t sub_10002ADA0()
{
  result = type metadata accessor for LaunchPayload();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ShellUpdatePayload();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002AE24()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v2 - 8);
  v16 = v2;
  v3 = *(v15 + 64);
  __chkstk_darwin(v2);
  v14 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100004C60(&unk_10006FBF8, &qword_10004EA78);
  v18 = 0;
  default argument 1 of EventStreamObservable.init(wrappedValue:emitsInitialValue:)();
  *(v0 + 16) = EventStreamObservable.__allocating_init(wrappedValue:emitsInitialValue:)();
  v9 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_replayable;
  v10 = type metadata accessor for PreviewCache.Replayable(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_launches;
  *(v1 + v11) = sub_10002BFA4(&_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC12PreviewShell12PreviewCache_persistTimer) = 0;
  v13 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_persistQueue;
  sub_100014DFC();
  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_10002D204(&qword_10006FC08, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004C60(&qword_10006FC10, &qword_10004EA80);
  sub_10002D24C(&qword_10006FC18, &qword_10006FC10, &qword_10004EA80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v15 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v1 + v13) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v1;
}

void sub_10002B134(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10002B1A8()
{
  v1 = *(sub_100004C60(&qword_10006F4A0, &qword_10004E1F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = type metadata accessor for PreviewCache.Replayable(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for LaunchPayload();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v6 + 20);
    updated = type metadata accessor for ShellUpdatePayload();
    (*(*(updated - 8) + 8))(v0 + v3 + v8, updated);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002B314(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B384()
{
  v1 = *(sub_100004C60(&qword_10006F4A0, &qword_10004E1F0) - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10002CA10(v2);
}

unint64_t sub_10002B3F0(uint64_t a1)
{
  v2 = sub_100004C60(&unk_10006FC80, &qword_10004EAC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004C60(&qword_10006EA38, &unk_10004D9C0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10002D4F0(v10, v6, &unk_10006FC80, &qword_10004EAC0);
      result = sub_100006EC0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      updated = type metadata accessor for SceneUpdateSeed();
      result = (*(*(updated - 8) + 32))(v15 + *(*(updated - 8) + 72) * v14, v6, updated);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10002B5D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004C60(&unk_10006FC70, &qword_10004EAB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100006F94(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_10002B6D0(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006FC60, &qword_10004EAA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004C60(&qword_10006FC68, &qword_10004EAB0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10002D4F0(v10, v6, &qword_10006FC60, &qword_10004EAA8);
      result = sub_100006FD8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ContentKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_10000BF1C(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10002B8C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004C60(&qword_10006EAB0, &qword_10004D9F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100006E04(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10002B9C4(uint64_t a1)
{
  v2 = sub_100004C60(&unk_10006FC40, &qword_10004EAA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004C60(&qword_10006EA80, &qword_10004D9D8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10002D4F0(v10, v6, &unk_10006FC40, &qword_10004EAA0);
      result = sub_1000070AC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for AgentDescriptor.Bundle();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10002BBAC(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006FC30, &qword_10004EA90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004C60(&qword_10006FC38, &qword_10004EA98);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10002D4F0(v10, v6, &qword_10006FC30, &qword_10004EA90);
      result = sub_100006FD8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ContentKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_10000BF1C(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10002BD9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004C60(&qword_10006EAB8, &qword_10004DA00);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100007180(v5, v6);
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

unint64_t sub_10002BEA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004C60(&unk_10006FC50, &unk_10004D9E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100007180(v5, v6);
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

unint64_t sub_10002BFA4(uint64_t a1)
{
  v2 = sub_100004C60(&unk_10006FC20, &qword_10004EA88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004C60(&qword_10006EA68, &qword_10004D9D0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10002D4F0(v10, v6, &unk_10006FC20, &qword_10004EA88);
      result = sub_1000070AC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for AgentDescriptor.Bundle();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for LaunchPayload();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10002C1C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004C60(&unk_10006EAC0, &unk_10004DA08);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100006E04(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10002C2C8(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006FCB0, &qword_10004E548);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004C60(&qword_10006FCB8, qword_10004EAC8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10002D4F0(v10, v6, &qword_10006FCB0, &qword_10004E548);
      result = sub_100007214(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ContentCategory();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for EntryPointCategory();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10002C4E8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004C60(&qword_10006FBD0, &qword_10004EA68);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v47 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v47 - v15;
  if (qword_10006E610 != -1)
  {
    swift_once();
  }

  v17 = sub_10000BE8C(v5, qword_10006FA30);
  sub_10002D4F0(v17, v8, &qword_10006FBD0, &qword_10004EA68);
  v18 = sub_100004C60(&qword_10006FBD8, &qword_10004EA70);
  if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
  {
    return sub_10000BF34(v8, &qword_10006FBD0, &qword_10004EA68);
  }

  v48 = v0;
  v49 = v4;
  v47 = v1;
  v20 = *(v18 + 48);
  v21 = v10[4];
  v21(v16, v8, v9);
  v21(v14, &v8[v20], v9);
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  v50 = 0;
  v27 = [v23 removeItemAtURL:v25 error:&v50];

  v28 = v50;
  if (!v27)
  {
    goto LABEL_8;
  }

  v29 = v50;
  v30 = [v22 defaultManager];
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v50 = 0;
  v34 = [v30 removeItemAtURL:v32 error:&v50];

  v28 = v50;
  if (v34)
  {
    v35 = v10[1];
    v36 = v50;
    v35(v14, v9);
    return (v35)(v16, v9);
  }

  else
  {
LABEL_8:
    v37 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v38 = v49;
    static Logger.uv.getter();
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v48;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to clear persisted cache: %@", v43, 0xCu);
      sub_10000BF34(v44, &qword_10006EBC8, &qword_10004DE70);

      v38 = v49;
    }

    (*(v47 + 8))(v38, v42);
    v46 = v10[1];
    v46(v14, v9);
    return (v46)(v16, v9);
  }
}

uint64_t sub_10002CA10(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  __chkstk_darwin(v2);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004C60(&qword_10006FBD0, &qword_10004EA68);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v52 - v7;
  v56 = type metadata accessor for URL();
  v58 = *(v56 - 8);
  v9 = v58[8];
  v10 = __chkstk_darwin(v56);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v52 - v13;
  v14 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v52 - v16;
  v18 = type metadata accessor for PreviewCache.Replayable(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002D4F0(a1, v17, &qword_10006F4A0, &qword_10004E1F0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000BF34(v17, &qword_10006F4A0, &qword_10004E1F0);
    return sub_10002C4E8();
  }

  else
  {
    sub_10001DB40(v17, v22);
    if (qword_10006E610 != -1)
    {
      swift_once();
    }

    v24 = sub_10000BE8C(v5, qword_10006FA30);
    sub_10002D4F0(v24, v8, &qword_10006FBD0, &qword_10004EA68);
    v25 = sub_100004C60(&qword_10006FBD8, &qword_10004EA70);
    if ((*(*(v25 - 8) + 48))(v8, 1, v25) == 1)
    {
      sub_10002D144(v22);
      return sub_10000BF34(v8, &qword_10006FBD0, &qword_10004EA68);
    }

    else
    {
      v26 = v12;
      v27 = *(v25 + 48);
      v28 = v58[4];
      v29 = v56;
      v28(v57, v8, v56);
      v28(v26, &v8[v27], v29);
      type metadata accessor for LaunchPayload();
      sub_10002D204(&unk_10006FBE0, &type metadata accessor for LaunchPayload);
      PropertyListRepresentable.serializableDictionary.getter();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      URL._bridgeToObjectiveC()(v31);
      v33 = v32;
      v59 = 0;
      v34 = [(objc_class *)isa writeToURL:v32 error:&v59];

      v35 = v59;
      if (!v34)
      {
        goto LABEL_10;
      }

      v36 = *(v18 + 20);
      type metadata accessor for ShellUpdatePayload();
      sub_10002D204(&qword_10006FBF0, &type metadata accessor for ShellUpdatePayload);
      v37 = v35;
      PropertyListRepresentable.serializableDictionary.getter();
      v38 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL._bridgeToObjectiveC()(v39);
      v41 = v40;
      v59 = 0;
      LODWORD(v36) = [(objc_class *)v38 writeToURL:v40 error:&v59];

      v35 = v59;
      if (v36)
      {
        v42 = v58[1];
        v43 = v59;
        v42(v26, v29);
        v42(v57, v29);
      }

      else
      {
LABEL_10:
        v44 = v35;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v45 = v53;
        static Logger.uv.getter();
        swift_errorRetain();
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          swift_errorRetain();
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 4) = v50;
          *v49 = v50;
          _os_log_impl(&_mh_execute_header, v46, v47, "Failed to persist preview cache: %@", v48, 0xCu);
          sub_10000BF34(v49, &qword_10006EBC8, &qword_10004DE70);
        }

        (*(v54 + 8))(v45, v55);
        sub_10002C4E8();

        v51 = v58[1];
        v51(v26, v29);
        v51(v57, v29);
      }

      return sub_10002D144(v22);
    }
  }
}

uint64_t sub_10002D144(uint64_t a1)
{
  v2 = type metadata accessor for PreviewCache.Replayable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002D1A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002D1EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002D204(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002D24C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004D0C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002D2A0()
{
  v1 = *(sub_100004C60(&qword_10006F4A0, &qword_10004E1F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for PreviewCache.Replayable(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for LaunchPayload();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v6 + 20);
    updated = type metadata accessor for ShellUpdatePayload();
    (*(*(updated - 8) + 8))(v0 + v3 + v8, updated);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002D40C()
{
  v1 = *(sub_100004C60(&qword_10006F4A0, &qword_10004E1F0) - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

uint64_t sub_10002D480(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D4F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004C60(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002D564()
{
  result = type metadata accessor for PreviewAgentConnector();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for EntryPointCategory();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10002D668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10002D4F0(a3, v27 - v11, &qword_10006F450, &qword_10004E198);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000BF34(v12, &qword_10006F450, &qword_10004E198);
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

      sub_10000BF34(a3, &qword_10006F450, &qword_10004E198);

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

  sub_10000BF34(a3, &qword_10006F450, &qword_10004E198);
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

Swift::Int sub_10002D9A0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

BOOL sub_10002D9E8(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_10002D968(*a1, *a2);
}

Swift::Int sub_10002DA00(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_10002D9A0(*v1);
}

void sub_10002DA10(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  sub_10002D978(a1, *v2);
}

Swift::Int sub_10002DA20(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_10002D978(v9, *v2);
  return Hasher._finalize()();
}

uint64_t sub_10002DA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for PreviewAgentConnector();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for AgentSceneConfiguration();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v12 = type metadata accessor for EntryPointCategory();
  v5[18] = v12;
  v13 = *(v12 - 8);
  v5[19] = v13;
  v14 = *(v13 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v16;
  v5[25] = v15;

  return _swift_task_switch(sub_10002DC38, v16, v15);
}

uint64_t sub_10002DC38()
{
  v1 = v0[11];
  v2 = *(v1 + 80);
  v3 = *(v1 + 96);
  v4 = *(v3 + 8);
  v5 = dispatch thunk of static CategoryMap.entryPoints.getter();
  if (*(v5 + 16) && (v6 = sub_100007214(v0[7]), (v7 & 1) != 0))
  {
    v9 = v0[21];
    v8 = v0[22];
    v10 = v0[18];
    v11 = v0[19];
    v12 = v0[17];
    v13 = v0[8];
    v37 = v0[9];
    v14 = *(v5 + 56) + *(v11 + 72) * v6;
    v15 = *(v11 + 16);
    v0[26] = v15;
    v0[27] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v9, v14, v10);

    (*(v11 + 32))(v8, v9, v10);
    (*(v3 + 16))(v13, v37, v2, v3);
    v16 = async function pointer to PreviewAgentConnector.injectScene(configuration:)[1];
    v17 = swift_task_alloc();
    v0[28] = v17;
    *v17 = v0;
    v17[1] = sub_10002DF74;
    v18 = v0[17];
    v19 = v0[10];

    return PreviewAgentConnector.injectScene(configuration:)(v18);
  }

  else
  {
    v20 = v0[23];
    v21 = v0[7];

    static CategoryMap.unhandled(_:)();
    v22 = v0[5];
    v23 = v0[6];
    v24 = sub_10000E678(v0 + 2, v22);
    v25 = *(v22 - 8);
    v26 = *(v25 + 64) + 15;
    v27 = swift_task_alloc();
    (*(v25 + 16))(v27, v24, v22);
    v28 = *(*(v23 + 8) + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v25 + 8))(v27, v22);
    }

    else
    {
      swift_allocError();
      (*(v25 + 32))(v29, v27, v22);
    }

    swift_willThrow();

    sub_10000519C(v0 + 2);
    v31 = v0[21];
    v30 = v0[22];
    v32 = v0[20];
    v33 = v0[17];
    v34 = v0[14];

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_10002DF74(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = v4[24];
    v8 = v4[25];
    v9 = sub_10002E2D4;
  }

  else
  {
    v4[30] = a1;
    v7 = v4[24];
    v8 = v4[25];
    v9 = sub_10002E09C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10002E09C()
{
  v34 = v0[30];
  v35 = v0[29];
  v31 = v0[26];
  v32 = v0[27];
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  v33 = v0[9];
  v10 = v0[8];

  (*(v5 + 16))(v6, v9, v7);
  v31(v3, v2, v4);
  v11 = *(v8 + 48);
  v12 = *(v8 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v13 = sub_10002E470(v6, v34, v10, v33, v3);
  v14 = v0[22];
  if (v35)
  {
    v15 = v0[18];
    v16 = v0[19];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v16 + 8))(v14, v15);
    v18 = v0[21];
    v17 = v0[22];
    v19 = v0[20];
    v20 = v0[17];
    v21 = v0[14];

    v22 = v0[1];

    return v22();
  }

  else
  {
    v25 = v0[20];
    v24 = v0[21];
    v26 = v0[18];
    v27 = v0[19];
    v28 = v0[14];
    v29 = v13;
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v27 + 8))(v14, v26);

    v30 = v0[1];

    return v30(v29);
  }
}

uint64_t sub_10002E2D4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = v0[29];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[20];
  v12 = v0[17];
  v13 = v0[14];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10002E3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  return sub_10002E470(a1, a2, a3, a4, a5);
}

uint64_t sub_10002E470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v51 = a5;
  v12 = *v5;
  v47 = v6;
  v48 = v12;
  v13 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v46 = &v46 - v15;
  v16 = type metadata accessor for InvalidationHandle();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v5[2] = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  v19 = v5 + qword_10006FCE8;
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v5 + qword_10006FCF0) = 0;
  v20 = qword_10006FCC0;
  v21 = type metadata accessor for PreviewAgentConnector();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v52 = a1;
  v49 = v21;
  v23(v5 + v20, a1);
  v24 = qword_10006FCC8;
  *(v5 + qword_10006FCC8) = a2;
  v25 = (v5 + qword_10006FCD0);
  *v25 = a3;
  v25[1] = a4;
  v26 = objc_allocWithZone(type metadata accessor for RemoteContentViewController());
  swift_retain_n();
  swift_unknownObjectRetain_n();
  v50 = a3;
  v27 = v47;
  v28 = sub_100012A18(a2, a3, a4);
  if (v27)
  {

    swift_unknownObjectRelease();
    v29 = type metadata accessor for EntryPointCategory();
    (*(*(v29 - 8) + 8))(v51, v29);
    v30 = *(v22 + 8);
    v31 = v49;
    v30(v52, v49);
    v32 = v5[2];

    v30(v5 + v20, v31);
    v33 = *(v5 + v24);

    v34 = *v25;
    swift_unknownObjectRelease();
    sub_10000BF34(v5 + qword_10006FCE8, &qword_10006FDF8, &qword_10004EDB0);
    v35 = *(*v5 + 48);
    v36 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + qword_10006FCD8) = v28;
    v37 = qword_10006FCE0;
    v38 = type metadata accessor for EntryPointCategory();
    v39 = *(v38 - 8);
    v40 = v51;
    (*(v39 + 16))(v7 + v37, v51, v38);
    v53[6] = a2;
    v53[3] = v48;
    v53[4] = swift_getWitnessTable();
    v53[0] = v7;
    type metadata accessor for PreviewSceneAgentProxy();
    sub_10003604C(qword_10006FE20, &type metadata accessor for PreviewSceneAgentProxy);

    ConcurrentInvalidatable.trackInvalidation(of:)();
    sub_10000519C(v53);
    v41 = type metadata accessor for TaskPriority();
    v42 = v46;
    (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
    type metadata accessor for MainActor();

    v43 = static MainActor.shared.getter();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = &protocol witness table for MainActor;
    v44[4] = a2;
    v44[5] = v7;
    sub_10002D668(0, 0, v42, &unk_10004EE30, v44);

    swift_unknownObjectRelease();

    (*(v39 + 8))(v40, v38);
    (*(v22 + 8))(v52, v49);
  }

  return v7;
}

uint64_t sub_10002E980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[5] = a5;
  v5[6] = *a5;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v5[2] = a4;
  v7 = async function pointer to ConcurrentInvalidatable.invalidation.getter[1];
  v8 = swift_task_alloc();
  v5[9] = v8;
  v9 = type metadata accessor for PreviewSceneAgentProxy();
  v10 = sub_10003604C(qword_10006FE20, &type metadata accessor for PreviewSceneAgentProxy);
  *v8 = v5;
  v8[1] = sub_10002EAB4;

  return ConcurrentInvalidatable.invalidation.getter(v9, v10);
}

uint64_t sub_10002EAB4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002EBF0, v5, v4);
}

uint64_t sub_10002EBF0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];

  v0[3] = v2;
  swift_getWitnessTable();
  if ((Invalidatable.isInvalidated.getter() & 1) == 0)
  {
    v4 = v0[5];
    sub_10002ECE4();
  }

  v5 = v0[6];
  v0[4] = v0[5];
  Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  v6 = v0[1];

  return v6();
}

void sub_10002ECE4()
{
  if (!*(v0 + qword_10006FCF0))
  {
    v1 = v0;
    *(v0 + qword_10006FCF0) = 3;
    v2 = *(v0 + qword_10006FCD8);
    sub_100014260();
    v3 = v1 + qword_10006FCE8;
    swift_beginAccess();
    if (*(v3 + 24))
    {
      sub_10000E808(v3, v6);
      v4 = v6[4];
      sub_10000E678(v6, v6[3]);
      PreviewAgentConnector.pid.getter();
      v5 = *(v4 + 8);
      dispatch thunk of ProviderUpdateDelegate.notePreviewCrashed(pid:)();
      sub_10000519C(v6);
    }
  }
}

uint64_t sub_10002EDB4()
{
  v1 = qword_10006FCF0;
  if (*(v0 + qword_10006FCF0))
  {
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    return static Future<A>.succeeded(dsoHandle:file:line:column:function:)();
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + qword_10006FCD8);
    sub_100013C8C();
    v5 = v3 + qword_10006FCE8;
    swift_beginAccess();
    if (*(v5 + 24))
    {
      sub_10000E808(v5, v8);
      v6 = v8[4];
      sub_10000E678(v8, v8[3]);
      v7 = *(v6 + 8);
      dispatch thunk of ProviderUpdateDelegate.notePreviewStopped()();
      sub_10000519C(v8);
    }

    *(v3 + v1) = 2;
    sub_100012108();
    return static CATransaction.afterSynchronize()();
  }
}

uint64_t sub_10002EECC()
{
  v1 = qword_10006FCF0;
  if (*(v0 + qword_10006FCF0))
  {
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    return static Future<A>.succeeded(dsoHandle:file:line:column:function:)();
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + qword_10006FCD8);
    sub_100013BE0();
    *(v3 + v1) = 1;
    sub_100012108();
    return static CATransaction.afterSynchronize()();
  }
}

uint64_t sub_10002EF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v67 = a4;
  v74 = a3;
  v65 = a2;
  v77 = a1;
  v7 = *v5;
  *&v81 = type metadata accessor for SceneUpdateContext();
  v76 = *(v81 - 8);
  v69 = *(v76 + 64);
  __chkstk_darwin(v81);
  v84 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v7;
  v9 = *(v7 + 104);
  v72 = *(v7 + 88);
  v10 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  v68 = *(v75 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v78 = &v58 - v11;
  v12 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v80 = &v58 - v14;
  v73 = type metadata accessor for AgentUpdate.Context();
  *&v82 = *(v73 - 8);
  v66 = *(v82 + 64);
  __chkstk_darwin(v73);
  v71 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PropertyList();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = type metadata accessor for EntryPointCategory();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for AgentUpdate();
  v63 = *(v64 - 8);
  v23 = *(v63 + 64);
  __chkstk_darwin(v64);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E808(a5, &v83);
  v26 = qword_10006FCE8;
  swift_beginAccess();
  sub_100034DD8(&v83, v10 + v26);
  swift_endAccess();
  v61 = v10;
  v58 = *(v10 + qword_10006FCC8);
  (*(v19 + 16))(v22, v10 + qword_10006FCE0, v18);
  v27 = *(v9 + 48);
  v62 = v9;
  v27(v77, v65, v72, v9);
  v59 = *(v82 + 16);
  v28 = v71;
  v29 = v73;
  v59(v71, v74, v73);
  AgentUpdate.init(entryPointCategory:entryPointPayload:entryPointFrameworkPath:context:)();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v30 = v67;
  v31 = v60;
  v32 = PreviewSceneAgentProxy.perform<A>(update:with:delegate:expecting:)();
  (*(v63 + 8))(v25, v64);
  v64 = type metadata accessor for TaskPriority();
  v33 = *(v64 - 8);
  v63 = *(v33 + 56);
  v65 = v33 + 56;
  (v63)(v80, 1, 1, v64);
  v59(v28, v74, v29);
  v34 = v75;
  (*(v75 + 16))(v78, v77, AssociatedTypeWitness);
  v35 = v76;
  (*(v76 + 16))(v84, v30, v81);
  sub_10000E808(v31, &v83);
  type metadata accessor for MainActor();
  v36 = v32;

  v37 = v61;

  v38 = static MainActor.shared.getter();
  v39 = (*(v82 + 80) + 72) & ~*(v82 + 80);
  v40 = (v66 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v34 + 80) + v40 + 8) & ~*(v34 + 80);
  v42 = (v68 + *(v35 + 80) + v41) & ~*(v35 + 80);
  v69 = (v69 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = v70;
  *(v43 + 2) = v38;
  *(v43 + 3) = &protocol witness table for MainActor;
  v45 = v37;
  v77 = *(v44 + 80);
  *(v43 + 4) = v77;
  v46 = v72;
  *(v43 + 5) = v72;
  v74 = *(v44 + 96);
  v47 = v45;
  v48 = v62;
  *(v43 + 6) = v74;
  *(v43 + 7) = v48;
  *(v43 + 8) = v36;
  (*(v82 + 32))(&v43[v39], v71, v73);
  *&v43[v40] = v47;
  (*(v75 + 32))(&v43[v41], v78, AssociatedTypeWitness);
  (*(v76 + 32))(&v43[v42], v84, v81);
  sub_10000BF1C(&v83, &v43[v69]);
  type metadata accessor for RenderPayload();
  swift_getAssociatedTypeWitness();
  type metadata accessor for CanvasUpdateResult();
  v49 = v80;
  v50 = sub_10003108C(0, 0, v80, &unk_10004EDC0, v43);
  type metadata accessor for Future();
  (v63)(v49, 1, 1, v64);
  v51 = swift_allocObject();
  *&v52 = v77;
  *(&v52 + 1) = v46;
  *&v53 = v74;
  *(&v53 + 1) = v48;
  v81 = v53;
  v82 = v52;
  *(v51 + 16) = v52;
  *(v51 + 32) = v53;
  *(v51 + 48) = v50;
  v54 = swift_allocObject();
  v55 = v81;
  *(v54 + 16) = v82;
  *(v54 + 32) = v55;

  v56 = Future<A>.init(dsoHandle:file:line:column:function:priority:operation:cleanupOnCancelation:)();

  return v56;
}

uint64_t sub_10002F928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v34;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a1;
  v8[8] = a5;
  v10 = *a6;
  v8[13] = *a6;
  v11 = type metadata accessor for ChromeType();
  v8[14] = v11;
  v12 = *(v11 - 8);
  v8[15] = v12;
  v13 = *(v12 + 64) + 15;
  v8[16] = swift_task_alloc();
  updated = type metadata accessor for SceneUpdateContext();
  v8[17] = updated;
  v15 = *(updated - 8);
  v8[18] = v15;
  v8[19] = *(v15 + 64);
  v8[20] = swift_task_alloc();
  v8[21] = *(v10 + 104);
  v8[22] = *(v10 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[23] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v8[24] = v17;
  v8[25] = *(v17 + 64);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v18 = swift_getAssociatedTypeWitness();
  v8[28] = v18;
  v19 = *(v18 - 8);
  v8[29] = v19;
  v20 = *(v19 + 64) + 15;
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v21 = type metadata accessor for CanvasControlConfiguration();
  v8[32] = v21;
  v22 = *(v21 - 8);
  v8[33] = v22;
  v23 = *(v22 + 64) + 15;
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v24 = *(*(sub_100004C60(&qword_10006F468, &qword_10004E1C0) - 8) + 64) + 15;
  v8[36] = swift_task_alloc();
  v25 = swift_getAssociatedTypeWitness();
  v8[37] = v25;
  v26 = *(v25 - 8);
  v8[38] = v26;
  v27 = *(v26 + 64) + 15;
  v28 = swift_task_alloc();
  v8[39] = v28;
  v8[40] = type metadata accessor for MainActor();
  v8[41] = static MainActor.shared.getter();
  v29 = async function pointer to Task.value.getter[1];
  v30 = swift_task_alloc();
  v8[42] = v30;
  v31 = sub_100004C60(&qword_10006E8E8, &qword_10004D780);
  *v30 = v8;
  v30[1] = sub_10002FD78;

  return (Task.value.getter)(v28, a4, v25, v31, &protocol self-conformance witness table for Error);
}

uint64_t sub_10002FD78()
{
  v2 = v0;
  v3 = *(*v1 + 336);
  v4 = *(*v1 + 328);
  v5 = *(*v1 + 320);
  v10 = *v1;
  *(*v1 + 344) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_100030470;
  }

  else
  {
    v8 = sub_10002FED4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10002FED4()
{
  v1 = *(v0 + 328);
  v53 = *(v0 + 312);
  v2 = *(v0 + 288);
  v45 = *(v0 + 304);
  v46 = *(v0 + 296);
  v51 = *(v0 + 280);
  v41 = *(v0 + 272);
  v52 = *(v0 + 264);
  v42 = *(v0 + 256);
  v35 = *(v0 + 248);
  v44 = *(v0 + 240);
  v40 = *(v0 + 232);
  v43 = *(v0 + 224);
  v3 = *(v0 + 216);
  v57 = *(v0 + 208);
  v4 = *(v0 + 192);
  v29 = *(v0 + 200);
  v5 = *(v0 + 184);
  v54 = *(v0 + 176);
  v48 = *(v0 + 168);
  v50 = *(v0 + 160);
  v33 = *(v0 + 152);
  v47 = *(v0 + 144);
  v49 = *(v0 + 136);
  v36 = *(v0 + 120);
  v37 = *(v0 + 128);
  v38 = *(v0 + 112);
  v28 = *(v0 + 104);
  v6 = *(v0 + 80);
  v31 = *(v0 + 88);
  v32 = *(v0 + 96);
  v7 = *(v0 + 64);
  v56 = *(v0 + 72);
  v39 = *(v0 + 56);

  v8 = type metadata accessor for AgentUpdate.Context();
  v55 = swift_allocBox();
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  updated = type metadata accessor for UpdateSetupPayload();
  (*(*(updated - 8) + 56))(v2, 1, 1, updated);
  AgentUpdate.Context.setupPayload.setter();
  v34 = qword_10006FCC0;
  v25 = *(v4 + 16);
  v11 = v3;
  v25(v3, v6, v5);
  v12 = *(v4 + 80);
  v13 = (v12 + 56) & ~v12;
  v26 = v29 + 7;
  v14 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = *(v28 + 80);
  *(v15 + 2) = v16;
  *(v15 + 3) = v54;
  v27 = *(v28 + 96);
  *(v15 + 4) = v27;
  *(v15 + 5) = v48;
  *(v15 + 6) = v56;
  v30 = *(v4 + 32);
  v30(&v15[v13], v11, v5);
  *&v15[v14] = v55;
  (*(v47 + 16))(v50, v31, v49);
  v25(v57, v6, v5);
  sub_10000E808(v32, v0 + 16);
  v17 = (*(v47 + 80) + 48) & ~*(v47 + 80);
  v18 = (v33 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v12 + v18 + 8) & ~v12;
  v20 = (v19 + v26) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = v16;
  *(v21 + 3) = v54;
  *(v21 + 4) = v27;
  *(v21 + 5) = v48;
  (*(v47 + 32))(&v21[v17], v50, v49);
  *&v21[v18] = v56;
  v30(&v21[v19], v57, v5);
  *&v21[v20] = v55;
  sub_10000BF1C((v0 + 16), &v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8]);
  v22 = *(v48 + 56);
  swift_retain_n();
  swift_retain_n();
  v22(v51, v35, v56 + v34, v53, sub_1000354A0, v15, sub_100035718, v21, v54, v48);

  (*(v36 + 104))(v37, enum case for ChromeType.unspecified(_:), v38);
  (*(v52 + 16))(v41, v51, v42);
  (*(v40 + 16))(v44, v35, v43);
  type metadata accessor for RenderPayload();

  CanvasUpdateResult.init<>(staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)();
  (*(v40 + 8))(v35, v43);
  (*(v52 + 8))(v51, v42);
  (*(v45 + 8))(v53, v46);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100030470()
{
  v1 = v0[41];
  v2 = v0[39];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[20];
  v14 = v0[16];

  v11 = v0[1];
  v12 = v0[43];

  return v11();
}

uint64_t sub_100030564@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v28 = a1;
  v33 = a4;
  v5 = *a2;
  v6 = type metadata accessor for AgentUpdate.Context();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v29 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v5 + 104);
  v9 = *(v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = type metadata accessor for Optional();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27);
  v14 = &v25 - v13;
  v15 = type metadata accessor for PropertyList();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = type metadata accessor for EntryPointCategory();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_projectBox();
  (*(v18 + 16))(v21, a2 + qword_10006FCE0, v17);
  v23 = *(AssociatedTypeWitness - 8);
  (*(v23 + 16))(v14, v28, AssociatedTypeWitness);
  (*(v23 + 56))(v14, 0, 1, AssociatedTypeWitness);
  (*(v26 + 48))(v30, v14, v9);
  (*(v11 + 8))(v14, v27);
  swift_beginAccess();
  (*(v31 + 16))(v29, v22, v32);
  return AgentUpdate.init(entryPointCategory:entryPointPayload:entryPointFrameworkPath:context:)();
}

uint64_t sub_1000308E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v48 = a2;
  v51 = a4;
  v41 = a1;
  v6 = *a3;
  v45 = type metadata accessor for AgentUpdate.Context();
  v39 = *(v45 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v45);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v6;
  v44 = *(v6 + 104);
  v42 = *(v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  updated = type metadata accessor for SceneUpdateTiming();
  v15 = *(updated - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(updated);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SceneUpdateContext();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_projectBox();
  v46 = v20;
  v25 = *(v20 + 16);
  v26 = v48;
  v48 = v19;
  v25(v23, v26, v19);
  (*(v15 + 104))(v18, enum case for SceneUpdateTiming.fenced(_:), updated);
  v27 = v39;
  SceneUpdateContext.timing.setter();
  v28 = *(AssociatedTypeWitness - 8);
  (*(v28 + 16))(v13, v41, AssociatedTypeWitness);
  (*(v28 + 56))(v13, 0, 1, AssociatedTypeWitness);
  swift_beginAccess();
  v29 = v40;
  v30 = v24;
  v31 = v45;
  (*(v27 + 16))(v40, v30, v45);
  sub_10000E808(v47, v52);
  v32 = *(v43 + 80);
  *&v33 = v32;
  v34 = v42;
  *(&v33 + 1) = v42;
  v35 = *(v43 + 96);
  *&v36 = v35;
  v37 = v44;
  *(&v36 + 1) = v44;
  v54 = v36;
  v53 = v33;
  *(&v54 + 1) = type metadata accessor for RemoteContentProvider.ControlInteractionUpdateDelegate(0, &v53);
  WitnessTable = swift_getWitnessTable();
  *&v53 = swift_allocObject();
  sub_100030DEC(v52, v32, v34, v35, v37, v53 + 16);
  sub_10002EF8C(v51, v13, v29, v23, &v53);

  (*(v27 + 8))(v29, v31);
  (*(v49 + 8))(v13, v50);
  (*(v46 + 8))(v23, v48);
  return sub_10000519C(&v53);
}

uint64_t sub_100030DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a1;
  sub_10000E808(a1, &v15);
  sub_100004C60(&qword_10006FE10, &qword_10004EDF8);
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  updated = type metadata accessor for RemoteContentProvider.ControlInteractionUpdateDelegate(0, v16);
  if (swift_dynamicCast())
  {
    sub_10000E808(v17, v16);
    (*(*(updated - 8) + 8))(v17, updated);
    sub_10000519C(v10);
    v10 = v16;
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v13 = type metadata accessor for Optional();
    (*(*(v13 - 8) + 8))(v17, v13);
  }

  sub_10000BF1C(v10, v17);
  return sub_10000BF1C(v17, a6);
}

uint64_t sub_100030F40()
{
  v0 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  sub_100004C60(&qword_10006FE00, &qword_10004EDD8);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

  return Future<A>.init(dsoHandle:file:line:column:function:priority:operation:cleanupOnCancelation:)();
}

uint64_t sub_10003108C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_10002D4F0(a3, &v26[-1] - v11, &qword_10006F450, &qword_10004E198);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000BF34(v12, &qword_10006F450, &qword_10004E198);
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
      v21 = String.utf8CString.getter();
      v22 = *(v21 + 16);
      sub_100034B40(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_10000BF34(a3, &qword_10006F450, &qword_10004E198);

      return v23;
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

  sub_10000BF34(a3, &qword_10006F450, &qword_10004E198);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100031310(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = async function pointer to Task.value.getter[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  type metadata accessor for RenderPayload();
  swift_getAssociatedTypeWitness();
  updated = type metadata accessor for CanvasUpdateResult();
  v9 = sub_100004C60(&qword_10006E8E8, &qword_10004D780);
  *v7 = v4;
  v7[1] = sub_10001D424;

  return (Task.value.getter)(a1, a2, updated, v9, &protocol self-conformance witness table for Error);
}

uint64_t sub_100031440()
{
  v1 = type metadata accessor for PreviewPreferences();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = SceneUpdateHandshake.fenceHandle.getter();
  if (result)
  {
    v7 = result;
    v8 = v0[4];
    sub_10000E678(v0, v0[3]);
    SceneUpdateHandshake.preferences.getter();
    dispatch thunk of CanvasUpdateDelegate.adjust(preferences:fenceHandle:)();

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_100031554()
{
  v1 = v0[4];
  sub_10000E678(v0, v0[3]);
  return dispatch thunk of CanvasUpdateDelegate.adjust(preferences:fenceHandle:)();
}

uint64_t sub_1000315B0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = v2[3];
  v5 = v2[4];
  sub_10000E678(v2, v4);
  return a2(v4, v5);
}

uint64_t sub_1000315FC()
{
  v1 = v0[4];
  sub_10000E678(v0, v0[3]);
  return dispatch thunk of CanvasUpdateDelegate.notePreviewSuppressed(presentation:)();
}

uint64_t sub_100031648()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  sub_10000E678(v1, v2);
  v4 = *(v3 + 8);
  return dispatch thunk of ProviderUpdateDelegate.notePreviewStopped()();
}

uint64_t sub_100031684()
{
  v1 = v0[4];
  sub_10000E678(v0, v0[3]);
  v2 = *(v1 + 8);
  return dispatch thunk of ProviderUpdateDelegate.notePreviewCrashed(pid:)();
}

uint64_t sub_10003173C()
{
  if (*(v0 + qword_10006FCF0) - 2 >= 2)
  {
    if (*(v0 + qword_10006FCF0))
    {
      v3 = *v0;
      sub_100004C60(&qword_10006E8F8, &qword_10004D790);
      v4 = *(v3 + 96);
      v6[0] = *(v3 + 80);
      v6[1] = v4;
      type metadata accessor for RemoteContentProvider.CannotResizeWhileRelaunching(0, v6);
      swift_getWitnessTable();
      swift_allocError();
      v5 = static Future.failed(dsoHandle:file:line:column:function:_:)();

      return v5;
    }

    else
    {
      v2 = *(v0 + qword_10006FCC8);
      return PreviewSceneAgentProxy.sendCommitPostSynchronize()();
    }
  }

  else
  {
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    return static Future<A>.succeeded(dsoHandle:file:line:column:function:)();
  }
}

uint64_t sub_1000318BC()
{
  v1 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v19 - v3;
  v5 = *(v0 + qword_10006FCC8);
  v6 = PreviewSceneAgentProxy.scene.getter();
  v7 = [v6 scene];

  v8 = [v7 identityToken];
  v9 = [v8 stringRepresentation];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_10006E618 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_100070258 + 2) && (sub_100006E04(v10, v12), (v13 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v14 = sub_100039D8C(v10, v12);
    swift_beginAccess();
    sub_100006380(v14, v10, v12);
    swift_endAccess();
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v5;
  sub_10002D668(0, 0, v4, &unk_10004EE00, v17);
}

void sub_100031B44()
{
  v1 = *(v0 + qword_10006FCC8);
  v2 = PreviewSceneAgentProxy.scene.getter();
  v3 = [v2 scene];

  sub_10003A03C(0, v3);
}

uint64_t sub_100031BB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002020C;

  return sub_100031C54(a1);
}

uint64_t sub_100031C54(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for GeometryPayload();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for PreviewSnapshot();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v10;
  v2[12] = v9;

  return _swift_task_switch(sub_100031DA4, v10, v9);
}

uint64_t sub_100031DA4()
{
  v1 = (v0[3] + qword_10006FCD0);
  v0[13] = *v1;
  v0[14] = v1[1];
  v0[15] = swift_getObjectType();
  v0[16] = dispatch thunk of PreviewShellScene.takeSnapshot()();
  v2 = v0[4];
  v3 = *(v0[3] + qword_10006FCC8);
  sub_10003604C(&qword_10006FE08, &type metadata accessor for GeometryPayload);
  v4 = PreviewSceneAgentProxy.generateStaticOutput<A>(for:expecting:)();
  v0[17] = v4;
  v5 = async function pointer to Task.value.getter[1];
  v6 = swift_task_alloc();
  v0[18] = v6;
  v7 = sub_100004C60(&qword_10006E8E8, &qword_10004D780);
  *v6 = v0;
  v6[1] = sub_100031F74;
  v8 = v0[6];
  v9 = v0[4];

  return (Task.value.getter)(v8, v4, v9, v7, &protocol self-conformance witness table for Error);
}

uint64_t sub_100031F74()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_100032244;
  }

  else
  {
    v7 = sub_1000320B0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000320B0()
{
  v20 = v0[19];
  v21 = v0[17];
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v19 = v0[7];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  v17 = v0[16];
  v18 = v0[2];

  GeometryPayload.selectableRegions.getter();
  (*(v8 + 8))(v7, v9);
  v10 = dispatch thunk of PreviewShellScene.windowScene.getter();
  v11 = [v10 screen];

  [v11 scale];
  v12 = v17;
  PreviewSnapshot.init(image:selectableRegions:cornerRadius:scaleFactor:)();
  PreviewSnapshot.makeRenderPayload()();
  (*(v6 + 8))(v5, v19);

  v13 = v0[9];
  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100032244()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 80);

  v3 = *(v0 + 152);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000322F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return HumanReadableError.errorDescription.getter(a1, WitnessTable);
}

uint64_t sub_100032348(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return HumanReadableError.description.getter(a1, WitnessTable);
}

uint64_t sub_10003239C()
{
  v1 = *(v0 + 16);

  v2 = qword_10006FCC0;
  v3 = type metadata accessor for PreviewAgentConnector();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_10006FCC8);

  v5 = *(v0 + qword_10006FCD0);
  swift_unknownObjectRelease();

  v6 = qword_10006FCE0;
  v7 = type metadata accessor for EntryPointCategory();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_10000BF34(v0 + qword_10006FCE8, &qword_10006FDF8, &qword_10004EDB0);
  return v0;
}

uint64_t sub_100032494()
{
  sub_10003239C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10003250C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10003259C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000326B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_100032770;

  return sub_10002DA6C(a2, a3, a4, a5);
}

uint64_t sub_100032770(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_100032888(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = *(a2 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return static ContentProvider<>.decode(updatePayload:)();
}

uint64_t sub_100032930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003604C(&qword_10006FE18, &type metadata accessor for RenderPayload);

  return static ContentProvider<>.encode(staticOutput:)(a1, v3, a3, v6);
}

id sub_1000329B8()
{
  v1 = *v0;
  v2 = sub_100035AA4();

  return v2;
}

uint64_t sub_100032AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v3 = sub_100004C60(&qword_100070030, &unk_10004F170);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v24 - v5;
  v7 = sub_100004C60(&qword_10006FFB8, &qword_10004F118);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for PreviewPayload();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RefinedPreviewPayload();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v25, v12);
  sub_10002D4F0(v26, v6, &qword_100070030, &unk_10004F170);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v22 = type metadata accessor for GridIndex();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  }

  else
  {
    sub_100036094(v6, v11);
  }

  RefinedPreviewPayload.init(previewPayload:requestedGroupIndex:)();
  sub_10003604C(&qword_100070038, &type metadata accessor for RefinedPreviewPayload);
  PropertyListRepresentable.propertyList.getter();
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_100032E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a2;
  v14 = type metadata accessor for PreviewStructure();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a4;
  v35 = a3;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v39 = a8;
  sub_100004C60(&qword_10006FFB8, &qword_10004F118);
  CanvasControlConfiguration.init(build:)();
  (*(v15 + 16))(v18, a4, v14);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == enum case for PreviewStructure.previewGroup(_:))
  {
    (*(v15 + 96))(v18, v14);
    v20 = *(sub_100004C60(&qword_10006FFC0, &qword_10004F120) + 48);
    v21 = type metadata accessor for GridIndex();
    v22 = *(v21 - 8);
    v23 = &v18[v20];
    v24 = v33;
    (*(v22 + 32))(v33, v23, v21);
    (*(v22 + 56))(v24, 0, 1, v21);
    v25 = type metadata accessor for PreviewGroupMetadata();
    return (*(*(v25 - 8) + 8))(v18, v25);
  }

  else
  {
    v27 = v19;
    v28 = enum case for PreviewStructure.singlePreview(_:);
    v29 = enum case for PreviewStructure.emptyPreviewGroup(_:);
    v30 = type metadata accessor for GridIndex();
    result = (*(*(v30 - 8) + 56))(v33, 1, 1, v30);
    if (v27 != v28 && v27 != v29)
    {
      return (*(v15 + 8))(v18, v14);
    }
  }

  return result;
}

uint64_t sub_1000330F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v69 = a4;
  v70 = a5;
  v60 = a2;
  v61 = a3;
  v65 = a1;
  v74 = a6;
  v6 = sub_100004C60(&qword_10006FFC8, &qword_10004F128);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v59 = &v57 - v8;
  v9 = sub_100004C60(&qword_10006FFD0, &qword_10004F130);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v62 = &v57 - v11;
  v12 = type metadata accessor for CanvasGridControl();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  __chkstk_darwin(v12);
  v63 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100004C60(&qword_10006FFD8, &qword_10004F138);
  v15 = *(v73 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v73);
  v66 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = &v57 - v19;
  v20 = sub_100004C60(&qword_10006FFE0, &qword_10004F140);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v57 - v22;
  v24 = sub_100004C60(&qword_10006FFE8, &qword_10004F148);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v57 - v26;
  v28 = type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v57 - v34;
  v36 = sub_100004C60(&qword_10006FFF0, &qword_10004F150);
  v72 = *(v36 - 8);
  v37 = *(v72 + 64);
  v38 = __chkstk_darwin(v36);
  v71 = &v57 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = &v57 - v40;
  sub_100033944(v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_10000BF34(v27, &qword_10006FFE8, &qword_10004F148);
    (*(v15 + 56))(v23, 1, 1, v73);
    type metadata accessor for GridIndex();
    sub_10003604C(&qword_10006FFF8, &type metadata accessor for GridIndex);
    static CanvasControlConfigurationBuilder.buildOptional<A>(_:)();
    sub_10000BF34(v23, &qword_10006FFE0, &qword_10004F140);
  }

  else
  {
    v42 = *(v29 + 32);
    v57 = v35;
    v58 = v28;
    v42(v35, v27, v28);
    (*(v29 + 16))(v33, v35, v28);
    v43 = type metadata accessor for ThumbnailGeometry();
    v44 = v59;
    (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
    v45 = swift_allocObject();
    v46 = v61;
    *(v45 + 16) = v60;
    *(v45 + 24) = v46;
    type metadata accessor for GridIndex();

    static ThumbnailHostFactory.remoteHostFactory(expectedGeometry:previewAgentConnector:makeUpdate:validateReply:)();

    sub_10000BF34(v44, &qword_10006FFC8, &qword_10004F128);
    v47 = swift_allocObject();
    *(v47 + 16) = v69;
    *(v47 + 24) = v70;

    v48 = v63;
    CanvasGridControl.init(configuration:thumbnailHostFactory:action:)();
    sub_10003604C(&qword_10006FFF8, &type metadata accessor for GridIndex);
    v49 = v64;
    v50 = v68;
    static CanvasControlConfigurationBuilder.buildExpression<A>(_:)();
    (*(v67 + 8))(v48, v50);
    sub_10001D028(&qword_100070008, &qword_10006FFD8, &qword_10004F138);
    v51 = v66;
    v52 = v73;
    static CanvasControlConfigurationBuilder.buildBlock<A>(_:)();
    (*(v15 + 16))(v23, v51, v52);
    (*(v15 + 56))(v23, 0, 1, v52);
    static CanvasControlConfigurationBuilder.buildOptional<A>(_:)();
    sub_10000BF34(v23, &qword_10006FFE0, &qword_10004F140);
    v53 = *(v15 + 8);
    v53(v51, v52);
    v53(v49, v52);
    (*(v29 + 8))(v57, v58);
  }

  sub_10001D028(&qword_100070000, &qword_10006FFF0, &qword_10004F150);
  v54 = v71;
  static CanvasControlConfigurationBuilder.buildBlock<A>(_:)();
  static CanvasControlConfigurationBuilder.buildFinalResult<A>(_:)();
  v55 = *(v72 + 8);
  v55(v54, v36);
  return (v55)(v41, v36);
}

uint64_t sub_100033944@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PreviewStructure();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for PreviewStructure.previewGroup(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = *(sub_100004C60(&qword_10006FFC0, &qword_10004F120) + 48);
    v11 = type metadata accessor for PreviewGroupMetadata();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    __chkstk_darwin(v11);
    v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 32))(v15, v8, v11);
    sub_100034314(a1);
    (*(v12 + 8))(v15, v11);
    v16 = type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration();
    (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
    v17 = type metadata accessor for GridIndex();
    return (*(*(v17 - 8) + 8))(&v8[v10], v17);
  }

  else if (v9 == enum case for PreviewStructure.singlePreview(_:))
  {
    v19 = type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration();
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }

  else if (v9 == enum case for PreviewStructure.emptyPreviewGroup(_:))
  {
    CanvasControlDescription.ControlType.GridConfiguration.init(sections:)();
    v20 = type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration();
    return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
  }

  else
  {
    v21 = type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration();
    (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100033CC0(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_100004C60(&qword_10006FFB8, &qword_10004F118);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for GridIndex();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  a2(v7);
  return sub_10000BF34(v7, &qword_10006FFB8, &qword_10004F118);
}

double sub_100033E00(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = type metadata accessor for GridIndex();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PropertyList();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PreviewStructure();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  (*(v8 + 16))(v11, a1, v7);
  sub_10003604C(&qword_10006FF28, &type metadata accessor for PreviewStructure);
  v19 = v30;
  PropertyListRepresentable.init(propertyList:)();
  if (!v19)
  {
    v20 = v27;
    v21 = v29;
    (*(v29 + 16))(v16, v18, v12);
    if ((*(v21 + 88))(v16, v12) == enum case for PreviewStructure.previewGroup(_:))
    {
      (*(v21 + 96))(v16, v12);
      v22 = sub_100004C60(&qword_10006FFC0, &qword_10004F120);
      (*(v20 + 32))(v6, &v16[*(v22 + 48)], v3);
      v23 = type metadata accessor for PreviewGroupMetadata();
      (*(*(v23 - 8) + 8))(v16, v23);
      v24 = static GridIndex.== infix(_:_:)();
      v21 = v29;
      (*(v20 + 8))(v6, v3);
      if (v24)
      {
        (*(v21 + 8))(v18, v12);
        return 0.0;
      }
    }

    else
    {
      (*(v21 + 8))(v16, v12);
    }

    sub_100035FF8();
    swift_allocError();
    swift_willThrow();
    (*(v21 + 8))(v18, v12);
  }

  return 0.0;
}

uint64_t sub_1000341E4(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_100004C60(&qword_10006FFB8, &qword_10004F118);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for GridIndex();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  a2(v7);
  return sub_10000BF34(v7, &qword_10006FFB8, &qword_10004F118);
}

uint64_t sub_100034314@<X0>(uint64_t a1@<X8>)
{
  v39[2] = a1;
  v1 = type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration.Item();
  v40 = *(v1 - 8);
  v2 = *(v40 + 64);
  __chkstk_darwin(v1);
  v58 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004C60(&qword_100070018, &qword_10004F158);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v39 - v6;
  v43 = type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration.Section();
  v8 = *(v43 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v43);
  v53 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004C60(&qword_100070020, &qword_10004F160);
  v11 = type metadata accessor for PreviewGroupMetadata.Section();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v54 = *(v12 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10004E380;
  PreviewGroupMetadata.firstSection.getter();
  v15 = PreviewGroupMetadata.moreSections.getter();
  v59 = v14;
  sub_100035960(v15);
  v16 = *(v12 + 64);
  v17 = __chkstk_darwin(v59);
  v57 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(v17 + 16);
  if (v52)
  {
    v19 = 0;
    v39[1] = v17;
    v51 = v17 + v13;
    v50 = *(v12 + 16);
    v20 = v40;
    v46 = (v12 + 8);
    v47 = (v40 + 8);
    v45 = (v8 + 48);
    v21 = &_swiftEmptyArrayStorage;
    v41 = v8;
    v42 = v7;
    v44 = (v8 + 32);
    v22 = v43;
    v48 = v12 + 16;
    v49 = v11;
    while (1)
    {
      v55 = v21;
      v56 = v19;
      v50(v57, v51 + v19 * v54, v11);
      PreviewGroupMetadata.Section.title.getter();
      CanvasControlDescription.ControlType.GridConfiguration.Item.init(title:)();
      result = PreviewGroupMetadata.Section.previewCount.getter();
      if (result < 0)
      {
        break;
      }

      v24 = result;
      if (result)
      {
        v25 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v25 + 16) = v24;
        v26 = v1;
        v27 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v28 = *(v20 + 16);
        v29 = v26;
        v28(v25 + v27, v58);
        v30 = v24 - 1;
        if (v24 == 1)
        {
          v1 = v29;
          v31 = v58;
        }

        else
        {
          v32 = *(v20 + 72);
          v33 = v25 + v32 + v27;
          v1 = v29;
          v31 = v58;
          do
          {
            (v28)(v33, v31, v1);
            v33 += v32;
            --v30;
          }

          while (v30);
          v20 = v40;
        }

        v7 = v42;
        v22 = v43;
      }

      else
      {
        v31 = v58;
      }

      (*v47)(v31, v1);
      CanvasControlDescription.ControlType.GridConfiguration.Section.init(title:items:)();
      v11 = v49;
      (*v46)(v57, v49);
      if ((*v45)(v7, 1, v22) == 1)
      {
        sub_10000BF34(v7, &qword_100070018, &qword_10004F158);
        v21 = v55;
      }

      else
      {
        v34 = *v44;
        (*v44)(v53, v7, v22);
        v21 = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100034BFC(0, v21[2] + 1, 1, v21, &qword_100070028, &qword_10004F168, &type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration.Section);
        }

        v36 = v21[2];
        v35 = v21[3];
        v37 = v41;
        if (v36 >= v35 >> 1)
        {
          v38 = sub_100034BFC(v35 > 1, v36 + 1, 1, v21, &qword_100070028, &qword_10004F168, &type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration.Section);
          v37 = v41;
          v21 = v38;
        }

        v21[2] = v36 + 1;
        v34(v21 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v36, v53, v22);
      }

      v19 = v56 + 1;
      if (v56 + 1 == v52)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return CanvasControlDescription.ControlType.GridConfiguration.init(sections:)();
  }

  return result;
}

uint64_t sub_1000348DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PropertyList();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_100034950(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100034A48;

  return v7(a1);
}

uint64_t sub_100034A48()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100034B40@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t sub_100034BFC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004C60(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100034DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006FDF8, &qword_10004EDB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034E48()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 7);
  v3 = type metadata accessor for AgentUpdate.Context();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v22 = (v5 + 72) & ~v5;
  v23 = v3;
  v21 = (*(v4 + 64) + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v21 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  updated = type metadata accessor for SceneUpdateContext();
  v12 = *(updated - 8);
  v13 = *(v12 + 80);
  v14 = (v9 + v10 + v13) & ~v13;
  v15 = v5 | v13 | v8;
  v16 = (*(v12 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + 2);
  swift_unknownObjectRelease();
  v18 = *(v0 + 8);

  (*(v4 + 8))(&v0[v22], v23);
  v19 = *&v0[v21];

  (*(v7 + 8))(&v0[v9], AssociatedTypeWitness);
  (*(v12 + 8))(&v0[v14], updated);
  sub_10000519C(&v0[v16]);

  return _swift_deallocObject(v0, v16 + 40, v15 | 7);
}

uint64_t sub_100035074(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v5 = v1[7];
  v6 = *(type metadata accessor for AgentUpdate.Context() - 8);
  v7 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for SceneUpdateContext() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = v1[2];
  v15 = v1[3];
  v16 = v1[8];
  v17 = *(v1 + v8);
  v18 = v1 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_10001D424;

  return sub_10002F928(a1, v14, v15, v16, v1 + v7, v17, v1 + v10, v1 + v13);
}