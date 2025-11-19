uint64_t sub_1000444AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v5 = *(v0 + 32);
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_3:
    v7 = sub_100044EAC();
    v8 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscript;
    swift_beginAccess();
    *(v0 + v8) = v7;

    UUID.init()();
    sub_10004013C(v4, 0, 0xE000000000000000, 1);
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_100044600()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = v0[4];
  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v4 = result;
    if (!result)
    {
LABEL_12:
      v8 = v1[3];
      if (v8 >> 62)
      {
        type metadata accessor for TryOutTranscriptItem(0);

        v9 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for TryOutTranscriptItem(0);
        v9 = v8;
      }

      v10 = v1[4];
      if (v10 >> 62)
      {
        type metadata accessor for TryOutTranscriptItem(0);

        v11 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for TryOutTranscriptItem(0);
        v11 = v10;
      }

      sub_1000EC760(v11);
      v12 = v9;
      v13 = v1[5];
      if (v13 >> 62)
      {
        type metadata accessor for TryOutTranscriptItem(0);

        v14 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for TryOutTranscriptItem(0);
        v14 = v13;
      }

      sub_1000EC760(v14);
      v1[6] = v12;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (v4 >= 1)
  {

    v5 = 0;
    v6 = 0;
    while ((v3 & 0xC000000000000001) == 0)
    {
      v7 = *(v3 + 8 * v6 + 32);

      if (v5)
      {
        goto LABEL_10;
      }

LABEL_5:
      ++v6;
      *(v7 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage) = 1;
      v5 = v7;
      if (v4 == v6)
      {

        goto LABEL_12;
      }
    }

    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_10:
    *(v5 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage) = (*(v5 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_sender) ^ *(v7 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_sender)) & 1;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_100044900()
{
  sub_10000EBF8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000449F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for DispatchTime();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100044B2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for DispatchTime();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100044C74(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100044CAC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DispatchTime();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100044D70()
{
  result = qword_100357170;
  if (!qword_100357170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357170);
  }

  return result;
}

id sub_100044DC4()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = 0;
  v2 = [v0 initWithDictionary:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100044EAC()
{
  sub_1000040A8(&qword_100357178);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10027A620;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v35._object = 0x8000000100297B50;
  v3._countAndFlagsBits = 0x1000000000000108;
  v3._object = 0x8000000100297A40;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0xD000000000000036;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v35);

  v6 = [v1 mainBundle];
  v7._countAndFlagsBits = 0xD000000000000016;
  v36._object = 0x8000000100297BB0;
  v7._object = 0x8000000100297B90;
  v36._countAndFlagsBits = 0xD00000000000004FLL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v36);

  *(v0 + 32) = v5;
  *(v0 + 48) = v9;
  v10 = [v1 mainBundle];
  v37._object = 0x8000000100297CB0;
  v11._countAndFlagsBits = 0x10000000000000A5;
  v11._object = 0x8000000100297C00;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0xD000000000000036;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v37);

  v14 = [v1 mainBundle];
  v38._object = 0x8000000100297D20;
  v15._object = 0x8000000100297CF0;
  v38._countAndFlagsBits = 0xD00000000000004FLL;
  v15._countAndFlagsBits = 0xD000000000000027;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v38);

  *(v0 + 64) = v13;
  *(v0 + 80) = v17;
  v18 = [v1 mainBundle];
  v39._object = 0x8000000100297DF0;
  v19._object = 0x8000000100297D70;
  v19._countAndFlagsBits = 0x1000000000000075;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0xD000000000000036;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v39);

  v22 = [v1 mainBundle];
  v40._object = 0x8000000100297E60;
  v23._object = 0x8000000100297E30;
  v40._countAndFlagsBits = 0xD00000000000004FLL;
  v23._countAndFlagsBits = 0xD000000000000027;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v40);

  *(v0 + 96) = v21;
  *(v0 + 112) = v25;
  v26 = [v1 mainBundle];
  v41._object = 0x8000000100297FC0;
  v27._countAndFlagsBits = 0x100000000000010BLL;
  v27._object = 0x8000000100297EB0;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0xD000000000000036;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v41);

  v30 = [v1 mainBundle];
  v42._object = 0x8000000100298060;
  v31._countAndFlagsBits = 0xD000000000000054;
  v31._object = 0x8000000100298000;
  v42._countAndFlagsBits = 0xD00000000000004FLL;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v42);

  *(v0 + 128) = v29;
  *(v0 + 144) = v33;
  return v0;
}

uint64_t sub_1000452CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100045310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045374(uint64_t a1)
{
  v2 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100045414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045478()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000454B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100045584()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_100043658(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000455F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100045608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100357180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045680()
{

  return _swift_deallocObject(v0, 32, 7);
}

_OWORD *sub_1000456C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100045708(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ConnectionAssistantArrowRenderer.init(device:buffers:renderPipelines:)(void *a1, uint64_t a2)
{
  if (![a1 newBufferWithLength:96 options:1])
  {
    sub_100022AD4();
    swift_allocError();
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return a2;
}

uint64_t ConnectionAssistantArrowRenderer.render(arrow:earthCenter:camera:destination:renderCommandEncoder:)(uint64_t a1, float32x4_t *a2, void *a3, void *a4, uint64_t a5, float32x4_t a6, uint64_t a7, void *a8)
{
  result = ConnectionAssistantArrow.project(center:camera:)(a2, a6);
  if ((v14 & 0x100000000) == 0)
  {
    v15 = result;
    v16 = *&v14;
    v17 = a2->i64[0];
    v18 = *a2[1].i64;
    v19 = a2->i64[1];
    v20 = ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(v17, v19, v18);
    v21 = *(a1 + 40);
    v38 = *(a1 + 48);
    v22 = *(a1 + 64);
    v23 = [swift_unknownObjectRetain() contents];
    v24 = a8;
    *v23 = v20;
    *(v23 + 4) = *a1;
    *(v23 + 2) = v15;
    *(v23 + 6) = v16;
    *(v23 + 28) = *(a1 + 16);
    *(v23 + 44) = *(a1 + 32);
    *(v23 + 13) = v21;
    *(v23 + 4) = v38;
    *(v23 + 20) = v22;
    result = sub_100254A80(6);
    if (result)
    {
      v25 = result;
      v26 = String._bridgeToObjectiveC()();
      [a4 setLabel:v26];

      [a4 setRenderPipelineState:v25];
      v27 = ConnectionAssistantArrow.boundingBox(pointSize:projection:)(v20, v15, v16);
      v29 = v28;
      v30 = [a3 width];
      v31 = [a3 height];
      v32 = 1.0;
      v33.i32[0] = 1.0;
      if (v17)
      {
        v33.i32[0] = 1.0;
        if (v19)
        {
          v34 = v17 / v19;
          v32 = fminf(v34, 1.0);
          v33.f32[0] = fmaxf(v34, 1.0);
        }
      }

      v33.f32[1] = 1.0 / v32;
      v40[0] = sub_1000FFA74(v30, v31, v27, v29, v33);
      v40[1] = v35;
      v40[2] = v36;
      v40[3] = v37;
      [a4 setScissorRect:v40];
      [a4 setVertexBuffer:*(a5 + 24) offset:0 atIndex:0];
      [a4 setVertexBuffer:*(a5 + 32) offset:0 atIndex:1];
      [a4 setFragmentBuffer:a8 offset:0 atIndex:0];
      [a4 drawPrimitives:4 vertexStart:0 vertexCount:4];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100045AEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100045B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100045B84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  v22 = a1;
  v5 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v26 = sub_1000040A8(&qword_1003560A0);
  v30 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v21 - v8;
  v31 = *(a1 + 24);
  sub_10000F574();

  v10 = static OS_dispatch_queue.main.getter();
  v32 = v10;
  v11 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v12 = *(v11 - 8);
  v27 = *(v12 + 56);
  v28 = v12 + 56;
  v27(v7, 1, 1, v11);
  v25 = sub_1000040A8(&unk_100365610);
  v24 = sub_100009274(&qword_10035CF60, &unk_100365610);
  v23 = sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100026894(v7);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v3;
  v22 = sub_100009274(&qword_10035CF70, &qword_1003560A0);

  v15 = v26;
  Publisher<>.sink(receiveValue:)();

  v16 = *(v30 + 8);
  v30 += 8;
  v21 = v16;
  v16(v9, v15);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v31 = *(v29 + 24);

  v17 = static OS_dispatch_queue.main.getter();
  v32 = v17;
  v27(v7, 1, 1, v11);
  Publisher.receive<A>(on:options:)();
  sub_100026894(v7);

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v3;

  Publisher<>.sink(receiveValue:)();

  v21(v9, v15);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100045FF0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100046280(result);
  }

  return result;
}

uint64_t sub_100046048()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000460A4(result);
  }

  return result;
}

uint64_t sub_1000460A4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
  }

  else
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  if (String.count.getter() >= 1)
  {
    v5 = *(v1 + 32);
    if (!v5 || (*(v1 + 24) != v4 || v5 != v3) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v6 = UIAccessibilityAnnouncementNotification;

      v7 = String._bridgeToObjectiveC()();

      UIAccessibilityPostNotification(v6, v7);

      *(v1 + 24) = v4;
      *(v1 + 32) = v3;
    }
  }
}

uint64_t sub_100046190()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000461F4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046238()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100046280(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v2 = *(a1 + 58);
    if (v2 == 2 || (v2 & 1) == 0)
    {
      v3 = (a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing);
      if ((*(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24) & 1) == 0)
      {
        v4 = *v3;
        if (*v3 < 0.0)
        {
          v5 = -*v3;
        }

        else
        {
          v5 = *v3;
        }

        sub_1000040A8(&unk_100357278);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100279170;
        *(inited + 32) = 7955819;
        v7 = 0xD000000000000016;
        if (v5 <= 0.785398163)
        {
          v8 = "cachedAnnouncedMessage";
        }

        else
        {
          v7 = 0xD00000000000001ALL;
          v8 = "STEWIE_TARGET_IN_RANGE";
        }

        *(inited + 40) = 0xE300000000000000;
        *(inited + 48) = v7;
        *(inited + 56) = v8 | 0x8000000000000000;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 0x676E6964616568;
        *(inited + 88) = 0xE700000000000000;
        *(inited + 120) = &type metadata for Double;
        *(inited + 96) = v4 * 57.2957795;
        sub_1002559FC(inited);
        swift_setDeallocating();
        sub_1000040A8(&unk_10036A000);
        swift_arrayDestroy();
        v9 = UIAccessibilityAnnouncementNotification;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        UIAccessibilityPostNotification(v9, isa);
      }
    }
  }
}

uint64_t sub_10004644C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 272) = a8;
  *(v8 + 280) = v13;
  *(v8 + 464) = a7;
  *(v8 + 256) = a5;
  *(v8 + 264) = a6;
  *(v8 + 248) = a4;
  sub_1000040A8(&qword_100357468);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v8 + 312) = v9;
  *(v8 + 320) = *(v9 - 8);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  v10 = type metadata accessor for DispatchTime();
  *(v8 + 344) = v10;
  *(v8 + 352) = *(v10 - 8);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();

  return (_swift_task_switch)(sub_1000465F0, 0, 0);
}

uint64_t sub_1000465F0()
{
  v50 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 384) = Strong;
  if (!Strong)
  {
LABEL_14:

    v36 = *(v0 + 8);

    return v36();
  }

  v2 = Strong;
  static DispatchTime.now()();
  type metadata accessor for ConnectionAssistantEarthTexturedRenderer.Textures();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v0 + 392) = v4;
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 URLForResource:v5 withExtension:v6];

  v48 = v4;
  if (v7)
  {
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    v11 = *(v0 + 304);
    v10 = *(v0 + 312);
    v12 = *(v0 + 296);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = v9[4];
    v13(v12, v8, v10);
    v14 = v9[7];
    v14(v12, 0, 1, v10);
    v13(v11, v12, v10);
    v14(v11, 0, 1, v10);
    v15 = v9[6];
  }

  else
  {
    v16 = *(*(v0 + 320) + 56);
    v17 = 1;
    v16(*(v0 + 296), 1, 1, *(v0 + 312));
    v18 = String._bridgeToObjectiveC()();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v4 URLForResource:v18 withExtension:v19];

    if (v20)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = 0;
    }

    v22 = *(v0 + 312);
    v21 = *(v0 + 320);
    v24 = *(v0 + 296);
    v23 = *(v0 + 304);
    v25 = *(v0 + 288);
    v16(v25, v17, 1, v22);
    sub_100048EA8(v25, v23);
    v15 = *(v21 + 48);
    if (v15(v24, 1, v22) != 1)
    {
      sub_100008FA0(*(v0 + 296), &qword_100357468);
    }
  }

  v26 = *(v0 + 304);
  v27 = *(v0 + 312);
  if (v15(v26, 1, v27) == 1)
  {
    sub_100008FA0(v26, &qword_100357468);
    if (qword_100353AD8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000F53C(v28, qword_100381ED8);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v32 = *(v0 + 256);
      v31 = *(v0 + 264);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_10017C9E8(v32, v31, &v49);
      _os_log_impl(&_mh_execute_header, v29, v30, "Resource '%s' does not exist", v33, 0xCu);
      sub_100008964(v34);
    }

    v35 = *(v0 + 352);
    sub_1000474F4(*(v0 + 256), *(v0 + 264), *(v0 + 376));

    (*(v35 + 8))(*(v0 + 376), *(v0 + 344));
    goto LABEL_14;
  }

  v38 = *(v0 + 464);
  (*(*(v0 + 320) + 32))(*(v0 + 336), v26, v27);
  v39 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:*(v2 + 16)];
  *(v0 + 400) = v39;
  URL._bridgeToObjectiveC()(v40);
  v42 = v41;
  *(v0 + 408) = v41;
  sub_1000040A8(&qword_100357470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279160;
  v44 = MTKTextureLoaderOptionSRGB;
  *(inited + 32) = MTKTextureLoaderOptionSRGB;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 40) = v38;
  v45 = v44;
  sub_100256068(inited);
  swift_setDeallocating();
  sub_100008FA0(inited + 32, &unk_100357478);
  type metadata accessor for Option(0);
  sub_100048F18();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 416) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_100046CC4;
  v47 = swift_continuation_init();
  *(v0 + 208) = sub_1000040A8(&qword_100357488);
  *(v0 + 152) = _NSConcreteStackBlock;
  *(v0 + 160) = 1107296256;
  *(v0 + 168) = sub_1000477F0;
  *(v0 + 176) = &unk_1003281B8;
  *(v0 + 184) = v47;
  [v39 newTextureWithContentsOfURL:v42 options:isa completionHandler:v0 + 152];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100046CC4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 424) = v1;
  if (v1)
  {
    v2 = sub_100047284;
  }

  else
  {
    v2 = sub_100046DD4;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_100046DD4()
{
  v39 = v0;
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  v0[54] = v0[30];

  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v4 = v0[46];
  v5 = v0[47];
  v6 = v0[43];
  v7 = v0[44];
  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381ED8);
  (*(v7 + 16))(v4, v5, v6);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[32];
    v11 = v0[33];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_10017C9E8(v12, v11, &v38);
    *(v13 + 12) = 2048;
    static DispatchTime.now()();
    v15 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() >= v15)
    {
      v29 = v0[44];
      v30 = *(v29 + 8);
      v21 = v29 + 8;
      v20 = v30;
      v30(v0[45], v0[43]);
      v26 = 0;
    }

    else
    {
      v16 = v0[45];
      v17 = v0[44];
      v36 = v14;
      v37 = v0[43];
      v18 = DispatchTime.uptimeNanoseconds.getter();
      v19 = DispatchTime.uptimeNanoseconds.getter();
      v22 = *(v17 + 8);
      v21 = v17 + 8;
      v20 = v22;
      v23 = (v22)(v16, v37);
      v26 = v18 - v19;
      if (v18 < v19)
      {
        __break(1u);
        return (_swift_task_switch)(v23, v24, v25);
      }

      v14 = v36;
    }

    v31 = v26;
    v20(v0[46], v0[43]);
    *(v13 + 14) = v31 / 0xF4240;
    _os_log_impl(&_mh_execute_header, v9, v10, "Loaded '%s' texture asynchronously in %llu ms", v13, 0x16u);
    sub_100008964(v14);
  }

  else
  {
    v27 = v0[44];
    v28 = *(v27 + 8);
    v21 = v27 + 8;
    v20 = v28;
    v28(v0[46], v0[43]);
  }

  v0[55] = v21;
  v0[56] = v20;
  type metadata accessor for MainActor();
  v0[57] = static MainActor.shared.getter();
  v32 = dispatch thunk of Actor.unownedExecutor.getter();
  v34 = v33;
  v23 = sub_1000470D4;
  v24 = v32;
  v25 = v34;

  return (_swift_task_switch)(v23, v24, v25);
}

uint64_t sub_1000470D4()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 272);

  v2(v1);

  return (_swift_task_switch)(sub_100047158, 0, 0);
}

uint64_t sub_100047158()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  sub_1000474F4(v6, v5, v1);

  (*(v0 + 448))(*(v0 + 376), *(v0 + 344));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100047284()
{
  v21 = v0;
  v1 = v0[52];
  v3 = v0[50];
  v2 = v0[51];
  swift_willThrow();

  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381ED8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[49];
  v9 = v0[42];
  v10 = v0[39];
  v11 = v0[40];
  if (v7)
  {
    v19 = v0[42];
    v13 = v0[32];
    v12 = v0[33];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10017C9E8(v13, v12, &v20);
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to load texture '%s'", v14, 0xCu);
    sub_100008964(v15);

    (*(v11 + 8))(v19, v10);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v16 = v0[44];
  sub_1000474F4(v0[32], v0[33], v0[47]);

  (*(v16 + 8))(v0[47], v0[43]);

  v17 = v0[1];

  return v17();
}

void sub_1000474F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381ED8);
  (*(v7 + 16))(v12, a3, v6);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = a1;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_10017C9E8(v16, a2, &v25);
    *(v17 + 12) = 2048;
    static DispatchTime.now()();
    v19 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() >= v19)
    {
      v21 = *(v7 + 8);
      v21(v9, v6);
      v22 = 0;
    }

    else
    {
      v24 = DispatchTime.uptimeNanoseconds.getter();
      v20 = DispatchTime.uptimeNanoseconds.getter();
      v21 = *(v7 + 8);
      v21(v9, v6);
      v22 = v24 - v20;
      if (v24 < v20)
      {
        __break(1u);
        return;
      }
    }

    v23 = v22;
    v21(v12, v6);
    *(v17 + 14) = v23 / 0xF4240;
    _os_log_impl(&_mh_execute_header, v14, v15, "Done handling '%s' texture asynchronously in %llu ms", v17, 0x16u);
    sub_100008964(v18);
  }

  else
  {
    (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_1000477F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000088DC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000040A8(&qword_100355DA0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000478CC()
{
  v1 = sub_1000040A8(&qword_100357460);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + 24);
  if (v4 == 1 && (*(v0 + 24) = 0, v5 = swift_allocObject(), swift_weakInit(), , static TaskPriority.userInitiated.getter(), v6 = type metadata accessor for TaskPriority(), (*(*(v6 - 8) + 56))(v3, 0, 1, v6), v7 = swift_allocObject(), swift_weakInit(), v8 = swift_allocObject(), *(v8 + 16) = 0, *(v8 + 24) = 0, *(v8 + 32) = v7, *(v8 + 40) = 0xD00000000000001BLL, *(v8 + 48) = 0x8000000100298360, *(v8 + 56) = 1, *(v8 + 64) = sub_1000491D8, *(v8 + 72) = v5, , sub_10020AA80(0, 0, v3, &unk_10027AAB0, v8), , , sub_100008FA0(v3, &qword_100357460), , v4 = *(v0 + 24), v4 == 1))
  {
    v9 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    v9 = v4;
  }

  sub_100048E88(v4);
  sub_100048E98(v4);
  return v9;
}

uint64_t sub_100047AE8(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100357460);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 24);
    *(Strong + 24) = a1;
    swift_unknownObjectRetain();
    sub_100048E98(v6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    static TaskPriority.userInitiated.getter();
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v10;
    *(v11 + 40) = 0xD000000000000015;
    *(v11 + 48) = 0x8000000100298380;
    *(v11 + 56) = 1;
    *(v11 + 64) = sub_1000491E0;
    *(v11 + 72) = v8;

    sub_10020AA80(0, 0, v4, &unk_10027AAB8, v11);

    sub_100008FA0(v4, &qword_100357460);
  }

  return result;
}

uint64_t sub_100047D64(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);
    *(result + 24) = a1;
    swift_unknownObjectRetain();
    sub_100048E98(v3);
  }

  return result;
}

uint64_t sub_100047DDC()
{
  v1 = sub_1000040A8(&qword_100357460);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + 32);
  if (v4 == 1 && (*(v0 + 32) = 0, v5 = swift_allocObject(), swift_weakInit(), , static TaskPriority.userInitiated.getter(), v6 = type metadata accessor for TaskPriority(), (*(*(v6 - 8) + 56))(v3, 0, 1, v6), v7 = swift_allocObject(), swift_weakInit(), v8 = swift_allocObject(), *(v8 + 16) = 0, *(v8 + 24) = 0, *(v8 + 32) = v7, *(v8 + 40) = 0xD000000000000015, *(v8 + 48) = 0x8000000100298340, *(v8 + 56) = 0, *(v8 + 64) = sub_1000491D0, *(v8 + 72) = v5, , sub_10020AA80(0, 0, v3, &unk_10027AAA8, v8), , , sub_100008FA0(v3, &qword_100357460), , v4 = *(v0 + 32), v4 == 1))
  {
    v9 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    v9 = v4;
  }

  sub_100048E88(v4);
  sub_100048E98(v4);
  return v9;
}

uint64_t sub_100047FEC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 32);
    *(result + 32) = a1;
    swift_unknownObjectRetain();
    sub_100048E98(v3);
  }

  return result;
}

uint64_t sub_100048064()
{
  v1 = sub_1000040A8(&qword_100357460);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + 40);
  if (v4 == 1 && (*(v0 + 40) = 0, v5 = swift_allocObject(), swift_weakInit(), , static TaskPriority.userInitiated.getter(), v6 = type metadata accessor for TaskPriority(), (*(*(v6 - 8) + 56))(v3, 0, 1, v6), v7 = swift_allocObject(), swift_weakInit(), v8 = swift_allocObject(), *(v8 + 16) = 0, *(v8 + 24) = 0, *(v8 + 32) = v7, *(v8 + 40) = 0xD00000000000001DLL, *(v8 + 48) = 0x80000001002982D0, *(v8 + 56) = 0, *(v8 + 64) = sub_100048D8C, *(v8 + 72) = v5, , sub_10020AA80(0, 0, v3, &unk_10027AA70, v8), , , sub_100008FA0(v3, &qword_100357460), , v4 = *(v0 + 40), v4 == 1))
  {
    v9 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    v9 = v4;
  }

  sub_100048E88(v4);
  sub_100048E98(v4);
  return v9;
}

uint64_t sub_100048274(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100357460);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 40);
    *(Strong + 40) = a1;
    swift_unknownObjectRetain();
    sub_100048E98(v6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    static TaskPriority.userInitiated.getter();
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v10;
    *(v11 + 40) = 0xD000000000000017;
    *(v11 + 48) = 0x8000000100298320;
    *(v11 + 56) = 0;
    *(v11 + 64) = sub_100048FE4;
    *(v11 + 72) = v8;

    sub_10020AA80(0, 0, v4, &unk_10027AAA0, v11);

    sub_100008FA0(v4, &qword_100357460);
  }

  return result;
}

uint64_t sub_1000484E4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 40);
    *(result + 40) = a1;
    swift_unknownObjectRetain();
    sub_100048E98(v3);
  }

  return result;
}

uint64_t sub_10004855C()
{
  swift_unknownObjectRelease();
  sub_100048E98(v0[3]);
  sub_100048E98(v0[4]);
  sub_100048E98(v0[5]);

  return swift_deallocClassInstance();
}

uint64_t ConnectionAssistantEarthTexturedRenderer.__allocating_init(device:buffers:renderPipelines:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ConnectionAssistantEarthTexturedRenderer.init(device:buffers:renderPipelines:)(a1, a2, a3);
  return v6;
}

void *ConnectionAssistantEarthTexturedRenderer.init(device:buffers:renderPipelines:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[4] = a3;
  type metadata accessor for ConnectionAssistantEarthTexturedRenderer.Textures();
  v5 = swift_allocObject();
  *(v5 + 24) = vdupq_n_s64(1uLL);
  *(v5 + 40) = 1;
  *(v5 + 16) = a1;
  v3[3] = v5;

  v6 = [swift_unknownObjectRetain() newBufferWithLength:288 options:1];
  if (v6)
  {
    v7 = v6;
    swift_unknownObjectRelease();

    v3[5] = v7;
  }

  else
  {
    sub_100022AD4();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();

    type metadata accessor for ConnectionAssistantEarthTexturedRenderer();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t ConnectionAssistantEarthTexturedRenderer.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t ConnectionAssistantEarthTexturedRenderer.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_100048820(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v6 = v5;
  ConnectionAssistantEarth.project(camera:)(a2, v57, a5);
  if (v61)
  {
    return;
  }

  v55 = v57[1];
  v56 = v57[0];
  v53 = v57[3];
  v54 = v57[2];
  v10 = v58;
  v11 = v59;
  v12 = v60;
  v13 = sub_1000478CC();
  v14 = sub_100047DDC();
  v15 = sub_100048064();
  if (!v13 || !v14 || !v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v17 = *(a2 + 24);
  if (*(a2 + 28) < v17)
  {
    v17 = *(a2 + 28);
  }

  v18 = v17 * 0.5;
  v44 = *(a1 + 68);
  *v19.i64 = ConnectionAssistantEarth.model.getter();
  v20 = *(a2 + 192);
  v21 = *(a2 + 208);
  v22 = *(a2 + 224);
  v23 = *(a2 + 240);
  v49 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v24.f32[0]), v21, *v24.f32, 1), v22, v24, 2), v23, v24, 3);
  v51 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v19.f32[0]), v21, *v19.f32, 1), v22, v19, 2), v23, v19, 3);
  v47 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v25.f32[0]), v21, *v25.f32, 1), v22, v25, 2), v23, v25, 3);
  v45 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v26.f32[0]), v21, *v26.f32, 1), v22, v26, 2), v23, v26, 3);
  v43 = sinf(v18);
  v63.columns[3] = v45;
  v63.columns[1] = v49;
  v63.columns[0] = v51;
  v63.columns[2] = v47;
  v64 = __invert_f4(v63);
  v27 = v64.columns[0];
  v64.columns[0] = v51;
  v64.columns[0].i32[3] = 0;
  v52 = v64.columns[0];
  v64.columns[0] = v49;
  v64.columns[0].i32[3] = 0;
  v50 = v64.columns[0];
  v64.columns[0] = v47;
  v64.columns[0].i32[3] = 0;
  v48 = v64.columns[0];
  v64.columns[0] = v45;
  v64.columns[0].i32[3] = 0;
  v46 = v64.columns[0];
  v27.i32[3] = 0;
  v64.columns[1].i32[3] = 0;
  v41 = v64.columns[1];
  v42 = v27;
  v64.columns[2].i32[3] = 0;
  v64.columns[3].i32[3] = 0;
  v39 = v64.columns[3];
  v40 = v64.columns[2];
  v28 = *(a2 + 16);
  v29 = ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(*a2, *(a2 + 8), v28);
  v30 = *(a2 + 32);
  v31 = *(a1 + 76);
  v32 = *(v5 + 40);
  v33 = [swift_unknownObjectRetain() contents];
  v34 = v32;
  *v33 = v55;
  *(v33 + 1) = v54;
  *(v33 + 2) = v53;
  *(v33 + 3) = v52;
  *(v33 + 4) = v50;
  *(v33 + 5) = v48;
  *(v33 + 6) = v46;
  *(v33 + 7) = v42;
  *(v33 + 8) = v41;
  *(v33 + 9) = v40;
  *(v33 + 10) = v39;
  *(v33 + 44) = v29;
  *&v28 = v28;
  *(v33 + 45) = LODWORD(v28);
  *(v33 + 46) = v30;
  *(v33 + 47) = v31;
  *(v33 + 48) = v43;
  *(v33 + 196) = 0x40E71C72C0A00000;
  *(v33 + 51) = 1074790400;
  *(v33 + 26) = vmul_f32(vmul_n_f32(0x42DA000046B73E00, v44), 0x3BA0902E39D1B717);
  *(v33 + 54) = 0;
  *(v33 + 14) = v56;
  *(v33 + 60) = v44;
  *(v33 + 61) = v44 * v44;
  *(v33 + 31) = v10;
  *(v33 + 32) = v11;
  *(v33 + 66) = v12;
  *(v33 + 67) = 0;
  *(v33 + 34) = vmul_n_f32(0x3F7851EC3F000000, v44);
  *(v33 + 70) = v44 * 1.2;
  v35 = sub_100254A80(2);
  if (!v35)
  {
    swift_unknownObjectRelease();
LABEL_11:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v36 = v35;
  v37 = String._bridgeToObjectiveC()();
  [a3 setLabel:v37];

  [a3 setRenderPipelineState:v36];
  v38 = *(v6 + 16);
  [a3 setVertexBuffer:*(v38 + 24) offset:0 atIndex:0];
  [a3 setVertexBuffer:*(v38 + 32) offset:0 atIndex:1];
  [a3 setFragmentBuffer:v32 offset:0 atIndex:0];
  [a3 setFragmentTexture:v13 atIndex:0];
  [a3 setFragmentTexture:v14 atIndex:1];
  [a3 setFragmentTexture:v16 atIndex:2];
  [a3 drawPrimitives:4 vertexStart:0 vertexCount:4];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_12:

  swift_unknownObjectRelease();
}

uint64_t sub_100048C98(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100048CF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100048D54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048D98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100049248;

  return sub_10004644C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100048E88(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_100048E98(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100048EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100357468);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100048F18()
{
  result = qword_1003549B0;
  if (!qword_1003549B0)
  {
    type metadata accessor for Option(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003549B0);
  }

  return result;
}

uint64_t sub_100048F80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100048FEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000490DC;

  return sub_10004644C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000490DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000491E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100049278@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ConnectionModel(0);
  sub_10004936C(&qword_100354F88, type metadata accessor for ConnectionModel);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for ConnectivityModel();
  sub_10004936C(&qword_100354F78, type metadata accessor for ConnectivityModel);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  type metadata accessor for UIMetrics();
  sub_10004936C(&qword_100354D40, type metadata accessor for UIMetrics);
  result = EnvironmentObject.init()();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = result;
  a1[5] = v9;
  return result;
}

uint64_t sub_10004936C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000493C4()
{
  result = qword_100357490;
  if (!qword_100357490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357490);
  }

  return result;
}

uint64_t IDSOffGridMode.debugDescription.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E752ELL;
    case 2:
      return 0x64656C62616E652ELL;
    case 1:
      return 0x656C62617369642ELL;
  }

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0x756C61567761722ELL;
}

uint64_t IDSOffGridModePublishStatus.debugDescription.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x737365636375732ELL;
      }

      goto LABEL_8;
    }

    return 0x64656C6961662ELL;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x737365636375732ELL;
      }

LABEL_8:
      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0x756C61567761722ELL;
    }

    return 0x676E69646E65702ELL;
  }
}

uint64_t sub_1000495F8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726566666F2ELL;
  }
}

void sub_100049654(unsigned __int8 *a1)
{
  v3 = type metadata accessor for ExplorerGuidanceState();
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_state;
  swift_beginAccess();
  sub_10004AC8C(&v1[v6], v5);
  LOBYTE(a1) = sub_100088108(v5, a1);
  sub_10004ACF0(v5);
  if ((a1 & 1) == 0)
  {
    sub_10004A5BC();
    v7 = *&v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel];
    v8 = String._bridgeToObjectiveC()();
    [v7 setText:v8];

    v9 = *&v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel];
    v10 = String._bridgeToObjectiveC()();

    [v9 setText:v10];

    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      [v11 setNeedsLayout];

      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 layoutIfNeeded];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100049824(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivityStatusText];
  v4 = *&v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivityStatusText];
  v5 = *&v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivityStatusText + 8];
  *v3 = a1;
  *(v3 + 1) = a2;
  v6 = v4 == a1 && v5 == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v7 = [v2 view];
    if (v7)
    {

      [v7 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000498EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *&v4[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance];
  v7 = *&v4[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 8];
  v9 = *&v4[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 16];
  v10 = *&v4[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 24];
  if (!v7)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!a2)
  {
LABEL_17:
    sub_10004AD4C(a1, a2);
    sub_10004AD4C(v8, v7);
    sub_1000452CC(v8, v7);
    v17 = a1;
    v18 = a2;
LABEL_18:
    sub_1000452CC(v17, v18);
LABEL_19:
    v19 = [v4 view];
    if (v19)
    {
      v20 = v19;
      [v19 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (v8 != a1 || v7 != a2)
  {
    v12 = a3;
    v13 = a4;
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a3 = v12;
    a4 = v13;
    if ((v14 & 1) == 0)
    {
LABEL_24:
      sub_10004AD4C(a1, a2);
      sub_10004AD4C(v8, v7);

      v17 = v8;
      v18 = v7;
      goto LABEL_18;
    }
  }

  if (!v10)
  {
    if (!a4)
    {
      return;
    }

    goto LABEL_24;
  }

  if (!a4)
  {
    goto LABEL_19;
  }

  if (v9 != a3 || v10 != a4)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10004AD4C(a1, a2);
    sub_10004AD4C(v8, v7);

    sub_1000452CC(v8, v7);
    if (v16)
    {
      return;
    }

    goto LABEL_19;
  }

  sub_10004AD4C(a1, a2);
  sub_10004AD4C(v8, v7);

  sub_1000452CC(v8, v7);
}

void sub_100049BD4(uint64_t a1, unsigned __int8 a2)
{
  v3 = &v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_target];
  v4 = *&v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_target];
  v5 = v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_target + 8];
  *v3 = *&a1;
  *(v3 + 8) = a2;
  if (a2 == 4)
  {
    if (v5 == 4)
    {
      return;
    }

LABEL_11:
    sub_10004A5BC();
    v8 = *&v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel];
    v9 = String._bridgeToObjectiveC()();
    [v8 setText:v9];

    v10 = *&v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel];
    v11 = String._bridgeToObjectiveC()();

    [v10 setText:v11];

    v12 = [v2 view];
    if (v12)
    {
      v13 = v12;
      [v12 setNeedsLayout];

      v14 = [v2 view];
      if (v14)
      {
        v15 = v14;
        [v14 layoutIfNeeded];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v5 == 4 || v4 != *&a1 || v5 != a2)
  {
    goto LABEL_11;
  }
}

void sub_100049D60(char a1)
{
  v2 = v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_hasSettledLocation];
  v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_hasSettledLocation] = a1;
  if (v2 == (a1 & 1))
  {
    return;
  }

  sub_10004A5BC();
  v3 = *&v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel];
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  v5 = *&v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel];
  v6 = String._bridgeToObjectiveC()();

  [v5 setText:v6];

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 setNeedsLayout];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 layoutIfNeeded];
}

void sub_100049EC4(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_exclusionPath];
  *&v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_exclusionPath] = a1;
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v4)
  {
    v8 = a1;
    goto LABEL_8;
  }

  sub_10004AD90();
  v5 = a1;
  v11 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
LABEL_8:
    v9 = [v2 view];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 setNeedsLayout];

    v7 = a1;
    goto LABEL_10;
  }

  v7 = v11;
LABEL_10:
}

id sub_100049FC8(SEL *a1)
{
  v2 = [objc_allocWithZone(UITextView) init];
  [v2 setBackgroundColor:0];
  [v2 setEditable:0];
  [v2 setSelectable:0];
  v3 = v2;
  [v3 setScrollEnabled:0];
  [v3 setContentInsetAdjustmentBehavior:2];
  v4 = [v3 textContainer];
  [v4 setLineBreakMode:0];

  v5 = [objc_opt_self() *a1];
  [v3 setTextColor:v5];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v3 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v3 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  v9 = [v3 textContainer];
  [v9 setLineFragmentPadding:0.0];

  return v3;
}

id sub_10004A16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_state;
  if (qword_100353990 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for ExplorerGuidanceState();
  v13 = sub_10000F53C(v12, qword_100381C30);
  sub_10004AC8C(v13, &v5[v11]);
  *&v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivity] = 512;
  v14 = &v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivityStatusText];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = &v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance];
  *v15 = 0u;
  v15[1] = 0u;
  *&v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_coveredProgress] = 0;
  v16 = &v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_centerLocation];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_target];
  *v17 = 0;
  v17[8] = 4;
  v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_hasSettledLocation] = 0;
  *&v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_exclusionPath] = 0;
  v18 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel;
  *&v5[v18] = sub_100049FC8(&selRef_labelColor);
  v19 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel;
  *&v5[v19] = sub_100049FC8(&selRef_secondaryLabelColor);
  *&v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_uiMetrics] = a1;
  v20 = &v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceBottomLayoutGuide];
  *v20 = a2;
  *(v20 + 1) = a3;
  *(v20 + 2) = a4;
  v20[24] = a5 & 1;
  v22.receiver = v5;
  v22.super_class = type metadata accessor for ConnectionAssistantConnectionViewController();
  return objc_msgSendSuper2(&v22, "initWithNibName:bundle:", 0, 0);
}

void sub_10004A338()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ConnectionAssistantConnectionViewController();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel];
  [v1 addSubview:v3];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel];
  [v4 addSubview:v6];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 layer];

  [v9 setAllowsGroupBlending:0];
  v10 = [v0 view];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 layer];

    [v12 setAllowsGroupOpacity:0];
    sub_10004A5BC();
    v13 = String._bridgeToObjectiveC()();
    [v3 setText:v13];

    v14 = String._bridgeToObjectiveC()();

    [v6 setText:v14];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_10004A5BC()
{
  v1 = &v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_state];
  swift_beginAccess();
  v2 = v1[16];
  if (v2 == 9)
  {
    v3 = v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivity + 1] << 8;
    *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivity] = 512;
    if (v3 == 512)
    {
      goto LABEL_8;
    }

    result = [v0 view];
    if (result)
    {
LABEL_7:
      v7 = result;
      [result setNeedsLayout];

LABEL_8:
      if (*(v1 + 4))
      {
        v8 = *(v1 + 3);
        v9 = *(v1 + 4);
      }

      else
      {
        v8 = 0;
        v9 = 0xE000000000000000;
      }

      sub_100049824(v8, v9);
      v10 = *(v1 + 6);
      if (v10)
      {
        v11 = *(v1 + 5);
        v13 = *(v1 + 7);
        v12 = *(v1 + 8);
        v14 = &v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance];
        v15 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance];
        v16 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 8];
        v17 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 16];
        v18 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 24];
        *v14 = v11;
        *(v14 + 1) = v10;
        *(v14 + 2) = v13;
        *(v14 + 3) = v12;

        sub_1000498EC(v15, v16, v17, v18);
        v19 = v15;
        v20 = v16;
      }

      else
      {
        v21 = &v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance];
        v22 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance];
        v23 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 8];
        v24 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 16];
        v25 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 24];
        *v21 = 0u;
        *(v21 + 1) = 0u;
        sub_1000498EC(v22, v23, v24, v25);
        v19 = v22;
        v20 = v23;
      }

      sub_1000452CC(v19, v20);
      v26 = &v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance];
      v27 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 8];
      if (v27)
      {
        v28 = *v26;
        sub_10004AD4C(*v26, *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 8]);

        sub_1000452CC(v28, v27);
        v29 = v26[1];
        if (!v29)
        {
          return v28;
        }

        v30 = v26[3];
        v31 = *v26;
        sub_10004AD4C(v31, v29);

        sub_1000452CC(v31, v29);
        if (v30)
        {
          return v28;
        }
      }

      else
      {
        v28 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivityStatusText];
      }

      return v28;
    }

    __break(1u);
  }

  v5 = v1[18];
  v6 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivity];
  *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivity] = v2 & 0xFEFF | ((v5 & 1) << 8);
  if (v6 & 0xFF00) != 0x200 && v2 == v6 && ((((v6 & 0x100) == 0) ^ v5))
  {
    goto LABEL_8;
  }

  result = [v0 view];
  if (result)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_10004A8C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConnectionAssistantConnectionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConnectionAssistantConnectionViewController()
{
  result = qword_1003574C0;
  if (!qword_1003574C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004AA14()
{
  result = type metadata accessor for ExplorerGuidanceState();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TryOutModel.OfferedState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TryOutModel.OfferedState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10004AC8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExplorerGuidanceState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004ACF0(uint64_t a1)
{
  v2 = type metadata accessor for ExplorerGuidanceState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004AD4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10004AD90()
{
  result = qword_1003574D0;
  if (!qword_1003574D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003574D0);
  }

  return result;
}

void sub_10004ADDC()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_state;
  if (qword_100353990 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ExplorerGuidanceState();
  v3 = sub_10000F53C(v2, qword_100381C30);
  sub_10004AC8C(v3, v0 + v1);
  *(v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivity) = 512;
  v4 = (v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivityStatusText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance);
  *v5 = 0u;
  v5[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_coveredProgress) = 0;
  v6 = (v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_centerLocation);
  *v6 = 0;
  v6[1] = 0;
  v7 = v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_target;
  *v7 = 0;
  *(v7 + 8) = 4;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_hasSettledLocation) = 0;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_exclusionPath) = 0;
  v8 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel;
  *(v0 + v8) = sub_100049FC8(&selRef_labelColor);
  v9 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel;
  *(v0 + v9) = sub_100049FC8(&selRef_secondaryLabelColor);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Int ConnectionAssistantRenderer.Buffers.Error.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10004AFBC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

_BYTE *sub_10004B00C(char a1, void *a2)
{
  v4 = v2;
  v7 = type metadata accessor for Date();
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__kPixelFormat;
  *&v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__kPixelFormat] = 80;
  v10 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__metalView;
  type metadata accessor for MetalView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink;
  *&v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink] = 0;
  v12 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController_earth;
  static Date.now.getter();
  sub_1000E4208(v9, v40);
  memcpy(&v4[v12], v40, 0x203uLL);
  v13 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController_camera;
  sub_10004BF84(v41);
  memcpy(&v4[v13], v41, 0x181uLL);
  v14 = a1 & 1;
  v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__style] = v14;
  *&v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__device] = a2;
  v15 = [swift_unknownObjectRetain() newCommandQueue];
  if (v15)
  {
    v36 = v11;
    v37 = v3;
    *&v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__commandQueue] = v15;
    v16 = *&v4[v10];
    swift_unknownObjectRetain();
    [v16 setOpaque:0];
    v17 = [*&v4[v10] layer];
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      [v18 setDevice:a2];
    }

    v19 = [*&v4[v10] layer];
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      [v20 setOpaque:0];
    }

    v21 = [*&v4[v10] layer];
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      [v22 setPixelFormat:*&v4[v42]];
    }

    v23 = [*&v4[v10] layer];
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      [v24 setFramebufferOnly:0];
    }

    v25 = *&v4[v42];
    type metadata accessor for ConnectionAssistantRenderer();
    swift_allocObject();
    swift_unknownObjectRetain();
    v26 = v37;
    v27 = ConnectionAssistantRenderer.init(style:device:pixelFormat:)(v14, a2, v25);
    if (!v26)
    {
      *&v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__renderer] = v27;
      v28 = type metadata accessor for ConnectionAssistantEarthViewController();
      v39.receiver = v4;
      v39.super_class = v28;
      v29 = objc_msgSendSuper2(&v39, "initWithNibName:bundle:", 0, 0);
      v30 = type metadata accessor for WeakCADisplayLinkTarget();
      v31 = objc_allocWithZone(v30);
      *&v31[OBJC_IVAR____TtC8SOSBuddy23WeakCADisplayLinkTarget__target + 8] = 0;
      *(swift_unknownObjectWeakInit() + 8) = &off_100328320;
      swift_unknownObjectWeakAssign();
      v38.receiver = v31;
      v38.super_class = v30;
      v4 = v29;
      v32 = objc_msgSendSuper2(&v38, "init");
      v33 = [objc_opt_self() displayLinkWithTarget:v32 selector:"updateFrom:"];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v34 = *&v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink];
      *&v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink] = v33;

      return v4;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v11 = v36;
  }

  else
  {
    sub_10004BFC4();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  type metadata accessor for ConnectionAssistantEarthViewController();
  swift_deallocPartialClassInstance();
  return v4;
}

void sub_10004B4C8()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ConnectionAssistantEarthViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview:*&v0[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__metalView]];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10004B61C(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v14.receiver = a1;
  v14.super_class = type metadata accessor for ConnectionAssistantEarthViewController();
  v8 = *a4;
  v9 = v14.receiver;
  objc_msgSendSuper2(&v14, v8, a3);
  v10 = *&v9[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink];
  if (v10)
  {
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 mainRunLoop];
    [v12 *a5];
  }

  else
  {
    __break(1u);
  }
}

void sub_10004B7D4(char *a1)
{
  v3 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink;
  v4 = *&v1[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink];
  if (!v4)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = [v4 isPaused];
  v6 = *a1;
  if (v5 != v6)
  {
    return;
  }

  v7 = *&v1[v3];
  if (!v7)
  {
    goto LABEL_14;
  }

  [v7 setPaused:v6 ^ 1u];
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381ED8);
  v9 = v1;
  a1 = v1;
  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(oslog, v10))
  {

    v13 = a1;
    goto LABEL_10;
  }

  v11 = swift_slowAlloc();
  *v11 = 67109120;
  v12 = *&v9[v3];
  if (!v12)
  {
LABEL_15:

    __break(1u);
    return;
  }

  *(v11 + 4) = [v12 isPaused];

  _os_log_impl(&_mh_execute_header, oslog, v10, "Earth rendering is paused: %{BOOL}d", v11, 8u);

  v13 = oslog;
LABEL_10:
}

id sub_10004B9A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConnectionAssistantEarthViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10004BA7C(double a1)
{
  v16 = [*(v1 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__metalView) layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 nextDrawable];

    if (v4)
    {
      memcpy(__dst, (v1 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController_camera), 0x181uLL);
      if (sub_10004BE1C(__dst) != 1)
      {
        memcpy(v19, __dst, sizeof(v19));
        v5 = [*(v1 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__commandQueue) commandBuffer];
        if (v5)
        {
          v6 = v5;
          v7 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
          v8 = [v7 colorAttachments];
          v9 = [v8 objectAtIndexedSubscript:0];

          if (v9)
          {
            [v9 setLoadAction:2];

            v10 = [v7 colorAttachments];
            v11 = [v10 objectAtIndexedSubscript:0];

            if (v11)
            {
              [v11 setClearColor:{0.0, 0.0, 0.0, 0.0}];

              v12 = [v7 colorAttachments];
              v13 = [v12 objectAtIndexedSubscript:0];

              if (v13)
              {
                [v13 setStoreAction:1];

                v14 = [v7 colorAttachments];
                v15 = [v14 objectAtIndexedSubscript:0];

                if (v15)
                {
                  [v15 setTexture:{objc_msgSend(v4, "texture")}];

                  swift_unknownObjectRelease();
                  memcpy(v18, (v1 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController_earth), 0x203uLL);
                  ConnectionAssistantRenderer.render(dt:earth:camera:commandBuffer:renderPassDescriptor:)(v18, v19, v6, v7, a1);
                  [v6 presentDrawable:v4];
                  [v6 commit];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  return;
                }

                goto LABEL_18;
              }

LABEL_17:
              __break(1u);
LABEL_18:
              __break(1u);
              return;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_17;
        }
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

void sub_10004BDEC(void *a1)
{
  [a1 duration];

  sub_10004BA7C(v1);
}

uint64_t sub_10004BE1C(uint64_t a1)
{
  if (*(a1 + 384))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_10004BE38()
{
  v1 = type metadata accessor for Date();
  __chkstk_darwin(v1 - 8);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v0 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__kPixelFormat) = 80;
  v4 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__metalView;
  type metadata accessor for MetalView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink) = 0;
  v5 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController_earth;
  static Date.now.getter();
  sub_1000E4208(v3, v7);
  memcpy((v0 + v5), v7, 0x203uLL);
  v6 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController_camera;
  sub_10004BF84(v8);
  memcpy((v0 + v6), v8, 0x181uLL);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10004BF84(uint64_t a1)
{
  result = 0.0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 384) = 1;
  return result;
}

unint64_t sub_10004BFC4()
{
  result = qword_100357550;
  if (!qword_100357550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357550);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionAssistantEarthViewController.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ConnectionAssistantEarthViewController.Error(_WORD *result, int a2, int a3)
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

unint64_t sub_10004C0FC()
{
  result = qword_100357558;
  if (!qword_100357558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357558);
  }

  return result;
}

uint64_t sub_10004C17C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000040A8(&qword_100354D60);
  __chkstk_darwin(v3);
  v5 = &v76 - v4;
  v6 = type metadata accessor for KeyboardShortcut();
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v91 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040A8(&qword_100357560);
  __chkstk_darwin(v8 - 8);
  v10 = &v76 - v9;
  v94 = sub_1000040A8(&qword_100357568);
  v90 = *(v94 - 8);
  __chkstk_darwin(v94);
  v12 = &v76 - v11;
  v13 = sub_1000040A8(&qword_100357570);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v76 - v15;
  v17 = sub_1000040A8(&qword_100357578);
  v21 = __chkstk_darwin(v17);
  v22 = *(v1 + 2);
  if (!v22)
  {
LABEL_13:
    type metadata accessor for StewieModel(0);
    sub_10004CEE0(&qword_1003561B8, type metadata accessor for StewieModel);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (*(v22 + 64) && *(v22 + 56) == 5)
  {
    v88 = v16;
    v89 = v14;
    v82 = v13;
    v83 = &v76 - v20;
    v84 = v19;
    v85 = v18;
    v86 = v3;
    v87 = a1;
    v23 = sub_100071A54(0, *(v22 + 88));
    v24 = [objc_opt_self() mainBundle];
    if (v23)
    {
      v25._countAndFlagsBits = 0xD000000000000011;
      v102._object = 0x8000000100298900;
      v25._object = 0x80000001002988E0;
      v102._countAndFlagsBits = 0xD000000000000025;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v102);
      countAndFlagsBits = v27._countAndFlagsBits;
      object = v27._object;

      v28 = objc_opt_self();
      v29 = [v28 mainBundle];
      v103._object = 0x8000000100298860;
      v30._object = 0x80000001002987F0;
      v103._countAndFlagsBits = 0xD000000000000038;
      v30._countAndFlagsBits = 0x100000000000006ALL;
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v103);
      v33 = v32._countAndFlagsBits;
      v79 = v32._object;

      v34 = [v28 mainBundle];
      v75 = 0x80000001002988A0;
      v35 = 0x7373655320646E45;
      v36 = 0xEB000000006E6F69;
      v37 = 0xD000000000000039;
    }

    else
    {
      v40._countAndFlagsBits = 0xD000000000000018;
      v104._object = 0x8000000100298740;
      v40._object = 0x8000000100298720;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      v104._countAndFlagsBits = 0xD000000000000024;
      v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v24, v41, v104);
      countAndFlagsBits = v42._countAndFlagsBits;
      object = v42._object;

      v43 = objc_opt_self();
      v44 = [v43 mainBundle];
      v105._object = 0x8000000100298740;
      v45._countAndFlagsBits = 0xD00000000000003ELL;
      v45._object = 0x8000000100298770;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v105._countAndFlagsBits = 0xD000000000000024;
      v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v105);
      v33 = v47._countAndFlagsBits;
      v79 = v47._object;

      v34 = [v43 mainBundle];
      v75 = 0x80000001002987B0;
      v35 = 0x6E6E6F4320646E45;
      v36 = 0xEE006E6F69746365;
      v37 = 0xD000000000000038;
    }

    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v35, 0, v34, v48, *&v37);
    v78 = v49._countAndFlagsBits;
    v77 = v49._object;

    static ButtonRole.destructive.getter();
    v50 = type metadata accessor for ButtonRole();
    (*(*(v50 - 8) + 56))(v10, 0, 1, v50);
    v51 = *v1;
    v99 = v1[2];
    v100 = v51;
    v52 = swift_allocObject();
    v53 = v1[1];
    v52[1] = *v1;
    v52[2] = v53;
    v52[3] = v1[2];

    sub_100006C20(&v100, &v95, &qword_100357580);
    sub_100006C20(&v99, &v95, &qword_100354AA8);
    Button.init(role:action:label:)();
    v54 = v91;
    static KeyboardShortcut.defaultAction.getter();
    v55 = sub_100009274(&qword_100357588, &qword_100357568);
    v56 = v88;
    v57 = v94;
    View.keyboardShortcut(_:)();
    (*(v92 + 8))(v54, v93);
    (*(v90 + 8))(v12, v57);
    v58 = enum case for DynamicTypeSize.xxLarge(_:);
    v59 = type metadata accessor for DynamicTypeSize();
    (*(*(v59 - 8) + 104))(v5, v58, v59);
    sub_10004CEE0(&qword_100354D68, &type metadata accessor for DynamicTypeSize);
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    v61 = v89;
    if (v60)
    {
      v95 = v57;
      v96 = v55;
      swift_getOpaqueTypeConformance2();
      sub_100009274(&qword_100354D78, &qword_100354D60);
      v62 = v83;
      v63 = v82;
      View.dynamicTypeSize<A>(_:)();
      sub_10004CE78(v5);
      (*(v61 + 8))(v56, v63);
      v98 = v99;
      sub_1000040A8(&qword_100354AA8);
      State.projectedValue.getter();
      v64 = v95;
      v65 = v96;
      v66 = v97;
      type metadata accessor for AppEvents();
      sub_10004CEE0(&qword_100354D48, type metadata accessor for AppEvents);
      v67 = EnvironmentObject.init()();
      v68 = v85;
      v69 = v62 + *(v85 + 36);
      *v69 = v67;
      *(v69 + 8) = v70;
      *(v69 + 16) = v64;
      *(v69 + 24) = v65;
      *(v69 + 32) = v66;
      *(v69 + 33) = v95;
      *(v69 + 36) = *(&v95 + 3);
      v71 = object;
      *(v69 + 40) = countAndFlagsBits;
      *(v69 + 48) = v71;
      v72 = v79;
      *(v69 + 56) = v33;
      *(v69 + 64) = v72;
      v73 = v77;
      *(v69 + 72) = v78;
      *(v69 + 80) = v73;
      v74 = v87;
      sub_10004CF28(v62, v87);
      return (*(v84 + 56))(v74, 0, 1, v68);
    }

    __break(1u);
    goto LABEL_13;
  }

  v38 = *(v19 + 56);

  return v38(a1, 1, 1, v21);
}

uint64_t sub_10004CC04(void *a1)
{
  if (*a1)
  {

    PassthroughSubject.send(_:)();

    sub_1000040A8(&qword_100354AA8);
    return State.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_10004CEE0(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004CCE4@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v18._object = 0x8000000100298930;
  v3._countAndFlagsBits = 6581829;
  v3._object = 0xE300000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0xD000000000000082;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v18);

  sub_100031770();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Color.white.getter();
  v10 = Text.foregroundColor(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_1000317C4(v5, v7, v9 & 1);

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_10004CE28()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004CE78(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100354D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004CEE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004CF28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100357578);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004CF98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004CFE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004D048()
{
  result = qword_100357590;
  if (!qword_100357590)
  {
    sub_100008CF0(&qword_100357598);
    sub_10004D0CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357590);
  }

  return result;
}

unint64_t sub_10004D0CC()
{
  result = qword_1003575A0;
  if (!qword_1003575A0)
  {
    sub_100008CF0(&qword_100357578);
    sub_100008CF0(&qword_100357570);
    sub_100008CF0(&qword_100354D60);
    sub_100008CF0(&qword_100357568);
    sub_100009274(&qword_100357588, &qword_100357568);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100354D78, &qword_100354D60);
    swift_getOpaqueTypeConformance2();
    sub_10004D264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003575A0);
  }

  return result;
}

unint64_t sub_10004D264()
{
  result = qword_1003575A8;
  if (!qword_1003575A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003575A8);
  }

  return result;
}

uint64_t sub_10004D2D4()
{
  v2 = *(v0 + 40);

  sub_1000040A8(&qword_1003575B0);
  Binding.projectedValue.getter();
  sub_1000040A8(&qword_1003575B8);
  sub_1000040A8(&qword_100357568);
  sub_100009274(&qword_1003575C0, &qword_1003575B8);
  sub_100031770();
  sub_100009274(&qword_100357588, &qword_100357568);
  View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)();

  return sub_100032674(&v2);
}

uint64_t sub_10004D4A8(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100357560);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-v3 - 8];
  v5 = *(a1 + 80);
  v13 = *(a1 + 72);
  v14 = v5;

  static ButtonRole.destructive.getter();
  v6 = type metadata accessor for ButtonRole();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = swift_allocObject();
  v8 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a1 + 64);
  *(v7 + 96) = *(a1 + 80);
  v9 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  sub_10004D848(a1, v12);
  sub_100031770();
  return Button<>.init<A>(_:role:action:)();
}

uint64_t sub_10004D5F8(void *a1)
{
  if (*a1)
  {

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_10004CEE0(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004D6F4@<X0>(uint64_t a1@<X8>)
{
  sub_100031770();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10004D7E0()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10004D880()
{
  sub_100008CF0(&qword_1003575B8);
  sub_100008CF0(&qword_100357568);
  sub_100009274(&qword_1003575C0, &qword_1003575B8);
  sub_100031770();
  sub_100009274(&qword_100357588, &qword_100357568);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004D998()
{

  return swift_deallocClassInstance();
}

__n128 sub_10004DA20@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 32) > 2u)
  {
    sub_10004DC74();
    sub_10004DCC8();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_100050D20(&qword_100354D48, type metadata accessor for AppEvents);

    EnvironmentObject.init()();
    type metadata accessor for UIMetrics();
    sub_100050D20(&qword_100354D40, type metadata accessor for UIMetrics);
    EnvironmentObject.init()();
    type metadata accessor for QuestionnaireState();
    sub_100050D20(&qword_100354D50, type metadata accessor for QuestionnaireState);
    EnvironmentObject.init()();
    sub_10004DC74();
    sub_10004DCC8();
  }

  _ConditionalContent<>.init(storage:)();
  result = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 96) = v10;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

unint64_t sub_10004DC74()
{
  result = qword_100357670;
  if (!qword_100357670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357670);
  }

  return result;
}

unint64_t sub_10004DCC8()
{
  result = qword_100357678;
  if (!qword_100357678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357678);
  }

  return result;
}

uint64_t sub_10004DD1C()
{
  type metadata accessor for KeyboardObserver();
  swift_allocObject();
  return sub_10000934C();
}

__n128 sub_10004DD60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10004DD7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004DDC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004DE30()
{
  result = qword_100357680;
  if (!qword_100357680)
  {
    sub_100008CF0(&qword_100357688);
    sub_10004DC74();
    sub_10004DCC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357680);
  }

  return result;
}

uint64_t sub_10004DED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v132 = a2;
  v124 = sub_1000040A8(&qword_100357698);
  __chkstk_darwin(v124);
  v125 = &v115 - v5;
  v120 = sub_1000040A8(&qword_1003576A0);
  __chkstk_darwin(v120);
  v121 = &v115 - v6;
  v122 = sub_1000040A8(&qword_1003576A8);
  __chkstk_darwin(v122);
  v127 = &v115 - v7;
  v123 = sub_1000040A8(&qword_1003576B0);
  __chkstk_darwin(v123);
  v128 = &v115 - v8;
  v9 = sub_1000040A8(&qword_1003576B8);
  __chkstk_darwin(v9 - 8);
  v11 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v142 = &v115 - v13;
  v14 = type metadata accessor for KeyboardShortcut();
  v140 = *(v14 - 8);
  v141 = v14;
  __chkstk_darwin(v14);
  v139 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for Color.RGBColorSpace();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v138 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for GlassProminentButtonStyle();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000040A8(&qword_1003576C0);
  __chkstk_darwin(v18);
  v20 = &v115 - v19;
  v21 = sub_1000040A8(&qword_1003576C8);
  __chkstk_darwin(v21);
  v23 = &v115 - v22;
  v119 = sub_1000040A8(&qword_1003576D0);
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v131 = &v115 - v24;
  v25 = sub_1000040A8(&qword_1003576D8);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v115 - v27;
  v29 = sub_1000040A8(&qword_1003576E0);
  __chkstk_darwin(v29 - 8);
  v126 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v143 = &v115 - v33;
  v130 = *(a1 + 72);
  v34 = *(v130 + 32) - 1 >= 2;
  v129 = a3;
  if (v34 && *(v130 + 64) != 6)
  {
    (*(v26 + 56))(v143, 1, 1, v25, v32);
    v53 = v142;
    v54 = v127;
  }

  else
  {
    v115 = v26;
    v116 = v25;
    v117 = v11;
    v35 = swift_allocObject();
    v36 = *(a1 + 48);
    v35[3] = *(a1 + 32);
    v35[4] = v36;
    v37 = *(a1 + 80);
    v35[5] = *(a1 + 64);
    v35[6] = v37;
    v38 = *(a1 + 16);
    v35[1] = *a1;
    v35[2] = v38;
    __chkstk_darwin(v35);
    *(&v115 - 2) = v132;
    sub_100050308(a1, v144);
    sub_1000040A8(&qword_100357788);
    sub_100050988();
    Button.init(action:label:)();
    v39 = &v20[*(v18 + 36)];
    v40 = *(sub_1000040A8(&qword_1003550A0) + 28);
    v41 = enum case for ControlSize.large(_:);
    v42 = type metadata accessor for ControlSize();
    (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
    *v39 = swift_getKeyPath();
    v43 = v133;
    GlassProminentButtonStyle.init()();
    sub_100050A40();
    sub_100050D20(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
    v44 = v135;
    View.buttonStyle<A>(_:)();
    (*(v134 + 8))(v43, v44);
    v45 = &v23[*(sub_1000040A8(&qword_1003577C0) + 36)];
    sub_1000040A8(&qword_100357740);
    static ButtonBorderShape.capsule.getter();
    sub_100008FA0(v20, &qword_1003576C0);
    *v45 = swift_getKeyPath();
    (*(v136 + 104))(v138, enum case for Color.RGBColorSpace.sRGB(_:), v137);
    v46 = Color.init(_:red:green:blue:opacity:)();
    KeyPath = swift_getKeyPath();
    v144[0] = v46;
    v48 = AnyShapeStyle.init<A>(_:)();
    v49 = &v23[*(v21 + 36)];
    *v49 = KeyPath;
    v49[1] = v48;
    v50 = v139;
    static KeyboardShortcut.defaultAction.getter();
    sub_100050B24();
    View.keyboardShortcut(_:)();
    (*(v140 + 8))(v50, v141);
    sub_100008FA0(v23, &qword_1003576C8);
    type metadata accessor for KeyboardObserver();
    sub_100050D20(&qword_1003577D8, type metadata accessor for KeyboardObserver);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v144[0])
    {
      v51 = 8.0;
      v52 = 0xC03E000000000000;
      a3 = v129;
      v11 = v117;
      v53 = v142;
      v54 = v127;
    }

    else
    {
      v53 = v142;
      v54 = v127;
      if (qword_100353988 != -1)
      {
        swift_once();
      }

      v52 = 0;
      v51 = 38.0 - *&qword_100381C20;
      a3 = v129;
      v11 = v117;
    }

    v55 = v116;
    v56 = v115;
    v57 = static Edge.Set.all.getter();
    (*(v118 + 32))(v28, v131, v119);
    v58 = &v28[*(v55 + 36)];
    *v58 = v57;
    *(v58 + 1) = 0x4038000000000000;
    *(v58 + 2) = v52;
    *(v58 + 3) = v51;
    *(v58 + 4) = v52;
    v58[40] = 0;
    v59 = v143;
    sub_100050D70(v28, v143);
    (*(v56 + 56))(v59, 0, 1, v55);
  }

  v60 = v130;
  v61 = sub_10008B8D4();
  v62 = v128;
  if (v61)
  {
    v63 = swift_allocObject();
    v64 = *(a1 + 48);
    v63[3] = *(a1 + 32);
    v63[4] = v64;
    v65 = *(a1 + 80);
    v63[5] = *(a1 + 64);
    v63[6] = v65;
    v66 = *(a1 + 16);
    v63[1] = *a1;
    v63[2] = v66;
    __chkstk_darwin(v63);
    *(&v115 - 2) = v132;
    sub_100050308(a1, v144);
    sub_1000040A8(&qword_1003576F8);
    sub_100050340();
    v67 = v121;
    Button.init(action:label:)();
    v68 = (v67 + *(v120 + 36));
    v69 = *(sub_1000040A8(&qword_1003550A0) + 28);
    v70 = enum case for ControlSize.large(_:);
    v71 = type metadata accessor for ControlSize();
    (*(*(v71 - 8) + 104))(v68 + v69, v70, v71);
    *v68 = swift_getKeyPath();
    v72 = v133;
    GlassProminentButtonStyle.init()();
    sub_100050484();
    sub_100050D20(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
    v73 = v135;
    View.buttonStyle<A>(_:)();
    (*(v134 + 8))(v72, v73);
    v74 = (v54 + *(sub_1000040A8(&qword_100357738) + 36));
    sub_1000040A8(&qword_100357740);
    static ButtonBorderShape.capsule.getter();
    sub_100008FA0(v67, &qword_1003576A0);
    *v74 = swift_getKeyPath();
    (*(v136 + 104))(v138, enum case for Color.RGBColorSpace.sRGB(_:), v137);
    v75 = Color.init(_:red:green:blue:opacity:)();
    v76 = swift_getKeyPath();
    v144[0] = v75;
    v77 = AnyShapeStyle.init<A>(_:)();
    v78 = (v54 + *(sub_1000040A8(&qword_100357748) + 36));
    *v78 = v76;
    v78[1] = v77;
    if (qword_100353988 != -1)
    {
      swift_once();
    }

    v79 = 38.0 - *&qword_100381C20;
    v80 = static Edge.Set.all.getter();
    v81 = v54 + *(v122 + 36);
    *v81 = v80;
    *(v81 + 8) = 0;
    *(v81 + 16) = 0;
    *(v81 + 24) = v79;
    *(v81 + 32) = 0;
    *(v81 + 40) = 0;
    v82 = v139;
    static KeyboardShortcut.defaultAction.getter();
    sub_100050578();
    View.keyboardShortcut(_:)();
    (*(v140 + 8))(v82, v141);
    sub_100008FA0(v54, &qword_1003576A8);
    v83 = static Edge.Set.top.getter();
    v84 = v62 + *(v123 + 36);
    *v84 = v83;
    *(v84 + 8) = 0u;
    *(v84 + 24) = 0u;
    *(v84 + 40) = 1;
    sub_100006C20(v62, v125, &qword_1003576B0);
    swift_storeEnumTagMultiPayload();
    sub_100050800();
    v53 = v142;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v85 = *(v60 + 152);
    if (!v85)
    {
      v109 = 1;
      goto LABEL_20;
    }

    v86 = swift_allocObject();
    v87 = *(a1 + 48);
    *(v86 + 48) = *(a1 + 32);
    *(v86 + 64) = v87;
    v88 = *(a1 + 80);
    *(v86 + 80) = *(a1 + 64);
    *(v86 + 96) = v88;
    v89 = *(a1 + 16);
    *(v86 + 16) = *a1;
    *(v86 + 32) = v89;
    *(v86 + 112) = v85;
    __chkstk_darwin(v86);
    v90 = v132;
    *(&v115 - 2) = v85;
    *(&v115 - 1) = v90;

    sub_100050308(a1, v144);

    sub_1000040A8(&qword_1003576F8);
    sub_100050340();
    v91 = v121;
    Button.init(action:label:)();
    v92 = (v91 + *(v120 + 36));
    v93 = *(sub_1000040A8(&qword_1003550A0) + 28);
    v94 = enum case for ControlSize.large(_:);
    v95 = type metadata accessor for ControlSize();
    (*(*(v95 - 8) + 104))(v92 + v93, v94, v95);
    *v92 = swift_getKeyPath();
    v96 = v133;
    GlassProminentButtonStyle.init()();
    sub_100050484();
    sub_100050D20(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
    v97 = v135;
    View.buttonStyle<A>(_:)();
    (*(v134 + 8))(v96, v97);
    v98 = (v54 + *(sub_1000040A8(&qword_100357738) + 36));
    sub_1000040A8(&qword_100357740);
    static ButtonBorderShape.capsule.getter();
    sub_100008FA0(v91, &qword_1003576A0);
    *v98 = swift_getKeyPath();
    (*(v136 + 104))(v138, enum case for Color.RGBColorSpace.sRGB(_:), v137);
    v99 = Color.init(_:red:green:blue:opacity:)();
    v100 = swift_getKeyPath();
    v144[0] = v99;
    v101 = AnyShapeStyle.init<A>(_:)();
    v102 = (v54 + *(sub_1000040A8(&qword_100357748) + 36));
    *v102 = v100;
    v102[1] = v101;
    if (qword_100353988 != -1)
    {
      swift_once();
    }

    v103 = 38.0 - *&qword_100381C20;
    v104 = static Edge.Set.all.getter();
    v105 = v54 + *(v122 + 36);
    *v105 = v104;
    *(v105 + 8) = 0;
    *(v105 + 16) = 0;
    *(v105 + 24) = v103;
    *(v105 + 32) = 0;
    *(v105 + 40) = 0;
    v106 = v139;
    static KeyboardShortcut.defaultAction.getter();
    sub_100050578();
    View.keyboardShortcut(_:)();
    (*(v140 + 8))(v106, v141);
    sub_100008FA0(v54, &qword_1003576A8);
    v107 = static Edge.Set.top.getter();
    v108 = v62 + *(v123 + 36);
    *v108 = v107;
    *(v108 + 8) = 0u;
    *(v108 + 24) = 0u;
    *(v108 + 40) = 1;
    sub_100006C20(v62, v125, &qword_1003576B0);
    swift_storeEnumTagMultiPayload();
    sub_100050800();
    v53 = v142;
    _ConditionalContent<>.init(storage:)();

    a3 = v129;
  }

  sub_100008FA0(v62, &qword_1003576B0);
  v109 = 0;
LABEL_20:
  v110 = sub_1000040A8(&qword_1003576E8);
  (*(*(v110 - 8) + 56))(v53, v109, 1, v110);
  v111 = v143;
  v112 = v126;
  sub_100006C20(v143, v126, &qword_1003576E0);
  sub_100006C20(v53, v11, &qword_1003576B8);
  sub_100006C20(v112, a3, &qword_1003576E0);
  v113 = sub_1000040A8(&qword_1003576F0);
  sub_100006C20(v11, a3 + *(v113 + 48), &qword_1003576B8);
  sub_100008FA0(v53, &qword_1003576B8);
  sub_100008FA0(v111, &qword_1003576E0);
  sub_100008FA0(v11, &qword_1003576B8);
  return sub_100008FA0(v112, &qword_1003576E0);
}

void sub_10004F440()
{
  v1 = *(v0 + 72);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      if (sub_10004FEB8())
      {
LABEL_16:
        (*(v0 + 80))();
        return;
      }

      goto LABEL_7;
    }

    if (!*(v0 + 32))
    {
      goto LABEL_17;
    }

    v2 = sub_1000BB344(v1, 0, 4);
    goto LABEL_15;
  }

  if (*(v1 + 32))
  {
    if (!*(v0 + 32))
    {
      goto LABEL_17;
    }

    v2 = sub_1000BCE78(v1);
LABEL_15:
    v11 = v2;

    if (v11)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381E48);
  sub_100050308(v0, v12);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  sub_100050DE0(v0);
  if (!os_log_type_enabled(v4, v5))
  {
    goto LABEL_12;
  }

  v6 = swift_slowAlloc();
  v12[0] = swift_slowAlloc();
  *v6 = 136446467;
  if (*(v0 + 32))
  {

    v7 = sub_1000B9A7C();
    v9 = v8;

    v10 = sub_10017C9E8(v7, v9, v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2081;
    *(v6 + 14) = sub_10017C9E8(*(v1 + 16), *(v1 + 24), v12);
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}s] QuestionnaireBodyView: failed to record answer for %{private}s", v6, 0x16u);
    swift_arrayDestroy();

LABEL_12:

    return;
  }

LABEL_17:
  type metadata accessor for QuestionnaireState();
  sub_100050D20(&qword_100354D50, type metadata accessor for QuestionnaireState);
  EnvironmentObject.error()();
  __break(1u);
}

__n128 sub_10004F6C8@<Q0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v9 = static Color.primary.getter();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 96) = v15;
  *(a1 + 112) = v16;
  *(a1 + 128) = v17;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  result = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  *(a1 + 144) = v9;
  return result;
}

void sub_10004F7D4()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 72);

    if (sub_1000BB344(v1, 0, 3))
    {

      (*(v0 + 80))(v2);
    }

    else
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000F53C(v3, qword_100381E48);
      sub_100050308(v0, v11);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      sub_100050DE0(v0);
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v11[0] = swift_slowAlloc();
        *v6 = 136446467;
        v7 = sub_1000B9A7C();
        v9 = v8;

        v10 = sub_10017C9E8(v7, v9, v11);

        *(v6 + 4) = v10;
        *(v6 + 12) = 2081;
        *(v6 + 14) = sub_10017C9E8(*(v1 + 16), *(v1 + 24), v11);
        _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}s] QuestionnaireBodyView: failed to record skip for %{private}s", v6, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  else
  {
    type metadata accessor for QuestionnaireState();
    sub_100050D20(&qword_100354D50, type metadata accessor for QuestionnaireState);
    EnvironmentObject.error()();
    __break(1u);
  }
}

__n128 sub_10004FA20@<Q0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v9 = v6 & 1;
  v10 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 96) = v17;
  *(a1 + 112) = v18;
  *(a1 + 128) = v19;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  result = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v16;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v10;
  return result;
}

uint64_t sub_10004FB34(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 32))
  {
    v4 = *(v1 + 72);

    if ((sub_1000BB344(v4, a1, 0) & 1) == 0)
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000F53C(v5, qword_100381E48);
      sub_100050308(v1, v15);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      sub_100050DE0(v1);
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v15[0] = swift_slowAlloc();
        *v8 = 136446723;
        v9 = sub_1000B9A7C();
        v11 = v10;

        v12 = sub_10017C9E8(v9, v11, v15);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2081;
        *(v8 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), v15);
        *(v8 + 22) = 2081;
        *(v8 + 24) = sub_10017C9E8(*(v4 + 16), *(v4 + 24), v15);
        _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] QuestionnaireBodyView: failed to record %{private}s answer for %{private}s", v8, 0x20u);
        swift_arrayDestroy();

        return (*(v2 + 80))(v13);
      }
    }

    return (*(v2 + 80))(v13);
  }

  type metadata accessor for QuestionnaireState();
  sub_100050D20(&qword_100354D50, type metadata accessor for QuestionnaireState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

__n128 sub_10004FDA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*(a1 + 32) + 16);
  sub_100031770();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v10 = v7 & 1;
  v11 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 96) = v18;
  *(a2 + 112) = v19;
  *(a2 + 128) = v20;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  result = v17;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  *(a2 + 144) = KeyPath;
  *(a2 + 152) = v11;
  return result;
}

uint64_t sub_10004FEB8()
{
  v1 = *(v0 + 72);
  if (*(v1 + 32) != 2)
  {
    v3 = 0;
    return v3 & 1;
  }

  v2 = v0;
  if (*(*(v1 + 56) + 16))
  {
    if (*(v0 + 32))
    {

      v3 = sub_1000BCB4C(v1);
LABEL_34:

      return v3 & 1;
    }

    goto LABEL_36;
  }

  v4 = *(v1 + 144);
  if (v4 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_8:
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          v19 = sub_1000BCB4C(v1);
          goto LABEL_33;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          v5 = _CocoaArrayWrapper.endIndex.getter();
          if (!v5)
          {
            break;
          }

          goto LABEL_8;
        }

        v7 = *(v4 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_27;
        }
      }

      v9 = *(v2 + 32);
      if (!v9)
      {
        goto LABEL_36;
      }

      if (*(v7 + 40))
      {
        swift_beginAccess();
        v10 = *(v9 + 72);
        v11 = *(v10 + 16);

        if (v11)
        {

          v12 = sub_1001921F0(v7);
          if (v13)
          {
            v14 = (*(v10 + 56) + 16 * v12);
            v16 = *v14;
            v15 = v14[1];

            v17 = v16 & 0xFFFFFFFFFFFFLL;
            goto LABEL_20;
          }
        }
      }

      else
      {
      }

      v17 = 0;
      v15 = 0xE000000000000000;
LABEL_20:

      v18 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v18 = v17;
      }

      if (v18)
      {
        goto LABEL_28;
      }

      ++v6;
      if (v8 == v5)
      {
        goto LABEL_32;
      }
    }
  }

  if (*(v2 + 32))
  {
LABEL_32:

    v19 = sub_1000BB344(v1, 0, 3);
LABEL_33:
    v3 = v19;
    goto LABEL_34;
  }

LABEL_36:
  type metadata accessor for QuestionnaireState();
  sub_100050D20(&qword_100354D50, type metadata accessor for QuestionnaireState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100050144@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v11[2] = v1[2];
  v11[3] = v3;
  v4 = v1[5];
  v11[4] = v1[4];
  v11[5] = v4;
  v5 = v1[1];
  v11[0] = *v1;
  v11[1] = v5;
  if (v5)
  {
    v6 = *(v5 + 72);
    v7 = *(v5 + 80);
    sub_1000088DC((v5 + 48), v6);
    (*(v7 + 24))(v10, v6, v7);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    v8 = sub_1000040A8(&qword_100357690);
    sub_10004DED8(v11, v10, a1 + *(v8 + 44));
    return sub_100008964(v10);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100050D20(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100050264()
{

  sub_1000502D0();

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_100050340()
{
  result = qword_100357700;
  if (!qword_100357700)
  {
    sub_100008CF0(&qword_1003576F8);
    sub_1000503F8();
    sub_100009274(&qword_100355068, &qword_100355070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357700);
  }

  return result;
}

unint64_t sub_1000503F8()
{
  result = qword_100357708;
  if (!qword_100357708)
  {
    sub_100008CF0(&qword_100357710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357708);
  }

  return result;
}

unint64_t sub_100050484()
{
  result = qword_100357718;
  if (!qword_100357718)
  {
    sub_100008CF0(&qword_1003576A0);
    sub_100009274(&qword_100357720, &qword_100357728);
    sub_100009274(&qword_100355098, &qword_1003550A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357718);
  }

  return result;
}

unint64_t sub_100050578()
{
  result = qword_100357750;
  if (!qword_100357750)
  {
    sub_100008CF0(&qword_1003576A8);
    sub_100050604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357750);
  }

  return result;
}

unint64_t sub_100050604()
{
  result = qword_100357758;
  if (!qword_100357758)
  {
    sub_100008CF0(&qword_100357748);
    sub_1000506BC();
    sub_100009274(&qword_100357770, &qword_100357778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357758);
  }

  return result;
}

unint64_t sub_1000506BC()
{
  result = qword_100357760;
  if (!qword_100357760)
  {
    sub_100008CF0(&qword_100357738);
    sub_100008CF0(&qword_1003576A0);
    type metadata accessor for GlassProminentButtonStyle();
    sub_100050484();
    sub_100050D20(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357760);
  }

  return result;
}

unint64_t sub_100050800()
{
  result = qword_100357780;
  if (!qword_100357780)
  {
    sub_100008CF0(&qword_1003576B0);
    sub_100008CF0(&qword_1003576A8);
    sub_100050578();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357780);
  }

  return result;
}

uint64_t sub_1000508F8()
{

  sub_1000502D0();

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_100050988()
{
  result = qword_100357790;
  if (!qword_100357790)
  {
    sub_100008CF0(&qword_100357788);
    sub_1000503F8();
    sub_100009274(&qword_100357798, &qword_1003577A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357790);
  }

  return result;
}

unint64_t sub_100050A40()
{
  result = qword_1003577A8;
  if (!qword_1003577A8)
  {
    sub_100008CF0(&qword_1003576C0);
    sub_100009274(&qword_1003577B0, &qword_1003577B8);
    sub_100009274(&qword_100355098, &qword_1003550A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003577A8);
  }

  return result;
}

unint64_t sub_100050B24()
{
  result = qword_1003577C8;
  if (!qword_1003577C8)
  {
    sub_100008CF0(&qword_1003576C8);
    sub_100050BDC();
    sub_100009274(&qword_100357770, &qword_100357778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003577C8);
  }

  return result;
}

unint64_t sub_100050BDC()
{
  result = qword_1003577D0;
  if (!qword_1003577D0)
  {
    sub_100008CF0(&qword_1003577C0);
    sub_100008CF0(&qword_1003576C0);
    type metadata accessor for GlassProminentButtonStyle();
    sub_100050A40();
    sub_100050D20(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003577D0);
  }

  return result;
}

uint64_t sub_100050D20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100050D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003576D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_100050E60(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100050E7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100050EC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100050F44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v4[9];
    v6 = v4[10];
    sub_1000088DC(v4 + 6, v5);
    (*(v6 + 24))(v34, v5, v6);
    v7 = static HorizontalAlignment.center.getter();
    v24 = 0;
    sub_100051120(v2, &v15);
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v33[0] = v15;
    v33[1] = v16;
    v33[2] = v17;
    v33[3] = v18;
    v33[4] = v19;
    v33[5] = v20;
    v33[6] = v21;
    v33[7] = v22;
    sub_100006C20(&v25, &v14, &qword_1003577F0);
    sub_100008FA0(v33, &qword_1003577F0);
    *&v23[71] = v29;
    *&v23[87] = v30;
    *&v23[103] = v31;
    *&v23[119] = v32;
    *&v23[7] = v25;
    *&v23[23] = v26;
    *&v23[39] = v27;
    *&v23[55] = v28;
    result = sub_100008964(v34);
    v9 = *&v23[64];
    *(a1 + 97) = *&v23[80];
    v10 = *&v23[112];
    *(a1 + 113) = *&v23[96];
    *(a1 + 129) = v10;
    v11 = *v23;
    *(a1 + 33) = *&v23[16];
    v12 = *&v23[48];
    *(a1 + 49) = *&v23[32];
    *(a1 + 65) = v12;
    *(a1 + 81) = v9;
    v13 = v24;
    *a1 = v7;
    *(a1 + 8) = 0x402C000000000000;
    *(a1 + 16) = v13;
    *(a1 + 144) = *&v23[127];
    *(a1 + 17) = v11;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1000518A8(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100051120@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v43._object = 0x8000000100298AB0;
  v6._countAndFlagsBits = 0xD000000000000013;
  v6._object = 0x80000001002973D0;
  v7.value._object = 0x80000001002962C0;
  v43._countAndFlagsBits = 0xD00000000000004ALL;
  v7.value._countAndFlagsBits = 0xD000000000000012;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v43);

  v10 = swift_allocObject();
  v11 = a1[3];
  v10[3] = a1[2];
  v10[4] = v11;
  v10[5] = a1[4];
  v12 = a1[1];
  v10[1] = *a1;
  v10[2] = v12;
  sub_1000383E4(a1, v30);
  type metadata accessor for UIMetrics();
  sub_1000518A8(&qword_100354D40, type metadata accessor for UIMetrics);
  v29 = EnvironmentObject.init()();
  v14 = v13;
  v15 = [v4 mainBundle];
  v44._object = 0x8000000100298B00;
  v16._countAndFlagsBits = 0x636E656772656D45;
  v17.value._object = 0x80000001002962C0;
  v44._countAndFlagsBits = 0xD000000000000044;
  v16._object = 0xE900000000000079;
  v17.value._countAndFlagsBits = 0xD000000000000012;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v44);

  type metadata accessor for OptionPresentation();
  v20 = swift_allocObject();
  v20[1] = v19;
  v20[3]._countAndFlagsBits = 0;
  v20[3]._object = 0;
  v20[4]._countAndFlagsBits = static Color.clear.getter();
  v20[2]._countAndFlagsBits = 0;
  v20[2]._object = 0;
  v21 = swift_allocObject();
  v22 = a1[3];
  v21[3] = a1[2];
  v21[4] = v22;
  v21[5] = a1[4];
  v23 = a1[1];
  v21[1] = *a1;
  v21[2] = v23;
  sub_1000383E4(a1, v30);
  v24 = EnvironmentObject.init()();
  *&v39[0] = v29;
  *(&v39[0] + 1) = v14;
  v39[1] = v9;
  *&v40 = 0;
  *(&v40 + 1) = 0xE000000000000000;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = *v38;
  DWORD1(v41) = *&v38[3];
  *(&v41 + 1) = sub_1000517CC;
  v42 = v10;
  v25 = v39[0];
  v26 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v26;
  *a2 = v25;
  *(a2 + 16) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = v24;
  *(a2 + 80) = v27;
  *(a2 + 88) = v20;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = sub_1000517F0;
  *(a2 + 120) = v21;
  sub_1000517F8(v39, v30);
  v30[0] = v29;
  v30[1] = v14;
  v31 = v9;
  v32 = 0;
  v33 = 0xE000000000000000;
  v34 = 0;
  *v35 = *v38;
  *&v35[3] = *&v38[3];
  v36 = sub_1000517CC;
  v37 = v10;
  return sub_100051854(v30);
}

uint64_t sub_100051430()
{
  if (*v0)
  {
    *&v5[0] = *(v0 + 32);

    PassthroughSubject.send(_:)();

    v7 = *(v0 + 64);
    v5[0] = *(v0 + 64);
    v8 = *(&v7 + 1);
    sub_100006C20(&v8, v6, &qword_100354AB0);
    sub_1000040A8(&qword_100354AA8);
    State.wrappedValue.getter();
    if (v6[0])
    {

      return sub_100008FA0(&v7, &qword_100354AA8);
    }

    else
    {
      v5[0] = v7;
      LOBYTE(v6[0]) = 1;
      State.wrappedValue.setter();
      sub_100008FA0(&v7, &qword_100354AA8);

      v2 = swift_allocObject();
      v3 = *(v0 + 48);
      v2[3] = *(v0 + 32);
      v2[4] = v3;
      v2[5] = *(v0 + 64);
      v4 = *(v0 + 16);
      v2[1] = *v0;
      v2[2] = v4;
      v6[0] = sub_100051950;
      v6[1] = v2;
      sub_1000383E4(v0, v5);
      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1000518A8(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100051638(uint64_t a1)
{
  v5 = *(a1 + 64);
  sub_1000040A8(&qword_100354AA8);
  result = State.wrappedValue.getter();
  if ((v7 & 1) == 0)
  {
    v3 = *(a1 + 40);
    v6 = &type metadata for RecordedForkAnswer;
    LOWORD(v5) = 0;
    sub_1000C0AF0(v3, &v5);
    v4 = sub_100008FA0(&v5, &qword_1003577F8);
    return (*(a1 + 48))(v4);
  }

  return result;
}

uint64_t sub_1000516D0(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v6 = *(a2 + 64);
  v8 = 0;
  sub_1000040A8(&qword_100354AA8);
  State.wrappedValue.setter();
  v4 = *(a2 + 40);
  v7 = &type metadata for RecordedForkAnswer;
  LOBYTE(v6) = 1;
  BYTE1(v6) = v3;
  sub_1000C0AF0(v4, &v6);
  result = sub_100008FA0(&v6, &qword_1003577F8);
  if (v3 == 1)
  {
    return (*(a2 + 48))(result);
  }

  return result;
}

uint64_t sub_1000518A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000518F0()
{

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_10005195C()
{
  result = qword_100357800;
  if (!qword_100357800)
  {
    sub_100008CF0(&qword_100357808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357800);
  }

  return result;
}

uint64_t sub_1000519C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100051A24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100051AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v84 = a2;
  v85 = a4;
  v75 = a1;
  v87 = a5;
  v6 = sub_1000040A8(&qword_100357810);
  __chkstk_darwin(v6 - 8);
  v88 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = (&v75 - v9);
  v90 = type metadata accessor for OpacityTransition();
  v82 = *(v90 - 8);
  __chkstk_darwin(v90);
  v79 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1000040A8(&qword_100357818);
  v83 = *(v89 - 8);
  __chkstk_darwin(v89);
  v80 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = &v75 - v13;
  v14 = type metadata accessor for Font.Leading();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    type metadata accessor for UIMetrics();
    sub_10005498C(&qword_100354D40, type metadata accessor for UIMetrics);
LABEL_25:
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v18 = *(a3 + 72);
  v19 = *(a3 + 80);
  sub_1000088DC((a3 + 48), v18);
  v20 = *(v19 + 32);
  swift_retain_n();
  v20(v153, v18, v19);
  v21 = v75;
  if (!v75)
  {
    type metadata accessor for GuidanceMessagesModel();
    sub_10005498C(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
    goto LABEL_25;
  }

  if (*(v75 + 96) == 1)
  {
    v22 = [objc_opt_self() mainBundle];
    v161._object = 0x8000000100298B90;
    v78 = 0xE000000000000000;
    v23._object = 0x8000000100298B50;
    v161._countAndFlagsBits = 0xD00000000000005CLL;
    v23._countAndFlagsBits = 0xD00000000000003FLL;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v161);
    countAndFlagsBits = v25._countAndFlagsBits;
    object = v25._object;

    v77 = 0;
    v92 = 4;
  }

  else
  {
    v28 = *(v75 + 48);
    if (v28)
    {
      v29 = *(v28 + 16);
      object = *(v28 + 24);
    }

    else
    {
      v29 = 0;
      object = 0xE000000000000000;
    }

    sub_1001DE260();
    v31 = v30;
    v33 = v32;

    v34 = 0xE000000000000000;
    v92 = 3;
    if (v33)
    {
      v35 = v31;
    }

    else
    {
      v35 = 0;
    }

    if (v33)
    {
      v34 = v33;
    }

    v77 = v35;
    v78 = v34;
    countAndFlagsBits = v29;
  }

  v76._countAndFlagsBits = countAndFlagsBits;
  v109[0] = countAndFlagsBits;
  v109[1] = object;
  sub_100031770();
  v76._object = object;

  v36 = Text.init<A>(_:)();
  v105 = v37;
  v106 = v36;
  v39 = v38;
  v107 = v40;
  v41 = sub_1000088DC(v153, v153[3]);
  v42 = *v41;
  v43 = *(*v41 + 184);
  v103 = *(*v41 + 192);
  v104 = v43;
  v44 = *(v42 + 200);
  v101 = *(v42 + 208);
  v102 = v44;
  v45 = static Edge.Set.all.getter();
  v99 = v39 & 1;
  v100 = v45;
  LOBYTE(v109[0]) = v39 & 1;
  LOBYTE(v108[0]) = 0;
  static Font.title.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  (*(v15 + 104))(v17, enum case for Font.Leading.tight(_:), v14);
  *(&v98 + 1) = Font.leading(_:)();

  (*(v15 + 8))(v17, v14);
  *&v98 = swift_getKeyPath();
  v46 = [objc_opt_self() labelColor];
  *(&v97 + 1) = Color.init(uiColor:)();
  *&v97 = swift_getKeyPath();
  v47 = *(a3 + 112);

  v48 = static UIContentSizeCategory.>= infix(_:_:)();

  KeyPath = swift_getKeyPath();
  v95 = v48 & 1;
  v148 = v48 & 1;
  v49 = *(a3 + 112);

  v50 = static UIContentSizeCategory.>= infix(_:_:)();

  v94 = swift_getKeyPath();
  v51 = *(a3 + 112);

  static Alignment.center.getter();
  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    static Alignment.center.getter();
    if (static Alignment.== infix(_:_:)())
    {
      static Alignment.leading.getter();
    }
  }

  v93 = (v50 & 1) == 0;
  v52 = v92;
  if (v48)
  {
    v52 = 0;
  }

  v92 = v52;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v150[55] = v157;
  *&v150[71] = v158;
  *&v150[87] = v159;
  *&v150[103] = v160;
  *&v150[7] = v154;
  *&v150[23] = v155;
  *&v150[39] = v156;
  v53 = *(a3 + 112);

  v54 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v54)
  {
    v55 = 1.0;
  }

  else
  {
    v55 = 0.5;
  }

  v91 = swift_getKeyPath();
  v56 = v79;
  OpacityTransition.init()();
  static Animation.easeInOut.getter();
  v57 = sub_10005498C(&qword_100356B88, &type metadata accessor for OpacityTransition);
  v58 = v81;
  v59 = v90;
  Transition.animation(_:)();

  (*(v82 + 8))(v56, v59);
  v60 = v83;
  v61 = v89;
  (*(v83 + 16))(v80, v58, v89);
  v109[0] = v59;
  v109[1] = v57;
  swift_getOpaqueTypeConformance2();
  v90 = AnyTransition.init<A>(_:)();
  (*(v60 + 8))(v58, v61);
  strcpy(v109, "GuidanceText-");
  HIWORD(v109[1]) = -4864;
  String.append(_:)(v76);

  v62 = v109[0];
  v83 = v109[0];
  v89 = v109[1];
  v63 = swift_allocObject();
  v65 = v84;
  v64 = v85;
  v63[2] = v21;
  v63[3] = v65;
  v63[4] = a3;
  v63[5] = v64;
  v66 = swift_allocObject();
  v66[2] = v21;
  v66[3] = v65;
  v66[4] = a3;
  v66[5] = v64;
  swift_retain_n();
  swift_retain_n();
  v67 = static Alignment.top.getter();
  v68 = v86;
  *v86 = v67;
  *(v68 + 8) = v69;
  v70 = sub_1000040A8(&qword_100357828);
  sub_100052D04(v21, v65, a3, v64, v153, v77, v78, v68 + *(v70 + 44));

  v71 = v88;
  sub_100006C20(v68, v88, &qword_100357810);
  *(&v108[12] + 1) = *&v150[48];
  *(&v108[11] + 1) = *&v150[32];
  *(&v108[10] + 1) = *&v150[16];
  *(&v108[9] + 1) = *v150;
  *&v108[16] = *&v150[111];
  *(&v108[15] + 1) = *&v150[96];
  *(&v108[14] + 1) = *&v150[80];
  *&v108[0] = v106;
  *(&v108[0] + 1) = v105;
  LOBYTE(v108[1]) = v99;
  *(&v108[1] + 1) = *v152;
  DWORD1(v108[1]) = *&v152[3];
  *(&v108[1] + 1) = v107;
  LOBYTE(v108[2]) = v100;
  *(&v108[2] + 1) = *v151;
  DWORD1(v108[2]) = *&v151[3];
  *(&v108[2] + 1) = v104;
  *&v108[3] = v103;
  *(&v108[3] + 1) = v102;
  *&v108[4] = v101;
  BYTE8(v108[4]) = 0;
  *(&v108[4] + 9) = *v147;
  HIDWORD(v108[4]) = *&v147[3];
  v108[5] = v98;
  v108[6] = v97;
  *&v108[7] = KeyPath;
  *(&v108[7] + 1) = v92;
  LOBYTE(v108[8]) = v95;
  *(&v108[8] + 1) = *v149;
  DWORD1(v108[8]) = *&v149[3];
  *(&v108[8] + 1) = v94;
  LOBYTE(v108[9]) = v93;
  *(&v108[13] + 1) = *&v150[64];
  *(&v108[16] + 1) = v91;
  *&v108[17] = v55;
  *(&v108[17] + 1) = v90;
  *&v108[18] = v62;
  *(&v108[18] + 1) = v89;
  *&v108[19] = sub_100054104;
  *(&v108[19] + 1) = v63;
  memset(&v108[20], 0, 32);
  *&v108[22] = sub_100054148;
  *(&v108[22] + 1) = v66;
  v72 = v87;
  memcpy(v87, v108, 0x170uLL);
  v73 = sub_1000040A8(&qword_100357830);
  sub_100006C20(v71, v72 + *(v73 + 48), &qword_100357810);
  sub_100006C20(v108, v109, &qword_100357838);
  sub_100008FA0(v68, &qword_100357810);
  sub_100008FA0(v71, &qword_100357810);
  *&v135[15] = *&v150[111];
  v132 = *&v150[48];
  v131 = *&v150[32];
  v130 = *&v150[16];
  v129 = *v150;
  *v135 = *&v150[96];
  v134 = *&v150[80];
  v109[0] = v106;
  v109[1] = v105;
  v110 = v99;
  *v111 = *v152;
  *&v111[3] = *&v152[3];
  v112 = v107;
  v113 = v100;
  *v114 = *v151;
  *&v114[3] = *&v151[3];
  v115 = v104;
  v116 = v103;
  v117 = v102;
  v118 = v101;
  v119 = 0;
  *v120 = *v147;
  *&v120[3] = *&v147[3];
  v121 = v98;
  v122 = v97;
  v123 = KeyPath;
  v124 = v92;
  v125 = v95;
  *v126 = *v149;
  *&v126[3] = *&v149[3];
  v127 = v94;
  v128 = v93;
  v133 = *&v150[64];
  v136 = v91;
  v137 = v55;
  v138 = v90;
  v139 = v83;
  v140 = v89;
  v141 = sub_100054104;
  v142 = v63;
  v144 = 0u;
  v143 = 0u;
  v145 = sub_100054148;
  v146 = v66;
  sub_100008FA0(v109, &qword_100357838);
  return sub_100008964(v153);
}

uint64_t sub_1000527D4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    goto LABEL_9;
  }

  sub_10000F574();

  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = *(a1 + 104);
  v8 = v7 + 1;
  if (v7 == -1)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    type metadata accessor for GuidanceMessagesModel();
    sub_10005498C(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  *(a1 + 104) = v8;
  if (v8 != v7)
  {
    sub_1001F4988();
  }
}

uint64_t sub_100052978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a6;
  v23 = a7;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v14 = *(v25 - 8);
  __chkstk_darwin(v25);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F574();
  v24 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = v22;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = v23;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005498C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_100009274(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v24;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v26 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v25);
}

uint64_t sub_100052C6C(uint64_t a1)
{
  if (a1)
  {

    sub_1001DE340();
  }

  else
  {
    type metadata accessor for GuidanceMessagesModel();
    sub_10005498C(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100052D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v117._countAndFlagsBits = a6;
  v117._object = a7;
  v112 = a5;
  v108 = a4;
  v119 = a3;
  v110 = a2;
  v116 = a8;
  v103 = type metadata accessor for OpacityTransition();
  v100 = *(v103 - 8);
  __chkstk_darwin(v103);
  v97 = &v88[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000040A8(&qword_100357818);
  v101 = *(v10 - 8);
  v102 = v10;
  __chkstk_darwin(v10);
  v98 = &v88[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v99 = &v88[-v13];
  v111 = type metadata accessor for Font.Leading();
  v14 = *(v111 - 8);
  __chkstk_darwin(v111);
  v16 = &v88[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1000040A8(&qword_100357840);
  v113 = *(v17 - 8);
  v114 = v17;
  __chkstk_darwin(v17);
  v109 = &v88[-v18];
  v19 = sub_1000040A8(&qword_100357848);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v88[-v21];
  v23 = sub_1000040A8(&qword_100357850);
  __chkstk_darwin(v23 - 8);
  v115 = &v88[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v25);
  v118 = &v88[-v27];
  if (!a1)
  {
    type metadata accessor for GuidanceMessagesModel();
    sub_10005498C(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
LABEL_27:
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v28 = *(a1 + 48);
  if (!v28)
  {
    goto LABEL_8;
  }

  if (!*(v28 + 72))
  {

    v29 = sub_10020327C();

    if (v29)
    {
      goto LABEL_6;
    }

LABEL_8:
    (*(v20 + 56))(v118, 1, 1, v19, v26);
    goto LABEL_11;
  }

  v29 = *(v28 + 72);
LABEL_6:
  if (*(v29 + 16) < 2uLL)
  {

    (*(v113 + 56))(v22, 1, 1, v114);
  }

  else
  {
    v120[0] = v29;
    KeyPath = swift_getKeyPath();
    sub_1000089B0(v112, &v121);
    v30 = swift_allocObject();
    sub_100008A18(&v121._countAndFlagsBits, (v30 + 2));
    object = v117._object;
    v30[7] = v117._countAndFlagsBits;
    v30[8] = object;
    v32 = v110;
    v30[9] = a1;
    v30[10] = v32;
    v33 = v108;
    v30[11] = v119;
    v30[12] = v33;

    v110 = sub_1000040A8(&qword_100355E30);
    sub_1000040A8(&qword_100357868);
    sub_100009274(&qword_100357870, &qword_100355E30);
    sub_100054260();
    v34 = v109;
    ForEach<>.init(_:id:content:)();
    v36 = v113;
    v35 = v114;
    (*(v113 + 32))(v22, v34, v114);
    (*(v36 + 56))(v22, 0, 1, v35);
  }

  v37 = v118;
  sub_10005418C(v22, v118);
  (*(v20 + 56))(v37, 0, 1, v19, v38);
LABEL_11:
  v39 = v117;
  v121 = v117;
  sub_100031770();

  v40 = Text.init<A>(_:)();
  v90 = v41;
  v91 = v40;
  v43 = v42;
  v96 = v44;
  v45 = v112;
  v46 = sub_1000088DC(v112, v112[3]);
  v47 = *v46;
  v48 = *(*v46 + 184);
  v94 = *(*v46 + 192);
  v95 = v48;
  v49 = *(v47 + 200);
  v92 = *(v47 + 208);
  v93 = v49;
  LODWORD(v114) = static Edge.Set.all.getter();
  LODWORD(v113) = v43 & 1;
  v166 = v43 & 1;
  v165 = 0;
  v89 = static Edge.Set.top.getter();
  v50 = (v39._object >> 56) & 0xF;
  if ((v39._object & 0x2000000000000000) == 0)
  {
    v50 = v39._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v50)
  {
    sub_1000088DC(v45, v45[3]);
  }

  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v167 = 0;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v59 = v111;
  (*(v14 + 104))(v16, enum case for Font.Leading.tight(_:), v111);
  v112 = Font.leading(_:)();

  (*(v14 + 8))(v16, v59);
  v111 = swift_getKeyPath();
  v60 = [objc_opt_self() labelColor];
  v110 = Color.init(uiColor:)();
  v109 = swift_getKeyPath();
  if (!v119)
  {
    type metadata accessor for UIMetrics();
    sub_10005498C(&qword_100354D40, type metadata accessor for UIMetrics);
    goto LABEL_27;
  }

  v61 = *(v119 + 112);

  v62 = v61;
  v63 = static UIContentSizeCategory.>= infix(_:_:)();

  v64 = v119;
  v108 = swift_getKeyPath();
  LODWORD(KeyPath) = v63 & 1;
  v169 = v63 & 1;
  v65 = *(v64 + 112);
  v66 = static UIContentSizeCategory.>= infix(_:_:)();

  v106 = swift_getKeyPath();
  v67 = *(v64 + 112);
  static Alignment.center.getter();
  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    static Alignment.center.getter();
    if (static Alignment.== infix(_:_:)())
    {
      static Alignment.leading.getter();
    }
  }

  v105 = (v66 & 1) == 0;
  v68 = 3;
  if (v63)
  {
    v68 = 0;
  }

  v104 = v68;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v171[55] = v177;
  *&v171[71] = v178;
  *&v171[87] = v179;
  *&v171[103] = v180;
  *&v171[7] = v174;
  *&v171[23] = v175;
  *&v171[39] = v176;
  v69 = *(v64 + 112);

  v70 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v70)
  {
    v71 = 1.0;
  }

  else
  {
    v71 = 0.5;
  }

  v119 = swift_getKeyPath();
  v72 = v97;
  OpacityTransition.init()();
  static Animation.easeInOut.getter();
  v73 = sub_10005498C(&qword_100356B88, &type metadata accessor for OpacityTransition);
  v74 = v99;
  v75 = v103;
  Transition.animation(_:)();

  (*(v100 + 8))(v72, v75);
  v77 = v101;
  v76 = v102;
  (*(v101 + 16))(v98, v74, v102);
  v121._countAndFlagsBits = v75;
  v121._object = v73;
  swift_getOpaqueTypeConformance2();
  v103 = AnyTransition.init<A>(_:)();
  (*(v77 + 8))(v74, v76);
  v121._countAndFlagsBits = 0xD000000000000010;
  v121._object = 0x8000000100298BF0;
  String.append(_:)(v117);
  v117._countAndFlagsBits = v121._object;
  v117._object = v121._countAndFlagsBits;
  v78 = v115;
  sub_100006C20(v118, v115, &qword_100357850);
  sub_100006C20(v78, v116, &qword_100357850);
  v79 = *(sub_1000040A8(&qword_100357858) + 48);
  *(&v120[34] + 1) = *&v171[80];
  *(&v120[36] + 1) = *&v171[96];
  *(&v120[32] + 1) = *&v171[64];
  *(&v120[30] + 1) = *&v171[48];
  *(&v120[28] + 1) = *&v171[32];
  *(&v120[26] + 1) = *&v171[16];
  v81 = v90;
  v80 = v91;
  v120[0] = v91;
  v120[1] = v90;
  LOBYTE(v120[2]) = v113;
  *(&v120[2] + 1) = *v173;
  HIDWORD(v120[2]) = *&v173[3];
  v82 = v95;
  v83 = v96;
  v120[3] = v96;
  LOBYTE(v120[4]) = v114;
  *(&v120[4] + 1) = *v172;
  HIDWORD(v120[4]) = *&v172[3];
  v84 = v93;
  v85 = v94;
  v120[5] = v95;
  v120[6] = v94;
  v86 = v92;
  v120[7] = v93;
  v120[8] = v92;
  LOBYTE(v120[9]) = 0;
  HIDWORD(v120[9]) = *&v164[3];
  *(&v120[9] + 1) = *v164;
  LOBYTE(v75) = v89;
  LOBYTE(v120[10]) = v89;
  HIDWORD(v120[10]) = *&v163[3];
  *(&v120[10] + 1) = *v163;
  v120[11] = v52;
  v120[12] = v54;
  v120[13] = v56;
  v120[14] = v58;
  LOBYTE(v120[15]) = 0;
  *(&v120[15] + 1) = *v168;
  HIDWORD(v120[15]) = *&v168[3];
  v120[16] = v111;
  v120[17] = v112;
  v120[18] = v109;
  v120[19] = v110;
  v120[20] = v108;
  v120[21] = v104;
  LOBYTE(v120[22]) = KeyPath;
  *(&v120[22] + 1) = *v170;
  HIDWORD(v120[22]) = *&v170[3];
  v120[23] = v106;
  LOBYTE(v120[24]) = v105;
  *(&v120[24] + 1) = *v171;
  v120[38] = *&v171[111];
  v120[39] = v119;
  *&v120[40] = v71;
  v120[41] = v103;
  v120[42] = v117._object;
  v120[43] = v117._countAndFlagsBits;
  memcpy((v116 + v79), v120, 0x160uLL);
  sub_100006C20(v120, &v121, &qword_100357860);
  sub_100008FA0(v118, &qword_100357850);
  v121._countAndFlagsBits = v80;
  v121._object = v81;
  v122 = v113;
  *v123 = *v173;
  *&v123[3] = *&v173[3];
  v124 = v83;
  v125 = v114;
  *v126 = *v172;
  *&v126[3] = *&v172[3];
  v127 = v82;
  v128 = v85;
  v129 = v84;
  v130 = v86;
  v131 = 0;
  *&v132[3] = *&v164[3];
  *v132 = *v164;
  v133 = v75;
  *&v134[3] = *&v163[3];
  *v134 = *v163;
  v135 = v52;
  v136 = v54;
  v137 = v56;
  v138 = v58;
  v139 = 0;
  *v140 = *v168;
  *&v140[3] = *&v168[3];
  v141 = v111;
  v142 = v112;
  v143 = v109;
  v144 = v110;
  v145 = v108;
  v146 = v104;
  v147 = KeyPath;
  *v148 = *v170;
  *&v148[3] = *&v170[3];
  v149 = v106;
  v150 = v105;
  v156 = *&v171[80];
  *v157 = *&v171[96];
  v155 = *&v171[64];
  v154 = *&v171[48];
  v153 = *&v171[32];
  v152 = *&v171[16];
  v151 = *v171;
  *&v157[15] = *&v171[111];
  v158 = v119;
  v159 = v71;
  v160 = v103;
  v161 = v117._object;
  countAndFlagsBits = v117._countAndFlagsBits;
  sub_100008FA0(&v121, &qword_100357860);
  return sub_100008FA0(v115, &qword_100357850);
}

uint64_t sub_100053B58@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v49 = a6;
  v62 = a7;
  v12 = type metadata accessor for Font.Leading();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v64[0] = v16;
  v64[1] = v17;
  sub_100031770();

  v18 = Text.init<A>(_:)();
  v60 = v19;
  v61 = v18;
  LOBYTE(v17) = v20;
  v59 = v21;
  v22 = sub_1000088DC(a2, a2[3]);
  v23 = *(*v22 + 184);
  v57 = *(*v22 + 200);
  v58 = v23;
  v24 = static Edge.Set.all.getter();
  v55 = v17 & 1;
  v56 = v24;
  v66 = v17 & 1;
  v65 = 0;
  v54 = static Edge.Set.top.getter();
  v25 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v25 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    sub_1000088DC(a2, a2[3]);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v67 = 0;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  (*(v13 + 104))(v15, enum case for Font.Leading.tight(_:), v12);
  v53 = Font.leading(_:)();

  (*(v13 + 8))(v15, v12);
  KeyPath = swift_getKeyPath();
  v34 = [objc_opt_self() labelColor];
  v51 = Color.init(uiColor:)();
  v50 = swift_getKeyPath();
  if (a5)
  {
    v35 = *(a5 + 112);

    v36 = v35;
    v37 = static UIContentSizeCategory.>= infix(_:_:)();

    v49 = swift_getKeyPath();
    v38 = v37 & 1;
    v68 = v37 & 1;
    v39 = *(a5 + 112);
    v40 = static UIContentSizeCategory.>= infix(_:_:)();

    v48 = swift_getKeyPath();
    v41 = *(a5 + 112);
    static Alignment.center.getter();
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    if (v37)
    {
      v42 = 0;
    }

    else
    {
      v42 = 3;
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *(&v69[3] + 7) = *(&v69[10] + 8);
    *(&v69[4] + 7) = *(&v69[11] + 8);
    *(&v69[5] + 7) = *(&v69[12] + 8);
    *(&v69[6] + 7) = *(&v69[13] + 8);
    *(v69 + 7) = *(&v69[7] + 8);
    *(&v69[1] + 7) = *(&v69[8] + 8);
    *(&v69[2] + 7) = *(&v69[9] + 8);
    v43 = *(a5 + 112);

    v44 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v44)
    {
      v45 = 1.0;
    }

    else
    {
      v45 = 0.5;
    }

    v46 = swift_getKeyPath();
    v63[0] = v61;
    v63[1] = v60;
    LOBYTE(v63[2]) = v55;
    v63[3] = v59;
    LOBYTE(v63[4]) = v56;
    *&v63[7] = v57;
    *&v63[5] = v58;
    LOBYTE(v63[9]) = 0;
    LOBYTE(v63[10]) = v54;
    v63[11] = v27;
    v63[12] = v29;
    v63[13] = v31;
    v63[14] = v33;
    LOBYTE(v63[15]) = 0;
    v63[16] = KeyPath;
    v63[17] = v53;
    v63[18] = v50;
    v63[19] = v51;
    v63[20] = v49;
    v63[21] = v42;
    LOBYTE(v63[22]) = v38;
    v63[23] = v48;
    LOBYTE(v63[24]) = (v40 & 1) == 0;
    *(&v63[32] + 1) = v69[4];
    *(&v63[34] + 1) = v69[5];
    *(&v63[36] + 1) = v69[6];
    *(&v63[24] + 1) = v69[0];
    *(&v63[26] + 1) = v69[1];
    *(&v63[28] + 1) = v69[2];
    *(&v63[30] + 1) = v69[3];
    v63[38] = *(&v69[6] + 15);
    v63[39] = v46;
    *&v63[40] = v45;
    v63[41] = 0;
    LOBYTE(v63[42]) = 0;
    sub_1000040A8(&qword_100357888);
    sub_10005431C();
    View.accessibilityHidden(_:)();
    memcpy(v64, v63, 0x151uLL);
    return sub_100008FA0(v64, &qword_100357888);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10005498C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005418C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100357848);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000541FC()
{
  sub_100008964(v0 + 16);

  return _swift_deallocObject(v0, 104, 7);
}

unint64_t sub_100054260()
{
  result = qword_100357878;
  if (!qword_100357878)
  {
    sub_100008CF0(&qword_100357868);
    sub_10005431C();
    sub_10005498C(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357878);
  }

  return result;
}

unint64_t sub_10005431C()
{
  result = qword_100357880;
  if (!qword_100357880)
  {
    sub_100008CF0(&qword_100357888);
    sub_1000543A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357880);
  }

  return result;
}

unint64_t sub_1000543A8()
{
  result = qword_100357890;
  if (!qword_100357890)
  {
    sub_100008CF0(&qword_100357898);
    sub_100054434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357890);
  }

  return result;
}

unint64_t sub_100054434()
{
  result = qword_1003578A0;
  if (!qword_1003578A0)
  {
    sub_100008CF0(&qword_1003578A8);
    sub_1000544EC();
    sub_100009274(&qword_100356C58, &qword_100356C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003578A0);
  }

  return result;
}

unint64_t sub_1000544EC()
{
  result = qword_1003578B0;
  if (!qword_1003578B0)
  {
    sub_100008CF0(&qword_1003578B8);
    sub_100054578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003578B0);
  }

  return result;
}

unint64_t sub_100054578()
{
  result = qword_1003578C0;
  if (!qword_1003578C0)
  {
    sub_100008CF0(&qword_1003578C8);
    sub_100054630();
    sub_100009274(&qword_100356750, &qword_100356758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003578C0);
  }

  return result;
}

unint64_t sub_100054630()
{
  result = qword_1003578D0;
  if (!qword_1003578D0)
  {
    sub_100008CF0(&qword_1003578D8);
    sub_1000546E8();
    sub_100009274(&qword_100356828, &qword_100356830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003578D0);
  }

  return result;
}

unint64_t sub_1000546E8()
{
  result = qword_1003578E0;
  if (!qword_1003578E0)
  {
    sub_100008CF0(&qword_1003578E8);
    sub_1000547A0();
    sub_100009274(&qword_100355068, &qword_100355070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003578E0);
  }

  return result;
}

unint64_t sub_1000547A0()
{
  result = qword_1003578F0;
  if (!qword_1003578F0)
  {
    sub_100008CF0(&qword_1003578F8);
    sub_100054858();
    sub_100009274(&qword_100355058, &qword_100355060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003578F0);
  }

  return result;
}

unint64_t sub_100054858()
{
  result = qword_100357900;
  if (!qword_100357900)
  {
    sub_100008CF0(&qword_100357908);
    sub_1000548E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357900);
  }

  return result;
}

unint64_t sub_1000548E4()
{
  result = qword_100357910;
  if (!qword_100357910)
  {
    sub_100008CF0(&qword_100357918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357910);
  }

  return result;
}

uint64_t sub_100054974(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005498C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000549D4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100054A78(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100054A90(uint64_t a1, uint64_t a2)
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

uint64_t sub_100054AAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100054AF4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_100054B6C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CircularProgressViewStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040A8(&qword_100354FA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-1] - v9;
  v11 = *v1;
  if (*v1)
  {
    v12 = v11[9];
    v13 = v11[10];
    sub_1000088DC(v11 + 6, v12);
    (*(v13 + 24))(v22, v12, v13);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    v14 = a1 + *(sub_1000040A8(&qword_100357930) + 44);
    ProgressView<>.init<>()();
    CircularProgressViewStyle.init()();
    sub_100009274(&qword_100355088, &qword_100354FA0);
    sub_100054F0C(&qword_100355090, &type metadata accessor for CircularProgressViewStyle);
    View.progressViewStyle<A>(_:)();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    v15 = (v14 + *(sub_1000040A8(&qword_100354FA8) + 36));
    v16 = *(sub_1000040A8(&qword_1003550A0) + 28);
    v17 = enum case for ControlSize.regular(_:);
    v18 = type metadata accessor for ControlSize();
    (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
    *v15 = swift_getKeyPath();
    LOBYTE(v17) = static Edge.Set.all.getter();
    sub_100008964(v22);
    result = sub_1000040A8(&qword_100357938);
    v20 = a1 + *(result + 36);
    *v20 = v17;
    *(v20 + 8) = xmmword_100277A70;
    *(v20 + 24) = xmmword_100277A70;
    *(v20 + 40) = 0;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100054F0C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100054F0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100054F60()
{
  result = qword_100357940;
  if (!qword_100357940)
  {
    sub_100008CF0(&qword_100357938);
    sub_100009274(&qword_100357948, &qword_100357950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357940);
  }

  return result;
}

__n128 sub_100055018(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10005502C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100055074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000550C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100055110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005518C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v15 = *(v22 - 8);
  __chkstk_darwin(v22);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F574();
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  aBlock[4] = sub_100056AF0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100328B88;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100056F00(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_100009274(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v23 + 8))(v14, v12);
  return (*(v15 + 8))(v17, v22);
}

uint64_t sub_1000554A0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (*(v1 + 56))
  {
    v7 = 56.0;
  }

  else
  {
    v7 = *(v1 + 48);
  }

  type metadata accessor for UIMetrics();
  sub_100056F00(&qword_100354D40, type metadata accessor for UIMetrics);

  result = EnvironmentObject.init()();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_10005558C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000040A8(&qword_100354D60);
  __chkstk_darwin(v3);
  v5 = v27 - v4;
  v6 = static VerticalAlignment.center.getter();
  v34 = 0;
  sub_100055C88(v1, v32);
  v57 = v32[12];
  v58 = v32[13];
  v53 = v32[8];
  v54 = v32[9];
  v55 = v32[10];
  v56 = v32[11];
  v49 = v32[4];
  v50 = v32[5];
  v51 = v32[6];
  v52 = v32[7];
  v45 = v32[0];
  v46 = v32[1];
  v47 = v32[2];
  v48 = v32[3];
  v60[12] = v32[12];
  v60[13] = v32[13];
  v60[8] = v32[8];
  v60[9] = v32[9];
  v60[10] = v32[10];
  v60[11] = v32[11];
  v60[4] = v32[4];
  v60[5] = v32[5];
  v60[6] = v32[6];
  v60[7] = v32[7];
  v60[0] = v32[0];
  v60[1] = v32[1];
  v59 = v32[14];
  v61 = v32[14];
  v60[2] = v32[2];
  v60[3] = v32[3];
  sub_100006C20(&v45, v31, &qword_1003579D0);
  sub_100008FA0(v60, &qword_1003579D0);
  *&v33[183] = v56;
  *&v33[199] = v57;
  *&v33[215] = v58;
  *&v33[119] = v52;
  *&v33[135] = v53;
  *&v33[151] = v54;
  *&v33[167] = v55;
  *&v33[55] = v48;
  *&v33[71] = v49;
  *&v33[87] = v50;
  *&v33[103] = v51;
  *&v33[7] = v45;
  *&v33[23] = v46;
  v33[231] = v59;
  *&v33[39] = v47;
  v7 = v34;
  v28 = static Edge.Set.top.getter();
  v8 = *v1;
  if (*v1)
  {
    v27[2] = a1;
    v9 = qword_100353988;

    if (v9 != -1)
    {
      swift_once();
    }

    v29 = v7;
    v30 = v6;
    v27[1] = v3;
    EdgeInsets.init(_all:)();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v35 = 0;
    static Alignment.center.getter();
    while (1)
    {
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v36[55] = v41;
      *&v36[71] = v42;
      *&v36[87] = v43;
      *&v36[103] = v44;
      *&v36[7] = v38;
      *&v36[23] = v39;
      *&v36[39] = v40;
      v18 = static Edge.Set.horizontal.getter();

      v37 = 1;
      v20 = v8[9];
      v19 = v8[10];
      sub_1000088DC(v8 + 6, v20);
      v21 = (*(v19 + 312))(v20, v19);
      v22 = static Edge.Set.all.getter();
      *(&v31[24] + 1) = *&v33[176];
      *(&v31[26] + 1) = *&v33[192];
      *(&v31[28] + 1) = *&v33[208];
      *(&v31[16] + 1) = *&v33[112];
      *(&v31[18] + 1) = *&v33[128];
      *(&v31[20] + 1) = *&v33[144];
      *(&v31[22] + 1) = *&v33[160];
      *(&v31[8] + 1) = *&v33[48];
      *(&v31[10] + 1) = *&v33[64];
      *(&v31[12] + 1) = *&v33[80];
      *(&v31[14] + 1) = *&v33[96];
      *(&v31[2] + 1) = *v33;
      *(&v31[4] + 1) = *&v33[16];
      v31[0] = v30;
      v31[1] = 0;
      LOBYTE(v31[2]) = v29;
      *(&v31[30] + 1) = *&v33[224];
      *(&v31[6] + 1) = *&v33[32];
      LOBYTE(v31[32]) = v28;
      v31[33] = v11;
      v31[34] = v13;
      v31[35] = v15;
      v31[36] = v17;
      LOBYTE(v31[37]) = 0;
      *(&v31[45] + 1) = *&v36[64];
      *(&v31[47] + 1) = *&v36[80];
      *(&v31[49] + 1) = *&v36[96];
      *(&v31[37] + 1) = *v36;
      *(&v31[39] + 1) = *&v36[16];
      *(&v31[41] + 1) = *&v36[32];
      *(&v31[43] + 1) = *&v36[48];
      v31[51] = *&v36[111];
      LOBYTE(v31[52]) = v18;
      memset(&v31[53], 0, 32);
      LOBYTE(v31[57]) = 1;
      v31[58] = v21;
      LOBYTE(v31[59]) = v22;
      v23 = enum case for DynamicTypeSize.xLarge(_:);
      v24 = type metadata accessor for DynamicTypeSize();
      (*(*(v24 - 8) + 104))(v5, v23, v24);
      sub_100056F00(&qword_100354D68, &type metadata accessor for DynamicTypeSize);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      __break(1u);
      static os_log_type_t.fault.getter();
      v26 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    sub_1000040A8(&qword_1003579D8);
    sub_100056F48();
    sub_100009274(&qword_100354D78, &qword_100354D60);
    View.dynamicTypeSize<A>(_:)();
    sub_100008FA0(v5, &qword_100354D60);
    memcpy(v32, v31, 0x1D9uLL);
    return sub_100008FA0(v32, &qword_1003579D8);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100056F00(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100055C88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  LOBYTE(v38[0]) = 0;
  sub_100055F68(a1, &v43);
  v34 = v49;
  v35[0] = *v50;
  *(v35 + 10) = *&v50[10];
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v33 = v48;
  v28 = v43;
  v29 = v44;
  v36[6] = v49;
  v37[0] = *v50;
  *(v37 + 10) = *&v50[10];
  v36[2] = v45;
  v36[3] = v46;
  v36[4] = v47;
  v36[5] = v48;
  v36[0] = v43;
  v36[1] = v44;
  sub_100006C20(&v28, v56, &qword_100357A38);
  sub_100008FA0(v36, &qword_100357A38);
  *&v27[87] = v33;
  *&v27[103] = v34;
  *&v27[119] = v35[0];
  *&v27[129] = *(v35 + 10);
  *&v27[23] = v29;
  *&v27[39] = v30;
  *&v27[55] = v31;
  *&v27[71] = v32;
  *&v27[7] = v28;
  v5 = v38[0];
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v38[0] = v4;
  v38[1] = 0;
  v39[0] = v5;
  *&v39[97] = *&v27[96];
  v6 = *&v27[96];
  v7 = *&v27[112];
  *&v39[113] = *&v27[112];
  v8 = *&v27[128];
  *&v39[129] = *&v27[128];
  v39[145] = v27[144];
  *&v39[33] = *&v27[32];
  v9 = *&v27[32];
  v10 = *&v27[48];
  *&v39[49] = *&v27[48];
  *&v39[65] = *&v27[64];
  v11 = *&v27[64];
  v12 = *&v27[80];
  *&v39[81] = *&v27[80];
  *&v39[1] = *v27;
  v14 = *v27;
  v13 = *&v27[16];
  *&v39[17] = *&v27[16];
  v39[152] = a1;
  *&v40 = v15;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  v49 = *&v39[80];
  *v50 = *&v39[96];
  *&v50[16] = *&v39[112];
  v51 = *&v39[128];
  v45 = *&v39[16];
  v46 = *&v39[32];
  v47 = *&v39[48];
  v48 = *&v39[64];
  v43 = v4;
  v44 = *v39;
  v19 = v40;
  v52 = *&v39[144];
  v53 = v40;
  v54 = v41;
  *(a2 + 160) = *&v39[144];
  *(a2 + 176) = v19;
  *(a2 + 192) = v54;
  v20 = *v50;
  *(a2 + 96) = v49;
  *(a2 + 112) = v20;
  v21 = v51;
  *(a2 + 128) = *&v50[16];
  *(a2 + 144) = v21;
  v22 = v46;
  *(a2 + 32) = v45;
  *(a2 + 48) = v22;
  v23 = v48;
  *(a2 + 64) = v47;
  *(a2 + 80) = v23;
  v24 = v44;
  *a2 = v43;
  *(a2 + 16) = v24;
  v64 = v6;
  v65 = v7;
  v66 = v8;
  v60 = v9;
  v61 = v10;
  v62 = v11;
  v63 = v12;
  v58 = v14;
  v42 = 0;
  LOBYTE(v55) = 0;
  v26[216] = 1;
  *(a2 + 208) = v55;
  *(a2 + 216) = 0;
  *(a2 + 224) = 1;
  v56[0] = v4;
  v56[1] = 0;
  v57 = v5;
  v67 = v27[144];
  v59 = v13;
  v68 = a1;
  v69 = v15;
  v70 = v16;
  v71 = v17;
  v72 = v18;
  v73 = 0;
  sub_100006C20(v38, v26, &qword_100357A40);
  return sub_100008FA0(v56, &qword_100357A40);
}

uint64_t sub_100055F68@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[3];
  v71 = a1[2];
  v72 = v4;
  sub_100031770();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.headline.getter();
  v10 = Text.font(_:)();
  v46 = v11;
  v47 = v10;
  v13 = v12;
  v48 = v14;

  sub_1000317C4(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();
  v15 = *a1;
  if (*a1)
  {
    v16 = *(v15 + 112);

    v17 = v16;
    v18 = static UIContentSizeCategory.>= infix(_:_:)();

    v19 = 0.5;
    if (v18)
    {
      v20 = 1.0;
    }

    else
    {
      v20 = 0.5;
    }

    v49 = swift_getKeyPath();
    v21 = v13 & 1;
    v87 = v13 & 1;
    v44 = v13 & 1;
    v22 = a1[5];
    v71 = a1[4];
    v72 = v22;

    v23 = Text.init<A>(_:)();
    v25 = v24;
    v27 = v26;
    static Font.caption.getter();
    v28 = Text.font(_:)();
    v41 = v29;
    v42 = v28;
    v31 = v30;
    v43 = v32;

    sub_1000317C4(v23, v25, v27 & 1);

    v33 = swift_getKeyPath();
    v34 = *(v15 + 112);

    v35 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v35)
    {
      v19 = 1.0;
    }

    v36 = swift_getKeyPath();
    v84 = v31 & 1;
    *&v51 = v47;
    *(&v51 + 1) = v46;
    LOBYTE(v52) = v21;
    *(&v52 + 1) = *v86;
    DWORD1(v52) = *&v86[3];
    *(&v52 + 1) = v48;
    *&v53 = KeyPath;
    BYTE8(v53) = 0;
    *(&v53 + 9) = *v85;
    HIDWORD(v53) = *&v85[3];
    *&v54 = v49;
    *(&v54 + 1) = v20;
    v55 = 256;
    *v50 = 256;
    *&v56 = v42;
    *(&v56 + 1) = v41;
    LOBYTE(v57) = v31 & 1;
    DWORD1(v57) = *&v83[3];
    *(&v57 + 1) = *v83;
    *(&v57 + 1) = v43;
    *&v58 = v33;
    BYTE8(v58) = 0;
    HIDWORD(v58) = *&v82[3];
    *(&v58 + 9) = *v82;
    *&v59 = v36;
    *(&v59 + 1) = v19;
    v60 = 256;
    *&v50[8] = v56;
    *&v50[72] = 256;
    *&v50[56] = v59;
    *&v50[40] = v58;
    *&v50[24] = v57;
    v37 = v51;
    v38 = v52;
    v39 = v54;
    a2[2] = v53;
    a2[3] = v39;
    *a2 = v37;
    a2[1] = v38;
    *(a2 + 122) = *&v50[58];
    a2[6] = *&v50[32];
    a2[7] = *&v50[48];
    a2[4] = *v50;
    a2[5] = *&v50[16];
    v61[0] = v42;
    v61[1] = v41;
    v62 = v31 & 1;
    *v63 = *v83;
    *&v63[3] = *&v83[3];
    v64 = v43;
    v65 = v33;
    v66 = 0;
    *v67 = *v82;
    *&v67[3] = *&v82[3];
    v68 = v36;
    v69 = v19;
    v70 = 256;
    sub_100006C20(&v51, &v71, &qword_100357A48);
    sub_100006C20(&v56, &v71, &qword_100357A48);
    sub_100008FA0(v61, &qword_100357A48);
    v71 = v47;
    v72 = v46;
    v73 = v44;
    *v74 = *v86;
    *&v74[3] = *&v86[3];
    v75 = v48;
    v76 = KeyPath;
    v77 = 0;
    *v78 = *v85;
    *&v78[3] = *&v85[3];
    v79 = v49;
    v80 = v20;
    v81 = 256;
    return sub_100008FA0(&v71, &qword_100357A48);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100056F00(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100056410()
{
  v0 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000040A8(&qword_100357960);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  static ToolbarItemPlacement.topBarTrailing.getter();
  sub_100056B48();
  ToolbarItem<>.init(placement:content:)();
  sub_100009274(&qword_100357968, &qword_100357960);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1000565A8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_100056F00(&qword_100354D48, type metadata accessor for AppEvents);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for TryOutModel();
  sub_100056F00(&qword_100357990, type metadata accessor for TryOutModel);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  type metadata accessor for UIMetrics();
  sub_100056F00(&qword_100354D40, type metadata accessor for UIMetrics);
  v8 = EnvironmentObject.init()();
  v10 = v9;
  result = State.init(wrappedValue:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  return result;
}

uint64_t sub_10005670C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  static Color.clear.getter();
  sub_1000040A8(&qword_100357958);
  sub_100008CF0(&qword_100357960);
  sub_100009274(&qword_100357968, &qword_100357960);
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100056970;
  *(v8 + 24) = v7;

  v9 = static Alignment.center.getter();
  v11 = v10;
  v12 = (a1 + *(sub_1000040A8(&qword_100357970) + 36));
  *v12 = sub_10003496C;
  v12[1] = 0;
  v12[2] = v9;
  v12[3] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000569D8;
  *(v13 + 24) = v8;
  result = sub_1000040A8(&qword_100357978);
  v15 = (a1 + *(result + 36));
  *v15 = sub_100056AA4;
  v15[1] = v13;
  return result;
}

uint64_t sub_100056930()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_1000569E0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

BOOL sub_1000569EC(CGFloat *a1, void (*a2)(CGRect *__return_ptr))
{
  a2(&v8);
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = 0.0;
  v9.size.height = 0.0;
  result = CGRectEqualToRect(v8, v9);
  if (!result)
  {
    *a1 = x;
    a1[1] = y;
    a1[2] = width;
    a1[3] = height;
  }

  return result;
}

uint64_t sub_100056A6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056AB8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100056AF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4[0] = *(v0 + 32);
  v4[1] = v2;
  return v1(v4);
}

uint64_t sub_100056B30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100056B48()
{
  result = qword_100357988;
  if (!qword_100357988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357988);
  }

  return result;
}

uint64_t sub_100056BAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100056BF4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_100056C54()
{
  result = qword_100357998;
  if (!qword_100357998)
  {
    sub_100008CF0(&qword_100357978);
    sub_100056D0C();
    sub_100009274(&qword_1003579B8, &qword_1003579C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357998);
  }

  return result;
}

unint64_t sub_100056D0C()
{
  result = qword_1003579A0;
  if (!qword_1003579A0)
  {
    sub_100008CF0(&qword_100357970);
    sub_100008CF0(&qword_100357958);
    sub_100008CF0(&qword_100357960);
    sub_100009274(&qword_100357968, &qword_100357960);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_1003579A8, &qword_1003579B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003579A0);
  }

  return result;
}

unint64_t sub_100056E90()
{
  result = qword_1003579C8;
  if (!qword_1003579C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003579C8);
  }

  return result;
}

uint64_t sub_100056F00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100056F48()
{
  result = qword_1003579E0;
  if (!qword_1003579E0)
  {
    sub_100008CF0(&qword_1003579D8);
    sub_100057000();
    sub_100009274(&qword_100357A28, &qword_100357A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003579E0);
  }

  return result;
}

unint64_t sub_100057000()
{
  result = qword_1003579E8;
  if (!qword_1003579E8)
  {
    sub_100008CF0(&qword_1003579F0);
    sub_10005708C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003579E8);
  }

  return result;
}

unint64_t sub_10005708C()
{
  result = qword_1003579F8;
  if (!qword_1003579F8)
  {
    sub_100008CF0(&qword_100357A00);
    sub_100057118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003579F8);
  }

  return result;
}

unint64_t sub_100057118()
{
  result = qword_100357A08;
  if (!qword_100357A08)
  {
    sub_100008CF0(&qword_100357A10);
    sub_100009274(&qword_100357A18, &qword_100357A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357A08);
  }

  return result;
}

uint64_t sub_1000571E0()
{
  sub_100008CF0(&qword_1003579D8);
  sub_100008CF0(&qword_100354D60);
  sub_100056F48();
  sub_100009274(&qword_100354D78, &qword_100354D60);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000572F0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Color.RGBColorSpace();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v4);
  result = Color.init(_:red:green:blue:opacity:)();
  *a2 = result;
  return result;
}

uint64_t sub_1000573E4()
{
  v0 = [objc_opt_self() secondaryLabelColor];
  result = Color.init(_:)();
  qword_100381BF0 = result;
  return result;
}

__n128 sub_100057450@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 64);
  if (v8 <= 4)
  {
    v43 = a4;
    if (*(a1 + 64) > 2u)
    {
      if (v8 == 3)
      {
        type metadata accessor for StewieModel(0);
        sub_100058788(&qword_1003561B8, type metadata accessor for StewieModel);
        EnvironmentObject.init()();
        sub_100058414();
        sub_100058468();

        _ConditionalContent<>.init(storage:)();
        v52 = 0;
        sub_1000040A8(&qword_100357A78);
        sub_1000040A8(&qword_100357A98);
        sub_100058388();
        sub_1000584BC();
        _ConditionalContent<>.init(storage:)();
        v66 = v59;
        v67 = v60;
        v68 = v61;
        v69 = v62;
        v65 = 0;
        sub_1000040A8(&qword_100357A58);
        sub_1000040A8(&qword_100357A60);
        sub_1000582FC();
        sub_10005859C();
        _ConditionalContent<>.init(storage:)();

        v9 = v56;
        v70 = v57;
        *v71 = *v58;
        *&v71[10] = *&v58[10];
        v10 = v53;
        v11 = v54;
        v12 = v55;
        goto LABEL_14;
      }
    }

    else if (v8 - 1 >= 2)
    {
      type metadata accessor for UIMetrics();
      sub_100058788(&qword_100354D40, type metadata accessor for UIMetrics);

      EnvironmentObject.init()();
      type metadata accessor for QuestionnaireState();
      sub_100058788(&qword_100354D50, type metadata accessor for QuestionnaireState);
      EnvironmentObject.init()();
      sub_100058414();
      sub_100058468();

      _ConditionalContent<>.init(storage:)();
      v52 = 0;
      sub_1000040A8(&qword_100357A78);
      sub_1000040A8(&qword_100357A98);
      sub_100058388();
      sub_1000584BC();
      _ConditionalContent<>.init(storage:)();
      v66 = v59;
      v67 = v60;
      v68 = v61;
      v69 = v62;
      v65 = 0;
      sub_1000040A8(&qword_100357A58);
      sub_1000040A8(&qword_100357A60);
      sub_1000582FC();
      sub_10005859C();
      _ConditionalContent<>.init(storage:)();

      v9 = v56;
      v70 = v57;
      *v71 = *v58;
      *&v71[10] = *&v58[10];
      v10 = v53;
      v11 = v54;
      v12 = v55;
LABEL_14:
      v66 = v10;
      v67 = v11;
      v68 = v12;
      v69 = v9;
      a4 = v43;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (*(a1 + 64) <= 6u)
  {
    v43 = a4;
    if (v8 == 5)
    {
      type metadata accessor for RoadsideAssistanceModel();
      sub_100058788(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);

      v13 = EnvironmentObject.init()();
      v15 = v14;
      type metadata accessor for UIMetrics();
      sub_100058788(&qword_100354D40, type metadata accessor for UIMetrics);
      v16 = EnvironmentObject.init()();
      v18 = v17;
      type metadata accessor for QuestionnaireState();
      sub_100058788(&qword_100354D50, type metadata accessor for QuestionnaireState);
      *&v45 = v13;
      *(&v45 + 1) = v15;
      *&v46 = v16;
      *(&v46 + 1) = v18;
      *&v47 = EnvironmentObject.init()();
      *(&v47 + 1) = v19;
      v48.n128_u64[0] = a1;
      v48.n128_u64[1] = a2;
      *&v49 = a3;
      v68 = v47;
      v69 = v48;
      *&v70 = a3;
      v66 = v45;
      v67 = v46;
      v71[16] = 1;
      sub_1000586D8(&v45, &v53);
      sub_10004DC74();
      sub_100058548();
      _ConditionalContent<>.init(storage:)();
      v70 = v57;
      *v71 = *v58;
      v66 = v53;
      v67 = v54;
      v71[16] = v58[16];
      v68 = v55;
      v69 = v56;
      v52 = 1;
      v71[17] = 1;
      sub_1000040A8(&qword_100357A78);
      sub_1000040A8(&qword_100357A98);
      sub_100058388();
      sub_1000584BC();
      _ConditionalContent<>.init(storage:)();
      v70 = v63;
      *v71 = *v64;
      *&v71[16] = *&v64[16];
      v66 = v59;
      v67 = v60;
      v68 = v61;
      v69 = v62;
      v65 = 0;
      v71[25] = 0;
      sub_1000040A8(&qword_100357A58);
      sub_1000040A8(&qword_100357A60);
      sub_1000582FC();
      sub_10005859C();
      _ConditionalContent<>.init(storage:)();
      sub_100058734(&v45);
LABEL_13:
      v9 = v56;
      v70 = v57;
      *v71 = *v58;
      *&v71[10] = *&v58[10];
      v10 = v53;
      v11 = v54;
      v12 = v55;
      goto LABEL_14;
    }

LABEL_12:
    type metadata accessor for AppEvents();
    sub_100058788(&qword_100354D48, type metadata accessor for AppEvents);

    v31 = EnvironmentObject.init()();
    v33 = v32;
    type metadata accessor for UIMetrics();
    sub_100058788(&qword_100354D40, type metadata accessor for UIMetrics);
    v34 = EnvironmentObject.init()();
    v36 = v35;
    type metadata accessor for QuestionnaireState();
    sub_100058788(&qword_100354D50, type metadata accessor for QuestionnaireState);
    *&v45 = v31;
    *(&v45 + 1) = v33;
    *&v46 = v34;
    *(&v46 + 1) = v36;
    *&v47 = EnvironmentObject.init()();
    *(&v47 + 1) = v37;
    v48.n128_u64[0] = sub_10004DD1C;
    v48.n128_u64[1] = 0;
    LOBYTE(v49) = 0;
    *(&v49 + 1) = a1;
    *&v50 = a2;
    *(&v50 + 1) = a3;
    v68 = v47;
    v69 = sub_10004DD1C;
    v70 = v49;
    *v71 = v50;
    v66 = v45;
    v67 = v46;
    v71[16] = 0;
    sub_100050308(&v45, &v53);
    sub_10004DC74();
    sub_100058548();
    _ConditionalContent<>.init(storage:)();
    v70 = v57;
    *v71 = *v58;
    v66 = v53;
    v67 = v54;
    v71[16] = v58[16];
    v68 = v55;
    v69 = v56;
    v52 = 1;
    v71[17] = 1;
    sub_1000040A8(&qword_100357A78);
    sub_1000040A8(&qword_100357A98);
    sub_100058388();
    sub_1000584BC();
    _ConditionalContent<>.init(storage:)();
    v70 = v63;
    *v71 = *v64;
    *&v71[16] = *&v64[16];
    v66 = v59;
    v67 = v60;
    v68 = v61;
    v69 = v62;
    v65 = 0;
    v71[25] = 0;
    sub_1000040A8(&qword_100357A58);
    sub_1000040A8(&qword_100357A60);
    sub_1000582FC();
    sub_10005859C();
    _ConditionalContent<>.init(storage:)();
    sub_100050DE0(&v45);
    goto LABEL_13;
  }

  if (v8 == 7)
  {
    type metadata accessor for AppEvents();
    v44 = a4;
    sub_100058788(&qword_100354D48, type metadata accessor for AppEvents);

    v20 = EnvironmentObject.init()();
    v41 = v21;
    v42 = v20;
    type metadata accessor for RoadsideAssistanceModel();
    sub_100058788(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    v22 = EnvironmentObject.init()();
    v24 = v23;
    type metadata accessor for UIMetrics();
    sub_100058788(&qword_100354D40, type metadata accessor for UIMetrics);
    v25 = EnvironmentObject.init()();
    v27 = v26;
    type metadata accessor for QuestionnaireState();
    sub_100058788(&qword_100354D50, type metadata accessor for QuestionnaireState);
    v28 = EnvironmentObject.init()();
    v30 = v29;
    LOBYTE(v53) = 0;
    State.init(wrappedValue:)();
    *&v45 = v42;
    *(&v45 + 1) = v41;
    *&v46 = v22;
    *(&v46 + 1) = v24;
    *&v47 = v25;
    *(&v47 + 1) = v27;
    a4 = v44;
    v48.n128_u64[0] = v28;
    v48.n128_u64[1] = v30;
    LOBYTE(v49) = v66;
    *(&v49 + 1) = *(&v66 + 1);
    *&v50 = a1;
    *(&v50 + 1) = a2;
    v51 = a3;
    v70 = v49;
    *v71 = v50;
    *&v71[16] = a3;
    v66 = v45;
    v67 = v46;
    v68 = v47;
    v69 = v48;
    v52 = 0;
    v71[24] = 0;
    sub_100058628(&v45, &v53);
    sub_1000582A8();
    _ConditionalContent<>.init(storage:)();
    v70 = v63;
    *v71 = *v64;
    *&v71[9] = *&v64[9];
    v66 = v59;
    v67 = v60;
    v68 = v61;
    v69 = v62;
    v65 = 1;
    v71[25] = 1;
    sub_1000040A8(&qword_100357A58);
    sub_1000040A8(&qword_100357A60);
    sub_1000582FC();
    sub_10005859C();
    _ConditionalContent<>.init(storage:)();
    sub_100058684(&v45);
    v70 = v57;
    *v71 = *v58;
    *&v71[10] = *&v58[10];
    v66 = v53;
    v67 = v54;
    v68 = v55;
    v69 = v56;
  }

  else
  {
    v65 = 1;
    v71[24] = 1;
    sub_1000582A8();
    _ConditionalContent<>.init(storage:)();
    v56 = v62;
    v57 = v63;
    *v58 = *v64;
    *&v58[9] = *&v64[9];
    v53 = v59;
    v54 = v60;
    v55 = v61;
    LOBYTE(v45) = 1;
    v58[25] = 1;
    sub_1000040A8(&qword_100357A58);
    sub_1000040A8(&qword_100357A60);
    sub_1000582FC();
    sub_10005859C();
    _ConditionalContent<>.init(storage:)();
  }

LABEL_15:
  v38 = *v71;
  *(a4 + 64) = v70;
  *(a4 + 80) = v38;
  *(a4 + 90) = *&v71[10];
  v39 = v67;
  *a4 = v66;
  *(a4 + 16) = v39;
  result = v69;
  *(a4 + 32) = v68;
  *(a4 + 48) = result;
  return result;
}

unint64_t sub_1000582A8()
{
  result = qword_100357A50;
  if (!qword_100357A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357A50);
  }

  return result;
}

unint64_t sub_1000582FC()
{
  result = qword_100357A68;
  if (!qword_100357A68)
  {
    sub_100008CF0(&qword_100357A58);
    sub_100058388();
    sub_1000584BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357A68);
  }

  return result;
}

unint64_t sub_100058388()
{
  result = qword_100357A70;
  if (!qword_100357A70)
  {
    sub_100008CF0(&qword_100357A78);
    sub_100058414();
    sub_100058468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357A70);
  }

  return result;
}

unint64_t sub_100058414()
{
  result = qword_100357A80;
  if (!qword_100357A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357A80);
  }

  return result;
}

unint64_t sub_100058468()
{
  result = qword_100357A88;
  if (!qword_100357A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357A88);
  }

  return result;
}

unint64_t sub_1000584BC()
{
  result = qword_100357A90;
  if (!qword_100357A90)
  {
    sub_100008CF0(&qword_100357A98);
    sub_10004DC74();
    sub_100058548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357A90);
  }

  return result;
}

unint64_t sub_100058548()
{
  result = qword_100357AA0;
  if (!qword_100357AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357AA0);
  }

  return result;
}

unint64_t sub_10005859C()
{
  result = qword_100357AA8;
  if (!qword_100357AA8)
  {
    sub_100008CF0(&qword_100357A60);
    sub_1000582A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357AA8);
  }

  return result;
}

uint64_t sub_100058788(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000587D4()
{
  result = qword_100357AB0;
  if (!qword_100357AB0)
  {
    sub_100008CF0(&qword_100357AB8);
    sub_1000582FC();
    sub_10005859C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357AB0);
  }

  return result;
}

__n128 sub_100058860(uint64_t a1, uint64_t a2)
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

uint64_t sub_100058874(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000588D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100058960@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000089B0(a2, v24);
  v6 = swift_allocObject();
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  v8 = a1[3];
  v6[3] = a1[2];
  v6[4] = v8;
  sub_100008A18(v24, (v6 + 5));
  sub_1000089B0(a2, v28);
  v9 = swift_allocObject();
  v10 = a1[1];
  v9[1] = *a1;
  v9[2] = v10;
  v11 = a1[3];
  v9[3] = a1[2];
  v9[4] = v11;
  sub_100008A18(v28, (v9 + 5));
  sub_10005BE90(a1, v26);
  sub_10005BE90(a1, v26);
  sub_10013A3F0(&v30, ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter, 0, sub_10005BECC, v6, sub_10005BF30, v9, 0);
  v12 = *(a1 + 4);
  if (v12)
  {
    if (*(v12 + 88))
    {
      v42 = *(v12 + 88);
      v43 = 1;
      v45 = 0;
      v46 = 0;
      v44 = 0;

      sub_1000E47E8(&v42, v28);
    }

    else
    {
      v29 = 0;
      memset(v28, 0, sizeof(v28));
    }

    sub_100006C20(v28, v23, &qword_100357AC0);
    v13 = v37;
    v24[8] = v38;
    v24[9] = v39;
    v14 = v39;
    v24[10] = v40;
    v15 = v34;
    v16 = v33;
    v24[4] = v34;
    v24[5] = v35;
    v17 = v35;
    v18 = v36;
    v24[6] = v36;
    v24[7] = v37;
    v24[0] = v30;
    v24[1] = v31;
    v20 = v30;
    v19 = v31;
    v21 = v32;
    v24[2] = v32;
    v24[3] = v33;
    *(a3 + 128) = v38;
    *(a3 + 144) = v14;
    *(a3 + 160) = v40;
    *(a3 + 64) = v15;
    *(a3 + 80) = v17;
    *(a3 + 96) = v18;
    *(a3 + 112) = v13;
    *a3 = v20;
    *(a3 + 16) = v19;
    v25 = v41;
    *(a3 + 176) = v41;
    *(a3 + 32) = v21;
    *(a3 + 48) = v16;
    sub_100006C20(v23, a3 + 184, &qword_100357AC0);
    sub_100006C20(v24, v26, &qword_100357AC8);
    sub_100008FA0(v28, &qword_100357AC0);
    sub_100008FA0(v23, &qword_100357AC0);
    v26[8] = v38;
    v26[9] = v39;
    v26[10] = v40;
    v27 = v41;
    v26[4] = v34;
    v26[5] = v35;
    v26[6] = v36;
    v26[7] = v37;
    v26[0] = v30;
    v26[1] = v31;
    v26[2] = v32;
    v26[3] = v33;
    return sub_100008FA0(v26, &qword_100357AC8);
  }

  else
  {
    type metadata accessor for EmergencyModel();
    sub_10005D728(&qword_100356B60, type metadata accessor for EmergencyModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_100058C70@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_1000040A8(&qword_100357B78);
  sub_100058D10(a1, a2, a3 + *(v6 + 44));
  LOBYTE(a2) = static Edge.Set.all.getter();
  v7 = a3 + *(sub_1000040A8(&qword_100357B80) + 36);
  *v7 = a2;
  result = 0.0;
  *(v7 + 8) = xmmword_100277A70;
  *(v7 + 24) = xmmword_100277A70;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_100058D10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v129 = a2;
  v5 = sub_1000040A8(&qword_100357B88);
  __chkstk_darwin(v5 - 8);
  v118 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v116 = (&v113 - v8);
  v9 = sub_1000040A8(&qword_100357B90);
  __chkstk_darwin(v9 - 8);
  v119 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v131 = (&v113 - v12);
  v13 = type metadata accessor for AccessibilityTraits();
  v126 = *(v13 - 8);
  v127 = v13;
  __chkstk_darwin(v13);
  v125 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Font.Leading();
  v122 = *(v15 - 8);
  v123 = v15;
  __chkstk_darwin(v15);
  v121 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000040A8(&qword_100357B98);
  __chkstk_darwin(v17 - 8);
  v117 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v133 = &v113 - v20;
  v21 = type metadata accessor for Image.ResizingMode();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000040A8(&qword_100357BA0);
  __chkstk_darwin(v25 - 8);
  v115 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v132 = &v113 - v28;
  v128 = a1;
  v29 = *(a1 + 48);
  if (v29)
  {
    v30 = v29[14];
    v130 = v29;
    swift_retain_n();
    v31 = v30;
    v124 = UIContentSizeCategoryAccessibilityExtraLarge;
    v32 = static UIContentSizeCategory.>= infix(_:_:)();

    v120 = a3;
    if (v32)
    {
      v33 = sub_1000040A8(&qword_100357BD8);
      (*(*(v33 - 8) + 56))(v132, 1, 1, v33);
    }

    else
    {
      v34 = v130[9];
      v35 = v130[10];
      sub_1000088DC(v130 + 6, v34);
      (*(v35 + 24))(&v139, v34, v35);
      sub_100008964(&v139);
      Image.init(_:bundle:)();
      (*(v22 + 104))(v24, enum case for Image.ResizingMode.stretch(_:), v21);
      v36 = Image.resizable(capInsets:resizingMode:)();

      (*(v22 + 8))(v24, v21);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v154[27] = *&v154[83];
      *&v154[35] = *&v154[91];
      *&v154[43] = *&v154[99];
      *&v154[51] = *&v154[107];
      *&v154[3] = *&v154[59];
      *&v154[11] = *&v154[67];
      LOBYTE(v134) = 1;
      *&v154[19] = *&v154[75];
      v37 = sub_1000088DC(v129, v129[3]);
      v38 = *(*v37 + 32);
      v113 = *(*v37 + 48);
      v114 = v38;
      v39 = static Edge.Set.all.getter();
      LOBYTE(v155) = 0;
      v135 = v36;
      LOWORD(v136[0]) = 1;
      *(&v136[4] + 2) = *&v154[32];
      *(&v136[5] + 2) = *&v154[40];
      *(&v136[6] + 2) = *&v154[48];
      *&v136[7] = *&v154[55];
      *(v136 + 2) = *v154;
      *(&v136[1] + 2) = *&v154[8];
      *(&v136[2] + 2) = *&v154[16];
      *(&v136[3] + 2) = *&v154[24];
      BYTE8(v136[7]) = v39;
      v136[8] = v114;
      v137 = v113;
      LOBYTE(v138[0]) = 0;
      sub_1000040A8(&qword_100357BA8);
      sub_10005D0EC();
      v40 = v132;
      View.accessibility(hidden:)();
      v147 = v136[7];
      v148 = v136[8];
      v149 = v137;
      LOBYTE(v150[0]) = v138[0];
      v143 = v136[3];
      v144 = v136[4];
      v145 = v136[5];
      v146 = v136[6];
      v139 = v135;
      v140 = v136[0];
      v141 = v136[1];
      v142 = v136[2];
      sub_100008FA0(&v139, &qword_100357BA8);
      v41 = sub_1000040A8(&qword_100357BD8);
      (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    }

    LocalizedStringKey.init(stringLiteral:)();
    v42 = Text.init(_:tableName:bundle:comment:)();
    v44 = v43;
    v46 = v45;
    static Font.largeTitle.getter();
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    v48 = v121;
    v47 = v122;
    v49 = v123;
    (*(v122 + 104))(v121, enum case for Font.Leading.tight(_:), v123);
    Font.leading(_:)();

    (*(v47 + 8))(v48, v49);
    v50 = Text.font(_:)();
    v52 = v51;
    LOBYTE(v48) = v53;

    sub_1000317C4(v42, v44, v46 & 1);

    static Color.white.getter();
    v54 = Text.foregroundColor(_:)();
    v122 = v55;
    v123 = v54;
    v57 = v56;
    v121 = v58;

    sub_1000317C4(v50, v52, v48 & 1);

    v59 = v130;
    v60 = v130[9];
    v61 = v130[10];
    sub_1000088DC(v130 + 6, v60);
    (*(v61 + 24))(&v139, v60, v61);
    sub_100008964(&v139);
    v62 = v59[14];
    static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    v64 = v59[9];
    v65 = v59[10];
    sub_1000088DC(v59 + 6, v64);
    (*(v65 + 24))(&v139, v64, v65);
    static Alignment.leading.getter();
    sub_100008964(&v139);
    v66 = v59[14];
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v151[55] = v158;
    *&v151[71] = v159;
    *&v151[87] = v160;
    *&v151[103] = v161;
    *&v151[7] = v155;
    *&v151[23] = v156;
    v152 = v57 & 1;
    *&v151[39] = v157;
    v67 = static Edge.Set.all.getter();
    *(&v136[5] + 9) = *&v151[64];
    *(&v136[6] + 9) = *&v151[80];
    *(&v136[7] + 9) = *&v151[96];
    *(&v136[1] + 9) = *v151;
    *(&v136[2] + 9) = *&v151[16];
    *(&v136[3] + 9) = *&v151[32];
    v153 = 0;
    *&v135 = v123;
    *(&v135 + 1) = v122;
    LOBYTE(v136[0]) = v57 & 1;
    *(&v136[0] + 1) = v121;
    *&v136[1] = KeyPath;
    BYTE8(v136[1]) = 0;
    *(&v136[8] + 1) = *&v151[111];
    *(&v136[4] + 9) = *&v151[48];
    LOBYTE(v137) = v67;
    *(&v137 + 1) = 0;
    *&v138[0] = 0;
    *(v138 + 8) = xmmword_10027BC80;
    BYTE8(v138[1]) = 0;
    v68 = v125;
    static AccessibilityTraits.isHeader.getter();
    sub_1000040A8(&qword_100357BE0);
    sub_10005D288();
    View.accessibility(addTraits:)();
    (*(v126 + 8))(v68, v127);
    v148 = v136[8];
    v149 = v137;
    v150[0] = v138[0];
    *(v150 + 9) = *(v138 + 9);
    v145 = v136[5];
    v146 = v136[6];
    v147 = v136[7];
    v141 = v136[1];
    v142 = v136[2];
    v143 = v136[3];
    v144 = v136[4];
    v139 = v135;
    v140 = v136[0];
    sub_100008FA0(&v139, &qword_100357BE0);
    sub_1000040A8(&qword_100357BF0);
    v69 = swift_allocObject();
    v70 = objc_opt_self();
    v71 = [v70 mainBundle];
    v72._countAndFlagsBits = 0xD00000000000001FLL;
    v162._object = 0x8000000100298DD0;
    v72._object = 0x8000000100298DB0;
    v73._countAndFlagsBits = 0;
    v73._object = 0xE000000000000000;
    v162._countAndFlagsBits = 0xD000000000000058;
    v74 = NSLocalizedString(_:tableName:bundle:value:comment:)(v72, 0, v71, v73, v162);

    v69[2] = v74;
    v75 = [v70 mainBundle];
    v76._countAndFlagsBits = 0xD000000000000022;
    v163._object = 0x8000000100298DD0;
    v76._object = 0x8000000100298E30;
    v77._countAndFlagsBits = 0;
    v77._object = 0xE000000000000000;
    v163._countAndFlagsBits = 0xD000000000000058;
    v78 = NSLocalizedString(_:tableName:bundle:value:comment:)(v76, 0, v75, v77, v163);

    v69[3] = v78;
    v79 = [v70 mainBundle];
    v80._countAndFlagsBits = 0xD00000000000002FLL;
    v164._object = 0x8000000100298DD0;
    v80._object = 0x8000000100296DC0;
    v81._countAndFlagsBits = 0;
    v81._object = 0xE000000000000000;
    v164._countAndFlagsBits = 0xD000000000000058;
    v82 = NSLocalizedString(_:tableName:bundle:value:comment:)(v80, 0, v79, v81, v164);

    v69[4] = v82;
    if (!*(v128 + 2))
    {
      type metadata accessor for BluetoothModel();
      v111 = &qword_100357BF8;
      v112 = type metadata accessor for BluetoothModel;
      goto LABEL_26;
    }

    v83 = 0;
    v69[5]._countAndFlagsBits = 0;
    v69[5]._object = 0;
    v84 = _swiftEmptyArrayStorage;
LABEL_10:
    if (v83 <= 4)
    {
      v85 = 4;
    }

    else
    {
      v85 = v83;
    }

    v86 = v85 + 1;
    v87 = 16 * v83 + 40;
    while (1)
    {
      if (v83 == 4)
      {
        swift_setDeallocating();
        sub_1000040A8(&qword_1003566A0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v94 = static VerticalAlignment.top.getter();
        v95 = v131;
        *v131 = v94;
        v95[1] = 0;
        *(v95 + 16) = 1;
        v130 = (v95 + *(sub_1000040A8(&qword_100357C00) + 44));
        v96 = static HorizontalAlignment.leading.getter();
        v97 = v116;
        *v116 = v96;
        *(v97 + 8) = 0;
        *(v97 + 16) = 0;
        v127 = *(sub_1000040A8(&qword_100357C08) + 44);
        v128 = v84;
        v134 = v84;
        swift_getKeyPath();
        sub_1000089B0(v129, &v135);
        v98 = swift_allocObject();
        sub_100008A18(&v135, v98 + 16);
        *(v98 + 56) = 10649826;
        *(v98 + 64) = 0xA300000000000000;

        sub_1000040A8(&qword_100355E30);
        sub_1000040A8(&qword_100357C10);
        sub_100009274(&qword_100357870, &qword_100355E30);
        sub_100009274(&qword_100357C18, &qword_100357C10);
        ForEach<>.init(_:id:content:)();
        v99 = v118;
        sub_100006C20(v97, v118, &qword_100357B88);
        v100 = v130;
        sub_100006C20(v99, v130, &qword_100357B88);
        v101 = v100 + *(sub_1000040A8(&qword_100357C20) + 48);
        *v101 = 0;
        v101[8] = 0;
        sub_100008FA0(v97, &qword_100357B88);
        sub_100008FA0(v99, &qword_100357B88);

        v102 = v132;
        v103 = v115;
        sub_100006C20(v132, v115, &qword_100357BA0);
        v104 = v133;
        v105 = v117;
        sub_100006C20(v133, v117, &qword_100357B98);
        v106 = v131;
        v107 = v119;
        sub_100006C20(v131, v119, &qword_100357B90);
        v108 = v120;
        sub_100006C20(v103, v120, &qword_100357BA0);
        v109 = sub_1000040A8(&qword_100357C28);
        sub_100006C20(v105, v108 + *(v109 + 48), &qword_100357B98);
        sub_100006C20(v107, v108 + *(v109 + 64), &qword_100357B90);
        sub_100008FA0(v106, &qword_100357B90);
        sub_100008FA0(v104, &qword_100357B98);
        sub_100008FA0(v102, &qword_100357BA0);
        sub_100008FA0(v107, &qword_100357B90);
        sub_100008FA0(v105, &qword_100357B98);
        return sub_100008FA0(v103, &qword_100357BA0);
      }

      if (v86 == ++v83)
      {
        break;
      }

      v88 = v87 + 16;
      v89 = *(&v69->_countAndFlagsBits + v87);
      v87 += 16;
      if (v89)
      {
        v90 = *(&v69[-1] + v88 - 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_10017B338(0, *(v84 + 2) + 1, 1, v84);
        }

        v92 = *(v84 + 2);
        v91 = *(v84 + 3);
        if (v92 >= v91 >> 1)
        {
          v84 = sub_10017B338((v91 > 1), v92 + 1, 1, v84);
        }

        *(v84 + 2) = v92 + 1;
        v93 = &v84[16 * v92];
        *(v93 + 4) = v90;
        *(v93 + 5) = v89;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  type metadata accessor for UIMetrics();
  v111 = &qword_100354D40;
  v112 = type metadata accessor for UIMetrics;
LABEL_26:
  sub_10005D728(v111, v112);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100059F20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1000040A8(&qword_100357C30);
  __chkstk_darwin(v8 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v11);
  v13 = &v23[-v12 - 8];
  v15 = *a1;
  v14 = a1[1];
  *v13 = static VerticalAlignment.firstTextLineCenter.getter();
  *(v13 + 1) = 0x4024000000000000;
  v13[16] = 0;
  v16 = sub_1000040A8(&qword_100357C38);
  sub_10005A198(a2, a3, v15, v14, &v13[*(v16 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v23[55] = v28;
  *&v23[71] = v29;
  *&v23[87] = v30;
  *&v23[103] = v31;
  *&v23[7] = v25;
  *&v23[23] = v26;
  v24 = 1;
  *&v23[39] = v27;
  sub_100006C20(v13, v10, &qword_100357C30);
  sub_100006C20(v10, a4, &qword_100357C30);
  v17 = a4 + *(sub_1000040A8(&qword_100357C40) + 48);
  v18 = *&v23[80];
  *(v17 + 73) = *&v23[64];
  *(v17 + 89) = v18;
  *(v17 + 105) = *&v23[96];
  v19 = *&v23[16];
  *(v17 + 9) = *v23;
  *(v17 + 25) = v19;
  v20 = *&v23[48];
  *(v17 + 41) = *&v23[32];
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v17 + 120) = *&v23[111];
  *(v17 + 57) = v20;
  sub_100008FA0(v13, &qword_100357C30);
  return sub_100008FA0(v10, &qword_100357C30);
}

uint64_t sub_10005A198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v7 = sub_1000040A8(&qword_100357C48);
  __chkstk_darwin(v7 - 8);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v49 - v10;
  v57 = a1;
  v58 = a2;
  sub_100031770();

  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Font.title2.getter();
  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;

  sub_1000317C4(v11, v13, v15 & 1);

  static Color.gray.getter();
  v21 = Text.foregroundColor(_:)();
  v23 = v22;
  LOBYTE(v11) = v24;
  v26 = v25;

  sub_1000317C4(v16, v18, v20 & 1);

  v57 = v21;
  v58 = v23;
  v59 = v11 & 1;
  v61 = v26;
  View.accessibility(hidden:)();
  sub_1000317C4(v21, v23, v11 & 1);

  v57 = v49;
  v58 = v50;

  v27 = Text.init<A>(_:)();
  v29 = v28;
  LOBYTE(v21) = v30;
  static Font.title2.getter();
  v31 = Text.font(_:)();
  v33 = v32;
  LOBYTE(v26) = v34;

  sub_1000317C4(v27, v29, v21 & 1);

  static Color.gray.getter();
  v35 = Text.foregroundColor(_:)();
  v37 = v36;
  LOBYTE(v18) = v38;
  v50 = v39;

  sub_1000317C4(v31, v33, v26 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v57) = v18 & 1;
  v41 = v52;
  v42 = v53;
  sub_100006C20(v52, v53, &qword_100357C48);
  v43 = v42;
  v44 = v51;
  sub_100006C20(v43, v51, &qword_100357C48);
  v45 = (v44 + *(sub_1000040A8(&qword_100357C50) + 48));
  *&v55 = v35;
  *(&v55 + 1) = v37;
  v56[0] = v18 & 1;
  *&v56[1] = v54[0];
  *&v56[4] = *(v54 + 3);
  v46 = v50;
  *&v56[8] = v50;
  *&v56[16] = KeyPath;
  *&v56[24] = 0;
  v56[26] = 1;
  *(v45 + 27) = *&v56[11];
  v47 = *v56;
  *v45 = v55;
  v45[1] = v47;
  sub_100006C20(&v55, &v57, &qword_100357C58);
  sub_100008FA0(v41, &qword_100357C48);
  v57 = v35;
  v58 = v37;
  v59 = v18 & 1;
  *v60 = v54[0];
  *&v60[3] = *(v54 + 3);
  v61 = v46;
  v62 = KeyPath;
  v63 = 0;
  v64 = 1;
  sub_100008FA0(&v57, &qword_100357C58);
  return sub_100008FA0(v53, &qword_100357C48);
}

double sub_10005A578@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_1000040A8(&qword_100357AD0);
  sub_10005A618(a1, (a2 + *(v4 + 44)));
  v5 = static Edge.Set.all.getter();
  v6 = a2 + *(sub_1000040A8(&qword_100357AD8) + 36);
  *v6 = v5;
  result = 0.0;
  *(v6 + 8) = xmmword_100277A70;
  *(v6 + 24) = xmmword_100277A70;
  *(v6 + 40) = 0;
  return result;
}

uint64_t sub_10005A618@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v174 = a2;
  v3 = type metadata accessor for KeyboardShortcut();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GlassProminentButtonStyle();
  v144 = *(v7 - 8);
  v145 = v7;
  __chkstk_darwin(v7);
  v143 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1000040A8(&qword_100357AE0);
  __chkstk_darwin(v166);
  v146 = &v139 - v9;
  v155 = sub_1000040A8(&qword_100357AE8);
  __chkstk_darwin(v155);
  v160 = &v139 - v10;
  v11 = type metadata accessor for BorderedProminentButtonStyle();
  v140 = *(v11 - 8);
  v141 = v11;
  __chkstk_darwin(v11);
  v139 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1000040A8(&qword_100357AF0);
  __chkstk_darwin(v153);
  v142 = &v139 - v13;
  v150 = sub_1000040A8(&qword_100357AF8);
  __chkstk_darwin(v150);
  v175 = &v139 - v14;
  v159 = sub_1000040A8(&qword_100357B00);
  __chkstk_darwin(v159);
  v154 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v157 = &v139 - v17;
  v164 = sub_1000040A8(&qword_100357B08);
  v162 = *(v164 - 8);
  __chkstk_darwin(v164);
  v158 = &v139 - v18;
  v156 = sub_1000040A8(&qword_100357B10);
  __chkstk_darwin(v156);
  v163 = &v139 - v19;
  v161 = sub_1000040A8(&qword_100357B18);
  __chkstk_darwin(v161);
  v168 = &v139 - v20;
  v167 = sub_1000040A8(&qword_100357B20);
  __chkstk_darwin(v167);
  v22 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v165 = &v139 - v24;
  __chkstk_darwin(v25);
  v27 = &v139 - v26;
  v28 = type metadata accessor for Font.Leading();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = a1;
  v32 = *(a1 + 32);
  if (!v32)
  {
    type metadata accessor for EmergencyModel();
    v136 = &qword_100356B60;
    v137 = type metadata accessor for EmergencyModel;
LABEL_18:
    sub_10005D728(v136, v137);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v169 = v6;
  v170 = v27;
  v171 = v4;
  v172 = v3;
  v173 = v22;
  v33 = *(v32 + 152);
  v178 = v32;
  if (v33 == 1 || *(v32 + 144) >> 60 == 15)
  {
    v34 = objc_opt_self();
    swift_retain_n();
    v35 = [v34 mainBundle];
    v138 = 0x8000000100298C40;
    v36 = 0x8000000100298C20;
    v37 = 0xD000000000000069;
    v38 = 0xD00000000000001DLL;
  }

  else
  {
    v39 = objc_opt_self();
    swift_retain_n();
    v35 = [v39 mainBundle];
    v138 = 0x8000000100298CE0;
    v38 = 0xD00000000000002BLL;
    v36 = 0x8000000100298CB0;
    v37 = 0xD00000000000006ALL;
  }

  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v38, 0, v35, v40, *&v37);

  v187 = v41;
  sub_100031770();
  v42 = Text.init<A>(_:)();
  v44 = v43;
  v46 = v45;
  static Font.footnote.getter();
  (*(v29 + 104))(v31, enum case for Font.Leading.tight(_:), v28);
  Font.leading(_:)();

  (*(v29 + 8))(v31, v28);
  v47 = Text.font(_:)();
  v49 = v48;
  v51 = v50;

  sub_1000317C4(v42, v44, v46 & 1);

  static Color.gray.getter();
  v52 = Text.foregroundColor(_:)();
  v179 = v53;
  v180 = v52;
  v55 = v54;
  v57 = v56;

  sub_1000317C4(v47, v49, v51 & 1);

  v58 = v151;
  v59 = *(v151 + 48);
  if (!v59)
  {
    type metadata accessor for UIMetrics();
    v136 = &qword_100354D40;
    v137 = type metadata accessor for UIMetrics;
    goto LABEL_18;
  }

  v60 = *(v59 + 112);

  v61 = v60;
  v147 = static UIContentSizeCategory.>= infix(_:_:)();

  KeyPath = swift_getKeyPath();
  v62 = *(v59 + 112);

  static Alignment.center.getter();
  v63 = static UIContentSizeCategory.>= infix(_:_:)();
  v64 = v169;
  if (v63)
  {
    static Alignment.center.getter();
    if (static Alignment.== infix(_:_:)())
    {
      static Alignment.leading.getter();
    }
  }

  v152 = v57;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v213[55] = v224;
  *&v213[71] = v225;
  *&v213[87] = v226;
  *&v213[103] = v227;
  *&v213[7] = v221;
  *&v213[23] = v222;
  v176 = v55 & 1;
  v215 = v55 & 1;
  *&v213[39] = v223;
  v148 = static Edge.Set.top.getter();
  v216 = 1;
  v149 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v218 = 0;
  v73 = swift_allocObject();
  v74 = v58[1];
  v73[1] = *v58;
  v73[2] = v74;
  v75 = v58[3];
  v73[3] = v58[2];
  v73[4] = v75;
  sub_10005BE90(v58, &v187);
  sub_10005CB9C();
  v76 = v175;
  Button.init(action:label:)();
  v77 = (v76 + *(v150 + 36));
  v78 = *(sub_1000040A8(&qword_1003550A0) + 28);
  v79 = enum case for ControlSize.large(_:);
  v80 = type metadata accessor for ControlSize();
  (*(*(v80 - 8) + 104))(v77 + v78, v79, v80);
  *v77 = swift_getKeyPath();
  LODWORD(v79) = *(v178 + 130);

  if (v79 == 1)
  {
    v81 = v139;
    BorderedProminentButtonStyle.init()();
    sub_10005CBF8();
    sub_10005D728(&qword_100357B50, &type metadata accessor for BorderedProminentButtonStyle);
    v82 = v141;
    v83 = v142;
    View.buttonStyle<A>(_:)();
    (*(v140 + 8))(v81, v82);
    v84 = (v83 + *(v153 + 36));
    sub_1000040A8(&qword_100357740);
    static ButtonBorderShape.capsule.getter();
    *v84 = swift_getKeyPath();
    v85 = &qword_100357AF0;
    sub_100006C20(v83, v160, &qword_100357AF0);
    swift_storeEnumTagMultiPayload();
    sub_10005CCE4();
    sub_10005CE28();
    v86 = v154;
    _ConditionalContent<>.init(storage:)();
    v87 = v83;
  }

  else
  {
    v88 = v143;
    GlassProminentButtonStyle.init()();
    sub_10005CBF8();
    sub_10005D728(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
    v89 = v145;
    v90 = v146;
    View.buttonStyle<A>(_:)();
    (*(v144 + 8))(v88, v89);
    v91 = (v90 + *(v166 + 36));
    sub_1000040A8(&qword_100357740);
    static ButtonBorderShape.capsule.getter();
    *v91 = swift_getKeyPath();
    v85 = &qword_100357AE0;
    sub_100006C20(v90, v160, &qword_100357AE0);
    swift_storeEnumTagMultiPayload();
    sub_10005CCE4();
    sub_10005CE28();
    v86 = v154;
    v76 = v175;
    _ConditionalContent<>.init(storage:)();
    v87 = v90;
  }

  sub_100008FA0(v87, v85);
  sub_100008FA0(v76, &qword_100357AF8);
  v92 = v157;
  sub_10000CF4C(v86, v157, &qword_100357B00);
  static KeyboardShortcut.defaultAction.getter();
  sub_10005CF6C();
  v93 = v158;
  View.keyboardShortcut(_:)();
  (*(v171 + 8))(v64, v172);
  sub_100008FA0(v92, &qword_100357B00);
  v94 = static Color.green.getter();
  v95 = swift_getKeyPath();
  v187._countAndFlagsBits = v94;
  v96 = AnyShapeStyle.init<A>(_:)();
  v97 = v163;
  (*(v162 + 32))(v163, v93, v164);
  v98 = (v97 + *(v156 + 36));
  *v98 = v95;
  v98[1] = v96;
  v99 = *(v178 + 130);

  v100 = swift_getKeyPath();
  v101 = swift_allocObject();
  *(v101 + 16) = v99;
  v102 = v168;
  sub_10000CF4C(v97, v168, &qword_100357B10);
  v103 = (v102 + *(v161 + 36));
  *v103 = v100;
  v103[1] = sub_10005D0D4;
  v103[2] = v101;
  v104 = static Edge.Set.bottom.getter();
  if (qword_100353988 != -1)
  {
    swift_once();
  }

  v105 = (v147 & 1) == 0;
  LODWORD(v178) = v105;
  EdgeInsets.init(_all:)();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v165;
  sub_10000CF4C(v102, v165, &qword_100357B18);
  v115 = v114 + *(v167 + 36);
  *v115 = v104;
  *(v115 + 8) = v107;
  *(v115 + 16) = v109;
  *(v115 + 24) = v111;
  *(v115 + 32) = v113;
  *(v115 + 40) = 0;
  v116 = v170;
  sub_10000CF4C(v114, v170, &qword_100357B20);
  v117 = v173;
  sub_100006C20(v116, v173, &qword_100357B20);
  *&v181 = v180;
  *(&v181 + 1) = v179;
  LOBYTE(v182) = v176;
  *(&v182 + 1) = *v214;
  DWORD1(v182) = *&v214[3];
  v118 = v152;
  *(&v182 + 1) = v152;
  *&v183[0] = KeyPath;
  BYTE8(v183[0]) = v105;
  *(&v183[4] + 9) = *&v213[64];
  *(&v183[5] + 9) = *&v213[80];
  *(&v183[6] + 9) = *&v213[96];
  *(&v183[7] + 1) = *&v213[111];
  *(v183 + 9) = *v213;
  *(&v183[1] + 9) = *&v213[16];
  *(&v183[2] + 9) = *&v213[32];
  *(&v183[3] + 9) = *&v213[48];
  v119 = v148;
  LOBYTE(v184[0]) = v148;
  *(v184 + 1) = *v217;
  DWORD1(v184[0]) = *&v217[3];
  *(&v184[1] + 8) = 0u;
  *(v184 + 8) = 0u;
  BYTE8(v184[2]) = 1;
  *(&v184[2] + 9) = *v220;
  HIDWORD(v184[2]) = *&v220[3];
  v120 = v149;
  LOBYTE(v185) = v149;
  *(&v185 + 1) = *v219;
  DWORD1(v185) = *&v219[3];
  *(&v185 + 1) = v66;
  *&v186[0] = v68;
  *(&v186[0] + 1) = v70;
  *&v186[1] = v72;
  BYTE8(v186[1]) = 0;
  v121 = v181;
  v122 = v182;
  v123 = v183[1];
  v124 = v174;
  v174[2] = v183[0];
  v124[3] = v123;
  *v124 = v121;
  v124[1] = v122;
  v125 = v183[2];
  v126 = v183[3];
  v127 = v183[5];
  v124[6] = v183[4];
  v124[7] = v127;
  v124[4] = v125;
  v124[5] = v126;
  v128 = v183[6];
  v129 = v183[7];
  v130 = v184[1];
  v124[10] = v184[0];
  v124[11] = v130;
  v124[8] = v128;
  v124[9] = v129;
  v131 = v184[2];
  v132 = v185;
  v133 = v186[0];
  *(v124 + 233) = *(v186 + 9);
  v124[13] = v132;
  v124[14] = v133;
  v124[12] = v131;
  v134 = sub_1000040A8(&qword_100357B68);
  sub_100006C20(v117, v124 + *(v134 + 48), &qword_100357B20);
  sub_100006C20(&v181, &v187, &qword_100357B70);
  sub_100008FA0(v116, &qword_100357B20);
  sub_100008FA0(v117, &qword_100357B20);
  v197 = *&v213[64];
  v198 = *&v213[80];
  *v199 = *&v213[96];
  v193 = *v213;
  v194 = *&v213[16];
  v195 = *&v213[32];
  v187._countAndFlagsBits = v180;
  v187._object = v179;
  v188 = v176;
  *v189 = *v214;
  *&v189[3] = *&v214[3];
  v190 = v118;
  v191 = KeyPath;
  v192 = v178;
  *&v199[15] = *&v213[111];
  v196 = *&v213[48];
  v200 = v119;
  *v201 = *v217;
  *&v201[3] = *&v217[3];
  v202 = 0u;
  v203 = 0u;
  v204 = 1;
  *v205 = *v220;
  *&v205[3] = *&v220[3];
  v206 = v120;
  *&v207[3] = *&v219[3];
  *v207 = *v219;
  v208 = v66;
  v209 = v68;
  v210 = v70;
  v211 = v72;
  v212 = 0;
  return sub_100008FA0(&v187, &qword_100357B70);
}

void *sub_10005B998(void *result)
{
  v1 = result[4];
  if (!v1)
  {
    type metadata accessor for EmergencyModel();
    sub_10005D728(&qword_100356B60, type metadata accessor for EmergencyModel);
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_7;
  }

  if (!*(v1 + 88))
  {
    return result;
  }

  if (!*result)
  {
LABEL_7:
    type metadata accessor for AppEvents();
    sub_10005D728(&qword_100354D48, type metadata accessor for AppEvents);

    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  PassthroughSubject.send(_:)();

  sub_1000BAC9C();

  PassthroughSubject.send(_:)();
}

uint64_t sub_10005BB1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EmergencyModel();
  sub_10005D728(&qword_100356B60, type metadata accessor for EmergencyModel);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for UIMetrics();
  sub_10005D728(&qword_100354D40, type metadata accessor for UIMetrics);
  result = EnvironmentObject.init()();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v6;
  return result;
}

void *sub_10005BBE8(void *result)
{
  v1 = result[4];
  if (!v1)
  {
    type metadata accessor for EmergencyModel();
    sub_10005D728(&qword_100356B60, type metadata accessor for EmergencyModel);
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_7;
  }

  if (!*(v1 + 88))
  {
    return result;
  }

  if (!*result)
  {
LABEL_7:
    type metadata accessor for AppEvents();
    sub_10005D728(&qword_100354D48, type metadata accessor for AppEvents);

    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  PassthroughSubject.send(_:)();
}

uint64_t sub_10005BD34@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v13 = *v1;
  v14 = v3;
  v4 = v1[3];
  v15 = v1[2];
  v16 = v4;
  if (v4)
  {
    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    sub_1000088DC((v4 + 48), v5);
    (*(v6 + 24))(v12, v5, v6);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_100058960(&v13, v12, a1 + 24);
    v7 = swift_allocObject();
    v8 = v14;
    v7[1] = v13;
    v7[2] = v8;
    v9 = v16;
    v7[3] = v15;
    v7[4] = v9;
    *(a1 + 344) = sub_10005BE88;
    *(a1 + 352) = v7;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
    sub_10005BE90(&v13, v11);
    return sub_100008964(v12);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10005D728(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005BED8()
{

  sub_100008964(v0 + 80);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10005BF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v82 = a1;
  v72 = type metadata accessor for CircularProgressViewStyle();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000040A8(&qword_100354FA0);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v66 - v5;
  v86 = sub_1000040A8(&qword_100357C88);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v73 = &v66 - v6;
  v7 = sub_1000040A8(&qword_100357C90);
  __chkstk_darwin(v7 - 8);
  v88 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v66 - v10;
  v75 = sub_1000040A8(&qword_100354D60);
  __chkstk_darwin(v75);
  v12 = &v66 - v11;
  v76 = sub_1000040A8(&qword_100357C98);
  __chkstk_darwin(v76);
  v14 = &v66 - v13;
  v77 = sub_1000040A8(&qword_100357CA0);
  __chkstk_darwin(v77);
  v79 = &v66 - v15;
  v78 = sub_1000040A8(&qword_100357CA8);
  __chkstk_darwin(v78);
  v80 = &v66 - v16;
  v81 = sub_1000040A8(&qword_100357CB0);
  __chkstk_darwin(v81);
  v18 = &v66 - v17;
  v19 = sub_1000040A8(&qword_100357CB8);
  __chkstk_darwin(v19 - 8);
  v84 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v83 = &v66 - v22;
  LocalizedStringKey.init(stringLiteral:)();
  v23 = Text.init(_:tableName:bundle:comment:)();
  v25 = v24;
  *&v90 = v23;
  *(&v90 + 1) = v24;
  v27 = v26 & 1;
  LOBYTE(v91) = v26 & 1;
  *(&v91 + 1) = v28;
  v29 = enum case for DynamicTypeSize.accessibility2(_:);
  v30 = type metadata accessor for DynamicTypeSize();
  (*(*(v30 - 8) + 104))(v12, v29, v30);
  sub_10005D728(&qword_100354D68, &type metadata accessor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v74 = a3;
  sub_100009274(&qword_100354D78, &qword_100354D60);
  View.dynamicTypeSize<A>(_:)();
  sub_100008FA0(v12, &qword_100354D60);
  sub_1000317C4(v23, v25, v27);

  KeyPath = swift_getKeyPath();
  v32 = &v14[*(v76 + 36)];
  *v32 = KeyPath;
  v32[8] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v33 = v79;
  sub_10000CF4C(v14, v79, &qword_100357C98);
  v34 = (v33 + *(v77 + 36));
  v35 = v95;
  v34[4] = v94;
  v34[5] = v35;
  v34[6] = v96;
  v36 = v91;
  *v34 = v90;
  v34[1] = v36;
  v37 = v93;
  v34[2] = v92;
  v34[3] = v37;
  v38 = v33;
  v39 = v80;
  sub_10000CF4C(v38, v80, &qword_100357CA0);
  *(v39 + *(v78 + 36)) = 256;
  v40 = v82;
  if (!v82)
  {
LABEL_11:
    type metadata accessor for EmergencyModel();
    sub_10005D728(&qword_100356B60, type metadata accessor for EmergencyModel);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (*(v82 + 130))
  {
    v41 = 0.0;
  }

  else
  {
    v41 = 1.0;
  }

  sub_10000CF4C(v39, v18, &qword_100357CA8);
  *&v18[*(v81 + 36)] = v41;
  sub_10005D448();

  v42 = v83;
  View.accessibilityHidden(_:)();
  sub_100008FA0(v18, &qword_100357CB0);
  v43 = *(v40 + 130);

  v44 = v87;
  if (v43)
  {
    v45 = v67;
    ProgressView<>.init<>()();
    v46 = v70;
    CircularProgressViewStyle.init()();
    sub_100009274(&qword_100355088, &qword_100354FA0);
    sub_10005D728(&qword_100355090, &type metadata accessor for CircularProgressViewStyle);
    v47 = v73;
    v48 = v69;
    v49 = v72;
    View.progressViewStyle<A>(_:)();
    (*(v71 + 8))(v46, v49);
    (*(v68 + 8))(v45, v48);
    v50 = (v47 + *(sub_1000040A8(&qword_100354FA8) + 36));
    v51 = *(sub_1000040A8(&qword_1003550A0) + 28);
    v52 = enum case for ControlSize.small(_:);
    v53 = type metadata accessor for ControlSize();
    (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
    *v50 = swift_getKeyPath();
    v54 = [objc_opt_self() labelColor];
    v55 = Color.init(uiColor:)();
    v56 = swift_getKeyPath();
    v89 = v55;
    v57 = AnyShapeStyle.init<A>(_:)();
    v58 = v86;
    v59 = (v47 + *(v86 + 36));
    *v59 = v56;
    v59[1] = v57;
    sub_10000CF4C(v47, v44, &qword_100357C88);
    v60 = 0;
    v61 = v74;
  }

  else
  {
    v60 = 1;
    v61 = v74;
    v58 = v86;
  }

  (*(v85 + 56))(v44, v60, 1, v58);
  v62 = v84;
  sub_100006C20(v42, v84, &qword_100357CB8);
  v63 = v88;
  sub_100006C20(v44, v88, &qword_100357C90);
  sub_100006C20(v62, v61, &qword_100357CB8);
  v64 = sub_1000040A8(&qword_100357CE0);
  sub_100006C20(v63, v61 + *(v64 + 48), &qword_100357C90);
  sub_100008FA0(v44, &qword_100357C90);
  sub_100008FA0(v42, &qword_100357CB8);
  sub_100008FA0(v63, &qword_100357C90);
  return sub_100008FA0(v62, &qword_100357CB8);
}

uint64_t sub_10005CACC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = static Alignment.center.getter();
  a1[1] = v5;
  v6 = sub_1000040A8(&qword_100357C80);
  return sub_10005BF3C(v3, v4, a1 + *(v6 + 44));
}

uint64_t sub_10005CB44()
{

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_10005CB9C()
{
  result = qword_100357B28;
  if (!qword_100357B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357B28);
  }

  return result;
}

unint64_t sub_10005CBF8()
{
  result = qword_100357B30;
  if (!qword_100357B30)
  {
    sub_100008CF0(&qword_100357AF8);
    sub_100009274(&qword_100357B38, &qword_100357B40);
    sub_100009274(&qword_100355098, &qword_1003550A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357B30);
  }

  return result;
}

unint64_t sub_10005CCE4()
{
  result = qword_100357B48;
  if (!qword_100357B48)
  {
    sub_100008CF0(&qword_100357AF0);
    sub_100008CF0(&qword_100357AF8);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_10005CBF8();
    sub_10005D728(&qword_100357B50, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357B48);
  }

  return result;
}

unint64_t sub_10005CE28()
{
  result = qword_100357B58;
  if (!qword_100357B58)
  {
    sub_100008CF0(&qword_100357AE0);
    sub_100008CF0(&qword_100357AF8);
    type metadata accessor for GlassProminentButtonStyle();
    sub_10005CBF8();
    sub_10005D728(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357B58);
  }

  return result;
}

unint64_t sub_10005CF6C()
{
  result = qword_100357B60;
  if (!qword_100357B60)
  {
    sub_100008CF0(&qword_100357B00);
    sub_10005CCE4();
    sub_10005CE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357B60);
  }

  return result;
}

uint64_t sub_10005D000@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005D030@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10005D0EC()
{
  result = qword_100357BB0;
  if (!qword_100357BB0)
  {
    sub_100008CF0(&qword_100357BA8);
    sub_10005D178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357BB0);
  }

  return result;
}

unint64_t sub_10005D178()
{
  result = qword_100357BB8;
  if (!qword_100357BB8)
  {
    sub_100008CF0(&qword_100357BC0);
    sub_10005D204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357BB8);
  }

  return result;
}