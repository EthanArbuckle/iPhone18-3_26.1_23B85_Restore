uint64_t sub_1000F241C(uint64_t a1, double a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1000F2590(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1000F2394(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_1000F2590(unint64_t *result, uint64_t a2, uint64_t a3, double a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 8 * v12) > a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_1000F267C(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_1000F267C(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F267C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000033A8(&qword_1001D9CA0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(v4 + 56) + 24 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v32 = *(v18 + 20);
    result = static Hasher._hash(seed:_:)();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v9 + 48) + 8 * v25) = v17;
    v30 = *(v9 + 56) + 24 * v25;
    *v30 = v19;
    *(v30 + 8) = v20;
    *(v30 + 16) = v21;
    *(v30 + 20) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1000F28D4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 8) >= 5uLL)
  {
  }

  sub_1000616E4(*(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40));

  return swift_deallocObject();
}

uint64_t sub_1000F2A28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F2A54()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 8) >= 5uLL)
  {
  }

  sub_1000616E4(*(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40));

  return swift_deallocObject();
}

void sub_1000F2B44()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 72) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1000F10D4(*(v0 + 32), *(v0 + 40), *(v0 + 56), *(v0 + 64), v0 + v1, *(v0 + v2), v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8), *(v0 + 16), *(v0 + 48));
}

uint64_t sub_1000F2BE4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  sub_100006B44(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1000F2CE4(uint64_t a1)
{
  v3 = (*(*(*(v1 + 4) - 8) + 80) + 104) & ~*(*(*(v1 + 4) - 8) + 80);
  v14 = *(v1 + 3);
  v15 = *(v1 + 2);
  v4 = *(v1 + 6);
  v5 = *(v1 + 7);
  v6 = *(v1 + 8);
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[12];
  v11 = *(v1 + ((*(*(*(v1 + 4) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100019340;

  return sub_1000F1E60(v7, v8, v9, v10, a1, v15, v14, v4, v5, v6, v1 + v3, v11);
}

void sub_1000F2E68()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer__previewRunningInternal;
  **(v0 + 16) = *(v1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer__previewRunningInternal);
  *(v1 + v3) = v2;
}

uint64_t sub_1000F2E88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_1000F1C94(a1, v4, v5, v7, v6);
}

void *sub_1000F2F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a1;
  v53 = a3;
  v54 = *v3;
  v55 = a2;
  v5 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v5 - 8);
  v51 = v39 - v6;
  v49 = sub_1000033A8(&qword_1001DB550);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = v39 - v7;
  v50 = sub_1000033A8(&qword_1001DB528);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v44 = v39 - v8;
  v45 = sub_1000033A8(&qword_1001DA780);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = v39 - v9;
  v56 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v56 - 8);
  __chkstk_darwin(v56);
  v41 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for Logger();
  __chkstk_darwin(v14 - 8);
  static Log.cameraSource.getter();
  static Log.cameraSource.getter();
  LoggingSignposter.init(logger:)();
  v15 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer__previewRunningInternal;
  type metadata accessor for RellenoGlobalSettings();
  static RellenoGlobalSettings.shared.getter();
  v16 = dispatch thunk of RellenoGlobalSettings.isUnitTest.getter();

  *(v3 + v15) = v16 & 1;
  v40 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_previewLayerCallbackQueue;
  v17 = sub_100014FBC();
  v39[5] = "ception on frame queue: ";
  v39[6] = v17;
  static DispatchQoS.unspecified.getter();
  v57 = &_swiftEmptyArrayStorage;
  v39[3] = sub_1000F46BC(&unk_1001D8040, &type metadata accessor for OS_dispatch_queue.Attributes);
  v39[2] = sub_1000033A8(&unk_1001D6B50);
  v39[4] = sub_100013608(&unk_1001D8050, &unk_1001D6B50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v19 = *(v10 + 104);
  v39[1] = v10 + 104;
  v20 = v41;
  v19(v41, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v56);
  *(v4 + v40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_weakInit();
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_debugPreviewLayer) = 0;
  v21 = (v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_previewStartedCallback);
  *v21 = 0;
  v21[1] = 0;
  v40 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_stateQueue;
  static DispatchQoS.unspecified.getter();
  v57 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19(v20, v18, v56);
  *(v4 + v40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_streamingMetadataProducerInternal;
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_streamingProcessorTask) = 0;
  v23 = v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_streamingMetadataConsumer;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamMetadata) = &_swiftEmptyDictionarySingleton;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamRequests) = &_swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_currentMediaManifest) = 0;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_cvcPrepared) = 0;
  v24 = v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp;
  *v24 = 0;
  v24[8] = 1;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_awaitingCaptureEffects) = 1;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer____lazy_storage___captureEffectsContext) = 1;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_monocularDepthAspectRatio) = 4;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer____lazy_storage___monocularDepthExecutor) = 1;
  v25 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_captureEffectsStreamInternal;
  v26 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_captureEffectsStreamContinuation;
  v28 = v46;
  v27 = v47;
  v29 = v49;
  (*(v47 + 104))(v46, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v49);
  v30 = v42;
  v31 = v44;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v27 + 8))(v28, v29);
  (*(v43 + 32))(v4 + v25, v30, v45);
  (*(v48 + 32))(v4 + v26, v31, v50);
  v32 = v53;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_coordinator) = v52;
  *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_actionPredictor) = v32;
  v33 = type metadata accessor for TaskPriority();
  v34 = v51;
  (*(*(v33 - 8) + 56))(v51, 1, 1, v33);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v37 = v54;
  v36[4] = v55;
  v36[5] = v35;
  v36[6] = v37;

  sub_100044AB8(0, 0, v34, &unk_10017B500, v36);

  return v4;
}

uint64_t sub_1000F387C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019774;

  return sub_1000EF4B4(v7, v8, a1, v4, v5, v6);
}

uint64_t sub_1000F394C()
{

  return swift_deallocObject();
}

uint64_t sub_1000F3984()
{

  return swift_deallocObject();
}

uint64_t sub_1000F39D4()
{

  return swift_deallocObject();
}

uint64_t sub_1000F3A0C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000F3A58()
{

  return swift_deallocObject();
}

uint64_t sub_1000F3AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DB530);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F3B18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_1000ECD84(a1, v4, v5, v7, v6);
}

uint64_t sub_1000F3C5C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000F3CB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019340;

  return sub_1000ED74C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000F3DA8(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t sub_1000F3E18(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DetectionRequest();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v91 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v91 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v91 - v11;
  v13 = __chkstk_darwin(v10);
  v114 = &v91 - v14;
  __chkstk_darwin(v13);
  v94 = &v91 - v15;
  v16 = type metadata accessor for CVDetection.DetectionType();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v105 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v111 = &v91 - v21;
  __chkstk_darwin(v20);
  v99 = &v91 - v22;
  v118 = a2;

  sub_1000EC20C(v23, sub_10009562C, &type metadata accessor for DetectionRequest);
  v24 = sub_100091708(v118);

  v103 = v24;
  v26 = sub_1000EE478(v25);
  sub_1000033A8(&qword_1001DB568);
  result = static _DictionaryStorage.copy(original:)();
  v28 = v3;
  v29 = result;
  v30 = 0;
  v31 = *(v26 + 64);
  v93 = v26 + 64;
  v101 = v26;
  v32 = 1 << *(v26 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v92 = (v32 + 63) >> 6;
  v98 = v17 + 16;
  v102 = v17;
  v110 = v17 + 32;
  v115 = (v4 + 8);
  v116 = v4 + 16;
  v117 = v4;
  v112 = (v4 + 32);
  v35 = v16;
  v36 = v9;
  v97 = result + 64;
  v104 = v28;
  v96 = v9;
  v109 = result;
  v95 = v16;
  if (v34)
  {
LABEL_4:
    v37 = __clz(__rbit64(v34));
    v106 = (v34 - 1) & v34;
    goto LABEL_10;
  }

  while (1)
  {
    v38 = v30;
    do
    {
      v30 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_45;
      }

      if (v30 >= v92)
      {

        v66 = 0;
        v67 = v103 + 56;
        v68 = 1 << *(v103 + 32);
        v69 = -1;
        if (v68 < 64)
        {
          v69 = ~(-1 << v68);
        }

        v70 = v69 & *(v103 + 56);
        v71 = (v68 + 63) >> 6;
        v72 = (v102 + 8);
        v114 = _swiftEmptyArrayStorage;
        if (!v70)
        {
LABEL_30:
          while (1)
          {
            v74 = v66 + 1;
            if (__OFADD__(v66, 1))
            {
              goto LABEL_46;
            }

            if (v74 >= v71)
            {

              return v114;
            }

            v70 = *(v67 + 8 * v74);
            ++v66;
            if (v70)
            {
              v66 = v74;
              goto LABEL_34;
            }
          }
        }

        while (1)
        {
LABEL_34:
          while (1)
          {
            v75 = __clz(__rbit64(v70));
            v70 &= v70 - 1;
            v76 = *(v117 + 72);
            (*(v117 + 16))(v36, *(v103 + 48) + v76 * (v75 | (v66 << 6)), v28);
            DetectionRequest.timestamp.getter();
            v78 = v77;
            v79 = v105;
            DetectionRequest.detectionType.getter();
            v80 = v109;
            if (v109[2])
            {
              break;
            }

            v73 = *v72;
LABEL_28:
            v28 = v104;
            v73(v105, v35);
LABEL_29:
            result = (*v115)(v36, v28);
            if (!v70)
            {
              goto LABEL_30;
            }
          }

          v81 = sub_100095CDC(v79);
          v73 = *v72;
          if ((v82 & 1) == 0)
          {
            goto LABEL_28;
          }

          v83 = *(v80[7] + 8 * v81);
          v73(v79, v35);
          v28 = v104;
          if (v78 != v83)
          {
            goto LABEL_29;
          }

          v84 = *v112;
          (*v112)(v91, v36, v104);
          v85 = v114;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v118 = v85;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10005973C(0, *(v85 + 16) + 1, 1);
            v28 = v104;
            v85 = v118;
          }

          v88 = *(v85 + 16);
          v87 = *(v85 + 24);
          v89 = v88 + 1;
          if (v88 >= v87 >> 1)
          {
            sub_10005973C(v87 > 1, v88 + 1, 1);
            v89 = v88 + 1;
            v28 = v104;
            v85 = v118;
          }

          *(v85 + 16) = v89;
          v90 = *(v117 + 80);
          v114 = v85;
          result = (v84)(v85 + ((v90 + 32) & ~v90) + v88 * v76, v91, v28);
          v36 = v96;
          v35 = v95;
          if (!v70)
          {
            goto LABEL_30;
          }
        }
      }

      v39 = *(v93 + 8 * v30);
      ++v38;
    }

    while (!v39);
    v37 = __clz(__rbit64(v39));
    v106 = (v39 - 1) & v39;
LABEL_10:
    v40 = v37 | (v30 << 6);
    v42 = v101;
    v41 = v102;
    v43 = *(v101 + 48);
    v44 = *(v102 + 16);
    v107 = *(v102 + 72) * v40;
    v45 = v99;
    v44(v99, v43 + v107, v35);
    v46 = *(v42 + 56);
    v108 = v40;
    v47 = *(v46 + 8 * v40);
    v48 = *(v41 + 32);
    v49 = v47;
    v48(v111, v45, v35);
    v50 = *(v49 + 16);
    if (v50)
    {
      break;
    }

    v54 = 0;
LABEL_14:
    v55 = v108;
    *(v97 + ((v108 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v108;
    result = (v48)(v29[6] + v107, v111, v35);
    *(v29[7] + 8 * v55) = v54;
    v56 = v29[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_47;
    }

    v29[2] = v58;
    v34 = v106;
    if (v106)
    {
      goto LABEL_4;
    }
  }

  v100 = v48;
  v51 = *(v117 + 16);
  v113 = v49 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
  v51(v114);

  if (v50 == 1)
  {
LABEL_12:
    v52 = v94;
    (*v112)(v94, v114, v28);
    DetectionRequest.timestamp.getter();
    v28 = v104;
    v54 = v53;

    (*v115)(v52, v28);
    v36 = v96;
    v35 = v95;
    v29 = v109;
    v48 = v100;
    goto LABEL_14;
  }

  v59 = 1;
  while (v59 < *(v49 + 16))
  {
    v60 = v117;
    (v51)(v12, v113 + *(v117 + 72) * v59, v28);
    v61 = v114;
    DetectionRequest.timestamp.getter();
    v63 = v62;
    DetectionRequest.timestamp.getter();
    v64 = *(v60 + 8);
    if (v63 >= v65)
    {
      result = v64(v12, v28);
    }

    else
    {
      v64(v61, v28);
      result = (*v112)(v61, v12, v28);
    }

    if (v50 == ++v59)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1000F46BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F47C8()
{
  v1 = v0;
  *(v0 + 16) = 0;
  v2 = type metadata accessor for FileWriter();
  default argument 0 of FileWriter.init(prefix:)();
  v8[3] = v2;
  v8[4] = &protocol witness table for FileWriter;
  v8[0] = FileWriter.__allocating_init(prefix:)();
  v3 = type metadata accessor for ImageDataConfiguration();
  v4 = objc_allocWithZone(v3);
  v4[OBJC_IVAR____TtC6Tamale22ImageDataConfiguration_shouldPersistContext] = 0;
  sub_10002A860(v8, &v4[OBJC_IVAR____TtC6Tamale22ImageDataConfiguration_fileWriter]);
  *&v4[OBJC_IVAR____TtC6Tamale22ImageDataConfiguration_itemProvidersForActivityItemsConfiguration] = &_swiftEmptyArrayStorage;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, "init");
  sub_100006B44(v8);
  *(v1 + 24) = v5;
  return v1;
}

__n128 sub_1000F4898(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000F48AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1000F48F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F4970@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for ScrollBounceBehavior();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000033A8(&qword_1001DB670);
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = &v31 - v5;
  v39 = sub_1000033A8(&qword_1001DB678);
  v35 = *(v39 - 8);
  __chkstk_darwin(v39);
  v34 = &v31 - v7;
  v33 = sub_1000033A8(&qword_1001DB680);
  __chkstk_darwin(v33);
  v9 = &v31 - v8;
  v36 = sub_1000033A8(&qword_1001DB688);
  __chkstk_darwin(v36);
  v32 = &v31 - v10;
  v38 = sub_1000033A8(&qword_1001DB690);
  __chkstk_darwin(v38);
  v12 = &v31 - v11;
  v37 = sub_1000033A8(&qword_1001DB698);
  __chkstk_darwin(v37);
  v14 = &v31 - v13;
  v45 = v1;
  static Axis.Set.vertical.getter();
  sub_1000033A8(&qword_1001DB6A0);
  sub_100013608(&qword_1001DB6A8, &qword_1001DB6A0);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollBounceBehavior.basedOnSize.getter();
  v15 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v15)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_100013608(&qword_1001DB6B0, &qword_1001DB670);
  v16 = v34;
  v17 = v41;
  View.scrollBounceBehavior(_:axes:)();
  (*(v42 + 8))(v4, v43);
  (*(v40 + 8))(v6, v17);
  v18 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  (*(v35 + 32))(v9, v16, v39);
  v20 = &v9[*(v33 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v21 = v32;
  sub_10002091C(v9, v32, &qword_1001DB680);
  v22 = (v21 + *(v36 + 36));
  v23 = v51;
  v22[4] = v50;
  v22[5] = v23;
  v22[6] = v52;
  v24 = v47;
  *v22 = v46;
  v22[1] = v24;
  v25 = v49;
  v22[2] = v48;
  v22[3] = v25;
  sub_10002091C(v21, v12, &qword_1001DB688);
  *&v12[*(v38 + 36)] = 0;
  v26 = static SafeAreaRegions.all.getter();
  LOBYTE(KeyPath) = static Edge.Set.all.getter();
  sub_10002091C(v12, v14, &qword_1001DB690);
  v27 = &v14[*(v37 + 36)];
  *v27 = v26;
  v27[8] = KeyPath;
  v28 = v44;
  sub_10002091C(v14, v44, &qword_1001DB698);
  result = sub_1000033A8(&qword_1001DB6B8);
  v30 = (v28 + *(result + 36));
  *v30 = sub_1000F5220;
  v30[1] = 0;
  v30[2] = 0;
  v30[3] = 0;
  return result;
}

uint64_t sub_1000F4FCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000033A8(&qword_1001D50B0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  *a1 = static Alignment.center.getter();
  a1[1] = v9;
  v17[6] = 0;
  v18 = 1;
  sub_1000033A8(&qword_1001D50B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100170800;
  v11 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v11;
  v12 = static Axis.Set.vertical.getter();
  *(inited + 33) = v12;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v11)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v12)
  {
    Axis.Set.init(rawValue:)();
  }

  v13 = *(sub_1000033A8(&qword_1001DB6C0) + 44);
  static Alignment.center.getter();
  View.containerRelativeFrame(_:alignment:)();
  v14 = *(v3 + 16);
  v14(v6, v8, v2);
  v14(a1 + v13, v6, v2);
  v15 = *(v3 + 8);
  v15(v8, v2);
  return (v15)(v6, v2);
}

uint64_t sub_1000F5220()
{
  v0 = type metadata accessor for AccessibilityNotification.ScreenChanged();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v5, 0, sizeof(v5));
  AccessibilityNotification.ScreenChanged.init(_:)();
  _AccessibilityNotifications.post()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000F5344@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.accentColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000F5370@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.accentColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000F53F8()
{
  result = qword_1001DB6C8;
  if (!qword_1001DB6C8)
  {
    sub_10001276C(&qword_1001DB6B8);
    sub_1000F5484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB6C8);
  }

  return result;
}

unint64_t sub_1000F5484()
{
  result = qword_1001DB6D0;
  if (!qword_1001DB6D0)
  {
    sub_10001276C(&qword_1001DB698);
    sub_1000F5510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB6D0);
  }

  return result;
}

unint64_t sub_1000F5510()
{
  result = qword_1001DB6D8;
  if (!qword_1001DB6D8)
  {
    sub_10001276C(&qword_1001DB690);
    sub_1000F559C();
    sub_1000CF0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB6D8);
  }

  return result;
}

unint64_t sub_1000F559C()
{
  result = qword_1001DB6E0;
  if (!qword_1001DB6E0)
  {
    sub_10001276C(&qword_1001DB688);
    sub_1000F5628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB6E0);
  }

  return result;
}

unint64_t sub_1000F5628()
{
  result = qword_1001DB6E8;
  if (!qword_1001DB6E8)
  {
    sub_10001276C(&qword_1001DB680);
    sub_10001276C(&qword_1001DB670);
    sub_100013608(&qword_1001DB6B0, &qword_1001DB670);
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D46D0, &qword_1001D46D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB6E8);
  }

  return result;
}

char *sub_1000F5750()
{
  result = sub_1001522CC();
  v1 = *(result + 2);
  if (v1)
  {
    v2 = 0;
    v3 = result + 64;
    v4 = -v1;
    do
    {
      v5 = *(result + 2);
      if (v2 > v5)
      {
        v5 = v2;
      }

      v6 = -v5;
      v7 = &v3[40 * v2++];
      while (1)
      {
        if (v6 + v2 == 1)
        {
          __break(1u);
          return result;
        }

        v8 = *v7;
        if (*v7 && v8 != 2)
        {
          v10 = *(v7 - 4);
          v11 = *(v7 - 3);
          v12 = *(v7 - 2);
          v13 = *(v7 - 1);
          if (v8 != 3)
          {
            break;
          }

          if (v12 | v11 | v10 | v13)
          {
            v14 = v10 == 5 || v10 == 2;
            if (!v14 || (v12 | v11 | v13) != 0)
            {
              break;
            }
          }
        }

        ++v2;
        v7 += 40;
        if (v4 + v2 == 1)
        {
          goto LABEL_26;
        }
      }

      v20 = result;
      sub_100007F40(v10, v11, v12, v13, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000594A0(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      v18 = v17 + 1;
      result = v20;
      if (v17 >= v16 >> 1)
      {
        sub_1000594A0((v16 > 1), v17 + 1, 1);
        v18 = v17 + 1;
        result = v20;
      }

      _swiftEmptyArrayStorage[2] = v18;
      v19 = &_swiftEmptyArrayStorage[5 * v17];
      v19[4] = v10;
      v19[5] = v11;
      v19[6] = v12;
      v19[7] = v13;
      *(v19 + 64) = v8;
    }

    while (v4 + v2);
  }

LABEL_26:

  return _swiftEmptyArrayStorage;
}

double sub_1000F5908@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v171 = a2;
  v176 = a1;
  v4 = type metadata accessor for EnvironmentValues();
  v174 = *(v4 - 8);
  v175 = v4;
  __chkstk_darwin(v4);
  v173 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1000033A8(&qword_1001DB740);
  v6 = __chkstk_darwin(v170);
  v169 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v168 = &v160 - v8;
  v167 = type metadata accessor for ActionPin.PermanentPill();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1000033A8(&qword_1001DB748);
  v10 = __chkstk_darwin(v163);
  v162 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v161 = &v160 - v12;
  v13 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v13 - 8);
  *(&v164 + 1) = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v164 = sub_1000033A8(&qword_1001DB750);
  v15 = __chkstk_darwin(v164);
  v17 = &v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v160 - v18;
  v20 = type metadata accessor for AppConfiguration();
  v21 = __chkstk_darwin(v20);
  v23 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v160 - v24;
  KeyPath = swift_getKeyPath();
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  type metadata accessor for LaunchOptions();
  sub_10013FB34(&qword_1001D41D0, type metadata accessor for LaunchOptions);
  v172 = KeyPath;

  *(a3 + 32) = Environment.init<A>(_:)();
  *(a3 + 40) = v27 & 1;
  type metadata accessor for SiriRequestStateResponder();
  sub_10013FB34(&qword_1001D4218, type metadata accessor for SiriRequestStateResponder);
  *(a3 + 48) = Environment.init<A>(_:)();
  *(a3 + 56) = v28 & 1;
  *(a3 + 64) = swift_getKeyPath();
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  v29 = type metadata accessor for ContentView();
  v30 = v29[9];
  *(a3 + v30) = swift_getKeyPath();
  sub_1000033A8(&qword_1001D6230);
  swift_storeEnumTagMultiPayload();
  if (qword_1001D31E8 != -1)
  {
    swift_once();
  }

  v31 = sub_10002769C(v20, qword_1001DB728);
  sub_10013DAC8(v31, v25, type metadata accessor for AppConfiguration);
  sub_10013DAC8(v25, v23, type metadata accessor for AppConfiguration);
  State.init(wrappedValue:)();
  sub_10013E658(v25, type metadata accessor for AppConfiguration);
  v32 = type metadata accessor for ResultLookupState();
  (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
  sub_1000138BC(v19, v17, &qword_1001DB750);
  State.init(wrappedValue:)();
  sub_10001370C(v19, &qword_1001DB750);
  v33 = a3 + v29[12];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v34 = *(&v179 + 1);
  *v33 = v179;
  *(v33 + 8) = v34;
  v35 = (a3 + v29[13]);
  v36 = *(&v164 + 1);
  sub_10013DAC8(v31 + *(v20 + 20), *(&v164 + 1), type metadata accessor for CameraControllerConfiguration);
  type metadata accessor for CameraController();
  swift_allocObject();
  sub_10014AFFC(v36);
  *&v177 = v37;
  State.init(wrappedValue:)();
  v39 = v179;
  *(&v164 + 1) = v39 >> 64;
  v38 = v39;
  *v35 = v179;
  *&v164 = v38;
  v40 = a3 + v29[14];
  *&v177 = 0;
  *(&v177 + 1) = 0xE000000000000000;

  State.init(wrappedValue:)();
  v41 = v180;
  *v40 = v179;
  *(v40 + 16) = v41;
  v42 = a3 + v29[15];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v43 = *(&v179 + 1);
  *v42 = v179;
  *(v42 + 8) = v43;
  v44 = a3 + v29[16];
  *v44 = FocusState.init<>()() & 1;
  *(v44 + 8) = v45;
  *(v44 + 16) = v46 & 1;
  v47 = a3 + v29[17];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v48 = *(&v179 + 1);
  *v47 = v179;
  *(v47 + 8) = v48;
  v49 = a3 + v29[18];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v50 = *(&v179 + 1);
  *v49 = v179;
  *(v49 + 8) = v50;
  v51 = a3 + v29[19];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v52 = *(&v179 + 1);
  *v51 = v179;
  *(v51 + 8) = v52;
  v53 = a3 + v29[20];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v54 = *(&v179 + 1);
  *v53 = v179;
  *(v53 + 8) = v54;
  v55 = a3 + v29[21];
  v177 = xmmword_100176B40;
  v178 = 2;
  State.init(wrappedValue:)();
  v56 = v180;
  v57 = *(&v180 + 1);
  *v55 = v179;
  *(v55 + 16) = v56;
  *(v55 + 24) = v57;
  v58 = v29[22];
  *&v177 = 0;
  sub_1000033A8(&qword_1001DB758);
  State.init(wrappedValue:)();
  *(a3 + v58) = v179;
  v59 = type metadata accessor for FocusSelection();
  v60 = v161;
  (*(*(v59 - 8) + 56))(v161, 1, 1, v59);
  sub_1000138BC(v60, v162, &qword_1001DB748);
  State.init(wrappedValue:)();
  sub_10001370C(v60, &qword_1001DB748);
  v61 = v29[24];
  *&v177 = 0;
  sub_1000033A8(&qword_1001DB760);
  State.init(wrappedValue:)();
  *(a3 + v61) = v179;
  v62 = a3 + v29[25];
  *&v177 = 0x3FF0000000000000;
  GestureState.init(wrappedValue:)();
  v63 = *(&v179 + 1);
  v64 = v180;
  *v62 = v179;
  *(v62 + 8) = v63;
  *(v62 + 16) = v64;
  v65 = (a3 + v29[26]);
  *&v177 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v66 = *(&v179 + 1);
  *v65 = v179;
  v65[1] = v66;
  v67 = a3 + v29[27];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v68 = *(&v179 + 1);
  *v67 = v179;
  *(v67 + 8) = v68;
  v69 = (a3 + v29[28]);
  *&v177 = &_swiftEmptySetSingleton;
  sub_1000033A8(&qword_1001DB768);
  State.init(wrappedValue:)();
  v70 = *(&v179 + 1);
  *v69 = v179;
  v69[1] = v70;
  v71 = a3 + v29[29];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v72 = *(&v179 + 1);
  v162 = *(&v179 + 1);
  v163 = v71;
  *v71 = v179;
  *(v71 + 8) = v72;
  v73 = a3 + v29[30];
  v177 = 0uLL;
  sub_1000033A8(&qword_1001D6CA0);
  State.init(wrappedValue:)();
  v74 = v180;
  *v73 = v179;
  *(v73 + 16) = v74;
  v75 = a3 + v29[31];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v76 = *(&v179 + 1);
  *v75 = v179;
  *(v75 + 8) = v76;
  v77 = a3 + v29[32];
  LOBYTE(v177) = 1;
  State.init(wrappedValue:)();
  v78 = *(&v179 + 1);
  *v77 = v179;
  *(v77 + 8) = v78;
  v79 = a3 + v29[33];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v80 = *(&v179 + 1);
  *v79 = v179;
  *(v79 + 8) = v80;
  v81 = a3 + v29[34];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v82 = *(&v179 + 1);
  *v81 = v179;
  *(v81 + 8) = v82;
  v83 = a3 + v29[35];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v84 = *(&v179 + 1);
  *v83 = v179;
  *(v83 + 8) = v84;
  v85 = a3 + v29[36];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v86 = *(&v179 + 1);
  *v85 = v179;
  *(v85 + 8) = v86;
  v87 = a3 + v29[37];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v88 = *(&v179 + 1);
  *v87 = v179;
  *(v87 + 8) = v88;
  v89 = a3 + v29[38];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v90 = *(&v179 + 1);
  *v89 = v179;
  *(v89 + 8) = v90;
  v91 = a3 + v29[39];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v92 = *(&v179 + 1);
  *v91 = v179;
  *(v91 + 8) = v92;
  v93 = (a3 + v29[40]);
  *&v177 = &_swiftEmptyArrayStorage;
  sub_1000033A8(&qword_1001DA510);
  State.init(wrappedValue:)();
  v94 = *(&v179 + 1);
  *v93 = v179;
  v93[1] = v94;
  v95 = (a3 + v29[41]);
  *&v177 = &_swiftEmptyArrayStorage;
  State.init(wrappedValue:)();
  v96 = *(&v179 + 1);
  *v95 = v179;
  v95[1] = v96;
  v97 = (a3 + v29[42]);
  *&v177 = &_swiftEmptyArrayStorage;
  State.init(wrappedValue:)();
  v98 = *(&v179 + 1);
  *v97 = v179;
  v97[1] = v98;
  v99 = (a3 + v29[43]);
  *&v177 = &_swiftEmptyArrayStorage;
  State.init(wrappedValue:)();
  v100 = *(&v179 + 1);
  *v99 = v179;
  v99[1] = v100;
  v101 = a3 + v29[44];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v102 = *(&v179 + 1);
  *v101 = v179;
  *(v101 + 8) = v102;
  v103 = a3 + v29[45];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v104 = *(&v179 + 1);
  *v103 = v179;
  *(v103 + 8) = v104;
  v105 = a3 + v29[46];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v106 = *(&v179 + 1);
  *v105 = v179;
  *(v105 + 8) = v106;
  *(a3 + v29[47]) = 1;
  v107 = a3 + v29[48];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v108 = *(&v179 + 1);
  *v107 = v179;
  *(v107 + 8) = v108;
  v109 = a3 + v29[49];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v110 = *(&v179 + 1);
  *v109 = v179;
  *(v109 + 8) = v110;
  v111 = a3 + v29[50];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v112 = *(&v179 + 1);
  *v111 = v179;
  *(v111 + 8) = v112;
  v113 = a3 + v29[51];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v114 = *(&v179 + 1);
  *v113 = v179;
  *(v113 + 8) = v114;
  v115 = a3 + v29[52];
  LOBYTE(v177) = 1;
  State.init(wrappedValue:)();
  v116 = *(&v179 + 1);
  *v115 = v179;
  *(v115 + 8) = v116;
  v117 = a3 + v29[53];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v118 = *(&v179 + 1);
  *v117 = v179;
  *(v117 + 8) = v118;
  v119 = v29[54];
  v120 = [objc_allocWithZone(VKCImageAnalyzer) init];
  *(a3 + v119) = v120;
  v121 = v29[55];
  type metadata accessor for SiriVoiceAvailabilityUtility();
  v161 = v120;
  *(a3 + v121) = static SiriVoiceAvailabilityUtility.shared.getter();
  v122 = v29[56];
  type metadata accessor for UserDefaultsUtility();
  v123 = UserDefaultsUtility.__allocating_init()();
  *(a3 + v122) = v123;
  v160 = v123;
  v124 = v29[57];
  type metadata accessor for PromptScheduler();
  v125 = swift_allocObject();
  *(v125 + 16) = &_swiftEmptyArrayStorage;
  *(v125 + 24) = 0;

  ObservationRegistrar.init()();
  sub_1000E9AAC();
  *(a3 + v124) = v125;
  v126 = v29[58];
  type metadata accessor for ConnectivityUtility();
  *(a3 + v126) = static ConnectivityUtility.shared.getter();
  v127 = v29[59];
  type metadata accessor for ImageContextCoordinator();
  swift_allocObject();
  *(a3 + v127) = sub_1000F47C8();
  v128 = v29[60];
  type metadata accessor for AppEntitiesProvider();
  *(a3 + v128) = static AppEntitiesProvider.shared.getter();
  v129 = v29[61];
  type metadata accessor for SubjectLiftViewModel();
  swift_allocObject();
  *(a3 + v129) = sub_1000A0BAC();
  v130 = v29[62];
  type metadata accessor for LiveTextViewModel();
  v131 = swift_allocObject();
  type metadata accessor for HitTestUIView();
  v131[2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v131[3] = [objc_allocWithZone(type metadata accessor for LiveTextImageAnalysisViewDelegate()) init];
  v131[4] = [objc_allocWithZone(VKCImageAnalysisInteraction) init];
  *(a3 + v130) = v131;
  v132 = v29[64];
  type metadata accessor for SiriStreamingVoicePlayer();
  *(a3 + v132) = static SiriStreamingVoicePlayer.shared.getter();
  v133 = v29[65];
  type metadata accessor for GoogleImageSearchRateLimiter();
  *(a3 + v133) = static GoogleImageSearchRateLimiter.shared.getter();
  v134 = v166;
  v135 = *(v166 + 104);
  v136 = v165;
  v137 = v167;
  v135(v165, enum case for ActionPin.PermanentPill.askAcme(_:), v167);
  ActionPin.PermanentPill.pill.getter();
  v138 = *(v134 + 8);
  v138(v136, v137);
  v135(v136, enum case for ActionPin.PermanentPill.imageSearch(_:), v137);
  ActionPin.PermanentPill.pill.getter();
  v138(v136, v137);
  v139 = type metadata accessor for VisualIntelligenceFrameEntity();
  v140 = v168;
  (*(*(v139 - 8) + 56))(v168, 1, 1, v139);
  sub_1000138BC(v140, v169, &qword_1001DB740);
  State.init(wrappedValue:)();
  sub_10001370C(v140, &qword_1001DB740);
  v141 = (a3 + v29[69]);
  type metadata accessor for FeedbackController();
  *&v177 = FeedbackController.__allocating_init(saliencyModel:)();
  State.init(wrappedValue:)();
  v142 = v179;
  *v141 = v179;

  AccessibilityFocusState.init<>()();
  *(a3 + v29[71]) = 0;
  v143 = a3 + v29[74];
  LOBYTE(v177) = 1;
  State.init(wrappedValue:)();
  v144 = *(&v179 + 1);
  *v143 = v179;
  *(v143 + 8) = v144;
  v145 = a3 + v29[75];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v146 = *(&v179 + 1);
  *v145 = v179;
  *(v145 + 8) = v146;
  v147 = (a3 + v29[76]);
  *&v177 = 0;
  State.init(wrappedValue:)();
  v148 = *(&v179 + 1);
  v169 = *(&v179 + 1);
  v170 = v147;
  *v147 = v179;
  *(v147 + 1) = v148;
  v149 = a3 + v29[77];
  LOBYTE(v177) = 0;
  State.init(wrappedValue:)();
  v150 = *(&v179 + 1);
  *v149 = v179;
  *(v149 + 8) = v150;
  v151 = v29[78];
  type metadata accessor for SharedSuppressPostShutterAction();
  *(a3 + v151) = SharedSuppressPostShutterAction.__allocating_init()();
  v152 = v171;
  *(a3 + v29[73]) = v171;
  type metadata accessor for NewSaliencyModel();
  sub_10013FB34(&qword_1001DB770, &type metadata accessor for NewSaliencyModel);
  v171 = v152;

  Bindable<A>.init(wrappedValue:)();
  type metadata accessor for OverlayViewModel();

  *(a3 + v29[63]) = OverlayViewModel.__allocating_init(saliencyModel:)();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  v179 = v164;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();

  sub_10013FB34(&qword_1001DB788, type metadata accessor for CameraController);
  NewSaliencyModel.stream.setter();

  Bindable.wrappedValue.getter();
  type metadata accessor for FocusSelectionModel();
  FocusSelectionModel.__allocating_init(active:)();
  NewSaliencyModel.userSelection.setter();

  v179 = v142;
  sub_1000033A8(&qword_1001DB790);
  State.wrappedValue.getter();

  dispatch thunk of FeedbackController.saliencyModel.setter();

  sub_100097F1C();

  LOBYTE(v149) = dispatch thunk of UserDefaultsUtility.showEngineeringUIControls.getter();

  v153 = v163;
  *v163 = v149 & 1;
  *(v153 + 1) = 0;

  static os_log_type_t.fault.getter();
  v154 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  v155 = v173;
  EnvironmentValues.init()();
  EnvironmentValues.pixelLength.getter();
  v157 = v156;

  (*(v174 + 8))(v155, v175);

  result = v157 + 26.0;
  v159 = v170;
  *v170 = v157 + 26.0;
  v159[1] = 0.0;
  return result;
}

BOOL sub_1000F6EA0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for VisualDomain();
    ++v2;
    sub_10013FB34(&qword_1001DBBF8, &type metadata accessor for VisualDomain);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_1000F6FAC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return EnvironmentValues.openSensitiveURL.setter();
}

uint64_t sub_1000F7040()
{
  v0 = type metadata accessor for UUID();
  sub_1000276D4(v0, qword_1001DB6F0);
  sub_10002769C(v0, qword_1001DB6F0);
  return UUID.init()();
}

uint64_t sub_1000F708C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for UUID();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v77 = *(v6 - 8);
  v78 = v6;
  __chkstk_darwin(v6);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v76 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v74 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v75 = &v68 - v13;
  __chkstk_darwin(v12);
  v15 = &v68 - v14;
  v16 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v16);
  v80 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppConfiguration();
  __chkstk_darwin(v18);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a1;
  sub_10013DAC8(a1, v20, type metadata accessor for AppConfiguration);
  v21 = objc_allocWithZone(NSUserDefaults);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 initWithSuiteName:v22];

  if (!v23)
  {
    return sub_100136D64(v20, v81, type metadata accessor for AppConfiguration);
  }

  if ((static SystemVariantSupport.isInternalBuild.getter() & 1) == 0)
  {

    return sub_100136D64(v20, v81, type metadata accessor for AppConfiguration);
  }

  v69 = v9;
  v71 = v16;
  v70 = *(v18 + 20);
  sub_10013DAC8(&v20[v70], v80, type metadata accessor for CameraControllerConfiguration);
  v24 = [objc_opt_self() defaultManager];
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 stringForKey:v25];

  if (!v26)
  {
    v46 = String._bridgeToObjectiveC()();
    v47 = [v23 stringForKey:v46];

    v27 = v23;
    v34 = v71;
    if (v47)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v75;
      URL.init(fileURLWithPath:)();

      v49 = [v24 fileExistsAtPath:v47];

      if (v49)
      {
        *&v85[0] = 0x5F646C6F5FLL;
        *(&v85[0] + 1) = 0xE500000000000000;
        UUID.init()();
        v50 = UUID.uuidString.getter();
        v52 = v51;
        (*(v72 + 8))(v5, v73);
        v53._countAndFlagsBits = v50;
        v53._object = v52;
        String.append(_:)(v53);

        URL.appendingPathExtension(_:)();

        URL._bridgeToObjectiveC()(v54);
        v56 = v55;
        URL._bridgeToObjectiveC()(v57);
        v59 = v58;
        *&v85[0] = 0;
        v60 = v24;
        LODWORD(v52) = [v24 moveItemAtURL:v56 toURL:v58 error:v85];

        v61 = v69;
        if (v52)
        {
          v62 = *&v85[0];
        }

        else
        {
          v64 = *&v85[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        v65 = *(v76 + 8);
        v65(v74, v61);
        v65(v75, v61);
        v24 = v60;
      }

      else
      {
        (*(v76 + 8))(v48, v69);
      }
    }

    goto LABEL_19;
  }

  v27 = v23;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  v31 = [v24 fileExistsAtPath:v26];

  if (v31)
  {
    String.lowercased()();
    v32._countAndFlagsBits = 1987013934;
    v32._object = 0xE400000000000000;
    v33 = String.hasSuffix(_:)(v32);

    if (v33)
    {
      URL.init(fileURLWithPath:)();

      v34 = v71;
      v35 = *(v71 + 68);
      v36 = v80;
      sub_10001370C(v80 + v35, &qword_1001D8020);
      v37 = v76;
      v38 = v69;
      (*(v76 + 32))(v36 + v35, v15, v69);
      (*(v37 + 56))(v36 + v35, 0, 1, v38);
      *(v36 + *(v34 + 60)) = 0;
LABEL_19:
      v66 = String._bridgeToObjectiveC()();
      v67 = [v27 objectForKey:v66];

      if (v67)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v83 = 0u;
        v84 = 0u;
      }

      v85[0] = v83;
      v85[1] = v84;
      if (*(&v84 + 1))
      {
        if (swift_dynamicCast())
        {
          *(v80 + *(v34 + 24)) = v82;
        }
      }

      else
      {
        sub_10001370C(v85, &unk_1001D8060);
      }

      sub_100006BEC(v80, &v20[v70]);
      return sub_100136D64(v20, v81, type metadata accessor for AppConfiguration);
    }
  }

  static Log.ui.getter();

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v85[0] = v42;
    *v41 = 136315138;
    v43 = sub_1000E0FE0(v28, v30, v85);
    v44 = v24;
    v45 = v43;

    *(v41 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v39, v40, "Invalid input file %s. Expected .mov file. Ignoring default VisualIntelligenceCameraReplayInput", v41, 0xCu);
    sub_100006B44(v42);
  }

  else
  {
  }

  (*(v77 + 8))(v8, v78);
  sub_10013DAC8(v79, v81, type metadata accessor for AppConfiguration);
  sub_10013E658(v80, type metadata accessor for CameraControllerConfiguration);
  return sub_10013E658(v20, type metadata accessor for AppConfiguration);
}

id sub_1000F79EC()
{
  result = sub_1000F7A10();
  qword_1001DB708 = result;
  unk_1001DB710 = v1;
  return result;
}

id sub_1000F7A10()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    v2 = MobileGestalt_copy_hwModelStr_obj();
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v6 = 0xE200000000000000;
      v4 = 16718;
    }

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    String.append(_:)(v7);

    sub_1000F7AC0(v8);

    return v8[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F7AC0(uint64_t *a1)
{
  v26 = type metadata accessor for CharacterSet();
  __chkstk_darwin(v26);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  v24 = 0;
  v25 = 0xE000000000000000;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    v18 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_25;
  }

  v20[0] = a1;
  v20[1] = v1;
  v9 = 0;
  v21 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = v6 & 0xFFFFFFFFFFFFFFLL;
  v10 = (v3 + 8);
  do
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v14 = v13;
      goto LABEL_16;
    }

    if ((v6 & 0x2000000000000000) != 0)
    {
      v23[0] = v7;
      v23[1] = v22;
      v12 = v23 + v9;
    }

    else
    {
      v11 = v21;
      if ((v7 & 0x1000000000000000) == 0)
      {
        v11 = _StringObject.sharedUTF8.getter();
      }

      v12 = (v11 + v9);
    }

    if ((*v12 & 0x80000000) == 0)
    {
LABEL_15:
      v14 = 1;
      goto LABEL_16;
    }

    v16 = (__clz(*v12 ^ 0xFF) - 24);
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v14 = 3;
      }

      else
      {
        v14 = 4;
      }
    }

    else
    {
      if (v16 == 1)
      {
        goto LABEL_15;
      }

      v14 = 2;
    }

LABEL_16:
    static CharacterSet.alphanumerics.getter();
    v15 = CharacterSet.contains(_:)();
    (*v10)(v5, v26);
    if (v15)
    {
      String.UnicodeScalarView.append(_:)();
    }

    v9 += v14;
  }

  while (v9 < v8);

  v18 = v24;
  v19 = v25;
  a1 = v20[0];
LABEL_25:
  *a1 = v18;
  a1[1] = v19;
  return result;
}

uint64_t sub_1000F7D2C()
{
  result = sub_1000F7D50();
  qword_1001DB718 = result;
  unk_1001DB720 = v1;
  return result;
}

uint64_t sub_1000F7D50()
{
  v0 = sub_1000033A8(&qword_1001DC310);
  __chkstk_darwin(v0 - 8);
  v21 = &v19 - v1;
  v2 = sub_1000033A8(&qword_1001DC318);
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v20 = &v19 - v3;
  v4 = sub_1000033A8(&qword_1001DC320);
  v22 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  sub_1000033A8(&qword_1001DC328);
  sub_100013608(&qword_1001DC330, &qword_1001DC320);
  Regex.init<A>(_:)();
  v10 = [objc_opt_self() processInfo];
  v11 = [v10 operatingSystemVersionString];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.subscript.getter();
  v12 = v21;

  v23 = v9;
  dispatch thunk of RegexComponent.regex.getter();
  Regex.firstMatch(in:)();
  v13 = v20;
  v14 = *(v22 + 8);
  v14(v7, v4);

  v16 = v24;
  v15 = v25;
  if ((*(v24 + 48))(v12, 1, v25) == 1)
  {
    sub_10001370C(v12, &qword_1001DC310);
    v14(v23, v4);
    return 16718;
  }

  else
  {
    (*(v16 + 32))(v13, v12, v15);
    Regex.Match.output.getter();

    v18 = static String._fromSubstring(_:)();

    (*(v16 + 8))(v13, v15);
    v14(v23, v4);
    return v18;
  }
}

uint64_t sub_1000F81DC@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v87 = sub_1000033A8(&qword_1001DC320);
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v95 = &v72 - v1;
  v2 = sub_1000033A8(&qword_1001DC338);
  v3 = *(v2 - 8);
  v97 = v2;
  v98 = v3;
  v4 = __chkstk_darwin(v2);
  v84 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v100 = &v72 - v6;
  v82 = sub_1000033A8(&qword_1001DC340);
  v83 = *(v82 - 8);
  v7 = __chkstk_darwin(v82);
  v86 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v85 = &v72 - v10;
  v11 = __chkstk_darwin(v9);
  v96 = &v72 - v12;
  v13 = __chkstk_darwin(v11);
  v94 = &v72 - v14;
  __chkstk_darwin(v13);
  v101 = &v72 - v15;
  v16 = type metadata accessor for _RegexFactory();
  v17 = *(v16 - 8);
  v105 = v16;
  v106 = v17;
  v18 = __chkstk_darwin(v16);
  v91 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v72 - v20;
  v22 = sub_1000033A8(&qword_1001DC348);
  __chkstk_darwin(v22 - 8);
  v24 = &v72 - v23;
  v25 = type metadata accessor for CharacterClass();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v72 - v30;
  v32 = sub_1000033A8(&qword_1001DC350);
  v33 = *(v32 - 8);
  v103 = v32;
  v104 = v33;
  v34 = __chkstk_darwin(v32);
  v81 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v72 - v37;
  __chkstk_darwin(v36);
  v99 = &v72 - v39;
  v111 = 0x206E6F6973726556;
  v112 = 0xE800000000000000;
  v102 = sub_10013F55C();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v74 = v31;
  static RegexComponent<>.whitespace.getter();
  CharacterClass.inverted.getter();
  v40 = *(v26 + 8);
  v40(v31, v25);
  v75 = v40;
  v76 = v26 + 8;
  v79 = type metadata accessor for RegexRepetitionBehavior();
  v41 = *(v79 - 1);
  v78 = *(v41 + 56);
  v80 = v41 + 56;
  v78(v24, 1, 1, v79);
  makeFactory()();
  v77 = sub_10013FB34(&qword_1001DC360, &type metadata accessor for CharacterClass);
  v73 = v25;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v42 = *(v106 + 8);
  v106 += 8;
  v93 = v42;
  v43 = v105;
  v42(v21, v105);
  sub_10001370C(v24, &qword_1001DC348);
  v40(v29, v25);
  OneOrMore.init(_:)();
  v90 = sub_100013608(&qword_1001DC368, &qword_1001DC350);
  v44 = v103;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v92 = *(v104 + 8);
  v104 += 8;
  v92(v38, v44);
  v109 = 0x20646C6975422820;
  v110 = 0xE800000000000000;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  makeFactory()();
  v45 = v74;
  static RegexComponent<>.word.getter();
  v78(v24, 1, 1, v79);
  v46 = v91;
  makeFactory()();
  v47 = v73;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v48 = v93;
  v93(v46, v43);
  sub_10001370C(v24, &qword_1001DC348);
  v75(v45, v47);
  v49 = v81;
  OneOrMore.init(_:)();
  v50 = v103;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v51 = v92;
  v92(v49, v50);
  v52 = v101;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v51(v38, v50);
  v53 = sub_1000033A8(&qword_1001DC328);
  v81 = &protocol conformance descriptor for Regex<A>;
  v54 = sub_100013608(&qword_1001DC370, &qword_1001DC340);
  v91 = v53;
  v55 = v82;
  _RegexFactory.capture<A, B>(_:)();
  v79 = *(v83 + 1);
  v79(v52, v55);
  v48(v21, v105);
  v56 = v84;
  Capture.init(_:)();
  v80 = sub_100013608(&qword_1001DC378, &qword_1001DC338);
  v57 = v97;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v58 = *(v98 + 8);
  v98 += 8;
  v83 = v58;
  v58(v56, v57);
  v107 = 41;
  v108 = 0xE100000000000000;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v107 = v113;
  v108 = v114;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();

  makeFactory()();
  v59 = v96;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v60 = v85;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v61 = v79;
  v79(v60, v55);
  v61(v59, v55);
  v93(v21, v105);
  v62 = v111;
  v63 = v112;
  makeFactory()();
  v107 = v62;
  v108 = v63;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v64 = v86;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();

  v78 = v54;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v61(v64, v55);
  v61(v60, v55);
  v65 = v105;
  v66 = v93;
  v93(v21, v105);
  makeFactory()();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v61(v60, v55);
  v66(v21, v65);
  v68 = v109;
  v67 = v110;
  makeFactory()();
  v107 = v68;
  v108 = v67;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();

  sub_100013608(&qword_1001DC330, &qword_1001DC320);
  v69 = v95;
  v70 = v87;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v61(v60, v55);
  v66(v21, v105);
  (*(v89 + 8))(v69, v70);
  v61(v96, v55);
  v61(v94, v55);
  v61(v101, v55);
  v83(v100, v97);
  return (v92)(v99, v103);
}

uint64_t sub_1000F8FA8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38._countAndFlagsBits = a1;
  v38._object = a2;
  v41 = a5;
  v42 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v39 = *(v10 - 8);
  v40 = v10;
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(NSDateFormatter) init];
  v18 = String._bridgeToObjectiveC()();
  [v17 setDateFormat:v18];

  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v14 + 8))(v16, v13);
  v20 = [v17 stringFromDate:isa];

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v23 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v43 = 95;
    v44 = 0xE100000000000000;
    v24._countAndFlagsBits = a3;
    v24._object = a4;
    String.append(_:)(v24);
    v26 = v43;
    v25 = v44;
  }

  else
  {
    v26 = 0;
    v25 = 0xE000000000000000;
  }

  static URL.temporaryDirectory.getter();
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);
  if (qword_1001D31E0 != -1)
  {
    swift_once();
  }

  v28 = qword_1001DB718;
  v27 = unk_1001DB720;

  v43 = v28;
  v44 = v27;
  v29._countAndFlagsBits = 95;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  if (qword_1001D31D8 != -1)
  {
    swift_once();
  }

  String.append(_:)(xmmword_1001DB708);
  v30._object = 0x800000010016F120;
  v30._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v30);
  v31._countAndFlagsBits = v37;
  v31._object = v22;
  String.append(_:)(v31);

  v32._countAndFlagsBits = v26;
  v32._object = v25;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 46;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  String.append(_:)(v38);
  v34 = v42;
  (*(v7 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v42);
  sub_10002EC9C();
  URL.appending<A>(path:directoryHint:)();

  (*(v7 + 8))(v9, v34);

  return (*(v39 + 8))(v12, v40);
}

uint64_t sub_1000F9408()
{
  v0 = sub_1000033A8(&qword_1001DB750);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB7A8);
  State.wrappedValue.getter();
  v3 = type metadata accessor for ResultLookupState();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10001370C(v2, &qword_1001DB750);
  }

  v6 = (*(v4 + 88))(v2, v3);
  v7 = enum case for ResultLookupState.error(_:);
  result = (*(v4 + 8))(v2, v3);
  if (v6 == v7)
  {
    sub_1000033A8(&qword_1001DB778);
    Bindable.wrappedValue.getter();
    NewSaliencyModel.analytics.getter();

    dispatch thunk of SessionAnalytics.didEncounterError()();
  }

  return result;
}

uint64_t sub_1000F95D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_1000F966C, v6, v5);
}

uint64_t sub_1000F966C()
{
  v1 = *(v0 + 56);
  v2 = type metadata accessor for ContentView();
  v3 = (v1 + *(v2 + 52));
  v5 = *v3;
  v4 = v3[1];
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  *(v0 + 96) = *(v0 + 48);
  v6 = (v1 + *(v2 + 152));
  v7 = *v6;
  v8 = *(v6 + 1);
  *(v0 + 32) = v7;
  *(v0 + 40) = v8;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  *(v0 + 137) = *(v0 + 136);
  *(v0 + 104) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 112) = v10;
  *(v0 + 120) = v9;

  return _swift_task_switch(sub_1000F9788, v10, v9);
}

uint64_t sub_1000F9788()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1000F9824;
  v2 = *(v0 + 137);

  return sub_1000E738C(v2);
}

uint64_t sub_1000F9824()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1000F9944, v3, v2);
}

uint64_t sub_1000F9944()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_1000F99B0, v1, v2);
}

uint64_t sub_1000F99B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F9A10(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContentView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20[-v10];
  v12 = v2 + *(v5 + 160);
  v13 = *v12;
  v14 = *(v12 + 8);
  v20[16] = v13;
  v21 = v14;
  v20[15] = a1;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  sub_10013DAC8(v2, v8, type metadata accessor for ContentView);
  type metadata accessor for MainActor();
  v16 = static MainActor.shared.getter();
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = &protocol witness table for MainActor;
  sub_100136D64(v8, v18 + v17, type metadata accessor for ContentView);
  sub_1000154EC(0, 0, v11, &unk_10017BC20, v18);
}

uint64_t sub_1000F9C44()
{
  v1 = sub_1000033A8(&qword_1001D6DC0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - v3;
  v5 = type metadata accessor for ContentView();
  v6 = v0 + *(v5 + 184);
  v8 = *(v6 + 8);
  LOBYTE(v15) = *v6;
  v7 = v15;
  v16 = v8;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  sub_1000F9A10(v14);
  v9 = (v0 + *(v5 + 52));
  v11 = *v9;
  v10 = v9[1];
  v15 = v11;
  v16 = v10;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  LOBYTE(v15) = v7;
  v16 = v8;
  State.wrappedValue.getter();
  v15 = v14;
  LOBYTE(v16) = 1;
  sub_1000033A8(&qword_1001D6DC8);
  AsyncStream.Continuation.yield(_:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1000F9E08()
{
  v0 = type metadata accessor for AppConfiguration();
  v1 = __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000276D4(v1, qword_1001DB728);
  v4 = sub_10002769C(v0, qword_1001DB728);
  static AnnotationViewConfiguration.factorySettings.getter();
  sub_100038468(&v3[v0[5]]);
  v5 = v0[6];
  if (qword_1001D31C0 != -1)
  {
    swift_once();
  }

  v6 = &v3[v5];
  *v6 = byte_1001EB600;
  v6[1] = 0;
  static MapsConfiguration.factorySettings.getter();
  v7 = &v3[v0[8]];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  v8 = v0[10];
  type metadata accessor for UserDefaultsUtility();
  UserDefaultsUtility.__allocating_init()();
  v9 = dispatch thunk of UserDefaultsUtility.enableStickers.getter();

  v3[v8] = v9 & 1;
  v10 = &v3[v0[11]];
  UserDefaultsUtility.__allocating_init()();
  v11 = dispatch thunk of UserDefaultsUtility.enableCopyPhoto.getter();

  UserDefaultsUtility.__allocating_init()();
  v12 = dispatch thunk of UserDefaultsUtility.enableSavePhoto.getter();

  *v10 = v11 & 1;
  v10[1] = v12 & 1;
  sub_1000F708C(v3, v4);
  return sub_10013E658(v3, type metadata accessor for AppConfiguration);
}

uint64_t sub_1000F9FD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v172 = a1;
  v171 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v171);
  v170 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for AppConfiguration();
  __chkstk_darwin(v168);
  v169 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v159 = *(v5 - 8);
  v160 = v5;
  __chkstk_darwin(v5);
  v157 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContentView();
  v181 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v132 - v13;
  __chkstk_darwin(v12);
  v16 = &v132 - v15;
  v174 = sub_1000033A8(&qword_1001DBA48);
  __chkstk_darwin(v174);
  v180 = (&v132 - v17);
  v18 = sub_1000033A8(&qword_1001DBA50);
  v140 = *(v18 - 8);
  v141 = v18;
  __chkstk_darwin(v18);
  v175 = &v132 - v19;
  v145 = sub_1000033A8(&qword_1001DBA58);
  __chkstk_darwin(v145);
  v144 = &v132 - v20;
  v21 = sub_1000033A8(&qword_1001DBA60);
  v147 = *(v21 - 8);
  v148 = v21;
  __chkstk_darwin(v21);
  v146 = &v132 - v22;
  v151 = sub_1000033A8(&qword_1001DBA68);
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v177 = (&v132 - v23);
  v24 = sub_1000033A8(&qword_1001DBA70);
  v152 = *(v24 - 8);
  v153 = v24;
  __chkstk_darwin(v24);
  v150 = &v132 - v25;
  v26 = sub_1000033A8(&qword_1001DBA78);
  v154 = *(v26 - 8);
  v155 = v26;
  __chkstk_darwin(v26);
  v178 = &v132 - v27;
  v162 = sub_1000033A8(&qword_1001DBA80);
  v158 = *(v162 - 8);
  __chkstk_darwin(v162);
  v156 = &v132 - v28;
  v29 = sub_1000033A8(&qword_1001DBA88);
  v164 = *(v29 - 8);
  v165 = v29;
  __chkstk_darwin(v29);
  v179 = &v132 - v30;
  v31 = sub_1000033A8(&qword_1001DBA90);
  v166 = *(v31 - 8);
  v167 = v31;
  v32 = __chkstk_darwin(v31);
  v161 = &v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v163 = &v132 - v34;
  v35 = (v2 + *(v7 + 116));
  v36 = *v35;
  v37 = *(v35 + 1);
  v142 = v36;
  LOBYTE(v190) = v36;
  v143 = v37;
  *(&v190 + 1) = v37;
  v176 = sub_1000033A8(&qword_1001D3E88);
  State.projectedValue.getter();
  v137 = *(&v199 + 1);
  v138 = v199;
  v136 = v200;
  v38 = v16;
  sub_10013DAC8(v2, v16, type metadata accessor for ContentView);
  v39 = ((*(v8 + 80) + 16) & ~*(v8 + 80)) + v9;
  v40 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v41 = *(v8 + 80);
  v135 = swift_allocObject();
  sub_100136D64(v38, v135 + v40, type metadata accessor for ContentView);
  v182 = v38;
  sub_10013DAC8(v2, v38, type metadata accessor for ContentView);
  v134 = swift_allocObject();
  sub_100136D64(v38, v134 + v40, type metadata accessor for ContentView);
  sub_10013DAC8(v2, v14, type metadata accessor for ContentView);
  v133 = swift_allocObject();
  sub_100136D64(v14, v133 + v40, type metadata accessor for ContentView);
  v183 = v2;
  v139 = type metadata accessor for ContentView;
  sub_10013DAC8(v2, v11, type metadata accessor for ContentView);
  v185 = v39;
  v42 = swift_allocObject();
  v186 = v40;
  v173 = type metadata accessor for ContentView;
  sub_100136D64(v11, v42 + v40, type metadata accessor for ContentView);
  LOBYTE(v190) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v11) = v199;
  v43 = *(&v199 + 1);
  v44 = v182;
  sub_10013DAC8(v2, v182, type metadata accessor for ContentView);
  v184 = v41;
  v45 = swift_allocObject();
  sub_100136D64(v44, v45 + v40, type metadata accessor for ContentView);
  *&v190 = v138;
  *(&v190 + 1) = v137;
  LOBYTE(v191) = v136;
  *(&v191 + 1) = sub_100133E1C;
  *&v192 = v135;
  *(&v192 + 1) = sub_100133E34;
  *&v193 = v134;
  *(&v193 + 1) = sub_100133E4C;
  *&v194 = v133;
  *(&v194 + 1) = sub_100133E64;
  *&v195 = v42;
  BYTE8(v195) = v11;
  *&v196 = v43;
  *(&v196 + 1) = sub_100133E7C;
  *&v197[0] = v45;
  *(v197 + 8) = 0u;
  *(&v197[1] + 8) = 0u;
  *(&v197[2] + 1) = sub_10010890C;
  v198 = 0;
  v46 = v183;
  sub_1000033A8(&qword_1001DBA98);
  type metadata accessor for SharedSuppressPostShutterAction();
  sub_100133E94();
  sub_10013FB34(&qword_1001DBAC8, &type metadata accessor for SharedSuppressPostShutterAction);
  v47 = v174;
  View.environment<A>(_:)();
  v207 = v197[1];
  v208 = v197[2];
  v209 = v198;
  v203 = v194;
  v204 = v195;
  v205 = v196;
  v206 = v197[0];
  v199 = v190;
  v200 = v191;
  v201 = v192;
  v202 = v193;
  sub_10001370C(&v199, &qword_1001DBA98);
  LODWORD(v138) = dispatch thunk of SharedSuppressPostShutterAction.shouldSuppressAddEvent.getter();
  v48 = v44;
  v49 = v139;
  sub_10013DAC8(v46, v44, v139);
  v50 = swift_allocObject();
  v51 = v186;
  v52 = v173;
  sub_100136D64(v44, v50 + v186, v173);
  v53 = v180;
  v54 = v180 + *(v47 + 36);
  *v54 = v138 & 1;
  *(v54 + 1) = sub_100133FD8;
  *(v54 + 2) = v50;
  v55 = v46;
  sub_10013DAC8(v46, v48, v49);
  v56 = swift_allocObject();
  sub_100136D64(v48, v56 + v51, v52);
  v57 = sub_100134008();
  View.onSceneStateChange(_:)();

  sub_10001370C(v53, &qword_1001DBA48);
  v58 = *(v55 + 48);
  LOBYTE(v53) = *(v55 + 56);

  if ((v53 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v59 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v60 = v157;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v159 + 8))(v60, v160);
    v58 = v190;
  }

  swift_getKeyPath();
  *&v190 = v58;
  sub_10013FB34(&qword_1001D4218, type metadata accessor for SiriRequestStateResponder);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v61 = *(v58 + 16);

  LOBYTE(v188) = v61;
  v62 = v182;
  v63 = v183;
  v173 = type metadata accessor for ContentView;
  sub_10013DAC8(v183, v182, type metadata accessor for ContentView);
  v64 = swift_allocObject();
  v180 = type metadata accessor for ContentView;
  sub_100136D64(v62, v64 + v186, type metadata accessor for ContentView);
  *&v190 = v174;
  *(&v190 + 1) = v57;
  swift_getOpaqueTypeConformance2();
  sub_1000E0F08();
  v65 = v144;
  v66 = v141;
  v67 = v175;
  View.onChange<A>(of:initial:_:)();

  (*(v140 + 8))(v67, v66);
  v68 = v181;
  v69 = v63 + *(v181 + 148);
  v70 = *v69;
  v71 = *(v69 + 8);
  LOBYTE(v190) = v70;
  *(&v190 + 1) = v71;
  State.wrappedValue.getter();
  LOBYTE(v66) = v188;
  sub_10013DAC8(v63, v62, type metadata accessor for ContentView);
  v72 = swift_allocObject();
  sub_100136D64(v62, v72 + v186, v180);
  v73 = v145;
  v74 = v65 + *(v145 + 36);
  *v74 = v66;
  *(v74 + 8) = sub_10013416C;
  *(v74 + 16) = v72;
  v75 = (v63 + *(v68 + 52));
  v77 = *v75;
  v76 = v75[1];
  v174 = v77;
  v141 = v76;
  *&v190 = v77;
  *(&v190 + 1) = v76;
  v140 = sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v78 = type metadata accessor for CameraController();
  v79 = sub_100134208();
  v80 = sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  v81 = v146;
  View.environment<A>(_:)();

  sub_10001370C(v65, &qword_1001DBA58);
  v82 = v183;
  v144 = type metadata accessor for SiriStreamingVoicePlayer();
  *&v190 = v73;
  *(&v190 + 1) = v78;
  *&v191 = v79;
  *(&v191 + 1) = v80;
  v175 = &opaque type descriptor for <<opaque return type of View.environment<A>(_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = sub_10013FB34(&qword_1001D6E90, &type metadata accessor for SiriStreamingVoicePlayer);
  v85 = v148;
  View.environment<A>(_:)();
  (*(v147 + 8))(v81, v85);
  *&v190 = v174;
  *(&v190 + 1) = v141;
  State.wrappedValue.getter();
  v86 = v188;
  swift_getKeyPath();
  *&v190 = v86;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v87 = *(v86 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v88 = *(v86 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  LOBYTE(v78) = *(v86 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  sub_100060424(v87, v88, v78);

  *&v188 = v87;
  *(&v188 + 1) = v88;
  LOBYTE(v189) = v78;
  v89 = v182;
  sub_10013DAC8(v82, v182, v173);
  v90 = swift_allocObject();
  sub_100136D64(v89, v90 + v186, v180);
  *&v190 = v85;
  *(&v190 + 1) = v144;
  *&v191 = OpaqueTypeConformance2;
  *(&v191 + 1) = v84;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = sub_1000A45F4();
  v94 = v150;
  v93 = v151;
  v95 = v177;
  View.onChange<A>(of:initial:_:)();

  sub_1000616E4(v87, v88, v78);
  (*(v149 + 8))(v95, v93);
  LOBYTE(v190) = v142;
  *(&v190 + 1) = v143;
  State.wrappedValue.getter();
  v96 = v182;
  v97 = v183;
  sub_10013DAC8(v183, v182, v173);
  v98 = swift_allocObject();
  sub_100136D64(v96, v98 + v186, v180);
  *&v190 = v93;
  *(&v190 + 1) = &type metadata for CameraSourceRunState;
  *&v191 = v91;
  *(&v191 + 1) = v92;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = v153;
  v180 = v99;
  View.onChange<A>(of:initial:_:)();

  (*(v152 + 8))(v94, v100);
  v101 = *(v97 + 32);
  LOBYTE(v96) = *(v97 + 40);

  if ((v96 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v102 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v103 = v157;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v159 + 8))(v103, v160);
    v101 = v190;
  }

  swift_getKeyPath();
  *&v190 = v101;
  sub_10013FB34(&qword_1001D41D0, type metadata accessor for LaunchOptions);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v104 = *(v101 + 16);

  LOBYTE(v188) = v104;
  v177 = type metadata accessor for ContentView;
  v105 = v182;
  v106 = v183;
  sub_10013DAC8(v183, v182, type metadata accessor for ContentView);
  v107 = swift_allocObject();
  v176 = type metadata accessor for ContentView;
  sub_100136D64(v105, v107 + v186, type metadata accessor for ContentView);
  *&v190 = v100;
  *(&v190 + 1) = &type metadata for Bool;
  *&v191 = v180;
  *(&v191 + 1) = &protocol witness table for Bool;
  v180 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v108 = swift_getOpaqueTypeConformance2();
  v109 = v155;
  v110 = v156;
  v111 = v178;
  View.onChange<A>(of:initial:_:)();

  (*(v154 + 8))(v111, v109);
  sub_1000033A8(&qword_1001DB7A0);
  v112 = v169;
  State.wrappedValue.getter();
  v113 = v170;
  sub_10013DAC8(v112 + *(v168 + 20), v170, type metadata accessor for CameraControllerConfiguration);
  sub_10013E658(v112, type metadata accessor for AppConfiguration);
  sub_10013DAC8(v106, v105, v177);
  v114 = swift_allocObject();
  sub_100136D64(v105, v114 + v186, v176);
  *&v190 = v109;
  *(&v190 + 1) = &type metadata for Bool;
  *&v191 = v108;
  *(&v191 + 1) = &protocol witness table for Bool;
  v186 = swift_getOpaqueTypeConformance2();
  v185 = sub_10013FB34(&qword_1001D5470, type metadata accessor for CameraControllerConfiguration);
  v115 = v162;
  v116 = v171;
  View.onChange<A>(of:initial:_:)();

  sub_10013E658(v113, type metadata accessor for CameraControllerConfiguration);
  (*(v158 + 8))(v110, v115);
  v117 = (v106 + *(v181 + 276));
  v119 = *v117;
  v118 = v117[1];
  *&v188 = v119;
  *(&v188 + 1) = v118;
  sub_1000033A8(&qword_1001DB790);
  State.projectedValue.getter();
  v120 = v190;
  v121 = v191;
  swift_getKeyPath();
  v188 = v120;
  v189 = v121;
  sub_1000033A8(&qword_1001DBAF0);
  Binding.subscript.getter();

  v122 = v187;

  *&v190 = v115;
  *(&v190 + 1) = v116;
  *&v191 = v186;
  *(&v191 + 1) = v185;
  v123 = swift_getOpaqueTypeConformance2();
  v124 = v161;
  v125 = v165;
  v126 = v179;
  View.inlineFeedback(controller:completion:)();

  (*(v164 + 8))(v126, v125);
  *&v190 = v125;
  *(&v190 + 1) = v123;
  v127 = swift_getOpaqueTypeConformance2();
  v128 = v163;
  v129 = v167;
  sub_100071210(v124, v167, v127);
  v130 = *(v166 + 8);
  v130(v124, v129);
  sub_100071210(v128, v129, v127);
  return (v130)(v128, v129);
}

uint64_t sub_1000FB7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000033A8(&qword_1001DB778);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB7A0);
  State.projectedValue.getter();
  v12 = (a1 + *(v11 + 52));
  v14 = *v12;
  v13 = v12[1];
  v26 = v14;
  v27 = v13;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v22 = *(v23 + OBJC_IVAR____TtC6Tamale16CameraController_configStorage);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  v15 = type metadata accessor for ConfigList();
  Bindable<A>.subscript.getter();

  v16 = *(v5 + 8);
  v16(v10, v4);
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v16(v8, v4);
  v17 = v26;
  v18 = v27;
  v19 = v28;
  swift_getKeyPath();
  v23 = v17;
  v24 = v18;
  v25 = v19;
  sub_1000033A8(&qword_1001DC518);
  Binding.subscript.getter();

  *(a2 + *(v15 + 20)) = v22;
  return result;
}

uint64_t sub_1000FBA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1000FBB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000033A8(&qword_1001D3200);
  __chkstk_darwin(v4 - 8);
  v6 = (&v28 - v5);
  *v6 = static Alignment.center.getter();
  v6[1] = v7;
  v8 = sub_1000033A8(&qword_1001DBCB8);
  sub_1000FC010(a1, v6 + *(v8 + 44));
  v9 = type metadata accessor for ContentView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  sub_10013DAC8(a1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_100136D64(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ContentView);
  v15 = type metadata accessor for TaskPriority();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v28 - v18;
  static TaskPriority.userInitiated.getter();
  if (sub_10015CB14(2, 26, 4, 0))
  {
    v31 = type metadata accessor for _TaskModifier2();
    v32 = &v28;
    v30 = *(v31 - 8);
    __chkstk_darwin(v31);
    v29 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v34 = 0xD000000000000025;
    v35 = 0x800000010016EE20;
    v33 = 352;
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v28 = v6;
    __chkstk_darwin(v22);
    (*(v16 + 16))(&v28 - v18, &v28 - v18, v15);
    v23 = v29;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v16 + 8))(v19, v15);
    sub_10002091C(v28, a2, &qword_1001D3200);
    v24 = sub_1000033A8(&qword_1001D3208);
    return (*(v30 + 32))(a2 + *(v24 + 36), v23, v31);
  }

  else
  {
    v26 = (a2 + *(sub_1000033A8(&qword_1001D3210) + 36));
    v27 = type metadata accessor for _TaskModifier();
    (*(v16 + 32))(&v26[*(v27 + 20)], &v28 - v18, v15);
    *v26 = &unk_10017BE58;
    *(v26 + 1) = v14;
    return sub_10002091C(v6, a2, &qword_1001D3200);
  }
}

uint64_t sub_1000FC010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = sub_1000033A8(&qword_1001D5FF0);
  v4 = __chkstk_darwin(v3 - 8);
  v91 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v89 = &v76 - v6;
  v88 = type metadata accessor for AccessibilityTraits();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1000033A8(&qword_1001DBCC0);
  __chkstk_darwin(v86);
  v84 = &v76 - v8;
  v9 = sub_1000033A8(&qword_1001D5FE8);
  v10 = __chkstk_darwin(v9 - 8);
  v90 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v76 - v12;
  v13 = sub_1000033A8(&qword_1001D5FE0);
  v14 = __chkstk_darwin(v13 - 8);
  v105 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v82 = &v76 - v16;
  v17 = sub_1000033A8(&qword_1001D5FD8);
  v18 = __chkstk_darwin(v17 - 8);
  v102 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v99 = &v76 - v20;
  v21 = sub_1000033A8(&qword_1001D5FD0);
  v22 = __chkstk_darwin(v21 - 8);
  v101 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v76 - v24;
  v26 = sub_1000033A8(&qword_1001D5FC8);
  v103 = *(v26 - 8);
  v104 = v26;
  v27 = __chkstk_darwin(v26);
  v100 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v95 = &v76 - v29;
  v30 = sub_1000033A8(&qword_1001D5FC0);
  v31 = __chkstk_darwin(v30 - 8);
  v98 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v76 - v33;
  v35 = sub_1000033A8(&qword_1001DBCC8);
  __chkstk_darwin(v35);
  v37 = &v76 - v36;
  v38 = sub_1000033A8(&qword_1001D5FB8);
  v39 = __chkstk_darwin(v38 - 8);
  v97 = &v76 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v93 = &v76 - v41;
  v42 = sub_1000033A8(&qword_1001D5FB0);
  v43 = __chkstk_darwin(v42 - 8);
  v94 = &v76 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v46 = (&v76 - v45);
  v81 = static Color.clear.getter();
  v80 = static SafeAreaRegions.keyboard.getter();
  v79 = static Edge.Set.all.getter();
  v47 = a1 + *(type metadata accessor for ContentView() + 152);
  v48 = *v47;
  v49 = *(v47 + 8);
  LOBYTE(v112) = v48;
  v113 = v49;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  v78 = v108;
  *v46 = static Alignment.center.getter();
  v46[1] = v50;
  v96 = v46;
  v51 = sub_1000033A8(&qword_1001DBCD0);
  sub_10011C148(a1, v46 + *(v51 + 44));
  sub_1000FCBD0(v37);
  sub_10013B024();
  View.accessibilityHidden(_:)();
  sub_10001370C(v37, &qword_1001DBCC8);
  v52 = v34;
  v77 = v34;
  sub_1000FE040(v34);
  v53 = v95;
  sub_1000FED80(v95);
  v54 = v25;
  *v25 = static HorizontalAlignment.center.getter();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v55 = &v25[*(sub_1000033A8(&qword_1001DBDC0) + 44)];
  v76 = v25;
  sub_1001121A0(a1, v55);
  v56 = v99;
  sub_1000FF33C(v99);
  v57 = v82;
  sub_10010043C(v82);
  v58 = v84;
  sub_1001014EC(v84);
  v59 = v85;
  static AccessibilityTraits.isModal.getter();
  sub_10013B888();
  v60 = v83;
  View.accessibilityAddTraits(_:)();
  (*(v87 + 8))(v59, v88);
  sub_10001370C(v58, &qword_1001DBCC0);
  v61 = v89;
  sub_1001039C8(v89);
  v108 = v81;
  v109 = 256;
  v110 = v80;
  v111 = v79;
  v106 = 256;
  v107 = v78;
  v112 = &v108;
  v113 = &v106;
  v62 = v94;
  sub_1000138BC(v96, v94, &qword_1001D5FB0);
  v114 = v62;
  v63 = v97;
  sub_1000138BC(v93, v97, &qword_1001D5FB8);
  v115 = v63;
  v64 = v98;
  sub_1000138BC(v52, v98, &qword_1001D5FC0);
  v116 = v64;
  v65 = v100;
  (*(v103 + 16))(v100, v53, v104);
  v117 = v65;
  v66 = v101;
  sub_1000138BC(v54, v101, &qword_1001D5FD0);
  v118 = v66;
  v67 = v102;
  sub_1000138BC(v56, v102, &qword_1001D5FD8);
  v119 = v67;
  v68 = v105;
  sub_1000138BC(v57, v105, &qword_1001D5FE0);
  v120 = v68;
  v69 = v90;
  sub_1000138BC(v60, v90, &qword_1001D5FE8);
  v121 = v69;
  v70 = v61;
  v71 = v61;
  v72 = v91;
  sub_1000138BC(v70, v91, &qword_1001D5FF0);
  v122 = v72;
  sub_10003826C(&v112, v92);
  sub_10001370C(v71, &qword_1001D5FF0);
  sub_10001370C(v60, &qword_1001D5FE8);
  sub_10001370C(v57, &qword_1001D5FE0);
  sub_10001370C(v99, &qword_1001D5FD8);
  sub_10001370C(v76, &qword_1001D5FD0);
  v73 = v104;
  v74 = *(v103 + 8);
  v74(v95, v104);
  sub_10001370C(v77, &qword_1001D5FC0);
  sub_10001370C(v93, &qword_1001D5FB8);
  sub_10001370C(v96, &qword_1001D5FB0);
  sub_10001370C(v72, &qword_1001D5FF0);
  sub_10001370C(v69, &qword_1001D5FE8);
  sub_10001370C(v105, &qword_1001D5FE0);
  sub_10001370C(v102, &qword_1001D5FD8);
  sub_10001370C(v101, &qword_1001D5FD0);
  v74(v100, v73);
  sub_10001370C(v98, &qword_1001D5FC0);
  sub_10001370C(v97, &qword_1001D5FB8);
  sub_10001370C(v94, &qword_1001D5FB0);
}

uint64_t sub_1000FCBD0@<X0>(uint64_t a1@<X8>)
{
  v130 = a1;
  v107 = sub_1000033A8(&qword_1001DBD88);
  v2 = __chkstk_darwin(v107);
  v109 = v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v108 = v98 - v4;
  v119 = sub_1000033A8(&qword_1001DBD78);
  v5 = __chkstk_darwin(v119);
  v106 = v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v110 = v98 - v7;
  v117 = sub_1000033A8(&qword_1001DC420);
  __chkstk_darwin(v117);
  v118 = v98 - v8;
  v129 = sub_1000033A8(&qword_1001DBD18);
  __chkstk_darwin(v129);
  v120 = v98 - v9;
  v10 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v113 = v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1000033A8(&qword_1001DBD38);
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v115 = v98 - v12;
  v105 = sub_1000033A8(&qword_1001DC428);
  v102 = *(v105 - 8);
  __chkstk_darwin(v105);
  v100 = v98 - v13;
  v116 = sub_1000033A8(&qword_1001DBD28);
  v14 = __chkstk_darwin(v116);
  v104 = v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v111 = v98 - v17;
  v18 = __chkstk_darwin(v16);
  v112 = v98 - v19;
  __chkstk_darwin(v18);
  v114 = v98 - v20;
  v126 = sub_1000033A8(&qword_1001DC430);
  __chkstk_darwin(v126);
  v128 = v98 - v21;
  v124 = sub_1000033A8(&qword_1001DC438);
  __chkstk_darwin(v124);
  v123 = v98 - v22;
  v127 = sub_1000033A8(&qword_1001DBCE8);
  __chkstk_darwin(v127);
  v125 = v98 - v23;
  v24 = type metadata accessor for ContentView();
  v121 = *(v24 - 8);
  v25 = *(v121 + 64);
  __chkstk_darwin(v24);
  v26 = sub_1000033A8(&qword_1001DBCF8);
  __chkstk_darwin(v26);
  v122 = v98 - v27;
  v28 = sub_1000033A8(&qword_1001DB750);
  __chkstk_darwin(v28 - 8);
  v30 = v98 - v29;
  sub_1000033A8(&qword_1001DB7A8);
  v31 = v1;
  State.wrappedValue.getter();
  v32 = type metadata accessor for ResultLookupState();
  v33 = (*(*(v32 - 8) + 48))(v30, 1, v32);
  sub_10001370C(v30, &qword_1001DB750);
  if (v33 != 1)
  {
    sub_10013DAC8(v31, v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
    v47 = (*(v121 + 80) + 16) & ~*(v121 + 80);
    v48 = swift_allocObject();
    sub_100136D64(v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v47, type metadata accessor for ContentView);
    v49 = static Edge.Set.all.getter();
    v131 = sub_100140730;
    v132 = v48;
    LOBYTE(v133) = v49;
    sub_1000033A8(&qword_1001DBD08);
    sub_10013B1F0();
    v44 = v122;
    View.accessibilityIdentifier(_:)();

    v45 = &qword_1001DBCF8;
    sub_1000138BC(v44, v123, &qword_1001DBCF8);
    swift_storeEnumTagMultiPayload();
    sub_10013B134();
    v50 = v125;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v50, v128, &qword_1001DBCE8);
    swift_storeEnumTagMultiPayload();
    sub_10013B0B0();
    sub_10013B27C();
    _ConditionalContent<>.init(storage:)();
    v46 = v50;
    goto LABEL_5;
  }

  v98[1] = v26;
  v34 = v123;
  v35 = v122;
  v36 = v125;
  v98[2] = v25;
  v99 = v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v31 + *(v24 + 196);
  v38 = *v37;
  v39 = *(v37 + 8);
  LOBYTE(v131) = v38;
  v132 = v39;
  sub_1000033A8(&qword_1001DBB80);
  State.wrappedValue.getter();
  if (LOBYTE(v136) == 1)
  {
    v40 = v99;
    sub_10013DAC8(v31, v99, type metadata accessor for ContentView);
    v41 = (*(v121 + 80) + 16) & ~*(v121 + 80);
    v42 = swift_allocObject();
    sub_100136D64(v40, v42 + v41, type metadata accessor for ContentView);
    v43 = static Edge.Set.all.getter();
    v131 = sub_100140718;
    v132 = v42;
    LOBYTE(v133) = v43;
    sub_1000033A8(&qword_1001DBD08);
    sub_10013B1F0();
    v44 = v35;
    View.accessibilityIdentifier(_:)();

    v45 = &qword_1001DBCF8;
    sub_1000138BC(v35, v34, &qword_1001DBCF8);
    swift_storeEnumTagMultiPayload();
    sub_10013B134();
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v36, v128, &qword_1001DBCE8);
    swift_storeEnumTagMultiPayload();
    sub_10013B0B0();
    sub_10013B27C();
    _ConditionalContent<>.init(storage:)();
    v46 = v36;
LABEL_5:
    sub_10001370C(v46, &qword_1001DBCE8);
    return sub_10001370C(v44, v45);
  }

  v124 = v24;
  v52 = *(v24 + 52);
  v125 = v31;
  v53 = (v31 + v52);
  v55 = *v53;
  v54 = v53[1];
  v131 = *v53;
  v132 = v54;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v56 = v136;
  swift_getKeyPath();
  v131 = *&v56;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v58 = *(*&v56 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v57 = *(*&v56 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  v59 = *(*&v56 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  sub_100060424(v58, v57, *(*&v56 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

  if (v59 != 1 && (v59 != 3 || v58 != 2 || v57))
  {
    sub_1000616E4(v58, v57, v59);
    v67 = static Alignment.center.getter();
    v69 = v68;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v131 = v67;
    v132 = v69;
    v135 = 0;
    sub_1000033A8(&qword_1001DBD98);
    sub_10013B718();
    v70 = v109;
    View.accessibilityIdentifier(_:)();
    LocalizedStringKey.init(stringLiteral:)();
    v71 = v108;
    ModifiedContent<>.accessibilityLabel(_:)();

    sub_10001370C(v70, &qword_1001DBD88);
    v72 = v106;
    sub_10002091C(v71, v106, &qword_1001DBD88);
    *(v72 + *(v119 + 36)) = 0;
    v45 = &qword_1001DBD78;
    v44 = v110;
    sub_10002091C(v72, v110, &qword_1001DBD78);
    sub_1000138BC(v44, v118, &qword_1001DBD78);
    swift_storeEnumTagMultiPayload();
    sub_10013B308();
    sub_10013B5D0();
    v73 = v120;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v73, v128, &qword_1001DBD18);
    swift_storeEnumTagMultiPayload();
    sub_10013B0B0();
    sub_10013B27C();
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v73, &qword_1001DBD18);
    return sub_10001370C(v44, v45);
  }

  v60 = static Alignment.center.getter();
  v62 = v61;
  LODWORD(v123) = static Edge.Set.all.getter();
  sub_1001138D8(v115);
  v131 = v55;
  v132 = v54;
  State.wrappedValue.getter();
  v63 = v136;
  swift_getKeyPath();
  v131 = *&v63;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v65 = *(*&v63 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v64 = *(*&v63 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  v66 = *(*&v63 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  sub_100060424(v65, v64, *(*&v63 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

  if (v66 == 1)
  {
    v131 = v60;
    v132 = v62;
    v133 = 0;
    LOWORD(v134) = 1;
    BYTE2(v134) = v123;
    static GestureMask.all.getter();
  }

  else
  {
    sub_1000616E4(v65, v64, v66);
    v131 = v60;
    v132 = v62;
    v133 = 0;
    LOWORD(v134) = 1;
    BYTE2(v134) = v123;
    if (v66 == 3 && v65 == 2 && !v64)
    {
      static GestureMask.all.getter();
    }

    else
    {
      static GestureMask.subviews.getter();
    }
  }

  v74 = sub_1000033A8(&qword_1001DBD30);
  v75 = sub_10013B460();
  v76 = sub_100013608(&qword_1001DBD68, &qword_1001DBD38);
  v77 = v100;
  v78 = v115;
  v79 = v103;
  View.gesture<A>(_:including:)();
  (*(v101 + 8))(v78, v79);
  v131 = v74;
  v132 = v79;
  v133 = v75;
  v134 = v76;
  swift_getOpaqueTypeConformance2();
  v80 = v104;
  v81 = v105;
  View.accessibilityIdentifier(_:)();
  (*(v102 + 8))(v77, v81);
  LocalizedStringKey.init(stringLiteral:)();
  v82 = v111;
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_10001370C(v80, &qword_1001DBD28);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v83);
  sub_1000033A8(&qword_1001D58A0);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_100171DA0;
  v85 = v125;
  v86 = &v125[*(v124 + 104)];
  v87 = *v86;
  v88 = v86[1];
  v131 = v87;
  v132 = v88;
  sub_1000033A8(&qword_1001D48E0);
  State.wrappedValue.getter();
  v89 = v136 + v136;
  *(v84 + 56) = &type metadata for Double;
  *(v84 + 64) = &protocol witness table for Double;
  *(v84 + 32) = v89;
  v90._countAndFlagsBits = String.init(format:_:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v90);

  v91._countAndFlagsBits = 0x5A2073656D695420;
  v91._object = 0xEB000000006D6F6FLL;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v91);
  LocalizedStringKey.init(stringInterpolation:)();
  v92 = v112;
  ModifiedContent<>.accessibilityValue(_:)();

  sub_10001370C(v82, &qword_1001DBD28);
  v93 = v99;
  sub_10013DAC8(v85, v99, type metadata accessor for ContentView);
  v94 = (*(v121 + 80) + 16) & ~*(v121 + 80);
  v95 = swift_allocObject();
  sub_100136D64(v93, v95 + v94, type metadata accessor for ContentView);
  v96 = v114;
  ModifiedContent<>.accessibilityAdjustableAction(_:)();

  sub_10001370C(v92, &qword_1001DBD28);
  sub_1000138BC(v96, v118, &qword_1001DBD28);
  swift_storeEnumTagMultiPayload();
  sub_10013B308();
  sub_10013B5D0();
  v97 = v120;
  _ConditionalContent<>.init(storage:)();
  sub_1000138BC(v97, v128, &qword_1001DBD18);
  swift_storeEnumTagMultiPayload();
  sub_10013B0B0();
  sub_10013B27C();
  _ConditionalContent<>.init(storage:)();
  sub_10001370C(v97, &qword_1001DBD18);
  return sub_10001370C(v96, &qword_1001DBD28);
}

uint64_t sub_1000FE040@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v89 = sub_1000033A8(&qword_1001DC3E8);
  __chkstk_darwin(v89);
  v90 = &v67[-v2];
  v71 = type metadata accessor for EnvironmentValues();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v67[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_1000033A8(&qword_1001DC3F0);
  __chkstk_darwin(v88);
  v80 = &v67[-v4];
  v5 = type metadata accessor for ContentView();
  v75 = *(v5 - 8);
  __chkstk_darwin(v5);
  v77 = v6;
  v78 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for FeatureOnboardingOverlayExperience();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v81 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000033A8(&qword_1001DC3F8);
  v11 = __chkstk_darwin(v10);
  v87 = &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v67[-v13];
  v15 = sub_1000033A8(&qword_1001DC400);
  v16 = __chkstk_darwin(v15 - 8);
  v86 = &v67[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v85 = &v67[-v19];
  v20 = __chkstk_darwin(v18);
  v93 = &v67[-v21];
  v22 = __chkstk_darwin(v20);
  v24 = &v67[-v23];
  __chkstk_darwin(v22);
  v26 = &v67[-v25];
  v76 = v5;
  v27 = *(v5 + 288);
  v28 = sub_1000033A8(&qword_1001DB778);
  v79 = v1;
  v74 = v27;
  v73 = v28;
  Bindable.wrappedValue.getter();
  NewSaliencyModel.fullscreenEntity.getter();

  NewEntityModel.cardModel.getter();
  v29 = v26;

  CardModel.onboardingExperience.getter();

  v83 = *(v8 + 104);
  v83(v24, enum case for FeatureOnboardingOverlayExperience.siri(_:), v7);
  v82 = *(v8 + 56);
  v82(v24, 0, 1, v7);
  v84 = v10;
  v30 = *(v10 + 48);
  sub_1000138BC(v26, v14, &qword_1001DC400);
  sub_1000138BC(v24, &v14[v30], &qword_1001DC400);
  v92 = v8;
  v31 = *(v8 + 48);
  if (v31(v14, 1, v7) == 1)
  {
    sub_10001370C(v24, &qword_1001DC400);
    if (v31(&v14[v30], 1, v7) == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1000138BC(v14, v93, &qword_1001DC400);
  if (v31(&v14[v30], 1, v7) == 1)
  {
    sub_10001370C(v24, &qword_1001DC400);
    (*(v92 + 1))(v93, v7);
LABEL_6:
    sub_10001370C(v14, &qword_1001DC3F8);
    goto LABEL_7;
  }

  v51 = v81;
  (*(v92 + 4))(v81, &v14[v30], v7);
  sub_10013FB34(&qword_1001DC418, &type metadata accessor for FeatureOnboardingOverlayExperience);
  v68 = dispatch thunk of static Equatable.== infix(_:_:)();
  v72 = v26;
  v52 = *(v92 + 1);
  v52(v51, v7);
  sub_10001370C(v24, &qword_1001DC400);
  v52(v93, v7);
  v29 = v72;
  sub_10001370C(v14, &qword_1001DC400);
  if (v68)
  {
    goto LABEL_21;
  }

LABEL_7:
  v32 = v85;
  v83(v85, enum case for FeatureOnboardingOverlayExperience.montara(_:), v7);
  v82(v32, 0, 1, v7);
  v33 = *(v84 + 48);
  v34 = v87;
  sub_1000138BC(v29, v87, &qword_1001DC400);
  sub_1000138BC(v32, &v34[v33], &qword_1001DC400);
  if (v31(v34, 1, v7) == 1)
  {
    sub_10001370C(v32, &qword_1001DC400);
    if (v31(&v34[v33], 1, v7) == 1)
    {
      v14 = v34;
LABEL_10:
      sub_10001370C(v14, &qword_1001DC400);
LABEL_21:
      swift_storeEnumTagMultiPayload();
      sub_10013FA78();
      _ConditionalContent<>.init(storage:)();
      return sub_10001370C(v29, &qword_1001DC400);
    }

    goto LABEL_13;
  }

  sub_1000138BC(v34, v86, &qword_1001DC400);
  if (v31(&v34[v33], 1, v7) == 1)
  {
    sub_10001370C(v32, &qword_1001DC400);
    (*(v92 + 1))(v86, v7);
LABEL_13:
    sub_10001370C(v34, &qword_1001DC3F8);
    goto LABEL_14;
  }

  v60 = v32;
  v61 = v92;
  v62 = v81;
  (*(v92 + 4))(v81, &v34[v33], v7);
  sub_10013FB34(&qword_1001DC418, &type metadata accessor for FeatureOnboardingOverlayExperience);
  v63 = v86;
  v64 = dispatch thunk of static Equatable.== infix(_:_:)();
  v65 = *(v61 + 1);
  v65(v62, v7);
  sub_10001370C(v60, &qword_1001DC400);
  v65(v63, v7);
  sub_10001370C(v34, &qword_1001DC400);
  if (v64)
  {
    goto LABEL_21;
  }

LABEL_14:
  v72 = v29;
  v93 = type metadata accessor for ContentView;
  v35 = v79;
  v36 = v78;
  sub_10013DAC8(v79, v78, type metadata accessor for ContentView);
  type metadata accessor for MainActor();
  v37 = static MainActor.shared.getter();
  v38 = *(v75 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v39 + 24) = &protocol witness table for MainActor;
  v92 = type metadata accessor for ContentView;
  sub_100136D64(v36, v39 + ((v38 + 32) & ~v38), type metadata accessor for ContentView);
  v40 = static MainActor.shared.getter();
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  *(v41 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  LODWORD(v87) = v95;
  Bindable.wrappedValue.getter();
  v86 = v94;
  v42 = *(v35 + *(v76 + 292));
  v43 = (v35 + *(v76 + 304));
  v44 = *v43;
  v45 = v43[1];
  v96 = v44;
  v97 = v45;
  v46 = v42;
  sub_1000033A8(&qword_1001D4888);
  State.projectedValue.getter();
  sub_10013DAC8(v35, v36, v93);
  v47 = swift_allocObject();
  sub_100136D64(v36, v47 + ((v38 + 16) & ~v38), v92);

  v48 = v80;
  OmnibarContainer.init(model:sheetAssistant:additionalPartnerHorizontalPadding:isUnified:handler:)();
  v49 = static Edge.Set.bottom.getter();
  v50 = *v35;
  if (*(v35 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v53 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v54 = v69;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100133E10(v50, 0);
    (*(v70 + 8))(v54, v71);
  }

  EdgeInsets.init(_all:)();
  v55 = v48 + *(v88 + 36);
  *v55 = v49;
  *(v55 + 8) = v56;
  *(v55 + 16) = v57;
  *(v55 + 24) = v58;
  *(v55 + 32) = v59;
  *(v55 + 40) = 0;
  sub_1000138BC(v48, v90, &qword_1001DC3F0);
  swift_storeEnumTagMultiPayload();
  sub_10013FA78();
  _ConditionalContent<>.init(storage:)();

  sub_10001370C(v48, &qword_1001DC3F0);
  v29 = v72;
  return sub_10001370C(v29, &qword_1001DC400);
}

uint64_t sub_1000FED80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for ContentView();
  v4 = *(v3 - 8);
  v60 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v56 = v5;
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000033A8(&qword_1001DC080);
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  v10 = sub_1000033A8(&qword_1001DC088);
  v11 = *(v10 - 8);
  v49 = v10;
  v50 = v11;
  __chkstk_darwin(v10);
  v58 = &v45 - v12;
  v13 = sub_1000033A8(&qword_1001DC090);
  v14 = *(v13 - 8);
  v51 = v13;
  v52 = v14;
  __chkstk_darwin(v13);
  v59 = &v45 - v15;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v16 = sub_1000033A8(&qword_1001DC098);
  sub_10010F938(v1, &v9[*(v16 + 44)]);
  v17 = *(v7 + 36);
  v46 = v7;
  v9[v17] = 1;
  v61 = sub_1001112C8();
  v57 = type metadata accessor for ContentView;
  v18 = v6;
  v54 = v6;
  sub_10013DAC8(v2, v6, type metadata accessor for ContentView);
  v48 = *(v4 + 80);
  v19 = (v48 + 16) & ~v48;
  v20 = swift_allocObject();
  v55 = type metadata accessor for ContentView;
  sub_100136D64(v18, v20 + v19, type metadata accessor for ContentView);
  v21 = sub_1000033A8(&qword_1001DC0A0);
  v22 = sub_10013CAA8();
  v23 = sub_10013CB60();
  View.onChange<A>(of:initial:_:)();

  sub_10001370C(v9, &qword_1001DC080);
  v24 = *(v60 + 168);
  v47 = v2;
  v25 = (v2 + v24);
  v27 = *v25;
  v26 = v25[1];
  v61 = v27;
  v62 = v26;
  sub_1000033A8(&qword_1001DBB90);
  State.wrappedValue.getter();
  v28 = v2;
  v29 = v54;
  sub_10013DAC8(v28, v54, v57);
  v30 = swift_allocObject();
  sub_100136D64(v29, v30 + v19, v55);
  v31 = sub_1000033A8(&qword_1001DA510);
  v61 = v46;
  v62 = v21;
  v63 = v22;
  v64 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_10013CC68();
  v34 = v58;
  v35 = v49;
  View.onChange<A>(of:initial:_:)();

  (*(v50 + 8))(v34, v35);
  v36 = v47;
  v37 = v47 + *(v60 + 164);
  v38 = *v37;
  v39 = *(v37 + 8);
  LOBYTE(v61) = v38;
  v62 = v39;
  sub_1000033A8(&qword_1001DBB98);
  State.wrappedValue.getter();
  v40 = v54;
  sub_10013DAC8(v36, v54, v57);
  v41 = swift_allocObject();
  sub_100136D64(v40, v41 + v19, v55);
  v61 = v35;
  v62 = v31;
  v63 = OpaqueTypeConformance2;
  v64 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1000D4810();
  v42 = v51;
  v43 = v59;
  View.onChange<A>(of:initial:_:)();

  return (*(v52 + 8))(v43, v42);
}

uint64_t sub_1000FF33C@<X0>(uint64_t a1@<X8>)
{
  v131 = a1;
  v123 = type metadata accessor for UUID();
  v122 = *(v123 - 8);
  v2 = __chkstk_darwin(v123);
  v120 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v121 = &v93 - v4;
  v5 = type metadata accessor for ContentView();
  v114 = *(v5 - 8);
  __chkstk_darwin(v5);
  v127 = v6;
  v119 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResultLookupState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v100 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for MorphingContainerMode();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v124 = (&v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = sub_1000033A8(&qword_1001DBFC8);
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v93 - v11;
  v104 = sub_1000033A8(&qword_1001DBFD0);
  __chkstk_darwin(v104);
  v110 = &v93 - v12;
  v13 = sub_1000033A8(&qword_1001DBFD8);
  __chkstk_darwin(v13);
  v109 = &v93 - v14;
  v107 = sub_1000033A8(&qword_1001DBFE0);
  __chkstk_darwin(v107);
  v112 = &v93 - v15;
  v111 = sub_1000033A8(&qword_1001DBFE8);
  __chkstk_darwin(v111);
  v115 = &v93 - v16;
  v113 = sub_1000033A8(&qword_1001DBFF0);
  __chkstk_darwin(v113);
  v118 = &v93 - v17;
  v132 = sub_1000033A8(&qword_1001DBFF8);
  v130 = *(v132 - 8);
  v18 = __chkstk_darwin(v132);
  v117 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v116 = &v93 - v20;
  v21 = sub_1000033A8(&qword_1001DB750);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v93 - v25;
  v126 = type metadata accessor for ImageSearchState();
  v27 = *(v126 - 8);
  v28 = __chkstk_darwin(v126);
  v125 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v129 = &v93 - v30;
  v103 = v5;
  sub_1000033A8(&qword_1001DB7A8);
  v128 = v1;
  State.wrappedValue.getter();
  v31 = *(v8 + 48);
  if (v31(v26, 1, v7) == 1)
  {
    sub_10001370C(v26, &qword_1001DB750);
    return (*(v130 + 56))(v131, 1, 1, v132);
  }

  if ((*(v8 + 88))(v26, v7) != enum case for ResultLookupState.imageSearch(_:))
  {
    (*(v8 + 8))(v26, v7);
    return (*(v130 + 56))(v131, 1, 1, v132);
  }

  v97 = v13;
  v93 = v8;
  (*(v8 + 96))(v26, v7);
  v32 = v26;
  v33 = v126;
  (*(v27 + 32))(v129, v32, v126);
  v34 = *(v27 + 104);
  v35 = v125;
  v96 = enum case for ImageSearchState.started(_:);
  v95 = v27 + 104;
  v94 = v34;
  v34(v125);
  v36 = static ImageSearchState.== infix(_:_:)();
  v37 = *(v27 + 8);
  v99 = v27 + 8;
  v98 = v37;
  v37(v35, v33);
  v38 = &enum case for MorphingContainerMode.pill(_:);
  if ((v36 & 1) == 0)
  {
    v38 = &enum case for MorphingContainerMode.platter(_:);
  }

  (*(v101 + 104))(v124, *v38, v102);
  v39 = v128 + *(v103 + 80);
  v40 = *v39;
  v41 = *(v39 + 8);
  LOBYTE(v136) = v40;
  *(&v136 + 1) = v41;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  if (v31(v24, 1, v7))
  {
    v42 = sub_10001370C(v24, &qword_1001DB750);
  }

  else
  {
    v44 = v93;
    v45 = v100;
    (*(v93 + 16))(v100, v24, v7);
    sub_10001370C(v24, &qword_1001DB750);
    sub_100157940();
    v42 = (*(v44 + 8))(v45, v7);
  }

  __chkstk_darwin(v42);
  v46 = v128;
  sub_1000033A8(&qword_1001DA828);
  type metadata accessor for ImageSearchResultView();
  sub_1000DED2C();
  sub_10013FB34(&qword_1001DC000, &type metadata accessor for ImageSearchResultView);
  v47 = v105;
  MorphingContainer.init(mode:showLatencyEffects:showRestingEffects:showContentEffects:ViewBuilder:platterContent:)();
  v124 = type metadata accessor for ContentView;
  v48 = v119;
  sub_10013DAC8(v46, v119, type metadata accessor for ContentView);
  v49 = (*(v114 + 80) + 16) & ~*(v114 + 80);
  v50 = swift_allocObject();
  v114 = type metadata accessor for ContentView;
  sub_100136D64(v48, v50 + v49, type metadata accessor for ContentView);
  v51 = v110;
  (*(v106 + 32))(v110, v47, v108);
  v52 = (v51 + *(v104 + 36));
  *v52 = sub_10013C888;
  v52[1] = v50;
  v52[2] = 0;
  v52[3] = 0;
  v53 = static Alignment.center.getter();
  v55 = v54;
  v56 = v109;
  v57 = &v109[*(v97 + 36)];
  sub_10010DFE8(v46, v129, v57);
  v58 = (v57 + *(sub_1000033A8(&qword_1001DC008) + 36));
  *v58 = v53;
  v58[1] = v55;
  sub_10002091C(v51, v56, &qword_1001DBFD0);
  sub_10013C54C();
  v59 = AnyTransition.init<A>(_:)();
  v60 = v112;
  sub_10002091C(v56, v112, &qword_1001DBFD8);
  *(v60 + *(v107 + 36)) = v59;
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v61 = v60;
  v62 = v115;
  sub_10002091C(v61, v115, &qword_1001DBFE0);
  v63 = (v62 + *(v111 + 36));
  v64 = v141;
  v63[4] = v140;
  v63[5] = v64;
  v63[6] = v142;
  v65 = v137;
  *v63 = v136;
  v63[1] = v65;
  v66 = v139;
  v63[2] = v138;
  v63[3] = v66;
  LOBYTE(v59) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = v118;
  sub_10002091C(v62, v118, &qword_1001DBFE8);
  v76 = v75 + *(v113 + 36);
  *v76 = v59;
  *(v76 + 8) = v68;
  *(v76 + 16) = v70;
  *(v76 + 24) = v72;
  *(v76 + 32) = v74;
  *(v76 + 40) = 0;
  v77 = v125;
  v78 = v126;
  v94(v125, v96, v126);
  sub_10013FB34(&qword_1001DC010, &type metadata accessor for ImageSearchState);
  LOBYTE(v62) = dispatch thunk of static Equatable.== infix(_:_:)();
  v98(v77, v78);
  sub_10013DAC8(v46, v48, v124);
  v79 = swift_allocObject();
  sub_100136D64(v48, v79 + v49, v114);
  v80 = v117;
  v81 = &v117[*(v132 + 36)];
  *v81 = (v62 & 1) == 0;
  v81[1] = 1;
  *(v81 + 1) = sub_10013C8A0;
  *(v81 + 2) = v79;
  v133 = 0;

  State.init(wrappedValue:)();
  v82 = v135;
  *(v81 + 3) = v134;
  *(v81 + 4) = v82;
  LOBYTE(v133) = 0;
  State.init(wrappedValue:)();
  v83 = v135;
  v81[40] = v134;
  *(v81 + 6) = v83;
  v133 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v84 = v135;
  *(v81 + 7) = v134;
  *(v81 + 8) = v84;
  v133 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v85 = v135;
  *(v81 + 9) = v134;
  *(v81 + 10) = v85;
  v133 = 0;
  State.init(wrappedValue:)();
  v86 = v135;
  *(v81 + 11) = v134;
  *(v81 + 12) = v86;
  type metadata accessor for SwipeToDismissModifier();
  v87 = v121;
  UUID.init()();
  v88 = v122;
  v89 = v123;
  (*(v122 + 16))(v120, v87, v123);
  State.init(wrappedValue:)();

  (*(v88 + 8))(v87, v89);
  sub_10002091C(v75, v80, &qword_1001DBFF0);
  v90 = v116;
  sub_10002091C(v80, v116, &qword_1001DBFF8);
  v91 = v90;
  v92 = v131;
  sub_10002091C(v91, v131, &qword_1001DBFF8);
  (*(v130 + 56))(v92, 0, 1, v132);
  return (v98)(v129, v78);
}

uint64_t sub_10010043C@<X0>(uint64_t a1@<X8>)
{
  v110 = type metadata accessor for AccessibilityChildBehavior();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for UUID();
  v106 = *(v107 - 8);
  v4 = __chkstk_darwin(v107);
  v104 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v105 = &v83 - v6;
  v7 = type metadata accessor for ContentView();
  v97 = *(v7 - 8);
  __chkstk_darwin(v7);
  v98 = v8;
  v99 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for MorphingContainerMode();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v89 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1000033A8(&qword_1001DBF48);
  v91 = *(v94 - 8);
  __chkstk_darwin(v94);
  v90 = &v83 - v10;
  v88 = sub_1000033A8(&qword_1001DBF50);
  __chkstk_darwin(v88);
  v93 = &v83 - v11;
  v92 = sub_1000033A8(&qword_1001DBF58);
  __chkstk_darwin(v92);
  v96 = &v83 - v12;
  v95 = sub_1000033A8(&qword_1001DBF60);
  __chkstk_darwin(v95);
  v101 = &v83 - v13;
  v102 = sub_1000033A8(&qword_1001DBF68);
  __chkstk_darwin(v102);
  v103 = &v83 - v14;
  v115 = sub_1000033A8(&qword_1001DBF70);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v100 = &v83 - v15;
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v18 = sub_1000033A8(&qword_1001DB750);
  __chkstk_darwin(v18 - 8);
  v20 = &v83 - v19;
  v111 = type metadata accessor for AcmeState();
  v112 = *(v111 - 8);
  v21 = __chkstk_darwin(v111);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v83 - v24;
  v117 = sub_1000033A8(&qword_1001DBF78);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v113 = &v83 - v26;
  v27 = (v1 + *(v7 + 60));
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v121) = v28;
  *(&v121 + 1) = v29;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  if (v119 == 1)
  {
    v85 = a1;
    sub_1000033A8(&qword_1001DB7A8);
    v84 = v1;
    State.wrappedValue.getter();
    v30 = type metadata accessor for ResultLookupState();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v20, 1, v30) == 1)
    {
      sub_10001370C(v20, &qword_1001DB750);
    }

    else
    {
      if ((*(v31 + 88))(v20, v30) == enum case for ResultLookupState.acme(_:))
      {
        (*(v31 + 96))(v20, v30);
        v33 = v112;
        v34 = v111;
        (*(v112 + 32))(v25, v20, v111);
        String.LocalizationValue.init(stringLiteral:)();
        sub_10005BBC4(0, &qword_1001D42C8);
        if (!NSBundle.init(__dsoHandle:)())
        {
          v35 = [objc_opt_self() mainBundle];
        }

        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        (*(v33 + 104))(v23, enum case for AcmeState.running(_:), v34);
        v36 = static AcmeState.== infix(_:_:)();
        v37 = *(v33 + 8);
        v112 = v33 + 8;
        v83 = v37;
        v37(v23, v34);
        v38 = &enum case for MorphingContainerMode.pill(_:);
        if ((v36 & 1) == 0)
        {
          v38 = &enum case for MorphingContainerMode.platter(_:);
        }

        (v86[13])(v89, *v38, v87);
        v39 = v84;
        v40 = v84 + *(v7 + 80);
        v41 = *v40;
        v42 = *(v40 + 8);
        LOBYTE(v121) = v41;
        *(&v121 + 1) = v42;
        v43 = State.wrappedValue.getter();
        v86 = &v83;
        v44 = __chkstk_darwin(v43);
        __chkstk_darwin(v44);
        sub_1000033A8(&qword_1001DA828);
        type metadata accessor for ACMEResultView();
        sub_1000DED2C();
        sub_10013FB34(&qword_1001DBF80, type metadata accessor for ACMEResultView);
        v87 = v25;
        v45 = v90;
        MorphingContainer.init(mode:showLatencyEffects:showRestingEffects:showContentEffects:ViewBuilder:platterContent:)();

        sub_10013C54C();
        v46 = AnyTransition.init<A>(_:)();
        v47 = v93;
        (*(v91 + 32))(v93, v45, v94);
        *&v47[*(v88 + 36)] = v46;
        static Alignment.top.getter();
        _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
        v48 = v47;
        v49 = v96;
        sub_10002091C(v48, v96, &qword_1001DBF50);
        v50 = (v49 + *(v92 + 36));
        v51 = v126;
        v50[4] = v125;
        v50[5] = v51;
        v50[6] = v127;
        v52 = v122;
        *v50 = v121;
        v50[1] = v52;
        v53 = v124;
        v50[2] = v123;
        v50[3] = v53;
        LOBYTE(v46) = static Edge.Set.horizontal.getter();
        EdgeInsets.init(_all:)();
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v62 = v101;
        sub_10002091C(v49, v101, &qword_1001DBF58);
        v63 = v62 + *(v95 + 36);
        *v63 = v46;
        *(v63 + 8) = v55;
        *(v63 + 16) = v57;
        *(v63 + 24) = v59;
        *(v63 + 32) = v61;
        *(v63 + 40) = 0;
        v64 = v99;
        sub_10013DAC8(v39, v99, type metadata accessor for ContentView);
        v65 = (*(v97 + 80) + 16) & ~*(v97 + 80);
        v66 = swift_allocObject();
        sub_100136D64(v64, v66 + v65, type metadata accessor for ContentView);
        v67 = v103;
        v68 = &v103[*(v102 + 36)];
        *v68 = 257;
        *(v68 + 1) = sub_10013C5A0;
        *(v68 + 2) = v66;
        v118 = 0;

        State.init(wrappedValue:)();
        v69 = v120;
        *(v68 + 3) = v119;
        *(v68 + 4) = v69;
        LOBYTE(v118) = 0;
        State.init(wrappedValue:)();
        v70 = v120;
        v68[40] = v119;
        *(v68 + 6) = v70;
        v118 = 0x3FF0000000000000;
        State.init(wrappedValue:)();
        v71 = v120;
        *(v68 + 7) = v119;
        *(v68 + 8) = v71;
        v118 = 0x3FF0000000000000;
        State.init(wrappedValue:)();
        v72 = v120;
        *(v68 + 9) = v119;
        *(v68 + 10) = v72;
        v118 = 0;
        State.init(wrappedValue:)();
        v73 = v120;
        *(v68 + 11) = v119;
        *(v68 + 12) = v73;
        type metadata accessor for SwipeToDismissModifier();
        v74 = v105;
        UUID.init()();
        v75 = v106;
        v76 = v107;
        (*(v106 + 16))(v104, v74, v107);
        State.init(wrappedValue:)();

        (*(v75 + 8))(v74, v76);
        sub_10002091C(v62, v67, &qword_1001DBF60);
        v77 = v108;
        static AccessibilityChildBehavior.combine.getter();
        sub_10013C5AC();
        v78 = v100;
        View.accessibilityElement(children:)();
        (*(v109 + 8))(v77, v110);
        sub_10001370C(v67, &qword_1001DBF68);
        v79 = v114;
        v80 = v113;
        v81 = v115;
        (*(v114 + 32))(v113, v78, v115);
        (*(v79 + 56))(v80, 0, 1, v81);
        v83(v87, v111);
        goto LABEL_13;
      }

      (*(v31 + 8))(v20, v30);
    }

    v80 = v113;
    (*(v114 + 56))(v113, 1, 1, v115);
LABEL_13:
    a1 = v85;
    sub_10002091C(v80, v85, &qword_1001DBF78);
    v32 = 0;
    return (*(v116 + 56))(a1, v32, 1, v117);
  }

  v32 = 1;
  return (*(v116 + 56))(a1, v32, 1, v117);
}

uint64_t sub_1001014EC@<X0>(uint64_t a1@<X8>)
{
  v214 = a1;
  v158 = sub_1000033A8(&qword_1001DBF20);
  __chkstk_darwin(v158);
  v159 = (&v156 - v2);
  v205 = sub_1000033A8(&qword_1001DBE58);
  __chkstk_darwin(v205);
  v160 = &v156 - v3;
  v162 = type metadata accessor for FeatureOnboardingOverlayExperience();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v163 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for FeatureOnboardingOverlay();
  v165 = *(v175 - 8);
  __chkstk_darwin(v175);
  v164 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1000033A8(&qword_1001DBF28);
  __chkstk_darwin(v169);
  v170 = &v156 - v6;
  v203 = sub_1000033A8(&qword_1001DBE38);
  __chkstk_darwin(v203);
  v171 = &v156 - v7;
  v8 = type metadata accessor for ContentView();
  v172 = *(v8 - 1);
  v9 = __chkstk_darwin(v8);
  v166 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = v10;
  __chkstk_darwin(v9);
  v173 = &v156 - v11;
  v168 = type metadata accessor for OnboardingOverlay();
  __chkstk_darwin(v168);
  v167 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v177 = *(v179 - 8);
  __chkstk_darwin(v179);
  v178 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v182 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v181 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for LocalizedStringResource();
  v180 = *(v193 - 8);
  v18 = __chkstk_darwin(v193);
  v176 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v192 = &v156 - v20;
  v213 = sub_1000033A8(&qword_1001DBF30);
  __chkstk_darwin(v213);
  v212 = &v156 - v21;
  v200 = sub_1000033A8(&qword_1001DBF38);
  __chkstk_darwin(v200);
  v202 = &v156 - v22;
  v198 = sub_1000033A8(&qword_1001DBF40);
  __chkstk_darwin(v198);
  v197 = &v156 - v23;
  v201 = sub_1000033A8(&qword_1001DBDF8);
  __chkstk_darwin(v201);
  v199 = &v156 - v24;
  v204 = sub_1000033A8(&qword_1001DBDE8);
  __chkstk_darwin(v204);
  v211 = &v156 - v25;
  v210 = type metadata accessor for OpacityTransition();
  v208 = *(v210 - 8);
  __chkstk_darwin(v210);
  v206 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1000033A8(&qword_1001DBE88);
  v209 = *(v196 - 8);
  v27 = __chkstk_darwin(v196);
  v195 = &v156 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v207 = &v156 - v29;
  v191 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v188 = &v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for GreymatterAvailability.UseCaseIdentifier();
  v187 = *(v189 - 8);
  __chkstk_darwin(v189);
  v32 = &v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for GreymatterAvailability();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v34 = &v156 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000033A8(&qword_1001D50F0);
  __chkstk_darwin(v35 - 8);
  v183 = &v156 - v36;
  v37 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v184 = *(v37 - 8);
  v38 = __chkstk_darwin(v37);
  v40 = &v156 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v156 - v41;
  v194 = sub_1000033A8(&qword_1001DBE08);
  __chkstk_darwin(v194);
  v44 = (&v156 - v43);
  v45 = v1;
  v46 = v1 + v8[37];
  v47 = *v46;
  v48 = *(v46 + 8);
  LOBYTE(v216) = v47;
  *(&v216 + 1) = v48;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  if (v215 == 1)
  {
    *v44 = swift_getKeyPath();
    v157 = v44;
    sub_1000033A8(&qword_1001D50E0);
    swift_storeEnumTagMultiPayload();
    v49 = type metadata accessor for MissingIntelligenceView();
    v50 = v44 + *(v49 + 20);
    *v50 = swift_getKeyPath();
    *(v50 + 1) = 0;
    v50[16] = 0;
    v193 = *(v49 + 24);
    static GreymatterAvailability.shared.getter();
    v51 = v187;
    v52 = v189;
    (*(v187 + 104))(v32, enum case for GreymatterAvailability.UseCaseIdentifier.settings(_:), v189);
    v53 = v188;
    default argument 1 of GreymatterAvailability.availability(_:languageOption:)();
    v54 = v183;
    GreymatterAvailability.availability(_:languageOption:)();
    (*(v190 + 8))(v53, v191);
    (*(v51 + 8))(v32, v52);
    (*(v185 + 8))(v34, v186);
    sub_10001370C(v54, &qword_1001D50F0);
    v55 = v184;
    (*(v184 + 16))(v40, v42, v37);
    v56 = v157;
    State.init(wrappedValue:)();
    (*(v55 + 8))(v42, v37);
    v57 = v206;
    OpacityTransition.init()();
    static Animation.linear(duration:)();
    v58 = sub_10013FB34(&qword_1001D4E70, &type metadata accessor for OpacityTransition);
    v59 = v207;
    v60 = v210;
    Transition.animation(_:)();

    (*(v208 + 8))(v57, v60);
    v61 = v209;
    v62 = v196;
    (*(v209 + 16))(v195, v59, v196);
    *&v216 = v60;
    *(&v216 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    v63 = AnyTransition.init<A>(_:)();
    (*(v61 + 8))(v59, v62);
    *(v56 + *(v194 + 36)) = v63;
    sub_1000138BC(v56, v197, &qword_1001DBE08);
    swift_storeEnumTagMultiPayload();
    sub_1000033A8(&qword_1001DBE20);
    sub_10013BAB0();
    sub_10013BB98();
    v64 = v199;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v64, v202, &qword_1001DBDF8);
    swift_storeEnumTagMultiPayload();
    sub_10013BA24();
    sub_10013BCA4();
    v65 = v211;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v64, &qword_1001DBDF8);
    sub_1000138BC(v65, v212, &qword_1001DBDE8);
    swift_storeEnumTagMultiPayload();
    sub_10013B998();
    sub_10013BD90();
    v66 = v214;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v65, &qword_1001DBDE8);
    sub_10001370C(v56, &qword_1001DBE08);
    v67 = sub_1000033A8(&qword_1001DBDD8);
    return (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  }

  else
  {
    v69 = v206;
    v70 = v208;
    v71 = v207;
    v72 = v210;
    v73 = v209;
    if (sub_1001151BC())
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v177 + 104))(v178, enum case for LocalizedStringResource.BundleDescription.main(_:), v179);
      v74 = v192;
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v191 = String.init(localized:table:bundle:locale:comment:)();
      v190 = v75;
      v76 = v180;
      (*(v180 + 16))(v176, v74, v193);
      v189 = String.init(localized:)();
      v188 = v77;
      v187 = 0x800000010016EFE0;
      v215 = 0;
      State.init(wrappedValue:)();
      v78 = v216;
      OpacityTransition.init()();
      static Animation.linear(duration:)();
      v79 = sub_10013FB34(&qword_1001D4E70, &type metadata accessor for OpacityTransition);
      Transition.animation(_:)();

      (*(v70 + 8))(v69, v72);
      v80 = v196;
      (*(v73 + 16))(v195, v71, v196);
      *&v216 = v72;
      *(&v216 + 1) = v79;
      swift_getOpaqueTypeConformance2();
      v81 = AnyTransition.init<A>(_:)();
      (*(v73 + 8))(v71, v80);
      *&v216 = v191;
      *(&v216 + 1) = v190;
      *&v217 = v189;
      *(&v217 + 1) = v188;
      *&v218 = 0xD000000000000010;
      *(&v218 + 1) = v187;
      v219 = 0uLL;
      v220 = v78;
      v221 = v81;
      v82 = v197;
      *(v197 + 80) = v81;
      v83 = v219;
      v82[2] = v218;
      v82[3] = v83;
      v82[4] = v220;
      v84 = v217;
      *v82 = v216;
      v82[1] = v84;
      swift_storeEnumTagMultiPayload();
      sub_1000138BC(&v216, &v215, &qword_1001DBE20);
      sub_1000033A8(&qword_1001DBE20);
      sub_10013BAB0();
      sub_10013BB98();
      v85 = v199;
      _ConditionalContent<>.init(storage:)();
      sub_1000138BC(v85, v202, &qword_1001DBDF8);
      swift_storeEnumTagMultiPayload();
      sub_10013BA24();
      sub_10013BCA4();
      v86 = v211;
      _ConditionalContent<>.init(storage:)();
      sub_10001370C(v85, &qword_1001DBDF8);
      sub_1000138BC(v86, v212, &qword_1001DBDE8);
      swift_storeEnumTagMultiPayload();
      sub_10013B998();
      sub_10013BD90();
      v87 = v214;
      _ConditionalContent<>.init(storage:)();
      sub_10001370C(&v216, &qword_1001DBE20);
      sub_10001370C(v86, &qword_1001DBDE8);
      (*(v76 + 8))(v192, v193);
      v88 = sub_1000033A8(&qword_1001DBDD8);
      return (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
    }

    else
    {
      v89 = v1 + v8[46];
      v90 = *v89;
      v91 = *(v89 + 8);
      LOBYTE(v216) = v90;
      *(&v216 + 1) = v91;
      State.wrappedValue.getter();
      if (v215 == 1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v92 = String.init(localized:table:bundle:locale:comment:)();
        v94 = v93;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v95 = String.init(localized:table:bundle:locale:comment:)();
        v97 = v96;
        v98 = v45;
        v99 = v173;
        sub_10013DAC8(v98, v173, type metadata accessor for ContentView);
        v100 = (*(v172 + 80) + 16) & ~*(v172 + 80);
        v101 = swift_allocObject();
        sub_100136D64(v99, v101 + v100, type metadata accessor for ContentView);
        v215 = 0;
        State.init(wrappedValue:)();
        v102 = *(&v216 + 1);
        v103 = v167;
        *(v167 + 6) = v216;
        *(v103 + 56) = v102;
        v215 = 0;
        State.init(wrappedValue:)();
        v104 = *(&v216 + 1);
        *(v103 + 64) = v216;
        *(v103 + 72) = v104;
        LOBYTE(v215) = 0;
        State.init(wrappedValue:)();
        v105 = *(&v216 + 1);
        *(v103 + 80) = v216;
        *(v103 + 88) = v105;
        AccessibilityFocusState.init<>()();
        *v103 = v92;
        *(v103 + 8) = v94;
        *(v103 + 16) = v95;
        *(v103 + 24) = v97;
        *(v103 + 32) = sub_10013C224;
        *(v103 + 40) = v101;
        sub_10013DAC8(v103, v170, type metadata accessor for OnboardingOverlay);
        swift_storeEnumTagMultiPayload();
        sub_10013FB34(&qword_1001DBE40, type metadata accessor for OnboardingOverlay);
        sub_10013FB34(&qword_1001DBE48, &type metadata accessor for FeatureOnboardingOverlay);
        v106 = v171;
        _ConditionalContent<>.init(storage:)();
        sub_1000138BC(v106, v202, &qword_1001DBE38);
        swift_storeEnumTagMultiPayload();
        sub_10013BA24();
        sub_10013BCA4();
        v107 = v211;
        _ConditionalContent<>.init(storage:)();
        sub_10001370C(v106, &qword_1001DBE38);
        sub_1000138BC(v107, v212, &qword_1001DBDE8);
        swift_storeEnumTagMultiPayload();
        sub_10013B998();
        sub_10013BD90();
        v108 = v214;
        _ConditionalContent<>.init(storage:)();
        sub_10001370C(v107, &qword_1001DBDE8);
        sub_10013E658(v103, type metadata accessor for OnboardingOverlay);
        v109 = sub_1000033A8(&qword_1001DBDD8);
        return (*(*(v109 - 8) + 56))(v108, 0, 1, v109);
      }

      else
      {
        v110 = v1 + v8[45];
        v111 = *v110;
        v112 = *(v110 + 8);
        LOBYTE(v216) = v111;
        *(&v216 + 1) = v112;
        State.wrappedValue.getter();
        v113 = v214;
        v114 = v212;
        v115 = v211;
        if (v215 == 1)
        {
          (*(v161 + 104))(v163, enum case for FeatureOnboardingOverlayExperience.askAcme(_:), v162);
          v116 = v173;
          sub_10013DAC8(v1, v173, type metadata accessor for ContentView);
          v117 = (*(v172 + 80) + 16) & ~*(v172 + 80);
          v118 = swift_allocObject();
          sub_100136D64(v116, v118 + v117, type metadata accessor for ContentView);
          v119 = v166;
          sub_10013DAC8(v1, v166, type metadata accessor for ContentView);
          v120 = swift_allocObject();
          sub_100136D64(v119, v120 + v117, type metadata accessor for ContentView);
          v121 = v164;
          FeatureOnboardingOverlay.init(experience:fullScreenRequested:continueAction:cancellationAction:)();
          v122 = v165;
          v123 = v175;
          (*(v165 + 16))(v170, v121, v175);
          swift_storeEnumTagMultiPayload();
          sub_10013FB34(&qword_1001DBE40, type metadata accessor for OnboardingOverlay);
          sub_10013FB34(&qword_1001DBE48, &type metadata accessor for FeatureOnboardingOverlay);
          v124 = v171;
          _ConditionalContent<>.init(storage:)();
          sub_1000138BC(v124, v202, &qword_1001DBE38);
          swift_storeEnumTagMultiPayload();
          sub_10013BA24();
          sub_10013BCA4();
          _ConditionalContent<>.init(storage:)();
          sub_10001370C(v124, &qword_1001DBE38);
          sub_1000138BC(v115, v212, &qword_1001DBDE8);
          swift_storeEnumTagMultiPayload();
          sub_10013B998();
          sub_10013BD90();
          v125 = v214;
          _ConditionalContent<>.init(storage:)();
          sub_10001370C(v115, &qword_1001DBDE8);
          (*(v122 + 8))(v121, v123);
          v126 = sub_1000033A8(&qword_1001DBDD8);
          return (*(*(v126 - 8) + 56))(v125, 0, 1, v126);
        }

        else
        {
          v127 = v1 + v8[44];
          v128 = *v127;
          v129 = *(v127 + 8);
          LOBYTE(v216) = v128;
          *(&v216 + 1) = v129;
          State.wrappedValue.getter();
          if (v215 == 1)
          {
            (*(v161 + 104))(v163, enum case for FeatureOnboardingOverlayExperience.imageSearch(_:), v162);
            v130 = v173;
            sub_10013DAC8(v1, v173, type metadata accessor for ContentView);
            v131 = v114;
            v132 = (*(v172 + 80) + 16) & ~*(v172 + 80);
            v133 = swift_allocObject();
            sub_100136D64(v130, v133 + v132, type metadata accessor for ContentView);
            v134 = v166;
            sub_10013DAC8(v1, v166, type metadata accessor for ContentView);
            v135 = swift_allocObject();
            sub_100136D64(v134, v135 + v132, type metadata accessor for ContentView);
            default argument 1 of FeatureOnboardingOverlay.init(experience:fullScreenRequested:continueAction:cancellationAction:)();
            v136 = v164;
            FeatureOnboardingOverlay.init(experience:fullScreenRequested:continueAction:cancellationAction:)();
            v137 = v165;
            v138 = v175;
            (*(v165 + 16))(v159, v136, v175);
            swift_storeEnumTagMultiPayload();
            sub_10013FB34(&qword_1001DBE48, &type metadata accessor for FeatureOnboardingOverlay);
            sub_10013BE4C();
            v139 = v160;
            _ConditionalContent<>.init(storage:)();
            sub_1000138BC(v139, v131, &qword_1001DBE58);
            swift_storeEnumTagMultiPayload();
            sub_10013B998();
            sub_10013BD90();
            v140 = v214;
            _ConditionalContent<>.init(storage:)();
            sub_10001370C(v139, &qword_1001DBE58);
            (*(v137 + 8))(v136, v138);
            v141 = sub_1000033A8(&qword_1001DBDD8);
            return (*(*(v141 - 8) + 56))(v140, 0, 1, v141);
          }

          else
          {
            v142 = v1 + v8[48];
            v143 = *v142;
            v144 = *(v142 + 8);
            LOBYTE(v216) = v143;
            *(&v216 + 1) = v144;
            State.wrappedValue.getter();
            if (v215 == 1)
            {
              v145 = v173;
              sub_10013DAC8(v1, v173, type metadata accessor for ContentView);
              v146 = (*(v172 + 80) + 16) & ~*(v172 + 80);
              v147 = swift_allocObject();
              sub_100136D64(v145, v147 + v146, type metadata accessor for ContentView);
              v148 = v166;
              sub_10013DAC8(v1, v166, type metadata accessor for ContentView);
              v149 = swift_allocObject();
              sub_100136D64(v148, v149 + v146, type metadata accessor for ContentView);
              v215 = 0;
              State.init(wrappedValue:)();
              v150 = v216;
              v215 = 0;
              State.init(wrappedValue:)();
              v151 = v216;
              v152 = v159;
              *v159 = sub_10013C130;
              v152[1] = v147;
              v152[2] = sub_10013C148;
              v152[3] = v149;
              *(v152 + 2) = v150;
              *(v152 + 3) = v151;
              swift_storeEnumTagMultiPayload();
              sub_10013FB34(&qword_1001DBE48, &type metadata accessor for FeatureOnboardingOverlay);
              sub_10013BE4C();

              v153 = v160;
              _ConditionalContent<>.init(storage:)();
              sub_1000138BC(v153, v212, &qword_1001DBE58);
              swift_storeEnumTagMultiPayload();
              sub_10013B998();
              sub_10013BD90();
              _ConditionalContent<>.init(storage:)();

              sub_10001370C(v153, &qword_1001DBE58);
              v154 = sub_1000033A8(&qword_1001DBDD8);
              return (*(*(v154 - 8) + 56))(v113, 0, 1, v154);
            }

            else
            {
              v155 = sub_1000033A8(&qword_1001DBDD8);
              return (*(*(v155 - 8) + 56))(v113, 1, 1, v155);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001039C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000033A8(&qword_1001DBE68);
  v205 = *(v3 - 8);
  __chkstk_darwin(v3);
  v204 = &v156 - v4;
  v201 = sub_1000033A8(&qword_1001DBE70);
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v186 = (&v156 - v5);
  v6 = sub_1000033A8(&qword_1001DBE78);
  v7 = __chkstk_darwin(v6 - 8);
  v203 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v156 - v9;
  v197 = sub_1000033A8(&qword_1001D4D58);
  v11 = __chkstk_darwin(v197);
  v196 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v195 = &v156 - v13;
  v194 = type metadata accessor for ToastView(0);
  v14 = __chkstk_darwin(v194);
  v202 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v199 = (&v156 - v16);
  v179 = type metadata accessor for BundleTextDetailView();
  v178 = *(v179 - 8);
  v17 = __chkstk_darwin(v179);
  v177 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v175 = &v156 - v19;
  v184 = sub_1000033A8(&qword_1001DBB38);
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v176 = (&v156 - v20);
  v21 = sub_1000033A8(&qword_1001D4530);
  __chkstk_darwin(v21 - 8);
  v180 = &v156 - v22;
  v188 = type metadata accessor for CVBundle();
  v187 = *(v188 - 8);
  v23 = __chkstk_darwin(v188);
  v174 = &v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v181 = &v156 - v25;
  v192 = sub_1000033A8(&qword_1001DBB40);
  v26 = *(v192 - 8);
  __chkstk_darwin(v192);
  v182 = &v156 - v27;
  v28 = type metadata accessor for AppConfiguration();
  __chkstk_darwin(v28 - 8);
  v30 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000033A8(&qword_1001DBE80);
  v32 = __chkstk_darwin(v31 - 8);
  v198 = &v156 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v206 = &v156 - v34;
  v35 = type metadata accessor for OpacityTransition();
  v171 = *(v35 - 8);
  __chkstk_darwin(v35);
  v168 = &v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1000033A8(&qword_1001DBE88);
  v172 = *(v173 - 8);
  v37 = __chkstk_darwin(v173);
  v169 = &v156 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v170 = &v156 - v39;
  v40 = sub_1000033A8(&qword_1001DBE90);
  __chkstk_darwin(v40);
  v42 = (&v156 - v41);
  v43 = sub_1000033A8(&qword_1001DBE98);
  __chkstk_darwin(v43);
  v167 = &v156 - v44;
  v165 = sub_1000033A8(&qword_1001DBEA0);
  __chkstk_darwin(v165);
  v163 = &v156 - v45;
  v166 = sub_1000033A8(&qword_1001DBEA8);
  __chkstk_darwin(v166);
  v164 = &v156 - v46;
  v190 = sub_1000033A8(&qword_1001DBEB0);
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v162 = &v156 - v47;
  v48 = sub_1000033A8(&qword_1001DBEB8);
  v49 = __chkstk_darwin(v48 - 8);
  v193 = &v156 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v207 = &v156 - v51;
  if (static SystemVariantSupport.isInternalBuild.getter())
  {
    v156 = v35;
    v158 = v30;
    v159 = v10;
    v161 = a1;
    v52 = v1;
    v53 = type metadata accessor for ContentView();
    v54 = v1 + *(v53 + 116);
    v55 = *v54;
    v56 = *(v54 + 8);
    LOBYTE(v210) = v55;
    *(&v210 + 1) = v56;
    sub_1000033A8(&qword_1001D3E88);
    State.wrappedValue.getter();
    v185 = v1;
    v191 = v53;
    v160 = v3;
    if (v209 != 1)
    {
      v86 = 1;
      v87 = &qword_1001DC000;
LABEL_13:
      v88 = 1;
      (*(v189 + 56))(v207, v86, 1, v190);
      v89 = v191;
      sub_1000033A8(&qword_1001DB7A0);
      v90 = v158;
      State.wrappedValue.getter();
      v91 = AnnotationViewConfiguration.showText.getter();
      sub_10013E658(v90, type metadata accessor for AppConfiguration);
      v92 = v199;
      v93 = v206;
      v94 = v194;
      if (v91)
      {
        v95 = (v52 + *(v89 + 52));
        v97 = *v95;
        v96 = v95[1];
        *&v209 = v97;
        *(&v209 + 1) = v96;
        sub_1000033A8(&qword_1001DB780);
        State.wrappedValue.getter();
        v98 = sub_100149908();

        __chkstk_darwin(v99);
        v100 = v180;
        sub_100071B7C(sub_100143968, v98, v180);

        v101 = v187;
        v102 = v188;
        if ((*(v187 + 48))(v100, 1, v188) == 1)
        {
          sub_10001370C(v100, &qword_1001D4530);
          v103 = v182;
          (*(v183 + 56))(v182, 1, 1, v184);
        }

        else
        {
          v104 = v181;
          (*(v101 + 32))(v181, v100, v102);
          v105 = static HorizontalAlignment.center.getter();
          v157 = v26;
          v106 = v176;
          *v176 = v105;
          v106[1] = 0;
          *(v106 + 16) = 1;
          v107 = sub_1000033A8(&qword_1001DBB50);
          v108 = v102;
          v109 = v106 + *(v107 + 44);
          (*(v101 + 16))(v174, v104, v108);
          default argument 1 of BundleTextDetailView.init(bundle:renderOnly:)();
          v110 = v175;
          BundleTextDetailView.init(bundle:renderOnly:)();
          LOBYTE(v209) = 1;
          v111 = v178;
          v112 = *(v178 + 16);
          v113 = v177;
          v114 = v179;
          v112(v177, v110, v179);
          v115 = v209;
          *v109 = 0;
          v109[8] = v115;
          v116 = sub_1000033A8(&qword_1001DBB58);
          v112(&v109[*(v116 + 48)], v113, v114);
          v117 = *(v111 + 8);
          v118 = v110;
          v87 = &qword_1001DC000;
          v117(v118, v114);
          v117(v113, v114);
          v93 = v206;
          LOBYTE(v117) = static Edge.Set.bottom.getter();
          EdgeInsets.init(_all:)();
          v119 = v184;
          v120 = v106 + *(v184 + 36);
          *v120 = v117;
          *(v120 + 1) = v121;
          *(v120 + 2) = v122;
          *(v120 + 3) = v123;
          *(v120 + 4) = v124;
          v120[40] = 0;
          v125 = v106;
          v26 = v157;
          v103 = v182;
          sub_10002091C(v125, v182, &qword_1001DBB38);
          (*(v183 + 56))(v103, 0, 1, v119);
          (*(v187 + 8))(v181, v188);
        }

        sub_10002091C(v103, v93, &qword_1001DBB40);
        v88 = 0;
      }

      (*(v26 + 56))(v93, v88, 1, v192);
      *v92 = swift_getKeyPath();
      sub_1000033A8(&qword_1001D4DC0);
      swift_storeEnumTagMultiPayload();
      v126 = *(v94 + 20);
      if (qword_1001D3190 != -1)
      {
        swift_once();
      }

      *(v92 + v126) = qword_1001EB560;
      v127 = type metadata accessor for Toast(0);
      v128 = v195;
      (*(*(v127 - 8) + 56))(v195, 1, 1, v127);
      sub_1000138BC(v128, v196, &qword_1001D4D58);

      State.init(wrappedValue:)();
      sub_10001370C(v128, &qword_1001D4D58);
      v129 = *(v94 + 28);
      v208 = 0;
      sub_1000033A8(&unk_1001D4D68);
      State.init(wrappedValue:)();
      *(v92 + v129) = v209;
      v130 = (v185 + *(v191 + 52));
      v132 = *v130;
      v131 = v130[1];
      *&v209 = v132;
      *(&v209 + 1) = v131;
      sub_1000033A8(&qword_1001DB780);
      State.wrappedValue.getter();
      v133 = v208;
      swift_getKeyPath();
      *&v209 = v133;
      sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v134 = v133 + v87[239];
      v135 = *v134;
      v136 = *(v134 + 8);
      v137 = *(v134 + 16);
      sub_100060424(*v134, v136, *(v134 + 16));

      if (v137 == 2)
      {
        KeyPath = swift_getKeyPath();
        v139 = v186;
        *v186 = KeyPath;
        swift_storeEnumTagMultiPayload();
        v140 = (v139 + *(type metadata accessor for CameraErrorView() + 20));
        *v140 = v135;
        v140[1] = v136;
        v141 = static Edge.Set.all.getter();
        v142 = v201;
        v143 = v139 + *(v201 + 36);
        *v143 = v141;
        *(v143 + 8) = 0u;
        *(v143 + 24) = 0u;
        *(v143 + 40) = 1;
        v144 = v159;
        sub_10002091C(v139, v159, &qword_1001DBE70);
        v145 = 0;
      }

      else
      {
        sub_1000616E4(v135, v136, v137);
        v145 = 1;
        v142 = v201;
        v144 = v159;
      }

      (*(v200 + 56))(v144, v145, 1, v142);
      v146 = v193;
      sub_1000138BC(v207, v193, &qword_1001DBEB8);
      v147 = v206;
      v148 = v198;
      sub_1000138BC(v206, v198, &qword_1001DBE80);
      v149 = v144;
      v150 = v92;
      v151 = v202;
      sub_10013DAC8(v92, v202, type metadata accessor for ToastView);
      v152 = v203;
      sub_1000138BC(v149, v203, &qword_1001DBE78);
      v153 = v204;
      sub_1000138BC(v146, v204, &qword_1001DBEB8);
      v154 = sub_1000033A8(&qword_1001DBEC0);
      sub_1000138BC(v148, v153 + v154[12], &qword_1001DBE80);
      sub_10013DAC8(v151, v153 + v154[16], type metadata accessor for ToastView);
      sub_1000138BC(v152, v153 + v154[20], &qword_1001DBE78);
      sub_10001370C(v149, &qword_1001DBE78);
      sub_10013E658(v150, type metadata accessor for ToastView);
      sub_10001370C(v147, &qword_1001DBE80);
      sub_10001370C(v207, &qword_1001DBEB8);
      sub_10001370C(v152, &qword_1001DBE78);
      sub_10013E658(v151, type metadata accessor for ToastView);
      sub_10001370C(v148, &qword_1001DBE80);
      sub_10001370C(v146, &qword_1001DBEB8);
      v155 = v161;
      sub_10002091C(v153, v161, &qword_1001DBE68);
      return (*(v205 + 56))(v155, 0, 1, v160);
    }

    v157 = v26;
    v57 = (v1 + *(v53 + 52));
    v59 = *v57;
    v58 = v57[1];
    *&v210 = v59;
    *(&v210 + 1) = v58;
    sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    v60 = v209;
    swift_getKeyPath();
    *&v210 = v60;
    sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v62 = *(v60 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
    v61 = *(v60 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
    v63 = *(v60 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
    sub_100060424(v62, v61, *(v60 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

    if (v63 == 1)
    {
      v86 = 1;
      if (v62)
      {
        *v42 = static Alignment.center.getter();
        v42[1] = v64;
        v65 = sub_1000033A8(&qword_1001DBEC8);
        v52 = v185;
        sub_10010EE0C(v185, v42 + *(v65 + 44));
        v66 = static SafeAreaRegions.all.getter();
        v67 = static Edge.Set.all.getter();
        v68 = v42 + *(v40 + 36);
        *v68 = v66;
        v68[8] = v67;
        static Alignment.topTrailing.getter();
        _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
        v69 = v167;
        sub_10002091C(v42, v167, &qword_1001DBE90);
        v70 = (v69 + *(v43 + 36));
        v71 = v215;
        v70[4] = v214;
        v70[5] = v71;
        v70[6] = v216;
        v72 = v211;
        *v70 = v210;
        v70[1] = v72;
        v73 = v213;
        v70[2] = v212;
        v70[3] = v73;
        v74 = v168;
        OpacityTransition.init()();
        static Animation.linear.getter();
        v75 = sub_10013FB34(&qword_1001D4E70, &type metadata accessor for OpacityTransition);
        v76 = v170;
        v77 = v156;
        Transition.animation(_:)();

        (*(v171 + 8))(v74, v77);
        v78 = v172;
        v79 = v173;
        (*(v172 + 16))(v169, v76, v173);
        *&v209 = v77;
        *(&v209 + 1) = v75;
        swift_getOpaqueTypeConformance2();
        v80 = AnyTransition.init<A>(_:)();
        (*(v78 + 8))(v76, v79);
        v81 = v163;
        sub_10002091C(v69, v163, &qword_1001DBE98);
        *(v81 + *(v165 + 36)) = v80;
        v82 = v164;
        sub_10002091C(v81, v164, &qword_1001DBEA0);
        *(v82 + *(v166 + 36)) = 0;
        sub_10013BEA8();
        v83 = v162;
        View.accessibilityIdentifier(_:)();
        sub_10001370C(v82, &qword_1001DBEA8);
        sub_10002091C(v83, v207, &qword_1001DBEB0);
        v86 = 0;
LABEL_12:
        v26 = v157;
        v87 = &qword_1001DC000;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1000616E4(v62, v61, v63);
      v86 = 1;
    }

    v52 = v185;
    goto LABEL_12;
  }

  v84 = *(v205 + 56);

  return v84(a1, 1, 1, v3);
}

uint64_t sub_10010525C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  type metadata accessor for MainActor();
  *(v3 + 48) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001052F4, v5, v4);
}

uint64_t sub_1001052F4()
{
  v1 = v0[5];

  v2 = (v1 + *(type metadata accessor for ContentView() + 52));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v5 = v0[4];
  swift_getKeyPath();
  v0[2] = v5;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  if (v6 != 1)
  {
    if (v6 != 3 || (!*(v5 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8) ? (v7 = *(v5 + OBJC_IVAR____TtC6Tamale16CameraController__runState) == 2) : (v7 = 0), !v7))
    {
      sub_10014FC70();
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100105448(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001DBC18);
  __chkstk_darwin(v2);
  v4 = &v12 - v3;
  sub_10010D774(&v12 - v3);
  v5 = static SafeAreaRegions.all.getter();
  v6 = static Edge.Set.all.getter();
  v7 = &v4[*(v2 + 36)];
  *v7 = v5;
  v7[8] = v6;
  v8 = type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  v9 = *(a1 + *(v8 + 292));
  sub_10013A950();
  v10 = v9;
  return SalientBackgroundViewRepresentable.init(contentView:saliencyModel:sheetAssistant:)();
}

uint64_t sub_100105564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContentView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_1001056D8();
  sub_10013DAC8(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_100136D64(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ContentView);
  VIUITapToRadarButton.init(displayedActions:width:onAction:)();
  v9 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  result = sub_1000033A8(&qword_1001DBC00);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  return result;
}

uint64_t sub_1001056D8()
{
  v1 = sub_1000033A8(&qword_1001D8020);
  v2 = __chkstk_darwin(v1 - 8);
  v60 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v62 = &v58 - v5;
  v6 = __chkstk_darwin(v4);
  v61 = &v58 - v7;
  __chkstk_darwin(v6);
  v9 = &v58 - v8;
  v10 = type metadata accessor for CameraControllerConfiguration(0);
  v11 = __chkstk_darwin(v10);
  v59 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v58 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v58 - v17;
  __chkstk_darwin(v16);
  v20 = &v58 - v19;
  v21 = (v0 + *(type metadata accessor for ContentView() + 52));
  v22 = *v21;
  v66 = v21[1];
  v67 = v22;
  v73 = v22;
  v74 = v66;
  v65 = sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v23 = v71;
  swift_getKeyPath();
  v73 = v23;
  v64 = sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
  swift_beginAccess();
  sub_10013DAC8(v23 + v24, v20, type metadata accessor for CameraControllerConfiguration);
  v25 = v10;

  sub_1000138BC(&v20[*(v10 + 68)], v9, &qword_1001D8020);
  sub_10013E658(v20, type metadata accessor for CameraControllerConfiguration);
  v26 = type metadata accessor for URL();
  v27 = *(*(v26 - 8) + 48);
  v63 = v26;
  LODWORD(v24) = v27(v9, 1);
  sub_10001370C(v9, &qword_1001D8020);
  if (v24 == 1 && (v71 = v67, v72 = v66, State.wrappedValue.getter(), v28 = v68, swift_getKeyPath(), v71 = v28, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v29 = OBJC_IVAR____TtC6Tamale16CameraController__configuration, swift_beginAccess(), sub_10013DAC8(v28 + v29, v18, type metadata accessor for CameraControllerConfiguration), , v30 = v61, sub_1000138BC(&v18[*(v25 + 84)], v61, &qword_1001D8020), sub_10013E658(v18, type metadata accessor for CameraControllerConfiguration), v31 = (v27)(v30, 1, v63), sub_10001370C(v30, &qword_1001D8020), v31 != 1))
  {
    sub_1000033A8(&qword_1001DBC10);
    v51 = type metadata accessor for VITapToRadarInvocation.ActionType();
    v52 = *(v51 - 8);
    v53 = *(v52 + 72);
    v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100170800;
    v55 = v45 + v54;
    v56 = *(v52 + 104);
    v56(v55, enum case for VITapToRadarInvocation.ActionType.sysdiagnose(_:), v51);
    v56(v55 + v53, enum case for VITapToRadarInvocation.ActionType.attachVideo(_:), v51);
  }

  else
  {
    v71 = v67;
    v72 = v66;
    State.wrappedValue.getter();
    v32 = v68;
    swift_getKeyPath();
    v71 = v32;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
    swift_beginAccess();
    sub_10013DAC8(v32 + v33, v15, type metadata accessor for CameraControllerConfiguration);

    v34 = v62;
    sub_1000138BC(&v15[*(v25 + 68)], v62, &qword_1001D8020);
    sub_10013E658(v15, type metadata accessor for CameraControllerConfiguration);
    v35 = (v27)(v34, 1, v63);
    sub_10001370C(v34, &qword_1001D8020);
    if (v35 == 1 && (v68 = v67, v69 = v66, State.wrappedValue.getter(), v36 = v70, swift_getKeyPath(), v68 = v36, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v37 = OBJC_IVAR____TtC6Tamale16CameraController__configuration, swift_beginAccess(), v38 = v59, sub_10013DAC8(v36 + v37, v59, type metadata accessor for CameraControllerConfiguration), , v39 = v38 + *(v25 + 84), v40 = v60, sub_1000138BC(v39, v60, &qword_1001D8020), sub_10013E658(v38, type metadata accessor for CameraControllerConfiguration), LODWORD(v38) = (v27)(v40, 1, v63), sub_10001370C(v40, &qword_1001D8020), v38 == 1))
    {
      sub_1000033A8(&qword_1001DBC10);
      v41 = type metadata accessor for VITapToRadarInvocation.ActionType();
      v42 = *(v41 - 8);
      v43 = *(v42 + 72);
      v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_100178490;
      v46 = v45 + v44;
      v47 = *(v42 + 104);
      v47(v46, enum case for VITapToRadarInvocation.ActionType.sysdiagnose(_:), v41);
      v47(v46 + v43, enum case for VITapToRadarInvocation.ActionType.recordVideo(_:), v41);
      v47(v46 + 2 * v43, enum case for VITapToRadarInvocation.ActionType.dataCollection(_:), v41);
    }

    else
    {
      sub_1000033A8(&qword_1001DBC10);
      v48 = type metadata accessor for VITapToRadarInvocation.ActionType();
      v49 = *(v48 - 8);
      v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_100171DA0;
      (*(v49 + 104))(v45 + v50, enum case for VITapToRadarInvocation.ActionType.sysdiagnose(_:), v48);
    }
  }

  return v45;
}

uint64_t sub_100106004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VITapToRadarInvocation.ActionType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  sub_10013DAC8(a2, v7, type metadata accessor for ContentView);
  type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = (v10 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = &protocol witness table for MainActor;
  (*(v9 + 32))(v18 + v16, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_100136D64(v7, v18 + v17, type metadata accessor for ContentView);
  sub_1000154EC(0, 0, v13, &unk_10017BDA8, v18);
}

uint64_t sub_1001062C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1000033A8(&qword_1001D4D58);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for Toast(0);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for ContentView();
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  sub_1000033A8(&qword_1001D41B0);
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for VITapToRadarInvocation.ActionType();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v5[22] = v10;
  *v10 = v5;
  v10[1] = sub_100106540;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5 + 24, 0, 0, 0xD000000000000017, 0x800000010016C1A0, sub_100019D38, 0, &type metadata for Bool);
}

uint64_t sub_100106540()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100106AEC;
  }

  else
  {
    v2 = sub_100106654;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100106654()
{
  *(v0 + 195) = *(v0 + 192);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001066D4, v2, v1);
}

uint64_t sub_1001066D4()
{
  if ((*(v0 + 195) & 1) == 0)
  {

    if (qword_1001D3190 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v6 = *(v0 + 72);
    UUID.init()();
    v7 = (v5 + *(v6 + 20));
    *v7 = 0xD00000000000002BLL;
    v7[1] = 0x800000010016ED70;
    *(v5 + *(v6 + 24)) = 0x3FF0000000000000;
    if (("ble in iOS 26.0" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v8 = *(v0 + 80);
      v10 = *(v0 + 64);
      v9 = *(v0 + 72);
      sub_10013DAC8(*(v0 + 88), v10, type metadata accessor for Toast);
      (*(v8 + 56))(v10, 0, 1, v9);
      sub_10002AFFC(v10);
    }

    sub_10013E658(*(v0 + 88), type metadata accessor for Toast);
    goto LABEL_9;
  }

  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  (*(v2 + 16))(v1, *(v0 + 48), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for VITapToRadarInvocation.ActionType.attachScreenshot(_:))
  {

LABEL_9:

    v11 = *(v0 + 8);

    return v11();
  }

  if (v4 == enum case for VITapToRadarInvocation.ActionType.attachVideo(_:))
  {
    v13 = *(v0 + 96);
    v14 = *(v0 + 56);

    v15 = (v14 + *(v13 + 204));
    v16 = *v15;
    v17 = *(v15 + 1);
    *(v0 + 16) = v16;
    *(v0 + 24) = v17;
    *(v0 + 193) = 1;
    sub_1000033A8(&qword_1001D3E88);
    State.wrappedValue.setter();
    v18 = (v14 + *(v13 + 208));
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v0 + 32) = v19;
    *(v0 + 40) = v20;
    *(v0 + 194) = 0;
    State.wrappedValue.setter();
    goto LABEL_9;
  }

  if (v4 == enum case for VITapToRadarInvocation.ActionType.dataCollection(_:) || v4 == enum case for VITapToRadarInvocation.ActionType.recordVideo(_:))
  {

    sub_100107B80();
    goto LABEL_9;
  }

  if (v4 == enum case for VITapToRadarInvocation.ActionType.sysdiagnose(_:))
  {
    v23 = *(v0 + 120);
    v22 = *(v0 + 128);
    v24 = *(v0 + 104);
    v25 = *(v0 + 56);

    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
    sub_10013DAC8(v25, v23, type metadata accessor for ContentView);
    v27 = static MainActor.shared.getter();
    v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = &protocol witness table for MainActor;
    sub_100136D64(v23, v29 + v28, type metadata accessor for ContentView);
    sub_1000154EC(0, 0, v22, &unk_10017BDB8, v29);

    goto LABEL_9;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_100106AEC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100106B70, v1, v0);
}

uint64_t sub_100106B70()
{

  if (qword_1001D3190 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[9];
  UUID.init()();
  v3 = (v1 + *(v2 + 20));
  *v3 = 0xD00000000000002BLL;
  v3[1] = 0x800000010016ED70;
  *(v1 + *(v2 + 24)) = 0x3FF0000000000000;
  if (("ble in iOS 26.0" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v4 = v0[10];
    v6 = v0[8];
    v5 = v0[9];
    sub_10013DAC8(v0[11], v6, type metadata accessor for Toast);
    (*(v4 + 56))(v6, 0, 1, v5);
    sub_10002AFFC(v6);
  }

  sub_10013E658(v0[11], type metadata accessor for Toast);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100106D08()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100106DB4;

  return sub_100106EF0();
}

uint64_t sub_100106DB4()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001439E4, v1, v0);
}

uint64_t sub_100106EF0()
{
  v1[19] = v0;
  v2 = type metadata accessor for Logger();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  sub_1000033A8(&qword_1001D4D58);
  v1[23] = swift_task_alloc();
  v3 = type metadata accessor for Toast(0);
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = type metadata accessor for MainActor();
  v1[28] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[29] = v5;
  v1[30] = v4;

  return _swift_task_switch(sub_10010707C, v5, v4);
}

uint64_t sub_10010707C()
{
  v1 = v0[19];
  v2 = (v1 + *(type metadata accessor for ContentView() + 52));
  v4 = *v2;
  v3 = v2[1];
  v0[15] = v4;
  v0[16] = v3;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v0[31] = v0[17];
  v0[32] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_100107178;

  return sub_10015134C((v0 + 7), 0x7FFFFFFFFFFFFFFFLL);
}

uint64_t sub_100107178()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_100107594;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_1001072FC;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_1001072FC()
{

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return _swift_task_switch(sub_100107368, v1, v2);
}

uint64_t sub_100107368()
{
  sub_10002AAA4((v0 + 56), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_10010740C;

  return sub_1001226C4(v0 + 16);
}

uint64_t sub_10010740C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v6 = v4[29];
    v7 = v4[30];

    return _swift_task_switch(sub_100107970, v6, v7);
  }

  else
  {
    v4[36] = a1;
    v8 = swift_task_alloc();
    v4[37] = v8;
    *v8 = v5;
    v8[1] = sub_1001077A8;

    return sub_10012F570(a1, 0);
  }
}

uint64_t sub_100107594()
{

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return _swift_task_switch(sub_100107600, v1, v2);
}

uint64_t sub_100107600()
{

  *(v0 + 56) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  sub_10001370C(v0 + 56, &qword_1001D3948);
  if (qword_1001D3190 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  UUID.init()();
  v3 = (v1 + *(v2 + 20));
  *v3 = 0xD000000000000058;
  v3[1] = 0x800000010016EDA0;
  *(v1 + *(v2 + 24)) = 0x4014000000000000;
  if ((" Radar from the Lock Screen" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v4 = *(v0 + 200);
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    sub_10013DAC8(*(v0 + 208), v6, type metadata accessor for Toast);
    (*(v4 + 56))(v6, 0, 1, v5);
    sub_10002AFFC(v6);
  }

  sub_10013E658(*(v0 + 208), type metadata accessor for Toast);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001077A8()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1001078EC, v3, v2);
}

uint64_t sub_1001078EC()
{

  sub_100006B44(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100107970()
{
  v17 = v0;
  static Log.tapToRadar.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1000E0FE0(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Radar will not have frame attachments, due to encountered error: %s", v6, 0xCu);
    sub_100006B44(v7);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v12 = v0[21];
    v11 = v0[22];
    v13 = v0[20];

    (*(v12 + 8))(v11, v13);
  }

  v0[36] = _swiftEmptyArrayStorage;
  v14 = swift_task_alloc();
  v0[37] = v14;
  *v14 = v0;
  v14[1] = sub_1001077A8;

  return sub_10012F570(_swiftEmptyArrayStorage, 0);
}

uint64_t sub_100107B80()
{
  v1 = type metadata accessor for VITapToRadarInvocation.ActionType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContentView();
  v6 = (v0 + v5[50]);
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v18) = v7;
  v19 = v8;
  v9 = 1;
  LOBYTE(v17[0]) = 1;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  v10 = (v0 + v5[51]);
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v18) = v11;
  v19 = v12;
  LOBYTE(v17[0]) = 1;
  State.wrappedValue.setter();
  (*(v2 + 104))(v4, enum case for VITapToRadarInvocation.ActionType.dataCollection(_:), v1);
  sub_10013FB34(&qword_1001DBC08, &type metadata accessor for VITapToRadarInvocation.ActionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v18 != v17[0] || v19 != v17[1])
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v2 + 8))(v4, v1);

  v13 = (v0 + v5[52]);
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v18) = v14;
  v19 = v15;
  LOBYTE(v17[0]) = v9 & 1;
  return State.wrappedValue.setter();
}

uint64_t sub_100107DCC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Launch-related: Tamale onAppear", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return sub_100107F14();
}

uint64_t sub_100107F14()
{
  v1 = v0;
  v2 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v2 - 8);
  v74 = &v60 - v3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v70 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchTime();
  v67 = *(v75 - 8);
  v7 = __chkstk_darwin(v75);
  v65 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v66 = (&v60 - v9);
  v10 = type metadata accessor for ContentView();
  v64 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v76 = v12;
  v77 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v60 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  static Log.ui.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Launch-related: Bringing Tamale contents to foreground", v24, 2u);
  }

  v27 = *(v16 + 8);
  v26 = (v16 + 8);
  v25 = v27;
  v27(v21, v15);
  sub_100124A6C();
  v28 = v1 + *(v10 + 140);
  v29 = *v28;
  v30 = *(v28 + 8);
  LOBYTE(aBlock) = v29;
  v80 = v30;
  LOBYTE(v78) = 1;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  static Log.ui.getter();
  sub_10013DAC8(v1, v14, type metadata accessor for ContentView);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v62 = v26;
    v34 = v33;
    v35 = swift_slowAlloc();
    v61 = v25;
    v36 = v35;
    aBlock = v35;
    *v34 = 136315138;
    sub_1000033A8(&qword_1001DB778);
    Bindable.wrappedValue.getter();
    v37 = NewSaliencyModel.shouldShowAskAcmeUI.getter();
    v60 = v15;
    v38 = v1;
    v39 = v37;

    if (v39)
    {
      v40 = 1702195828;
    }

    else
    {
      v40 = 0x65736C6166;
    }

    if (v39)
    {
      v41 = 0xE400000000000000;
    }

    else
    {
      v41 = 0xE500000000000000;
    }

    sub_10013E658(v14, type metadata accessor for ContentView);
    v42 = sub_1000E0FE0(v40, v41, &aBlock);
    v1 = v38;

    *(v34 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "Setting shouldShowAskAcmeUI for saliency model to: %s", v34, 0xCu);
    sub_100006B44(v36);

    v61(v19, v60);
  }

  else
  {

    sub_10013E658(v14, type metadata accessor for ContentView);
    v25(v19, v15);
  }

  v63 = v1;
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  type metadata accessor for AskAcmeRequirementManager();
  static AskAcmeRequirementManager.shouldShowAskAcmeUI.getter();
  NewSaliencyModel.shouldShowAskAcmeUI.setter();

  sub_10005BBC4(0, &qword_1001D6B40);
  v61 = static OS_dispatch_queue.main.getter();
  v43 = v65;
  static DispatchTime.now()();
  v44 = v66;
  + infix(_:_:)();
  v62 = *(v67 + 1);
  v62(v43, v75);
  v65 = type metadata accessor for ContentView;
  v45 = v1;
  v46 = v77;
  sub_10013DAC8(v45, v77, type metadata accessor for ContentView);
  v47 = *(v64 + 80);
  v48 = swift_allocObject();
  v67 = type metadata accessor for ContentView;
  sub_100136D64(v46, v48 + ((v47 + 16) & ~v47), type metadata accessor for ContentView);
  v83 = sub_1001399F4;
  v84 = v48;
  aBlock = _NSConcreteStackBlock;
  v80 = 1107296256;
  v81 = sub_1000B5F04;
  v82 = &unk_1001C5F48;
  v49 = _Block_copy(&aBlock);
  v50 = v68;
  static DispatchQoS.unspecified.getter();
  v78 = _swiftEmptyArrayStorage;
  sub_10013FB34(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  v51 = v70;
  v52 = v73;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v53 = v61;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v49);

  (*(v72 + 8))(v51, v52);
  (*(v69 + 8))(v50, v71);
  v62(v44, v75);

  v54 = type metadata accessor for TaskPriority();
  v55 = v74;
  (*(*(v54 - 8) + 56))(v74, 1, 1, v54);
  v56 = v77;
  sub_10013DAC8(v63, v77, v65);
  type metadata accessor for MainActor();
  v57 = static MainActor.shared.getter();
  v58 = swift_allocObject();
  *(v58 + 16) = v57;
  *(v58 + 24) = &protocol witness table for MainActor;
  sub_100136D64(v56, v58 + ((v47 + 32) & ~v47), v67);
  sub_1000154EC(0, 0, v55, &unk_10017BD58, v58);

  return sub_100109318();
}

uint64_t sub_10010890C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Launch-related: Tamale onDisappear", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100108A40(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001D3E88);
  result = State.wrappedValue.getter();
  if (v31 == 1 && v1 != 0)
  {

    sub_1000033A8(&qword_1001DBBE8);
    State.wrappedValue.getter();
    Hasher.init(_seed:)();
    Hasher._combine(_:)(7uLL);
    v4 = Hasher._finalize()();
    v5 = -1 << *(v32 + 32);
    v6 = v4 & ~v5;
    if ((*(v32 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = *(v32 + 48) + 40 * v6;
        if (*(v8 + 32) >= 3u)
        {
          v9 = *(v8 + 24);
          v10 = *v8;
          v11 = *(v8 + 16) | *(v8 + 8);
          if (v11 | v10 | v9)
          {
            v12 = v11 | v9;
            v13 = (v10 - 1) <= 3 && v12 == 0;
            v14 = !v13 && v10 == 5;
            if (v14 && v12 == 0)
            {
              break;
            }
          }
        }

        v6 = (v6 + 1) & v7;
        if (((*(v32 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v32;
      if (*(v32 + 24) <= *(v32 + 16))
      {
        if (result)
        {
          sub_1000B0574();
        }

        else
        {
          sub_1000B273C();
        }

        v16 = v32;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(7uLL);
        result = Hasher._finalize()();
        v17 = -1 << *(v32 + 32);
        v6 = result & ~v17;
        if ((*(v32 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          v18 = ~v17;
          while (1)
          {
            v19 = *(v32 + 48) + 40 * v6;
            if (*(v19 + 32) >= 3u)
            {
              v20 = *(v19 + 24);
              v21 = *v19;
              v22 = *(v19 + 16) | *(v19 + 8);
              if (v22 | v21 | v20)
              {
                v23 = v22 | v20;
                v24 = (v21 - 1) <= 3 && v23 == 0;
                v25 = !v24 && v21 == 5;
                if (v25 && v23 == 0)
                {
                  break;
                }
              }
            }

            v6 = (v6 + 1) & v18;
            if (((*(v32 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
        }
      }

      else if ((result & 1) == 0)
      {
        result = sub_1000B1948();
        v16 = v32;
      }

LABEL_45:
      *(v16 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v6;
      v27 = *(v16 + 48) + 40 * v6;
      *v27 = 5;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      *(v27 + 32) = 3;
      v28 = *(v16 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        __break(1u);
        return result;
      }

      *(v16 + 16) = v30;
    }

    State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100108D6C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - v8;
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for SceneState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for SceneState.didEnterBackground(_:))
  {
    static Log.ui.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Launch-related: Tamale didEnterBackground", v19, 2u);
    }

    (*(v3 + 8))(v11, v2);
    return sub_100109134();
  }

  else if (v16 == enum case for SceneState.didBecomeActive(_:))
  {
    static Log.ui.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Launch-related: Tamale didBecomeActive", v23, 2u);
    }

    (*(v3 + 8))(v9, v2);
    return sub_100109318();
  }

  else if (v16 == enum case for SceneState.willEnterForeground(_:))
  {
    static Log.ui.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Launch-related: Tamale willEnterForeground", v26, 2u);
    }

    (*(v3 + 8))(v6, v2);
    return sub_100107F14();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100109134()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Launch-related: Sending Tamale contents to background", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for ContentView();
  sub_1000EA020();
  v10 = (v1 + *(v9 + 140));
  v11 = *v10;
  v12 = *(v10 + 1);
  v19 = v11;
  v20 = v12;
  v18 = 0;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  result = dispatch thunk of UserDefaultsUtility.hasOnboardedApp.getter();
  if ((result & 1) == 0)
  {
    v14 = (v1 + *(v9 + 184));
    v15 = *v14;
    v16 = *(v14 + 1);
    v19 = v15;
    v20 = v16;
    v18 = 0;
    State.wrappedValue.setter();
    return sub_1000F9C44();
  }

  return result;
}

uint64_t sub_100109318()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContentView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  sub_10005BBC4(0, &qword_1001D6B40);
  v10 = static OS_dispatch_queue.main.getter();
  sub_10013DAC8(v0, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_100136D64(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ContentView);
  aBlock[4] = sub_1001399C4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C5EF8;
  v13 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10013FB34(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v17 + 8))(v3, v1);
  (*(v4 + 8))(v6, v16);
}

uint64_t sub_1001096C0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000033A8(&qword_1001D41B0);
  result = __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = *a2;
  if (*a1 != v14)
  {
    v15 = v14;
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_10013DAC8(a3, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
    type metadata accessor for MainActor();
    v17 = static MainActor.shared.getter();
    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v19 = *(&off_1001C6898 + v15);
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = &protocol witness table for MainActor;
    sub_100136D64(v9, v20 + v18, type metadata accessor for ContentView);
    sub_1000154EC(0, 0, v13, v19, v20);
  }

  return result;
}

uint64_t sub_1001098C4(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  if (*a1 == 1)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v9 = (a2 + *(type metadata accessor for ContentView() + 52));
    v11 = *v9;
    v10 = v9[1];
    v19 = v11;
    v20 = v10;
    sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    swift_weakInit();

    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v8;

    sub_1000154EC(0, 0, v6, &unk_10017BD18, v13);
  }

  else
  {
    v14 = (a2 + *(type metadata accessor for ContentView() + 52));
    v16 = *v14;
    v15 = v14[1];
    v19 = v16;
    v20 = v15;
    sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    sub_10014FC70();
  }
}

uint64_t sub_100109ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_1000033A8(&qword_1001D6DC0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v8;
  v4[16] = v7;

  return _swift_task_switch(sub_100109C18, v8, v7);
}

uint64_t sub_100109C18()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_100109CE4;

  return sub_1000A9BE0(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100109CE4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[13];
  v5 = v2[12];
  v6 = v2[11];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_100143820;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_100109E78;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100109E78()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = *(v0 + 72);
    v1 = *(v0 + 80);
    v3 = *(v0 + 64);
    static LoggingSignposter.cameraControllerStop.getter();
    default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
    LoggingSignposter.emitEvent(_:shouldLog:)();
    *(v0 + 40) = 1;
    *(v0 + 48) = 2;
    sub_1000033A8(&qword_1001D6DC8);
    AsyncStream.Continuation.yield(_:)();

    (*(v2 + 8))(v1, v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100109FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  result = *a1;
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      if (v16 <= 1)
      {
        if (v16)
        {
          if (v14 == result)
          {
            return result;
          }

          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else if (v16 <= 1)
    {
      if (!v16)
      {
        if (v14 == result)
        {
          return result;
        }

        goto LABEL_33;
      }

LABEL_34:
      v28 = v15;
      sub_1000033A8(&qword_1001DB778);
      v29 = v7;
      Bindable.wrappedValue.getter();
      NewSaliencyModel.stream.setter();

      v15 = v28;
      Bindable.wrappedValue.getter();
      v18 = (a3 + *(v6 + 52));
      v20 = *v18;
      v19 = v18[1];
      v30 = v20;
      v31 = v19;
      sub_1000033A8(&qword_1001DB780);
      State.wrappedValue.getter();
      sub_10013FB34(&qword_1001DB788, type metadata accessor for CameraController);
      NewSaliencyModel.stream.setter();
      v7 = v29;

      sub_10010A43C(0);
      sub_10010A6A8();
      type metadata accessor for LocationsHandler();
      static LocationsHandler.shared.getter();
      dispatch thunk of LocationsHandler.startLocationUpdates()();
      goto LABEL_35;
    }

    if (v16 != 2)
    {
      goto LABEL_25;
    }

LABEL_33:
    type metadata accessor for LocationsHandler();
    static LocationsHandler.shared.getter();
    dispatch thunk of LocationsHandler.stopLocationUpdates()();
LABEL_35:

    goto LABEL_36;
  }

  v17 = *(a1 + 8);
  if (*(a1 + 16) != 2)
  {
    if (result | v17)
    {
      if (result ^ 1 | v17)
      {
        if (v16 > 1)
        {
          if (v16 == 2)
          {
            goto LABEL_33;
          }

          if (v14 != 2)
          {
            goto LABEL_25;
          }

LABEL_40:
          if (!v15)
          {
            return result;
          }

LABEL_25:
          if (v14 | v15)
          {
LABEL_36:
            v21 = type metadata accessor for TaskPriority();
            (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
            sub_10013DAC8(a3, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
            type metadata accessor for MainActor();
            sub_100060424(v14, v15, v16);
            v22 = static MainActor.shared.getter();
            v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
            v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
            v25 = swift_allocObject();
            *(v25 + 16) = v22;
            *(v25 + 24) = &protocol witness table for MainActor;
            sub_100136D64(v9, v25 + v23, type metadata accessor for ContentView);
            v26 = v25 + v24;
            *v26 = v14;
            *(v26 + 8) = v15;
            *(v26 + 16) = v16;
            sub_1000154EC(0, 0, v12, &unk_10017BBC0, v25);
          }

          goto LABEL_33;
        }
      }

      else if (v16 > 1)
      {
        if (v16 == 2)
        {
          goto LABEL_33;
        }

        if (v14 != 1)
        {
          goto LABEL_25;
        }

        goto LABEL_40;
      }
    }

    else if (v16 > 1)
    {
      if (v16 == 2)
      {
        goto LABEL_33;
      }

      if (!(v15 | v14))
      {
        return result;
      }

      goto LABEL_25;
    }

LABEL_32:
    if (v16)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v16 <= 1)
  {
    goto LABEL_32;
  }

  if (v16 != 2)
  {
    goto LABEL_25;
  }

  if (result != v14 || v17 != v15)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  return result;
}

uint64_t sub_10010A43C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContentView();
  v9 = (v1 + *(v8 + 136));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v18) = *v9;
  *(&v18 + 1) = v11;
  sub_1000033A8(&qword_1001DBB70);
  result = State.wrappedValue.getter();
  if (v17 || (a1 & 1) != 0)
  {
    static Log.ui.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      HIDWORD(v16) = v10;
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Hiding capture effects", v15, 2u);
      LOBYTE(v10) = BYTE4(v16);
    }

    (*(v5 + 8))(v7, v4);
    sub_1000033A8(&qword_1001DB778);
    Bindable.wrappedValue.getter();
    NewSaliencyModel.userSelection.getter();

    FocusSelectionModel.active.setter();

    Bindable.wrappedValue.getter();
    NewSaliencyModel.reset()();

    LOBYTE(v18) = v10;
    *(&v18 + 1) = v11;
    LOBYTE(v17) = 0;
    State.wrappedValue.setter();
    v18 = *(v2 + *(v8 + 88));
    v17 = 0;
    sub_1000033A8(&qword_1001DBB78);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10010A6A8()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DBB80);
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001DBB88);
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  NewSaliencyModel.barItemsDisappeared()();

  Bindable.wrappedValue.getter();
  NewSaliencyModel.analytics.getter();

  dispatch thunk of SessionAnalytics.pillQueryReset()();
}

uint64_t sub_10010A814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 179) = a7;
  *(v7 + 112) = a5;
  *(v7 + 120) = a6;
  *(v7 + 104) = a4;
  sub_1000033A8(&qword_1001DB750);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  v8 = type metadata accessor for EnvironmentValues();
  *(v7 + 144) = v8;
  *(v7 + 152) = *(v8 - 8);
  *(v7 + 160) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 168) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010A954, v10, v9);
}

uint64_t sub_10010A954()
{
  v1 = *(v0 + 179);

  if (v1 == 1 || v1 == 3 && !*(v0 + 120) && *(v0 + 112) == 2 || (type metadata accessor for ContentView(), sub_1000033A8(&qword_1001DB778), Bindable.wrappedValue.getter(), v2 = NewSaliencyModel.isAskingMontara.getter(), , (v2 & 1) != 0))
  {
    v3 = 0;
  }

  else
  {
    v4 = *(v0 + 104);
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);

    if ((v6 & 1) == 0)
    {
      v8 = *(v0 + 152);
      v7 = *(v0 + 160);
      v9 = *(v0 + 144);
      static os_log_type_t.fault.getter();
      v10 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v8 + 8))(v7, v9);
      v5 = *(v0 + 72);
    }

    swift_getKeyPath();
    *(v0 + 80) = v5;
    sub_10013FB34(&qword_1001D4218, type metadata accessor for SiriRequestStateResponder);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v5 + 16);

    v3 = v11 == 2;
  }

  v12 = *(v0 + 104);
  v13 = type metadata accessor for ContentView();
  v14 = (v12 + *(v13 + 108));
  v15 = *v14;
  v16 = *(v14 + 1);
  *(v0 + 16) = *v14;
  *(v0 + 24) = v16;
  *(v0 + 176) = v3;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  v17 = NewSaliencyModel.isAskingMontara.getter();

  if (v17)
  {
    Bindable.wrappedValue.getter();
    NewSaliencyModel.isAskingMontara.setter();
  }

  *(v0 + 32) = v15;
  *(v0 + 40) = v16;
  State.wrappedValue.getter();
  if ((*(v0 + 177) & 1) == 0)
  {
    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v20 = *(v0 + 104);
    v21 = type metadata accessor for ResultLookupState();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
    sub_1000138BC(v18, v19, &qword_1001DB750);
    sub_1000033A8(&qword_1001DB7A8);
    State.wrappedValue.setter();
    sub_1000F9408();
    sub_10001370C(v18, &qword_1001DB750);
    v22 = (v20 + *(v13 + 124));
    v23 = *v22;
    v24 = *(v22 + 1);
    *(v0 + 48) = v23;
    *(v0 + 56) = v24;
    *(v0 + 178) = 0;
    State.wrappedValue.setter();
    sub_10010AD70();
  }

  sub_10010B268();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10010AD70()
{
  v1 = type metadata accessor for LoggingSignposter();
  v26 = *(v1 - 8);
  v27 = v1;
  __chkstk_darwin(v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContentView();
  v5 = *(v0 + v4[61]);
  [*(*(v5 + 24) + 32) setActiveInteractionTypes:0];
  if (*(v5 + 32))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v25 - 2) = v5;
    *(&v25 - 1) = 0;
    v29 = v5;
    sub_10013FB34(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v5 + 48))
  {
    *(v5 + 40) = 0;
    *(v5 + 48) = 1;
    if (!*(v5 + 56))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = swift_getKeyPath();
  __chkstk_darwin(v7);
  *(&v25 - 4) = v5;
  *(&v25 - 3) = 0;
  *(&v25 - 16) = 1;
  v29 = v5;
  sub_10013FB34(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (*(v5 + 56))
  {
LABEL_7:
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    *(&v25 - 2) = v5;
    *(&v25 - 1) = 0;
    v29 = v5;
    sub_10013FB34(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

LABEL_8:
  v9 = *(v0 + v4[62]);
  static LoggingSignposter.liveText.getter();
  static LoggingSignposter.visionKitImageTextAnalysis.getter();
  default argument 1 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  (*(v26 + 8))(v3, v27);
  [*(v9 + 32) setActiveInteractionTypes:0];
  [*(v9 + 32) resetSelection];
  [*(v9 + 32) updateContentsRect];
  v10 = (*(v9 + 16) + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_isPointInside);
  v11 = *v10;
  *v10 = 0;
  v10[1] = 0;
  sub_100005640(v11);
  sub_100006AAC(&v29, v31);
  dispatch thunk of LoggingSignposter.Interval.end()();
  sub_100006B44(&v29);
  OverlayViewModel.reset()();
  v12 = (v0 + v4[41]);
  v14 = *v12;
  v13 = v12[1];
  v29 = v14;
  v30 = v13;
  v28 = _swiftEmptyArrayStorage;
  sub_1000033A8(&qword_1001DBB90);
  State.wrappedValue.setter();
  v15 = (v0 + v4[42]);
  v17 = *v15;
  v16 = v15[1];
  v29 = v17;
  v30 = v16;
  v28 = _swiftEmptyArrayStorage;
  State.wrappedValue.setter();
  v18 = (v0 + v4[43]);
  v20 = *v18;
  v19 = v18[1];
  v29 = v20;
  v30 = v19;
  v28 = _swiftEmptyArrayStorage;
  State.wrappedValue.setter();
  v21 = (v0 + v4[28]);
  v23 = *v21;
  v22 = v21[1];
  v29 = v23;
  v30 = v22;
  v28 = &_swiftEmptySetSingleton;
  sub_1000033A8(&qword_1001DBBE8);
  return State.wrappedValue.setter();
}

uint64_t sub_10010B268()
{
  v1 = v0;
  v166 = type metadata accessor for UUID();
  v154 = *(v166 - 1);
  __chkstk_darwin(v166);
  v3 = &v135 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_1000033A8(&qword_1001DA458);
  __chkstk_darwin(v164);
  v5 = (&v135 - v4);
  v6 = type metadata accessor for ContentView();
  v142 = *(v6 - 1);
  __chkstk_darwin(v6);
  v150 = v7;
  v145 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001D44B0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = (&v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v163 = (&v135 - v13);
  v14 = __chkstk_darwin(v12);
  v162 = &v135 - v15;
  __chkstk_darwin(v14);
  v151 = &v135 - v16;
  v159 = type metadata accessor for ActionAnalytics.ActionType();
  v160 = *(v159 - 8);
  __chkstk_darwin(v159);
  v158 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for ActionPin.Pill();
  v157 = *(v149 - 8);
  __chkstk_darwin(v149);
  v156 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for BuiltInAction();
  v153 = *(v148 - 8);
  __chkstk_darwin(v148);
  v143 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for ActionBarItem();
  v167 = *(v165 - 8);
  v20 = __chkstk_darwin(v165);
  v161 = (&v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v169 = (&v135 - v23);
  v24 = __chkstk_darwin(v22);
  v147 = &v135 - v25;
  v26 = __chkstk_darwin(v24);
  v144 = &v135 - v27;
  v28 = __chkstk_darwin(v26);
  v146 = (&v135 - v29);
  __chkstk_darwin(v28);
  v152 = (&v135 - v30);
  v31 = sub_1000033A8(&qword_1001DB750);
  __chkstk_darwin(v31 - 8);
  v168 = &v135 - v32;
  v33 = v0 + v6[35];
  v34 = *v33;
  v35 = *(v33 + 8);
  LOBYTE(v173) = *v33;
  v174 = v35;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  if ((v170 & 1) != 0 || (v36 = v0 + v6[49], v37 = *v36, v38 = *(v36 + 8), LOBYTE(v173) = v37, v174 = v38, sub_1000033A8(&qword_1001DBB80), State.wrappedValue.getter(), v170))
  {
    v39 = (v0 + v6[43]);
    v41 = *v39;
    v40 = v39[1];
    v173 = v41;
    v174 = v40;
    *&v170 = _swiftEmptyArrayStorage;
    sub_1000033A8(&qword_1001DBB90);
    return State.wrappedValue.setter();
  }

  v155 = v11;
  v43 = sub_10012560C();
  v177 = v43;
  v44 = v0 + v6[39];
  v45 = *v44;
  v46 = *(v44 + 8);
  LOBYTE(v173) = v45;
  v174 = v46;
  sub_1000033A8(&qword_1001DBB98);
  v47 = State.wrappedValue.getter();
  v141 = v3;
  if (!v170 || v170 == 1)
  {
    v173 = v43;

    sub_1000033A8(&qword_1001DA510);
    sub_100013608(&qword_1001DBBA0, &qword_1001DA510);
    v48 = RandomAccessCollection.stableSorted(by:)();
    v47 = swift_bridgeObjectRelease_n();
    v177 = v48;
    v43 = v48;
  }

  if (!*(v43 + 16))
  {
    v49 = (v1 + v6[13]);
    v51 = *v49;
    v50 = v49[1];
    v173 = v51;
    v174 = v50;
    sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    v52 = v170;
    swift_getKeyPath();
    v173 = v52;
    sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v53 = (v52 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
    v54 = *(v52 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
    if (v54 == 1)
    {
    }

    else
    {
      v56 = *v53;
      v55 = v53[1];
      sub_100060424(*v53, v55, *(v52 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

      v47 = v56;
      if (v54 != 3 || v56 != 2 || v55)
      {
        sub_1000616E4(v56, v55, v54);
        LOBYTE(v173) = v34;
        v174 = v35;
        v47 = State.wrappedValue.getter();
        if ((v170 & 1) == 0)
        {
          sub_1000033A8(&qword_1001DB778);
          Bindable.wrappedValue.getter();
          v57 = NewSaliencyModel.isAskingMontara.getter();

          if (v57)
          {
            __chkstk_darwin(v47);
            *(&v135 - 2) = v1;
            static Animation.default.getter();
            goto LABEL_17;
          }
        }
      }
    }
  }

  __chkstk_darwin(v47);
  *(&v135 - 2) = v1;
  *(&v135 - 1) = &v177;
  static Animation.default.getter();
LABEL_17:
  withAnimation<A>(_:_:)();
  v140 = 0;

  v58 = (v1 + v6[13]);
  v59 = *v58;
  v60 = v58[1];
  v173 = *v58;
  v174 = v60;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v61 = v170;
  swift_getKeyPath();
  v173 = v61;
  v139 = sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = (v61 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v63 = *(v61 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  if (v63 == 1)
  {
  }

  else
  {
    v65 = *v62;
    v64 = v62[1];
    sub_100060424(*v62, v64, *(v61 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

    if (v63 != 3 || v65 != 2 || v64)
    {
      sub_1000616E4(v65, v64, v63);
      v66 = v1 + v6[34];
      v67 = *v66;
      v68 = *(v66 + 8);
      LOBYTE(v173) = v67;
      v174 = v68;
      sub_1000033A8(&qword_1001DBB70);
      State.wrappedValue.getter();
      if (v170 != 1)
      {
        sub_1000033A8(&qword_1001DB778);
        Bindable.wrappedValue.getter();
        v61 = NewSaliencyModel.isAskingMontara.getter();

        if ((v61 & 1) == 0)
        {
          sub_1000033A8(&qword_1001DB7A8);
          v91 = v168;
          State.wrappedValue.getter();
          v92 = type metadata accessor for ResultLookupState();
          v93 = (*(*(v92 - 8) + 48))(v91, 1, v92);
          v94 = sub_10001370C(v91, &qword_1001DB750);
          if (v93 == 1)
          {
            v173 = v59;
            v174 = v60;
            State.wrappedValue.getter();
            v95 = v170;
            swift_getKeyPath();
            v173 = v95;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v97 = *(v95 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
            v96 = *(v95 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
            v98 = *(v95 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
            sub_100060424(v97, v96, *(v95 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

            if (v98)
            {
              v94 = sub_1000616E4(v97, v96, v98);
              v5 = v177;
              if (!v177[2])
              {
                v99 = v153;
                v100 = *(v153 + 104);
                v168 = (v153 + 104);
                v169 = v100;
                v101 = v143;
                v102 = v148;
                (v100)(v143, enum case for BuiltInAction.askAcme(_:), v148);
                BuiltInAction.pill.getter();
                v103 = *(v99 + 8);
                v153 = v99 + 8;
                v164 = v103;
                v103(v101, v102);
                v104 = *(v160 + 104);
                v162 = v160 + 104;
                v163 = v104;
                (v104)(v158, enum case for ActionAnalytics.ActionType.askAcme(_:), v159);
                v105 = *(v154 + 56);
                v154 += 56;
                v161 = v105;
                v105(v151, 1, 1, v166);
                v106 = v145;
                v155 = type metadata accessor for ContentView;
                sub_10013DAC8(v1, v145, type metadata accessor for ContentView);
                v107 = (*(v142 + 80) + 16) & ~*(v142 + 80);
                v141 = *(v142 + 80);
                v136 = swift_allocObject();
                v139 = type metadata accessor for ContentView;
                sub_100136D64(v106, v136 + v107, type metadata accessor for ContentView);
                sub_10013DAC8(v1, v106, type metadata accessor for ContentView);
                v108 = swift_allocObject();
                v142 = v1;
                v109 = v108;
                sub_100136D64(v106, v108 + v107, type metadata accessor for ContentView);
                v110 = sub_1000033A8(&qword_1001DA608);
                v111 = v110[19];
                v138 = *(v157 + 32);
                v157 += 32;
                v112 = v152;
                v138(v152, v156, v149);
                v113 = v110[9];
                v114 = *(v160 + 32);
                v160 += 32;
                v137 = v114;
                v114(v112 + v113, v158, v159);
                *(v112 + v110[10]) = 0;
                *(v112 + v110[11]) = 2;
                *(v112 + v110[12]) = 1;
                *(v112 + v110[13]) = 0;
                *(v112 + v110[18]) = 0;
                v115 = (v112 + v110[15]);
                v116 = v136;
                *v115 = sub_100136CB8;
                v115[1] = v116;
                v117 = (v112 + v110[16]);
                *v117 = sub_100136CD0;
                v117[1] = v109;
                v118 = (v112 + v110[17]);
                *v118 = 0;
                v118[1] = 0;
                *(v112 + v111) = 0;
                v119 = v151;
                sub_10002091C(v151, v112 + v110[14], &qword_1001D44B0);
                swift_storeEnumTagMultiPayload();
                v120 = v148;
                (v169)(v101, enum case for BuiltInAction.imageSearch(_:), v148);
                BuiltInAction.pill.getter();
                (v164)(v101, v120);
                v121 = v158;
                v122 = v159;
                (v163)(v158, enum case for ActionAnalytics.ActionType.imageSearch(_:), v159);
                v161(v119, 1, 1, v166);
                sub_10013DAC8(v142, v106, v155);
                v123 = swift_allocObject();
                sub_100136D64(v106, v123 + v107, v139);
                v124 = v110[19];
                v6 = v146;
                v138(v146, v156, v149);
                v137(v6 + v110[9], v121, v122);
                *(v6 + v110[10]) = 0;
                *(v6 + v110[11]) = 2;
                *(v6 + v110[12]) = 1;
                *(v6 + v110[13]) = 0;
                *(v6 + v110[18]) = 0;
                v125 = (v6 + v110[15]);
                *v125 = sub_100019CC8;
                v125[1] = 0;
                v126 = (v6 + v110[16]);
                *v126 = sub_100136CE8;
                v126[1] = v123;
                v127 = (v6 + v110[17]);
                *v127 = 0;
                v127[1] = 0;
                *(v6 + v124) = 0;
                sub_10002091C(v119, v6 + v110[14], &qword_1001D44B0);
                swift_storeEnumTagMultiPayload();
                v61 = v144;
                sub_10013DAC8(v112, v144, type metadata accessor for ActionBarItem);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_56;
                }

                goto LABEL_47;
              }
            }
          }

LABEL_52:
          __chkstk_darwin(v94);
          *(&v135 - 2) = v1;
          *(&v135 - 1) = &v177;
          static Animation.default.getter();
LABEL_53:
          withAnimation<A>(_:_:)();
        }
      }
    }
  }

  v69 = (v1 + v6[43]);
  v71 = *v69;
  v70 = v69[1];
  v173 = v71;
  v174 = v70;
  sub_1000033A8(&qword_1001DBB90);
  State.wrappedValue.getter();
  v72 = v170;
  v160 = *(v170 + 16);
  if (v160)
  {
    v142 = v1;
    v73 = 0;
    v158 = (v170 + ((*(v167 + 80) + 32) & ~*(v167 + 80)));
    v157 = v154 + 16;
    v156 = (v154 + 56);
    v168 = (v154 + 48);
    v152 = (v154 + 32);
    v154 += 8;
    v75 = v162;
    v74 = v163;
    v76 = v161;
    v159 = v170;
    while (1)
    {
      if (v73 >= *(v72 + 16))
      {
        __break(1u);
LABEL_56:
        v5 = sub_1000954F8(0, v5[2] + 1, 1, v5);
LABEL_47:
        v128 = v147;
        v130 = v5[2];
        v129 = v5[3];
        v131 = v130 + 1;
        v1 = v142;
        if (v130 >= v129 >> 1)
        {
          v5 = sub_1000954F8(v129 > 1, v130 + 1, 1, v5);
        }

        v5[2] = v131;
        v132 = (*(v167 + 80) + 32) & ~*(v167 + 80);
        v133 = *(v167 + 72);
        sub_100136D64(v61, v5 + v132 + v133 * v130, type metadata accessor for ActionBarItem);
        sub_10013DAC8(v6, v128, type metadata accessor for ActionBarItem);
        v134 = v5[3];
        if ((v130 + 2) > (v134 >> 1))
        {
          v5 = sub_1000954F8(v134 > 1, v130 + 2, 1, v5);
        }

        v5[2] = v130 + 2;
        sub_100136D64(v128, v5 + v132 + v133 * v131, type metadata accessor for ActionBarItem);
        v177 = v5;
        sub_10013E658(v6, type metadata accessor for ActionBarItem);
        v94 = sub_10013E658(v152, type metadata accessor for ActionBarItem);
        goto LABEL_52;
      }

      v78 = v169;
      sub_10013DAC8(&v158[*(v167 + 72) * v73], v169, type metadata accessor for ActionBarItem);
      sub_10013DAC8(v78, v76, type metadata accessor for ActionBarItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v79 = &qword_1001DA600;
        v171 = sub_1000033A8(&qword_1001DA600);
        v80 = &qword_1001DA610;
      }

      else
      {
        v79 = &qword_1001DA608;
        v171 = sub_1000033A8(&qword_1001DA608);
        v80 = &qword_1001DA618;
      }

      v172 = sub_100013608(v80, v79);
      v81 = sub_1000D5748(&v170);
      sub_10002091C(v76, v81, v79);
      sub_10002AAA4(&v170, &v173);
      v83 = v175;
      v82 = v176;
      sub_100006AAC(&v173, v175);
      (*(v82 + 56))(v83, v82);
      sub_100006B44(&v173);
      if (qword_1001D31D0 != -1)
      {
        swift_once();
      }

      v6 = v166;
      v84 = sub_10002769C(v166, qword_1001DB6F0);
      (*v157)(v74, v84, v6);
      (*v156)(v74, 0, 1, v6);
      v85 = *(v164 + 48);
      v61 = &qword_1001D44B0;
      sub_1000138BC(v75, v5, &qword_1001D44B0);
      sub_1000138BC(v74, v5 + v85, &qword_1001D44B0);
      v86 = *v168;
      if ((*v168)(v5, 1, v6) == 1)
      {
        break;
      }

      v87 = v155;
      sub_1000138BC(v5, v155, &qword_1001D44B0);
      if (v86(v5 + v85, 1, v6) == 1)
      {
        v74 = v163;
        sub_10001370C(v163, &qword_1001D44B0);
        v75 = v162;
        sub_10001370C(v162, &qword_1001D44B0);
        sub_10013E658(v169, type metadata accessor for ActionBarItem);
        (*v154)(v87, v6);
        v76 = v161;
        v72 = v159;
LABEL_27:
        sub_10001370C(v5, &qword_1001DA458);
        goto LABEL_28;
      }

      v88 = v141;
      (*v152)(v141, v5 + v85, v6);
      sub_10013FB34(&qword_1001D80D0, &type metadata accessor for UUID);
      LODWORD(v153) = dispatch thunk of static Equatable.== infix(_:_:)();
      v89 = *v154;
      (*v154)(v88, v6);
      v74 = v163;
      sub_10001370C(v163, &qword_1001D44B0);
      v75 = v162;
      sub_10001370C(v162, &qword_1001D44B0);
      sub_10013E658(v169, type metadata accessor for ActionBarItem);
      v89(v87, v6);
      sub_10001370C(v5, &qword_1001D44B0);
      v76 = v161;
      v72 = v159;
      if (v153)
      {
        goto LABEL_42;
      }

LABEL_28:
      if (v160 == ++v73)
      {
        goto LABEL_40;
      }
    }

    sub_10001370C(v74, &qword_1001D44B0);
    sub_10001370C(v75, &qword_1001D44B0);
    sub_10013E658(v169, type metadata accessor for ActionBarItem);
    v77 = v86(v5 + v85, 1, v6);
    v72 = v159;
    if (v77 == 1)
    {
      sub_10001370C(v5, &qword_1001D44B0);
LABEL_42:

      __chkstk_darwin(v90);
      *(&v135 - 2) = v142;
      static Animation.default.getter();
      goto LABEL_53;
    }

    goto LABEL_27;
  }

LABEL_40:
}

uint64_t sub_10010CC30(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for ContentView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000033A8(&qword_1001D41B0);
  result = __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  if (*a2 == 1)
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    sub_10013DAC8(a3, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
    type metadata accessor for MainActor();
    v14 = static MainActor.shared.getter();
    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = &protocol witness table for MainActor;
    sub_100136D64(v8, v16 + v15, type metadata accessor for ContentView);
    sub_1000154EC(0, 0, v12, &unk_10017BBA0, v16);

    v17 = (a3 + *(v5 + 52));
    v18 = *v17;
    v19 = v17[1];
    v30 = *v17;
    v31 = v19;
    sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    v20 = v29;
    swift_getKeyPath();
    v30 = v20;
    sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = (v20 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
    v22 = *(v20 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
    if (v22 == 1)
    {
    }

    v23 = *v21;
    v24 = v21[1];
    sub_100060424(*v21, v24, *(v20 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

    if (v22 != 3 || v23 != 2 || v24)
    {
      sub_1000616E4(v23, v24, v22);
      sub_10010A43C(1);
      v30 = v18;
      v31 = v19;
      State.wrappedValue.getter();
      v25 = v29;
      swift_getKeyPath();
      v30 = v25;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v26 = (v25 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
      v27 = *(v25 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
      if (v27 != 1 && (v27 != 3 || v26[1] || *v26 != 2))
      {
        sub_10014FC70();
      }
    }
  }

  return result;
}

uint64_t sub_10010CFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_10010D074, v6, v5);
}

uint64_t sub_10010D074()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for ContentView() + 52));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v0[10] = v0[4];
  v0[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v6;
  v0[13] = v5;

  return _swift_task_switch(sub_10010D144, v6, v5);
}

uint64_t sub_10010D144()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_10010D1D8;

  return sub_1000E708C();
}

uint64_t sub_10010D1D8()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_10010D2F8, v3, v2);
}

uint64_t sub_10010D2F8()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1001439DC, v1, v2);
}

uint64_t sub_10010D364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v32 = a2;
  v29 = a1;
  v3 = type metadata accessor for CameraControllerConfiguration(0);
  v4 = *(v3 - 8);
  v33 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContentView();
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v28 = &v26 - v10;
  v12 = sub_1000033A8(&qword_1001DBAF8);
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v15 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  sub_10013DAC8(v29, &v26 - v16, type metadata accessor for CameraControllerConfiguration);
  (*(v4 + 56))(v17, 0, 1, v3);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  sub_1000138BC(v17, v15, &qword_1001DBAF8);
  sub_10013DAC8(v31, &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v19 = v6;
  sub_10013DAC8(v32, v6, type metadata accessor for CameraControllerConfiguration);
  type metadata accessor for MainActor();
  v20 = static MainActor.shared.getter();
  v21 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v22 = (v13 + *(v30 + 80) + v21) & ~*(v30 + 80);
  v23 = (v8 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = &protocol witness table for MainActor;
  sub_10002091C(v15, v24 + v21, &qword_1001DBAF8);
  sub_100136D64(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22, type metadata accessor for ContentView);
  sub_100136D64(v19, v24 + v23, type metadata accessor for CameraControllerConfiguration);
  sub_100044AB8(0, 0, v28, &unk_10017BAC8, v24);

  return sub_10001370C(v17, &qword_1001DBAF8);
}

uint64_t sub_10010D774@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = sub_1000033A8(&qword_1001D44B0);
  v4 = __chkstk_darwin(v28);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = type metadata accessor for ContentView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = type metadata accessor for AppConfiguration();
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&qword_1001DB7A0);
  State.wrappedValue.getter();
  v15 = sub_1000033A8(&qword_1001DBC50);
  v16 = v15[12];
  v17 = type metadata accessor for AnnotationViewConfiguration();
  (*(*(v17 - 8) + 16))(a1 + v16, v14, v17);
  sub_10013E658(v14, type metadata accessor for AppConfiguration);
  sub_10013DAC8(v2, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_100136D64(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ContentView);
  type metadata accessor for CameraController();
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  *a1 = Environment.init<A>(_:)();
  *(a1 + 8) = v20 & 1;
  v29 = 0;
  State.init(wrappedValue:)();
  v21 = v31;
  *(a1 + 16) = v30;
  *(a1 + 24) = v21;
  v29 = 0;
  State.init(wrappedValue:)();
  v22 = v31;
  *(a1 + 32) = v30;
  *(a1 + 40) = v22;
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  sub_1000138BC(v8, v6, &qword_1001D44B0);
  State.init(wrappedValue:)();
  sub_10001370C(v8, &qword_1001D44B0);
  *(a1 + v15[13]) = 1;
  v24 = (a1 + v15[14]);
  *v24 = sub_10013ABA0;
  v24[1] = v19;
  v25 = static Color.black.getter();
  LOBYTE(v18) = static Edge.Set.all.getter();
  v26 = a1 + *(sub_1000033A8(&qword_1001DBC40) + 36);
  *v26 = v25;
  *(v26 + 8) = v18;
  result = sub_1000033A8(&qword_1001DBC30);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_10010DB98()
{
  v0 = type metadata accessor for ImageSearchProvider();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000033A8(&qword_1001DA820);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-v7];
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x6E69686372616553;
  v9._object = 0xEF20687469772067;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  static ImageSearchProvider.getImageSearchProvider()();
  v10 = ImageSearchProvider.providerDisplayName.getter();
  v12 = v11;
  (*(v1 + 8))(v3, v0);
  v13._countAndFlagsBits = v10;
  v13._object = v12;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v13);

  v14._countAndFlagsBits = 10911970;
  v14._object = 0xA300000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  LocalizedStringKey.init(stringInterpolation:)();
  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  Text.latencyTextStyle()();
  sub_100020D44(v15, v17, v19 & 1);

  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10010DE74(uint64_t a1)
{
  v2 = type metadata accessor for ImageSearchState();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  return ImageSearchResultView.init(state:model:)();
}

uint64_t sub_10010DF78()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB790);
  State.wrappedValue.getter();
  dispatch thunk of FeedbackController.reset()();
}

uint64_t sub_10010DFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v27 = a3;
  v4 = sub_1000033A8(&qword_1001DC018);
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for ImageSearchState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000033A8(&qword_1001DB750);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for ResultLookupState();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB7A8);
  State.wrappedValue.getter();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10001370C(v13, &qword_1001DB750);
    return (*(v25 + 56))(v27, 1, 1, v26);
  }

  (*(v15 + 32))(v17, v13, v14);
  (*(v8 + 104))(v10, enum case for ImageSearchState.started(_:), v7);
  sub_10013FB34(&qword_1001DC010, &type metadata accessor for ImageSearchState);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v8 + 8))(v10, v7);
  if (v18)
  {
    (*(v15 + 8))(v17, v14);
    return (*(v25 + 56))(v27, 1, 1, v26);
  }

  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v20 = sub_1000033A8(&qword_1001DC020);
  sub_10010E4B4(v17, a1, &v6[*(v20 + 44)]);
  static AnyTransition.opacity.getter();
  static AnyTransition.blur.getter();
  AnyTransition.combined(with:)();

  static Animation.spring(response:dampingFraction:blendDuration:)();
  Animation.delay(_:)();

  AnyTransition.animation(_:)();

  static AnyTransition.opacity.getter();
  static AnyTransition.blur.getter();
  AnyTransition.combined(with:)();

  v21 = static AnyTransition.asymmetric(insertion:removal:)();

  v23 = v26;
  v22 = v27;
  *&v6[*(v26 + 36)] = v21;
  sub_10002091C(v6, v22, &qword_1001DC018);
  (*(v25 + 56))(v22, 0, 1, v23);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_10010E4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[0] = a2;
  v5 = type metadata accessor for ResultLookupState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedbackControlBar();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000033A8(&qword_1001DC028);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v24 - v17;
  (*(v6 + 16))(v8, a1, v5);
  v19 = (v24[0] + *(type metadata accessor for ContentView() + 276));
  v21 = *v19;
  v20 = v19[1];
  v24[4] = v21;
  v24[5] = v20;
  sub_1000033A8(&qword_1001DB790);
  State.projectedValue.getter();
  FeedbackControlBar.init(resultLookupState:feedbackController:)();
  sub_10013FB34(&qword_1001DC030, &type metadata accessor for FeedbackControlBar);
  View.accessibilityHidden(_:)();
  (*(v10 + 8))(v12, v9);
  sub_1000138BC(v18, v16, &qword_1001DC028);
  *a3 = 0;
  *(a3 + 8) = 1;
  v22 = sub_1000033A8(&qword_1001DC038);
  sub_1000138BC(v16, a3 + *(v22 + 48), &qword_1001DC028);
  sub_10001370C(v18, &qword_1001DC028);
  return sub_10001370C(v16, &qword_1001DC028);
}

uint64_t sub_10010E7B0()
{
  v1 = sub_1000033A8(&qword_1001DB750);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v19[-v5];
  v7 = type metadata accessor for ContentView();
  v8 = (v0 + v7[33]);
  v9 = *v8;
  v10 = *(v8 + 1);
  v21 = v9;
  v22 = v10;
  v24 = 0;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  v20 = v0;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v11 = (v0 + v7[16]);
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v11) = v11[16];
  v21 = v12;
  v22 = v13;
  v23 = v11;
  v24 = 0;
  sub_1000033A8(&qword_1001DBFC0);
  FocusState.wrappedValue.setter();
  v14 = type metadata accessor for ResultLookupState();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_1000138BC(v6, v4, &qword_1001DB750);
  sub_1000033A8(&qword_1001DB7A8);
  State.wrappedValue.setter();
  sub_1000F9408();
  sub_10001370C(v6, &qword_1001DB750);
  v15 = (v0 + v7[31]);
  v16 = *v15;
  v17 = *(v15 + 1);
  v21 = v16;
  v22 = v17;
  v24 = 0;
  State.wrappedValue.setter();
  dispatch thunk of AppEntitiesProvider.reset()();
  return sub_10010B268();
}

uint64_t sub_10010EA1C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000033A8(&qword_1001DA820);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x20676E69646E6553;
  v9._object = 0xEB00000000206F74;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v10);
  v11._countAndFlagsBits = 10911970;
  v11._object = 0xA300000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  LocalizedStringKey.init(stringInterpolation:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  LOBYTE(a1) = v15;
  Text.latencyTextStyle()();
  sub_100020D44(v12, v14, a1 & 1);

  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10010EC3C(char a1, uint64_t a2, const char *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    if (a1)
    {
      v15 = 1853321060;
    }

    else
    {
      v15 = 28789;
    }

    if (a1)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE200000000000000;
    }

    v17 = sub_1000E0FE0(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, a3, v13, 0xCu);
    sub_100006B44(v14);
  }

  (*(v7 + 8))(v9, v6);
  return sub_10010E7B0();
}

uint64_t sub_10010EE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1000033A8(&qword_1001DBF00);
  __chkstk_darwin(v3);
  v5 = (&v46 - v4);
  v6 = sub_1000033A8(&qword_1001DBF08);
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  v47 = sub_1000033A8(&qword_1001DBF10);
  __chkstk_darwin(v47);
  v10 = &v46 - v9;
  v11 = *(type metadata accessor for ContentView() + 52);
  v46 = a1;
  v12 = (a1 + v11);
  v14 = *v12;
  v13 = v12[1];
  *&v50 = v14;
  *(&v50 + 1) = v13;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v15 = v49;
  swift_getKeyPath();
  *&v50 = v15;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v15 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v16 = *(v15 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  v18 = *(v15 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  sub_100060424(v17, v16, *(v15 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

  if (v18 != 1)
  {
    sub_1000616E4(v17, v16, v18);
    goto LABEL_5;
  }

  if ((v17 & 0xFE) == 0)
  {
LABEL_5:
    v19 = static Color.gray.getter();
    goto LABEL_6;
  }

  v19 = static Color.blue.getter();
LABEL_6:
  v20 = v19;
  static Edge.Set.all.getter();
  v50 = 0u;
  v51 = 0u;
  v52 = 1;
  SafeAreaPaddingModifier.init(edges:insets:)();
  *v5 = 0xD000000000000018;
  v5[1] = 0x800000010016EE80;
  v5[2] = v20;
  v21 = static Edge.Set.trailing.getter();
  dispatch thunk of UserDefaultsUtility.showEngineeringUIControls.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10002091C(v5, v8, &qword_1001DBF00);
  v30 = &v8[*(v6 + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_10002091C(v8, v10, &qword_1001DBF08);
  v40 = &v10[*(v47 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = static Animation.spring(response:dampingFraction:blendDuration:)();
  LOBYTE(v20) = dispatch thunk of UserDefaultsUtility.showEngineeringUIControls.getter();
  v42 = v10;
  v43 = v48;
  sub_10002091C(v42, v48, &qword_1001DBF10);
  result = sub_1000033A8(&qword_1001DBF18);
  v45 = v43 + *(result + 36);
  *v45 = v41;
  *(v45 + 8) = v20 & 1;
  return result;
}

uint64_t sub_10010F1E4()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  if (v1)
  {
    return 1;
  }

  State.wrappedValue.getter();
  State.wrappedValue.getter();
  if (sub_1001151BC())
  {
    return 1;
  }

  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_10010F304(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000033A8(&qword_1001DA458);
  __chkstk_darwin(v40);
  v7 = &v36 - v6;
  v8 = sub_1000033A8(&qword_1001D44C8);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_1000033A8(&qword_1001D44B0);
  v12 = __chkstk_darwin(v11 - 8);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v36 - v15;
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  CVBundle.id.getter();
  v41 = v4;
  v39 = *(v4 + 56);
  v39(v18, 0, 1, v3);
  v19 = (a2 + *(type metadata accessor for ContentView() + 52));
  v21 = *v19;
  v20 = v19[1];
  v42 = v21;
  v43 = v20;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v22 = v44;
  swift_getKeyPath();
  v42 = v22;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC6Tamale16CameraController__selectedSubject;
  swift_beginAccess();
  sub_1000138BC(v22 + v23, v10, &qword_1001D44C8);

  v24 = type metadata accessor for ActionPin();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v10, 1, v24) == 1)
  {
    sub_10001370C(v10, &qword_1001D44C8);
    v26 = 1;
  }

  else
  {
    ActionPin.id.getter();
    (*(v25 + 8))(v10, v24);
    v26 = 0;
  }

  v39(v16, v26, 1, v3);
  v27 = *(v40 + 48);
  sub_1000138BC(v18, v7, &qword_1001D44B0);
  sub_1000138BC(v16, &v7[v27], &qword_1001D44B0);
  v28 = *(v41 + 48);
  if (v28(v7, 1, v3) != 1)
  {
    v30 = v38;
    sub_1000138BC(v7, v38, &qword_1001D44B0);
    if (v28(&v7[v27], 1, v3) != 1)
    {
      v31 = v41;
      v32 = &v7[v27];
      v33 = v37;
      (*(v41 + 32))(v37, v32, v3);
      sub_10013FB34(&qword_1001D80D0, &type metadata accessor for UUID);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v31 + 8);
      v34(v33, v3);
      sub_10001370C(v16, &qword_1001D44B0);
      sub_10001370C(v18, &qword_1001D44B0);
      v34(v38, v3);
      sub_10001370C(v7, &qword_1001D44B0);
      return v29 & 1;
    }

    sub_10001370C(v16, &qword_1001D44B0);
    sub_10001370C(v18, &qword_1001D44B0);
    (*(v41 + 8))(v30, v3);
    goto LABEL_9;
  }

  sub_10001370C(v16, &qword_1001D44B0);
  sub_10001370C(v18, &qword_1001D44B0);
  if (v28(&v7[v27], 1, v3) != 1)
  {
LABEL_9:
    sub_10001370C(v7, &qword_1001DA458);
    v29 = 0;
    return v29 & 1;
  }

  sub_10001370C(v7, &qword_1001D44B0);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_10010F938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v95 = sub_1000033A8(&qword_1001DC0E0);
  v92 = *(v95 - 8);
  v3 = __chkstk_darwin(v95);
  v93 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v91 = &v71 - v5;
  v78 = sub_1000033A8(&qword_1001DC0E8);
  __chkstk_darwin(v78);
  v75 = &v71 - v6;
  v81 = sub_1000033A8(&qword_1001DC0F0);
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v76 = &v71 - v7;
  v82 = sub_1000033A8(&qword_1001DC0F8);
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = &v71 - v8;
  v9 = sub_1000033A8(&qword_1001DC100);
  v87 = *(v9 - 8);
  v88 = v9;
  __chkstk_darwin(v9);
  v74 = &v71 - v10;
  v11 = type metadata accessor for ResultLookupState();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v73 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000033A8(&qword_1001DB750);
  __chkstk_darwin(v13 - 8);
  v15 = &v71 - v14;
  v16 = sub_1000033A8(&qword_1001D4530);
  __chkstk_darwin(v16 - 8);
  v18 = &v71 - v17;
  v19 = type metadata accessor for CVBundle();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v85 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1000033A8(&qword_1001DC108);
  v22 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = &v71 - v23;
  v24 = type metadata accessor for AppConfiguration();
  __chkstk_darwin(v24 - 8);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000033A8(&qword_1001DC110);
  v28 = __chkstk_darwin(v27 - 8);
  v89 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v71 - v30;
  v32 = type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB7A0);
  State.wrappedValue.getter();
  v33 = AnnotationViewConfiguration.showPinsAndBoxes.getter();
  sub_10013E658(v26, type metadata accessor for AppConfiguration);
  v34 = 1;
  if (v33)
  {
    v72 = v31;
    v35 = (a1 + *(v32 + 52));
    v37 = *v35;
    v36 = v35[1];
    v96 = v37;
    v97 = v36;
    sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    v38 = sub_100149908();

    __chkstk_darwin(v39);
    *(&v71 - 2) = a1;
    sub_100071B7C(sub_100143968, v38, v18);

    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_10001370C(v18, &qword_1001D4530);
LABEL_4:
      v40 = v86;
      (*(v87 + 56))(v86, 1, 1, v88);
LABEL_10:
      v31 = v72;
      sub_10002091C(v40, v72, &qword_1001DC108);
      v34 = 0;
      goto LABEL_11;
    }

    v41 = *(v20 + 32);
    v71 = v19;
    v41(v85, v18, v19);
    sub_1000033A8(&qword_1001DB7A8);
    State.wrappedValue.getter();
    v43 = v83;
    v42 = v84;
    if ((*(v83 + 48))(v15, 1, v84))
    {
      v44 = sub_10001370C(v15, &qword_1001DB750);
    }

    else
    {
      v45 = v73;
      (*(v43 + 16))(v73, v15, v42);
      sub_10001370C(v15, &qword_1001DB750);
      v46 = sub_100156E68();
      v44 = (*(v43 + 8))(v45, v42);
      if (v46)
      {
        (*(v20 + 8))(v85, v71);
        goto LABEL_4;
      }
    }

    __chkstk_darwin(v44);
    v47 = v85;
    *(&v71 - 2) = v85;
    v48 = v75;
    Label.init(title:icon:)();
    v49 = static Font.subheadline.getter();
    KeyPath = swift_getKeyPath();
    v51 = v78;
    v52 = (v48 + *(v78 + 36));
    *v52 = KeyPath;
    v52[1] = v49;
    static Font.Weight.semibold.getter();
    v53 = sub_10013CD8C();
    v54 = v76;
    View.fontWeight(_:)();
    sub_10001370C(v48, &qword_1001DC0E8);
    v96 = v51;
    v97 = v53;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v56 = v77;
    v57 = v81;
    View.controlCapsuleStyle(isInverted:)();
    (*(v79 + 8))(v54, v57);
    v96 = v57;
    v97 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v58 = v74;
    v59 = v82;
    View.accessibilityIdentifier(_:)();
    (*(v80 + 8))(v56, v59);
    v40 = v86;
    sub_10002091C(v58, v86, &qword_1001DC100);
    (*(v87 + 56))(v40, 0, 1, v88);
    (*(v20 + 8))(v47, v71);
    goto LABEL_10;
  }

LABEL_11:
  (*(v22 + 56))(v31, v34, 1, v90);
  v60 = v91;
  sub_100110708(v91);
  v61 = v89;
  sub_1000138BC(v31, v89, &qword_1001DC110);
  v62 = v92;
  v63 = v93;
  v64 = *(v92 + 16);
  v65 = v95;
  v64(v93, v60, v95);
  v66 = v94;
  sub_1000138BC(v61, v94, &qword_1001DC110);
  v67 = sub_1000033A8(&qword_1001DC118);
  v68 = v66 + *(v67 + 48);
  *v68 = 0;
  *(v68 + 8) = 1;
  v64((v66 + *(v67 + 64)), v63, v65);
  v69 = *(v62 + 8);
  v69(v60, v65);
  sub_10001370C(v31, &qword_1001DC110);
  v69(v63, v65);
  return sub_10001370C(v61, &qword_1001DC110);
}

uint64_t sub_100110520@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CVDetection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  CVBundle.latestEstimate.getter();
  v10 = CVDetection.label.getter();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v20 = v10;
  v21 = v12;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10002EC9C();
  v13 = StringProtocol.trimmingCharacters(in:)();
  v15 = v14;
  (*(v3 + 8))(v5, v2);

  v20 = v13;
  v21 = v15;
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_100110708@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = type metadata accessor for ContentView();
  v3 = *(v2 - 8);
  v96 = v2 - 8;
  v89 = v3;
  v93 = *(v3 + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v88 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v97 = &v77 - v6;
  v7 = sub_1000033A8(&qword_1001DC138);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v77 - v9;
  v11 = sub_1000033A8(&qword_1001DC140);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v77 - v13;
  v15 = sub_1000033A8(&qword_1001DC148);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v77 - v17;
  v19 = sub_1000033A8(&qword_1001DC150);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v90 = (&v77 - v21);
  v22 = sub_1000033A8(&qword_1001DC158);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v91 = &v77 - v24;
  v81 = sub_1000033A8(&qword_1001DC160);
  __chkstk_darwin(v81);
  v92 = &v77 - v25;
  v82 = sub_1000033A8(&qword_1001DC168);
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v94 = &v77 - v26;
  v84 = sub_1000033A8(&qword_1001DC170);
  v85 = *(v84 - 8);
  __chkstk_darwin(v84);
  v95 = &v77 - v27;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v28 = sub_1000033A8(&qword_1001DC178);
  sub_1001169F8(v1, &v10[*(v28 + 44)]);
  *&v10[*(v8 + 44)] = 0x4034000000000000;
  v29 = v1;
  if (sub_100116914())
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.0;
  }

  sub_10002091C(v10, v14, &qword_1001DC138);
  *&v14[*(v12 + 44)] = v30;
  v31 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v32 = v96;
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  v33 = NewSaliencyModel.isAskingMontara.getter();

  sub_10002091C(v14, v18, &qword_1001DC140);
  v34 = &v18[*(v16 + 44)];
  *v34 = v31;
  v34[8] = v33 & 1;
  sub_100116914();
  v35 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v36 = sub_100116914();
  v37 = v90;
  sub_10002091C(v18, v90, &qword_1001DC148);
  v38 = v37 + *(v20 + 44);
  *v38 = v35;
  v38[8] = v36;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v39 = v91;
  sub_10002091C(v37, v91, &qword_1001DC150);
  v40 = (v39 + *(v23 + 44));
  v41 = v109;
  v40[4] = v108;
  v40[5] = v41;
  v40[6] = v110;
  v42 = v105;
  *v40 = v104;
  v40[1] = v42;
  v43 = v107;
  v40[2] = v106;
  v40[3] = v43;
  v44 = v92;
  sub_10002091C(v39, v92, &qword_1001DC158);
  v45 = v81;
  v46 = &v44[*(v81 + 36)];
  *v46 = 0x6C61626F6C67;
  *(v46 + 1) = 0xE600000000000000;
  v47 = v29 + *(v32 + 76);
  v48 = *v47;
  v49 = *(v47 + 8);
  v102 = v48;
  v103 = v49;
  v91 = sub_1000033A8(&qword_1001D3E88);
  State.projectedValue.getter();
  v79 = v98;
  v80 = v100;
  v87 = v29;
  v50 = v97;
  v90 = type metadata accessor for ContentView;
  sub_10013DAC8(v29, v97, type metadata accessor for ContentView);
  v51 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v52 = swift_allocObject();
  v89 = type metadata accessor for ContentView;
  sub_100136D64(v50, v52 + v51, type metadata accessor for ContentView);
  v53 = v88;
  sub_10013DAC8(v29, v88, type metadata accessor for ContentView);
  v54 = swift_allocObject();
  sub_100136D64(v53, v54 + v51, type metadata accessor for ContentView);
  v78 = sub_1000033A8(&qword_1001DC180);
  v55 = sub_10013CE8C();
  v88 = sub_10013D284();
  v56 = v92;
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_10001370C(v56, &qword_1001DC160);
  v57 = v87;
  v58 = v87 + *(v96 + 84);
  v59 = *v58;
  v60 = *(v58 + 8);
  v102 = v59;
  v103 = v60;
  State.projectedValue.getter();
  v61 = v57;
  v62 = v97;
  sub_10013DAC8(v61, v97, v90);
  v63 = swift_allocObject();
  sub_100136D64(v62, v63 + v51, v89);
  v98 = v45;
  v64 = v78;
  v99 = v78;
  v100 = v55;
  v101 = v88;
  v92 = &opaque type descriptor for <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v82;
  v67 = v94;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v83 + 8))(v67, v66);
  v68 = v87;
  v69 = v87 + *(v96 + 80);
  v70 = *v69;
  v71 = *(v69 + 8);
  v102 = v70;
  v103 = v71;
  State.projectedValue.getter();
  v72 = v97;
  sub_10013DAC8(v68, v97, v90);
  v73 = swift_allocObject();
  sub_100136D64(v72, v73 + v51, v89);
  type metadata accessor for SiriSetupViewController();
  v98 = v66;
  v99 = v64;
  v100 = OpaqueTypeConformance2;
  v101 = v88;
  swift_getOpaqueTypeConformance2();
  sub_10013FB34(&qword_1001DC1E8, &type metadata accessor for SiriSetupViewController);
  v74 = v84;
  v75 = v95;
  View.sheet<A>(isPresented:onDismiss:content:)();

  return (*(v85 + 8))(v75, v74);
}

char *sub_1001112C8()
{
  v1 = sub_1000033A8(&qword_1001D44C8);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = (v0 + *(type metadata accessor for ContentView() + 52));
  v6 = *v4;
  v5 = v4[1];
  v13[0] = v6;
  v13[1] = v5;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v7 = v13[3];
  swift_getKeyPath();
  v13[0] = v7;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC6Tamale16CameraController__selectedSubject;
  swift_beginAccess();
  sub_1000138BC(v7 + v8, v3, &qword_1001D44C8);

  v9 = type metadata accessor for ActionPin();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    sub_10001370C(v3, &qword_1001D44C8);
    return 0;
  }

  else
  {
    v12 = sub_1000F5750();
    (*(v10 + 8))(v3, v9);
    return v12;
  }
}

uint64_t sub_1001114D4@<X0>(char *a1@<X8>)
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DBB88);
  result = State.wrappedValue.getter();
  if (v6 == 1 && (sub_1000033A8(&qword_1001D3E88), State.wrappedValue.getter(), sub_1000033A8(&qword_1001DB778), Bindable.wrappedValue.getter(), v3 = NewSaliencyModel.shouldPeekForPresentedEntity.getter(), result = , (v3 & 1) != 0) && (result = State.wrappedValue.getter(), v6 == 1) && (Bindable.wrappedValue.getter(), v4 = NewSaliencyModel.presentedEntity.getter(), result = , v4))
  {

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_100111664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v44 = a3;
  v4 = type metadata accessor for ContentView();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000033A8(&qword_1001D6DC0);
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  if (NewActionModel.isPartneredSearchAction.getter())
  {
    v39 = a1;
    static Log.imageSearch.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Search selected", v18, 2u);
    }

    (*(v10 + 8))(v15, v9);
    v19 = (v44 + *(v4 + 52));
    v20 = *v19;
    v21 = v19[1];
    v46 = *v19;
    v47 = v21;
    sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    v22 = v45;
    swift_getKeyPath();
    v46 = v22;
    sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = (v22 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
    v24 = *(v22 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
    if (v24 == 1)
    {
    }

    else
    {
      v33 = *v23;
      v34 = v23[1];
      sub_100060424(*v23, v34, *(v22 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

      if (v24 != 3 || v33 != 2 || v34)
      {
        v35 = sub_1000616E4(v33, v34, v24);
        __chkstk_darwin(v35);
        v25 = v44;
        *(&v39 - 2) = v44;
        static Animation.default.getter();
        goto LABEL_16;
      }
    }

    v25 = v44;
    sub_100136E04();
    v46 = v20;
    v47 = v21;
    State.wrappedValue.getter();
    static LoggingSignposter.cameraControllerPause.getter();
    default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
    LoggingSignposter.emitEvent(_:shouldLog:)();
    v46 = 2;
    LOBYTE(v47) = 2;
    sub_1000033A8(&qword_1001D6DC8);
    AsyncStream.Continuation.yield(_:)();

    v26 = (*(v40 + 8))(v8, v6);
    __chkstk_darwin(v26);
    *(&v39 - 2) = v25;
    static Animation.default.getter();
LABEL_16:
    withAnimation<A>(_:_:)();

    v36 = v42;
    sub_10013DAC8(v25, v42, type metadata accessor for ContentView);
    v37 = (*(v41 + 80) + 24) & ~*(v41 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v43;
    sub_100136D64(v36, v38 + v37, type metadata accessor for ContentView);
    *(v38 + ((v5 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v39;

    static AfterUnlock.perform(_:onFailure:)();
  }

  v27 = NewActionModel.isPartneredAskAction.getter();
  if (v27)
  {
    static Log.acme.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Ask Montara selected", v30, 2u);
    }

    v27 = (*(v10 + 8))(v13, v9);
  }

  __chkstk_darwin(v27);
  v31 = v43;
  *(&v39 - 4) = v44;
  *(&v39 - 3) = a1;
  *(&v39 - 2) = v31;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100111D30()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100111DA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000033A8(&qword_1001DC400);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - v4;
  NewEntityModel.cardModel.getter();
  v6 = (a2 + *(type metadata accessor for ContentView() + 52));
  v8 = *v6;
  v7 = v6[1];
  v15[2] = v8;
  v15[3] = v7;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();

  type metadata accessor for CameraControllerConfiguration.Storage();
  sub_10013FB34(&qword_1001D6058, type metadata accessor for CameraControllerConfiguration.Storage);
  v9 = ConfigStorage.hasOnboardedImageSearch.getter();

  if (v9)
  {
    v10 = type metadata accessor for FeatureOnboardingOverlayExperience();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    CardModel.onboardingExperience.setter();
    CardModel.isSearchCollapsed.setter();
  }

  else
  {
    v11 = enum case for FeatureOnboardingOverlayExperience.imageSearch(_:);
    v12 = type metadata accessor for FeatureOnboardingOverlayExperience();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v5, v11, v12);
    (*(v13 + 56))(v5, 0, 1, v12);
    CardModel.onboardingExperience.setter();
  }

  NewEntityModel.prepareForPresentationOfAction(_:)();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();

  NewSaliencyModel.presentedEntity.setter();
}

uint64_t sub_100112058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000033A8(&qword_1001DBBA8);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = enum case for ActionAnalytics.ActionSource.omnibar(_:);
  v9 = type metadata accessor for ActionAnalytics.ActionSource();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v7, v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  sub_100137530(a2, a3, v7);
  return sub_10001370C(v7, &qword_1001DBBA8);
}

uint64_t sub_1001121A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = sub_1000033A8(&qword_1001DC040);
  __chkstk_darwin(v3);
  v5 = v65 - v4;
  v6 = type metadata accessor for UUID();
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = __chkstk_darwin(v6);
  v76 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = v65 - v9;
  v10 = sub_1000033A8(&qword_1001D5668);
  v74 = *(v10 - 8);
  v75 = v10;
  __chkstk_darwin(v10);
  v72 = v65 - v11;
  v12 = type metadata accessor for ContentView();
  v13 = v12 - 8;
  v71 = *(v12 - 8);
  __chkstk_darwin(v12);
  v80 = v14;
  v73 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v82 = sub_1000033A8(&qword_1001DC048);
  __chkstk_darwin(v82);
  v18 = (v65 - v17);
  v19 = sub_1000033A8(&qword_1001DC050);
  v20 = __chkstk_darwin(v19 - 8);
  v83 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v81 = v65 - v22;
  v23 = a1;
  v24 = a1 + *(v13 + 204);
  v25 = *v24;
  v26 = *(v24 + 8);
  LOBYTE(v86) = *v24;
  v87 = v26;
  sub_1000033A8(&qword_1001DBB80);
  State.wrappedValue.getter();
  if (v85 == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v27 = String.init(localized:table:bundle:locale:comment:)();
    v29 = v28;
    *v18 = swift_getKeyPath();
    sub_1000033A8(&qword_1001D4DC0);
    swift_storeEnumTagMultiPayload();
    v30 = sub_1000033A8(&qword_1001DC078);
    v31 = (v18 + v30[13]);
    v68 = v18;
    *v31 = v27;
    v31[1] = v29;
    v65[3] = v30[14];
    v65[2] = LocalizedStringKey.init(stringLiteral:)();
    v70 = v3;
    v65[1] = v32;
    v69 = v5;
    v65[0] = v33;
    v67 = type metadata accessor for ContentView;
    v34 = v23;
    v35 = v23;
    v66 = v23;
    v36 = v73;
    sub_10013DAC8(v35, v73, type metadata accessor for ContentView);
    v37 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v38 = swift_allocObject();
    sub_100136D64(v36, v38 + v37, type metadata accessor for ContentView);
    Button<>.init(_:action:)();
    v71 = v30[15];
    LocalizedStringKey.init(stringLiteral:)();
    v39 = v34;
    v40 = v67;
    sub_10013DAC8(v39, v36, v67);
    v41 = swift_allocObject();
    sub_100136D64(v36, v41 + v37, type metadata accessor for ContentView);
    v42 = v72;
    Button<>.init(_:action:)();
    v44 = v74;
    v43 = v75;
    v45 = v68;
    v46 = v71;
    (*(v74 + 32))(v68 + v71, v42, v75);
    (*(v44 + 56))(v45 + v46, 0, 1, v43);
    sub_10013DAC8(v66, v36, v40);
    v47 = swift_allocObject();
    sub_100136D64(v36, v47 + v37, type metadata accessor for ContentView);
    v48 = v45 + *(v82 + 36);
    v49 = v45;
    *v48 = 257;
    *(v48 + 8) = sub_10013CA38;
    *(v48 + 16) = v47;
    v85 = 0;

    State.init(wrappedValue:)();
    v50 = v87;
    *(v48 + 24) = v86;
    *(v48 + 32) = v50;
    LOBYTE(v85) = 0;
    State.init(wrappedValue:)();
    v51 = v87;
    *(v48 + 40) = v86;
    *(v48 + 48) = v51;
    v85 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v52 = v87;
    *(v48 + 56) = v86;
    *(v48 + 64) = v52;
    v85 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v53 = v87;
    *(v48 + 72) = v86;
    *(v48 + 80) = v53;
    v85 = 0;
    State.init(wrappedValue:)();
    v54 = v87;
    *(v48 + 88) = v86;
    *(v48 + 96) = v54;
    type metadata accessor for SwipeToDismissModifier();
    v55 = v77;
    UUID.init()();
    v57 = v78;
    v56 = v79;
    (*(v78 + 16))(v76, v55, v79);
    State.init(wrappedValue:)();

    (*(v57 + 8))(v55, v56);
    sub_1000138BC(v49, v69, &qword_1001DC048);
    swift_storeEnumTagMultiPayload();
    sub_10013C920();
    v58 = v81;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v49, &qword_1001DC048);
  }

  else
  {
    v58 = v81;
    LOBYTE(v86) = v25;
    v87 = v26;
    State.wrappedValue.getter();
    if (v85 != 2)
    {
      v59 = 1;
      goto LABEL_7;
    }

    swift_storeEnumTagMultiPayload();
    sub_10013C920();
    _ConditionalContent<>.init(storage:)();
  }

  v59 = 0;
LABEL_7:
  v60 = sub_1000033A8(&qword_1001DC058);
  (*(*(v60 - 8) + 56))(v58, v59, 1, v60);
  v61 = v83;
  sub_1000138BC(v58, v83, &qword_1001DC050);
  v62 = v84;
  sub_1000138BC(v61, v84, &qword_1001DC050);
  v63 = v62 + *(sub_1000033A8(&qword_1001DC060) + 48);
  sub_10001370C(v58, &qword_1001DC050);
  *v63 = 0;
  *(v63 + 8) = 1;
  return sub_10001370C(v61, &qword_1001DC050);
}

uint64_t sub_100112BA0(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D51D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for EnvironmentValues();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v35 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v11;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Location access button was tapped", v19, 2u);
    v11 = v31;
  }

  (*(v14 + 8))(v16, v13);
  URL.init(string:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10001370C(v9, &qword_1001D8020);
  }

  else
  {
    v20 = v35;
    (*(v11 + 32))(v35, v9, v10);
    v21 = *(a1 + 64);
    if (*(a1 + 80) == 1)
    {
    }

    else
    {

      static os_log_type_t.fault.getter();
      v22 = a1;
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      a1 = v22;
      v24 = v32;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000357B8();
      (*(v33 + 8))(v24, v34);
      v21 = v37;
    }

    OpenSensitiveURLOptions.init(promptForUnlock:)();
    v25 = type metadata accessor for OpenSensitiveURLOptions();
    (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
    v21(v20, v4);

    sub_10001370C(v4, &qword_1001D51D8);
    (*(v11 + 8))(v20, v10);
  }

  v26 = type metadata accessor for ContentView();
  dispatch thunk of UserDefaultsUtility.hasPresentedGeoLookupFollowUpPrompt.setter();
  v27 = (a1 + *(v26 + 196));
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v37) = v28;
  v38 = v29;
  v36 = 0;
  sub_1000033A8(&qword_1001DBB80);
  return State.wrappedValue.setter();
}

uint64_t sub_1001130C4()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DBB80);
  State.wrappedValue.setter();
  return dispatch thunk of UserDefaultsUtility.hasPresentedGeoLookupFollowUpPrompt.setter();
}

uint64_t sub_100113150()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DBB80);
  State.wrappedValue.setter();
  return dispatch thunk of UserDefaultsUtility.hasPresentedGeoLookupFollowUpPrompt.setter();
}

uint64_t sub_1001131DC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Log.ui.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Resetting look up states due to a tap outside of an in-progress or finished result.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_1001133B0();
  static Animation.spring(response:dampingFraction:blendDuration:)();
  Animation.speed(_:)();

  __chkstk_darwin(v9);
  *&v11[-16] = a1;
  withAnimation<A>(_:_:)();
}

uint64_t sub_1001133B0()
{
  v0 = type metadata accessor for GeoLookupResultBusiness();
  v25 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v24 - v4;
  v6 = sub_1000033A8(&qword_1001DB750);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for GeoLookupState();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB7A8);
  State.wrappedValue.getter();
  v16 = type metadata accessor for ResultLookupState();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    return sub_10001370C(v8, &qword_1001DB750);
  }

  if ((*(v17 + 88))(v8, v16) != enum case for ResultLookupState.geoLookup(_:))
  {
    return (*(v17 + 8))(v8, v16);
  }

  (*(v17 + 96))(v8, v16);
  (*(v10 + 32))(v15, v8, v9);
  (*(v10 + 16))(v13, v15, v9);
  if ((*(v10 + 88))(v13, v9) == enum case for GeoLookupState.finished(_:))
  {
    (*(v10 + 96))(v13, v9);
    v19 = sub_1000033A8(&qword_1001DC2A0);

    v20 = *&v13[*(v19 + 64)];

    v21 = type metadata accessor for GeoLocationEstimate();
    (*(*(v21 - 8) + 8))(v13, v21);
    if (*(v20 + 16) == 1)
    {
      v22 = v25;
      (*(v25 + 16))(v3, v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v0);

      (*(v22 + 32))(v5, v3, v0);
      static MapsAnalyticsReporter.dismissedResultSnippet(result:)();
      (*(v22 + 8))(v5, v0);
    }

    else
    {
      static MapsAnalyticsReporter.dismissedDisambiguationList(results:)();
    }

    return (*(v10 + 8))(v15, v9);
  }

  else
  {
    v23 = *(v10 + 8);
    v23(v15, v9);
    return (v23)(v13, v9);
  }
}

uint64_t sub_100113860()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DBB80);
  return State.wrappedValue.setter();
}

uint64_t sub_1001138D8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for ContentView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_1000033A8(&qword_1001DC440);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  MagnifyGesture.init(minimumScaleDelta:)();
  v9 = v1 + *(v3 + 108);
  v20 = v1;
  v10 = *(v9 + 8);
  v26 = *v9;
  v27 = v10;
  v28 = *(v9 + 16);
  sub_1000033A8(&qword_1001DC448);
  GestureState.projectedValue.getter();
  v11 = v23;
  v12 = v24;
  v19 = v25;
  sub_10013DAC8(v1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_100136D64(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ContentView);
  v21 = v6;
  v15 = &v8[*(v6 + 44)];
  *v15 = v11;
  *(v15 + 1) = v12;
  *(v15 + 1) = v19;
  v16 = &v8[*(v6 + 48)];
  *v16 = sub_100140940;
  *(v16 + 1) = v14;
  sub_10013DAC8(v20, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v17 = swift_allocObject();
  sub_100136D64(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v13, type metadata accessor for ContentView);
  sub_100013608(&qword_1001DC450, &qword_1001DC440);
  Gesture.onEnded(_:)();

  return sub_10001370C(v8, &qword_1001DC440);
}

uint64_t sub_100113BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for AccessibilityAdjustmentDirection();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for AccessibilityAdjustmentDirection.increment(_:))
  {
    v15 = (a2 + *(v4 + 104));
    v16 = *v15;
    v17 = v15[1];
    v32 = *v15;
    v33 = v17;
    sub_1000033A8(&qword_1001D48E0);
    State.wrappedValue.getter();
    v18 = v31 + 0.1;
    if (v31 + 0.1 > 1.5)
    {
      v18 = 1.5;
    }
  }

  else
  {
    if (v14 != enum case for AccessibilityAdjustmentDirection.decrement(_:))
    {
      (*(v11 + 8))(v13, v10);
      goto LABEL_10;
    }

    v19 = (a2 + *(v4 + 104));
    v16 = *v19;
    v17 = v19[1];
    v32 = *v19;
    v33 = v17;
    sub_1000033A8(&qword_1001D48E0);
    State.wrappedValue.getter();
    v18 = v31 + -0.1;
    if (v31 + -0.1 <= 0.5)
    {
      v18 = 0.5;
    }
  }

  v31 = v18;
  v32 = v16;
  v33 = v17;
  State.wrappedValue.setter();
LABEL_10:
  v20 = (a2 + *(v4 + 104));
  v21 = *v20;
  v22 = v20[1];
  v32 = v21;
  v33 = v22;
  sub_1000033A8(&qword_1001D48E0);
  State.wrappedValue.getter();
  v23 = v31;
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  sub_10013DAC8(a2, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  type metadata accessor for MainActor();
  v25 = static MainActor.shared.getter();
  v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = &protocol witness table for MainActor;
  sub_100136D64(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for ContentView);
  v28 = v27 + ((v6 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v28 = v23;
  *(v28 + 8) = 0;
  sub_1000154EC(0, 0, v9, &unk_10017C478, v27);
}

uint64_t sub_100113FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 216) = a6;
  *(v6 + 64) = a4;
  *(v6 + 72) = a5;
  *(v6 + 80) = type metadata accessor for MainActor();
  *(v6 + 88) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 96) = v8;
  *(v6 + 104) = v7;

  return _swift_task_switch(sub_100114068, v8, v7);
}

uint64_t sub_100114068()
{
  v1 = v0[8];
  v2 = (v1 + *(type metadata accessor for ContentView() + 52));
  v3 = *v2;
  v0[14] = *v2;
  v4 = v2[1];
  v0[15] = v4;
  v0[2] = v3;
  v0[3] = v4;
  v0[16] = sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v0[17] = v0[6];
  v0[18] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[19] = v6;
  v0[20] = v5;

  return _swift_task_switch(sub_10011414C, v6, v5);
}

uint64_t sub_10011414C()
{
  v1 = *(v0 + 216);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_1001141F0;
  v3 = *(v0 + 72);

  return sub_1000E6D70(v3, v1 & 1);
}

uint64_t sub_1001141F0()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100114310, v3, v2);
}

uint64_t sub_100114310()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return _swift_task_switch(sub_10011437C, v1, v2);
}

uint64_t sub_10011437C()
{
  v1 = v0[15];
  v0[4] = v0[14];
  v0[5] = v1;
  State.wrappedValue.getter();
  v0[22] = v0[7];
  v0[23] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[24] = v3;
  v0[25] = v2;

  return _swift_task_switch(sub_10011442C, v3, v2);
}

uint64_t sub_10011442C()
{
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_1001144C8;

  return sub_1000E6D70(0, 1);
}

uint64_t sub_1001144C8()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return _swift_task_switch(sub_1001145E8, v3, v2);
}

uint64_t sub_1001145E8()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return _swift_task_switch(sub_100114654, v1, v2);
}

uint64_t sub_100114654()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001146B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v69 = type metadata accessor for OpacityTransition();
  v68 = *(v69 - 8);
  v3 = __chkstk_darwin(v69);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v67 = &v60 - v5;
  v62 = type metadata accessor for Image.ResizingMode();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001DBC60);
  __chkstk_darwin(v8 - 8);
  v64 = &v60 - v9;
  v71 = sub_1000033A8(&qword_1001DBC68);
  v10 = __chkstk_darwin(v71);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v65 = &v60 - v12;
  v70 = sub_1000033A8(&qword_1001DBC70);
  __chkstk_darwin(v70);
  v14 = &v60 - v13;
  v15 = sub_1000033A8(&qword_1001DBC78);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  v18 = type metadata accessor for ContentView();
  v19 = (a1 + v18[34]);
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v78) = *v19;
  *(&v78 + 1) = v21;
  sub_1000033A8(&qword_1001DBB70);
  State.wrappedValue.getter();
  if (v73 == 2)
  {
    v22 = (a1 + v18[21]);
    v23 = *(v22 + 16);
    v24 = *(v22 + 3);
    v78 = *v22;
    LOBYTE(v79) = v23;
    *(&v79 + 1) = v24;
    sub_1000033A8(&qword_1001DBBC0);
    State.wrappedValue.getter();
    v25 = *(&v73 + 1);
    v69 = v73;
    LODWORD(v68) = v74[0];
    LOBYTE(v73) = v20;
    *(&v73 + 1) = v21;
    State.projectedValue.getter();
    v26 = v78;
    v27 = v79;
    v28 = (a1 + v18[74]);
    v29 = *v28;
    v30 = *(v28 + 1);
    LOBYTE(v73) = v29;
    *(&v73 + 1) = v30;
    sub_1000033A8(&qword_1001D3E88);
    State.projectedValue.getter();
    v31 = v78;
    v32 = v79;
    LOBYTE(v73) = 0;
    State.init(wrappedValue:)();
    *&v73 = v69;
    *(&v73 + 1) = v25;
    v74[0] = v68;
    *&v74[8] = v26;
    v74[24] = v27;
    v75 = v31;
    LOBYTE(v76) = v32;
    BYTE8(v76) = v78;
    v77 = *(&v78 + 1);
    sub_10013AD2C();
    View.accessibilityIdentifier(_:)();
    v81 = v75;
    v82 = v76;
    v83 = v77;
    v78 = v73;
    v79 = *v74;
    v80 = *&v74[16];
    sub_10013AEF4(&v78);
    static AnyTransition.identity.getter();
    static AnyTransition.opacity.getter();
    v33 = static AnyTransition.asymmetric(insertion:removal:)();

    *&v17[*(v15 + 36)] = v33;
    sub_1000138BC(v17, v14, &qword_1001DBC78);
    swift_storeEnumTagMultiPayload();
    sub_10013ABB8();
    sub_10013AD80();
    v34 = v72;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v17, &qword_1001DBC78);
    v35 = sub_1000033A8(&qword_1001DBC80);
    return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  }

  else
  {
    v37 = v71;
    LOBYTE(v78) = v20;
    *(&v78 + 1) = v21;
    State.wrappedValue.getter();
    if (v73 == 3)
    {
      v78 = *(a1 + v18[22]);
      sub_1000033A8(&qword_1001DBB78);
      State.wrappedValue.getter();
      if (v73)
      {
        v38 = v37;
        v39 = v14;
      }

      else
      {
        v53 = (a1 + v18[21]);
        v54 = *(v53 + 16);
        v55 = *(v53 + 3);
        v78 = *v53;
        LOBYTE(v79) = v54;
        *(&v79 + 1) = v55;
        sub_1000033A8(&qword_1001DBBC0);
        State.wrappedValue.getter();
        v38 = v37;
        if (v74[0])
        {
          v56 = *(&v73 + 1);
          v39 = v14;
          if (v74[0] == 1)
          {
            v57 = v73;
            v73;
            sub_10002A2AC(v57, v56, 1);
          }

          else
          {
            if (v73 > 1)
            {
              if (v73 ^ 2 | *(&v73 + 1))
              {
                if (qword_1001D3168 != -1)
                {
                  swift_once();
                }

                v58 = qword_1001EB538;
              }

              else
              {
                if (qword_1001D3160 != -1)
                {
                  swift_once();
                }

                v58 = qword_1001EB530;
              }
            }

            else if (v73 == 0)
            {
              if (qword_1001D3150 != -1)
              {
                swift_once();
              }

              v58 = qword_1001EB520;
            }

            else
            {
              if (qword_1001D3158 != -1)
              {
                swift_once();
              }

              v58 = qword_1001EB528;
            }

            v59 = v58;
          }
        }

        else
        {
          v39 = v14;
        }
      }

      Image.init(uiImage:)();
      v40 = v61;
      v41 = v62;
      (*(v61 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v62);
      v42 = Image.resizable(capInsets:resizingMode:)();

      (*(v40 + 8))(v7, v41);
      v78 = v42;
      LOWORD(v79) = 257;
      sub_1000033A8(&qword_1001D3E28);
      sub_100013360();
      v43 = v64;
      View.accessibilityIdentifier(_:)();

      v44 = v67;
      OpacityTransition.init()();
      v45 = v68;
      v46 = v69;
      (*(v68 + 16))(v66, v44, v69);
      sub_10013FB34(&qword_1001D4E70, &type metadata accessor for OpacityTransition);
      v47 = AnyTransition.init<A>(_:)();
      (*(v45 + 8))(v44, v46);
      v48 = v63;
      sub_10002091C(v43, v63, &qword_1001DBC60);
      *(v48 + *(v38 + 36)) = v47;
      v49 = v65;
      sub_10002091C(v48, v65, &qword_1001DBC68);
      sub_1000138BC(v49, v39, &qword_1001DBC68);
      swift_storeEnumTagMultiPayload();
      sub_10013ABB8();
      sub_10013AD80();
      v50 = v72;
      _ConditionalContent<>.init(storage:)();
      sub_10001370C(v49, &qword_1001DBC68);
      v51 = sub_1000033A8(&qword_1001DBC80);
      return (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
    }

    else
    {
      v52 = sub_1000033A8(&qword_1001DBC80);
      return (*(*(v52 - 8) + 56))(v72, 1, 1, v52);
    }
  }
}