uint64_t sub_100C85110@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100C85198(double a1, double a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_decorator;
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_decorator);
  if (v5)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = v5;
      v11 = [v9 freehandDrawingToolkit];
      if (v11 && (v12 = v11, v13 = [v11 currentTool], v12, v13))
      {
        if ([v13 type] == 9)
        {
          if (v10[OBJC_IVAR____TtC8Freeform30CRLiOSPencilToolShapeDecorator_isHoveredWithObjectEraser] != 1)
          {
            v22 = *(v3 + OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_hoverRepManager);
            v23 = sub_1012E2DEC();

            if ((v23 & 1) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_24;
          }

          v14 = sub_100C843A8(a1, a2);
          v15 = *(v3 + OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_hoverRepManager);
          if (v14 >> 62)
          {
            sub_100006370(0, &unk_1019F6E00);
            v25 = v15;
            v17 = _bridgeCocoaArray<A>(_:)();

            v14 = v17;
          }

          else
          {
            v16 = v15;

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            sub_100006370(0, &unk_1019F6E00);

            v17 = v14;
          }

          if (v14 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_11:
              swift_beginAccess();
              v18 = sub_100C84964(v14);
              swift_endAccess();

              if ((v18 & 1) == 0)
              {
LABEL_12:

LABEL_25:
                return;
              }

LABEL_24:
              v24 = v10;
              [v9 invalidateLayersForDecorator:v24];

              goto LABEL_25;
            }
          }

          else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_11;
          }

          v26 = sub_1012E2DEC();

          if ((v26 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_24;
        }

        v10 = v9;
      }

      else
      {
        v13 = v9;
      }
    }
  }

  v19 = *(v3 + OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_hoverRepManager);
  v20 = sub_1012E2DEC();

  if (v20)
  {
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      if (*(v3 + v4))
      {
        v27 = v21;
        [v21 invalidateLayersForDecorator:?];
        v21 = v27;
      }
    }
  }
}

unint64_t sub_100C854AC()
{
  result = qword_101A18258;
  if (!qword_101A18258)
  {
    sub_1005C4E5C(&qword_101A18250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A18258);
  }

  return result;
}

void sub_100C85534(double a1)
{
  sub_100043E40(_swiftEmptyArrayStorage);
  v2 = [objc_allocWithZone(NSNumber) initWithDouble:a1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v2, 0x65704F6472616F62, 0xED0000656D69546ELL, isUniquelyReferenced_nonNull_native);
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  sub_1006364DC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 sendEventInDomain:v5 lazily:1 eventPayload:isa];
}

id sub_100C85754()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCanvasLayerSnapshotHostingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100C857AC()
{
  ObjectType = &type metadata for CRLFeatureFlags;
  v38 = sub_100004D60();
  LOBYTE(aBlock[0]) = 7;
  v1 = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if (v1)
  {
    sub_10098EABC(&_mh_execute_header, "beginObserving()", 16, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLCloudQuotaMessagingObserver.swift", 95, 2, 42);
    sub_10098EABC(&_mh_execute_header, "isObserving", 11, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLCloudQuotaMessagingObserver.swift", 95, 2, 33);
    swift_beginAccess();
    sub_100601584(v0 + 48, aBlock);
    v2 = ObjectType;
    sub_10000CAAC(aBlock, &unk_1019F4D00);
    if (v2)
    {
      v3 = objc_opt_self();
      v4 = [v3 _atomicIncrementAssertCount];
      aBlock[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, aBlock);
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
      v13 = sub_100006370(0, &qword_1019F4D30);
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
      *(inited + 152) = 45;
      v16 = aBlock[0];
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
      sub_100005404(v11, &_mh_execute_header, v20, "beginning cloud quota in-app messaging observation with an existing observation", 79, 2, _swiftEmptyArrayStorage);

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

      [v3 handleFailureInFunction:v23 file:v24 lineNumber:45 isFatal:0 format:v25 args:v22];
    }

    else
    {
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = sub_100C8765C;
      *(v27 + 24) = v26;
      v28 = objc_opt_self();

      v29 = [v28 defaultCenter];
      v30 = *(v0 + 40);
      v38 = sub_100C87664;
      v39 = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100059694;
      ObjectType = &unk_10189E690;
      v31 = _Block_copy(aBlock);

      v32 = [v29 addObserverForName:v30 object:0 queue:0 usingBlock:v31];
      _Block_release(v31);

      ObjectType = swift_getObjectType();
      aBlock[0] = v32;
      swift_beginAccess();
      sub_1006A430C(aBlock, v0 + 48);
      swift_endAccess();
      v33 = [objc_opt_self() shared];
      [v33 observeUpdates];

      if (qword_1019F21F0 != -1)
      {
        swift_once();
      }

      v34 = static OS_os_log.crlCloudQuotaMessaging;
      v35 = static os_log_type_t.default.getter();
      sub_100005404(v34, &_mh_execute_header, v35, "enabled cloud quota in-app messaging update observation", 55, 2, _swiftEmptyArrayStorage);
    }
  }
}

void sub_100C85E38()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_1000640CC(v7), (v3 & 1) == 0))
  {

    sub_100064234(v7);
LABEL_10:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_11;
  }

  sub_100064288(*(v1 + 56) + 32 * v2, &v8);
  sub_100064234(v7);

  if (!*(&v9 + 1))
  {
LABEL_11:
    sub_10000CAAC(&v8, &unk_1019F4D00);
    goto LABEL_12;
  }

  sub_100006370(0, &qword_101A18498);
  if (swift_dynamicCast())
  {
    v4 = v7[0];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100C86614(v4);
    }

    return;
  }

LABEL_12:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1019F21F0 != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.crlCloudQuotaMessaging;
    v6 = static os_log_type_t.default.getter();
    sub_100005404(v5, &_mh_execute_header, v6, "received empty cloud quota in-app message; resetting messaging", 62, 2, _swiftEmptyArrayStorage);
    sub_100C8682C(1);
  }
}

uint64_t sub_100C86030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Notification();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100006370(0, &qword_1019F2D90);
  v20 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v21;
  *(v15 + 24) = a3;
  (*(v12 + 32))(v15 + v14, &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_100C8766C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10189E6E0;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005D91D8();
  sub_1005B981C(&unk_1019FF400);
  sub_10000D494();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v20;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v24 + 8))(v7, v5);
  return (*(v22 + 8))(v10, v23);
}

uint64_t sub_100C86398()
{
  v11 = &type metadata for CRLFeatureFlags;
  v12 = sub_100004D60();
  LOBYTE(v10) = 7;
  v1 = isFeatureEnabled(_:)();
  result = sub_100005070(&v10);
  if (v1)
  {
    sub_10098EABC(&_mh_execute_header, "isObserving", 11, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLCloudQuotaMessagingObserver.swift", 95, 2, 33);
    swift_beginAccess();
    sub_100601584(v0 + 48, &v10);
    v3 = v11;
    result = sub_10000CAAC(&v10, &unk_1019F4D00);
    if (v3)
    {
      sub_10098EABC(&_mh_execute_header, "endObserving()", 14, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLCloudQuotaMessagingObserver.swift", 95, 2, 70);
      sub_100601584(v0 + 48, &v8);
      if (*(&v9 + 1))
      {
        sub_10000BF3C(&v8, &v10);
        v4 = [objc_opt_self() defaultCenter];
        sub_100020E58(&v10, v11);
        [v4 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)() name:*(v0 + 40) object:0];

        swift_unknownObjectRelease();
        v8 = 0u;
        v9 = 0u;
        swift_beginAccess();
        sub_1006A430C(&v8, v0 + 48);
        swift_endAccess();
        sub_100005070(&v10);
      }

      else
      {
        sub_10000CAAC(&v8, &unk_1019F4D00);
      }

      v5 = [objc_opt_self() shared];
      [v5 stopObservingUpdates];

      if (qword_1019F21F0 != -1)
      {
        swift_once();
      }

      v6 = static OS_os_log.crlCloudQuotaMessaging;
      v7 = static os_log_type_t.default.getter();
      return sub_100005404(v6, &_mh_execute_header, v7, "disabled cloud quota in-app messaging update observation", 56, 2, _swiftEmptyArrayStorage);
    }
  }

  return result;
}

void sub_100C86614(void *a1)
{
  if (qword_1019F21F0 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlCloudQuotaMessaging;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v4 = [a1 reason];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xE900000000000029;
    v6 = 0x6E776F6E6B6E7528;
  }

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v9, "received cloud quota in-app message for reason %@", 49, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  if (sub_100C86774())
  {
    sub_100C8682C(a1);
  }
}

uint64_t sub_100C86774()
{
  v1 = [v0 reason];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_100C8682C(void *a1)
{
  sub_10098EABC(&_mh_execute_header, "updateEvent(to:)", 16, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLCloudQuotaMessagingObserver.swift", 95, 2, 95);
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  sub_1009F761C(a1);
  sub_100C8764C(v3);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v1 + 32);
    if (v4 > 1)
    {
      sub_10102C400(v4);
      swift_unknownObjectRelease();

      sub_100C8764C(v4);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100C86910(void *a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v4 - 8);
  v6 = &v47[-v5];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v47[-v13];
  v15 = [a1 reason];
  v53 = v8;
  v49 = v14;
  if (v15)
  {
    v16 = v15;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v17;
  }

  else
  {
    v52 = 0xE900000000000029;
    v51 = 0x6E776F6E6B6E7528;
  }

  v54 = UUID.uuidString.getter();
  v55 = v18;

  v19._countAndFlagsBits = 58;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  v20 = v54;
  v21 = v55;
  v22 = (a2 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v24 = *v22;
  v23 = v22[1];
  v54 = v20;
  v55 = v21;

  v25._countAndFlagsBits = v24;
  v25._object = v23;
  String.append(_:)(v25);

  v26 = v55;
  v50 = v54;
  v27 = [objc_opt_self() standardUserDefaults];
  sub_100C86E88(a2);
  v28 = String._bridgeToObjectiveC()();

  LODWORD(v20) = [v27 BOOLForKey:v28];

  if (v20)
  {
    if (qword_1019F21F0 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlCloudQuotaMessaging;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for String;
    v31 = sub_1000053B0();
    v32 = v52;
    *(inited + 32) = v51;
    *(inited + 40) = v32;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v31;
    v33 = v50;
    *(inited + 64) = v31;
    *(inited + 72) = v33;
    *(inited + 80) = v26;
    v34 = static os_log_type_t.default.getter();
    sub_100005404(v29, &_mh_execute_header, v34, "cloud quota message alert for reason %@ was already shown for board %@", 70, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    return 0;
  }

  else
  {
    sub_100C8704C(a1, v6);
    v36 = v53;
    if ((*(v53 + 48))(v6, 1, v7) == 1)
    {

      sub_10000CAAC(v6, &qword_101A0A320);
      return 1;
    }

    else
    {
      v37 = v49;
      (*(v36 + 32))(v49, v6, v7);
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v39 = v38;
      v40 = *(v36 + 8);
      v53 = v36 + 8;
      v40(v10, v7);
      v48 = v39 > 604800.0;
      if (qword_1019F21F0 != -1)
      {
        swift_once();
      }

      v41 = static OS_os_log.crlCloudQuotaMessaging;
      sub_1005B981C(&qword_1019F54E0);
      v42 = swift_initStackObject();
      *(v42 + 16) = xmmword_10146C4D0;
      *(v42 + 56) = &type metadata for String;
      v43 = sub_1000053B0();
      v44 = v52;
      *(v42 + 32) = v51;
      *(v42 + 40) = v44;
      *(v42 + 96) = &type metadata for String;
      *(v42 + 104) = v43;
      v45 = v50;
      *(v42 + 64) = v43;
      *(v42 + 72) = v45;
      *(v42 + 80) = v26;
      *(v42 + 136) = &type metadata for Bool;
      *(v42 + 144) = &protocol witness table for Bool;
      *(v42 + 112) = v39 > 604800.0;
      v46 = static os_log_type_t.default.getter();
      sub_100005404(v41, &_mh_execute_header, v46, "cloud quota message alert for reason %@ and board %@ timeout is elapsed = %d", 76, 2, v42);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v40(v37, v7);
      return v48;
    }
  }
}

uint64_t sub_100C86E88(uint64_t a1)
{
  v20 = UUID.uuidString.getter();
  v22 = v3;

  v4._countAndFlagsBits = 58;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5 = (a1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v6 = *v5;
  v7 = v5[1];

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  v9 = v20;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v10._countAndFlagsBits = 45;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);

  v11 = [v1 reason];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE900000000000029;
    v13 = 0x6E776F6E6B6E7528;
  }

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 45;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);

  v18._countAndFlagsBits = v9;
  v18._object = v22;
  String.append(_:)(v18);

  return v21;
}

uint64_t sub_100C8704C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() standardUserDefaults];
  *&v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v19 + 1) = v5;

  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  v7 = [a1 reason];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE900000000000029;
    v9 = 0x6E776F6E6B6E7528;
  }

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 objectForKey:v13];

  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    v15 = type metadata accessor for Date();
    v16 = swift_dynamicCast();
    return (*(*(v15 - 8) + 56))(a2, v16 ^ 1u, 1, v15);
  }

  else
  {
    sub_10000CAAC(v21, &unk_1019F4D00);
    v18 = type metadata accessor for Date();
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }
}

uint64_t sub_100C87290()
{
  sub_1000C1024(v0 + 16);
  sub_100C8764C(*(v0 + 32));

  sub_10000CAAC(v0 + 48, &unk_1019F4D00);

  return swift_deallocClassInstance();
}

uint64_t sub_100C87314(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100C8732C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C87380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_100C873EC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  static Date.now.getter();
  v10.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v11;

  v12._countAndFlagsBits = 45;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);

  v14 = v24;
  v13 = v25;
  v15 = [a1 reason];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v19 = 0xE900000000000029;
    v17 = 0x6E776F6E6B6E7528;
  }

  v24 = v14;
  v25 = v13;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21 = String._bridgeToObjectiveC()();

  [v9 setObject:v10.super.isa forKey:v21];

  v22 = [v8 standardUserDefaults];
  sub_100C86E88(a2);
  v23 = String._bridgeToObjectiveC()();

  [v22 setBool:1 forKey:v23];
}

void sub_100C8764C(id a1)
{
  if (a1 >= 2)
  {
  }
}

void sub_100C876DC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = String._bridgeToObjectiveC()();
  (*(a3 + 8))(a2, a3);
  v8 = String._bridgeToObjectiveC()();

  [a1 startedSubTest:v7 forTest:v8];

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v9[5] = v3;
  v12[4] = sub_100C8E1D0;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = *"";
  v12[2] = sub_100007638;
  v12[3] = &unk_10189ECD0;
  v10 = _Block_copy(v12);
  v11 = a1;

  [v11 installCACommitCompletionBlock:v10];
  _Block_release(v10);
}

void sub_100C8784C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = *(a4 + 8);
  v8(a3, a4);
  v9 = String._bridgeToObjectiveC()();

  [a1 finishedSubTest:v7 forTest:v9];

  v10 = String._bridgeToObjectiveC()();
  v8(a3, a4);
  v11 = String._bridgeToObjectiveC()();

  [a1 startedSubTest:v10 forTest:v11];
}

void sub_100C87990(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  (*(a3 + 8))(a2, a3);
  v7 = String._bridgeToObjectiveC()();

  [a1 finishedSubTest:v6 forTest:v7];
}

void sub_100C87A50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1019F1DB0 != -1)
  {
    swift_once();
  }

  v53 = 0x6F69746172657469;
  v54 = 0xEA0000000000736ELL;
  AnyHashable.init<A>(_:)();
  swift_beginAccess();
  v7 = qword_101AD75E8;
  if (*(qword_101AD75E8 + 16) && (v8 = sub_1000640CC(&aBlock), (v9 & 1) != 0))
  {
    sub_100064288(*(v7 + 56) + 32 * v8, &v55);
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
  }

  swift_endAccess();
  sub_100064234(&aBlock);
  if (*(&v56 + 1))
  {
    if (swift_dynamicCast())
    {
      v11 = v53;
      v10 = v54;
      goto LABEL_12;
    }
  }

  else
  {
    sub_10000CAAC(&v55, &unk_1019F4D00);
  }

  v10 = 0xE100000000000000;
  v11 = 53;
LABEL_12:
  v12 = HIBYTE(v10) & 0xF;
  v13 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    goto LABEL_79;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    goto LABEL_80;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    aBlock = v11;
    v48 = v10 & 0xFFFFFFFFFFFFFFLL;
    if (v11 == 43)
    {
      if (!v12)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v15 = (v12 - 1);
      if (v12 != 1)
      {
        v18 = 0;
        v29 = &aBlock + 1;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            break;
          }

          ++v29;
          if (!--v15)
          {
            goto LABEL_73;
          }
        }
      }
    }

    else if (v11 == 45)
    {
      if (!v12)
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v15 = (v12 - 1);
      if (v12 != 1)
      {
        v18 = 0;
        v22 = &aBlock + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v15)
          {
            goto LABEL_73;
          }
        }
      }
    }

    else if (v12)
    {
      v18 = 0;
      p_aBlock = &aBlock;
      while (1)
      {
        v35 = *p_aBlock - 48;
        if (v35 > 9)
        {
          break;
        }

        v36 = 10 * v18;
        if ((v18 * 10) >> 64 != (10 * v18) >> 63)
        {
          break;
        }

        v18 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          break;
        }

        p_aBlock = (p_aBlock + 1);
        if (!--v12)
        {
LABEL_71:
          LOBYTE(v15) = 0;
          goto LABEL_73;
        }
      }
    }
  }

  else
  {
    if ((v11 & 0x1000000000000000) != 0)
    {
      v15 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v15 = _StringObject.sharedUTF8.getter();
    }

    v16 = *v15;
    if (v16 == 43)
    {
      if (v13 >= 1)
      {
        v25 = v13 - 1;
        if (v13 != 1)
        {
          v18 = 0;
          if (!v15)
          {
            goto LABEL_73;
          }

          v26 = v15 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v25)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_72;
      }

      goto LABEL_85;
    }

    if (v16 == 45)
    {
      if (v13 >= 1)
      {
        v17 = v13 - 1;
        if (v13 != 1)
        {
          v18 = 0;
          if (!v15)
          {
            goto LABEL_73;
          }

          v19 = v15 + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              break;
            }

            ++v19;
            if (!--v17)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_84;
    }

    if (v13)
    {
      v18 = 0;
      if (!v15)
      {
        goto LABEL_73;
      }

      while (1)
      {
        v32 = *v15 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v18;
        if ((v18 * 10) >> 64 != (10 * v18) >> 63)
        {
          break;
        }

        v18 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        ++v15;
        if (!--v13)
        {
          goto LABEL_71;
        }
      }
    }
  }

LABEL_72:
  v18 = 0;
  LOBYTE(v15) = 1;
LABEL_73:
  LOBYTE(v55) = v15;
  v37 = v15;

  if (v37)
  {
    do
    {
LABEL_79:
      __break(1u);
LABEL_80:
      v18 = sub_100C8D854(v11, v10, 10);
      v46 = v45;
    }

    while ((v46 & 1) != 0);
  }

  sub_100A06B48();
  v38 = String._bridgeToObjectiveC()();

  [a2 startedTest:v38];

  v39 = swift_allocObject();
  *(v39 + 16) = a2;
  *(v39 + 24) = a4;
  if (v18 < 1)
  {
    sub_100C87FF8(a2);

    return;
  }

  v40 = *(a3 + 16);
  if (v40)
  {
    v41 = swift_allocObject();
    v41[2] = 4;
    v41[3] = a3;
    v41[4] = v18;
    v41[5] = sub_100C8E08C;
    v41[6] = v39;
    v51 = sub_100C8E094;
    v52 = v41;
    aBlock = _NSConcreteStackBlock;
    v48 = *"";
    v49 = sub_1005CC4AC;
    v50 = &unk_10189EA00;
    v42 = _Block_copy(&aBlock);
    v43 = a2;
    v44 = v40;

    [v44 rotateIfNeeded:4 completion:v42];

    _Block_release(v42);

    return;
  }

LABEL_87:
  __break(1u);
}

void sub_100C87FF8(void *a1)
{
  sub_100A06B48();
  v2 = String._bridgeToObjectiveC()();

  [a1 finishedTest:v2];
}

uint64_t sub_100C88070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v24 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v13 = *(v25 - 8);
  __chkstk_darwin(v25);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 1)
  {
    v16 = 4;
  }

  else
  {
    v16 = 1;
  }

  sub_100618868();
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = v16;
  v19 = v24;
  v18[4] = v23;
  v18[5] = v19;
  v18[6] = a6;
  aBlock[4] = sub_100C8E098;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10189EA50;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000065F8(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10000D494();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v10 + 8))(v12, v9);
  return (*(v13 + 8))(v15, v25);
}

void sub_100C88354(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v5 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  if (v5 >= 1)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v11 = swift_allocObject();
      v11[2] = a2;
      v11[3] = a1;
      v11[4] = v5;
      v11[5] = a4;
      v11[6] = a5;
      v14[4] = sub_100C8E3DC;
      v14[5] = v11;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = *"";
      v14[2] = sub_1005CC4AC;
      v14[3] = &unk_10189EAA0;
      v12 = _Block_copy(v14);
      v13 = v9;

      [v13 rotateIfNeeded:a2 completion:v12];
      _Block_release(v12);

      return;
    }

    goto LABEL_8;
  }

  a4();
}

void sub_100C88490(void *a1)
{
  sub_100A06B48();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();
  [a1 failedTest:v2 withFailure:v3];
}

uint64_t sub_100C8855C(void *a1)
{
  v2 = v1;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DispatchTime();
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  v17 = *(v2 + 16);
  *(v2 + 16) = a1;
  v18 = a1;

  *(v2 + 24) = 1;
  sub_100618868();
  v31 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v10 = 1;
  (*(v8 + 104))(v10, enum case for DispatchTimeInterval.seconds(_:), v7);
  DispatchTime.advanced(by:)();
  (*(v8 + 8))(v10, v7);
  v19 = *(v29 + 8);
  v19(v13, v11);
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  *(v20 + 24) = v18;
  aBlock[4] = sub_100C8D84C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10189E780;
  v21 = _Block_copy(aBlock);
  v22 = v18;

  v23 = v32;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000065F8(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10000D494();
  v25 = v33;
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v31;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v37 + 8))(v25, v24);
  (*(v35 + 8))(v23, v36);
  return (v19)(v16, v30);
}

void sub_100C889E8(uint64_t a1, void *a2)
{
  v43 = a2;
  v41 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v2 - 8);
  __chkstk_darwin(v2);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = [objc_opt_self() sharedApplication];
  v18 = [v17 delegate];

  if (v18)
  {
    sub_100787FE4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (v20)
    {
      v40 = v2;
      v21 = v20;
      v22 = sub_100051290();
      v23 = [v22 presentedViewController];

      if (v23)
      {
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v25 = [v24 topViewController];

          if (v25)
          {
            type metadata accessor for CRLiOSBoardViewController();
            v26 = swift_dynamicCastClass();
            if (v26 && (v39 = v26, v38 = v26 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_delegate, swift_unknownObjectWeakLoadStrong()))
            {
              v38 = *(v38 + 8);
              ObjectType = swift_getObjectType();
              (*(v38 + 8))(v39, ObjectType);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }
        }

        else
        {
        }
      }

      else
      {
      }

      sub_100618868();
      v39 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v9 = 1;
      (*(v7 + 104))(v9, enum case for DispatchTimeInterval.seconds(_:), v6);
      DispatchTime.advanced(by:)();
      (*(v7 + 8))(v9, v6);
      v38 = *(v11 + 8);
      (v38)(v13, v10);
      v28 = swift_allocObject();
      v29 = v41;
      v28[2] = v21;
      v28[3] = v29;
      v30 = v43;
      v28[4] = v43;
      aBlock[4] = sub_100C8DDE0;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_10189E7D0;
      v31 = _Block_copy(aBlock);
      v32 = v21;

      v33 = v30;

      v34 = v42;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000065F8(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400);
      sub_10000D494();
      v35 = v44;
      v36 = v40;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v37 = v39;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v31);

      (*(v47 + 8))(v35, v36);
      (*(v45 + 8))(v34, v46);
      (v38)(v16, v10);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100C88FE4(uint64_t a1, uint64_t a2, void *a3)
{
  v53 = a3;
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v52 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchTimeInterval();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for DispatchTime();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v47 = &v44 - v12;
  v13 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v13 - 8);
  v15 = &v44 - v14;
  v16 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v44 - v22;
  v46 = a2;
  (*(*a2 + 96))(v21);
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10006520C(v23, v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
  type metadata accessor for MainActor();

  v26 = static MainActor.shared.getter();
  v27 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v28 = v27 + v18;
  v29 = swift_allocObject();
  v29[2] = v26;
  v29[3] = &protocol witness table for MainActor;
  v29[4] = v25;
  sub_100065CE8(v19, v29 + v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
  *(v29 + v28) = 0;

  sub_10064191C(0, 0, v15, &unk_1014A87A8, v29);

  sub_10000BB64(v23, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_100618868();
  v45 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v8 = 2;
  v30 = v49;
  v31 = v51;
  (*(v49 + 104))(v8, enum case for DispatchTimeInterval.seconds(_:), v51);
  v32 = v47;
  DispatchTime.advanced(by:)();
  (*(v30 + 8))(v8, v31);
  v33 = *(v48 + 8);
  v34 = v50;
  v33(v10, v50);
  v35 = swift_allocObject();
  v36 = v53;
  *(v35 + 16) = v46;
  *(v35 + 24) = v36;
  aBlock[4] = sub_100C8DF20;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10189E870;
  v37 = _Block_copy(aBlock);

  v38 = v36;

  v39 = v52;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000065F8(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10000D494();
  v41 = v54;
  v40 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v42 = v45;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v37);

  (*(v58 + 8))(v41, v40);
  (*(v56 + 8))(v39, v57);
  return (v33)(v32, v34);
}

uint64_t sub_100C896E4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  *a1 = result;
  return result;
}

void sub_100C89850(void *a1)
{
  sub_100A06B48();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();
  [a1 failedTest:v2 withFailure:v3];
}

void sub_100C8991C(void *a1)
{
  v97 = a1;
  v96 = *v1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v94 = *(v2 - 8);
  __chkstk_darwin(v2);
  v92 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DispatchQoS();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchTimeInterval();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = (&v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = type metadata accessor for DispatchTime();
  v89 = *(v95 - 8);
  __chkstk_darwin(v95);
  v83 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v80 - v8;
  v107 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v107);
  v101 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v80 - v11;
  v103 = _s5BoardVMa(0);
  __chkstk_darwin(v103);
  v106 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = _s4NodeVMa(0);
  v14 = *(v108 - 8);
  __chkstk_darwin(v108);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v99 = &v80 - v18;
  v19 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v19 - 8);
  v98 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v100 = &v80 - v22;
  v23 = objc_opt_self();
  v24 = [v23 sharedApplication];
  v25 = [v24 delegate];

  if (!v25)
  {
    goto LABEL_54;
  }

  sub_100787FE4();
  v27 = v26;
  swift_unknownObjectRelease();
  if (v27)
  {
    v102 = v27;
    v28 = sub_100C0B3C0();

    if (v28)
    {
      v82 = v2;
      v29 = [v23 sharedApplication];
      v30 = [v29 delegate];

      if (!v30)
      {
        goto LABEL_55;
      }

      type metadata accessor for CRLiOSAppDelegate();
      v31 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibrary);
      v32 = v31;
      swift_unknownObjectRelease();
      if (v31)
      {
        v33 = *&v32[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot];

        v34 = v33[2];
        if (v34)
        {
          v81 = v28;
          v35 = (*(v14 + 80) + 32) & ~*(v14 + 80);

          v80 = v33;
          v104 = v12;
          v105 = v14;
          while (1)
          {
            sub_10006520C(v33 + v35, v16, _s4NodeVMa);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || (v34 - 1) > v33[3] >> 1)
            {
              v33 = sub_10003DFD0(isUniquelyReferenced_nonNull_native, v34, 1, v33);
            }

            sub_10000BB64(v33 + v35, _s4NodeVMa);
            v37 = *(v14 + 72);
            if (v37 > 0 || v33 + v35 >= v33 + v35 + v37 + (v33[2] - 1) * v37)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            --v33[2];
            sub_10006520C(v16, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v38 = v106;
              sub_100065CE8(v12, v106, _s5BoardVMa);
              v39 = (v38 + *(v103 + 24));
              if (*v39 == 0x5453455420545050 && v39[1] == 0xEB00000000303520)
              {
                sub_10000BB64(v106, _s5BoardVMa);
LABEL_43:

                v52 = v100;
                sub_100065CE8(v16, v100, _s4NodeVMa);
                v53 = v108;
                (*(v14 + 56))(v52, 0, 1, v108);
                v54 = v101;
                v55 = v99;
                v28 = v81;
                goto LABEL_44;
              }

              v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_10000BB64(v106, _s5BoardVMa);
              if (v40)
              {
                goto LABEL_43;
              }
            }

            else
            {
              sub_10000BB64(v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
            }

            v41 = v16;
            v42 = *&v16[*(v108 + 20)];
            v43 = *(v42 + 16);
            v44 = v33[2];
            v45 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
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
              goto LABEL_56;
            }

            v46 = v33[3];

            if (v45 > (v46 >> 1))
            {
              if (v44 <= v45)
              {
                v50 = v44 + v43;
              }

              else
              {
                v50 = v44;
              }

              v33 = sub_10003DFD0(1uLL, v50, 1, v33);
              v44 = v33[2];
              v16 = v41;
              if (!*(v42 + 16))
              {
LABEL_8:

                v12 = v104;
                v14 = v105;
                if (v43)
                {
                  goto LABEL_51;
                }

                goto LABEL_9;
              }
            }

            else
            {
              v16 = v41;
              if (!v43)
              {
                goto LABEL_8;
              }
            }

            v14 = v105;
            if (((v33[3] >> 1) - v44) < v43)
            {
              goto LABEL_52;
            }

            swift_arrayInitWithCopy();

            v12 = v104;
            if (v43)
            {
              v47 = v33[2];
              v48 = __OFADD__(v47, v43);
              v49 = v47 + v43;
              if (v48)
              {
                goto LABEL_53;
              }

              v33[2] = v49;
            }

LABEL_9:
            sub_10000BB64(v16, _s4NodeVMa);
            v34 = v33[2];
            if (!v34)
            {

              v28 = v81;
              goto LABEL_41;
            }
          }
        }

LABEL_41:
        v52 = v100;
        v53 = v108;
        (*(v14 + 56))(v100, 1, 1, v108);
        v54 = v101;
        v55 = v99;
LABEL_44:
        v56 = v98;
        sub_100B089C0(v52, v98);
        if ((*(v14 + 48))(v56, 1, v53) == 1)
        {
          sub_10000CAAC(v56, &unk_1019FB770);
          sub_100A06B48();
          v57 = String._bridgeToObjectiveC()();

          v58 = String._bridgeToObjectiveC()();
          [v97 failedTest:v57 withFailure:v58];

          v59 = v52;
LABEL_48:
          sub_10000CAAC(v59, &unk_1019FB770);
          return;
        }

        sub_100065CE8(v56, v55, _s4NodeVMa);
        sub_10006520C(v55, v54, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v60 = &v28[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v61 = *(v60 + 1);
          ObjectType = swift_getObjectType();
          (*(v61 + 8))(v28, v54, ObjectType, v61);
          swift_unknownObjectRelease();
          sub_100618868();
          v108 = static OS_dispatch_queue.main.getter();
          v63 = v83;
          static DispatchTime.now()();
          v64 = v84;
          *v84 = 5;
          v65 = v85;
          v66 = v86;
          (*(v85 + 104))(v64, enum case for DispatchTimeInterval.seconds(_:), v86);
          v67 = v87;
          DispatchTime.advanced(by:)();
          (*(v65 + 8))(v64, v66);
          v107 = *(v89 + 8);
          v107(v63, v95);
          v68 = swift_allocObject();
          v69 = v88;
          v68[2] = v102;
          v68[3] = v69;
          v70 = v96;
          v71 = v97;
          v68[4] = v97;
          v68[5] = v70;
          aBlock[4] = sub_100C8E230;
          aBlock[5] = v68;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = *"";
          aBlock[2] = sub_100007638;
          aBlock[3] = &unk_10189ED20;
          v72 = _Block_copy(aBlock);
          v73 = v102;

          v74 = v71;

          v75 = v90;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_1000065F8(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
          sub_1005B981C(&unk_1019FF400);
          sub_10000D494();
          v76 = v28;
          v77 = v92;
          v78 = v82;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v79 = v108;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v72);

          (*(v94 + 8))(v77, v78);
          (*(v91 + 8))(v75, v93);
          v107(v67, v95);
          sub_10000BB64(v101, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_10000BB64(v99, _s4NodeVMa);
          v59 = v100;
          goto LABEL_48;
        }
      }

      else
      {
LABEL_56:
        __break(1u);
      }

      __break(1u);
      return;
    }

    v51 = v102;
  }
}

void sub_100C8A740(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100051290();
  v6 = [v5 presentedViewController];

  if (!v6)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    goto LABEL_7;
  }

  v10 = [v7 topViewController];

  if (v10)
  {
    type metadata accessor for CRLiOSBoardViewController();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      (*(*a2 + 200))(a3, v8);
      goto LABEL_9;
    }

    v6 = v10;
LABEL_7:
  }

LABEL_8:
  sub_100A06B48();
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();
  [a3 failedTest:v9 withFailure:?];

LABEL_9:
}

void sub_100C8A8E0(void *a1)
{
  v3 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for IndexPath();
  v27 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 delegate];

  if (!v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_100787FE4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (!v18)
  {
    return;
  }

  *(v1 + 24) = 0;
  sub_100A06B48();
  v19 = String._bridgeToObjectiveC()();

  [a1 startedTest:v19];

  v28 = v18;
  v20 = sub_100C0B3C0();

  if (v20)
  {
    IndexPath.init(item:section:)();
    v21 = sub_10005AFE0();
    sub_10079330C(v14, v5);

    v22 = _s4NodeVMa(0);
    if ((*(*(v22 - 8) + 48))(v5, 1, v22) != 1)
    {
      sub_10006520C(v5, v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BB64(v5, _s4NodeVMa);
      sub_100065CE8(v8, v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v23 = &v20[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v23 + 1);
        ObjectType = swift_getObjectType();
        (*(v24 + 8))(v20, v11, ObjectType, v24);

        swift_unknownObjectRelease();
        sub_10000BB64(v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
        (*(v27 + 8))(v14, v12);
        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

LABEL_12:
    sub_10000CAAC(v5, &unk_1019FB770);
    __break(1u);
    goto LABEL_13;
  }

  v26 = v28;
}

void sub_100C8AD54(void *a1)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_100787FE4();
  v6 = v5;
  swift_unknownObjectRelease();
  if (!v6)
  {
    return;
  }

  *(v1 + 24) = 0;
  sub_100A06B48();
  v7 = String._bridgeToObjectiveC()();

  [a1 startedTest:v7];

  v12 = v6;
  v8 = sub_100C0B3C0();

  if (v8)
  {
    v9 = &v8[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 1);
      ObjectType = swift_getObjectType();
      (*(v10 + 16))(v8, ObjectType, v10);

      swift_unknownObjectRelease();
      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:
}

uint64_t sub_100C8AF1C(void *a1, uint64_t a2)
{
  sub_100A06B48();
  v5 = String._bridgeToObjectiveC()();

  [a1 startedTest:v5];

  *(v2 + 24) = 0;
  v6 = a2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a2, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100C8B038(void *a1, Swift::Int a2)
{
  v3 = v2;
  if (*(v2 + 24))
  {
    return;
  }

  v6 = *v2;
  v7 = type metadata accessor for CRLiOSBoardViewController();
  ObjectType = swift_getObjectType();
  v9 = *(v3 + 16);
  if (v7 == ObjectType)
  {
    if (v9)
    {
      v19 = v9;
      sub_100C876DC(v19, v6, &off_10189E708);
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    return;
  }

  if (!v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  sub_100A06B48();
  v11 = String._bridgeToObjectiveC()();

  _StringGuts.grow(_:)(a2);

  v12 = [a1 description];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x746365707865202CLL;
  v17._object = 0xEB00000000206465;
  String.append(_:)(v17);
  v18._object = 0x80000001015969B0;
  v18._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v18);
  v19 = String._bridgeToObjectiveC()();

  [v10 failedTest:v11 withFailure:v19];

LABEL_7:
}

void sub_100C8B25C(void *a1, Swift::Int a2)
{
  v3 = v2;
  if (*(v2 + 24))
  {
    return;
  }

  v6 = *v2;
  v7 = type metadata accessor for CRLiOSBoardViewController();
  ObjectType = swift_getObjectType();
  v9 = *(v3 + 16);
  if (v7 == ObjectType)
  {
    if (v9)
    {
      v19 = v9;
      sub_100C87990(v19, v6, &off_10189E708);

      v20 = *(v3 + 16);
      if (v20)
      {
        v11 = v20;
        sub_100A06B48();
        v21 = String._bridgeToObjectiveC()();

        [v11 finishedTest:v21];
        goto LABEL_8;
      }

LABEL_13:
      __break(1u);
      return;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  sub_100A06B48();
  v11 = String._bridgeToObjectiveC()();

  _StringGuts.grow(_:)(a2);

  v12 = [a1 description];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x746365707865202CLL;
  v17._object = 0xEB00000000206465;
  String.append(_:)(v17);
  v18._object = 0x80000001015969B0;
  v18._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v18);
  v21 = String._bridgeToObjectiveC()();

  [v10 failedTest:v11 withFailure:v21];

LABEL_8:
}

void sub_100C8B4D8(void *a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    sub_100787FE4();
    v5 = v4;
    swift_unknownObjectRelease();
    if (v5)
    {
      v10 = v5;
      v6 = sub_100C0B3C0();

      if (v6)
      {
        v7 = [v6 collectionView];
        sub_100A06B48();
        v8 = String._bridgeToObjectiveC()();

        if (v7)
        {
          [v7 _performScrollTest:v8 iterations:5 delta:18];
        }

        else
        {
          v9 = String._bridgeToObjectiveC()();
          [a1 failedTest:v8 withFailure:v9];
          v7 = v8;
          v8 = v9;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100C8B6B8(void *a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (!v3)
  {
    __break(1u);
    return;
  }

  sub_100787FE4();
  v5 = v4;
  swift_unknownObjectRelease();
  if (v5)
  {
    v20 = v5;
    v19 = sub_100C0B3C0();

    if (v19)
    {
      v6 = [v19 collectionView];
      if (!v6)
      {

        v16 = v19;
LABEL_11:

        return;
      }

      v7 = v6;
      v8 = objc_opt_self();
      v9 = [v8 isRecapAvailable];
      sub_100A06B48();
      if (v9)
      {
        v10 = objc_allocWithZone(RPTScrollViewTestParameters);
        v11 = v7;
        v12 = String._bridgeToObjectiveC()();

        aBlock[4] = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = *"";
        aBlock[2] = sub_100007638;
        aBlock[3] = &unk_10189EC80;
        v13 = _Block_copy(aBlock);

        v14 = [v10 initWithTestName:v12 scrollView:v11 completionHandler:v13];
        _Block_release(v13);

        v15 = v14;
        [v8 runTestWithParameters:v15];

        return;
      }

      v17 = String._bridgeToObjectiveC()();

      v18 = String._bridgeToObjectiveC()();
      [a1 failedTest:v17 withFailure:v18];
    }

    v16 = v20;
    goto LABEL_11;
  }
}

uint64_t sub_100C8B9BC@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  type metadata accessor for CRLBoardLibraryViewModel.Item(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_100C8BA08(void *a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v1;
  v4[4] = v3;
  v7[4] = sub_100C8E390;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = *"";
  v7[2] = sub_1005CC4AC;
  v7[3] = &unk_10189EC58;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v6 rotateIfNeeded:1 completion:v5];
  _Block_release(v5);
}

void sub_100C8BB40(void *a1)
{
  v2 = objc_opt_self();
  if (![v2 isRecapAvailable])
  {
    goto LABEL_10;
  }

  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_100787FE4();
  v6 = v5;
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = sub_100C0B3C0();

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [v7 view];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 window];

  if (!v10)
  {

LABEL_10:
    sub_100A06B48();
    v12 = String._bridgeToObjectiveC()();

    v14 = String._bridgeToObjectiveC()();
    [a1 failedTest:v12 withFailure:?];
    goto LABEL_11;
  }

  sub_100A06B48();
  v11 = objc_allocWithZone(RPTResizeTestParameters);
  v12 = v10;
  v13 = String._bridgeToObjectiveC()();

  v14 = [v11 initWithTestName:v13 window:v12 completionHandler:0];

  [v2 runTestWithParameters:v14];
LABEL_11:
}

void sub_100C8BE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView);
  sub_100A06B48();
  v5 = String._bridgeToObjectiveC()();

  [v4 _performScrollTest:v5 iterations:5 delta:18 scrollAxis:a3];
}

void sub_100C8BF04(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_100A06B48();
  v6 = String._bridgeToObjectiveC()();

  [a1 startedTest:v6];

  v7 = *(a2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v5;
  v24 = sub_100C8E0F8;
  v25 = v8;
  v20 = _NSConcreteStackBlock;
  v21 = *"";
  v22 = sub_100007638;
  v23 = &unk_10189EB18;
  v9 = _Block_copy(&v20);
  v10 = a1;

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v5;
  v24 = sub_100C8E120;
  v25 = v11;
  v20 = _NSConcreteStackBlock;
  v21 = *"";
  v22 = sub_1005CC4AC;
  v23 = &unk_10189EB68;
  v12 = _Block_copy(&v20);
  v13 = v10;

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v5;
  v24 = sub_100C8E128;
  v25 = v14;
  v20 = _NSConcreteStackBlock;
  v21 = *"";
  v22 = sub_100007638;
  v23 = &unk_10189EBB8;
  v15 = _Block_copy(&v20);
  v16 = v13;

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v5;
  v24 = sub_100C8E15C;
  v25 = v17;
  v20 = _NSConcreteStackBlock;
  v21 = *"";
  v22 = sub_100007638;
  v23 = &unk_10189EC08;
  v18 = _Block_copy(&v20);
  v19 = v16;

  [v7 _simulateScrollWithTranslation:v9 duration:v12 willBeginDragging:v15 didEndDragging:v18 willBeginDecelerating:1000.0 didEndDecelerating:{250.0, 1.0}];
  _Block_release(v18);
  _Block_release(v15);
  _Block_release(v12);
  _Block_release(v9);
}

void sub_100C8C234(char a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  sub_100A06B48();
  v5 = String._bridgeToObjectiveC()();

  [a2 finishedSubTest:v4 forTest:v5];

  if ((a1 & 1) == 0)
  {
    sub_100A06B48();
    v6 = String._bridgeToObjectiveC()();

    [a2 finishedTest:v6];
  }
}

void sub_100C8C358(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  if ([v4 isRecapAvailable])
  {
    v5 = *(a2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView);
    RPTGetBoundsForView();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    sub_100A06B48();
    [v5 contentSize];
    v15 = v14;
    v16 = objc_allocWithZone(RPTScrollViewTestParameters);
    v17 = String._bridgeToObjectiveC()();

    aBlock[4] = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10189EAC8;
    v18 = _Block_copy(aBlock);

    v19 = [v16 initWithTestName:v17 scrollBounds:2 amplitude:v18 direction:v7 completionHandler:{v9, v11, v13, v15}];
    _Block_release(v18);

    [v4 runTestWithParameters:v19];
  }

  else
  {
    sub_100A06B48();
    v20 = String._bridgeToObjectiveC()();

    v21 = String._bridgeToObjectiveC()();
    [a1 failedTest:v20 withFailure:v21];
  }
}

void sub_100C8C5E4(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 isRecapAvailable];
  sub_100A06B48();
  if (!v5)
  {
    v11 = String._bridgeToObjectiveC()();

    v12 = String._bridgeToObjectiveC()();
    [a1 failedTest:v11 withFailure:?];

    goto LABEL_6;
  }

  v6 = [a2 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 window];

  if (!v8)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = objc_allocWithZone(RPTResizeTestParameters);
  v10 = String._bridgeToObjectiveC()();

  v12 = [v9 initWithTestName:v10 window:v8 completionHandler:0];

  [v4 runTestWithParameters:v12];
LABEL_6:
}

void sub_100C8C7BC(void *a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v1;
  v4[4] = v3;
  v7[4] = sub_100C8E080;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = *"";
  v7[2] = sub_1005CC4AC;
  v7[3] = &unk_10189E988;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v6 rotateIfNeeded:1 completion:v5];
  _Block_release(v5);
}

void sub_100C8C8F4(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_100A06B48();
  v6 = String._bridgeToObjectiveC()();

  [a1 startedTest:v6];

  v7 = *(a2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v5;
  v18 = sub_100C8E030;
  v19 = v8;
  v14 = _NSConcreteStackBlock;
  v15 = *"";
  v16 = sub_100007638;
  v17 = &unk_10189E8E8;
  v9 = _Block_copy(&v14);
  v10 = a1;

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v5;
  v18 = sub_100C8E058;
  v19 = v11;
  v14 = _NSConcreteStackBlock;
  v15 = *"";
  v16 = sub_100007638;
  v17 = &unk_10189E938;
  v12 = _Block_copy(&v14);
  v13 = v10;

  [v7 _simulateZoomByScaleFactor:v9 duration:v12 willBeginZooming:1.5 didEndZooming:1.0];
  _Block_release(v12);
  _Block_release(v9);
}

void sub_100C8CAF0(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  sub_100A06B48();
  v3 = String._bridgeToObjectiveC()();

  [a1 startedSubTest:v2 forTest:v3];
}

void sub_100C8CB88(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  sub_100A06B48();
  v3 = String._bridgeToObjectiveC()();

  [a1 finishedSubTest:v2 forTest:v3];

  sub_100A06B48();
  v4 = String._bridgeToObjectiveC()();

  [a1 finishedTest:v4];
}

uint64_t sub_100C8CC88(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = a2;
  v12 = a1;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v11;
  v14[5] = v12;
  v14[6] = v6;
  sub_10064191C(0, 0, v9, &unk_1014A87B8, v14);
}

uint64_t sub_100C8CDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_1005B981C(&unk_101A0A390);
  v6[6] = swift_task_alloc();
  v7 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[12] = v9;
  v6[13] = v8;

  return _swift_task_switch(sub_100C8CF24, v9, v8);
}

uint64_t sub_100C8CF24()
{
  v1 = [*(v0[3] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) layerHost];
  if (v1 && (v2 = [v1 canvasLayer], v0[14] = v2, swift_unknownObjectRelease(), v2))
  {
    v3 = v0[4];
    sub_100A06B48();
    v4 = String._bridgeToObjectiveC()();

    [v3 startedTest:v4];

    v5 = [objc_allocWithZone(CRLCanvasZoomTracker) initWithCanvasLayer:v2];
    v0[15] = v5;
    v6 = String._bridgeToObjectiveC()();
    sub_100A06B48();
    v7 = String._bridgeToObjectiveC()();

    [v3 startedSubTest:v6 forTest:v7];

    [v5 zoomWithScale:0 velocity:0.999 locationInView:0.5 phase:{400.0, 300.0}];
    [v5 zoomWithScale:1 velocity:0.5 locationInView:0.5 phase:{400.0, 300.0}];
    [v5 zoomWithScale:2 velocity:0.25 locationInView:0.5 phase:{400.0, 300.0}];
    v8 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.notifications(named:object:)();

    NSNotificationCenter.Notifications.makeAsyncIterator()();
    v0[16] = static MainActor.shared.getter();
    v9 = sub_1000065F8(&qword_1019F52A0, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_100C8D2D4;
    v11 = v0[6];
    v12 = v0[7];

    return dispatch thunk of AsyncIteratorProtocol.next()(v11, v12, v9);
  }

  else
  {
    v13 = v0[4];

    sub_100A06B48();
    v14 = String._bridgeToObjectiveC()();

    v15 = String._bridgeToObjectiveC()();
    [v13 failedTest:v14 withFailure:v15];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100C8D2D4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100C8D748;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100C8D46C;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100C8D46C()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return _swift_task_switch(sub_100C8D4D0, v1, v2);
}

uint64_t sub_100C8D4D0()
{
  v1 = v0[6];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[14];
    v3 = v0[15];
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];

    (*(v6 + 8))(v5, v7);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[4];
    v11 = String._bridgeToObjectiveC()();
    sub_100A06B48();
    v12 = String._bridgeToObjectiveC()();

    [v10 finishedSubTest:v11 forTest:v12];

    sub_100A06B48();
    v13 = String._bridgeToObjectiveC()();

    [v10 finishedTest:v13];

    sub_10000CAAC(v1, &unk_101A0A390);
    v0[16] = static MainActor.shared.getter();
    v14 = sub_1000065F8(&qword_1019F52A0, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_100C8D2D4;
    v16 = v0[6];
    v17 = v0[7];

    return dispatch thunk of AsyncIteratorProtocol.next()(v16, v17, v14);
  }
}

uint64_t sub_100C8D748()
{
  *(v0 + 16) = *(v0 + 144);
  sub_1005B981C(&unk_1019F6B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100C8D7D4()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

unsigned __int8 *sub_100C8D854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100EFEF88();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100C8DDEC(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + v5;
  v11 = *(v10 + v6);
  v12 = *(v10 + v6 + 1);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10002D4C8;

  return sub_100C1EE90(a1, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100C8DF68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_100C8CDF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100C8E0A8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100C8E190()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100C8E1DC(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100C8E23C()
{
  sub_1005B981C(&qword_101A19710);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101490C80;
  *(v0 + 32) = type metadata accessor for CRLPPTNavigate_OpenBoard();
  *(v0 + 40) = &off_10189E708;
  *(v0 + 48) = &off_10189E720;
  *(v0 + 56) = type metadata accessor for CRLPPTNavigate_OpenNewBoard();
  *(v0 + 64) = &off_10189E708;
  *(v0 + 72) = &off_10189E720;
  *(v0 + 80) = type metadata accessor for CRLPPTNavigate_CloseBoard();
  *(v0 + 88) = &off_10189E708;
  *(v0 + 96) = &off_10189E720;
  *(v0 + 104) = type metadata accessor for CRLPPTLibrary_Scroll();
  *(v0 + 112) = &off_10189E708;
  *(v0 + 120) = &off_10189E720;
  *(v0 + 128) = type metadata accessor for CRLPPTLibrary_ScrollRecap();
  *(v0 + 136) = &off_10189E708;
  *(v0 + 144) = &off_10189E720;
  *(v0 + 152) = type metadata accessor for CRLPPTLibrary_Rotate();
  *(v0 + 160) = &off_10189E708;
  *(v0 + 168) = &off_10189E720;
  *(v0 + 176) = type metadata accessor for CRLPPTLibrary_Resize();
  *(v0 + 184) = &off_10189E708;
  *(v0 + 192) = &off_10189E720;
  *(v0 + 200) = type metadata accessor for CRLPPTBoard_ScrollVertical();
  *(v0 + 208) = &off_10189E708;
  *(v0 + 216) = &off_10189E720;
  *(v0 + 224) = type metadata accessor for CRLPPTBoard_ScrollHorizontal();
  *(v0 + 232) = &off_10189E708;
  *(v0 + 240) = &off_10189E720;
  *(v0 + 248) = type metadata accessor for CRLPPTBoard_ScrollNatural();
  *(v0 + 256) = &off_10189E708;
  *(v0 + 264) = &off_10189E720;
  *(v0 + 272) = type metadata accessor for CRLPPTBoard_ScrollRecap();
  *(v0 + 280) = &off_10189E708;
  *(v0 + 288) = &off_10189E720;
  *(v0 + 296) = type metadata accessor for CRLPPTBoard_Rotate();
  *(v0 + 304) = &off_10189E708;
  *(v0 + 312) = &off_10189E720;
  *(v0 + 320) = type metadata accessor for CRLPPTBoard_Resize();
  *(v0 + 328) = &off_10189E708;
  *(v0 + 336) = &off_10189E720;
  *(v0 + 344) = type metadata accessor for CRLPPTBoard_Zoom();
  *(v0 + 352) = &off_10189E708;
  *(v0 + 360) = &off_10189E720;
  return v0;
}

void sub_100C8E408(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 delegate];

  if (!v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  type metadata accessor for CRLiOSAppDelegate();
  v12 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_stencilLibrary);

  swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_12:
    __break(1u);
    return;
  }

  *&v3[OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController_stencilLibrary] = v12;
  v13 = OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController____lazy_storage___gridView;
  v14 = _s11SwiftUIViewVMa(0);
  (*(*(v14 - 8) + 56))(&v3[v13], 1, 1, v14);
  *&v3[OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController____lazy_storage___gridViewController] = 0;
  v15 = OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController_swiftUIPublisher;
  _s11SwiftUIViewV9PublisherCMa(0);
  v16 = swift_allocObject();
  v27 = 0;
  sub_1005B981C(&unk_101A265A0);
  Published.init(initialValue:)();
  *&v3[v15] = v16;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedInit();
  if ((a3 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_5:
      _s12DataArchiverCMa();
      v17 = swift_allocObject();
      *(v17 + 32) = xmmword_101463530;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      swift_unknownObjectUnownedInit();
      *(v17 + 16) = a3;
      goto LABEL_8;
    }
  }

  else if (*(a3 + 16))
  {
    goto LABEL_5;
  }

  v17 = 0;
LABEL_8:
  *&v3[OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController_stencilDataArchiver] = v17;
  v18 = type metadata accessor for CRLiOSStencilLibraryViewController();
  v26.receiver = v3;
  v26.super_class = v18;
  v19 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
  v20 = *&v19[OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController_stencilDataArchiver];
  if (v20)
  {
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    type metadata accessor for MainActor();
    swift_retain_n();
    v22 = v19;
    v23 = static MainActor.shared.getter();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = &protocol witness table for MainActor;
    v24[4] = v22;
    v24[5] = v20;
    sub_100796D54(0, 0, v9, &unk_1014A8888, v24);
  }

  else
  {
  }
}

uint64_t sub_100C8E794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_100C8E82C, v7, v6);
}

uint64_t sub_100C8E85C()
{
  v1 = sub_100B05D08();
  *(v0 + 88) = v1;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  type metadata accessor for CGImage(0);
  v4 = v3;
  v5 = sub_1005B981C(&unk_1019F6B40);
  *v2 = v0;
  v2[1] = sub_100C8E940;

  return Task.result.getter(v0 + 16, v1, v4, v5, &protocol self-conformance witness table for Error);
}

uint64_t sub_100C8E940()
{

  return _swift_task_switch(sub_100C8EA58, 0, 0);
}

uint64_t sub_100C8EA58()
{
  *(v0 + 104) = *(v0 + 16);
  if (*(v0 + 24))
  {
    swift_willThrow();
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = sub_100C8EBD0;
  }

  else
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = sub_100C8EAE4;
  }

  return _swift_task_switch(v3, v1, v2);
}

uint64_t sub_100C8EAE4()
{
  v1 = v0[13];

  v2 = [objc_allocWithZone(UIImage) initWithCGImage:v1];
  sub_1006CCCD4(v1, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[4] = v2;

  static Published.subscript.setter();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100C8EBD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C8EDDC(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CRLiOSStencilLibraryViewController();
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  v10 = &type metadata for CRLFeatureFlags;
  v11 = sub_100004D60();
  v9[0] = 0;
  v3 = isFeatureEnabled(_:)();
  result = sub_100005070(v9);
  if (v3)
  {
    v5 = [v1 traitCollection];
    v6 = [v5 crl_isCompactWidth];

    if (v6)
    {
      if (qword_1019F1538 != -1)
      {
        swift_once();
      }

      v7 = sub_1005B981C(&unk_1019F6CF0);
      v8 = qword_101AD6370;
    }

    else
    {
      if (qword_1019F1E38 != -1)
      {
        swift_once();
      }

      v7 = sub_1005B981C(&unk_1019F6CF0);
      v8 = qword_101AD7740;
    }

    sub_1005EB3DC(v7, v8);
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    return swift_endAccess();
  }

  return result;
}

void sub_100C8EFB4(uint64_t a1)
{
  v3 = *(*&v1[OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController_stencilLibrary] + OBJC_IVAR____TtC8Freeform17CRLStencilLibrary_fakeDataStore);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v25[2] = a1;

  v5 = sub_1010AACA0(sub_100C90F54, v25, v4);

  if (v5)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = [Strong canvasEditor];

    if (v7)
    {
      v8 = [objc_opt_self() pasteboardWithUniqueName];
      type metadata accessor for CRLBoardItem(0);
      sub_100C90F74(&qword_1019FCB80, type metadata accessor for CRLBoardItem);

      isa = Set._bridgeToObjectiveC()().super.isa;

      [v7 copyBoardItems:isa toPasteboard:v8 asPDF:0 nativeOnly:1];

      [v7 pasteWithPasteboard:v8 sender:0];
      [v1 dismissViewControllerAnimated:1 completion:0];

      swift_unknownObjectRelease();

      return;
    }

    if (qword_1019F2150 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.crlStencilLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v19 = swift_unknownObjectUnownedLoadStrong();
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v21;
    *(inited + 40) = v23;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v24, "Tried to insert stencil, but could not retrieve canvas editor from ICC %@", 73, 2, inited);

    swift_setDeallocating();
    v16 = inited + 32;
  }

  else
  {
    if (qword_1019F2150 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlStencilLibrary;
    sub_1005B981C(&qword_1019F54E0);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_10146C6B0;
    type metadata accessor for UUID();
    sub_100C90F74(&qword_101A02180, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000053B0();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v15 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v15, "Tried to insert stencil, but could not retrieve stencil data for identifier %@", 78, 2, v11);
    swift_setDeallocating();
    v16 = v11 + 32;
  }

  sub_100005070(v16);
}

void sub_100C8F498(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v36[-v6];
  v8 = *&v2[OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController_stencilDataArchiver];
  if (v8)
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    type metadata accessor for MainActor();
    swift_retain_n();

    v10 = v2;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = a1;
    v12[5] = a2;
    v12[6] = v8;
    v12[7] = v10;
    sub_100796D54(0, 0, v7, &unk_1014A8870, v12);
  }

  else
  {
    v13 = objc_opt_self();
    v14 = [v13 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37);
    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v14;
    v23 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v23;
    v24 = sub_1005CF04C();
    *(inited + 104) = v24;
    *(inited + 72) = v15;
    *(inited + 136) = &type metadata for String;
    v25 = sub_1000053B0();
    *(inited + 112) = v18;
    *(inited + 120) = v20;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v25;
    *(inited + 152) = 116;
    v26 = v37;
    *(inited + 216) = v23;
    *(inited + 224) = v24;
    *(inited + 192) = v26;
    v27 = v15;
    v28 = v26;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v30, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v31 = swift_allocObject();
    v31[2] = 8;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    [v13 handleFailureInFunction:v33 file:v34 lineNumber:116 isFatal:0 format:v35 args:v32];
  }
}

uint64_t sub_100C8F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v7[26] = type metadata accessor for MainActor();
  v7[27] = static MainActor.shared.getter();

  return _swift_task_switch(sub_100C8F9E4, 0, 0);
}

uint64_t sub_100C8F9E4()
{
  v1 = sub_100B05D08();
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  type metadata accessor for CGImage(0);
  v4 = v3;
  v5 = sub_1005B981C(&unk_1019F6B40);
  v0[30] = v5;
  *v2 = v0;
  v2[1] = sub_100C8FACC;

  return Task.result.getter(v0 + 19, v1, v4, v5, &protocol self-conformance witness table for Error);
}

uint64_t sub_100C8FACC()
{

  return _swift_task_switch(sub_100C8FBE4, 0, 0);
}

uint64_t sub_100C8FBE4()
{
  *(v0 + 248) = *(v0 + 152);
  if (*(v0 + 160))
  {
    swift_willThrow();
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_100C8FDFC;
    v5 = v1;
    v6 = v3;
  }

  else
  {
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    *(v0 + 256) = v7;
    *(v0 + 264) = v8;
    v4 = sub_100C8FCB0;
    v5 = v7;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100C8FCB0()
{
  *(v0 + 88) = *(v0 + 248);
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  *(v0 + 96) = *(v0 + 176);
  *(v0 + 104) = v2;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = _swiftEmptySetSingleton;
  *(v0 + 136) = _swiftEmptySetSingleton;
  *(v0 + 144) = 1;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController_stencilDataArchiver);
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {

    sub_1005BC5DC(_swiftEmptyArrayStorage);
    v4 = v7;
  }

  else
  {

    v4 = _swiftEmptySetSingleton;
  }

  *(v0 + 272) = v4;
  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v0;
  v5[1] = sub_100C8FE60;

  return sub_100D7A854(v4, v0 + 88);
}

uint64_t sub_100C8FDFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C8FE60()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_100C9003C;
  }

  else
  {
    v5 = sub_100C8FFB4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100C8FFB4()
{
  v1 = *(v0 + 200);

  [v1 dismissViewControllerAnimated:1 completion:0];
  sub_100C90F00(v0 + 88);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C9003C()
{

  if (qword_1019F2150 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = static OS_os_log.crlStencilLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[21] = v1;
  swift_errorRetain();
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error saving stencil: %@", 24, 2, inited);

  sub_100C90F00((v0 + 11));
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v8 = v0[1];

  return v8();
}

id sub_100C901B0()
{
  result = [objc_opt_self() systemBackgroundColor];
  qword_101A197B8 = result;
  return result;
}

uint64_t sub_100C901EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_101A19840);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController____lazy_storage___gridView;
  swift_beginAccess();
  sub_100C90C1C(&v1[v9], v8);
  v10 = _s11SwiftUIViewVMa(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100C90DC8(v8, a1);
  }

  sub_100C90C8C(v8);
  v12 = *&v1[OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController_stencilDataArchiver] != 0;
  v13 = *&v1[OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController_swiftUIPublisher];

  sub_1009A4280(v1, &off_10189ED48, v12, v13, a1);
  sub_100C90CF4(a1, v5);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_100C90D58(v5, &v1[v9]);
  return swift_endAccess();
}

id sub_100C903D0()
{
  v1 = _s11SwiftUIViewVMa(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController____lazy_storage___gridViewController;
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController____lazy_storage___gridViewController);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController____lazy_storage___gridViewController);
  }

  else
  {
    v7 = v0;
    sub_100C901EC(v3);
    v8 = objc_allocWithZone(sub_1005B981C(&qword_101A19838));
    v9 = UIHostingController.init(rootView:)();
    v10 = *(v0 + v4);
    *(v7 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

void sub_100C904A4()
{
  [v0 setPreferredContentSize:{800.0, 600.0}];
  v1 = sub_100C903D0();
  v2 = [v1 view];

  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController____lazy_storage___gridViewController;
  v6 = [*&v0[OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController____lazy_storage___gridViewController] view];
  if (!v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  [v4 addSubview:v6];

  [v0 addChildViewController:*&v0[v5]];
  [*&v0[v5] didMoveToParentViewController:v0];
  sub_1005B981C(&unk_1019F4D60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10146E8B0;
  v9 = [*&v0[v5] view];
  if (!v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v9;
  v11 = [v9 topAnchor];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 safeAreaLayoutGuide];

  v15 = [v14 topAnchor];
  v16 = [v11 constraintEqualToAnchor:v15];

  *(v8 + 32) = v16;
  v17 = [*&v0[v5] view];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v20 safeAreaLayoutGuide];

  v23 = [v22 leadingAnchor];
  v24 = [v19 constraintEqualToAnchor:v23];

  *(v8 + 40) = v24;
  v25 = [*&v0[v5] view];
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v0 view];
  if (!v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = v28;
  v30 = [v28 safeAreaLayoutGuide];

  v31 = [v30 trailingAnchor];
  v32 = [v27 constraintEqualToAnchor:v31];

  *(v8 + 48) = v32;
  v33 = [*&v0[v5] view];
  if (!v33)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v34 = v33;
  v35 = [v33 bottomAnchor];

  v36 = [v0 view];
  if (!v36)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v37 = v36;
  v38 = objc_opt_self();
  v39 = [v37 bottomAnchor];

  v40 = [v35 constraintEqualToAnchor:v39];
  *(v8 + 56) = v40;
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 activateConstraints:isa];
}

id sub_100C909DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSStencilLibraryViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLiOSStencilLibraryViewController()
{
  result = qword_101A19820;
  if (!qword_101A19820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C90B04()
{
  sub_100C90BC4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100C90BC4()
{
  if (!qword_101A19830)
  {
    _s11SwiftUIViewVMa(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A19830);
    }
  }
}

uint64_t sub_100C90C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A19840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C90C8C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A19840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100C90CF4(uint64_t a1, uint64_t a2)
{
  v4 = _s11SwiftUIViewVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C90D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A19840);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C90DC8(uint64_t a1, uint64_t a2)
{
  v4 = _s11SwiftUIViewVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C90E2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D3D4;

  return sub_100C8F964(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100C90F74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100C90FBC()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (!v2)
  {
    __break(1u);
  }

  type metadata accessor for CRLiOSAppDelegate();
  v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_stencilLibrary);

  swift_unknownObjectRelease();
  if (!v3)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController_stencilLibrary) = v3;
  v4 = OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController____lazy_storage___gridView;
  v5 = _s11SwiftUIViewVMa(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController____lazy_storage___gridViewController) = 0;
  v6 = OBJC_IVAR____TtC8Freeform34CRLiOSStencilLibraryViewController_swiftUIPublisher;
  _s11SwiftUIViewV9PublisherCMa(0);
  v7 = swift_allocObject();
  sub_1005B981C(&unk_101A265A0);
  Published.init(initialValue:)();
  *(v0 + v6) = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100C91164(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100C8E794(a1, v4, v5, v7, v6);
}

uint64_t sub_100C9122C()
{
  v0 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v22 - v1;
  v3 = type metadata accessor for CRLProto_Data(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for CRLProto_CollaboratorCursorColor(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 0;
  UnknownStorage.init()();
  v25 = v10;
  v13 = *(v10 + 24);
  v14 = *(v4 + 56);
  v14(&v12[v13], 1, 1, v3);
  v22 = xmmword_10146F370;
  *v9 = xmmword_10146F370;
  UnknownStorage.init()();
  sub_1009DCE5C(&v12[v13]);
  sub_100683F6C(v9, &v12[v13]);
  v24 = v14;
  v14(&v12[v13], 0, 1, v3);
  v15 = v2;
  v16 = UUID.crl_data()();
  v23 = v17;
  sub_10084DD24(&v12[v13], v2);
  v18 = *(v4 + 48);
  if (v18(v15, 1, v3) == 1)
  {
    *v6 = v22;
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
  v19 = v23;
  *v6 = v16;
  *(v6 + 1) = v19;
  sub_1009DCE5C(&v12[v13]);
  sub_100683F6C(v6, &v12[v13]);
  v24(&v12[v13], 0, 1, v3);
  *v12 = *(v26 + *(type metadata accessor for CRLCollaboratorCursorColor() + 20));
  sub_100C915A4();
  v20 = Message.serializedData(partial:)();
  sub_100C915FC(v12);
  return v20;
}

uint64_t type metadata accessor for CRLCollaboratorCursorColor()
{
  result = qword_101A198A0;
  if (!qword_101A198A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100C915A4()
{
  result = qword_1019F67C8;
  if (!qword_1019F67C8)
  {
    type metadata accessor for CRLProto_CollaboratorCursorColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F67C8);
  }

  return result;
}

uint64_t sub_100C915FC(uint64_t a1)
{
  v2 = type metadata accessor for CRLProto_CollaboratorCursorColor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100C91680()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_100C916F4(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v40 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v39 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v35[1] = v1;
    v46 = _swiftEmptyArrayStorage;
    sub_100034080(0, v5, 0);
    v43 = v46;
    v7 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v36 = a1 + 72;
    v37 = v5;
    v38 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v12 = *(a1 + 36);
      v41 = v9;
      v42 = v12;
      v13 = v39;
      sub_10004B150(*(a1 + 48) + *(v40 + 72) * v8, v39, type metadata accessor for CRLBoardIdentifier);
      v44 = UUID.uuidString.getter();
      v45 = v14;

      v15._countAndFlagsBits = 58;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);

      v16 = v44;
      v17 = v45;
      v18 = (v13 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
      v19 = *v18;
      v20 = v18[1];
      v44 = v16;
      v45 = v17;

      v21._countAndFlagsBits = v19;
      v21._object = v20;
      String.append(_:)(v21);

      v22 = v44;
      v23 = v45;
      result = sub_100025FC8(v13, type metadata accessor for CRLBoardIdentifier);
      v24 = v43;
      v46 = v43;
      v26 = v43[2];
      v25 = v43[3];
      if (v26 >= v25 >> 1)
      {
        result = sub_100034080((v25 > 1), v26 + 1, 1);
        v24 = v46;
      }

      v24[2] = v26 + 1;
      v27 = &v24[2 * v26];
      v27[4] = v22;
      v27[5] = v23;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v38;
      v28 = *(v38 + 8 * v11);
      if ((v28 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v43 = v24;
      if (v42 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v29 = v28 & (-2 << (v8 & 0x3F));
      if (v29)
      {
        v10 = __clz(__rbit64(v29)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v11 << 6;
        v31 = v11 + 1;
        v32 = (v36 + 8 * v11);
        while (v31 < (v10 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_1000341AC(v8, v42, 0);
            v10 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = sub_1000341AC(v8, v42, 0);
      }

LABEL_4:
      v9 = v41 + 1;
      v8 = v10;
      if (v41 + 1 == v37)
      {
        return v43;
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
  }

  return result;
}

uint64_t sub_100C91A3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100006370(0, &qword_101A09CB0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

Swift::Int sub_100C91AC0()
{
  Hasher.init(_seed:)();
  sub_10007995C();
  return Hasher._finalize()();
}

Swift::Int sub_100C91B04()
{
  Hasher.init(_seed:)();
  sub_10007995C();
  return Hasher._finalize()();
}

id sub_100C91B44()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLSpotlightManager____lazy_storage___indexRecognizerAttributeKey;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager____lazy_storage___indexRecognizerAttributeKey);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = objc_allocWithZone(CSCustomAttributeKey);

    v5 = String._bridgeToObjectiveC()();

    v3 = [v4 initWithKeyName:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v3;
    sub_1000505D0(v6);
  }

  sub_1000505E0(v2);
  return v3;
}

uint64_t sub_100C91C0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100C91D00()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_subscriptionSet;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_100042818(&qword_1019FB8C0, &type metadata accessor for AnyCancellable);
    result = Set.Iterator.init(_cocoa:)();
    v3 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_18:
      sub_100035F90();
      *(v1 + v2) = _swiftEmptySetSingleton;

      swift_unknownObjectRelease();

      v18 = OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_boardIndexStateURL;
      v19 = type metadata accessor for URL();
      (*(*(v19 - 8) + 8))(v1 + v18, v19);

      sub_1000505D0(*(v1 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager____lazy_storage___indexRecognizerAttributeKey));
      swift_defaultActor_destroy();
      return v1;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v7 = v15;
      v8 = v16;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100C92038()
{
  sub_100C91D00();

  return swift_defaultActor_deallocate();
}

uint64_t sub_100C9206C()
{
  v1[18] = v0;
  v1[19] = type metadata accessor for CRLBoardIdentifierStorage(0);
  v1[20] = swift_task_alloc();
  type metadata accessor for CRLBoardCRDTData(0);
  v1[21] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_100C921F8, v0, 0);
}

uint64_t sub_100C921F8()
{
  v1 = v0[18];
  v2 = OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_searchQuery;
  v0[29] = OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_searchQuery;
  [*(v1 + v2) cancel];
  v0[30] = *(v1 + 136);

  return _swift_task_switch(sub_100C92280, 0, 0);
}

uint64_t sub_100C92280()
{
  v1 = v0[30];
  v2 = swift_task_alloc();
  v0[31] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[32] = v3;
  v4 = sub_1005B981C(&qword_101A002B8);
  *v3 = v0;
  v3[1] = sub_100C92388;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 17, 0, 0, 0xD00000000000001DLL, 0x80000001015971E0, sub_100080FC4, v2, v4);
}

uint64_t sub_100C92388()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_100C92C84;
  }

  else
  {

    v2 = sub_100C924A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C924A4()
{
  v1 = v0[18];
  v0[34] = v0[17];
  return _swift_task_switch(sub_100C924C4, v1, 0);
}

uint64_t sub_100C924C4()
{
  v1 = v0[34];
  v2 = _swiftEmptyArrayStorage;
  v62 = *(v1 + 16);
  if (v62)
  {
    v3 = 0;
    v4 = v0[23];
    v58 = v0[19];
    v59 = v0[26];
    v57 = (v4 + 16);
    v56 = (v4 + 8);
    v55 = (v4 + 32);
    v5 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      v65 = v3;
      v66 = v2;
      v6 = v0[24];
      v7 = v0[25];
      v8 = v0[21];
      v9 = v0[22];
      v11 = *(v5 - 1);
      v10 = *v5;
      v64 = v5;
      v12 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_10004B150(v11 + v12, v8, type metadata accessor for CRLBoardCRDTData);
      v63 = v10;

      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_100025FC8(v8, type metadata accessor for CRLBoardCRDTData);
      v13 = *(v11 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v14 = *(v11 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);
      (*v57)(v6, v7, v9);
      v16 = v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15;
      if (v16 || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v17 & 1) != 0))
      {

        v13 = 0;
        v14 = 0xE000000000000000;
      }

      v19 = v0[27];
      v18 = v0[28];
      v20 = v0[24];
      v21 = v0[25];
      v22 = v0[22];
      v23 = v0[20];

      (*v56)(v21, v22);
      (*v55)(v23, v20, v22);
      v24 = (v23 + *(v58 + 20));
      *v24 = v13;
      v24[1] = v14;
      sub_100025598(v23, v19, type metadata accessor for CRLBoardIdentifierStorage);
      sub_100025598(v19, v18, type metadata accessor for CRLBoardIdentifier);
      v2 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_100B36BE4(0, v66[2] + 1, 1, v66);
      }

      v1 = v60;
      v0 = v61;
      v26 = v2[2];
      v25 = v2[3];
      if (v26 >= v25 >> 1)
      {
        v2 = sub_100B36BE4(v25 > 1, v26 + 1, 1, v2);
      }

      v3 = v65 + 1;
      v27 = v61[28];
      v2[2] = v26 + 1;
      sub_100025598(v27, v2 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v26, type metadata accessor for CRLBoardIdentifier);
      v5 = v64 + 2;
      if (v62 == v65 + 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    _StringGuts.grow(_:)(21);

    if (qword_1019F19B0 == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  v67 = v0[29];
  v28 = v0[18];
  v29 = type metadata accessor for UTType();
  sub_1005EB3DC(v29, qword_101AD6CD0);
  v30._countAndFlagsBits = UTType.identifier.getter();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 6578983;
  v31._object = 0xE300000000000000;
  String.append(_:)(v31);
  v32 = [objc_allocWithZone(CSSearchQueryContext) init];
  sub_1005B981C(&unk_1019F61D0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10146BDE0;
  *(v33 + 32) = 0x54746E65746E6F63;
  *(v33 + 40) = 0xEB00000000657079;
  v34 = *(v28 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_indexRecognizerKey + 8);
  *(v33 + 48) = *(v28 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_indexRecognizerKey);
  *(v33 + 56) = v34;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 setFetchAttributes:isa];

  v36 = swift_allocObject();
  *(v36 + 16) = _swiftEmptyArrayStorage;
  v37 = swift_allocObject();
  *(v37 + 16) = _swiftEmptyArrayStorage;
  v38 = objc_allocWithZone(CSSearchQuery);
  v39 = v32;
  v40 = String._bridgeToObjectiveC()();

  v41 = [v38 initWithQueryString:v40 queryContext:v39];

  v42 = *(v28 + v67);
  *(v28 + v67) = v41;
  v43 = v41;

  if (v43)
  {
    v44 = v0[18];
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = v37;
    v45[4] = v36;
    v0[6] = sub_100C9C30C;
    v0[7] = v45;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = *"";
    v0[4] = sub_100C91A3C;
    v0[5] = &unk_10189EF20;
    v46 = _Block_copy(v0 + 2);

    [v43 setFoundItemsHandler:v46];
    _Block_release(v46);
  }

  v47 = v0[18];
  v48 = *(v47 + v0[29]);
  if (v48)
  {
    v49 = swift_allocObject();
    v49[2] = v36;
    v49[3] = v2;
    v49[4] = v37;
    v49[5] = v47;
    v0[12] = sub_100C9C318;
    v0[13] = v49;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = *"";
    v0[10] = sub_1008BE72C;
    v0[11] = &unk_10189EF70;
    v50 = _Block_copy(v0 + 8);

    v51 = v48;

    [v51 setCompletionHandler:v50];
    _Block_release(v50);
  }

  else
  {
  }

  v52 = *(v0[18] + v0[29]);
  [v52 start];

  v53 = v0[1];

  return v53();
}

uint64_t sub_100C92C84()
{
  v1 = *(v0 + 144);

  return _swift_task_switch(sub_100C92CF0, v1, 0);
}

uint64_t sub_100C92CF0()
{
  if (qword_1019F20F8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlSpotlight;
  v2 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v2, "Failed to fetch all board data.", 31, 2, _swiftEmptyArrayStorage);

  v3 = *(v0 + 8);

  return v3();
}

void sub_100C92E08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v6 - 8);
  v8 = &v52 - v7;
  v64 = type metadata accessor for UUID();
  v9 = *(v64 - 8);
  v10 = __chkstk_darwin(v64);
  v71 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = &v52 - v12;
  v61 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v13 = __chkstk_darwin(v61);
  v60 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v59 = &v52 - v15;
  v16 = type metadata accessor for CRLBoardIdentifier(0);
  v58 = *(v16 - 8);
  v17 = __chkstk_darwin(v16 - 8);
  v57 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v56 = &v52 - v20;
  __chkstk_darwin(v19);
  v22 = &v52 - v21;
  v23 = sub_100C91B44();
  if (v23)
  {
    v24 = v23;

    v26 = sub_100C9A4DC(v25, v24, (a3 + 16));
    v53 = v24;

    if (v26 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v28 = v64;
      v54 = a4;
      if (!i)
      {
        break;
      }

      v29 = 0;
      v69 = v26 & 0xFFFFFFFFFFFFFF8;
      v70 = v26 & 0xC000000000000001;
      v68 = (v9 + 48);
      v65 = (v9 + 32);
      v72 = _swiftEmptyArrayStorage;
      v63 = v8;
      v55 = v22;
      v66 = i;
      v67 = v26;
      while (1)
      {
        if (v70)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v29 >= *(v69 + 16))
          {
            goto LABEL_30;
          }

          v31 = *(v26 + 8 * v29 + 32);
        }

        v9 = v31;
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        v33 = [v31 uniqueIdentifier];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        a4 = v34;

        v73 = v26;
        v74 = a4;
        sub_100017CD8();
        v35 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
        v36 = *(v35 + 16);
        if (v36)
        {

          if (!*(v35 + 16))
          {
            goto LABEL_31;
          }

          v28 = v64;
          v26 = static String._fromSubstring(_:)();
          a4 = v37;
          v8 = v63;
        }

        UUID.init(uuidString:)();

        if ((*v68)(v8, 1, v28) == 1)
        {

          sub_10000CAAC(v8, &qword_1019F6990);
          v30 = v66;
          v26 = v67;
        }

        else
        {
          v22 = *v65;
          (*v65)(v71, v8, v28);
          if (v36 <= 1)
          {

            v38 = 0;
            v40 = 0xE000000000000000;
          }

          else
          {
            if (*(v35 + 16) < 2uLL)
            {
              goto LABEL_32;
            }

            v28 = v64;
            v38 = static String._fromSubstring(_:)();
            v40 = v39;
            v8 = v63;
          }

          v9 = v62;
          (v22)(v62, v71, v28);
          v41 = v60;
          (v22)(v60, v9, v28);
          v42 = (v41 + *(v61 + 20));
          *v42 = v38;
          v42[1] = v40;
          v43 = v59;
          sub_100025598(v41, v59, type metadata accessor for CRLBoardIdentifierStorage);
          v44 = v43;
          v45 = v57;
          sub_100025598(v44, v57, type metadata accessor for CRLBoardIdentifierStorage);
          v46 = v45;
          v47 = v56;
          sub_100025598(v46, v56, type metadata accessor for CRLBoardIdentifier);
          v22 = v55;
          sub_100025598(v47, v55, type metadata accessor for CRLBoardIdentifier);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = v66;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v72 = sub_100B36BE4(0, v72[2] + 1, 1, v72);
          }

          v26 = v67;
          v50 = v72[2];
          v49 = v72[3];
          a4 = v50 + 1;
          if (v50 >= v49 >> 1)
          {
            v72 = sub_100B36BE4(v49 > 1, v50 + 1, 1, v72);
          }

          v51 = v72;
          v72[2] = a4;
          sub_100025598(v22, v51 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v50, type metadata accessor for CRLBoardIdentifier);
        }

        ++v29;
        if (v32 == v30)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

    v72 = _swiftEmptyArrayStorage;
LABEL_27:

    swift_beginAccess();
    sub_10079BD14(v72);
    swift_endAccess();
  }
}

uint64_t sub_100C934F0(void **a1, uint64_t a2, void **a3)
{
  v52 = a3;
  v5 = type metadata accessor for UUID();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  v14 = type metadata accessor for CRLBoardIdentifier(0);
  v51 = *(v14 - 8);
  v15 = __chkstk_darwin(v14 - 8);
  v50 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v46 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v46 - v21;
  __chkstk_darwin(v20);
  v49 = &v46 - v23;
  v24 = *a1;
  v25 = [v24 attributeSet];
  v26 = [v25 valueForCustomKey:a2];

  if (!v26)
  {
    return 1;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27 || [v27 shortValue] <= 8)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  v46 = v8;
  v29 = [v24 uniqueIdentifier];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = v53;
  v34 = sub_10084CD4C(v7, v30, v32);
  if (v33)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    v36 = v34;
    v37 = v35;

    (*(v47 + 32))(v11, v7, v48);
    v38 = &v11[*(v46 + 20)];
    *v38 = v36;
    *(v38 + 1) = v37;
    sub_100025598(v11, v13, type metadata accessor for CRLBoardIdentifierStorage);
    sub_100025598(v13, v19, type metadata accessor for CRLBoardIdentifierStorage);
    sub_100025598(v19, v22, type metadata accessor for CRLBoardIdentifier);
    v39 = v49;
    sub_100025598(v22, v49, type metadata accessor for CRLBoardIdentifier);
    v40 = v50;
    sub_10004B150(v39, v50, type metadata accessor for CRLBoardIdentifier);
    v41 = v52;
    swift_beginAccess();
    v42 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v41 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_100B36BE4(0, v42[2] + 1, 1, v42);
      *v41 = v42;
    }

    v45 = v42[2];
    v44 = v42[3];
    if (v45 >= v44 >> 1)
    {
      v42 = sub_100B36BE4(v44 > 1, v45 + 1, 1, v42);
      *v41 = v42;
    }

    v42[2] = v45 + 1;
    sub_100025598(v40, v42 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v45, type metadata accessor for CRLBoardIdentifier);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_100025FC8(v39, type metadata accessor for CRLBoardIdentifier);
    return 0;
  }
}

uint64_t sub_100C939B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a5;
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v80 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v68 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v68 - v16;
  v18 = __chkstk_darwin(v15);
  v79 = &v68 - v19;
  v20 = __chkstk_darwin(v18);
  v74 = &v68 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v68 - v23;
  __chkstk_darwin(v22);
  v26 = &v68 - v25;
  swift_beginAccess();
  v27 = *(a2 + 16);
  v78 = *(v27 + 16);
  if (v78)
  {
    v69 = a4;
    v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v76 = v27 + v28;
    v77 = v28;
    v82 = *(a3 + 16);
    v70 = v9;
    v71 = a3;
    v29 = *(v9 + 72);
    v73 = a3 + v28;
    v68 = v27;

    v30 = 0;
    v75 = _swiftEmptyArrayStorage;
    v81 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_10004B150(v76 + v29 * v30, v26, type metadata accessor for CRLBoardIdentifier);
      if (!v82)
      {
LABEL_17:
        sub_10004B150(v26, v79, type metadata accessor for CRLBoardIdentifier);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_100B36BE4(0, v81[2] + 1, 1, v81);
        }

        v33 = v81;
        v44 = v81[2];
        v43 = v81[3];
        v45 = v44 + 1;
        if (v44 >= v43 >> 1)
        {
          v33 = sub_100B36BE4(v43 > 1, v44 + 1, 1, v81);
          v34 = v79;
          v81 = v33;
        }

        else
        {
          v34 = v79;
        }

        goto LABEL_5;
      }

      v35 = v73;
      v36 = v82;
      while (1)
      {
        sub_10004B150(v35, v24, type metadata accessor for CRLBoardIdentifier);
        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {
          sub_100025FC8(v24, type metadata accessor for CRLBoardIdentifier);
          goto LABEL_9;
        }

        v37 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
        v38 = *&v24[v37];
        v39 = *&v24[v37 + 8];
        v40 = &v26[v37];
        if (v38 == *v40 && v39 == *(v40 + 1))
        {
          break;
        }

        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100025FC8(v24, type metadata accessor for CRLBoardIdentifier);
        if (v42)
        {
          goto LABEL_22;
        }

LABEL_9:
        v35 += v29;
        if (!--v36)
        {
          goto LABEL_17;
        }
      }

      sub_100025FC8(v24, type metadata accessor for CRLBoardIdentifier);
LABEL_22:
      sub_10004B150(v26, v74, type metadata accessor for CRLBoardIdentifier);
      v33 = v75;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_100B36BE4(0, v33[2] + 1, 1, v33);
      }

      v44 = v33[2];
      v46 = v33[3];
      v45 = v44 + 1;
      if (v44 >= v46 >> 1)
      {
        v33 = sub_100B36BE4(v46 > 1, v44 + 1, 1, v33);
        v34 = v74;
        v75 = v33;
      }

      else
      {
        v75 = v33;
        v34 = v74;
      }

LABEL_5:
      ++v30;
      sub_100025FC8(v26, type metadata accessor for CRLBoardIdentifier);
      v33[2] = v45;
      sub_100025598(v34, v33 + v77 + v44 * v29, type metadata accessor for CRLBoardIdentifier);
      if (v30 == v78)
      {

        v31 = v75;
        v32 = v81;
        v9 = v70;
        a3 = v71;
        a4 = v69;
        goto LABEL_28;
      }
    }
  }

  v31 = _swiftEmptyArrayStorage;
  v32 = _swiftEmptyArrayStorage;
LABEL_28:
  swift_beginAccess();
  v47 = *(a4 + 16);
  v48 = *(v47 + 16);
  if (!v48)
  {
    goto LABEL_50;
  }

  v75 = v31;
  v81 = ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v82 = v81 + v47;
  v49 = *(a3 + 16);
  v50 = *(v9 + 72);
  v78 = v47;
  v79 = v81 + a3;

  v51 = 0;
  while (2)
  {
    sub_10004B150(&v82[v50 * v51], v17, type metadata accessor for CRLBoardIdentifier);
    if (!v49)
    {
LABEL_44:
      sub_10004B150(v17, v80, type metadata accessor for CRLBoardIdentifier);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_100B36BE4(0, v32[2] + 1, 1, v32);
      }

      v61 = v32[2];
      v60 = v32[3];
      if (v61 >= v60 >> 1)
      {
        v32 = sub_100B36BE4(v60 > 1, v61 + 1, 1, v32);
      }

      sub_100025FC8(v17, type metadata accessor for CRLBoardIdentifier);
      v32[2] = v61 + 1;
      sub_100025598(v80, v81 + v32 + v61 * v50, type metadata accessor for CRLBoardIdentifier);
      goto LABEL_32;
    }

    v52 = v79;
    v53 = v49;
    while (1)
    {
      sub_10004B150(v52, v14, type metadata accessor for CRLBoardIdentifier);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        sub_100025FC8(v14, type metadata accessor for CRLBoardIdentifier);
        goto LABEL_36;
      }

      v54 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
      v55 = *&v14[v54];
      v56 = *&v14[v54 + 8];
      v57 = &v17[v54];
      if (v55 == *v57 && v56 == *(v57 + 1))
      {
        break;
      }

      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100025FC8(v14, type metadata accessor for CRLBoardIdentifier);
      if (v59)
      {
        goto LABEL_31;
      }

LABEL_36:
      v52 += v50;
      if (!--v53)
      {
        goto LABEL_44;
      }
    }

    sub_100025FC8(v14, type metadata accessor for CRLBoardIdentifier);
LABEL_31:
    sub_100025FC8(v17, type metadata accessor for CRLBoardIdentifier);
LABEL_32:
    if (++v51 != v48)
    {
      continue;
    }

    break;
  }

  v31 = v75;
LABEL_50:
  v62 = sub_10004B3DC(v31);

  v63 = sub_10004B3DC(v32);

  v64 = sub_10004B56C(v62, 0);

  v65 = sub_10004B56C(v63, 1);

  v83 = v64;
  sub_10004B92C(v65);
  v66 = sub_10004B958(v83);

  if (*(v66 + 16))
  {
    v83 = v66;
    PassthroughSubject.send(_:)();
  }
}

uint64_t sub_100C94168@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1005B981C(&qword_101A19C38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;

  sub_100DCAA28(v6);

  v8 = sub_100C9AA2C(v7, v7);

  v11 = v8;
  sub_1005B981C(&qword_101A19C40);
  sub_10001A2F8(&qword_101A19C48, &qword_101A19C40);
  Sequence.publisher.getter();

  sub_10001A2F8(&unk_101A19C50, &qword_101A19C38);
  v9 = Publisher.eraseToAnyPublisher()();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v9;
  return result;
}

BOOL sub_100C94328(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_pendingChangesLock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_pendingChanges;
  swift_beginAccess();
  v6 = *(a2 + v5);

  LOBYTE(a1) = sub_10079FDE0(a1, v6);

  os_unfair_lock_unlock(*(v4 + 16));
  return (a1 & 1) == 0;
}

uint64_t sub_100C943C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a3;
  v5 = sub_1005B981C(&qword_101A19C00);
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_pendingChangesLock);
  os_unfair_lock_lock(*(v16 + 16));
  sub_10004B150(a1, v13, type metadata accessor for CRLSpotlightManager.ChangeType);
  swift_beginAccess();
  sub_10004BAE8(v15, v13);
  sub_100025FC8(v15, type metadata accessor for CRLSpotlightManager.ChangeType);
  swift_endAccess();
  os_unfair_lock_unlock(*(v16 + 16));
  sub_10004B150(a1, v15, type metadata accessor for CRLSpotlightManager.ChangeType);
  v17 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  sub_100025598(v15, v18 + v17, type metadata accessor for CRLSpotlightManager.ChangeType);
  sub_1005B981C(&qword_101A19C08);
  swift_allocObject();

  v25 = Future.init(_:)();
  type metadata accessor for CRLSpotlightManager.IndexDecision(0);
  sub_10001A2F8(&qword_101A19C10, &qword_101A19C08);
  Publisher.compactMap<A>(_:)();

  sub_10001A2F8(&qword_101A19C18, &qword_101A19C00);
  v19 = v22;
  v20 = Publisher.eraseToAnyPublisher()();
  result = (*(v23 + 8))(v8, v19);
  *v24 = v20;
  return result;
}

uint64_t sub_100C94738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  static TaskPriority.background.getter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  sub_10004B150(a4, v11, type metadata accessor for CRLSpotlightManager.ChangeType);
  v16 = sub_100042818(&qword_101A19BF0, type metadata accessor for CRLSpotlightManager);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = v16;
  v19[4] = a3;
  sub_100025598(v11, v19 + v17, type metadata accessor for CRLSpotlightManager.ChangeType);
  v20 = (v19 + v18);
  *v20 = a1;
  v20[1] = a2;
  swift_retain_n();

  sub_10064191C(0, 0, v14, &unk_1014A8B80, v19);
}

uint64_t sub_100C94984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[9] = sub_1005B981C(&qword_101A19C28);
  v7[10] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v7[11] = swift_task_alloc();
  v7[12] = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v7[13] = swift_task_alloc();
  sub_1005B981C(&qword_101A19C20);
  v7[14] = swift_task_alloc();
  sub_1005B981C(&qword_101A19C30);
  v7[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C94AF8, a4, 0);
}

uint64_t sub_100C94AF8()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[6];
  v4 = *(v0[5] + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_pendingChangesLock);
  os_unfair_lock_lock(*(v4 + 16));
  swift_beginAccess();
  sub_100ED8960(v3, v1);
  sub_10000CAAC(v1, &qword_101A19C30);
  swift_endAccess();
  os_unfair_lock_unlock(*(v4 + 16));
  sub_10004B150(v3, v2, type metadata accessor for CRLSpotlightManager.ChangeType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100025598(v0[13], v0[14], type metadata accessor for CRLBoardIdentifier);
    v5 = type metadata accessor for CRLSpotlightManager.IndexDecision(0);
    swift_storeEnumTagMultiPayload();
    v6 = v0[14];
    v7 = v0[10];
    v8 = v0[7];
    (*(*(v5 - 8) + 56))(v6, 0, 1, v5);
    sub_100C9C29C(v6, v7);
    swift_storeEnumTagMultiPayload();
    v8(v7);
    sub_10000CAAC(v7, &qword_101A19C28);
    sub_10000CAAC(v6, &qword_101A19C20);

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_100025598(v0[13], v0[11], type metadata accessor for CRLBoardIdentifier);
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = sub_100C94DC0;
    v12 = v0[11];

    return sub_100C98410(v12);
  }
}

uint64_t sub_100C94DC0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 136) = a1;

  v4 = *(v3 + 40);
  if (v1)
  {

    v5 = sub_100C954A8;
  }

  else
  {
    v5 = sub_100C94F00;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C94F00()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = [v1 attributeSet];
    v0[18] = v2;
    v3 = [v2 title];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    v0[19] = v7;
    v14 = swift_task_alloc();
    v0[20] = v14;
    *v14 = v0;
    v14[1] = sub_100C95140;
    v15 = v0[11];

    return sub_100C995C4(v15, v5, v7);
  }

  else
  {
    sub_100025FC8(v0[11], type metadata accessor for CRLBoardIdentifier);
    v8 = type metadata accessor for CRLSpotlightManager.IndexDecision(0);
    v9 = v0[14];
    v10 = v0[10];
    v11 = v0[7];
    (*(*(v8 - 8) + 56))(v9, 1, 1, v8);
    sub_100C9C29C(v9, v10);
    swift_storeEnumTagMultiPayload();
    v11(v10);
    sub_10000CAAC(v10, &qword_101A19C28);
    sub_10000CAAC(v9, &qword_101A19C20);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100C95140(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 168) = a1;
  *(v5 + 176) = a2;

  v6 = *(v4 + 40);
  if (v2)
  {

    v7 = sub_100C95608;
  }

  else
  {

    v7 = sub_100C952A4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100C952A4()
{
  v1 = *(v0 + 176);
  if (v1 >> 60 == 15)
  {
  }

  else
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 144);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v3 setThumbnailData:isa];

    sub_100025870(v2, v1);
  }

  v5 = *(v0 + 136);
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(sub_1005B981C(&unk_101A19A90) + 48);
  sub_100025598(v7, v6, type metadata accessor for CRLBoardIdentifier);
  *(v6 + v8) = v5;
  v9 = type metadata accessor for CRLSpotlightManager.IndexDecision(0);
  swift_storeEnumTagMultiPayload();
  v10 = *(v0 + 112);
  v11 = *(v0 + 80);
  v12 = *(v0 + 56);
  (*(*(v9 - 8) + 56))(v10, 0, 1, v9);
  sub_100C9C29C(v10, v11);
  swift_storeEnumTagMultiPayload();
  v12(v11);
  sub_10000CAAC(v11, &qword_101A19C28);
  sub_10000CAAC(v10, &qword_101A19C20);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100C954A8()
{
  sub_100025FC8(v0[11], type metadata accessor for CRLBoardIdentifier);
  v1 = type metadata accessor for CRLSpotlightManager.IndexDecision(0);
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  (*(*(v1 - 8) + 56))(v2, 1, 1, v1);
  sub_100C9C29C(v2, v3);
  swift_storeEnumTagMultiPayload();
  v4(v3);
  sub_10000CAAC(v3, &qword_101A19C28);
  sub_10000CAAC(v2, &qword_101A19C20);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C95608()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(sub_1005B981C(&unk_101A19A90) + 48);
  sub_100025598(v3, v2, type metadata accessor for CRLBoardIdentifier);
  *(v2 + v4) = v1;
  v5 = type metadata accessor for CRLSpotlightManager.IndexDecision(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(v0 + 112);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  (*(*(v5 - 8) + 56))(v6, 0, 1, v5);
  sub_100C9C29C(v6, v7);
  swift_storeEnumTagMultiPayload();
  v8(v7);
  sub_10000CAAC(v7, &qword_101A19C28);
  sub_10000CAAC(v6, &qword_101A19C20);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100C957C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for CRLSpotlightManager.IndexDecision(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  sub_10004B150(a1, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLSpotlightManager.IndexDecision);
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  sub_100025598(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for CRLSpotlightManager.IndexDecision);
  sub_1005B981C(&qword_101A19BE0);
  swift_allocObject();

  v13[1] = Future.init(_:)();
  sub_10001A2F8(&qword_101A19BE8, &qword_101A19BE0);
  v11 = Publisher.eraseToAnyPublisher()();

  *a3 = v11;
  return result;
}

uint64_t sub_100C95988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLSpotlightManager.IndexDecision(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_10004B150(a4, v11, type metadata accessor for CRLSpotlightManager.IndexDecision);
  v16 = sub_100042818(&qword_101A19BF0, type metadata accessor for CRLSpotlightManager);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = v16;
  v19[4] = a3;
  sub_100025598(v11, v19 + v17, type metadata accessor for CRLSpotlightManager.IndexDecision);
  v20 = (v19 + v18);
  *v20 = a1;
  v20[1] = a2;
  swift_retain_n();

  sub_10064191C(0, 0, v14, &unk_1014A8B50, v19);
}

uint64_t sub_100C95BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v7[5] = sub_1005B981C(&qword_101A19BF8);
  v7[6] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v9 = swift_task_alloc();
  v7[7] = v9;
  v10 = swift_task_alloc();
  v7[8] = v10;
  *v10 = v7;
  v10[1] = sub_100C95CE8;

  return sub_100C96FE8(v9, a5);
}

uint64_t sub_100C95CE8()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100C95DF8, v1, 0);
}

uint64_t sub_100C95DF8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  sub_10004B150(v1, v2, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v3(v2);
  sub_10000CAAC(v2, &qword_101A19BF8);
  sub_100025FC8(v1, type metadata accessor for CRLBoardIdentifier);

  v4 = v0[1];

  return v4();
}

void sub_100C95EEC()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_1000640CC(v30), (v3 & 1) == 0))
  {

    sub_100064234(v30);
LABEL_9:
    v31 = 0u;
    v32 = 0u;
    goto LABEL_10;
  }

  sub_100064288(*(v1 + 56) + 32 * v2, &v31);
  sub_100064234(v30);

  if (*(&v32 + 1))
  {
    sub_1005B981C(&unk_101A22E80);
    if (swift_dynamicCast())
    {
      v4 = sub_10004B56C(v30[0], 0);

      v5 = sub_10004B56C(_swiftEmptySetSingleton, 1);
      v30[0] = v4;
      sub_10004B92C(v5);
      v6 = sub_10004B958(v30[0]);

      v30[0] = v6;
      PassthroughSubject.send(_:)();

      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  sub_10000CAAC(&v31, &unk_1019F4D00);
LABEL_11:
  v29 = objc_opt_self();
  v7 = [v29 _atomicIncrementAssertCount];
  v30[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v30);
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
  v17 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v17;
  *(inited + 72) = v8;
  *(inited + 136) = &type metadata for String;
  v18 = sub_1000053B0();
  *(inited + 112) = v11;
  *(inited + 120) = v13;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v18;
  *(inited + 152) = 311;
  v19 = v30[0];
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
  sub_100005404(v14, &_mh_execute_header, v23, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

  [v29 handleFailureInFunction:v26 file:v27 lineNumber:311 isFatal:0 format:v28 args:v25];
}

uint64_t sub_100C9644C()
{
  v0 = sub_1005B981C(&unk_1019F52D0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v45 - v4;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = Notification.userInfo.getter();
    if (v12)
    {
      v13 = v12;
      v52 = 0xD000000000000033;
      v53 = 0x80000001015912D0;
      AnyHashable.init<A>(_:)();
      if (*(v13 + 16))
      {
        v14 = sub_1000640CC(v54);
        if (v15)
        {
          sub_100064288(*(v13 + 56) + 32 * v14, &v55);
          sub_100064234(v54);

          if (*(&v56 + 1))
          {
            v16 = swift_dynamicCast();
            (*(v7 + 56))(v3, v16 ^ 1u, 1, v6);
            if ((*(v7 + 48))(v3, 1, v6) != 1)
            {
LABEL_14:
              sub_10003DFF8(v3, v5, &unk_1019F52D0);
              if ((*(v7 + 48))(v5, 1, v6) == 1)
              {

                return sub_10000CAAC(v5, &unk_1019F52D0);
              }

              else
              {
                sub_100025598(v5, v9, type metadata accessor for CRLBoardIdentifier);
                sub_1005B981C(&unk_101A19BD0);
                v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
                v40 = swift_allocObject();
                *(v40 + 16) = xmmword_10146C6B0;
                sub_10004B150(v9, v40 + v39, type metadata accessor for CRLBoardIdentifier);
                v41 = sub_1005BF2F8(v40);
                swift_setDeallocating();
                sub_100025FC8(v40 + v39, type metadata accessor for CRLBoardIdentifier);
                swift_deallocClassInstance();
                v42 = sub_10004B56C(v41, 0);

                v43 = sub_10004B56C(_swiftEmptySetSingleton, 1);
                v54[0] = v42;
                sub_10004B92C(v43);
                v44 = sub_10004B958(v54[0]);

                v54[0] = v44;
                PassthroughSubject.send(_:)();
                sub_100025FC8(v9, type metadata accessor for CRLBoardIdentifier);
              }
            }

LABEL_11:
            v46 = v6;
            v47 = v3;
            v48 = v7;
            v49 = v5;
            v50 = v11;
            v51 = v9;
            v45 = objc_opt_self();
            v17 = [v45 _atomicIncrementAssertCount];
            v54[0] = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, v54);
            StaticString.description.getter();
            v18 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v19 = String._bridgeToObjectiveC()();

            v20 = [v19 lastPathComponent];

            v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v23 = v22;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v24 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146CA70;
            *(inited + 56) = &type metadata for Int32;
            *(inited + 64) = &protocol witness table for Int32;
            *(inited + 32) = v17;
            v26 = sub_100006370(0, &qword_1019F4D30);
            *(inited + 96) = v26;
            v27 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
            *(inited + 104) = v27;
            *(inited + 72) = v18;
            *(inited + 136) = &type metadata for String;
            v28 = sub_1000053B0();
            *(inited + 112) = v21;
            *(inited + 120) = v23;
            *(inited + 176) = &type metadata for UInt;
            *(inited + 184) = &protocol witness table for UInt;
            *(inited + 144) = v28;
            *(inited + 152) = 338;
            v29 = v54[0];
            *(inited + 216) = v26;
            *(inited + 224) = v27;
            *(inited + 192) = v29;
            v30 = v18;
            v31 = v29;
            v32 = static os_log_type_t.error.getter();
            sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v33 = static os_log_type_t.error.getter();
            sub_100005404(v24, &_mh_execute_header, v33, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v34 = swift_allocObject();
            v34[2] = 8;
            v34[3] = 0;
            v34[4] = 0;
            v34[5] = 0;
            v35 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v36 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v37 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v38 = String._bridgeToObjectiveC()();

            [v45 handleFailureInFunction:v36 file:v37 lineNumber:338 isFatal:0 format:v38 args:v35];

            v9 = v51;
            v7 = v48;
            v5 = v49;
            v6 = v46;
            v3 = v47;
            goto LABEL_14;
          }

LABEL_10:
          sub_10000CAAC(&v55, &unk_1019F4D00);
          (*(v7 + 56))(v3, 1, 1, v6);
          goto LABEL_11;
        }
      }

      sub_100064234(v54);
    }

    v55 = 0u;
    v56 = 0u;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100C96C34()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v6;
  v20 = v5;
  (*(v6 + 16))(v4, v0 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_boardIndexStateURL);
  if (qword_1019F20F8 != -1)
  {
    swift_once();
  }

  v7 = static OS_os_log.crlSpotlight;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v9 = URL.absoluteString.getter();
  v11 = v10;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v12 = static os_log_type_t.default.getter();
  v18 = v7;
  sub_100005404(v7, &_mh_execute_header, v12, "Saving Spotlight state to %@", 28, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v13 = *(*(v1 + 160) + 16);
  os_unfair_lock_lock(v13);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  swift_beginAccess();
  v21 = *(v1 + 152);

  sub_1005B981C(&qword_101A19AB8);
  sub_100C9BF18();
  v14 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v16 = v15;

  os_unfair_lock_unlock(v13);
  Data.write(to:options:)();
  (*(v19 + 8))(v4, v20);
  return sub_10002640C(v14, v16);
}

uint64_t sub_100C96FE8(uint64_t a1, uint64_t a2)
{
  v3[51] = a2;
  v3[52] = v2;
  v3[50] = a1;
  sub_1005B981C(&qword_101A0A320);
  v3[53] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = type metadata accessor for CRLSpotlightManager.IndexDecision(0);
  v3[58] = swift_task_alloc();

  return _swift_task_switch(sub_100C970FC, v2, 0);
}

uint64_t sub_100C970FC()
{
  sub_10004B150(v0[51], v0[58], type metadata accessor for CRLSpotlightManager.IndexDecision);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[58];
  v3 = v0[50];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[55];
    sub_100025598(v0[58], v4, type metadata accessor for CRLBoardIdentifier);
    sub_10004B150(v4, v3, type metadata accessor for CRLBoardIdentifier);
    if (qword_1019F20F8 != -1)
    {
      swift_once();
    }

    v5 = v0[52];
    v6 = v0[50];
    v7 = static OS_os_log.crlSpotlight;
    v0[66] = static OS_os_log.crlSpotlight;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v31 = UUID.uuidString.getter();
    v33 = v9;

    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);

    v11 = (v6 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
    v12 = *v11;
    v0[67] = *v11;
    v13 = v11[1];
    v0[68] = v13;

    v14._countAndFlagsBits = v12;
    v14._object = v13;
    String.append(_:)(v14);

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v31;
    *(inited + 40) = v33;
    v15 = static os_log_type_t.default.getter();
    sub_100005404(v7, &_mh_execute_header, v15, "CoreSpotlight DELETE %@", 23, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v0[69] = *(v5 + 112);
    sub_1005B981C(&unk_1019F61D0);
    v16 = swift_allocObject();
    v0[70] = v16;
    *(v16 + 16) = xmmword_10146C6B0;
    v32 = UUID.uuidString.getter();
    v34 = v17;

    v18._countAndFlagsBits = 58;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);

    v19._countAndFlagsBits = v12;
    v19._object = v13;
    String.append(_:)(v19);

    *(v16 + 32) = v32;
    *(v16 + 40) = v34;
    v20 = sub_100C97B90;
  }

  else
  {
    v21 = v0[56];
    v22 = *(v2 + *(sub_1005B981C(&unk_101A19A90) + 48));
    v0[59] = v22;
    sub_100025598(v2, v21, type metadata accessor for CRLBoardIdentifier);
    sub_10004B150(v21, v3, type metadata accessor for CRLBoardIdentifier);
    if (qword_1019F20F8 != -1)
    {
      swift_once();
    }

    v23 = v0[52];
    v24 = static OS_os_log.crlSpotlight;
    v0[60] = static OS_os_log.crlSpotlight;
    sub_1005B981C(&qword_1019F54E0);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_10146C6B0;
    *(v25 + 56) = sub_100006370(0, &qword_101A09CB0);
    *(v25 + 64) = sub_10000FDE0(&unk_101A19AA0, &qword_101A09CB0);
    *(v25 + 32) = v22;
    v26 = v22;
    v27 = static os_log_type_t.default.getter();
    sub_100005404(v24, &_mh_execute_header, v27, "CoreSpotlight INDEX %@", 22, 2, v25);
    swift_setDeallocating();
    sub_100005070(v25 + 32);
    v0[61] = *(v23 + 112);
    sub_1005B981C(&unk_1019F4D60);
    v28 = swift_allocObject();
    v0[62] = v28;
    *(v28 + 16) = xmmword_101465920;
    *(v28 + 32) = v26;
    v29 = v26;
    v20 = sub_100C975B0;
  }

  return _swift_task_switch(v20, 0, 0);
}

uint64_t sub_100C975B0()
{
  v1 = swift_task_alloc();
  *(v0 + 504) = v1;
  *(v1 + 16) = *(v0 + 488);
  v2 = swift_task_alloc();
  *(v0 + 512) = v2;
  *v2 = v0;
  v2[1] = sub_100C976A8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD00000000000001CLL, 0x8000000101597070, sub_100C9BF10, v1, &type metadata for () + 8);
}

uint64_t sub_100C976A8()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_100C97918;
  }

  else
  {

    v2 = sub_100C977CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100C977E8()
{
  v1 = v0[65];
  v2 = v0[59];
  v3 = v0[52];
  v4 = v0[50];
  v5 = *(*(v3 + 160) + 16);
  os_unfair_lock_lock(v5);
  sub_100C98254(v3, v4, v2);
  if (v1)
  {

    os_unfair_lock_unlock(v5);
  }

  else
  {
    v6 = v0[59];
    v7 = v0[56];
    os_unfair_lock_unlock(v5);

    sub_100025FC8(v7, type metadata accessor for CRLBoardIdentifier);

    v8 = v0[1];

    v8();
  }
}

uint64_t sub_100C97918()
{
  v1 = *(v0 + 416);

  return _swift_task_switch(sub_100C9798C, v1, 0);
}

uint64_t sub_100C9798C()
{
  v1 = *(v0 + 480);
  sub_100025FC8(*(v0 + 448), type metadata accessor for CRLBoardIdentifier);
  if (qword_1019F20F8 != -1)
  {
    swift_once();
  }

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v3 = UUID.uuidString.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.publicDescription.getter(*(v0 + 320), *(v0 + 328));
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  swift_getErrorValue();
  v9 = Error.fullDescription.getter(*(v0 + 344));
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v6;
  *(inited + 112) = v9;
  *(inited + 120) = v10;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v11, "Spotlight ERROR identifier:%{public}@ error: %{public}@, <%@>", 61, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100C97B90()
{
  v1 = swift_task_alloc();
  *(v0 + 568) = v1;
  *(v1 + 16) = *(v0 + 552);
  v2 = swift_task_alloc();
  *(v0 + 576) = v2;
  *v2 = v0;
  v2[1] = sub_100C97C88;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD00000000000002BLL, 0x8000000101596FE0, sub_100C9BF08, v1, &type metadata for () + 8);
}

uint64_t sub_100C97C88()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_100C97FE0;
  }

  else
  {

    v2 = sub_100C97DB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C97DCC()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[54];
  v15 = v0[55];
  v4 = v0[52];
  v5 = v0[53];
  v6 = v0[50];
  v7 = *(v4 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_drawingIndexableContentHelper);
  UUID.uuidString.getter();

  v8._countAndFlagsBits = 58;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  v9._countAndFlagsBits = v2;
  v9._object = v1;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  [v7 removeDrawingIndexedContentsFromBoardWithIdentifierString:v10];

  v11 = *(*(v4 + 160) + 16);
  os_unfair_lock_lock(v11);
  sub_10004B150(v6, v3, type metadata accessor for CRLBoardIdentifier);
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  swift_beginAccess();
  sub_100BC4174(v5, v3);
  swift_endAccess();
  os_unfair_lock_unlock(v11);
  sub_100025FC8(v15, type metadata accessor for CRLBoardIdentifier);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100C97FE0()
{
  v1 = *(v0 + 416);

  return _swift_task_switch(sub_100C98058, v1, 0);
}

uint64_t sub_100C98058()
{
  v1 = v0[66];
  sub_100025FC8(v0[55], type metadata accessor for CRLBoardIdentifier);
  if (qword_1019F20F8 != -1)
  {
    swift_once();
  }

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v3 = UUID.uuidString.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.publicDescription.getter(v0[40], v0[41]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  swift_getErrorValue();
  v9 = Error.fullDescription.getter(v0[43]);
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v6;
  *(inited + 112) = v9;
  *(inited + 120) = v10;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v11, "Spotlight ERROR identifier:%{public}@ error: %{public}@, <%@>", 61, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100C98254(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B150(a2, v10, type metadata accessor for CRLBoardIdentifier);
  v11 = [a3 attributeSet];
  v12 = [v11 contentModificationDate];

  if (v12)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v7, v13, 1, v14);
  swift_beginAccess();
  sub_100BC4174(v7, v10);
  return swift_endAccess();
}

uint64_t sub_100C98410(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  sub_1005B981C(&qword_1019F6268);
  v2[36] = swift_task_alloc();
  v3 = type metadata accessor for CRLBoardEntity();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  sub_1005B981C(&qword_101A0A320);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = type metadata accessor for CRLBoardCRDTData(0);
  v2[43] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[47] = swift_task_alloc();

  return _swift_task_switch(sub_100C98604, v1, 0);
}

uint64_t sub_100C98604()
{
  v1 = v0[47];
  v2 = v0[35];
  sub_10004B150(v0[34], v1, type metadata accessor for CRLBoardIdentifier);
  v3 = *(v2 + 136);
  type metadata accessor for CRLBoardActor();
  v4 = swift_allocObject();
  v0[48] = v4;
  v5 = v3;
  swift_defaultActor_initialize();
  sub_100025598(v1, v4 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  *(v4 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store) = v5;

  return _swift_task_switch(sub_100C986F8, v4, 0);
}

uint64_t sub_100C986F8()
{
  v1 = *(v0 + 384);
  type metadata accessor for CRLImmutableBoard(0);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store);
  v3 = OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier;
  v4 = swift_task_alloc();
  *(v0 + 392) = v4;
  *v4 = v0;
  v4[1] = sub_100C987C0;

  return sub_100797820(v2, v1 + v3, 1);
}

uint64_t sub_100C987C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 400) = a1;
  *(v4 + 408) = v1;

  v5 = *(v3 + 280);
  if (v1)
  {
    v6 = sub_100C98FEC;
  }

  else
  {
    v6 = sub_100C988F4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C988F4()
{
  v1 = *(v0 + 272);
  UUID.uuidString.getter();

  v2._countAndFlagsBits = 58;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);

  v3 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v4 = *v3;
  v5 = v3[1];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  v7 = [objc_opt_self() isOSFeatureEnabled:12];
  v8 = *(v0 + 400);
  if (v7)
  {
    v9 = *(*(v0 + 280) + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_drawingIndexableContentHelper);
    UUID.uuidString.getter();

    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);

    v11._countAndFlagsBits = v4;
    v11._object = v5;
    String.append(_:)(v11);

    v12 = String._bridgeToObjectiveC()();

    v13 = [v9 drawingIndexedContentsFromBoardWithIdentifierString:v12];

    v14 = sub_100C91B44();
    v15 = [v8 searchableItemAttributeSet:v13 indexRecognizerAttributeKey:v14];
  }

  else
  {
    v15 = [*(v0 + 400) searchableItemAttributeSet:0 indexRecognizerAttributeKey:0];
  }

  *(v0 + 416) = v15;
  v16 = *(v0 + 360);
  v17 = *(v0 + 368);
  v19 = *(v0 + 344);
  v18 = *(v0 + 352);
  v20 = *(*(v0 + 400) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v21 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004B150(v20 + v21, v19, type metadata accessor for CRLBoardCRDTData);
  v22 = v15;
  sub_1005B981C(&qword_1019F4858);
  CRMaxRegister.wrappedValue.getter();
  sub_100025FC8(v19, type metadata accessor for CRLBoardCRDTData);
  Date.init(timeIntervalSinceReferenceDate:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v59 = *(v16 + 8);
  v59(v17, v18);
  [v22 setContentModificationDate:isa];

  v24 = objc_allocWithZone(CSSearchableItem);
  v25 = String._bridgeToObjectiveC()();

  v26 = String._bridgeToObjectiveC()();
  v27 = [v24 initWithUniqueIdentifier:v25 domainIdentifier:v26 attributeSet:v22];
  *(v0 + 424) = v27;

  if (qword_1019F20F8 != -1)
  {
    swift_once();
  }

  v60 = static OS_os_log.crlSpotlight;
  *(v0 + 432) = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v29 = [v27 uniqueIdentifier];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *(inited + 56) = &type metadata for String;
  v33 = sub_1000053B0();
  *(v0 + 440) = v33;
  *(inited + 32) = v30;
  *(inited + 64) = v33;
  *(inited + 40) = v32;
  v34 = [v27 attributeSet];
  v35 = [v34 contentModificationDate];

  if (v35)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = *(v0 + 352);
  v38 = *(v0 + 360);
  v40 = *(v0 + 320);
  v39 = *(v0 + 328);
  (*(v38 + 56))(v40, v36, 1, v37);
  sub_10003DFF8(v40, v39, &qword_101A0A320);
  if ((*(v38 + 48))(v39, 1, v37))
  {
    sub_10000CAAC(*(v0 + 328), &qword_101A0A320);
    v41 = (inited + 72);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v33;
LABEL_11:
    *v41 = 0x4E574F4E4B4E55;
    v42 = 0xE700000000000000;
    goto LABEL_14;
  }

  v43 = *(v0 + 368);
  v44 = *(v0 + 352);
  v45 = *(v0 + 328);
  (*(*(v0 + 360) + 16))(v43, v45, v44);
  sub_10000CAAC(v45, &qword_101A0A320);
  v46 = Date.description.getter();
  v42 = v47;
  v59(v43, v44);
  v41 = (inited + 72);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v33;
  if (!v42)
  {
    goto LABEL_11;
  }

  *v41 = v46;
LABEL_14:
  *(inited + 80) = v42;
  v48 = [v27 attributeSet];
  v49 = [v48 title];

  if (v49)
  {
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = (inited + 112);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v33;
    if (v52)
    {
      *v53 = v50;
      goto LABEL_19;
    }
  }

  else
  {
    v53 = (inited + 112);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v33;
  }

  *v53 = 0x4E574F4E4B4E55;
  v52 = 0xE700000000000000;
LABEL_19:
  *(inited + 120) = v52;
  v54 = static os_log_type_t.default.getter();
  sub_100005404(v60, &_mh_execute_header, v54, "Indexed UUID:%s Date:%s Title:%s", 32, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v55 = swift_task_alloc();
  *(v0 + 448) = v55;
  *v55 = v0;
  v55[1] = sub_100C990B4;
  v56 = *(v0 + 288);
  v57 = *(v0 + 272);

  return sub_1010940DC(v56, v57);
}

uint64_t sub_100C98FEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C990B4()
{
  v2 = *v1;

  v3 = *(v2 + 280);
  if (v0)
  {

    v4 = sub_100C994A4;
  }

  else
  {
    v4 = sub_100C991EC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C991EC()
{
  v1 = *(v0 + 288);
  if ((*(*(v0 + 304) + 48))(v1, 1, *(v0 + 296)) == 1)
  {
    v2 = *(v0 + 400);

    sub_10000CAAC(*(v0 + 288), &qword_1019F6268);
  }

  else
  {
    sub_100025598(v1, *(v0 + 312), type metadata accessor for CRLBoardEntity);
    sub_100042818(&unk_101A19A80, type metadata accessor for CRLBoardEntity);
    CSSearchableItem.associate<A>(appEntity:priority:)();
    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 440);
    v5 = *(v0 + 416);
    v4 = *(v0 + 424);
    v6 = *(v0 + 400);
    v17 = *(v0 + 312);
    v7 = static OS_os_log.appIntents;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v9 = [v4 uniqueIdentifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v3;
    *(inited + 32) = v10;
    *(inited + 40) = v12;
    v13 = static os_log_type_t.default.getter();
    sub_100005404(v7, &_mh_execute_header, v13, "Associated entity with spotlight searchable item: %@", 52, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_100025FC8(v17, type metadata accessor for CRLBoardEntity);
  }

  v14 = *(v0 + 424);

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_100C994A4()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 288);

  (*(v3 + 56))(v4, 1, 1, v2);
  sub_10000CAAC(*(v0 + 288), &qword_1019F6268);
  v5 = *(v0 + 424);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_100C995C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[30] = type metadata accessor for CRLPreviewImages.Item(0);
  v4[31] = swift_task_alloc();

  return _swift_task_switch(sub_100C9965C, v3, 0);
}

uint64_t sub_100C9965C()
{
  v1 = *(v0[29] + 144);
  v0[32] = v1;
  if (v1)
  {
    sub_10004B150(v0[26], v0[31], type metadata accessor for CRLBoardIdentifier);
    swift_storeEnumTagMultiPayload();
    v1;
    v2 = swift_task_alloc();
    v0[33] = v2;
    *v2 = v0;
    v2[1] = sub_100C997A8;
    v3 = v0[31];

    return sub_1006DB258(v3, 4, 0, 1, 2.0);
  }

  else
  {

    v5 = v0[1];

    return v5(0, 0xF000000000000000);
  }
}

uint64_t sub_100C997A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 248);
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  sub_100025FC8(v5, type metadata accessor for CRLPreviewImages.Item);
  v6 = *(v3 + 232);
  if (v1)
  {
    v7 = sub_100C99B68;
  }

  else
  {
    v7 = sub_100C9990C;
  }

  return _swift_task_switch(v7, v6, 0);
}

id sub_100C9990C()
{
  v1 = [*(v0 + 272) PNGRepresentation];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (qword_1019F20F8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 272);
  v6 = static OS_os_log.crlSpotlight;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  [v5 size];
  v9 = v8;
  *(inited + 56) = &type metadata for CGFloat;
  v10 = sub_100B31FEC();
  *(inited + 32) = v9;
  *(inited + 64) = v10;
  result = [v5 size];
  *(inited + 96) = &type metadata for CGFloat;
  *(inited + 104) = v10;
  *(inited + 72) = v12;
  v13 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v13 != 2)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v16 = *(v2 + 16);
    v15 = *(v2 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(v4);
    goto LABEL_13;
  }

  LODWORD(v14) = HIDWORD(v2) - v2;
  if (__OFSUB__(HIDWORD(v2), v2))
  {
    __break(1u);
    return result;
  }

  v14 = v14;
LABEL_13:
  v18 = *(v0 + 272);
  v19 = *(v0 + 256);
  v21 = *(v0 + 216);
  v20 = *(v0 + 224);
  *(inited + 136) = &type metadata for Int;
  *(inited + 144) = &protocol witness table for Int;
  *(inited + 112) = v14;
  *(inited + 176) = &type metadata for String;
  *(inited + 184) = sub_1000053B0();
  *(inited + 152) = v21;
  *(inited + 160) = v20;

  v22 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v22, "Created preview image %.1fx%.1f size=%d title=%@", 48, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();

  v23 = *(v0 + 8);

  return v23(v2, v4);
}

uint64_t sub_100C99B68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C99C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[5] = a4;
  return _swift_task_switch(sub_100C99C2C, a4, 0);
}

uint64_t sub_100C99C2C()
{
  v1 = *(*(*(v0 + 40) + 160) + 16);
  os_unfair_lock_lock(v1);
  swift_beginAccess();

  *(v0 + 64) = sub_100C916F4(v2);

  os_unfair_lock_unlock(v1);

  return _swift_task_switch(sub_100C99CE4, 0, 0);
}

uint64_t sub_100C99CE4()
{
  sub_100C9AF08(*(v0 + 64), *(v0 + 48), *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t *sub_100C99FC4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100C9A684(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_100C9A060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = sub_1005B981C(&qword_101A00148);
  __chkstk_darwin(v16 - 8);
  v18 = &v36 - v17;
  v20 = *(v19 + 56);
  sub_10004B150(a1, &v36 - v17, type metadata accessor for CRLSpotlightManager.ChangeType);
  sub_10004B150(a2, &v18[v20], type metadata accessor for CRLSpotlightManager.ChangeType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10004B150(v18, v12, type metadata accessor for CRLSpotlightManager.ChangeType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100025598(&v18[v20], v6, type metadata accessor for CRLBoardIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v21 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
        v22 = *&v12[v21];
        v23 = *&v12[v21 + 8];
        v24 = &v6[v21];
        if (v22 != *v24 || v23 != *(v24 + 1))
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_100025FC8(v6, type metadata accessor for CRLBoardIdentifier);
          sub_100025FC8(v12, type metadata accessor for CRLBoardIdentifier);
          if (v26)
          {
            goto LABEL_27;
          }

LABEL_23:
          sub_100025FC8(v18, type metadata accessor for CRLSpotlightManager.ChangeType);
          return 0;
        }

        sub_100025FC8(v6, type metadata accessor for CRLBoardIdentifier);
        v35 = v12;
        goto LABEL_26;
      }

      sub_100025FC8(v6, type metadata accessor for CRLBoardIdentifier);
      v34 = v12;
LABEL_22:
      sub_100025FC8(v34, type metadata accessor for CRLBoardIdentifier);
      goto LABEL_23;
    }

    v15 = v12;
LABEL_19:
    sub_100025FC8(v15, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v18, &qword_101A00148);
    return 0;
  }

  sub_10004B150(v18, v15, type metadata accessor for CRLSpotlightManager.ChangeType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_19;
  }

  sub_100025598(&v18[v20], v9, type metadata accessor for CRLBoardIdentifier);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    sub_100025FC8(v9, type metadata accessor for CRLBoardIdentifier);
    v34 = v15;
    goto LABEL_22;
  }

  v27 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v28 = *&v15[v27];
  v29 = *&v15[v27 + 8];
  v30 = &v9[v27];
  if (v28 != *v30 || v29 != *(v30 + 1))
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100025FC8(v9, type metadata accessor for CRLBoardIdentifier);
    sub_100025FC8(v15, type metadata accessor for CRLBoardIdentifier);
    if (v32)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  sub_100025FC8(v9, type metadata accessor for CRLBoardIdentifier);
  v35 = v15;
LABEL_26:
  sub_100025FC8(v35, type metadata accessor for CRLBoardIdentifier);
LABEL_27:
  sub_100025FC8(v18, type metadata accessor for CRLSpotlightManager.ChangeType);
  return 1;
}

void **sub_100C9A4DC(unint64_t a1, uint64_t a2, void **a3)
{
  v6 = a1;
  v19 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v16 = v6;
    v17 = v6 & 0xFFFFFFFFFFFFFF8;
    v15 = i;
    while (1)
    {
      if (v9)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v10;
      v13 = sub_100C934F0(&v18, a2, a3);
      if (v3)
      {

        return a3;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        i = v15;
        v6 = v16;
      }

      else
      {
      }

      ++v8;
      if (v12 == i)
      {
        a3 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a3 = _swiftEmptyArrayStorage;
LABEL_20:

  return a3;
}

uint64_t sub_100C9A684(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v46 = a4;
  v40 = a1;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v47 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - v11;
  result = __chkstk_darwin(v10);
  v15 = &v39 - v14;
  v41 = 0;
  v16 = 0;
  v48 = a3;
  v19 = *(a3 + 56);
  v18 = a3 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v43 = &v39 - v14;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
LABEL_11:
    v27 = v24 | (v16 << 6);
    v28 = *(v48 + 48);
    v29 = *(v47 + 72);
    v42 = v27;
    sub_10004B150(v28 + v29 * v27, v15, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_10004B150(v15, v12, type metadata accessor for CRLSpotlightManager.ChangeType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100025FC8(v12, type metadata accessor for CRLSpotlightManager.ChangeType);
      goto LABEL_15;
    }

    v30 = v12;
    v31 = v12;
    v32 = v7;
    v33 = v45;
    sub_100025598(v30, v45, type metadata accessor for CRLBoardIdentifier);
    v34 = v44;
    sub_10004B150(v33, v44, type metadata accessor for CRLBoardIdentifier);
    swift_storeEnumTagMultiPayload();
    v35 = sub_10079FDE0(v34, v46);
    sub_100025FC8(v34, type metadata accessor for CRLSpotlightManager.ChangeType);
    v36 = v33;
    v7 = v32;
    v12 = v31;
    v15 = v43;
    sub_100025FC8(v36, type metadata accessor for CRLBoardIdentifier);
    if (v35)
    {
      result = sub_100025FC8(v15, type metadata accessor for CRLSpotlightManager.ChangeType);
    }

    else
    {
LABEL_15:
      result = sub_100025FC8(v15, type metadata accessor for CRLSpotlightManager.ChangeType);
      *(v40 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
LABEL_18:
        v38 = v48;

        return sub_1010F4F80(v40, v39, v41, v38);
      }
    }
  }

  v25 = v16;
  while (1)
  {
    v16 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v16 >= v23)
    {
      goto LABEL_18;
    }

    v26 = *(v18 + 8 * v16);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v22 = (v26 - 1) & v26;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100C9AA2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v6 - 8);
  v50 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = __chkstk_darwin(v8);
  v49 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = v43 - v12;
  __chkstk_darwin(v11);
  v53 = a2;
  v54 = v43 - v14;
  v15 = *(a1 + 32);
  v16 = v15 & 0x3F;
  v17 = ((1 << v15) + 63) >> 6;
  v18 = 8 * v17;

  if (v16 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v44 = v17;
    v45 = v3;
    v43[1] = v43;
    __chkstk_darwin(v19);
    v46 = v43 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v46, v18);
    v47 = 0;
    v20 = 0;
    v21 = a1 + 56;
    v22 = 1 << *(a1 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v17 = v23 & *(a1 + 56);
    v3 = (v22 + 63) >> 6;
    while (v17)
    {
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v27 = v24 | (v20 << 6);
      v28 = a1;
      v29 = *(a1 + 48);
      v30 = *(v51 + 72);
      v48 = v27;
      v31 = v54;
      sub_10004B150(v29 + v30 * v27, v54, type metadata accessor for CRLSpotlightManager.ChangeType);
      sub_10004B150(v31, v13, type metadata accessor for CRLSpotlightManager.ChangeType);
      v18 = v52;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100025FC8(v13, type metadata accessor for CRLSpotlightManager.ChangeType);
        goto LABEL_16;
      }

      v32 = v13;
      v33 = v17;
      v34 = v13;
      v35 = v50;
      sub_100025598(v32, v50, type metadata accessor for CRLBoardIdentifier);
      v36 = v49;
      sub_10004B150(v35, v49, type metadata accessor for CRLBoardIdentifier);
      swift_storeEnumTagMultiPayload();
      v18 = sub_10079FDE0(v36, v53);
      sub_100025FC8(v36, type metadata accessor for CRLSpotlightManager.ChangeType);
      v37 = v35;
      v13 = v34;
      v17 = v33;
      sub_100025FC8(v37, type metadata accessor for CRLBoardIdentifier);
      if (v18)
      {
        sub_100025FC8(v54, type metadata accessor for CRLSpotlightManager.ChangeType);
        a1 = v28;
      }

      else
      {
LABEL_16:
        sub_100025FC8(v54, type metadata accessor for CRLSpotlightManager.ChangeType);
        *&v46[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
        v38 = __OFADD__(v47++, 1);
        a1 = v28;
        if (v38)
        {
          __break(1u);
LABEL_19:
          v39 = sub_1010F4F80(v46, v44, v47, a1);

          return v39;
        }
      }
    }

    v25 = v20;
    while (1)
    {
      v20 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v20 >= v3)
      {
        goto LABEL_19;
      }

      v26 = *(v21 + 8 * v20);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v17 = (v26 - 1) & v26;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v41 = swift_slowAlloc();
  v42 = v53;

  v39 = sub_100C99FC4(v41, v17, a1, v42);

  return v39;
}

uint64_t sub_100C9AF08(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v56[1] = a3;
  v57 = a2;
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v6 = v56 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = v56 - v11;
  v66 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v66);
  v65 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v64 = v56 - v14;
  v15 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v15 - 8);
  v63 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = v56 - v18;
  __chkstk_darwin(v19);
  v61 = v56 - v20;
  __chkstk_darwin(v21);
  v60 = v56 - v22;
  __chkstk_darwin(v23);
  v59 = v56 - v24;
  if (qword_1019F20F8 != -1)
  {
LABEL_17:
    swift_once();
  }

  v25 = static OS_os_log.crlSpotlight;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v73 = a1;
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v27 = BidirectionalCollection<>.joined(separator:)();
  v29 = v28;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v27;
  *(inited + 40) = v29;
  v30 = static os_log_type_t.default.getter();
  sub_100005404(v25, &_mh_execute_header, v30, "REINDEX [%@]", 12, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v31 = _swiftEmptySetSingleton;
  v75 = _swiftEmptySetSingleton;
  v32 = a1[2];
  if (v32)
  {
    v33 = (v8 + 48);
    v69 = (v8 + 32);
    v70 = sub_100017CD8();
    a1 += 5;
    v72 = v6;
    v68 = v7;
    v58 = (v8 + 48);
    while (1)
    {
      v34 = *a1;
      v73 = *(a1 - 1);
      v74 = v34;

      v35 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
      v8 = *(v35 + 16);

      if (v8)
      {
        v6 = v72;
        static String._fromSubstring(_:)();
        v7 = v68;
      }

      UUID.init(uuidString:)();

      if ((*v33)(v6, 1, v7) == 1)
      {

        sub_10000CAAC(v6, &qword_1019F6990);
      }

      else
      {
        v36 = *v69;
        (*v69)(v71, v6, v7);
        if (v8 <= 1)
        {

          v37 = 0;
          v39 = 0xE000000000000000;
        }

        else
        {
          if (*(v35 + 16) < 2uLL)
          {
            __break(1u);
            goto LABEL_17;
          }

          v37 = static String._fromSubstring(_:)();
          v39 = v38;
          v7 = v68;
        }

        v40 = v67;
        v36(v67, v71, v7);
        v41 = v65;
        v36(v65, v40, v7);
        v42 = (v41 + *(v66 + 20));
        *v42 = v37;
        v42[1] = v39;
        v43 = v64;
        sub_100025598(v41, v64, type metadata accessor for CRLBoardIdentifierStorage);
        v44 = v43;
        v45 = v61;
        sub_100025598(v44, v61, type metadata accessor for CRLBoardIdentifierStorage);
        v46 = v45;
        v47 = v60;
        sub_100025598(v46, v60, type metadata accessor for CRLBoardIdentifier);
        v48 = v59;
        sub_100025598(v47, v59, type metadata accessor for CRLBoardIdentifier);
        v49 = v63;
        sub_10004B150(v48, v63, type metadata accessor for CRLBoardIdentifier);
        v50 = v62;
        sub_100031F10(v62, v49);

        sub_100025FC8(v50, type metadata accessor for CRLBoardIdentifier);
        sub_100025FC8(v48, type metadata accessor for CRLBoardIdentifier);
        v33 = v58;
        v6 = v72;
      }

      a1 += 2;
      if (!--v32)
      {
        v31 = v75;
        break;
      }
    }
  }

  v51 = sub_10004B56C(v31, 0);

  v52 = sub_10004B56C(_swiftEmptySetSingleton, 1);
  v73 = v51;
  sub_10004B92C(v52);
  v53 = sub_10004B958(v73);

  v73 = v53;
  PassthroughSubject.send(_:)();

  return v57(v54);
}

uint64_t sub_100C9B6A4(void *a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v55[1] = a2;
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v6 = v55 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v70 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = v55 - v11;
  v65 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v65);
  v64 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v63 = v55 - v14;
  v15 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v15 - 8);
  v62 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v61 = v55 - v18;
  __chkstk_darwin(v19);
  v60 = v55 - v20;
  __chkstk_darwin(v21);
  v59 = v55 - v22;
  __chkstk_darwin(v23);
  v58 = v55 - v24;
  if (qword_1019F20F8 != -1)
  {
LABEL_17:
    swift_once();
  }

  v25 = static OS_os_log.crlSpotlight;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v72 = a1;
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v27 = BidirectionalCollection<>.joined(separator:)();
  v29 = v28;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v27;
  *(inited + 40) = v29;
  v30 = static os_log_type_t.default.getter();
  sub_100005404(v25, &_mh_execute_header, v30, "REINDEX [%@]", 12, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v31 = _swiftEmptySetSingleton;
  v74 = _swiftEmptySetSingleton;
  v32 = a1[2];
  if (v32)
  {
    v33 = (v8 + 48);
    v68 = (v8 + 32);
    v69 = sub_100017CD8();
    a1 += 5;
    v71 = v6;
    v67 = v7;
    v57 = (v8 + 48);
    while (1)
    {
      v34 = *a1;
      v72 = *(a1 - 1);
      v73 = v34;

      v35 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
      v8 = *(v35 + 16);

      if (v8)
      {
        v6 = v71;
        static String._fromSubstring(_:)();
        v7 = v67;
      }

      UUID.init(uuidString:)();

      if ((*v33)(v6, 1, v7) == 1)
      {

        sub_10000CAAC(v6, &qword_1019F6990);
      }

      else
      {
        v36 = *v68;
        (*v68)(v70, v6, v7);
        if (v8 <= 1)
        {

          v37 = 0;
          v39 = 0xE000000000000000;
        }

        else
        {
          if (*(v35 + 16) < 2uLL)
          {
            __break(1u);
            goto LABEL_17;
          }

          v37 = static String._fromSubstring(_:)();
          v39 = v38;
          v7 = v67;
        }

        v40 = v66;
        v36(v66, v70, v7);
        v41 = v64;
        v36(v64, v40, v7);
        v42 = (v41 + *(v65 + 20));
        *v42 = v37;
        v42[1] = v39;
        v43 = v63;
        sub_100025598(v41, v63, type metadata accessor for CRLBoardIdentifierStorage);
        v44 = v43;
        v45 = v60;
        sub_100025598(v44, v60, type metadata accessor for CRLBoardIdentifierStorage);
        v46 = v45;
        v47 = v59;
        sub_100025598(v46, v59, type metadata accessor for CRLBoardIdentifier);
        v48 = v58;
        sub_100025598(v47, v58, type metadata accessor for CRLBoardIdentifier);
        v49 = v62;
        sub_10004B150(v48, v62, type metadata accessor for CRLBoardIdentifier);
        v50 = v61;
        sub_100031F10(v61, v49);

        sub_100025FC8(v50, type metadata accessor for CRLBoardIdentifier);
        sub_100025FC8(v48, type metadata accessor for CRLBoardIdentifier);
        v33 = v57;
        v6 = v71;
      }

      a1 += 2;
      if (!--v32)
      {
        v31 = v74;
        break;
      }
    }
  }

  v51 = sub_10004B56C(v31, 0);

  v52 = sub_10004B56C(_swiftEmptySetSingleton, 1);
  v72 = v51;
  sub_10004B92C(v52);
  v53 = sub_10004B958(v72);

  v72 = v53;
  PassthroughSubject.send(_:)();

  return (*(v56 + 16))();
}

uint64_t sub_100C9BE34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_100C99C08(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_100C9BF18()
{
  result = qword_101A19AC0;
  if (!qword_101A19AC0)
  {
    sub_1005C4E5C(&qword_101A19AB8);
    sub_100042818(&qword_1019F4780, type metadata accessor for CRLBoardIdentifier);
    sub_100042818(&qword_101A19AD0, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19AC0);
  }

  return result;
}

uint64_t sub_100C9C048(uint64_t result)
{
  if (*(*result + 16))
  {
    return sub_100C96C34();
  }

  return result;
}

uint64_t sub_100C9C098(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRLSpotlightManager.IndexDecision(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002D4C8;

  return sub_100C95BCC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100C9C200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = v4 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9);
}

uint64_t sub_100C9C29C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A19C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100C9C32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v9 = sub_100D2E440(a2, a1, KeyPath);

  if (v9)
  {
    sub_1005B981C(&unk_1019F4D60);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101465920;
    *(v10 + 32) = v9;
    v9 = [objc_allocWithZone(type metadata accessor for CRLCommandGroup()) init];
    v11 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
    swift_beginAccess();
    *(v9 + v11) = v10;

    if (a4)
    {
      v12 = *((swift_isaMask & *v9) + 0x110);

      v12(a3, a4);
    }
  }

  return v9;
}

void *sub_100C9C470(void *result)
{
  if (**(*result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2EF00);
    CRRegister.wrappedValue.getter();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100C9C544(uint64_t a1)
{
  v2 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10061A104(a1, v4);
  sub_1007FD6B4(v4);
}

void sub_100C9C5F4(double a1, uint64_t a2, uint64_t a3)
{
  sub_1007FDD4C();
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() sharedPool];
    v8 = [v7 providerForAsset:v6 shouldValidate:1];

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {

      return;
    }

    v10 = v9;
    v11 = v8;
    if ([v10 isValid])
    {
      if (([v10 isError] & 1) == 0)
      {
        [v10 naturalSize];
        v14 = sub_100121ED4(v12, v13, 1000000.0);
        v15 = [v10 CGImageResampledToSize:1 lowQuality:a3 assetOwner:sub_100120068(v14)];
        if (v15)
        {
          v16 = v15;
          v17 = objc_opt_self();
          v18 = [v17 tracedPathForImage:v16 alphaThreshold:a1 pointSpacing:1.0];
          if (v18)
          {
            v19 = v18;
            v20 = [v17 smoothBezierPath:v18 withThreshold:2.0];
            if (v20)
            {
              v21 = v20;
              [v10 naturalSize];
              v23 = v22 / CGImageGetWidth(v16);
              [v10 naturalSize];
              v25 = v24;

              Height = CGImageGetHeight(v16);
              CGAffineTransformMakeScale(&v27, v23, v25 / Height);
              [v21 transformUsingAffineTransform:&v27];
            }

            else
            {
              __break(1u);
            }

            return;
          }
        }
      }
    }
  }
}

uint64_t sub_100C9C834(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100C9C8CC, v4, v3);
}

uint64_t sub_100C9C8CC()
{
  v1 = *(v0 + 24);
  v2 = sub_1005357BC(*(v0 + 16));
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 56) = v3;
  *(v0 + 64) = v5;
  v6 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper());
  sub_100024E98(v3, v5);
  swift_unknownObjectRetain();
  *(v0 + 72) = sub_100CF051C(v3, v5, 0x6D49726574736F70, 0xEF676E702E656761, v1);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_100C9CA44;

  return sub_100CF1D24();
}

uint64_t sub_100C9CA44(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_100C9CBE8;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_100C9CB6C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100C9CB6C()
{
  v1 = v0[9];
  sub_10002640C(v0[7], v0[8]);

  v2 = v0[1];
  v3 = v0[12];

  return v2(v3);
}

uint64_t sub_100C9CBE8()
{
  v1 = v0[9];

  sub_10002640C(v0[7], v0[8]);
  v2 = v0[1];

  return v2();
}

id sub_100C9CC5C(double a1)
{
  v3 = [v1 fontDescriptor];
  sub_1005B981C(&qword_101A19E28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_1005B981C(&qword_101A19E30);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_10146C6B0;
  *(v5 + 32) = UIFontWeightTrait;
  *(v5 + 40) = a1;
  v6 = UIFontDescriptorTraitsAttribute;
  v7 = UIFontWeightTrait;
  v8 = sub_100BD481C(v5);
  swift_setDeallocating();
  sub_10000CAAC(v5 + 32, &qword_101A19E38);
  *(inited + 64) = sub_1005B981C(&qword_101A19E40);
  *(inited + 40) = v8;
  sub_100BD490C(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &qword_101A14728);
  type metadata accessor for AttributeName(0);
  sub_100C9CE68();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [v3 fontDescriptorByAddingAttributes:isa];

  [v1 pointSize];
  v12 = [objc_opt_self() fontWithDescriptor:v10 size:v11];

  return v12;
}

unint64_t sub_100C9CE68()
{
  result = qword_1019F3BF8;
  if (!qword_1019F3BF8)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F3BF8);
  }

  return result;
}

id sub_100C9CEC0(void *a1)
{
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  [v1 getRed:&v11 green:&v10 blue:&v9 alpha:&v8];
  [a1 getRed:&v7 green:&v6 blue:&v5 alpha:&v4];
  return [objc_allocWithZone(UIColor) initWithRed:v4 * v7 + (1.0 - v4) * v11 green:v4 * v6 + (1.0 - v4) * v10 blue:v4 * v5 + (1.0 - v4) * v9 alpha:1.0];
}

BOOL sub_100C9CFE8()
{
  v1 = [objc_opt_self() mainScreen];
  v2 = [v1 traitCollection];

  LODWORD(v1) = [v2 crl_isUserInterfaceStyleDark];
  v3 = [v0 CGColor];
  v4 = sub_1000CD56C(v3);

  if (!v1)
  {
    if (v4 <= 0.8)
    {
      goto LABEL_5;
    }

    return 1;
  }

  if (v4 < 0.4)
  {
    return 1;
  }

LABEL_5:
  v5 = [v0 CGColor];
  v6 = sub_1000CD54C(v5);

  if (v6)
  {
    return 1;
  }

  v8 = [v0 CGColor];
  Alpha = CGColorGetAlpha(v8);

  return Alpha < 0.1;
}

id sub_100C9D130(unsigned __int8 a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = v2;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return 0;
    }

    v6 = "ider";
    v5 = 0xD000000000000016;
  }

  else
  {
    if (a1)
    {
      v5 = 0xD00000000000001DLL;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (a1)
    {
      v6 = "preview image loaded for %@: %@";
    }

    else
    {
      v6 = "sf_drawing_hover_objecteraser";
    }
  }

  v7 = v6 | 0x8000000000000000;
  v60 = v5;
  v61 = v6 | 0x8000000000000000;

  v8 = a2;
  v9._countAndFlagsBits = 95;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  CGColorRef.components.getter();
  v10 = Array.description.getter();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14 = v61;
  v15 = v2[3];
  if (v15)
  {
    if (v16 = v2[4], v5 == v3[2]) && v15 == v61 || (_stringCompareWithSmolCheck(_:_:expecting:)())
    {

      v17 = v16;

      return v16;
    }
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = [objc_opt_self() imageNamed:v18];

  if (!v19)
  {

    return 0;
  }

  v58 = v19;
  v20 = [objc_allocWithZone(CRLImage) initWithUIImage:v19];
  v57 = v8;
  if (!v20)
  {
    v59 = objc_opt_self();
    v33 = [v59 _atomicIncrementAssertCount];
    v60 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v60);
    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    v36 = [v35 lastPathComponent];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v40 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v33;
    v42 = sub_1005CF000();
    *(inited + 96) = v42;
    v43 = sub_1005CF04C();
    *(inited + 104) = v43;
    *(inited + 72) = v34;
    *(inited + 136) = &type metadata for String;
    v44 = sub_1000053B0();
    *(inited + 112) = v37;
    *(inited + 120) = v39;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v44;
    *(inited + 152) = 27;
    v45 = v60;
    *(inited + 216) = v42;
    *(inited + 224) = v43;
    *(inited + 192) = v45;
    v46 = v34;
    v47 = v45;
    v48 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v48, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v49 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v49, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v50 = swift_allocObject();
    v50[2] = 8;
    v50[3] = 0;
    v50[4] = 0;
    v50[5] = 0;
    v51 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    [v59 handleFailureInFunction:v52 file:v53 lineNumber:27 isFatal:0 format:v54 args:v51];

    return 0;
  }

  v21 = v20;
  v22 = objc_allocWithZone(CRLColor);
  v23 = v21;
  v24 = [v22 initWithCGColor:v8];
  [v24 alphaComponent];
  v56 = v23;
  v16 = [v23 compositedImageWithColor:v24 alpha:20 blendMode:?];
  v26 = v3[2];
  v25 = v3[3];
  v27 = v3[4];
  v3[2] = v5;
  v3[3] = v14;
  v3[4] = v16;
  v28 = v16;
  sub_100C9D8F4(v26, v25, v27);
  if (qword_1019F21C8 != -1)
  {
    swift_once();
  }

  v29 = static OS_os_log.crlPencilHover;
  sub_1005B981C(&qword_1019F54E0);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_10146BDE0;
  _print_unlocked<A, B>(_:_:)();
  *(v30 + 56) = &type metadata for String;
  v31 = sub_1000053B0();
  *(v30 + 32) = 0;
  *(v30 + 40) = 0xE000000000000000;
  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = v31;
  *(v30 + 64) = v31;
  *(v30 + 72) = v5;
  *(v30 + 80) = v7;
  v32 = static os_log_type_t.debug.getter();
  sub_100005404(v29, &_mh_execute_header, v32, "preview image loaded for %@: %@", 31, 2, v30);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();

  return v16;
}

uint64_t sub_100C9D884()
{
  sub_100C9D8F4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

void sub_100C9D8F4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_100C9D938()
{
  v1 = v0;
  sub_100CA16D8(v1, __src);

  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for CRContext();
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v2 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
  sub_10000CAAC(v6, &qword_101A07B90);
  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v3, qword_101AD6348);
  sub_100CA44F4();
  v4 = CRValue.serializedData(_:version:)();

  sub_100CA4548(__src);
  return v4;
}

uint64_t sub_100C9DDF0(char a1)
{
  result = 0x6F546C69636E6570;
  switch(a1)
  {
    case 1:
      return 0xD000000000000011;
    case 2:
    case 17:
    case 26:
      return 0xD000000000000013;
    case 3:
      return 0xD000000000000019;
    case 4:
      return result;
    case 5:
      return 0xD000000000000011;
    case 6:
    case 9:
    case 25:
      return 0xD000000000000017;
    case 7:
      return 0x6F546E6F79617263;
    case 8:
      return 0xD000000000000011;
    case 10:
      v3 = 1819044198;
      return v3 | 0x6C6F6F5400000000;
    case 11:
      v4 = 1819044198;
      goto LABEL_24;
    case 12:
    case 18:
    case 29:
      return 0xD000000000000015;
    case 14:
      return 0x436C6F6F546E6570;
    case 15:
      return 0x4F6C6F6F546E6570;
    case 16:
    case 20:
      return 0xD000000000000014;
    case 19:
      return 0xD00000000000001BLL;
    case 21:
      return 0xD000000000000016;
    case 23:
      return 0x6F5472656B72616DLL;
    case 24:
      return 0xD000000000000011;
    case 27:
      v3 = 1684366706;
      return v3 | 0x6C6F6F5400000000;
    case 28:
      v4 = 1684366706;
LABEL_24:
      result = v4 | 0x6C6F6F5400000000;
      break;
    case 30:
      result = 0x6C6F6F5464656572;
      break;
    case 31:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

Swift::Int sub_100C9E134()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A9370[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100C9E1BC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A9370[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100C9E208@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100CA1EB4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100C9E254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100CA1ED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C9E294@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100CA1EB4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100C9E2CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100CA48F0();
  v5 = sub_100CA4948();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_100C9E324(uint64_t a1)
{
  v2 = sub_100CA4948();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C9E360(uint64_t a1)
{
  v2 = sub_100CA4948();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C9E39C(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A19FB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v65 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100CA4948();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v134 = *v3;
  BYTE8(v134) = *(v3 + 8);
  LOBYTE(v132[0]) = 0;
  sub_1005B981C(&qword_101A19F90);
  sub_100B99DB0(&qword_101A19FB8, &qword_101A19F90);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 64);
    v10 = *(v3 + 32);
    v178 = *(v3 + 48);
    v179 = v9;
    v11 = *(v3 + 64);
    v180 = *(v3 + 80);
    v12 = *(v3 + 32);
    v177[0] = *(v3 + 16);
    v177[1] = v12;
    v136 = v178;
    v137 = v11;
    v138 = *(v3 + 80);
    v181 = *(v3 + 96);
    v139 = *(v3 + 96);
    v134 = v177[0];
    v135 = v10;
    v189 = 1;
    sub_100CA4B64(v177, v132);
    sub_1008B28D4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v132[2] = v136;
    v132[3] = v137;
    v132[4] = v138;
    v133 = v139;
    v132[0] = v134;
    v132[1] = v135;
    sub_10000CAAC(v132, &qword_101A19F78);
    v13 = *(v3 + 108);
    LOBYTE(v126) = 2;
    LOBYTE(v124[0]) = v13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + 116);
    LOBYTE(v126) = 3;
    LOBYTE(v124[0]) = v14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 272);
    v16 = *(v3 + 240);
    v173 = *(v3 + 256);
    v174 = v15;
    v17 = *(v3 + 272);
    v175 = *(v3 + 288);
    v18 = *(v3 + 240);
    v172[0] = *(v3 + 224);
    v172[1] = v18;
    v128 = v173;
    v129 = v17;
    v130 = *(v3 + 288);
    v176 = *(v3 + 304);
    v131 = *(v3 + 304);
    v126 = v172[0];
    v127 = v16;
    v188 = 4;
    sub_100CA4B64(v172, v124);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v124[2] = v128;
    v124[3] = v129;
    v124[4] = v130;
    v125 = v131;
    v124[0] = v126;
    v124[1] = v127;
    sub_10000CAAC(v124, &qword_101A19F78);
    v19 = *(v3 + 316);
    LOBYTE(v118) = 5;
    LOBYTE(v116[0]) = v19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + 324);
    LOBYTE(v118) = 6;
    LOBYTE(v116[0]) = v20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 376);
    v22 = *(v3 + 344);
    v168 = *(v3 + 360);
    v169 = v21;
    v23 = *(v3 + 376);
    v170 = *(v3 + 392);
    v24 = *(v3 + 344);
    v167[0] = *(v3 + 328);
    v167[1] = v24;
    v120 = v168;
    v121 = v23;
    v122 = *(v3 + 392);
    v171 = *(v3 + 408);
    v123 = *(v3 + 408);
    v118 = v167[0];
    v119 = v22;
    v187 = 7;
    sub_100CA4B64(v167, v116);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v116[2] = v120;
    v116[3] = v121;
    v116[4] = v122;
    v117 = v123;
    v116[0] = v118;
    v116[1] = v119;
    sub_10000CAAC(v116, &qword_101A19F78);
    v25 = *(v3 + 420);
    LOBYTE(v110) = 8;
    LOBYTE(v108[0]) = v25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = *(v3 + 428);
    LOBYTE(v110) = 9;
    LOBYTE(v108[0]) = v26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v3 + 792);
    v28 = *(v3 + 760);
    v163 = *(v3 + 776);
    v164 = v27;
    v29 = *(v3 + 792);
    v165 = *(v3 + 808);
    v30 = *(v3 + 760);
    v162[0] = *(v3 + 744);
    v162[1] = v30;
    v112 = v163;
    v113 = v29;
    v114 = *(v3 + 808);
    v166 = *(v3 + 824);
    v115 = *(v3 + 824);
    v110 = v162[0];
    v111 = v28;
    v186 = 10;
    sub_100CA4B64(v162, v108);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v108[2] = v112;
    v108[3] = v113;
    v108[4] = v114;
    v109 = v115;
    v108[0] = v110;
    v108[1] = v111;
    sub_10000CAAC(v108, &qword_101A19F78);
    v31 = *(v3 + 836);
    LOBYTE(v102) = 11;
    LOBYTE(v100[0]) = v31;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = *(v3 + 844);
    LOBYTE(v102) = 12;
    LOBYTE(v100[0]) = v32;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v102) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = *(v3 + 168);
    v160[2] = *(v3 + 152);
    v160[3] = v33;
    v160[4] = *(v3 + 184);
    v161 = *(v3 + 200);
    v34 = *(v3 + 136);
    v160[0] = *(v3 + 120);
    v160[1] = v34;
    v35 = *(v3 + 168);
    v104 = *(v3 + 152);
    v105 = v35;
    v106 = *(v3 + 184);
    v107 = *(v3 + 200);
    v36 = *(v3 + 136);
    v102 = *(v3 + 120);
    v103 = v36;
    v185 = 14;
    sub_100CA4B64(v160, v100);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v100[2] = v104;
    v100[3] = v105;
    v100[4] = v106;
    v101 = v107;
    v100[0] = v102;
    v100[1] = v103;
    sub_10000CAAC(v100, &qword_101A19F78);
    v37 = *(v3 + 212);
    LOBYTE(v94) = 15;
    LOBYTE(v92[0]) = v37;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v38 = *(v3 + 220);
    LOBYTE(v94) = 16;
    LOBYTE(v92[0]) = v38;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v39 = *(v3 + 480);
    v40 = *(v3 + 448);
    v156 = *(v3 + 464);
    v157 = v39;
    v41 = *(v3 + 480);
    v158 = *(v3 + 496);
    v42 = *(v3 + 448);
    v155[0] = *(v3 + 432);
    v155[1] = v42;
    v96 = v156;
    v97 = v41;
    v98 = *(v3 + 496);
    v159 = *(v3 + 512);
    v99 = *(v3 + 512);
    v94 = v155[0];
    v95 = v40;
    v184 = 17;
    sub_100CA4B64(v155, v92);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v92[2] = v96;
    v92[3] = v97;
    v92[4] = v98;
    v93 = v99;
    v92[0] = v94;
    v92[1] = v95;
    sub_10000CAAC(v92, &qword_101A19F78);
    v43 = *(v3 + 524);
    LOBYTE(v86) = 18;
    LOBYTE(v84[0]) = v43;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v44 = *(v3 + 532);
    LOBYTE(v86) = 19;
    LOBYTE(v84[0]) = v44;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v45 = *(v3 + 584);
    v46 = *(v3 + 552);
    v151 = *(v3 + 568);
    v152 = v45;
    v47 = *(v3 + 584);
    v153 = *(v3 + 600);
    v48 = *(v3 + 552);
    v150[0] = *(v3 + 536);
    v150[1] = v48;
    v88 = v151;
    v89 = v47;
    v90 = *(v3 + 600);
    v154 = *(v3 + 616);
    v91 = *(v3 + 616);
    v86 = v150[0];
    v87 = v46;
    v183 = 20;
    sub_100CA4B64(v150, v84);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v84[2] = v88;
    v84[3] = v89;
    v84[4] = v90;
    v85 = v91;
    v84[0] = v86;
    v84[1] = v87;
    sub_10000CAAC(v84, &qword_101A19F78);
    v49 = *(v3 + 628);
    LOBYTE(v78) = 21;
    LOBYTE(v76[0]) = v49;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v50 = *(v3 + 636);
    LOBYTE(v78) = 22;
    LOBYTE(v76[0]) = v50;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v51 = *(v3 + 688);
    v52 = *(v3 + 656);
    v146 = *(v3 + 672);
    v147 = v51;
    v53 = *(v3 + 688);
    v148 = *(v3 + 704);
    v54 = *(v3 + 656);
    v145[0] = *(v3 + 640);
    v145[1] = v54;
    v80 = v146;
    v81 = v53;
    v82 = *(v3 + 704);
    v149 = *(v3 + 720);
    v83 = *(v3 + 720);
    v78 = v145[0];
    v79 = v52;
    v182 = 23;
    sub_100CA4B64(v145, v76);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v76[2] = v80;
    v76[3] = v81;
    v76[4] = v82;
    v77 = v83;
    v76[0] = v78;
    v76[1] = v79;
    sub_10000CAAC(v76, &qword_101A19F78);
    v55 = *(v3 + 732);
    LOBYTE(v70) = 24;
    LOBYTE(v67[0]) = v55;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v56 = *(v3 + 740);
    LOBYTE(v70) = 25;
    LOBYTE(v67[0]) = v56;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v70 = *(v3 + 848);
    BYTE8(v70) = *(v3 + 856);
    LOBYTE(v67[0]) = 26;
    sub_1005B981C(&qword_101A19FA0);
    sub_100B99DB0(&qword_101A19FC0, &qword_101A19FA0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v57 = *(v3 + 912);
    v58 = *(v3 + 880);
    v141 = *(v3 + 896);
    v142 = v57;
    v59 = *(v3 + 912);
    v143 = *(v3 + 928);
    v60 = *(v3 + 880);
    v140[0] = *(v3 + 864);
    v140[1] = v60;
    v72 = v141;
    v73 = v59;
    v74 = *(v3 + 928);
    v144 = *(v3 + 944);
    v75 = *(v3 + 944);
    v70 = v140[0];
    v71 = v58;
    v69 = 27;
    sub_100CA4B64(v140, v67);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v67[2] = v72;
    v67[3] = v73;
    v67[4] = v74;
    v68 = v75;
    v67[0] = v70;
    v67[1] = v71;
    sub_10000CAAC(v67, &qword_101A19F78);
    v61 = *(v3 + 956);
    LOBYTE(v65) = 28;
    v66 = v61;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v62 = *(v3 + 964);
    LOBYTE(v65) = 29;
    v66 = v62;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v63 = *(v3 + 972);
    LOBYTE(v65) = 30;
    v66 = v63;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v65 = *(v3 + 976);
    v66 = 31;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C9F400(uint64_t a1)
{

  *(v1 + 976) = a1;
  return result;
}

uint64_t sub_100C9F44C(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_100CA0028(v4, __dst) & 1;
}

void *sub_100C9F4A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_100CA28A4(a1);
  if (!v2)
  {
    return memcpy(a2, __src, 0x3D8uLL);
  }

  return result;
}

uint64_t sub_100C9F508(uint64_t a1, uint64_t a2)
{
  v4 = sub_100CA4C0C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C9F55C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100CA4C0C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C9F5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100CA44F4();
  v7 = sub_100CA4C60();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100C9F620(uint64_t a1, uint64_t a2)
{
  v4 = sub_100CA4C0C();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C9F704(uint64_t a1)
{
  v2 = sub_100CA4AB8();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

id sub_100C9F750(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *(a1 + 8);
  if (v3 != 255 && (v3 & 1) == 0)
  {
    [v2 setCurrentToolType:sub_1007888F4(*a1)];
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    v5 = *(a1 + 64);
    v113[2] = *(a1 + 48);
    v113[3] = v5;
    v113[4] = *(a1 + 80);
    v6 = *(a1 + 32);
    v113[0] = *(a1 + 16);
    v113[1] = v6;
    v114 = v4;
    sub_100006370(0, &qword_101A00EB0);
    v7 = *(a1 + 64);
    v109 = *(a1 + 48);
    v110 = v7;
    v111 = *(a1 + 80);
    v8 = *(a1 + 32);
    v107 = *(a1 + 16);
    v108 = v8;
    v112 = v4;
    sub_10074A990(&v107, &v101);
    v9 = sub_1008B0490(v113);
    [v2 setColor:v9 forToolType:0];
  }

  if ((*(a1 + 108) & 1) == 0)
  {
    [v2 setOpacity:0 forToolType:*(a1 + 104)];
  }

  if ((*(a1 + 116) & 1) == 0)
  {
    [v2 setStrokeWidth:0 forToolType:*(a1 + 112)];
  }

  v10 = *(a1 + 200);
  if (v10)
  {
    v11 = *(a1 + 136);
    v12 = *(a1 + 168);
    v109 = *(a1 + 152);
    v110 = v12;
    v111 = *(a1 + 184);
    v107 = *(a1 + 120);
    v108 = v11;
    v112 = v10;
    sub_100006370(0, &qword_101A00EB0);
    v13 = *(a1 + 136);
    v14 = *(a1 + 168);
    v103 = *(a1 + 152);
    v104 = v14;
    v105 = *(a1 + 184);
    v101 = *(a1 + 120);
    v102 = v13;
    v106 = v10;
    sub_10074A990(&v101, &v95);
    v15 = sub_1008B0490(&v107);
    [v2 setColor:v15 forToolType:1];
  }

  if (*(a1 + 212))
  {
    if (*(a1 + 220))
    {
      goto LABEL_14;
    }
  }

  else
  {
    [v2 setOpacity:1 forToolType:*(a1 + 208)];
    if (*(a1 + 220))
    {
LABEL_14:
      v16 = *(a1 + 304);
      if (!v16)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  [v2 setStrokeWidth:1 forToolType:*(a1 + 216)];
  v16 = *(a1 + 304);
  if (v16)
  {
LABEL_15:
    v17 = *(a1 + 272);
    v103 = *(a1 + 256);
    v104 = v17;
    v105 = *(a1 + 288);
    v18 = *(a1 + 240);
    v101 = *(a1 + 224);
    v102 = v18;
    v106 = v16;
    sub_100006370(0, &qword_101A00EB0);
    v19 = *(a1 + 272);
    v97 = *(a1 + 256);
    v98 = v19;
    v99 = *(a1 + 288);
    v20 = *(a1 + 240);
    v95 = *(a1 + 224);
    v96 = v20;
    v100 = v16;
    sub_10074A990(&v95, &v89);
    v21 = sub_1008B0490(&v101);
    [v2 setColor:v21 forToolType:2];
  }

LABEL_16:
  if (*(a1 + 316))
  {
    if (*(a1 + 324))
    {
      goto LABEL_18;
    }
  }

  else
  {
    [v2 setOpacity:2 forToolType:*(a1 + 312)];
    if (*(a1 + 324))
    {
LABEL_18:
      v22 = *(a1 + 408);
      if (!v22)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  [v2 setStrokeWidth:2 forToolType:*(a1 + 320)];
  v22 = *(a1 + 408);
  if (v22)
  {
LABEL_19:
    v23 = *(a1 + 376);
    v97 = *(a1 + 360);
    v98 = v23;
    v99 = *(a1 + 392);
    v24 = *(a1 + 344);
    v95 = *(a1 + 328);
    v96 = v24;
    v100 = v22;
    sub_100006370(0, &qword_101A00EB0);
    v25 = *(a1 + 376);
    v91 = *(a1 + 360);
    v92 = v25;
    v93 = *(a1 + 392);
    v26 = *(a1 + 344);
    v89 = *(a1 + 328);
    v90 = v26;
    v94 = v22;
    sub_10074A990(&v89, &v83);
    v27 = sub_1008B0490(&v95);
    [v2 setColor:v27 forToolType:3];
  }

LABEL_20:
  if (*(a1 + 420))
  {
    if (*(a1 + 428))
    {
      goto LABEL_22;
    }
  }

  else
  {
    [v2 setOpacity:3 forToolType:*(a1 + 416)];
    if (*(a1 + 428))
    {
LABEL_22:
      v28 = *(a1 + 512);
      if (!v28)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  [v2 setStrokeWidth:3 forToolType:*(a1 + 424)];
  v28 = *(a1 + 512);
  if (v28)
  {
LABEL_23:
    v29 = *(a1 + 480);
    v91 = *(a1 + 464);
    v92 = v29;
    v93 = *(a1 + 496);
    v30 = *(a1 + 448);
    v89 = *(a1 + 432);
    v90 = v30;
    v94 = v28;
    sub_100006370(0, &qword_101A00EB0);
    v31 = *(a1 + 480);
    v85 = *(a1 + 464);
    v86 = v31;
    v87 = *(a1 + 496);
    v32 = *(a1 + 448);
    v83 = *(a1 + 432);
    v84 = v32;
    v88 = v28;
    sub_10074A990(&v83, &v77);
    v33 = sub_1008B0490(&v89);
    [v2 setColor:v33 forToolType:4];
  }

LABEL_24:
  if (*(a1 + 524))
  {
    if (*(a1 + 532))
    {
      goto LABEL_26;
    }
  }

  else
  {
    [v2 setOpacity:4 forToolType:*(a1 + 520)];
    if (*(a1 + 532))
    {
LABEL_26:
      v34 = *(a1 + 616);
      if (!v34)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  [v2 setStrokeWidth:4 forToolType:*(a1 + 528)];
  v34 = *(a1 + 616);
  if (v34)
  {
LABEL_27:
    v35 = *(a1 + 584);
    v85 = *(a1 + 568);
    v86 = v35;
    v87 = *(a1 + 600);
    v36 = *(a1 + 552);
    v83 = *(a1 + 536);
    v84 = v36;
    v88 = v34;
    sub_100006370(0, &qword_101A00EB0);
    v37 = *(a1 + 584);
    v79 = *(a1 + 568);
    v80 = v37;
    v81 = *(a1 + 600);
    v38 = *(a1 + 552);
    v77 = *(a1 + 536);
    v78 = v38;
    v82 = v34;
    sub_10074A990(&v77, &v71);
    v39 = sub_1008B0490(&v83);
    [v2 setColor:v39 forToolType:5];
  }

LABEL_28:
  if (*(a1 + 628))
  {
    if (*(a1 + 636))
    {
      goto LABEL_30;
    }
  }

  else
  {
    [v2 setOpacity:5 forToolType:*(a1 + 624)];
    if (*(a1 + 636))
    {
LABEL_30:
      v40 = *(a1 + 720);
      if (!v40)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  [v2 setStrokeWidth:5 forToolType:*(a1 + 632)];
  v40 = *(a1 + 720);
  if (v40)
  {
LABEL_31:
    v41 = *(a1 + 688);
    v79 = *(a1 + 672);
    v80 = v41;
    v81 = *(a1 + 704);
    v42 = *(a1 + 656);
    v77 = *(a1 + 640);
    v78 = v42;
    v82 = v40;
    sub_100006370(0, &qword_101A00EB0);
    v43 = *(a1 + 688);
    v73 = *(a1 + 672);
    v74 = v43;
    v75 = *(a1 + 704);
    v44 = *(a1 + 656);
    v71 = *(a1 + 640);
    v72 = v44;
    v76 = v40;
    sub_10074A990(&v71, &v65);
    v45 = sub_1008B0490(&v77);
    [v2 setColor:v45 forToolType:7];
  }

LABEL_32:
  if (*(a1 + 732))
  {
    if (*(a1 + 740))
    {
      goto LABEL_34;
    }
  }

  else
  {
    [v2 setOpacity:7 forToolType:*(a1 + 728)];
    if (*(a1 + 740))
    {
LABEL_34:
      v46 = *(a1 + 824);
      if (!v46)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  [v2 setStrokeWidth:7 forToolType:*(a1 + 736)];
  v46 = *(a1 + 824);
  if (v46)
  {
LABEL_35:
    v47 = *(a1 + 792);
    v73 = *(a1 + 776);
    v74 = v47;
    v75 = *(a1 + 808);
    v48 = *(a1 + 760);
    v71 = *(a1 + 744);
    v72 = v48;
    v76 = v46;
    sub_100006370(0, &qword_101A00EB0);
    v49 = *(a1 + 792);
    v67 = *(a1 + 776);
    v68 = v49;
    v69 = *(a1 + 808);
    v50 = *(a1 + 760);
    v65 = *(a1 + 744);
    v66 = v50;
    v70 = v46;
    sub_10074A990(&v65, v63);
    v51 = sub_1008B0490(&v71);
    [v2 setColor:v51 forToolType:8];
  }

LABEL_36:
  if ((*(a1 + 836) & 1) == 0)
  {
    [v2 setOpacity:8 forToolType:*(a1 + 832)];
  }

  if ((*(a1 + 844) & 1) == 0)
  {
    [v2 setStrokeWidth:9 forToolType:*(a1 + 840)];
  }

  v52 = *(a1 + 845);
  if (v52 != 2)
  {
    [v2 setEraserToolErasesWholeObjects:v52 & 1];
  }

  v53 = *(a1 + 856);
  if (v53 != 255 && (v53 & 1) == 0)
  {
    [v2 setCurrentLassoType:*(a1 + 848) & 1];
  }

  v54 = *(a1 + 944);
  if (v54)
  {
    v55 = *(a1 + 912);
    v67 = *(a1 + 896);
    v68 = v55;
    v69 = *(a1 + 928);
    v56 = *(a1 + 880);
    v65 = *(a1 + 864);
    v66 = v56;
    v70 = v54;
    sub_100006370(0, &qword_101A00EB0);
    v57 = *(a1 + 896);
    v58 = *(a1 + 928);
    v63[3] = *(a1 + 912);
    v63[4] = v58;
    v59 = *(a1 + 864);
    v63[1] = *(a1 + 880);
    v63[2] = v57;
    v63[0] = v59;
    v64 = v54;
    sub_10074A990(v63, v62);
    v60 = sub_1008B0490(&v65);
    [v2 setColor:v60 forToolType:6];
  }

  if ((*(a1 + 956) & 1) == 0)
  {
    [v2 setOpacity:6 forToolType:*(a1 + 952)];
  }

  if ((*(a1 + 964) & 1) == 0)
  {
    [v2 setStrokeWidth:6 forToolType:*(a1 + 960)];
  }

  sub_100CA4548(a1);
  if ((*(a1 + 972) & 1) == 0)
  {
    [v2 setAzimuth:6 forToolType:*(a1 + 968)];
  }

  return v2;
}